#include <iostream>
#include <vector>
#include <atomic>
#include <cinttypes>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>
//#include <chrono>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>

#include "ufiber17.h"

using namespace std;


pthread_barrier_t barrier;
long long globalVariable = 0;
UserThreading UserThreadingVec[2];
int threadCount;
bool OSThreadAvailable[2];
thread_local int threadId;

UserThreading userTh;

void fa(){

    for (int i=0; i < 100; i++){
        globalVariable++;
        printf("Hello A%d \n",i);
        userTh.Yield(false);
    }
    userTh.ThreadExit();
}

void fb(){

    for (int i=0; i < 100; i++){
        globalVariable++;
        printf("Hello B%d \n",i);
        userTh.Yield(false);
    }
    userTh.ThreadExit();
}

void fc(){

    for (int i=0; i < 30; i++){
        globalVariable++;
        printf("Hello C%d \n",i);
        userTh.Yield(false);
    }
    userTh.ThreadExit();
}




void pfa(){

    int parentId = threadId;
    printf("parentId: %d \n", parentId);

    for (int i=0; i < 100; i++){
        globalVariable++;
        printf("OST %d Hello A%d on CPU %d \n",parentId , i, sched_getcpu());
        UserThreadingVec[parentId].Yield(false);
    }
    UserThreadingVec[parentId].ThreadExit();
}

void pfb(){

    int parentId = threadId;
    printf("parentId: %d \n", parentId);

    for (int i=0; i < 100; i++){
        //globalVariable++;
        printf("OST %d Hello B%d on CPU %d\n", parentId, i, sched_getcpu());
        UserThreadingVec[parentId].Yield(false);
    }
    UserThreadingVec[parentId].ThreadExit();
}


//volatile Thread *threadptr;



void changeOSThread4(){

	UserThreadingVec[threadId].ThreadExit();

}




void allSchedulersExit(){

  for (int i=0; i < 2; i++){
    if (i != threadId )
      UserThreadingVec[i].sp_exit_check = true;
  	  //UserThreadingVec[i].current_thread = NULL;

  }
  printf("All Schedulers Check Marked\n");
}
    

void pfc(){

    int parentId = threadId;
    printf("parentId: %d --------------------\n", parentId);


    // Special code

    UserThreadingVec[0].foriegn_thread_ptr = &UserThreadingVec[1].current_thread;
    UserThreadingVec[1].foriegn_thread_ptr = &UserThreadingVec[0].current_thread;

    //

    for (int i=0; i < 10000000; i++){
        //globalVariable++;
        //printf("OST %d Hello C%d on CPU %d --------------- \n",threadId , i, sched_getcpu());
        
        changeOSThread4();
        //UserThreadingVec[threadId].ThreadExit();
    }
    printf("C Exiting\n");
    
    allSchedulersExit();
    
    UserThreadingVec[threadId].sp_exit_check = true;
    UserThreadingVec[threadId].ThreadExit();
}


void *mpthread1(void *arg){

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);

    UserThreadingVec[threadId].Scheduler();
    OSThreadAvailable[threadId] = false;


    //printf("globalVariable: %lld\n",globalVariable);  

}

void *mpthread2(void *arg){

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);

    UserThreadingVec[threadId].Scheduler();
    OSThreadAvailable[threadId] = false;

    //printf("globalVariable: %lld\n",globalVariable);  

}



int main(){

  
  //int numberOfProcessors = sysconf(_SC_NPROCESSORS_ONLN);
  //printf("Number of processors: %d\n", numberOfProcessors);

  pthread_barrier_init (&barrier, NULL, 2);

  threadCount = 2;

  UserThreading userTh_0;
  UserThreading userTh_1;

  //userTh_0.makeThread(pfa);
  //userTh_0.makeThread(pfb);
  userTh_0.makeThread(pfc);


  //userTh_1.makeThread(pfa);
  //userTh_1.makeThread(pfb);

  UserThreadingVec[0] = userTh_0;
  UserThreadingVec[1] = userTh_1;

  //UserThreadingVec.push_back(userTh_0);
  //UserThreadingVec.push_back(userTh_1);

  pthread_t threadId_1, threadId_2, threadId_3;

  unsigned cycles_low, cycles_high, cycles_low1, cycles_high1;
  uint64_t start_t, end;

  asm volatile (
"RDTSC\n\t"
"mov %%edx, %0\n\t"
"mov %%eax, %1\n\t": "=r" (cycles_high), "=r" (cycles_low));



  //auto start = chrono::high_resolution_clock::now();

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);


  cpu_set_t cpuset;
  CPU_ZERO(&cpuset);
  CPU_SET(0, &cpuset);
  pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
  
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);


  cpu_set_t cpuset2;
  CPU_ZERO(&cpuset2);
  CPU_SET(1, &cpuset2);
  pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);

  pthread_join(threadId_1, NULL); 
  pthread_join(threadId_2, NULL);


  //auto stop = chrono::high_resolution_clock::now();

  asm volatile (
"RDTSC\n\t"
"mov %%edx, %0\n\t"
"mov %%eax, %1\n\t": "=r" (cycles_high1), "=r" (cycles_low1));

  //auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
  //printf("globalVariable: %lld \n", globalVariable); 
  //printf("User Threading Duration: %lu \n", duration.count()); 

start_t = ( ((uint64_t)cycles_high << 32) | cycles_low );
end = ( ((uint64_t)cycles_high1 << 32) | cycles_low1 );
//printf("Execution time is %lu clock cycles\n", (end - start_t));
printf("Execution time is %lu clock cycles\n", (end - start_t) / (10000000) );

  pthread_barrier_destroy(&barrier);

}

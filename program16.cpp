#include <iostream>
#include <vector>
#include <atomic>
#include <cinttypes>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <algorithm>
#include <chrono>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>

#include "ufiber16.h"

using namespace std;


pthread_barrier_t barrier;
long long globalVariable = 0;
vector<UserThreading> UserThreadingVec;
int threadCount;
vector<bool> OSThreadAvailable;
thread_local int threadId;

UserThreading userTh;


//volatile Thread *threadptr;



void changeOSThread4(){

    //printf("**************** In changeOSThread **************\n");


	UserThreadingVec[threadId].ThreadExit();

	// if (threadId == 0){
	// 	my_userTh0.ThreadExit();
	// }
	// if (threadId == 1){
	// 	my_userTh1.ThreadExit();
	// }

}




void allSchedulersExit(){

  for (int i=0; i < UserThreadingVec.size(); i++){
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


    //UserThreading* foo[2];

    // UserThreading* my_userTh0 = &UserThreadingVec[0];
    // UserThreading* my_userTh1 = &UserThreadingVec[1];

    // foo[0] = &UserThreadingVec[0];
    // foo[1] = &UserThreadingVec[1];


    //vector<UserThreading> UserThreadingVec2;

    //UserThreadingVec2[0].foriegn_thread_ptr = &UserThreadingVec[1].current_thread;
    //UserThreadingVec2[1].foriegn_thread_ptr = &UserThreadingVec[0].current_thread;



    //

    for (int i=0; i < 1000000; i++){
        //globalVariable++;
        //printf("OST %d Hello C%d on CPU %d --------------- \n",threadId , i, sched_getcpu());
        
        changeOSThread4();
        //UserThreadingVec[threadId].ThreadExit();

    	//foo[threadId]->ThreadExit()
	 //    if (threadId == 0){
		// 	my_userTh0->ThreadExit();
		// }
		// else if (threadId == 1){
		// 	my_userTh1->ThreadExit();
		// }
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


    printf("globalVariable: %lld\n",globalVariable);  

}

void *mpthread2(void *arg){

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);

    UserThreadingVec[threadId].Scheduler();
    OSThreadAvailable[threadId] = false;

    printf("globalVariable: %lld\n",globalVariable);  

}



int main(){

  
  int numberOfProcessors = sysconf(_SC_NPROCESSORS_ONLN);
  printf("Number of processors: %d\n", numberOfProcessors);

  pthread_barrier_init (&barrier, NULL, 2);

  threadCount = 2;

  UserThreading userTh_0;
  UserThreading userTh_1;

  //userTh_0.makeThread(pfa);
  //userTh_0.makeThread(pfb);
  userTh_0.makeThread(pfc);


  //userTh_1.makeThread(pfa);
  //userTh_1.makeThread(pfb);

  UserThreadingVec.push_back(userTh_0);
  UserThreadingVec.push_back(userTh_1);

  UserThreadingVec.push_back(userTh_0);
  UserThreadingVec.push_back(userTh_1);

  pthread_t threadId_1, threadId_2, threadId_3;

  auto start = chrono::high_resolution_clock::now();
  
  OSThreadAvailable.push_back(false);
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);


  cpu_set_t cpuset;
  CPU_ZERO(&cpuset);
  CPU_SET(0, &cpuset);
  pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
  
  OSThreadAvailable.push_back(false);
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);


  cpu_set_t cpuset2;
  CPU_ZERO(&cpuset2);
  CPU_SET(1, &cpuset2);
  pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);

  //pthread_create(&threadId_3, NULL, mpthread3, (void *)(intptr_t) 3);

  pthread_join(threadId_1, NULL); 
  pthread_join(threadId_2, NULL);
  //pthread_join(threadId_3, NULL);


  auto stop = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
  cout << "globalVariable: " << globalVariable << endl; 
  cout << "User Threading Duration: "<<duration.count() << endl; 

  pthread_barrier_destroy(&barrier);
  
  /*
  userTh.Initialize();
  userTh.makeThread(fc);
  userTh.makeThread(fb);
  userTh.makeThread(fa);
  userTh.Scheduler();
  */

}

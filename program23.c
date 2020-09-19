#define _GNU_SOURCE             
#include <sched.h>
#include <x86intrin.h>

#include "ufiber23.h"


pthread_barrier_t barrier;
long long globalVariable = 0;
UserThreading UserThreadingVec[2] __attribute__( ( aligned ( 128 ) ) );
int threadCount;
bool OSThreadAvailable[2];
//thread_local int threadId;
static _Thread_local int threadId;

UserThreading userTh;


// jmp_buf buf01;
// jmp_buf buf02;  


char buf[128] = {0};
volatile long long global_var1 __attribute__( ( aligned ( 128 ) ) ) = 0;
volatile long long global_var2 __attribute__( ( aligned ( 128 ) ) ) = 0;
char buf2[128] = {0};

void allSchedulersExit(){

  for (int i=0; i < 2; i++){
    if (i != threadId )
      //UserThreadingVec[threadId].current_thread = NULL;
      UserThreadingVec[i].sp_exit_check = true;
  	  //UserThreadingVec[i].current_thread = NULL;

  }
  printf("All Schedulers Check Marked\n");
}
    

void pfc(){

    //int parentId = threadId;
    printf("parentId: %d --------------------\n", threadId);

    long long local_var = 0;

    long long local_var1 = 0;
    long long local_var2 = 0;

    // Special code

    //UserThreadingVec[0].foreign_thread_ptr = &UserThreadingVec[1].current_thread;
    //UserThreadingVec[1].foreign_thread_ptr = &UserThreadingVec[0].current_thread;

    UserThreadingVec[1].current_thread = UserThreadingVec[0].current_thread;

    //
    // UserThreadingVec[1].buf2 = &UserThreadingVec[0].buf; 
    // UserThreadingVec[0].buf2 = &UserThreadingVec[1].buf; 
    //
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;

    //

    for (int i=0; i < 10000000; i++){
        
        //Case: 1 Global
        //globalVariable++;

        //Case: 1 Local
        //local_var++;

        // // Case: 2 Local
        // if (threadId == 0)
        //   local_var1++;
        // else
        //   local_var2++;


        // Case: 2 Global
        //printf("ThreadId %d\n ", threadId);
        if (threadId == 0)
          global_var1++;
        else
          global_var2++;


        //asm volatile ("":::"memory");


       //printf("OST %d Hello C%d on CPU %d --------------- \n",threadId , i, sched_getcpu());
        
        //changeOSThread4();
        //UserThreadingVec[threadId].ThreadExit();
      // int k = setjmp(buf01);
      // printf("setjmp buf01\n");

      // if (k == 0)
      ThreadExit(&UserThreadingVec[threadId]);
      //label1:
        //local_var++;
      
    }
    printf("C Exiting\n");

    printf("local_var: %lld\n",local_var); 
    // printf("local_var1: %lld\n",local_var1); 
    // printf("local_var2: %lld\n",local_var2); 
    
    //allSchedulersExit();
    UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = -2;
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;


    UserThreadingVec[threadId].buf->context.mxcsr = -2;
    UserThreadingVec[threadId].sp_exit_check = true;

    printf("I am done %d\n", threadId);

    ThreadExit(&UserThreadingVec[threadId]);
    printf("*****\n");
}


pthread_t threadId_1, threadId_2, threadId_3;
int coreId_1, coreId_2;

uint64_t thread1_starttime, thread2_starttime, thread1_endtime, thread2_endtime;


void *mpthread1(void *arg){

    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(coreId_1, &cpuset);
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);
    thread1_starttime = __rdtsc();


    Scheduler(&UserThreadingVec[threadId]);
    OSThreadAvailable[threadId] = false;

    thread1_endtime = __rdtsc();

    printf("globalVariable: %lld\n",globalVariable);  

    //UserThreading_Destory(&UserThreadingVec[threadId]);

}

void *mpthread2(void *arg){

    cpu_set_t cpuset2;
    CPU_ZERO(&cpuset2);
    CPU_SET(coreId_2, &cpuset2);
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);
    OSThreadAvailable[threadId] = true;


    pthread_barrier_wait(&barrier);
    thread2_starttime = __rdtsc();

    Scheduler(&UserThreadingVec[threadId]);
    OSThreadAvailable[threadId] = false;

    thread2_endtime = __rdtsc();
    printf("globalVariable: %lld\n",globalVariable);  

    //UserThreading_Destory(&UserThreadingVec[threadId]);

}



int main(int argc, char *argv[]){



	if (argc != 3){
		printf("Program needs 2 arguments: two core ids \n");
		exit(1);
	}

	coreId_1 = atoi(argv[1]);
	coreId_2 = atoi(argv[2]);

	#ifdef REP_NOPS
		printf("REP_NOPS enabled\n");
	#else
		printf("REP_NOPS not enabled\n");
	#endif


  pthread_barrier_init (&barrier, NULL, 2);

  threadCount = 2;

  //UserThreading userTh_0;
  //UserThreading userTh_1;
  //UserThreadingVec[0] = userTh_0;
  //UserThreadingVec[1] = userTh_1;
  UserThreading_Init(&UserThreadingVec[0], 0);
  UserThreading_Init(&UserThreadingVec[1], 1);
  makeThread(&UserThreadingVec[0], pfc);


  uint64_t timeCounter_start = __rdtsc();
  printf("My start: %lu \n", timeCounter_start);

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);

  pthread_join(threadId_1, NULL); 
  pthread_join(threadId_2, NULL);


  uint64_t timeCounter_end = __rdtsc();
  //printf("Execution time per opertation: %lu clock cycles\n", 
  //  (timeCounter_end - timeCounter_start) / (10000000) );


  pthread_barrier_destroy(&barrier);
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
  printf("global_var2: %lld \n", global_var2); 
  

  //printf("Time from thead Counters");
  // smalller of start time and larger of end time
 
  uint64_t thread_starttime = 
  thread1_starttime < thread2_starttime ? thread1_starttime : thread2_starttime; 
  uint64_t thread_endtime = 
  thread1_endtime > thread2_endtime ? thread1_endtime : thread2_endtime;

  printf("Execution time is %lu clock cycles\n",
    (thread_endtime - thread_starttime) / (10000000) );

}

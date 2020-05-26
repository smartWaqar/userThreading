#define _GNU_SOURCE             
#include <sched.h>

#include "ufiber20.h"


pthread_barrier_t barrier;
long long globalVariable = 0;
UserThreading UserThreadingVec[2];
int threadCount;
bool OSThreadAvailable[2];
//thread_local int threadId;
static _Thread_local int threadId;

UserThreading userTh;


char buf[128];
volatile long long global_var1 __attribute__( ( aligned ( 128 ) ) ) = 0;
volatile long long global_var2 __attribute__( ( aligned ( 128 ) ) ) = 0;
char buf2[128];

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

    int parentId = threadId;
    printf("parentId: %d --------------------\n", parentId);

    long long local_var = 0;

    long long local_var1 = 0;
    long long local_var2 = 0;

    // Special code

    //UserThreadingVec[0].foreign_thread_ptr = &UserThreadingVec[1].current_thread;
    //UserThreadingVec[1].foreign_thread_ptr = &UserThreadingVec[0].current_thread;

    UserThreadingVec[1].current_thread = UserThreadingVec[0].current_thread;

    //

    for (int i=0; i < 10000000; i++){
        
        //Case: 1 Global
        globalVariable++;

        //Case: 1 Local
        //local_var++;

        // // Case: 2 Local
        // if (threadId == 0)
        //   local_var1++;
        // else
        //   local_var2++;


        // // Case: 2 Global
        // if (threadId == 0)
        //   global_var1++;
        // else
        //   global_var2++;


        //printf("OST %d Hello C%d on CPU %d --------------- \n",threadId , i, sched_getcpu());
        
        //changeOSThread4();
        //UserThreadingVec[threadId].ThreadExit();
      ThreadExit(&UserThreadingVec[threadId]);
    }
    printf("C Exiting\n");

    printf("local_var: %lld\n",local_var); 
    // printf("local_var1: %lld\n",local_var1); 
    // printf("local_var2: %lld\n",local_var2); 
    
    //allSchedulersExit();
    UserThreadingVec[(threadId + 1) % 2].current_thread->context.mxcsr = -2;
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;


    UserThreadingVec[threadId].current_thread->context.mxcsr = -2;
    UserThreadingVec[threadId].sp_exit_check = true;

    //printf("I am done %d\n", threadId);

    ThreadExit(&UserThreadingVec[threadId]);
    //printf("*****\n");
}


void *mpthread1(void *arg){

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);

    //UserThreadingVec[threadId].Scheduler();
    Scheduler(&UserThreadingVec[threadId]);
    //printf("Point 1\n");
    OSThreadAvailable[threadId] = false;


    //printf("globalVariable: %lld\n",globalVariable);  

    //UserThreading_Destory(&UserThreadingVec[threadId]);

}

void *mpthread2(void *arg){

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);

    //UserThreadingVec[threadId].Scheduler();
    Scheduler(&UserThreadingVec[threadId]);
    //printf("Point 2\n");
    OSThreadAvailable[threadId] = false;

    //printf("globalVariable: %lld\n",globalVariable);  

    //UserThreading_Destory(&UserThreadingVec[threadId]);

}



int main(int argc, char *argv[]){

	int coreId_1, coreId_2;

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

  UserThreading userTh_0;
  UserThreading userTh_1;

  UserThreadingVec[0] = userTh_0;
  UserThreadingVec[1] = userTh_1;

  UserThreading_Init(&UserThreadingVec[0], 0);
  UserThreading_Init(&UserThreadingVec[1], 1);

  makeThread(&UserThreadingVec[0], pfc);


  pthread_t threadId_1, threadId_2, threadId_3;

  unsigned cycles_low, cycles_high, cycles_low1, cycles_high1;
  uint64_t start_t, end;

  asm volatile (
"RDTSC\n\t"
"mov %%edx, %0\n\t"
"mov %%eax, %1\n\t": "=r" (cycles_high), "=r" (cycles_low));

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);


  cpu_set_t cpuset;
  CPU_ZERO(&cpuset);
  CPU_SET(coreId_1, &cpuset);
  pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
  
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);


  cpu_set_t cpuset2;
  CPU_ZERO(&cpuset2);
  CPU_SET(coreId_2, &cpuset2);
  pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);

  pthread_join(threadId_1, NULL); 
  pthread_join(threadId_2, NULL);


  asm volatile (
"RDTSC\n\t"
"mov %%edx, %0\n\t"
"mov %%eax, %1\n\t": "=r" (cycles_high1), "=r" (cycles_low1));


  start_t = ( ((uint64_t)cycles_high << 32) | cycles_low );
  end = ( ((uint64_t)cycles_high1 << 32) | cycles_low1 );
  //printf("Execution time is %lu clock cycles\n", (end - start_t));
  printf("Execution time is %lu clock cycles\n", (end - start_t) / (10000000) );

  pthread_barrier_destroy(&barrier);

  printf("globalVariable: %lld\n",globalVariable); 


  printf("global_var1: %lld\n",global_var1); 
  printf("global_var2: %lld\n",global_var2); 

}

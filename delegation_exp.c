#define _GNU_SOURCE
#include <stdio.h>
#include <pthread.h>
#include <stdint.h>         
#include <sched.h>
#include <stdlib.h>

// Lock Experiment (Mutex and Spin lock)
// Repeat Experiment on HyperThreads and Sockets and 2 Sockets
// Use of rep nops - 10 rep nops
// SD and mean bash/awk


pthread_barrier_t barrier;

long long globalCounter __attribute__( ( aligned ( 64 ) ) );

volatile long long reqFlag __attribute__( ( aligned ( 64 ) ) );
volatile long long resFlag __attribute__( ( aligned ( 64 ) ) );


//-----------------
// 1 Flag Scheme
//-----------------

void *thread1(void *arg){
	
	printf("thread1\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i = 0; i < 10000000; i++){

		reqFlag = 1;

		while (reqFlag == 1){
			#ifdef REP_NOPS
				asm volatile("rep nop");
			#endif
		};

		#ifdef REP_NOPS

			asm volatile("rep nop");
	        asm volatile("rep nop");
	        asm volatile("rep nop");
	        asm volatile("rep nop");
	        asm volatile("rep nop");
	      
	        asm volatile("rep nop");
	      	asm volatile("rep nop");
	      	asm volatile("rep nop");
	      	asm volatile("rep nop");
	      	asm volatile("rep nop");

	    #endif


	}

}

void *thread2(void *arg){
	
	printf("thread2\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i=0; i <10000000; i++){

		while(reqFlag == 0){
			#ifdef REP_NOPS
				asm volatile("rep nop");
			#endif
		}

		globalCounter++;

		reqFlag = 0;

		#ifdef REP_NOPS

			asm volatile("rep nop");
	        asm volatile("rep nop");
	        asm volatile("rep nop");
	        asm volatile("rep nop");
	        asm volatile("rep nop");
	      
	        asm volatile("rep nop");
	      	asm volatile("rep nop");
	      	asm volatile("rep nop");
	      	asm volatile("rep nop");
	      	asm volatile("rep nop");

	    #endif

	}

}

//-------------------------
// Two Flags Scheme
//-------------------------

void *thread3(void *arg){
	
	printf("thread3\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i = 0; i < 10000000; i++){

		reqFlag = !reqFlag;

		while (resFlag != reqFlag);


	}

}

void *thread4(void *arg){
	
	printf("thread4\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i=0; i <10000000; i++){

		while(reqFlag == resFlag);

		globalCounter++;

		resFlag = !resFlag;

	}

}

//-------------------------
// Two Flags Scheme: Atlernate
//-------------------------

void *thread5(void *arg){
	
	printf("thread5\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i = 0; i < 10000000; i++){

		long long temp_reqFlag = reqFlag;

		reqFlag = !temp_reqFlag;

		while (resFlag != !temp_reqFlag);


	}

}

void *thread6(void *arg){
	
	printf("thread6\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i=0; i <10000000; i++){

		long long temp_resFlag = resFlag;

		while(reqFlag == temp_resFlag);

		globalCounter++;

		resFlag = !temp_resFlag;

	}

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


	globalCounter = 0;
	reqFlag = 0;
	resFlag = 0;

	pthread_barrier_init (&barrier, NULL, 2);


	printf("Hello World\n");

	pthread_t threadId_1, threadId_2, threadId_3;

	unsigned cycles_low, cycles_high, cycles_low1, cycles_high1;
  	uint64_t start_t, end;

	  asm volatile (
	"RDTSC\n\t"
	"mov %%edx, %0\n\t"
	"mov %%eax, %1\n\t": "=r" (cycles_high), "=r" (cycles_low));


	pthread_create(&threadId_1, NULL, thread1, (void *)(intptr_t) 0);

	cpu_set_t cpuset;
  	CPU_ZERO(&cpuset);
  	CPU_SET(coreId_1, &cpuset);
  	pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);

	pthread_create(&threadId_2, NULL, thread2, (void *)(intptr_t) 1);

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


	printf("globalCounter %lld \n", globalCounter);


	pthread_barrier_destroy(&barrier);

}
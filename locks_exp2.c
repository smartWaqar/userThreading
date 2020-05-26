#define _GNU_SOURCE
#include <stdio.h>
#include <pthread.h>
#include <stdint.h>         
#include <sched.h>
#include <stdlib.h>

pthread_barrier_t barrier;
long long globalCounter __attribute__( ( aligned ( 64 ) ) );

pthread_spinlock_t spinlock;
pthread_mutex_t mutex;


//-----------------
// 1 Spin Locks
//-----------------

void *thread1(void *arg){
	
	printf("thread1\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	long long prev = -1;
	long long specialCounter = 0;

	for (int i = 0; i < 5000000; i++){

		pthread_spin_lock(&spinlock);

		if (globalCounter == prev)
			specialCounter++;

		globalCounter++;

		prev = globalCounter;

		pthread_spin_unlock(&spinlock);

		#ifdef REP_NOPS
			//special instruction: 
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

	printf("specialCounter %lld\n", specialCounter);

}

void *thread2(void *arg){
	
	printf("thread2\n");
	pthread_barrier_wait(&barrier);

	long long prev = -1;
	long long specialCounter = 0;

	printf("Barrier passed\n");

	for (int i=0; i <5000000; i++){

		pthread_spin_lock(&spinlock);

		if (globalCounter == prev)
			specialCounter++;

		globalCounter++;

		prev = globalCounter;

		pthread_spin_unlock(&spinlock);

		#ifdef REP_NOPS
			//special instruction: 
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

	printf("specialCounter %lld\n", specialCounter);

}

//-----------------
// 1 Mutex
//-----------------

void *thread3(void *arg){
	
	printf("thread3\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i = 0; i < 5000000; i++){

		pthread_mutex_lock(&mutex);

		globalCounter++;

		pthread_mutex_unlock(&mutex);

		#ifdef REP_NOPS
			//special instruction: 
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

void *thread4(void *arg){
	
	printf("thread4\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i=0; i <5000000; i++){

		pthread_mutex_lock(&mutex);

		globalCounter++;

		pthread_mutex_unlock(&mutex);

		#ifdef REP_NOPS
	        //special instruction: 
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

//-----------------
// 3 Ticket Locks
//-----------------



typedef struct {
	int ticket;
	int turn;
} lock_t;

void lock_init(lock_t *lock) {
	lock->ticket = 0;
	lock->turn = 0;
}

void acquire(lock_t *lock) {
	//int myturn = FAA(&lock->ticket);
	int myturn = __sync_fetch_and_add(&lock->ticket, 1, __ATOMIC_SEQ_CST);
	while (lock->turn != myturn); // spin
}

void release(lock_t *lock) {
	lock->turn += 1;
}

lock_t myticketLock;

void *thread5(void *arg){
	
	printf("thread5\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	long long prev = -1;
	long long specialCounter = 0;

	for (int i = 0; i < 5000000; i++){

		acquire(&myticketLock);

		if (globalCounter == prev)
			specialCounter++;

		globalCounter++;

		prev = globalCounter;

		release(&myticketLock);

		#ifdef REP_NOPS
			//special instruction: 
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

	printf("specialCounter %lld\n", specialCounter);

}

void *thread6(void *arg){
	
	printf("thread6\n");
	pthread_barrier_wait(&barrier);

	long long prev = -1;
	long long specialCounter = 0;

	printf("Barrier passed\n");

	for (int i=0; i <5000000; i++){

		acquire(&myticketLock);

		if (globalCounter == prev)
			specialCounter++;

		globalCounter++;

		prev = globalCounter;

		release(&myticketLock);

		#ifdef REP_NOPS
			//special instruction: 
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

	printf("specialCounter %lld\n", specialCounter);

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
	pthread_spin_init(&spinlock, 0);
    pthread_mutex_init(&mutex, NULL);


    lock_init(&myticketLock);

	pthread_barrier_init (&barrier, NULL, 2);


	printf("Hello World\n");

	pthread_t threadId_1, threadId_2, threadId_3;

	unsigned cycles_low, cycles_high, cycles_low1, cycles_high1;
  	uint64_t start_t, end;

	  asm volatile (
	"RDTSC\n\t"
	"mov %%edx, %0\n\t"
	"mov %%eax, %1\n\t": "=r" (cycles_high), "=r" (cycles_low));


	pthread_create(&threadId_1, NULL, thread5, (void *)(intptr_t) 0);

	cpu_set_t cpuset;
  	CPU_ZERO(&cpuset);
  	CPU_SET(coreId_1, &cpuset);
  	pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);

	pthread_create(&threadId_2, NULL, thread6, (void *)(intptr_t) 1);

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

	pthread_spin_destroy(&spinlock);
    pthread_mutex_destroy(&mutex);


}



#define _GNU_SOURCE
#include <stdio.h>
#include <pthread.h>
#include <stdint.h>         
#include <sched.h>

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

	for (int i = 0; i < 5000000; i++){

		pthread_spin_lock(&spinlock);

		globalCounter++;

		pthread_spin_unlock(&spinlock);

		//special instruction: 
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
      
       //  asm volatile("rep nop");
      	// asm volatile("rep nop");
      	// asm volatile("rep nop");
      	// asm volatile("rep nop");
      	// asm volatile("rep nop");

	}

}

void *thread2(void *arg){
	
	printf("thread2\n");
	pthread_barrier_wait(&barrier);

	printf("Barrier passed\n");

	for (int i=0; i <5000000; i++){

		pthread_spin_lock(&spinlock);

		globalCounter++;

		pthread_spin_unlock(&spinlock);

		//special instruction: 
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
       //  asm volatile("rep nop");
      
       //  asm volatile("rep nop");
      	// asm volatile("rep nop");
      	// asm volatile("rep nop");
      	// asm volatile("rep nop");
      	// asm volatile("rep nop");

	}

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

	}

}



int main(){

	globalCounter = 0;
	pthread_spin_init(&spinlock, 0);
    pthread_mutex_init(&mutex, NULL);


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
  	CPU_SET(0, &cpuset);
  	pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);

	pthread_create(&threadId_2, NULL, thread2, (void *)(intptr_t) 1);

	cpu_set_t cpuset2;
  	CPU_ZERO(&cpuset2);
  	CPU_SET(64, &cpuset2);
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



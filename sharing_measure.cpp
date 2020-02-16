#include <iostream>
#include <thread>
using namespace std;



volatile int x = 0;

void *th1(void * arg){
	printf("Thread1\n");

	// printf("x: %d \n", x);

	// x = 2;

	for (int i =0; i < 1000000; i++){

		//cout << "---------------------- " << x << endl;
		//printf("------Thread 1: --------------- %d\n", x);

		while (x == 0){
			//cout << "Loop1 "<< x << endl;
		}
		x = 0;

	}

}

void *th2(void *arg){
	printf("Thread2\n");

	// printf("x: %d \n", x);

	// x = 3;

	for (int i =0; i < 1000000; i++){

		//cout << "---------------------- " << x << endl;
		//printf("------Thread 2: --------------- %d\n", x);

		while (x == 1){
			//cout << "Loop2 " << x <<endl;
		}

		x = 1;
		
	}

} 

int main(){
	//cout << "Hello World" << endl;

	auto start = chrono::high_resolution_clock::now();


	pthread_t threadId_1, threadId_2, threadId_3;

	pthread_create(&threadId_1, NULL, th1, (void *)(intptr_t) 0);

  	cpu_set_t cpuset;
  	CPU_ZERO(&cpuset);
  	CPU_SET(0, &cpuset);
  	pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);

	pthread_create(&threadId_2, NULL, th2, (void *)(intptr_t) 0);


	cpu_set_t cpuset2;
	CPU_ZERO(&cpuset2);
	CPU_SET(9, &cpuset2);
	pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);

	pthread_join(threadId_1, NULL); 
  	pthread_join(threadId_2, NULL);


  auto stop = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
  cout << "User Threading Duration: "<<duration.count() << endl; 

  printf("x %d \n", x);

}

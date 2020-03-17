// Program12 only one thread support

//#include <iostream>
//#include <atomic>
//#include <cinttypes>
#include <inttypes.h>
//#include <cstdio>
//#include <cstdlib>
//#include <cstring>
//#include <algorithm>
#include <pthread.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
//#include <threads.h>
//#include <unistd.h>



//using namespace std;

//using Function = add_pointer<void()>::type;

typedef struct {
  uint64_t rsp;
  uint64_t r15;
  uint64_t r14;
  uint64_t r13;
  uint64_t r12;
  uint64_t rbx;
  uint64_t rbp;
  uint32_t mxcsr;
  uint32_t x87;
} Context;

typedef struct{
  
  Context context;
  uint8_t* stack;

  //Thread(bool create_stack);
  //void Initialize(bool create_stack);
  //~Thread();
} Thread;

void Thread_Init(Thread *_thread, bool create_stack);

typedef struct {

    //volatile Thread* current_thread __attribute__( ( aligned ( 64 ) ) );
    Thread* volatile current_thread __attribute__( ( aligned ( 64 ) ) );
    //int current_thread_num;
    
    Context *orginialContext __attribute__( ( aligned ( 64 ) ) );
    
    //pthread_spinlock_t spinlock;
    Thread* sched_thread __attribute__( ( aligned ( 64 ) ) );

    volatile bool sp_exit_check __attribute__( ( aligned ( 64 ) ) );

    //volatile Thread **foreign_thread_ptr __attribute__( ( aligned ( 64 ) ) );
    Thread* volatile *foreign_thread_ptr __attribute__( ( aligned ( 64 ) ) );

    

} UserThreading;


    void UserThreading_Init(UserThreading *_uth);
    void Scheduler(UserThreading *_uth);
    void Yield(UserThreading *_uth);
    void ThreadExit(UserThreading *_uth);

    //int makeThread(UserThreading &_uth,Function fn);

    int makeThread(UserThreading *_uth, void (*fn)());

    // ~UserThreading(){
    //     //pthread_spin_destroy(&spinlock);
    // }
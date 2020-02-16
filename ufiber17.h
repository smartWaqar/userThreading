// Program12 only one thread support

#include <iostream>
#include <vector>
#include <atomic>
#include <cinttypes>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>
#include <chrono>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

using namespace std;

using Function = add_pointer<void()>::type;

struct Context {
  uint64_t rsp;
  uint64_t r15;
  uint64_t r14;
  uint64_t r13;
  uint64_t r12;
  uint64_t rbx;
  uint64_t rbp;
  uint32_t mxcsr;
  uint32_t x87;
};

struct Thread {
  
  Context context;
  uint8_t* stack;

  Thread(bool create_stack);
  void Initialize(bool create_stack);
  ~Thread();
};

struct UserThreading{
public:

    //volatile Thread* current_thread;
    Thread* volatile current_thread __attribute__( ( aligned ( 64 ) ) );
    //int current_thread_num;
    
    Context *orginialContext __attribute__( ( aligned ( 64 ) ) );
    
    //pthread_spinlock_t spinlock;
    Thread* sched_thread __attribute__( ( aligned ( 64 ) ) );

    //int sp_exit_threadnum;
    //pthread_spinlock_t *sp_spinlock;
    //volatile int sp_spinlock_check;

    volatile bool sp_exit_check __attribute__( ( aligned ( 64 ) ) );

    //volatile Thread **foriegn_thread_ptr;
    Thread* volatile *foriegn_thread_ptr __attribute__( ( aligned ( 64 ) ) );


    UserThreading();
    void Scheduler();
    void Yield(bool cond);
    void ThreadExit();

    int makeThread(Function fn);

    ~UserThreading(){
        //pthread_spin_destroy(&spinlock);
    }


    void WaitLoop();
    void WaitLoop2();
    //void WaitLoop3();

};
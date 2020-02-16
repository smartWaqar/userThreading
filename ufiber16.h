// Program12 only one thread support

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
  ~Thread();
};

class UserThreading{
public:

    Thread* volatile current_thread;

	//volatile Thread* current_thread;    

    int current_thread_num;
    
    Context *orginialContext;
    
    Thread* sched_thread;

    int sp_exit_threadnum;
    pthread_spinlock_t *sp_spinlock;
    volatile int sp_spinlock_check;

    //
    //__attribute__((align(64))) ????
    //
    //repr C ???? 
    //
    //rdtscp ??? number of cycles
    //

    volatile bool sp_exit_check;


    Thread* volatile *foriegn_thread_ptr;
    //volatile Thread** foriegn_thread_ptr;

    UserThreading();
    void Scheduler();
    void Yield(bool cond);
    void ThreadExit();

    int makeThread(Function fn);

    ~UserThreading(){
    }

    void WaitLoop2();
    //void WaitLoop3();

};
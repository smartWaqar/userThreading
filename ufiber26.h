// Program12 only one thread support

#ifndef _UFIBER_H
#define _UFIBER_H

#include <inttypes.h>
#include <pthread.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>



typedef struct {
  uint64_t rsp;
  uint64_t rip;
  //uint64_t rax;
  //uint64_t rbx;
  //uint64_t rcx;
  uint64_t rdx;
  uint64_t r8;
  uint64_t r9;
  uint64_t r10;
  uint64_t r11;
  //
  uint64_t r12;
  uint64_t r13;
  uint64_t r14;
  uint64_t r15;
  uint64_t rbp;
  uint64_t rdi;
  uint64_t rsi;
  //uint64_t rcx;
  //volatile uint32_t mxcsr;
  volatile uint64_t mxcsr;
} Context;

typedef struct{
  
  uint8_t stack[4096];
  Context context __attribute__( ( aligned ( 128 ) ) );
  
} Thread;

void Thread_Init(Thread *_thread, bool create_stack);
void Thread_Destroy(Thread *_thread);

typedef struct {

    //Thread buf  __attribute__( ( aligned ( 64 ) ) );
    Thread *buf  __attribute__( ( aligned ( 128 ) ) );
    Thread *buf2 __attribute__( ( aligned ( 128 ) ) );


    //Thread* volatile current_thread __attribute__( ( aligned ( 64 ) ) );
    //Context *orginialContext __attribute__( ( aligned ( 64 ) ) );
    
    Thread* sched_thread __attribute__( ( aligned ( 64 ) ) );

    volatile bool sp_exit_check __attribute__( ( aligned ( 64 ) ) );

    int id __attribute__( ( aligned ( 64 ) ) );

    bool expVal __attribute__( ( aligned ( 64 ) ) );

    bool lastVal __attribute__( ( aligned ( 64 ) ) );
    

} UserThreading;


    void UserThreading_Init(UserThreading *_uth, int _id);
    void Scheduler(UserThreading *_uth);
    void Yield(UserThreading *_uth);
    //void ThreadExit(UserThreading *_uth);

    //int makeThread(UserThreading &_uth,Function fn);

    int makeThread(UserThreading *_uth, void (*fn)());

    // ~UserThreading(){
    //     //pthread_spin_destroy(&spinlock);
    // }

    void UserThreading_Destory(UserThreading *_uth);






#endif 
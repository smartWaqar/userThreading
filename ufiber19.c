// #include <iostream>
// #include <atomic>
// #include <cinttypes>
// #include <cstdio>
// #include <cstdlib>
// #include <cstring>
// #include <algorithm>
// #include <pthread.h>
// #include <stdio.h>
// #include <unistd.h>

#include "ufiber19.h"

//using namespace std;




//extern "C"
//{
void ContextSwitch(volatile Context* old_context, volatile Context* new_context) __asm__("context_switch");
//}

//constexpr int const kStackSize {1 << 21};

const int kStackSize = 1 << 21;
//using Function = add_pointer<void()>::type;


void Thread_Init(Thread *_thread, bool create_stack)
{
    //_thread->context = {};
    if (create_stack)
        _thread->stack = (uint8_t*)aligned_alloc(16, kStackSize) + kStackSize;
    else
        _thread->stack = NULL;

      _thread->context.mxcsr = -1;
    //_thread->context.mxcsr = 0x1F80;
    // _thread->context.x87 = 0x037F;
}

void Thread_Destory(Thread *_thread)
{
    if (_thread->stack != NULL)
        //free(_thread->stack);
        free(_thread->stack - kStackSize) ;
}





void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){

    _uth->current_thread = 0;
    // current_thread_num = -1;

    // sp_exit_threadnum = -1;
    // sp_spinlock_check = -1;

    _uth->sp_exit_check = false;
    _uth->id = _id;

    //isSet_foriegn_thread_ptr = -1;

   // pthread_spin_init(&spinlock, 0);

}



void Scheduler(UserThreading *_uth){

  printf("Scheduler Started \n");
  _uth->sched_thread = (Thread *) malloc(sizeof(Thread));
  Thread_Init(_uth->sched_thread, true);



  while(_uth->sp_exit_check != true){


      if ( _uth->current_thread && _uth->current_thread->context.mxcsr != _uth->id){
        
          
            ContextSwitch(&(_uth->sched_thread->context), &(_uth->current_thread->context));

            //_uth->current_thread->context.mxcsr = (_uth->current_thread->context.mxcsr + 1) % 2;
            //_uth->current_thread->context.mxcsr ^= 1;
            _uth->current_thread->context.mxcsr = !_uth->current_thread->context.mxcsr;


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
        //else {
          //asm volatile("rep nop");
        //}

        // flag no c++ to gcc compiler

    //asm("prefetcht0 (%rdi)");
    //void* temp009 = const_cast<void*> (current_thread);
    //__builtin_prefetch(& (void )current_thread->context);


  }

}

void UserThreading_Destory(UserThreading *_uth){
  Thread_Destory(_uth->current_thread);
  Thread_Destory(_uth->sched_thread);
}


void Yield(UserThreading *_uth){

    //printf("--- Yield --- ThreadVec Size %ld current_thread_num %d \n", thread_Vec.size(), current_thread_num);
  ContextSwitch(&_uth->current_thread->context, &(_uth->sched_thread->context));

  return;
}



void ThreadExit(UserThreading *_uth){
    
    Yield(_uth);
}


int makeThread(UserThreading *_uth, void (*fn)()){

  //Thread* new_thread = new Thread(true);
  Thread* new_thread = (Thread *) malloc(sizeof(Thread));
  Thread_Init(new_thread, true);

  new_thread->context.rsp = (uint64_t)new_thread->stack;
  new_thread->context.rsp -= sizeof(void**);
  *(void**)new_thread->context.rsp = (void*)fn;
  _uth->current_thread  = new_thread;  


}

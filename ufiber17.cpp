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

#include "ufiber17.h"

using namespace std;




extern "C"
{
void ContextSwitch(volatile Context* old_context, volatile Context* new_context) __asm__("context_switch");
}

constexpr int const kStackSize {1 << 21};
using Function = add_pointer<void()>::type;



Thread::Thread(bool create_stack)
: context {}
{
    if (create_stack)
        stack = (uint8_t*)aligned_alloc(16, kStackSize) + kStackSize;
    else
        stack = nullptr;

    context.mxcsr = 0x1F80;
    context.x87 = 0x037F;
}

void Thread::Initialize(bool create_stack)
{
    context = {};
    if (create_stack)
        stack = (uint8_t*)aligned_alloc(16, kStackSize) + kStackSize;
    else
        stack = nullptr;

    context.mxcsr = 0x1F80;
    context.x87 = 0x037F;
}

Thread::~Thread()
{
    if (stack != nullptr)
        free(stack - kStackSize) ;
}





UserThreading::UserThreading(void){

    current_thread = 0;
    // current_thread_num = -1;

    // sp_exit_threadnum = -1;
    // sp_spinlock_check = -1;

    sp_exit_check = false;

    //isSet_foriegn_thread_ptr = -1;

   // pthread_spin_init(&spinlock, 0);

}

void UserThreading::WaitLoop(){
	//printf("CCC\n");

	while (1){

    if (sp_exit_check == true){
      return;
    }

    if ( current_thread == 0){ 
      //printf("************** All Threads Exit ****************\n");
      //return;
      continue;
    }

		return;
	}
}

void UserThreading::WaitLoop2(){
	//printf("CCC\n");

	while (1){

    if (sp_exit_check == true){
      return;
    }

	if ( current_thread != 0){ 
      return;
    }

    //__builtin_prefetch(&current_thread, 1, 3);

    // if ( (sp_exit_check == true) || (current_thread != 0) || ){ 
    //   return;
    // }

	}
}

// void UserThreading::WaitLoop3(){
// 	//printf("CCC\n");

// 	while (sp_exit_check != true){

// 		if ( current_thread != 0){ 
// 	      return;
// 	    }

// 	}
// 	return;
// }



void UserThreading::Scheduler(){
    //Yield(false);

  printf("Scheduler Started \n");
  //sched_thread = new Thread(true);
  sched_thread = (Thread *) malloc(sizeof(Thread));
  sched_thread->Initialize(true);


  while(sp_exit_check != true){

    //WaitLoop2();
    //WaitLoop3();


      if ( current_thread != 0){
        //Thread * t = &(*current_thread); 
        //__builtin_prefetch(&current_thread->context);
          
            ContextSwitch(&(sched_thread->context), &(current_thread->context));

            Thread* thread = current_thread;

            current_thread = 0;
            *foriegn_thread_ptr = thread;


        }
        asm volatile("rep nop");

        // flag no c++ to gcc compiler

    //asm("prefetcht0 (%rdi)");
    //void* temp009 = const_cast<void*> (current_thread);
    //__builtin_prefetch(& (void )current_thread->context);


  }
}


void UserThreading::Yield(bool cond){

    //printf("--- Yield --- ThreadVec Size %ld current_thread_num %d \n", thread_Vec.size(), current_thread_num);
  ContextSwitch(&current_thread->context, &(sched_thread->context));

  return;
}



void UserThreading::ThreadExit(){

    //sp_exit_threadnum = 1;
    
    Yield(false);
}


int UserThreading::makeThread(Function fn){

  //Thread* new_thread = new Thread(true);
  Thread* new_thread = (Thread *) malloc(sizeof(Thread));
  new_thread->Initialize(true);

  new_thread->context.rsp = (uint64_t)new_thread->stack;
  new_thread->context.rsp -= sizeof(void**);
  *(void**)new_thread->context.rsp = (void*)fn;
  current_thread  = new_thread;  
}

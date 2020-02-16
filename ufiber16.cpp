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

#include "ufiber16.h"

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

Thread::~Thread()
{
    if (stack != nullptr)
        free(stack - kStackSize) ;
}





UserThreading::UserThreading(void){

    current_thread = 0;
    current_thread_num = -1;

    sp_exit_threadnum = -1;
    sp_spinlock_check = -1;

    sp_exit_check = false;


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
  sched_thread = new Thread(true);

  while(sp_exit_check != true){

    //WaitLoop2();
    //WaitLoop3();

	while (sp_exit_check != true){

		if ( current_thread != 0){
			//Thread * t = &(*current_thread); 
			__builtin_prefetch(&current_thread->context);
	      	break;
	    }

	}

	if (sp_exit_check == true)
		return;


    //asm("prefetcht0 (%rdi)");
    //void* temp009 = const_cast<void*> (current_thread);
    


    // if (sp_exit_check == true){
    //   printf("Scheduler Exiting\n");
    //   return;
    // }

    

    ContextSwitch(&(sched_thread->context), &(current_thread->context));



      Thread* volatile thread = current_thread;
      //volatile Thread* thread = current_thread;


      //if (*foriegn_thread_ptr == 0){
      //  *foriegn_thread_ptr = thread;
      //  current_thread = 0;
      //}
      //else{

        current_thread = 0;
		*foriegn_thread_ptr = thread;
      //}

 


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

  Thread* new_thread = new Thread(true);
  new_thread->context.rsp = (uint64_t)new_thread->stack;
  new_thread->context.rsp -= sizeof(void**);
  *(void**)new_thread->context.rsp = (void*)fn;
  current_thread  = new_thread;  
}

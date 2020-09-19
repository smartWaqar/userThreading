#include "ufiber21.h"

#include <immintrin.h>


void ContextSwitch(volatile Context* old_context, volatile Context* new_context) __asm__("context_switch");
void ContextSwitch2(volatile Context* old_context, volatile Context* new_context) __asm__("context_switch2");


//constexpr int const kStackSize {1 << 21};

const int kStackSize = 1 << 21;
//using Function = add_pointer<void()>::type;


void Thread_Init(Thread *_thread, bool create_stack)
{
    //_thread->context = {};
    // if (create_stack)
    //     _thread->stack = (uint8_t*)aligned_alloc(16, kStackSize) + kStackSize;
    // else
    //     _thread->stack = NULL;

      _thread->context.mxcsr = 0; //-1;
    //_thread->context.mxcsr = 0x1F80;
    // _thread->context.x87 = 0x037F;
}

void Thread_Destory(Thread *_thread)
{
    // if (_thread->stack != NULL)
    //     //free(_thread->stack);
    //     free(_thread->stack - kStackSize) ;
}



void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){

   _uth->buf = aligned_alloc(64, sizeof(Thread));

    _uth->current_thread = 0;

    _uth->sp_exit_check = false;
    _uth->id = _id;

    _uth->buf->context.mxcsr = 11;

}

//void changeContext(Context *aa, Context *bb){
void changeContext(UserThreading *_uth){
              Context *aa = &(_uth->sched_thread->context);
            Context *bb = &(_uth->buf->context);

  printf("buf %ld\n", _uth->buf->context.mxcsr);

  __asm__ __volatile__(
  "movq    %%rsp, (%1) \n\t"
  "movq    %%r15, 8(%1) \n\t"
  "movq    %%r14, 16(%1) \n\t"
  "movq    %%r13, 24(%1) \n\t"
  "movq    %%r12, 32(%1) \n\t"
  "movq    %%rbx, 40(%1) \n\t"
  "movq    %%rbp, 48(%1) \n\t"
  "movq    (%0), %%rsp \n\t"
  "movq    8(%0), %%r15 \n\t"
  "movq    16(%0), %%r14 \n\t"
  "movq    24(%0), %%r13 \n\t"
  "movq    32(%0), %%r12 \n\t"
  "movq    40(%0), %%rbx \n\t"
  "movq    48(%0), %%rbp \n\t"
  //"retq \n\t"
  : "=r" (aa)
  : "r" (bb)
  //: "r"(&(_uth->buf.context))
  //: "=m" (_uth->sched_thread->context)
  //: "m"  (_uth->buf.context)
  //: "memory"
  : "%rsp", "%r15", "%r14", "%r13", "%r12", "%rbx", "%rbp"
  );


}


void Scheduler(UserThreading *_uth){

  printf("Scheduler Started \n");
  _uth->sched_thread = (Thread *) malloc(sizeof(Thread));
  Thread_Init(_uth->sched_thread, true);

  //while (_uth->current_thread == 0);

  while (_uth->buf->context.mxcsr == 11);

  int i = 0;

  // One hack: store mxcsr into a local variable

  //while( _uth->current_thread->context.mxcsr != -2 ){

  while (i < 5000000){

      //printf("tiktik %d\n", _uth->current_thread->context.mxcsr);
      if ( /*_uth->current_thread &&*/ _uth->buf->context.mxcsr == _uth->id){
        //printf("tiktik %d\n", _uth->current_thread->context.mxcsr);
            i++;
            //ContextSwitch(&(_uth->sched_thread->context), &(_uth->buf->context));

            //_uth->current_thread->context.mxcsr = (_uth->current_thread->context.mxcsr + 1) % 2;
            //_uth->current_thread->context.mxcsr ^= 1;
            //printf("Billl %d\n", _uth->current_thread->context.mxcsr);
            //_uth->current_thread->context.mxcsr = !_uth->current_thread->context.mxcsr;
            //printf("UTH ID: %d\n", _uth->id);
            //printf("threadId: \n", threadId);

            Context *aa = &(_uth->sched_thread->context);
            Context *bb = &(_uth->buf->context);

            //changeContext(&(_uth->sched_thread->context),&(_uth->buf->context) );
            //changeContext(_uth);

            __asm__ __volatile__(
              "movq    %%rsp, (%1) \n\t"
              "movq    %%r15, 8(%1) \n\t"
              "movq    %%r14, 16(%1) \n\t"
              "movq    %%r13, 24(%1) \n\t"
              "movq    %%r12, 32(%1) \n\t"
              "movq    %%rbx, 40(%1) \n\t"
              "movq    %%rbp, 48(%1) \n\t"
              "movq    (%[c]), %%rsp \n\t"
              "movq    8(%[c]), %%r15 \n\t"
              "movq    16(%[c]), %%r14 \n\t"
              "movq    24(%[c]), %%r13 \n\t"
              "movq    32(%[c]), %%r12 \n\t"
              "movq    40(%[c]), %%rbx \n\t"
              "movq    48(%[c]), %%rbp \n\t"
              //"jmp *%%rsp\n\t"
              //"pushq  %%rsp\n\t"
              "retq \n\t"
              : [b] "=r" (bb)
              : [a] "r" (aa), [c] "r" (bb)
              //: "r"(&(_uth->buf.context))
              //: "=m" (_uth->sched_thread->context)
              //: "m"  (_uth->buf.context)
              //: "memory"
              : "%rsp", "%r15", "%r14", "%r13", "%r12", "%rbx", "%rbp"
            );

            printf("Hello\n");

              //: "%rsp", "%r15", "%r14", "%r13", "%r12", "%rbx", "%rbp"
            //
            //Context c = _uth->current_thread->context;
            //__m512i A_vec = _mm512_load_epi64(&(_uth->current_thread->context));
            //_mm512_store_epi64((void*) &_uth->buf2->context, A_vec);
            //

            //
            //_uth->buf2->context =  _uth->buf->context;

            //
            //_uth->current_thread->context.mxcsr = !_uth->id;

            #ifdef REP_NOPS 

              asm volatile("rep nop");
              asm volatile("rep nop");
              asm volatile("rep nop");
              asm volatile("rep nop");
              asm volatile("rep nop");
            
              //asm volatile("rep nop");
              //asm volatile("rep nop");
              //asm volatile("rep nop");
              //asm volatile("rep nop");
              //asm volatile("rep nop");

           #endif

        }
        // else {
        //   printf("%ld\n",  _uth->current_thread->context.mxcsr);
        // }
        #ifdef REP_NOPS
        else {
          asm volatile("rep nop");
        }
        #endif


        // flag no c++ to gcc compiler

    //asm("prefetcht0 (%rdi)");
    //void* temp009 = const_cast<void*> (current_thread);
    //__builtin_prefetch(& (void )current_thread->context);


  }

  //printf("(()))))\n");

}

void UserThreading_Destory(UserThreading *_uth){
  //Thread_Destory(_uth->current_thread);
  Thread_Destory(_uth->sched_thread);
}


void Yield(UserThreading *_uth){

    //printf("--- Yield --- ThreadVec Size %ld current_thread_num %d \n", thread_Vec.size(), current_thread_num);
  printf("Yield\n");
  ContextSwitch2(&_uth->buf->context, &(_uth->sched_thread->context));

  //printf("-----\n");
  return;
}



void ThreadExit(UserThreading *_uth){
    
    Yield(_uth);
    //printf("$$$\n");
}


int makeThread(UserThreading *_uth, void (*fn)()){

  //Thread* new_thread = new Thread(true);
  //Thread* new_thread = (Thread *) malloc(sizeof(Thread));
  Thread* new_thread = (Thread *) aligned_alloc(64,sizeof(Thread));
  Thread_Init(new_thread, true);

  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
  new_thread->context.rsp -= sizeof(void**);
  *(void**)new_thread->context.rsp = (void*)fn;
  //_uth->current_thread  = new_thread; 

  _uth->buf = new_thread; 


}

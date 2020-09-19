#include "ufiber23.h"
#include <immintrin.h>


//constexpr int const kStackSize {1 << 21};

const int kStackSize = 1 << 21;
//using Function = add_pointer<void()>::type;


void Thread_Init(Thread *_thread, bool create_stack)
{

  _thread->context.mxcsr = 0;
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

__attribute__ ((noinline))
void changeContext(Context *aa, Context *bb){
            __asm__ __volatile__(
              "movq    %%rsp, (%[s]) \n\t"
              "movq    %%r15, 8(%[s]) \n\t"
              "movq    %%r14, 16(%[s]) \n\t"
              "movq    %%r13, 24(%[s]) \n\t"
              "movq    %%r12, 32(%[s]) \n\t"
              "movq    %%rbx, 40(%[s]) \n\t"
              "movq    %%rbp, 48(%[s]) \n\t"
              "movq    (%[c]), %%rsp \n\t"
              "movq    8(%[c]), %%r15 \n\t"
              "movq    16(%[c]), %%r14 \n\t"
              "movq    24(%[c]), %%r13 \n\t"
              "movq    32(%[c]), %%r12 \n\t"
              "movq    40(%[c]), %%rbx \n\t"
              "movq    48(%[c]), %%rbp \n\t"
              : //[b] "=r" (bb)
              : [s] "r" (aa), [c] "r" (bb)
            );
}


void Scheduler(UserThreading *_uth){

  printf("Scheduler Started %d\n", _uth->id);
  _uth->sched_thread = (Thread *) malloc(sizeof(Thread));
  Thread_Init(_uth->sched_thread, true);


  while (_uth->buf->context.mxcsr == 11);

  // int j = setjmp(buf02);
  // printf("Setjmp buf02\n");

  // if (j == 0)
  // if ( _uth->buf->context.mxcsr == _uth->id)
  //     changeContext(&(_uth->sched_thread->context), &(_uth->buf->context));

  // int i = 0;
  
  // while (i < 5000000){

  while (!_uth->sp_exit_check){


      if ( _uth->buf->context.mxcsr == _uth->id){
            //i++;

            //changeContext(&(_uth->sched_thread->context), &(_uth->buf->context));

            Context *s = &(_uth->sched_thread->context);
            Context *t = &(_uth->buf->context);

            __asm__ __volatile__(
              "movq    %%rsp, (%[s]) \n\t"
              "lea target(%%rip), %%rcx \n\t"
              "movq %%rcx, 8(%[s]) \n\t"
              //"movq    %%r15, 8(%[s]) \n\t"
              //"movq    %%r14, 16(%[s]) \n\t"
              //"movq    %%r13, 24(%[s]) \n\t"
              //"movq    %%r12, 32(%[s]) \n\t"
              //"movq    %%rbx, 40(%[s]) \n\t"
              //"movq    %%rbp, 48(%[s]) \n\t"
              "movq    (%[t]), %%rsp \n\t"
              // "movq    8(%[t]), %%r15 \n\t"
              // "movq    16(%[t]), %%r14 \n\t"
              // "movq    24(%[t]), %%r13 \n\t"
              // "movq    32(%[t]), %%r12 \n\t"
              // "movq    40(%[t]), %%rbx \n\t"
              // "movq    48(%[t]), %%rbp \n\t"
              "movq 8(%[t]), %%rcx \n\t"
              "jmp *%%rcx \n\t"
              "target: "
              : //[b] "=r" (bb)
              : [t] "a" (t), [s] "b" (s)
              : /*"%rax", "%rbx", */"%rcx", "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi"  //Clobber all registers which are not saved
            );

            // if (j != 0)
            // longjmp(buf01, 1);
            
            //printf("Olalala\n");

            //label2: 
            
            _uth->buf->context.mxcsr = !_uth->id;
            _uth->buf2->context =  (_uth->buf->context);
            // if (i == 50000){
            //   printf("Close to done\n");
            // }


            #ifdef REP_NOPS 

              asm volatile("rep nop");
              // asm volatile("rep nop");
              // asm volatile("rep nop");
              // asm volatile("rep nop");
              // asm volatile("rep nop");
            
              // asm volatile("rep nop");
              //asm volatile("rep nop");
              //asm volatile("rep nop");
              //asm volatile("rep nop");
              // asm volatile("rep nop");

           #endif

        }
        // else {
        //   // if (_uth->id != 0){
        //   //    printf("%d and %d\n",  _uth->buf->context.mxcsr, _uth->id);

        //   //    sleep(1);
        //   // }

        //   // if (i == 50000 - 1){
        //   //   printf("49999\n");
        //   // }
        // }
        #ifdef REP_NOPS
        else {
          asm volatile("rep nop");
        }
        #endif

  }

}

void UserThreading_Destory(UserThreading *_uth){
  Thread_Destory(_uth->sched_thread);
}

__attribute__ ((noinline))
void Yield(UserThreading *_uth){

  //printf("--- Yield --- ThreadVec Size %ld current_thread_num %d \n", thread_Vec.size(), current_thread_num);
  //printf("Yield\n");

  //changeContext(&(_uth->buf->context), &(_uth->sched_thread->context));
  //longjmp(buf02, 1);

  Context *s = &(_uth->sched_thread->context);
  Context *t = &(_uth->buf->context);

  // __asm__ __volatile__(
  // "movq    %%rsp, (%[t]) \n\t"
  // "movq    %%r15, 8(%[t]) \n\t"
  // "movq    %%r14, 16(%[t]) \n\t"
  // "movq    %%r13, 24(%[t]) \n\t"
  // "movq    %%r12, 32(%[t]) \n\t"
  // "movq    %%rbx, 40(%[t]) \n\t"
  // "movq    %%rbp, 48(%[t]) \n\t"
  // "movq    (%[s]), %%rsp \n\t"
  // "movq    8(%[s]), %%r15 \n\t"
  // "movq    16(%[s]), %%r14 \n\t"
  // "movq    24(%[s]), %%r13 \n\t"
  // "movq    32(%[s]), %%r12 \n\t"
  // "movq    40(%[s]), %%rbx \n\t"
  // "movq    48(%[s]), %%rbp \n\t"
  // "jmp 0x000000000000136a\n\t"
  // : //[b] "=r" (bb)
  // : [s] "r" (s), [t] "r" (t)
  // );


  __asm__ __volatile__(
    "movq    %%rsp, (%[t]) \n\t"
    "lea target2(%%rip), %%rcx \n\t"
    "movq %%rcx, 8(%[t]) \n\t"
    //"movq    %%r15, 8(%[s]) \n\t"
    //"movq    %%r14, 16(%[s]) \n\t"
    //"movq    %%r13, 24(%[s]) \n\t"
    //"movq    %%r12, 32(%[s]) \n\t"
    //"movq    %%rbx, 40(%[s]) \n\t"
    //"movq    %%rbp, 48(%[s]) \n\t"
    "movq    (%[s]), %%rsp \n\t"
    // "movq    8(%[t]), %%r15 \n\t"
    // "movq    16(%[t]), %%r14 \n\t"
    // "movq    24(%[t]), %%r13 \n\t"
    // "movq    32(%[t]), %%r12 \n\t"
    // "movq    40(%[t]), %%rbx \n\t"
    // "movq    48(%[t]), %%rbp \n\t"
    "movq 8(%[s]), %%rcx \n\t"
    "jmp *%%rcx \n\t"
    "target2: "
    : //[b] "=r" (bb)
    : [t] "a" (t), [s] "b" (s)
    : /*"%rax", "%rbx", */"%rcx", "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi"  //Clobber all registers which are not saved
  );
}



void ThreadExit(UserThreading *_uth){
    
    //printf("Thread Exit\n");
    Yield(_uth);
    //printf("$$$\n");
}


int makeThread(UserThreading *_uth, void (*fn)()){


  Thread* new_thread = (Thread *) aligned_alloc(64,sizeof(Thread));
  Thread_Init(new_thread, true);

  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
  new_thread->context.rip = fn;
  // new_thread->context.rsp -= sizeof(void**);
  // *(void**)new_thread->context.rsp = (void*)fn;

  _uth->buf = new_thread; 


}

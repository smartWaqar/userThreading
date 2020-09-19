#include "ufiber26b.h"

void Scheduler(UserThreading *_uth){

  printf("Scheduler Started %d\n", _uth->id);
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
  Thread_Init(_uth->sched_thread, true);


  while (_uth->buf->context.mxcsr == 11);

  //int i = 0;
  //while (i < 5000000){

  //long int counter = 1;

  //while(1){


  Context *s = &(_uth->sched_thread->context);
  Context *t = &(_uth->buf->context);

  //Thread *tt = _uth->buf;

  //printf("pointer %ld \n", (long int) t);


  while (!_uth->sp_exit_check){

      //__asm__ __volatile__ ( "lfence\n\t");
      if ( _uth->buf->context.mxcsr == _uth->expVal){
      //if ( _uth->buf->context.mxcsr == counter){
            //counter++;

            //i++;
          //_uth->buf->context.mxcsr = 0;

          _uth->expVal = !_uth->expVal;

          //sleep(1);

          //__builtin_prefetch(&(_uth->buf->context));  //Useless accoridng to prof 

           //__builtin_prefetch(&(_uth->buf->context.r13));

            //printf("pointer %ld \n", t);
            //Context *t = &(_uth->buf->context);
            //Context *t = &(tt->context); 

            //printf("Hello world\n");           


            __asm__ __volatile__(
              "movq    %%rsp, (%[s]) \n\t"
              //"movq    %%r13, 64(%[s]) \n\t"
              
              "lea target%=(%%rip), %%rcx \n\t"
              "movq %%rcx, 8(%[s]) \n\t"
              "movq    %%rdx, 16(%[s]) \n\t"
              "movq    %%r8,  24(%[s]) \n\t"
              "movq    %%r9,  32(%[s]) \n\t"
              "movq    %%r10, 40(%[s]) \n\t"
              "movq    %%r11, 48(%[s]) \n\t"
              "movq    %%r12, 56(%[s]) \n\t"
              "movq    %%r13, 64(%[s]) \n\t"
              "movq    %%r14, 72(%[s]) \n\t"
              "movq    %%r15, 80(%[s]) \n\t"
              "movq    %%rbp, 88(%[s]) \n\t"
              "movq    %%rdi, 96(%[s]) \n\t"
              "movq    %%rsi, 104(%[s]) \n\t"

              "movq    (%[t]), %%rsp \n\t"
              "movq    64(%[t]), %%r13 \n\t"

              "movq 8(%[t]), %%rcx \n\t"
              "movq    16(%[t]), %%rdx \n\t"
              "movq    24(%[t]), %%r8 \n\t"
              "movq    32(%[t]), %%r9 \n\t"
              "movq    40(%[t]), %%r10 \n\t"
              "movq    48(%[t]), %%r11 \n\t"
              "movq    56(%[t]), %%r12 \n\t"
              //"movq    64(%[t]), %%r13 \n\t"
              "movq    72(%[t]), %%r14 \n\t"
              "movq    80(%[t]), %%r15 \n\t"
              "movq    88(%[t]), %%rbp \n\t"
              "movq    96(%[t]), %%rdi \n\t"
              "movq    104(%[t]), %%rsi \n\t"
              "jmp *%%rcx \n\t"
              "target%=: "
              : //[b] "=r" (bb)
              : [t] "a" (t), [s] "b" (s)
              //: /*"%rax", "%rbx", */ "%rcx" /*, "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi" */ //Clobber all registers which are not saved
              : "memory"
              );

           // asm volatile("": : :"memory");
            //printf("Hello world\n");

            //__sync_synchronize();
            
            //for(int m=0; m < 10; m++){ kk++;}

            //_uth->buf->context.mxcsr = !_uth->id;
            //_uth->buf2->context =  (_uth->buf->context);

            //_uth->buf2->context.mxcsr = !_uth->id;

            #ifdef REP_NOPS 

              for (int l=0; l < REP_NOPS; l++)
              asm volatile("rep nop");


           #endif


        }
        // else {
        //   if (i == 5000000)
        //     break;
        // }
        // else {
        //   printf("Id: %d Flag: %ld & expVal %d\n",_uth->id, _uth->buf->context.mxcsr, _uth->expVal);
        //   sleep(1);
        // }

        #ifdef REP_NOPS
        else {
          
          //if (i == 5000000) break;

          //asm volatile("rep nop");
              //for (int l=0; l < REP_NOPS; l++)
              asm volatile("rep nop");

        }
        #endif

  }

}
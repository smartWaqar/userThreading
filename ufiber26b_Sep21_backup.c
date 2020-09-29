// Changing flag from 24.c

#define _GNU_SOURCE             
#include <sched.h>
#include <x86intrin.h>
#include <assert.h> 

#include "ufiber26b.h"



//#include <immintrin.h>

#include <unistd.h>


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
    //_uth->current_thread = 0;

    _uth->sp_exit_check = false;
    _uth->id = _id;

    //_uth->buf->context.mxcsr = 11;
    _uth->buf->context.mxcsr = 11;

    //_uth->expVal = !_id;
    _uth->expVal = 1;

    _uth->lastVal = !_id;

    //printf("expVal %d\n", _uth->expVal);

}

__attribute__((noinline))
void Scheduler(UserThreading *_uth){

  printf("Scheduler Started %d\n", _uth->id);
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
  Thread_Init(_uth->sched_thread, true);


  while (_uth->buf->context.mxcsr == 11);

  Context *s = &(_uth->sched_thread->context);
  Context *t = &(_uth->buf->context);

  //printf("pointer %ld \n", (long int) t);


  // int i = 0;
  // while (i < 5000000){

  //long int counter = 1;

  //while(1){

  //Thread *tt = _uth->buf;

  int flagg = _uth->expVal;

  int elseCounter = 0;
  int whileCounter = 0;

  int fiberRunCounter = 0;
  int uniqueElseCounter = 0;
  int prevFiberNum = 0;

  int mythreadId = sched_getcpu();

  while (!_uth->sp_exit_check){
    //whileCounter++;

      //__asm__ __volatile__ ( "lfence\n\t");
      if ( t->mxcsr == flagg){
        //fiberRunCounter++;
      //if ( _uth->buf->context.mxcsr == counter){
            //counter++;

            //i++;
          //_uth->buf->context.mxcsr = 0;

          // _uth->expVal = !_uth->expVal;
        flagg = !flagg;

          //sleep(1);

          //__builtin_prefetch(&(_uth->buf->context));  //Useless accoridng to prof 

           //__builtin_prefetch(&(_uth->buf->context.r13));

            //printf("pointer %ld \n", t);
            //Context *t = &(_uth->buf->context);
            //Context *t = &(tt->context); 

            //printf("Hello world\n");

              Context *s2 = s;
              Context *t2 = t;


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
              : [t] "+a" (t2), [s] "+b" (s2)
              :
              : "memory", "rcx"
              );

           // asm volatile("": : :"memory");
            //printf("Hello world\n");

            //__sync_synchronize();
            
            //for(int m=0; m < 10; m++){ kk++;}

            //_uth->buf->context.mxcsr = !_uth->id;
            //_uth->buf2->context =  (_uth->buf->context);

            //_uth->buf2->context.mxcsr = !_uth->id;

            #ifdef REP_NOPS 

              asm volatile("mfence": : :"memory");

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
          
          //printf("Elseee\n");
          elseCounter++;

          //if ( mythreadId == 0)
          //printf("prevFiberNum %d fiberRunCounter %d \n", prevFiberNum, fiberRunCounter);

          if (prevFiberNum != fiberRunCounter)
            uniqueElseCounter++;

          prevFiberNum = fiberRunCounter;


          //if (i == 5000000) break;

          //asm volatile("rep nop");
              //for (int l=0; l < REP_NOPS; l++)
              asm volatile("rep nop");

        }
        #endif

  }

  //printf("elseCounter       %d\n", elseCounter);
  //printf("uniqueElseCounter %d\n",  uniqueElseCounter);


  //printf("whileCounter %lld\n", whileCounter);
  //printf("fiberRunCounter %d \n", fiberRunCounter);

}

// void Scheduler(UserThreading *_uth){

//   printf("Scheduler Started %d\n", _uth->id);
//   _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
//   Thread_Init(_uth->sched_thread, true);


//   while (_uth->buf->context.mxcsr == 11);

//   //int i = 0;
//   //while (i < 5000000){

//   //long int counter = 1;

//   //while(1){


//   Context *s = &(_uth->sched_thread->context);
//   //Context *t = &(_uth->buf->context);

//   //Thread *tt = _uth->buf;

//   //printf("pointer %ld \n", (long int) t);


//   while (!_uth->sp_exit_check){

//       //__asm__ __volatile__ ( "lfence\n\t");
//       if ( _uth->buf->context.mxcsr == _uth->expVal){
//       //if ( _uth->buf->context.mxcsr == counter){
//             //counter++;

//             //i++;
//           //_uth->buf->context.mxcsr = 0;

//           _uth->expVal = !_uth->expVal;

//           //sleep(1);

//           //__builtin_prefetch(&(_uth->buf->context));  //Useless accoridng to prof 

//            //__builtin_prefetch(&(_uth->buf->context.r13));

//             //printf("pointer %ld \n", t);
//             //Context *t = &(_uth->buf->context);
//             //Context *t = &(tt->context); 

//             //printf("Hello world\n");           


//             __asm__ __volatile__(
//               "movq    %%rsp, (%[s]) \n\t"
//               //"movq    %%r13, 64(%[s]) \n\t"
              
//               "lea target%=(%%rip), %%rcx \n\t"
//               "movq %%rcx, 8(%[s]) \n\t"
//               "movq    %%rdx, 16(%[s]) \n\t"
//               "movq    %%r8,  24(%[s]) \n\t"
//               "movq    %%r9,  32(%[s]) \n\t"
//               "movq    %%r10, 40(%[s]) \n\t"
//               "movq    %%r11, 48(%[s]) \n\t"
//               "movq    %%r12, 56(%[s]) \n\t"
//               "movq    %%r13, 64(%[s]) \n\t"
//               "movq    %%r14, 72(%[s]) \n\t"
//               "movq    %%r15, 80(%[s]) \n\t"
//               "movq    %%rbp, 88(%[s]) \n\t"
//               "movq    %%rdi, 96(%[s]) \n\t"
//               "movq    %%rsi, 104(%[s]) \n\t"

//               "movq    (%[t]), %%rsp \n\t"
//               "movq    64(%[t]), %%r13 \n\t"

//               "movq 8(%[t]), %%rcx \n\t"
//               "movq    16(%[t]), %%rdx \n\t"
//               "movq    24(%[t]), %%r8 \n\t"
//               "movq    32(%[t]), %%r9 \n\t"
//               "movq    40(%[t]), %%r10 \n\t"
//               "movq    48(%[t]), %%r11 \n\t"
//               "movq    56(%[t]), %%r12 \n\t"
//               //"movq    64(%[t]), %%r13 \n\t"
//               "movq    72(%[t]), %%r14 \n\t"
//               "movq    80(%[t]), %%r15 \n\t"
//               "movq    88(%[t]), %%rbp \n\t"
//               "movq    96(%[t]), %%rdi \n\t"
//               "movq    104(%[t]), %%rsi \n\t"
//               "jmp *%%rcx \n\t"
//               "target%=: "
//               : //[b] "=r" (bb)
//               : [t] "a"  (&(_uth->buf->context)), [s] "b" (s)
//               : "memory"
//               );

//            // asm volatile("": : :"memory");
//             //printf("Hello world\n");

//             //__sync_synchronize();
            
//             //for(int m=0; m < 10; m++){ kk++;}

//             //_uth->buf->context.mxcsr = !_uth->id;
//             //_uth->buf2->context =  (_uth->buf->context);

//             //_uth->buf2->context.mxcsr = !_uth->id;

//             #ifdef REP_NOPS 

//               for (int l=0; l < REP_NOPS; l++)
//               asm volatile("rep nop");


//            #endif


//         }
//         // else {
//         //   if (i == 5000000)
//         //     break;
//         // }
//         // else {
//         //   printf("Id: %d Flag: %ld & expVal %d\n",_uth->id, _uth->buf->context.mxcsr, _uth->expVal);
//         //   sleep(1);
//         // }

//         #ifdef REP_NOPS
//         else {
          
//           //if (i == 5000000) break;

//           //asm volatile("rep nop");
//               //for (int l=0; l < REP_NOPS; l++)
//               asm volatile("rep nop");

//         }
//         #endif

//   }

// }

void UserThreading_Destory(UserThreading *_uth){
  Thread_Destory(_uth->sched_thread);
}


__attribute__((always_inline))
//__attribute__ ((noinline))
void Yield(UserThreading *_uth){


  //printf("Yield\n");
 // printf("Size of UserThreading %ld\n", sizeof(*_uth));
  //printf("%p\n", _uth);

  Context *s = &(_uth->sched_thread->context);
  Context *t = &(_uth->buf2->context);

  //int tval = _uth->expVal ^ 1;

  if (_uth->lastVal == 0){

    _uth->lastVal = !_uth->lastVal;

    __asm__ __volatile__(
      "movq    %%rsp, (%[t]) \n\t"
      //"movq    %%r13, 64(%[t]) \n\t"

      "lea     target2%=(%%rip), %%rcx \n\t"
      "movq    %%rcx, 8(%[t]) \n\t"
      "movq    %%rdx, 16(%[t]) \n\t"
      "movq    %%r8,  24(%[t]) \n\t"
      "movq    %%r9,  32(%[t]) \n\t"
      "movq    %%r10, 40(%[t]) \n\t"
      "movq    %%r11, 48(%[t]) \n\t"
      "movq    %%r12, 56(%[t]) \n\t"
      "movq    %%r13, 64(%[t]) \n\t"
      "movq    %%r14, 72(%[t]) \n\t"
      "movq    %%r15, 80(%[t]) \n\t"
      "movq    %%rbp, 88(%[t]) \n\t"
      "movq    %%rdi, 96(%[t]) \n\t"
      "movq    %%rsi, 104(%[t]) \n\t"
      "movq    $0, 112(%[t]) \n\t"
      //"addq    $1, 112(%[t]) \n\t"

      "movq    (%[s]), %%rsp \n\t"
      "movq    64(%[s]), %%r13 \n\t"

      "movq 8(%[s]), %%rcx \n\t"
      "movq    16(%[s]), %%rdx \n\t"
      "movq    24(%[s]), %%r8 \n\t"
      "movq    32(%[s]), %%r9 \n\t"
      "movq    40(%[s]), %%r10 \n\t"
      "movq    48(%[s]), %%r11 \n\t"
      "movq    56(%[s]), %%r12 \n\t"
      //"movq    64(%[s]), %%r13 \n\t"
      "movq    72(%[s]), %%r14 \n\t"
      "movq    80(%[s]), %%r15 \n\t"
      "movq    88(%[s]), %%rbp \n\t"
      "movq    96(%[s]), %%rdi \n\t"
      "movq    104(%[s]), %%rsi \n\t"
      "jmp *%%rcx \n\t"
      "target2%=: "
      : //[b] "=r" (bb)
      : [t] "a" (t), [s] "b" (s)
      : /*"%rax", "%rbx", */ "%rcx" /*, "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi" */ //Clobber all registers which are not saved
      //: /*"%rax", "%rbx",  "%rcx" , "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi" */ //Clobber all registers which are not saved
      //: /*"%rax", "%rbx",*/ "%rcx"/*, "%rdx", "%r8", "%r9", "%r10", "%r11"*/, "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi"  //Clobber all registers which are not saved
    );

    }
    else {

      _uth->lastVal = !_uth->lastVal;

          __asm__ __volatile__(
      "movq    %%rsp, (%[t]) \n\t"
      //"movq    %%r13, 64(%[t]) \n\t"

      "lea     target2%=(%%rip), %%rcx \n\t"
      "movq    %%rcx, 8(%[t]) \n\t"
      "movq    %%rdx, 16(%[t]) \n\t"
      "movq    %%r8,  24(%[t]) \n\t"
      "movq    %%r9,  32(%[t]) \n\t"
      "movq    %%r10, 40(%[t]) \n\t"
      "movq    %%r11, 48(%[t]) \n\t"
      "movq    %%r12, 56(%[t]) \n\t"
      "movq    %%r13, 64(%[t]) \n\t"
      "movq    %%r14, 72(%[t]) \n\t"
      "movq    %%r15, 80(%[t]) \n\t"
      "movq    %%rbp, 88(%[t]) \n\t"
      "movq    %%rdi, 96(%[t]) \n\t"
      "movq    %%rsi, 104(%[t]) \n\t"
      "movq    $1, 112(%[t]) \n\t"
      //"addq    $1, 112(%[t]) \n\t"

      "movq    (%[s]), %%rsp \n\t"
      "movq    64(%[s]), %%r13 \n\t"

      "movq 8(%[s]), %%rcx \n\t"
      "movq    16(%[s]), %%rdx \n\t"
      "movq    24(%[s]), %%r8 \n\t"
      "movq    32(%[s]), %%r9 \n\t"
      "movq    40(%[s]), %%r10 \n\t"
      "movq    48(%[s]), %%r11 \n\t"
      "movq    56(%[s]), %%r12 \n\t"
      //"movq    64(%[s]), %%r13 \n\t"
      "movq    72(%[s]), %%r14 \n\t"
      "movq    80(%[s]), %%r15 \n\t"
      "movq    88(%[s]), %%rbp \n\t"
      "movq    96(%[s]), %%rdi \n\t"
      "movq    104(%[s]), %%rsi \n\t"
      "jmp *%%rcx \n\t"
      "target2%=: "
      : //[b] "=r" (bb)
      : [t] "a" (t), [s] "b" (s)
      : /*"%rax", "%rbx", */ "%rcx" /*, "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi" */ //Clobber all registers which are not saved
      //: /*"%rax", "%rbx",  "%rcx" , "%rdx", "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi" */ //Clobber all registers which are not saved
      //: /*"%rax", "%rbx",*/ "%rcx"/*, "%rdx", "%r8", "%r9", "%r10", "%r11"*/, "%r12", "%r13", "%r14", "%r15", "%rbp", "%rdi", "%rsi"  //Clobber all registers which are not saved
    );
    
    }

}




int makeThread(UserThreading *_uth, void (*fn)()){


  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
  Thread_Init(new_thread, true);

  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
  new_thread->context.rip = (uint64_t) fn;
  new_thread->context.mxcsr = 1;
  // new_thread->context.rsp -= sizeof(void**);
  // *(void**)new_thread->context.rsp = (void*)fn;

  _uth->buf = new_thread; 


}



pthread_barrier_t barrier;
long long globalVariable = 0;
UserThreading UserThreadingVec[2] __attribute__( ( aligned ( 128 ) ) );
int threadCount;
bool OSThreadAvailable[2];
//thread_local int threadId;
static volatile _Thread_local int threadId;

UserThreading userTh;



int special_global = 0;



char buf[128] = {0};
volatile long long global_var1 __attribute__( ( aligned ( 128 ) ) ) = 0;
volatile long long global_var2 __attribute__( ( aligned ( 128 ) ) ) = 0;
char buf2[128] = {0};

void allSchedulersExit(){

  for (int i=0; i < 2; i++){
    if (i != threadId )
      //UserThreadingVec[threadId].current_thread = NULL;
      UserThreadingVec[i].sp_exit_check = true;
      //UserThreadingVec[i].current_thread = NULL;

  }
  printf("All Schedulers Check Marked\n");
}
    

//volatile int myglobal = 0;

void pfc(){

    //int parentId = threadId;
    printf("parentId: %d --------------------\n", threadId);

    long long local_var = 0;

    long long local_var1 = 0;
    long long local_var2 = 0;

    // Special code

    //UserThreadingVec[1].current_thread = UserThreadingVec[0].current_thread;


    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;


    for (int i=0; i < 10000000; i++){
        
        //Case: 1 Global
        //globalVariable++;

        //Case: 1 Local
        //local_var++;

        // // Case: 2 Local
        // if (threadId == 0)
        //   local_var1++;
        // else
        //   local_var2++;


        // Case: 2 Global
        //printf("ThreadId %d\n ", threadId);
        if (threadId == 0)
          global_var1++;
        else
          global_var2++;


       //printf("OST %d Hello C%d on CPU %d --------------- \n",threadId , i, sched_getcpu());
        

      Yield(&UserThreadingVec[threadId]); 
      //myglobal = i;

    }
    printf("C Exiting\n");

    //printf("local_var: %lld\n",local_var); 
    // printf("local_var1: %lld\n",local_var1); 
    // printf("local_var2: %lld\n",local_var2); 
    
    //allSchedulersExit();

    // printf("%p\n", &UserThreadingVec[0].sched_thread->context);
    // printf("%p\n", &UserThreadingVec[1].sched_thread->context);

    // printf("%p\n", &UserThreadingVec[0].sp_exit_check);
    // printf("%p\n", &UserThreadingVec[1].sp_exit_check);



    // //UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = 0;
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;

    // //UserThreadingVec[threadId].buf->context.mxcsr = 0;
    UserThreadingVec[threadId].sp_exit_check = true;


    //UserThreadingVec[0].sp_exit_check = true;
    //UserThreadingVec[1].sp_exit_check = true;

    //printf("I am done %d %lld\n", threadId, global_var2);

    Yield(&UserThreadingVec[threadId]);
    //Yield(&UserThreadingVec[1]);
    printf("*****\n");
}
 

pthread_t threadId_1, threadId_2, threadId_3;
int coreId_1, coreId_2;

uint64_t thread1_starttime, thread2_starttime, thread1_endtime, thread2_endtime;


void *mpthread1(void *arg){

    // UserThreading muth;
    // UserThreading_Init(&muth, 0);

    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(coreId_1, &cpuset);
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);

    OSThreadAvailable[threadId] = true;

    pthread_barrier_wait(&barrier);
    thread1_starttime = __rdtsc();


    Scheduler(&UserThreadingVec[threadId]);
    OSThreadAvailable[threadId] = false;

    thread1_endtime = __rdtsc();

    //printf("globalVariable: %lld\n",globalVariable);  

    //UserThreading_Destory(&UserThreadingVec[threadId]);

}

void *mpthread2(void *arg){

    cpu_set_t cpuset2;
    CPU_ZERO(&cpuset2);
    CPU_SET(coreId_2, &cpuset2);
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);

    printf("OS Thread Affinity %d \n", sched_getcpu());

    threadId = (intptr_t) arg;
    printf("ThreadNum: %d\n", threadId);
    OSThreadAvailable[threadId] = true;


    pthread_barrier_wait(&barrier);
    thread2_starttime = __rdtsc();

    Scheduler(&UserThreadingVec[threadId]);
    OSThreadAvailable[threadId] = false;

    thread2_endtime = __rdtsc();
    //printf("globalVariable: %lld\n",globalVariable);  

    //UserThreading_Destory(&UserThreadingVec[threadId]);

}



int main(int argc, char *argv[]){



  if (argc != 3){
    printf("Program needs 2 arguments: two core ids \n");
    exit(1);
  }

  coreId_1 = atoi(argv[1]);
  coreId_2 = atoi(argv[2]);


  if (coreId_1 == 5)
    special_global = 1;

  #ifdef REP_NOPS
    printf("REP_NOPS enabled\n");
  #else
    printf("REP_NOPS not enabled\n");
  #endif


  pthread_barrier_init (&barrier, NULL, 2);

  threadCount = 2;

  //UserThreading userTh_0;
  //UserThreading userTh_1;
  //UserThreadingVec[0] = userTh_0;
  //UserThreadingVec[1] = userTh_1;
  UserThreading_Init(&UserThreadingVec[0], 0);
  UserThreading_Init(&UserThreadingVec[1], 1);
  makeThread(&UserThreadingVec[0], pfc);





  uint64_t timeCounter_start = __rdtsc();
  printf("My start: %lu \n", timeCounter_start);

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);

  pthread_join(threadId_1, NULL); 
  pthread_join(threadId_2, NULL);


  uint64_t timeCounter_end = __rdtsc();
  //printf("Execution time per opertation: %lu clock cycles\n", 
  //  (timeCounter_end - timeCounter_start) / (10000000) );


  pthread_barrier_destroy(&barrier);
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
  printf("global_var2: %lld \n", global_var2); 
  

  //printf("Time from thead Counters");
  // smalller of start time and larger of end time
 
  uint64_t thread_starttime = 
  thread1_starttime < thread2_starttime ? thread1_starttime : thread2_starttime; 
  uint64_t thread_endtime = 
  thread1_endtime > thread2_endtime ? thread1_endtime : thread2_endtime;

  printf("Execution time is %lu clock cycles\n",
    (thread_endtime - thread_starttime) / (10000000) );

}

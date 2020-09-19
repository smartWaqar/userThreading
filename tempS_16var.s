
./program26:     file format elf64-x86-64


Disassembly of section .init:

00000000000008e0 <_init>:
 8e0:	48 83 ec 08          	sub    $0x8,%rsp
 8e4:	48 8b 05 fd 26 20 00 	mov    0x2026fd(%rip),%rax        # 202fe8 <__gmon_start__>
 8eb:	48 85 c0             	test   %rax,%rax
 8ee:	74 02                	je     8f2 <_init+0x12>
 8f0:	ff d0                	callq  *%rax
 8f2:	48 83 c4 08          	add    $0x8,%rsp
 8f6:	c3                   	retq   

Disassembly of section .plt:

0000000000000900 <.plt>:
 900:	ff 35 5a 26 20 00    	pushq  0x20265a(%rip)        # 202f60 <_GLOBAL_OFFSET_TABLE_+0x8>
 906:	ff 25 5c 26 20 00    	jmpq   *0x20265c(%rip)        # 202f68 <_GLOBAL_OFFSET_TABLE_+0x10>
 90c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000910 <pthread_create@plt>:
 910:	ff 25 5a 26 20 00    	jmpq   *0x20265a(%rip)        # 202f70 <pthread_create@GLIBC_2.2.5>
 916:	68 00 00 00 00       	pushq  $0x0
 91b:	e9 e0 ff ff ff       	jmpq   900 <.plt>

0000000000000920 <puts@plt>:
 920:	ff 25 52 26 20 00    	jmpq   *0x202652(%rip)        # 202f78 <puts@GLIBC_2.2.5>
 926:	68 01 00 00 00       	pushq  $0x1
 92b:	e9 d0 ff ff ff       	jmpq   900 <.plt>

0000000000000930 <__stack_chk_fail@plt>:
 930:	ff 25 4a 26 20 00    	jmpq   *0x20264a(%rip)        # 202f80 <__stack_chk_fail@GLIBC_2.4>
 936:	68 02 00 00 00       	pushq  $0x2
 93b:	e9 c0 ff ff ff       	jmpq   900 <.plt>

0000000000000940 <pthread_setaffinity_np@plt>:
 940:	ff 25 42 26 20 00    	jmpq   *0x202642(%rip)        # 202f88 <pthread_setaffinity_np@GLIBC_2.3.4>
 946:	68 03 00 00 00       	pushq  $0x3
 94b:	e9 b0 ff ff ff       	jmpq   900 <.plt>

0000000000000950 <strtol@plt>:
 950:	ff 25 3a 26 20 00    	jmpq   *0x20263a(%rip)        # 202f90 <strtol@GLIBC_2.2.5>
 956:	68 04 00 00 00       	pushq  $0x4
 95b:	e9 a0 ff ff ff       	jmpq   900 <.plt>

0000000000000960 <pthread_barrier_init@plt>:
 960:	ff 25 32 26 20 00    	jmpq   *0x202632(%rip)        # 202f98 <pthread_barrier_init@GLIBC_2.2.5>
 966:	68 05 00 00 00       	pushq  $0x5
 96b:	e9 90 ff ff ff       	jmpq   900 <.plt>

0000000000000970 <__printf_chk@plt>:
 970:	ff 25 2a 26 20 00    	jmpq   *0x20262a(%rip)        # 202fa0 <__printf_chk@GLIBC_2.3.4>
 976:	68 06 00 00 00       	pushq  $0x6
 97b:	e9 80 ff ff ff       	jmpq   900 <.plt>

0000000000000980 <pthread_barrier_destroy@plt>:
 980:	ff 25 22 26 20 00    	jmpq   *0x202622(%rip)        # 202fa8 <pthread_barrier_destroy@GLIBC_2.2.5>
 986:	68 07 00 00 00       	pushq  $0x7
 98b:	e9 70 ff ff ff       	jmpq   900 <.plt>

0000000000000990 <pthread_join@plt>:
 990:	ff 25 1a 26 20 00    	jmpq   *0x20261a(%rip)        # 202fb0 <pthread_join@GLIBC_2.2.5>
 996:	68 08 00 00 00       	pushq  $0x8
 99b:	e9 60 ff ff ff       	jmpq   900 <.plt>

00000000000009a0 <sched_getcpu@plt>:
 9a0:	ff 25 12 26 20 00    	jmpq   *0x202612(%rip)        # 202fb8 <sched_getcpu@GLIBC_2.6>
 9a6:	68 09 00 00 00       	pushq  $0x9
 9ab:	e9 50 ff ff ff       	jmpq   900 <.plt>

00000000000009b0 <exit@plt>:
 9b0:	ff 25 0a 26 20 00    	jmpq   *0x20260a(%rip)        # 202fc0 <exit@GLIBC_2.2.5>
 9b6:	68 0a 00 00 00       	pushq  $0xa
 9bb:	e9 40 ff ff ff       	jmpq   900 <.plt>

00000000000009c0 <aligned_alloc@plt>:
 9c0:	ff 25 02 26 20 00    	jmpq   *0x202602(%rip)        # 202fc8 <aligned_alloc@GLIBC_2.16>
 9c6:	68 0b 00 00 00       	pushq  $0xb
 9cb:	e9 30 ff ff ff       	jmpq   900 <.plt>

00000000000009d0 <pthread_barrier_wait@plt>:
 9d0:	ff 25 fa 25 20 00    	jmpq   *0x2025fa(%rip)        # 202fd0 <pthread_barrier_wait@GLIBC_2.2.5>
 9d6:	68 0c 00 00 00       	pushq  $0xc
 9db:	e9 20 ff ff ff       	jmpq   900 <.plt>

Disassembly of section .plt.got:

00000000000009e0 <__cxa_finalize@plt>:
 9e0:	ff 25 12 26 20 00    	jmpq   *0x202612(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
 9e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000009f0 <main>:

int main(int argc, char *argv[]){



  if (argc != 3){
     9f0:	83 ff 03             	cmp    $0x3,%edi
int main(int argc, char *argv[]){
     9f3:	53                   	push   %rbx
  if (argc != 3){
     9f4:	0f 85 5c 02 00 00    	jne    c56 <main+0x266>

#ifdef __USE_EXTERN_INLINES
__extern_inline int
__NTH (atoi (const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
     9fa:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
     9fe:	48 89 f3             	mov    %rsi,%rbx
     a01:	ba 0a 00 00 00       	mov    $0xa,%edx
     a06:	31 f6                	xor    %esi,%esi
     a08:	e8 43 ff ff ff       	callq  950 <strtol@plt>
     a0d:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
     a11:	31 f6                	xor    %esi,%esi
     a13:	ba 0a 00 00 00       	mov    $0xa,%edx
     a18:	89 05 62 2f 20 00    	mov    %eax,0x202f62(%rip)        # 203980 <coreId_1>
     a1e:	e8 2d ff ff ff       	callq  950 <strtol@plt>

  coreId_1 = atoi(argv[1]);
  coreId_2 = atoi(argv[2]);


  if (coreId_1 == 5)
     a23:	83 3d 56 2f 20 00 05 	cmpl   $0x5,0x202f56(%rip)        # 203980 <coreId_1>
     a2a:	89 05 78 2f 20 00    	mov    %eax,0x202f78(%rip)        # 2039a8 <coreId_2>
     a30:	75 0a                	jne    a3c <main+0x4c>
    special_global = 1;
     a32:	c7 05 64 28 20 00 01 	movl   $0x1,0x202864(%rip)        # 2032a0 <special_global>
     a39:	00 00 00 
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
     a3c:	48 8d 3d f4 12 00 00 	lea    0x12f4(%rip),%rdi        # 1d37 <_IO_stdin_used+0x157>
  new_thread->context.rip = (uint64_t) fn;
     a43:	48 8d 1d 36 03 00 00 	lea    0x336(%rip),%rbx        # d80 <pfc>
     a4a:	e8 d1 fe ff ff       	callq  920 <puts@plt>
  #else
    printf("REP_NOPS not enabled\n");
  #endif


  pthread_barrier_init (&barrier, NULL, 2);
     a4f:	48 8d 3d ca 28 20 00 	lea    0x2028ca(%rip),%rdi        # 203320 <barrier>
     a56:	ba 02 00 00 00       	mov    $0x2,%edx
     a5b:	31 f6                	xor    %esi,%esi
     a5d:	e8 fe fe ff ff       	callq  960 <pthread_barrier_init@plt>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a62:	be 80 10 00 00       	mov    $0x1080,%esi
     a67:	bf 40 00 00 00       	mov    $0x40,%edi

  threadCount = 2;
     a6c:	c7 05 92 28 20 00 02 	movl   $0x2,0x202892(%rip)        # 203308 <threadCount>
     a73:	00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a76:	e8 45 ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     a7b:	c6 05 fe 29 20 00 00 	movb   $0x0,0x2029fe(%rip)        # 203480 <UserThreadingVec+0x100>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a82:	be 80 10 00 00       	mov    $0x1080,%esi
     a87:	bf 40 00 00 00       	mov    $0x40,%edi
    _uth->buf->context.mxcsr = 11;
     a8c:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
     a93:	0b 00 00 00 
    _uth->id = _id;
     a97:	c7 05 1f 2a 20 00 00 	movl   $0x0,0x202a1f(%rip)        # 2034c0 <UserThreadingVec+0x140>
     a9e:	00 00 00 
    _uth->expVal = 1;
     aa1:	c6 05 58 2a 20 00 01 	movb   $0x1,0x202a58(%rip)        # 203500 <UserThreadingVec+0x180>
    _uth->lastVal = !_id;
     aa8:	c6 05 91 2a 20 00 01 	movb   $0x1,0x202a91(%rip)        # 203540 <UserThreadingVec+0x1c0>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     aaf:	e8 0c ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     ab4:	c6 05 c5 2b 20 00 00 	movb   $0x0,0x202bc5(%rip)        # 203680 <UserThreadingVec+0x300>
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     abb:	be 80 10 00 00       	mov    $0x1080,%esi
     ac0:	bf 80 00 00 00       	mov    $0x80,%edi
    _uth->buf->context.mxcsr = 11;
     ac5:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
     acc:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     ad0:	48 89 05 a9 2a 20 00 	mov    %rax,0x202aa9(%rip)        # 203580 <UserThreadingVec+0x200>
    _uth->id = _id;
     ad7:	c7 05 df 2b 20 00 01 	movl   $0x1,0x202bdf(%rip)        # 2036c0 <UserThreadingVec+0x340>
     ade:	00 00 00 
    _uth->expVal = 1;
     ae1:	c6 05 18 2c 20 00 01 	movb   $0x1,0x202c18(%rip)        # 203700 <UserThreadingVec+0x380>
    _uth->lastVal = !_id;
     ae8:	c6 05 51 2c 20 00 00 	movb   $0x0,0x202c51(%rip)        # 203740 <UserThreadingVec+0x3c0>
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     aef:	e8 cc fe ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     af4:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
     afb:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     b02:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
     b06:	48 89 98 08 10 00 00 	mov    %rbx,0x1008(%rax)
  new_thread->context.mxcsr = 1;
     b0d:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
     b14:	01 00 00 00 
  _uth->buf = new_thread; 
     b18:	48 89 05 61 28 20 00 	mov    %rax,0x202861(%rip)        # 203380 <UserThreadingVec>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     b1f:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
/* rdtsc */
extern __inline unsigned long long
__attribute__((__gnu_inline__, __always_inline__, __artificial__))
__rdtsc (void)
{
  return __builtin_ia32_rdtsc ();
     b26:	0f 31                	rdtsc  
     b28:	48 8d 35 1d 12 00 00 	lea    0x121d(%rip),%rsi        # 1d4c <_IO_stdin_used+0x16c>
     b2f:	bf 01 00 00 00       	mov    $0x1,%edi
     b34:	48 c1 e2 20          	shl    $0x20,%rdx
     b38:	48 09 d0             	or     %rdx,%rax
     b3b:	48 89 c2             	mov    %rax,%rdx
     b3e:	31 c0                	xor    %eax,%eax
     b40:	e8 2b fe ff ff       	callq  970 <__printf_chk@plt>
  uint64_t timeCounter_start = __rdtsc();
  printf("My start: %lu \n", timeCounter_start);

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b45:	48 8d 15 d4 07 00 00 	lea    0x7d4(%rip),%rdx        # 1320 <mpthread1>
     b4c:	48 8d 3d 45 2e 20 00 	lea    0x202e45(%rip),%rdi        # 203998 <threadId_1>
     b53:	31 c9                	xor    %ecx,%ecx
     b55:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[0] = false;
     b57:	c6 05 4e 2e 20 00 00 	movb   $0x0,0x202e4e(%rip)        # 2039ac <OSThreadAvailable>
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b5e:	e8 ad fd ff ff       	callq  910 <pthread_create@plt>
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b63:	48 8d 15 16 0a 00 00 	lea    0xa16(%rip),%rdx        # 1580 <mpthread2>
     b6a:	48 8d 3d 8f 27 20 00 	lea    0x20278f(%rip),%rdi        # 203300 <threadId_2>
     b71:	b9 01 00 00 00       	mov    $0x1,%ecx
     b76:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[1] = false;
     b78:	c6 05 2e 2e 20 00 00 	movb   $0x0,0x202e2e(%rip)        # 2039ad <OSThreadAvailable+0x1>
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b7f:	e8 8c fd ff ff       	callq  910 <pthread_create@plt>

  pthread_join(threadId_1, NULL); 
     b84:	48 8b 3d 0d 2e 20 00 	mov    0x202e0d(%rip),%rdi        # 203998 <threadId_1>
     b8b:	31 f6                	xor    %esi,%esi
     b8d:	e8 fe fd ff ff       	callq  990 <pthread_join@plt>
  pthread_join(threadId_2, NULL);
     b92:	48 8b 3d 67 27 20 00 	mov    0x202767(%rip),%rdi        # 203300 <threadId_2>
     b99:	31 f6                	xor    %esi,%esi
     b9b:	e8 f0 fd ff ff       	callq  990 <pthread_join@plt>
     ba0:	0f 31                	rdtsc  
  uint64_t timeCounter_end = __rdtsc();
  //printf("Execution time per opertation: %lu clock cycles\n", 
  //  (timeCounter_end - timeCounter_start) / (10000000) );


  pthread_barrier_destroy(&barrier);
     ba2:	48 8d 3d 77 27 20 00 	lea    0x202777(%rip),%rdi        # 203320 <barrier>
     ba9:	e8 d2 fd ff ff       	callq  980 <pthread_barrier_destroy@plt>
     bae:	48 8b 15 f3 26 20 00 	mov    0x2026f3(%rip),%rdx        # 2032a8 <globalVariable>
     bb5:	48 8d 35 a0 11 00 00 	lea    0x11a0(%rip),%rsi        # 1d5c <_IO_stdin_used+0x17c>
     bbc:	bf 01 00 00 00       	mov    $0x1,%edi
     bc1:	31 c0                	xor    %eax,%eax
     bc3:	e8 a8 fd ff ff       	callq  970 <__printf_chk@plt>
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
     bc8:	48 8b 15 31 26 20 00 	mov    0x202631(%rip),%rdx        # 203200 <global_var1>
     bcf:	48 8d 35 9c 11 00 00 	lea    0x119c(%rip),%rsi        # 1d72 <_IO_stdin_used+0x192>
     bd6:	bf 01 00 00 00       	mov    $0x1,%edi
     bdb:	31 c0                	xor    %eax,%eax
     bdd:	e8 8e fd ff ff       	callq  970 <__printf_chk@plt>
  printf("global_var2: %lld \n", global_var2); 
     be2:	48 8b 15 97 25 20 00 	mov    0x202597(%rip),%rdx        # 203180 <global_var2>
     be9:	48 8d 35 95 11 00 00 	lea    0x1195(%rip),%rsi        # 1d85 <_IO_stdin_used+0x1a5>
     bf0:	bf 01 00 00 00       	mov    $0x1,%edi
     bf5:	31 c0                	xor    %eax,%eax
     bf7:	e8 74 fd ff ff       	callq  970 <__printf_chk@plt>
  //printf("Time from thead Counters");
  // smalller of start time and larger of end time
 
  uint64_t thread_starttime = 
  thread1_starttime < thread2_starttime ? thread1_starttime : thread2_starttime; 
  uint64_t thread_endtime = 
     bfc:	48 8b 15 b5 2d 20 00 	mov    0x202db5(%rip),%rdx        # 2039b8 <thread1_endtime>
     c03:	48 39 15 86 2d 20 00 	cmp    %rdx,0x202d86(%rip)        # 203990 <thread2_endtime>
  thread1_endtime > thread2_endtime ? thread1_endtime : thread2_endtime;

  printf("Execution time is %lu clock cycles\n",
     c0a:	48 b9 bd 42 7a e5 d5 	movabs $0xd6bf94d5e57a42bd,%rcx
     c11:	94 bf d6 
  uint64_t thread_endtime = 
     c14:	48 0f 43 15 74 2d 20 	cmovae 0x202d74(%rip),%rdx        # 203990 <thread2_endtime>
     c1b:	00 
  uint64_t thread_starttime = 
     c1c:	48 8b 05 65 2d 20 00 	mov    0x202d65(%rip),%rax        # 203988 <thread1_starttime>
     c23:	48 8d 35 16 10 00 00 	lea    0x1016(%rip),%rsi        # 1c40 <_IO_stdin_used+0x60>
     c2a:	48 39 05 7f 2d 20 00 	cmp    %rax,0x202d7f(%rip)        # 2039b0 <thread2_starttime>
     c31:	bf 01 00 00 00       	mov    $0x1,%edi
     c36:	48 0f 46 05 72 2d 20 	cmovbe 0x202d72(%rip),%rax        # 2039b0 <thread2_starttime>
     c3d:	00 
    (thread_endtime - thread_starttime) / (10000000) );
     c3e:	48 29 c2             	sub    %rax,%rdx
  printf("Execution time is %lu clock cycles\n",
     c41:	48 89 d0             	mov    %rdx,%rax
     c44:	48 f7 e1             	mul    %rcx
     c47:	31 c0                	xor    %eax,%eax
     c49:	48 c1 ea 17          	shr    $0x17,%rdx
     c4d:	e8 1e fd ff ff       	callq  970 <__printf_chk@plt>

}
     c52:	31 c0                	xor    %eax,%eax
     c54:	5b                   	pop    %rbx
     c55:	c3                   	retq   
     c56:	48 8d 3d b3 0f 00 00 	lea    0xfb3(%rip),%rdi        # 1c10 <_IO_stdin_used+0x30>
     c5d:	e8 be fc ff ff       	callq  920 <puts@plt>
    exit(1);
     c62:	bf 01 00 00 00       	mov    $0x1,%edi
     c67:	e8 44 fd ff ff       	callq  9b0 <exit@plt>
     c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000c70 <_start>:
     c70:	31 ed                	xor    %ebp,%ebp
     c72:	49 89 d1             	mov    %rdx,%r9
     c75:	5e                   	pop    %rsi
     c76:	48 89 e2             	mov    %rsp,%rdx
     c79:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     c7d:	50                   	push   %rax
     c7e:	54                   	push   %rsp
     c7f:	4c 8d 05 4a 0f 00 00 	lea    0xf4a(%rip),%r8        # 1bd0 <__libc_csu_fini>
     c86:	48 8d 0d d3 0e 00 00 	lea    0xed3(%rip),%rcx        # 1b60 <__libc_csu_init>
     c8d:	48 8d 3d 5c fd ff ff 	lea    -0x2a4(%rip),%rdi        # 9f0 <main>
     c94:	ff 15 46 23 20 00    	callq  *0x202346(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
     c9a:	f4                   	hlt    
     c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ca0 <deregister_tm_clones>:
     ca0:	48 8d 3d 69 23 20 00 	lea    0x202369(%rip),%rdi        # 203010 <__TMC_END__>
     ca7:	55                   	push   %rbp
     ca8:	48 8d 05 61 23 20 00 	lea    0x202361(%rip),%rax        # 203010 <__TMC_END__>
     caf:	48 39 f8             	cmp    %rdi,%rax
     cb2:	48 89 e5             	mov    %rsp,%rbp
     cb5:	74 19                	je     cd0 <deregister_tm_clones+0x30>
     cb7:	48 8b 05 1a 23 20 00 	mov    0x20231a(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
     cbe:	48 85 c0             	test   %rax,%rax
     cc1:	74 0d                	je     cd0 <deregister_tm_clones+0x30>
     cc3:	5d                   	pop    %rbp
     cc4:	ff e0                	jmpq   *%rax
     cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     ccd:	00 00 00 
     cd0:	5d                   	pop    %rbp
     cd1:	c3                   	retq   
     cd2:	0f 1f 40 00          	nopl   0x0(%rax)
     cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     cdd:	00 00 00 

0000000000000ce0 <register_tm_clones>:
     ce0:	48 8d 3d 29 23 20 00 	lea    0x202329(%rip),%rdi        # 203010 <__TMC_END__>
     ce7:	48 8d 35 22 23 20 00 	lea    0x202322(%rip),%rsi        # 203010 <__TMC_END__>
     cee:	55                   	push   %rbp
     cef:	48 29 fe             	sub    %rdi,%rsi
     cf2:	48 89 e5             	mov    %rsp,%rbp
     cf5:	48 c1 fe 03          	sar    $0x3,%rsi
     cf9:	48 89 f0             	mov    %rsi,%rax
     cfc:	48 c1 e8 3f          	shr    $0x3f,%rax
     d00:	48 01 c6             	add    %rax,%rsi
     d03:	48 d1 fe             	sar    %rsi
     d06:	74 18                	je     d20 <register_tm_clones+0x40>
     d08:	48 8b 05 e1 22 20 00 	mov    0x2022e1(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
     d0f:	48 85 c0             	test   %rax,%rax
     d12:	74 0c                	je     d20 <register_tm_clones+0x40>
     d14:	5d                   	pop    %rbp
     d15:	ff e0                	jmpq   *%rax
     d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     d1e:	00 00 
     d20:	5d                   	pop    %rbp
     d21:	c3                   	retq   
     d22:	0f 1f 40 00          	nopl   0x0(%rax)
     d26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     d2d:	00 00 00 

0000000000000d30 <__do_global_dtors_aux>:
     d30:	80 3d 49 23 20 00 00 	cmpb   $0x0,0x202349(%rip)        # 203080 <completed.7698>
     d37:	75 2f                	jne    d68 <__do_global_dtors_aux+0x38>
     d39:	48 83 3d b7 22 20 00 	cmpq   $0x0,0x2022b7(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
     d40:	00 
     d41:	55                   	push   %rbp
     d42:	48 89 e5             	mov    %rsp,%rbp
     d45:	74 0c                	je     d53 <__do_global_dtors_aux+0x23>
     d47:	48 8b 3d ba 22 20 00 	mov    0x2022ba(%rip),%rdi        # 203008 <__dso_handle>
     d4e:	e8 8d fc ff ff       	callq  9e0 <__cxa_finalize@plt>
     d53:	e8 48 ff ff ff       	callq  ca0 <deregister_tm_clones>
     d58:	c6 05 21 23 20 00 01 	movb   $0x1,0x202321(%rip)        # 203080 <completed.7698>
     d5f:	5d                   	pop    %rbp
     d60:	c3                   	retq   
     d61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     d68:	f3 c3                	repz retq 
     d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d70 <frame_dummy>:
     d70:	55                   	push   %rbp
     d71:	48 89 e5             	mov    %rsp,%rbp
     d74:	5d                   	pop    %rbp
     d75:	e9 66 ff ff ff       	jmpq   ce0 <register_tm_clones>
     d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d80 <pfc>:
void pfc(){
     d80:	41 55                	push   %r13
     d82:	41 54                	push   %r12
     d84:	48 8d 35 5d 0e 00 00 	lea    0xe5d(%rip),%rsi        # 1be8 <_IO_stdin_used+0x8>
     d8b:	55                   	push   %rbp
     d8c:	53                   	push   %rbx
     d8d:	bf 01 00 00 00       	mov    $0x1,%edi
     d92:	31 c0                	xor    %eax,%eax
    int a16 = 15;
     d94:	bd 0f 00 00 00       	mov    $0xf,%ebp
     d99:	4c 8d 25 e0 25 20 00 	lea    0x2025e0(%rip),%r12        # 203380 <UserThreadingVec>
void pfc(){
     da0:	48 83 ec 08          	sub    $0x8,%rsp
    printf("parentId: %d --------------------\n", threadId);
     da4:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
     dab:	ff 
     dac:	4c 8d 2d b5 0e 00 00 	lea    0xeb5(%rip),%r13        # 1c68 <_IO_stdin_used+0x88>
     db3:	e8 b8 fb ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     db8:	48 8b 05 c1 25 20 00 	mov    0x2025c1(%rip),%rax        # 203380 <UserThreadingVec>
     dbf:	48 89 05 3a 28 20 00 	mov    %rax,0x20283a(%rip)        # 203600 <UserThreadingVec+0x280>
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;
     dc6:	48 8b 05 b3 27 20 00 	mov    0x2027b3(%rip),%rax        # 203580 <UserThreadingVec+0x200>
     dcd:	48 89 05 2c 26 20 00 	mov    %rax,0x20262c(%rip)        # 203400 <UserThreadingVec+0x80>
     dd4:	e9 30 02 00 00       	jmpq   1009 <target2359+0xc>
     dd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
          global_var1++;
     de0:	48 8b 05 19 24 20 00 	mov    0x202419(%rip),%rax        # 203200 <global_var1>
     de7:	48 83 c0 01          	add    $0x1,%rax
     deb:	48 89 05 0e 24 20 00 	mov    %rax,0x20240e(%rip)        # 203200 <global_var1>
        if (a1 != i || special_global)
     df2:	8b 05 a8 24 20 00    	mov    0x2024a8(%rip),%eax        # 2032a0 <special_global>
     df8:	85 c0                	test   %eax,%eax
     dfa:	0f 85 39 02 00 00    	jne    1039 <target2359+0x3c>
        if (a3 != i + 2 || special_global)
     e00:	8b 05 9a 24 20 00    	mov    0x20249a(%rip),%eax        # 2032a0 <special_global>
     e06:	85 c0                	test   %eax,%eax
     e08:	74 0c                	je     e16 <pfc+0x96>
     e0a:	48 8d 3d 5f 0e 00 00 	lea    0xe5f(%rip),%rdi        # 1c70 <_IO_stdin_used+0x90>
     e11:	e8 0a fb ff ff       	callq  920 <puts@plt>
        if (a4 != i + 3 || special_global)
     e16:	8b 05 84 24 20 00    	mov    0x202484(%rip),%eax        # 2032a0 <special_global>
     e1c:	85 c0                	test   %eax,%eax
     e1e:	74 0c                	je     e2c <pfc+0xac>
     e20:	48 8d 3d 4d 0e 00 00 	lea    0xe4d(%rip),%rdi        # 1c74 <_IO_stdin_used+0x94>
     e27:	e8 f4 fa ff ff       	callq  920 <puts@plt>
        if (a5 != i + 4 || special_global)
     e2c:	8b 05 6e 24 20 00    	mov    0x20246e(%rip),%eax        # 2032a0 <special_global>
     e32:	85 c0                	test   %eax,%eax
     e34:	74 0c                	je     e42 <pfc+0xc2>
     e36:	48 8d 3d 3b 0e 00 00 	lea    0xe3b(%rip),%rdi        # 1c78 <_IO_stdin_used+0x98>
     e3d:	e8 de fa ff ff       	callq  920 <puts@plt>
        if (a6 != i + 5 || special_global)
     e42:	8b 05 58 24 20 00    	mov    0x202458(%rip),%eax        # 2032a0 <special_global>
     e48:	85 c0                	test   %eax,%eax
     e4a:	74 0c                	je     e58 <pfc+0xd8>
     e4c:	48 8d 3d 29 0e 00 00 	lea    0xe29(%rip),%rdi        # 1c7c <_IO_stdin_used+0x9c>
     e53:	e8 c8 fa ff ff       	callq  920 <puts@plt>
        if (a7 != i + 6 || special_global)
     e58:	8b 1d 42 24 20 00    	mov    0x202442(%rip),%ebx        # 2032a0 <special_global>
     e5e:	85 db                	test   %ebx,%ebx
     e60:	74 0c                	je     e6e <pfc+0xee>
     e62:	48 8d 3d 17 0e 00 00 	lea    0xe17(%rip),%rdi        # 1c80 <_IO_stdin_used+0xa0>
     e69:	e8 b2 fa ff ff       	callq  920 <puts@plt>
        if (a8 != i + 7 || special_global)
     e6e:	44 8b 1d 2b 24 20 00 	mov    0x20242b(%rip),%r11d        # 2032a0 <special_global>
     e75:	45 85 db             	test   %r11d,%r11d
     e78:	74 0c                	je     e86 <pfc+0x106>
     e7a:	48 8d 3d 03 0e 00 00 	lea    0xe03(%rip),%rdi        # 1c84 <_IO_stdin_used+0xa4>
     e81:	e8 9a fa ff ff       	callq  920 <puts@plt>
        if (a9 != i + 8 || special_global)
     e86:	44 8b 15 13 24 20 00 	mov    0x202413(%rip),%r10d        # 2032a0 <special_global>
     e8d:	45 85 d2             	test   %r10d,%r10d
     e90:	74 24                	je     eb6 <pfc+0x136>
     e92:	48 8d 3d ef 0d 00 00 	lea    0xdef(%rip),%rdi        # 1c88 <_IO_stdin_used+0xa8>
     e99:	e8 82 fa ff ff       	callq  920 <puts@plt>
        if (a10 != i + 9 || special_global)
     e9e:	44 8b 0d fb 23 20 00 	mov    0x2023fb(%rip),%r9d        # 2032a0 <special_global>
     ea5:	45 85 c9             	test   %r9d,%r9d
     ea8:	74 0c                	je     eb6 <pfc+0x136>
     eaa:	48 8d 3d db 0d 00 00 	lea    0xddb(%rip),%rdi        # 1c8c <_IO_stdin_used+0xac>
     eb1:	e8 6a fa ff ff       	callq  920 <puts@plt>
        if (a11 != i + 10 || special_global)
     eb6:	44 8b 05 e3 23 20 00 	mov    0x2023e3(%rip),%r8d        # 2032a0 <special_global>
     ebd:	45 85 c0             	test   %r8d,%r8d
     ec0:	74 22                	je     ee4 <pfc+0x164>
     ec2:	48 8d 3d c8 0d 00 00 	lea    0xdc8(%rip),%rdi        # 1c91 <_IO_stdin_used+0xb1>
     ec9:	e8 52 fa ff ff       	callq  920 <puts@plt>
        if (a12 != i + 11 || special_global)
     ece:	8b 3d cc 23 20 00    	mov    0x2023cc(%rip),%edi        # 2032a0 <special_global>
     ed4:	85 ff                	test   %edi,%edi
     ed6:	74 0c                	je     ee4 <pfc+0x164>
     ed8:	48 8d 3d b7 0d 00 00 	lea    0xdb7(%rip),%rdi        # 1c96 <_IO_stdin_used+0xb6>
     edf:	e8 3c fa ff ff       	callq  920 <puts@plt>
        if (a13 != i + 12 || special_global)
     ee4:	8b 35 b6 23 20 00    	mov    0x2023b6(%rip),%esi        # 2032a0 <special_global>
     eea:	85 f6                	test   %esi,%esi
     eec:	74 22                	je     f10 <pfc+0x190>
     eee:	48 8d 3d a6 0d 00 00 	lea    0xda6(%rip),%rdi        # 1c9b <_IO_stdin_used+0xbb>
     ef5:	e8 26 fa ff ff       	callq  920 <puts@plt>
        if (a14 != i + 13 || special_global)
     efa:	8b 0d a0 23 20 00    	mov    0x2023a0(%rip),%ecx        # 2032a0 <special_global>
     f00:	85 c9                	test   %ecx,%ecx
     f02:	74 0c                	je     f10 <pfc+0x190>
     f04:	48 8d 3d 95 0d 00 00 	lea    0xd95(%rip),%rdi        # 1ca0 <_IO_stdin_used+0xc0>
     f0b:	e8 10 fa ff ff       	callq  920 <puts@plt>
        if (a15 != i + 14 || special_global)
     f10:	8b 15 8a 23 20 00    	mov    0x20238a(%rip),%edx        # 2032a0 <special_global>
     f16:	85 d2                	test   %edx,%edx
     f18:	74 22                	je     f3c <pfc+0x1bc>
     f1a:	48 8d 3d 84 0d 00 00 	lea    0xd84(%rip),%rdi        # 1ca5 <_IO_stdin_used+0xc5>
     f21:	e8 fa f9 ff ff       	callq  920 <puts@plt>
        if (a16 != i + 15 || special_global)
     f26:	8b 05 74 23 20 00    	mov    0x202374(%rip),%eax        # 2032a0 <special_global>
     f2c:	85 c0                	test   %eax,%eax
     f2e:	74 0c                	je     f3c <pfc+0x1bc>
     f30:	48 8d 3d 73 0d 00 00 	lea    0xd73(%rip),%rdi        # 1caa <_IO_stdin_used+0xca>
     f37:	e8 e4 f9 ff ff       	callq  920 <puts@plt>
      Yield(&UserThreadingVec[threadId]);
     f3c:	64 48 63 14 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rdx
     f43:	ff ff 
        a16++;
     f45:	83 c5 01             	add    $0x1,%ebp
  Context *s = &(_uth->sched_thread->context);
     f48:	48 c1 e2 09          	shl    $0x9,%rdx
     f4c:	4c 01 e2             	add    %r12,%rdx
     f4f:	48 8b 82 c0 00 00 00 	mov    0xc0(%rdx),%rax
     f56:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
     f5d:	48 8b 82 80 00 00 00 	mov    0x80(%rdx),%rax
     f64:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
     f6a:	80 ba c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdx)
     f71:	0f 85 e9 00 00 00    	jne    1060 <target2359+0x63>
    _uth->lastVal = !_uth->lastVal;
     f77:	c6 82 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdx)
    __asm__ __volatile__(
     f7e:	48 89 20             	mov    %rsp,(%rax)
     f81:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # ffd <target2359>
     f88:	48 89 48 08          	mov    %rcx,0x8(%rax)
     f8c:	48 89 50 10          	mov    %rdx,0x10(%rax)
     f90:	4c 89 40 18          	mov    %r8,0x18(%rax)
     f94:	4c 89 48 20          	mov    %r9,0x20(%rax)
     f98:	4c 89 50 28          	mov    %r10,0x28(%rax)
     f9c:	4c 89 58 30          	mov    %r11,0x30(%rax)
     fa0:	4c 89 60 38          	mov    %r12,0x38(%rax)
     fa4:	4c 89 68 40          	mov    %r13,0x40(%rax)
     fa8:	4c 89 70 48          	mov    %r14,0x48(%rax)
     fac:	4c 89 78 50          	mov    %r15,0x50(%rax)
     fb0:	48 89 68 58          	mov    %rbp,0x58(%rax)
     fb4:	48 89 78 60          	mov    %rdi,0x60(%rax)
     fb8:	48 89 70 68          	mov    %rsi,0x68(%rax)
     fbc:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
     fc3:	00 
     fc4:	48 8b 23             	mov    (%rbx),%rsp
     fc7:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     fcb:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     fcf:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     fd3:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     fd7:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     fdb:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     fdf:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     fe3:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     fe7:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     feb:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     fef:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
     ff3:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
     ff7:	48 8b 73 68          	mov    0x68(%rbx),%rsi
     ffb:	ff e1                	jmpq   *%rcx

0000000000000ffd <target2359>:
    for (int i=0; i < 10000000; i++){
     ffd:	81 fd 8f 96 98 00    	cmp    $0x98968f,%ebp
    1003:	0f 84 e9 00 00 00    	je     10f2 <target2480+0xc>
        if (threadId == 0)
    1009:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1010:	ff 
    1011:	85 c0                	test   %eax,%eax
    1013:	0f 84 c7 fd ff ff    	je     de0 <pfc+0x60>
          global_var2++;
    1019:	48 8b 05 60 21 20 00 	mov    0x202160(%rip),%rax        # 203180 <global_var2>
    1020:	48 83 c0 01          	add    $0x1,%rax
    1024:	48 89 05 55 21 20 00 	mov    %rax,0x202155(%rip)        # 203180 <global_var2>
        if (a1 != i || special_global)
    102b:	8b 05 6f 22 20 00    	mov    0x20226f(%rip),%eax        # 2032a0 <special_global>
    1031:	85 c0                	test   %eax,%eax
    1033:	0f 84 c7 fd ff ff    	je     e00 <pfc+0x80>
    1039:	4c 89 ef             	mov    %r13,%rdi
    103c:	e8 df f8 ff ff       	callq  920 <puts@plt>
        if (a2 != i + 1 || special_global)
    1041:	8b 05 59 22 20 00    	mov    0x202259(%rip),%eax        # 2032a0 <special_global>
    1047:	85 c0                	test   %eax,%eax
    1049:	0f 84 b1 fd ff ff    	je     e00 <pfc+0x80>
    104f:	48 8d 3d 16 0c 00 00 	lea    0xc16(%rip),%rdi        # 1c6c <_IO_stdin_used+0x8c>
    1056:	e8 c5 f8 ff ff       	callq  920 <puts@plt>
    105b:	e9 a0 fd ff ff       	jmpq   e00 <pfc+0x80>
      _uth->lastVal = !_uth->lastVal;
    1060:	c6 82 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdx)
          __asm__ __volatile__(
    1067:	48 89 20             	mov    %rsp,(%rax)
    106a:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 10e6 <target2480>
    1071:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1075:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1079:	4c 89 40 18          	mov    %r8,0x18(%rax)
    107d:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1081:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1085:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1089:	4c 89 60 38          	mov    %r12,0x38(%rax)
    108d:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1091:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1095:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1099:	48 89 68 58          	mov    %rbp,0x58(%rax)
    109d:	48 89 78 60          	mov    %rdi,0x60(%rax)
    10a1:	48 89 70 68          	mov    %rsi,0x68(%rax)
    10a5:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    10ac:	00 
    10ad:	48 8b 23             	mov    (%rbx),%rsp
    10b0:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    10b4:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    10b8:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    10bc:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    10c0:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    10c4:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    10c8:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    10cc:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    10d0:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    10d4:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    10d8:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    10dc:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    10e0:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    10e4:	ff e1                	jmpq   *%rcx

00000000000010e6 <target2480>:
    for (int i=0; i < 10000000; i++){
    10e6:	81 fd 8f 96 98 00    	cmp    $0x98968f,%ebp
    10ec:	0f 85 17 ff ff ff    	jne    1009 <target2359+0xc>
    10f2:	48 8d 3d b6 0b 00 00 	lea    0xbb6(%rip),%rdi        # 1caf <_IO_stdin_used+0xcf>
    10f9:	e8 22 f8 ff ff       	callq  920 <puts@plt>
    10fe:	48 8d 35 b4 0b 00 00 	lea    0xbb4(%rip),%rsi        # 1cb9 <_IO_stdin_used+0xd9>
    1105:	31 d2                	xor    %edx,%edx
    1107:	bf 01 00 00 00       	mov    $0x1,%edi
    110c:	31 c0                	xor    %eax,%eax
    110e:	e8 5d f8 ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = 0;
    1113:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    111a:	ff 
    111b:	48 8d 35 a8 0b 00 00 	lea    0xba8(%rip),%rsi        # 1cca <_IO_stdin_used+0xea>
    1122:	bf 01 00 00 00       	mov    $0x1,%edi
    1127:	83 c0 01             	add    $0x1,%eax
    112a:	89 c2                	mov    %eax,%edx
    112c:	c1 ea 1f             	shr    $0x1f,%edx
    112f:	01 d0                	add    %edx,%eax
    1131:	83 e0 01             	and    $0x1,%eax
    1134:	29 d0                	sub    %edx,%eax
    1136:	48 98                	cltq   
    1138:	48 c1 e0 09          	shl    $0x9,%rax
    113c:	49 8b 04 04          	mov    (%r12,%rax,1),%rax
    1140:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1147:	00 00 00 00 
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;
    114b:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1152:	ff 
    1153:	83 c0 01             	add    $0x1,%eax
    1156:	89 c2                	mov    %eax,%edx
    1158:	c1 ea 1f             	shr    $0x1f,%edx
    115b:	01 d0                	add    %edx,%eax
    115d:	83 e0 01             	and    $0x1,%eax
    1160:	29 d0                	sub    %edx,%eax
    1162:	48 98                	cltq   
    1164:	48 c1 e0 09          	shl    $0x9,%rax
    1168:	4c 01 e0             	add    %r12,%rax
    116b:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    UserThreadingVec[threadId].buf->context.mxcsr = 0;
    1172:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1179:	ff ff 
    117b:	48 c1 e0 09          	shl    $0x9,%rax
    117f:	49 8b 04 04          	mov    (%r12,%rax,1),%rax
    1183:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    118a:	00 00 00 00 
    UserThreadingVec[threadId].sp_exit_check = true;
    118e:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1195:	ff ff 
    1197:	48 c1 e0 09          	shl    $0x9,%rax
    119b:	4c 01 e0             	add    %r12,%rax
    119e:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    printf("I am done %d\n", threadId);
    11a5:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    11ac:	ff 
    11ad:	31 c0                	xor    %eax,%eax
    11af:	e8 bc f7 ff ff       	callq  970 <__printf_chk@plt>
    Yield(&UserThreadingVec[threadId]);
    11b4:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    11bb:	ff ff 
  Context *s = &(_uth->sched_thread->context);
    11bd:	48 c1 e0 09          	shl    $0x9,%rax
    11c1:	49 01 c4             	add    %rax,%r12
    11c4:	49 8b 84 24 c0 00 00 	mov    0xc0(%r12),%rax
    11cb:	00 
    11cc:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    11d3:	49 8b 84 24 80 00 00 	mov    0x80(%r12),%rax
    11da:	00 
    11db:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    11e1:	41 80 bc 24 c0 01 00 	cmpb   $0x0,0x1c0(%r12)
    11e8:	00 00 
    11ea:	0f 84 9e 00 00 00    	je     128e <target2612+0x16>
      _uth->lastVal = !_uth->lastVal;
    11f0:	41 c6 84 24 c0 01 00 	movb   $0x0,0x1c0(%r12)
    11f7:	00 00 
          __asm__ __volatile__(
    11f9:	48 89 20             	mov    %rsp,(%rax)
    11fc:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1278 <target2612>
    1203:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1207:	48 89 50 10          	mov    %rdx,0x10(%rax)
    120b:	4c 89 40 18          	mov    %r8,0x18(%rax)
    120f:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1213:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1217:	4c 89 58 30          	mov    %r11,0x30(%rax)
    121b:	4c 89 60 38          	mov    %r12,0x38(%rax)
    121f:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1223:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1227:	4c 89 78 50          	mov    %r15,0x50(%rax)
    122b:	48 89 68 58          	mov    %rbp,0x58(%rax)
    122f:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1233:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1237:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    123e:	00 
    123f:	48 8b 23             	mov    (%rbx),%rsp
    1242:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1246:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    124a:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    124e:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1252:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1256:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    125a:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    125e:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1262:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1266:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    126a:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    126e:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1272:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1276:	ff e1                	jmpq   *%rcx

0000000000001278 <target2612>:
}
    1278:	48 83 c4 08          	add    $0x8,%rsp
    127c:	48 8d 3d 55 0a 00 00 	lea    0xa55(%rip),%rdi        # 1cd8 <_IO_stdin_used+0xf8>
    1283:	5b                   	pop    %rbx
    1284:	5d                   	pop    %rbp
    1285:	41 5c                	pop    %r12
    1287:	41 5d                	pop    %r13
    1289:	e9 92 f6 ff ff       	jmpq   920 <puts@plt>
    _uth->lastVal = !_uth->lastVal;
    128e:	41 c6 84 24 c0 01 00 	movb   $0x1,0x1c0(%r12)
    1295:	00 01 
    __asm__ __volatile__(
    1297:	48 89 20             	mov    %rsp,(%rax)
    129a:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1316 <target2685>
    12a1:	48 89 48 08          	mov    %rcx,0x8(%rax)
    12a5:	48 89 50 10          	mov    %rdx,0x10(%rax)
    12a9:	4c 89 40 18          	mov    %r8,0x18(%rax)
    12ad:	4c 89 48 20          	mov    %r9,0x20(%rax)
    12b1:	4c 89 50 28          	mov    %r10,0x28(%rax)
    12b5:	4c 89 58 30          	mov    %r11,0x30(%rax)
    12b9:	4c 89 60 38          	mov    %r12,0x38(%rax)
    12bd:	4c 89 68 40          	mov    %r13,0x40(%rax)
    12c1:	4c 89 70 48          	mov    %r14,0x48(%rax)
    12c5:	4c 89 78 50          	mov    %r15,0x50(%rax)
    12c9:	48 89 68 58          	mov    %rbp,0x58(%rax)
    12cd:	48 89 78 60          	mov    %rdi,0x60(%rax)
    12d1:	48 89 70 68          	mov    %rsi,0x68(%rax)
    12d5:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    12dc:	00 
    12dd:	48 8b 23             	mov    (%rbx),%rsp
    12e0:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    12e4:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    12e8:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    12ec:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    12f0:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    12f4:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    12f8:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    12fc:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1300:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1304:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1308:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    130c:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1310:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1314:	ff e1                	jmpq   *%rcx

0000000000001316 <target2685>:
    1316:	e9 5d ff ff ff       	jmpq   1278 <target2612>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <mpthread1>:
void *mpthread1(void *arg){
    1320:	41 56                	push   %r14
    1322:	41 55                	push   %r13
    CPU_ZERO(&cpuset);
    1324:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread1(void *arg){
    1329:	41 54                	push   %r12
    132b:	55                   	push   %rbp
    132c:	53                   	push   %rbx
    132d:	48 89 fb             	mov    %rdi,%rbx
    1330:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1337:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    133e:	00 00 
    1340:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1347:	00 
    1348:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset);
    134a:	48 89 e2             	mov    %rsp,%rdx
    134d:	48 89 d7             	mov    %rdx,%rdi
    1350:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_1, &cpuset);
    1353:	48 63 05 26 26 20 00 	movslq 0x202626(%rip),%rax        # 203980 <coreId_1>
    135a:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1360:	77 13                	ja     1375 <mpthread1+0x55>
    1362:	48 89 c1             	mov    %rax,%rcx
    1365:	be 01 00 00 00       	mov    $0x1,%esi
    136a:	48 c1 e8 06          	shr    $0x6,%rax
    136e:	48 d3 e6             	shl    %cl,%rsi
    1371:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    1375:	48 8b 3d 1c 26 20 00 	mov    0x20261c(%rip),%rdi        # 203998 <threadId_1>
    137c:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    1381:	4c 8d 25 24 26 20 00 	lea    0x202624(%rip),%r12        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    1388:	e8 b3 f5 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    138d:	e8 0e f6 ff ff       	callq  9a0 <sched_getcpu@plt>
    1392:	48 8d 35 45 09 00 00 	lea    0x945(%rip),%rsi        # 1cde <_IO_stdin_used+0xfe>
    1399:	89 c2                	mov    %eax,%edx
    139b:	bf 01 00 00 00       	mov    $0x1,%edi
    13a0:	31 c0                	xor    %eax,%eax
    13a2:	e8 c9 f5 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    13a7:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    13ae:	ff 
    printf("ThreadNum: %d\n", threadId);
    13af:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    13b6:	ff 
    13b7:	48 8d 35 38 09 00 00 	lea    0x938(%rip),%rsi        # 1cf6 <_IO_stdin_used+0x116>
    13be:	bf 01 00 00 00       	mov    $0x1,%edi
    13c3:	31 c0                	xor    %eax,%eax
    13c5:	e8 a6 f5 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    13ca:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    13d1:	ff ff 
    pthread_barrier_wait(&barrier);
    13d3:	48 8d 3d 46 1f 20 00 	lea    0x201f46(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    13da:	41 c6 04 04 01       	movb   $0x1,(%r12,%rax,1)
    pthread_barrier_wait(&barrier);
    13df:	e8 ec f5 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    13e4:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    13e6:	64 4c 63 2c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r13
    13ed:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    13ef:	48 8d 2d 8a 1f 20 00 	lea    0x201f8a(%rip),%rbp        # 203380 <UserThreadingVec>
    13f6:	48 8d 35 08 09 00 00 	lea    0x908(%rip),%rsi        # 1d05 <_IO_stdin_used+0x125>
    13fd:	48 c1 e2 20          	shl    $0x20,%rdx
    1401:	bf 01 00 00 00       	mov    $0x1,%edi
    1406:	48 09 d0             	or     %rdx,%rax
    thread1_starttime = __rdtsc();
    1409:	48 89 05 78 25 20 00 	mov    %rax,0x202578(%rip)        # 203988 <thread1_starttime>
    1410:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1412:	4d 89 ee             	mov    %r13,%r14
    1415:	49 c1 e6 09          	shl    $0x9,%r14
    1419:	49 01 ee             	add    %rbp,%r14
    141c:	41 8b 96 40 01 00 00 	mov    0x140(%r14),%edx
    1423:	e8 48 f5 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1428:	be 80 10 00 00       	mov    $0x1080,%esi
    142d:	bf 40 00 00 00       	mov    $0x40,%edi
    1432:	e8 89 f5 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    1437:	49 8b 0e             	mov    (%r14),%rcx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    143a:	49 89 86 c0 00 00 00 	mov    %rax,0xc0(%r14)
  _thread->context.mxcsr = 0;
    1441:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1448:	00 00 00 00 
    144c:	0f 1f 40 00          	nopl   0x0(%rax)
  while (_uth->buf->context.mxcsr == 11);
    1450:	48 8b 91 70 10 00 00 	mov    0x1070(%rcx),%rdx
    1457:	48 83 fa 0b          	cmp    $0xb,%rdx
    145b:	74 f3                	je     1450 <mpthread1+0x130>
  while (!_uth->sp_exit_check){
    145d:	49 c1 e5 09          	shl    $0x9,%r13
  Context *s = &(_uth->sched_thread->context);
    1461:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf->context);
    1468:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
  while (!_uth->sp_exit_check){
    146f:	4a 8d 54 2d 00       	lea    0x0(%rbp,%r13,1),%rdx
    1474:	eb 23                	jmp    1499 <mpthread1+0x179>
    1476:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    147d:	00 00 00 
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1480:	48 8b 0a             	mov    (%rdx),%rcx
    1483:	0f b6 b2 80 01 00 00 	movzbl 0x180(%rdx),%esi
    148a:	48 8b b9 70 10 00 00 	mov    0x1070(%rcx),%rdi
    1491:	48 89 f1             	mov    %rsi,%rcx
    1494:	48 39 f7             	cmp    %rsi,%rdi
    1497:	74 57                	je     14f0 <mpthread1+0x1d0>
  while (!_uth->sp_exit_check){
    1499:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
    14a0:	84 c9                	test   %cl,%cl
    14a2:	74 dc                	je     1480 <mpthread1+0x160>
    OSThreadAvailable[threadId] = false;
    14a4:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    14ab:	ff ff 
    14ad:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
    14b2:	0f 31                	rdtsc  
    14b4:	48 c1 e2 20          	shl    $0x20,%rdx
    14b8:	48 09 d0             	or     %rdx,%rax
}
    14bb:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    14c2:	00 
    14c3:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    14ca:	00 00 
    thread1_endtime = __rdtsc();
    14cc:	48 89 05 e5 24 20 00 	mov    %rax,0x2024e5(%rip)        # 2039b8 <thread1_endtime>
}
    14d3:	0f 85 9c 00 00 00    	jne    1575 <target925+0x5>
    14d9:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    14e0:	5b                   	pop    %rbx
    14e1:	5d                   	pop    %rbp
    14e2:	41 5c                	pop    %r12
    14e4:	41 5d                	pop    %r13
    14e6:	41 5e                	pop    %r14
    14e8:	c3                   	retq   
    14e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
          _uth->expVal = !_uth->expVal;
    14f0:	83 f1 01             	xor    $0x1,%ecx
    14f3:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    14f9:	48 89 23             	mov    %rsp,(%rbx)
    14fc:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1570 <target925>
    1503:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    1507:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    150b:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    150f:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1513:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    1517:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    151b:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    151f:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1523:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    1527:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    152b:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    152f:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1533:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    1537:	48 8b 20             	mov    (%rax),%rsp
    153a:	4c 8b 68 40          	mov    0x40(%rax),%r13
    153e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1542:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1546:	4c 8b 40 18          	mov    0x18(%rax),%r8
    154a:	4c 8b 48 20          	mov    0x20(%rax),%r9
    154e:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1552:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1556:	4c 8b 60 38          	mov    0x38(%rax),%r12
    155a:	4c 8b 70 48          	mov    0x48(%rax),%r14
    155e:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1562:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1566:	48 8b 78 60          	mov    0x60(%rax),%rdi
    156a:	48 8b 70 68          	mov    0x68(%rax),%rsi
    156e:	ff e1                	jmpq   *%rcx

0000000000001570 <target925>:
    1570:	e9 24 ff ff ff       	jmpq   1499 <mpthread1+0x179>
}
    1575:	e8 b6 f3 ff ff       	callq  930 <__stack_chk_fail@plt>
    157a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001580 <mpthread2>:
void *mpthread2(void *arg){
    1580:	41 56                	push   %r14
    1582:	41 55                	push   %r13
    CPU_ZERO(&cpuset2);
    1584:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread2(void *arg){
    1589:	41 54                	push   %r12
    158b:	55                   	push   %rbp
    158c:	53                   	push   %rbx
    158d:	48 89 fb             	mov    %rdi,%rbx
    1590:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1597:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    159e:	00 00 
    15a0:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    15a7:	00 
    15a8:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset2);
    15aa:	48 89 e2             	mov    %rsp,%rdx
    15ad:	48 89 d7             	mov    %rdx,%rdi
    15b0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_2, &cpuset2);
    15b3:	48 63 05 ee 23 20 00 	movslq 0x2023ee(%rip),%rax        # 2039a8 <coreId_2>
    15ba:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    15c0:	77 13                	ja     15d5 <mpthread2+0x55>
    15c2:	48 89 c1             	mov    %rax,%rcx
    15c5:	be 01 00 00 00       	mov    $0x1,%esi
    15ca:	48 c1 e8 06          	shr    $0x6,%rax
    15ce:	48 d3 e6             	shl    %cl,%rsi
    15d1:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    15d5:	48 8b 3d 24 1d 20 00 	mov    0x201d24(%rip),%rdi        # 203300 <threadId_2>
    15dc:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    15e1:	4c 8d 25 c4 23 20 00 	lea    0x2023c4(%rip),%r12        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    15e8:	e8 53 f3 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    15ed:	e8 ae f3 ff ff       	callq  9a0 <sched_getcpu@plt>
    15f2:	48 8d 35 e5 06 00 00 	lea    0x6e5(%rip),%rsi        # 1cde <_IO_stdin_used+0xfe>
    15f9:	89 c2                	mov    %eax,%edx
    15fb:	bf 01 00 00 00       	mov    $0x1,%edi
    1600:	31 c0                	xor    %eax,%eax
    1602:	e8 69 f3 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    1607:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    160e:	ff 
    printf("ThreadNum: %d\n", threadId);
    160f:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    1616:	ff 
    1617:	48 8d 35 d8 06 00 00 	lea    0x6d8(%rip),%rsi        # 1cf6 <_IO_stdin_used+0x116>
    161e:	bf 01 00 00 00       	mov    $0x1,%edi
    1623:	31 c0                	xor    %eax,%eax
    1625:	e8 46 f3 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    162a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1631:	ff ff 
    pthread_barrier_wait(&barrier);
    1633:	48 8d 3d e6 1c 20 00 	lea    0x201ce6(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    163a:	41 c6 04 04 01       	movb   $0x1,(%r12,%rax,1)
    pthread_barrier_wait(&barrier);
    163f:	e8 8c f3 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    1644:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    1646:	64 4c 63 2c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r13
    164d:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    164f:	48 8d 2d 2a 1d 20 00 	lea    0x201d2a(%rip),%rbp        # 203380 <UserThreadingVec>
    1656:	48 8d 35 a8 06 00 00 	lea    0x6a8(%rip),%rsi        # 1d05 <_IO_stdin_used+0x125>
    165d:	48 c1 e2 20          	shl    $0x20,%rdx
    1661:	bf 01 00 00 00       	mov    $0x1,%edi
    1666:	48 09 d0             	or     %rdx,%rax
    thread2_starttime = __rdtsc();
    1669:	48 89 05 40 23 20 00 	mov    %rax,0x202340(%rip)        # 2039b0 <thread2_starttime>
    1670:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1672:	4d 89 ee             	mov    %r13,%r14
    1675:	49 c1 e6 09          	shl    $0x9,%r14
    1679:	49 01 ee             	add    %rbp,%r14
    167c:	41 8b 96 40 01 00 00 	mov    0x140(%r14),%edx
    1683:	e8 e8 f2 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1688:	be 80 10 00 00       	mov    $0x1080,%esi
    168d:	bf 40 00 00 00       	mov    $0x40,%edi
    1692:	e8 29 f3 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    1697:	49 8b 0e             	mov    (%r14),%rcx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    169a:	49 89 86 c0 00 00 00 	mov    %rax,0xc0(%r14)
  _thread->context.mxcsr = 0;
    16a1:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    16a8:	00 00 00 00 
    16ac:	0f 1f 40 00          	nopl   0x0(%rax)
  while (_uth->buf->context.mxcsr == 11);
    16b0:	48 8b 91 70 10 00 00 	mov    0x1070(%rcx),%rdx
    16b7:	48 83 fa 0b          	cmp    $0xb,%rdx
    16bb:	74 f3                	je     16b0 <mpthread2+0x130>
  while (!_uth->sp_exit_check){
    16bd:	49 c1 e5 09          	shl    $0x9,%r13
  Context *s = &(_uth->sched_thread->context);
    16c1:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf->context);
    16c8:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
  while (!_uth->sp_exit_check){
    16cf:	4a 8d 54 2d 00       	lea    0x0(%rbp,%r13,1),%rdx
    16d4:	eb 23                	jmp    16f9 <mpthread2+0x179>
    16d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16dd:	00 00 00 
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    16e0:	48 8b 0a             	mov    (%rdx),%rcx
    16e3:	0f b6 b2 80 01 00 00 	movzbl 0x180(%rdx),%esi
    16ea:	48 8b b9 70 10 00 00 	mov    0x1070(%rcx),%rdi
    16f1:	48 89 f1             	mov    %rsi,%rcx
    16f4:	48 39 f7             	cmp    %rsi,%rdi
    16f7:	74 57                	je     1750 <mpthread2+0x1d0>
  while (!_uth->sp_exit_check){
    16f9:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
    1700:	84 c9                	test   %cl,%cl
    1702:	74 dc                	je     16e0 <mpthread2+0x160>
    OSThreadAvailable[threadId] = false;
    1704:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    170b:	ff ff 
    170d:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
    1712:	0f 31                	rdtsc  
    1714:	48 c1 e2 20          	shl    $0x20,%rdx
    1718:	48 09 d0             	or     %rdx,%rax
}
    171b:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    1722:	00 
    1723:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    172a:	00 00 
    thread2_endtime = __rdtsc();
    172c:	48 89 05 5d 22 20 00 	mov    %rax,0x20225d(%rip)        # 203990 <thread2_endtime>
}
    1733:	0f 85 9c 00 00 00    	jne    17d5 <target1174+0x5>
    1739:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    1740:	5b                   	pop    %rbx
    1741:	5d                   	pop    %rbp
    1742:	41 5c                	pop    %r12
    1744:	41 5d                	pop    %r13
    1746:	41 5e                	pop    %r14
    1748:	c3                   	retq   
    1749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
          _uth->expVal = !_uth->expVal;
    1750:	83 f1 01             	xor    $0x1,%ecx
    1753:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    1759:	48 89 23             	mov    %rsp,(%rbx)
    175c:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 17d0 <target1174>
    1763:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    1767:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    176b:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    176f:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1773:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    1777:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    177b:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    177f:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1783:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    1787:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    178b:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    178f:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1793:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    1797:	48 8b 20             	mov    (%rax),%rsp
    179a:	4c 8b 68 40          	mov    0x40(%rax),%r13
    179e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    17a2:	48 8b 50 10          	mov    0x10(%rax),%rdx
    17a6:	4c 8b 40 18          	mov    0x18(%rax),%r8
    17aa:	4c 8b 48 20          	mov    0x20(%rax),%r9
    17ae:	4c 8b 50 28          	mov    0x28(%rax),%r10
    17b2:	4c 8b 58 30          	mov    0x30(%rax),%r11
    17b6:	4c 8b 60 38          	mov    0x38(%rax),%r12
    17ba:	4c 8b 70 48          	mov    0x48(%rax),%r14
    17be:	4c 8b 78 50          	mov    0x50(%rax),%r15
    17c2:	48 8b 68 58          	mov    0x58(%rax),%rbp
    17c6:	48 8b 78 60          	mov    0x60(%rax),%rdi
    17ca:	48 8b 70 68          	mov    0x68(%rax),%rsi
    17ce:	ff e1                	jmpq   *%rcx

00000000000017d0 <target1174>:
    17d0:	e9 24 ff ff ff       	jmpq   16f9 <mpthread2+0x179>
}
    17d5:	e8 56 f1 ff ff       	callq  930 <__stack_chk_fail@plt>
    17da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000017e0 <Thread_Init>:
  _thread->context.mxcsr = 0;
    17e0:	48 c7 87 70 10 00 00 	movq   $0x0,0x1070(%rdi)
    17e7:	00 00 00 00 
}
    17eb:	c3                   	retq   
    17ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017f0 <Thread_Destory>:
    17f0:	f3 c3                	repz retq 
    17f2:	0f 1f 40 00          	nopl   0x0(%rax)
    17f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17fd:	00 00 00 

0000000000001800 <UserThreading_Init>:
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1800:	55                   	push   %rbp
    1801:	53                   	push   %rbx
    1802:	89 f5                	mov    %esi,%ebp
    1804:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1807:	be 80 10 00 00       	mov    $0x1080,%esi
    180c:	bf 40 00 00 00       	mov    $0x40,%edi
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1811:	48 83 ec 08          	sub    $0x8,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1815:	e8 a6 f1 ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->lastVal = !_id;
    181a:	85 ed                	test   %ebp,%ebp
    _uth->sp_exit_check = false;
    181c:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
    _uth->id = _id;
    1823:	89 ab 40 01 00 00    	mov    %ebp,0x140(%rbx)
    _uth->buf->context.mxcsr = 11;
    1829:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
    1830:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1834:	48 89 03             	mov    %rax,(%rbx)
    _uth->expVal = 1;
    1837:	c6 83 80 01 00 00 01 	movb   $0x1,0x180(%rbx)
    _uth->lastVal = !_id;
    183e:	0f 94 83 c0 01 00 00 	sete   0x1c0(%rbx)
}
    1845:	48 83 c4 08          	add    $0x8,%rsp
    1849:	5b                   	pop    %rbx
    184a:	5d                   	pop    %rbp
    184b:	c3                   	retq   
    184c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001850 <Scheduler>:
void Scheduler(UserThreading *_uth){
    1850:	55                   	push   %rbp
    1851:	53                   	push   %rbx
    1852:	48 8d 35 ac 04 00 00 	lea    0x4ac(%rip),%rsi        # 1d05 <_IO_stdin_used+0x125>
    1859:	48 89 fd             	mov    %rdi,%rbp
    185c:	31 c0                	xor    %eax,%eax
    185e:	48 83 ec 08          	sub    $0x8,%rsp
    1862:	8b 97 40 01 00 00    	mov    0x140(%rdi),%edx
    1868:	bf 01 00 00 00       	mov    $0x1,%edi
    186d:	e8 fe f0 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1872:	be 80 10 00 00       	mov    $0x1080,%esi
    1877:	bf 40 00 00 00       	mov    $0x40,%edi
    187c:	e8 3f f1 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    1881:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1885:	48 89 85 c0 00 00 00 	mov    %rax,0xc0(%rbp)
  _thread->context.mxcsr = 0;
    188c:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1893:	00 00 00 00 
    1897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    189e:	00 00 
  while (_uth->buf->context.mxcsr == 11);
    18a0:	48 8b 91 70 10 00 00 	mov    0x1070(%rcx),%rdx
    18a7:	48 83 fa 0b          	cmp    $0xb,%rdx
    18ab:	74 f3                	je     18a0 <Scheduler+0x50>
  Context *s = &(_uth->sched_thread->context);
    18ad:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf->context);
    18b4:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
  while (!_uth->sp_exit_check){
    18bb:	eb 1d                	jmp    18da <Scheduler+0x8a>
    18bd:	0f 1f 00             	nopl   (%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    18c0:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    18c4:	0f b6 8d 80 01 00 00 	movzbl 0x180(%rbp),%ecx
    18cb:	48 8b b2 70 10 00 00 	mov    0x1070(%rdx),%rsi
    18d2:	48 89 ca             	mov    %rcx,%rdx
    18d5:	48 39 ce             	cmp    %rcx,%rsi
    18d8:	74 16                	je     18f0 <Scheduler+0xa0>
  while (!_uth->sp_exit_check){
    18da:	0f b6 95 00 01 00 00 	movzbl 0x100(%rbp),%edx
    18e1:	84 d2                	test   %dl,%dl
    18e3:	74 db                	je     18c0 <Scheduler+0x70>
}
    18e5:	48 83 c4 08          	add    $0x8,%rsp
    18e9:	5b                   	pop    %rbx
    18ea:	5d                   	pop    %rbp
    18eb:	c3                   	retq   
    18ec:	0f 1f 40 00          	nopl   0x0(%rax)
          _uth->expVal = !_uth->expVal;
    18f0:	83 f2 01             	xor    $0x1,%edx
    18f3:	88 95 80 01 00 00    	mov    %dl,0x180(%rbp)
            __asm__ __volatile__(
    18f9:	48 89 23             	mov    %rsp,(%rbx)
    18fc:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1970 <target1350>
    1903:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    1907:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    190b:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    190f:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1913:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    1917:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    191b:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    191f:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1923:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    1927:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    192b:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    192f:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1933:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    1937:	48 8b 20             	mov    (%rax),%rsp
    193a:	4c 8b 68 40          	mov    0x40(%rax),%r13
    193e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1942:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1946:	4c 8b 40 18          	mov    0x18(%rax),%r8
    194a:	4c 8b 48 20          	mov    0x20(%rax),%r9
    194e:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1952:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1956:	4c 8b 60 38          	mov    0x38(%rax),%r12
    195a:	4c 8b 70 48          	mov    0x48(%rax),%r14
    195e:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1962:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1966:	48 8b 78 60          	mov    0x60(%rax),%rdi
    196a:	48 8b 70 68          	mov    0x68(%rax),%rsi
    196e:	ff e1                	jmpq   *%rcx

0000000000001970 <target1350>:
    1970:	e9 65 ff ff ff       	jmpq   18da <Scheduler+0x8a>
    1975:	90                   	nop
    1976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    197d:	00 00 00 

0000000000001980 <UserThreading_Destory>:
}
    1980:	f3 c3                	repz retq 
    1982:	0f 1f 40 00          	nopl   0x0(%rax)
    1986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    198d:	00 00 00 

0000000000001990 <Yield>:
  Context *s = &(_uth->sched_thread->context);
    1990:	48 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%rax
void Yield(UserThreading *_uth){
    1997:	53                   	push   %rbx
  Context *s = &(_uth->sched_thread->context);
    1998:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    199f:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
    19a6:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    19ac:	80 bf c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdi)
    19b3:	0f 84 8f 00 00 00    	je     1a48 <target21383+0x9>
      _uth->lastVal = !_uth->lastVal;
    19b9:	c6 87 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdi)
          __asm__ __volatile__(
    19c0:	48 89 20             	mov    %rsp,(%rax)
    19c3:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1a3f <target21383>
    19ca:	48 89 48 08          	mov    %rcx,0x8(%rax)
    19ce:	48 89 50 10          	mov    %rdx,0x10(%rax)
    19d2:	4c 89 40 18          	mov    %r8,0x18(%rax)
    19d6:	4c 89 48 20          	mov    %r9,0x20(%rax)
    19da:	4c 89 50 28          	mov    %r10,0x28(%rax)
    19de:	4c 89 58 30          	mov    %r11,0x30(%rax)
    19e2:	4c 89 60 38          	mov    %r12,0x38(%rax)
    19e6:	4c 89 68 40          	mov    %r13,0x40(%rax)
    19ea:	4c 89 70 48          	mov    %r14,0x48(%rax)
    19ee:	4c 89 78 50          	mov    %r15,0x50(%rax)
    19f2:	48 89 68 58          	mov    %rbp,0x58(%rax)
    19f6:	48 89 78 60          	mov    %rdi,0x60(%rax)
    19fa:	48 89 70 68          	mov    %rsi,0x68(%rax)
    19fe:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    1a05:	00 
    1a06:	48 8b 23             	mov    (%rbx),%rsp
    1a09:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1a0d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1a11:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1a15:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1a19:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1a1d:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1a21:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1a25:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1a29:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1a2d:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1a31:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1a35:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1a39:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1a3d:	ff e1                	jmpq   *%rcx

0000000000001a3f <target21383>:
}
    1a3f:	5b                   	pop    %rbx
    1a40:	c3                   	retq   
    1a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    _uth->lastVal = !_uth->lastVal;
    1a48:	c6 87 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdi)
    __asm__ __volatile__(
    1a4f:	48 89 20             	mov    %rsp,(%rax)
    1a52:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1ace <target21396>
    1a59:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1a5d:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1a61:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1a65:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1a69:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1a6d:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1a71:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1a75:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1a79:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1a7d:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1a81:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1a85:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1a89:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1a8d:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    1a94:	00 
    1a95:	48 8b 23             	mov    (%rbx),%rsp
    1a98:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1a9c:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1aa0:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1aa4:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1aa8:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1aac:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1ab0:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1ab4:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1ab8:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1abc:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1ac0:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1ac4:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1ac8:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1acc:	ff e1                	jmpq   *%rcx

0000000000001ace <target21396>:
}
    1ace:	5b                   	pop    %rbx
    1acf:	c3                   	retq   

0000000000001ad0 <makeThread>:
int makeThread(UserThreading *_uth, void (*fn)()){
    1ad0:	55                   	push   %rbp
    1ad1:	53                   	push   %rbx
    1ad2:	48 89 f5             	mov    %rsi,%rbp
    1ad5:	48 89 fb             	mov    %rdi,%rbx
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1ad8:	be 80 10 00 00       	mov    $0x1080,%esi
    1add:	bf 80 00 00 00       	mov    $0x80,%edi
int makeThread(UserThreading *_uth, void (*fn)()){
    1ae2:	48 83 ec 08          	sub    $0x8,%rsp
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1ae6:	e8 d5 ee ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    1aeb:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
    1af2:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1af9:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
    1afd:	48 89 a8 08 10 00 00 	mov    %rbp,0x1008(%rax)
  new_thread->context.mxcsr = 1;
    1b04:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
    1b0b:	01 00 00 00 
  _uth->buf = new_thread; 
    1b0f:	48 89 03             	mov    %rax,(%rbx)
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    1b12:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
}
    1b19:	48 83 c4 08          	add    $0x8,%rsp
    1b1d:	5b                   	pop    %rbx
    1b1e:	5d                   	pop    %rbp
    1b1f:	c3                   	retq   

0000000000001b20 <allSchedulersExit>:
    if (i != threadId )
    1b20:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1b27:	ff 
    1b28:	85 c0                	test   %eax,%eax
    1b2a:	74 07                	je     1b33 <allSchedulersExit+0x13>
      UserThreadingVec[i].sp_exit_check = true;
    1b2c:	c6 05 4d 19 20 00 01 	movb   $0x1,0x20194d(%rip)        # 203480 <UserThreadingVec+0x100>
    if (i != threadId )
    1b33:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1b3a:	ff 
    1b3b:	83 f8 01             	cmp    $0x1,%eax
    1b3e:	74 07                	je     1b47 <allSchedulersExit+0x27>
      UserThreadingVec[i].sp_exit_check = true;
    1b40:	c6 05 39 1b 20 00 01 	movb   $0x1,0x201b39(%rip)        # 203680 <UserThreadingVec+0x300>
    1b47:	48 8d 3d cd 01 00 00 	lea    0x1cd(%rip),%rdi        # 1d1b <_IO_stdin_used+0x13b>
    1b4e:	e9 cd ed ff ff       	jmpq   920 <puts@plt>
    1b53:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1b5a:	00 00 00 
    1b5d:	0f 1f 00             	nopl   (%rax)

0000000000001b60 <__libc_csu_init>:
    1b60:	41 57                	push   %r15
    1b62:	41 56                	push   %r14
    1b64:	49 89 d7             	mov    %rdx,%r15
    1b67:	41 55                	push   %r13
    1b69:	41 54                	push   %r12
    1b6b:	4c 8d 25 d6 11 20 00 	lea    0x2011d6(%rip),%r12        # 202d48 <__frame_dummy_init_array_entry>
    1b72:	55                   	push   %rbp
    1b73:	48 8d 2d d6 11 20 00 	lea    0x2011d6(%rip),%rbp        # 202d50 <__init_array_end>
    1b7a:	53                   	push   %rbx
    1b7b:	41 89 fd             	mov    %edi,%r13d
    1b7e:	49 89 f6             	mov    %rsi,%r14
    1b81:	4c 29 e5             	sub    %r12,%rbp
    1b84:	48 83 ec 08          	sub    $0x8,%rsp
    1b88:	48 c1 fd 03          	sar    $0x3,%rbp
    1b8c:	e8 4f ed ff ff       	callq  8e0 <_init>
    1b91:	48 85 ed             	test   %rbp,%rbp
    1b94:	74 20                	je     1bb6 <__libc_csu_init+0x56>
    1b96:	31 db                	xor    %ebx,%ebx
    1b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b9f:	00 
    1ba0:	4c 89 fa             	mov    %r15,%rdx
    1ba3:	4c 89 f6             	mov    %r14,%rsi
    1ba6:	44 89 ef             	mov    %r13d,%edi
    1ba9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1bad:	48 83 c3 01          	add    $0x1,%rbx
    1bb1:	48 39 dd             	cmp    %rbx,%rbp
    1bb4:	75 ea                	jne    1ba0 <__libc_csu_init+0x40>
    1bb6:	48 83 c4 08          	add    $0x8,%rsp
    1bba:	5b                   	pop    %rbx
    1bbb:	5d                   	pop    %rbp
    1bbc:	41 5c                	pop    %r12
    1bbe:	41 5d                	pop    %r13
    1bc0:	41 5e                	pop    %r14
    1bc2:	41 5f                	pop    %r15
    1bc4:	c3                   	retq   
    1bc5:	90                   	nop
    1bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1bcd:	00 00 00 

0000000000001bd0 <__libc_csu_fini>:
    1bd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001bd4 <_fini>:
    1bd4:	48 83 ec 08          	sub    $0x8,%rsp
    1bd8:	48 83 c4 08          	add    $0x8,%rsp
    1bdc:	c3                   	retq   

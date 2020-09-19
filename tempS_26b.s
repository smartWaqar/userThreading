
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
     a3c:	48 8d 3d 32 13 00 00 	lea    0x1332(%rip),%rdi        # 1d75 <_IO_stdin_used+0x165>
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
     b28:	48 8d 35 5b 12 00 00 	lea    0x125b(%rip),%rsi        # 1d8a <_IO_stdin_used+0x17a>
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
     b63:	48 8d 15 26 0a 00 00 	lea    0xa26(%rip),%rdx        # 1590 <mpthread2>
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
     bb5:	48 8d 35 de 11 00 00 	lea    0x11de(%rip),%rsi        # 1d9a <_IO_stdin_used+0x18a>
     bbc:	bf 01 00 00 00       	mov    $0x1,%edi
     bc1:	31 c0                	xor    %eax,%eax
     bc3:	e8 a8 fd ff ff       	callq  970 <__printf_chk@plt>
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
     bc8:	48 8b 15 31 26 20 00 	mov    0x202631(%rip),%rdx        # 203200 <global_var1>
     bcf:	48 8d 35 da 11 00 00 	lea    0x11da(%rip),%rsi        # 1db0 <_IO_stdin_used+0x1a0>
     bd6:	bf 01 00 00 00       	mov    $0x1,%edi
     bdb:	31 c0                	xor    %eax,%eax
     bdd:	e8 8e fd ff ff       	callq  970 <__printf_chk@plt>
  printf("global_var2: %lld \n", global_var2); 
     be2:	48 8b 15 97 25 20 00 	mov    0x202597(%rip),%rdx        # 203180 <global_var2>
     be9:	48 8d 35 d3 11 00 00 	lea    0x11d3(%rip),%rsi        # 1dc3 <_IO_stdin_used+0x1b3>
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
     c23:	48 8d 35 46 10 00 00 	lea    0x1046(%rip),%rsi        # 1c70 <_IO_stdin_used+0x60>
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
     c56:	48 8d 3d e3 0f 00 00 	lea    0xfe3(%rip),%rdi        # 1c40 <_IO_stdin_used+0x30>
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
     c7f:	4c 8d 05 7a 0f 00 00 	lea    0xf7a(%rip),%r8        # 1c00 <__libc_csu_fini>
     c86:	48 8d 0d 03 0f 00 00 	lea    0xf03(%rip),%rcx        # 1b90 <__libc_csu_init>
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
     d84:	48 8d 35 8d 0e 00 00 	lea    0xe8d(%rip),%rsi        # 1c18 <_IO_stdin_used+0x8>
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
     dac:	4c 8d 2d e5 0e 00 00 	lea    0xee5(%rip),%r13        # 1c98 <_IO_stdin_used+0x88>
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
     e0a:	48 8d 3d 8f 0e 00 00 	lea    0xe8f(%rip),%rdi        # 1ca0 <_IO_stdin_used+0x90>
     e11:	e8 0a fb ff ff       	callq  920 <puts@plt>
        if (a4 != i + 3 || special_global)
     e16:	8b 05 84 24 20 00    	mov    0x202484(%rip),%eax        # 2032a0 <special_global>
     e1c:	85 c0                	test   %eax,%eax
     e1e:	74 0c                	je     e2c <pfc+0xac>
     e20:	48 8d 3d 7d 0e 00 00 	lea    0xe7d(%rip),%rdi        # 1ca4 <_IO_stdin_used+0x94>
     e27:	e8 f4 fa ff ff       	callq  920 <puts@plt>
        if (a5 != i + 4 || special_global)
     e2c:	8b 05 6e 24 20 00    	mov    0x20246e(%rip),%eax        # 2032a0 <special_global>
     e32:	85 c0                	test   %eax,%eax
     e34:	74 0c                	je     e42 <pfc+0xc2>
     e36:	48 8d 3d 6b 0e 00 00 	lea    0xe6b(%rip),%rdi        # 1ca8 <_IO_stdin_used+0x98>
     e3d:	e8 de fa ff ff       	callq  920 <puts@plt>
        if (a6 != i + 5 || special_global)
     e42:	8b 05 58 24 20 00    	mov    0x202458(%rip),%eax        # 2032a0 <special_global>
     e48:	85 c0                	test   %eax,%eax
     e4a:	74 0c                	je     e58 <pfc+0xd8>
     e4c:	48 8d 3d 59 0e 00 00 	lea    0xe59(%rip),%rdi        # 1cac <_IO_stdin_used+0x9c>
     e53:	e8 c8 fa ff ff       	callq  920 <puts@plt>
        if (a7 != i + 6 || special_global)
     e58:	8b 1d 42 24 20 00    	mov    0x202442(%rip),%ebx        # 2032a0 <special_global>
     e5e:	85 db                	test   %ebx,%ebx
     e60:	74 0c                	je     e6e <pfc+0xee>
     e62:	48 8d 3d 47 0e 00 00 	lea    0xe47(%rip),%rdi        # 1cb0 <_IO_stdin_used+0xa0>
     e69:	e8 b2 fa ff ff       	callq  920 <puts@plt>
        if (a8 != i + 7 || special_global)
     e6e:	44 8b 1d 2b 24 20 00 	mov    0x20242b(%rip),%r11d        # 2032a0 <special_global>
     e75:	45 85 db             	test   %r11d,%r11d
     e78:	74 0c                	je     e86 <pfc+0x106>
     e7a:	48 8d 3d 33 0e 00 00 	lea    0xe33(%rip),%rdi        # 1cb4 <_IO_stdin_used+0xa4>
     e81:	e8 9a fa ff ff       	callq  920 <puts@plt>
        if (a9 != i + 8 || special_global)
     e86:	44 8b 15 13 24 20 00 	mov    0x202413(%rip),%r10d        # 2032a0 <special_global>
     e8d:	45 85 d2             	test   %r10d,%r10d
     e90:	74 24                	je     eb6 <pfc+0x136>
     e92:	48 8d 3d 1f 0e 00 00 	lea    0xe1f(%rip),%rdi        # 1cb8 <_IO_stdin_used+0xa8>
     e99:	e8 82 fa ff ff       	callq  920 <puts@plt>
        if (a10 != i + 9 || special_global)
     e9e:	44 8b 0d fb 23 20 00 	mov    0x2023fb(%rip),%r9d        # 2032a0 <special_global>
     ea5:	45 85 c9             	test   %r9d,%r9d
     ea8:	74 0c                	je     eb6 <pfc+0x136>
     eaa:	48 8d 3d 0b 0e 00 00 	lea    0xe0b(%rip),%rdi        # 1cbc <_IO_stdin_used+0xac>
     eb1:	e8 6a fa ff ff       	callq  920 <puts@plt>
        if (a11 != i + 10 || special_global)
     eb6:	44 8b 05 e3 23 20 00 	mov    0x2023e3(%rip),%r8d        # 2032a0 <special_global>
     ebd:	45 85 c0             	test   %r8d,%r8d
     ec0:	74 22                	je     ee4 <pfc+0x164>
     ec2:	48 8d 3d f8 0d 00 00 	lea    0xdf8(%rip),%rdi        # 1cc1 <_IO_stdin_used+0xb1>
     ec9:	e8 52 fa ff ff       	callq  920 <puts@plt>
        if (a12 != i + 11 || special_global)
     ece:	8b 3d cc 23 20 00    	mov    0x2023cc(%rip),%edi        # 2032a0 <special_global>
     ed4:	85 ff                	test   %edi,%edi
     ed6:	74 0c                	je     ee4 <pfc+0x164>
     ed8:	48 8d 3d e7 0d 00 00 	lea    0xde7(%rip),%rdi        # 1cc6 <_IO_stdin_used+0xb6>
     edf:	e8 3c fa ff ff       	callq  920 <puts@plt>
        if (a13 != i + 12 || special_global)
     ee4:	8b 35 b6 23 20 00    	mov    0x2023b6(%rip),%esi        # 2032a0 <special_global>
     eea:	85 f6                	test   %esi,%esi
     eec:	74 22                	je     f10 <pfc+0x190>
     eee:	48 8d 3d d6 0d 00 00 	lea    0xdd6(%rip),%rdi        # 1ccb <_IO_stdin_used+0xbb>
     ef5:	e8 26 fa ff ff       	callq  920 <puts@plt>
        if (a14 != i + 13 || special_global)
     efa:	8b 0d a0 23 20 00    	mov    0x2023a0(%rip),%ecx        # 2032a0 <special_global>
     f00:	85 c9                	test   %ecx,%ecx
     f02:	74 0c                	je     f10 <pfc+0x190>
     f04:	48 8d 3d c5 0d 00 00 	lea    0xdc5(%rip),%rdi        # 1cd0 <_IO_stdin_used+0xc0>
     f0b:	e8 10 fa ff ff       	callq  920 <puts@plt>
        if (a15 != i + 14 || special_global)
     f10:	8b 15 8a 23 20 00    	mov    0x20238a(%rip),%edx        # 2032a0 <special_global>
     f16:	85 d2                	test   %edx,%edx
     f18:	74 22                	je     f3c <pfc+0x1bc>
     f1a:	48 8d 3d b4 0d 00 00 	lea    0xdb4(%rip),%rdi        # 1cd5 <_IO_stdin_used+0xc5>
     f21:	e8 fa f9 ff ff       	callq  920 <puts@plt>
        if (a16 != i + 15 || special_global)
     f26:	8b 05 74 23 20 00    	mov    0x202374(%rip),%eax        # 2032a0 <special_global>
     f2c:	85 c0                	test   %eax,%eax
     f2e:	74 0c                	je     f3c <pfc+0x1bc>
     f30:	48 8d 3d a3 0d 00 00 	lea    0xda3(%rip),%rdi        # 1cda <_IO_stdin_used+0xca>
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
    104f:	48 8d 3d 46 0c 00 00 	lea    0xc46(%rip),%rdi        # 1c9c <_IO_stdin_used+0x8c>
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
    10f2:	48 8d 3d e6 0b 00 00 	lea    0xbe6(%rip),%rdi        # 1cdf <_IO_stdin_used+0xcf>
    10f9:	e8 22 f8 ff ff       	callq  920 <puts@plt>
    10fe:	48 8d 35 e4 0b 00 00 	lea    0xbe4(%rip),%rsi        # 1ce9 <_IO_stdin_used+0xd9>
    1105:	31 d2                	xor    %edx,%edx
    1107:	bf 01 00 00 00       	mov    $0x1,%edi
    110c:	31 c0                	xor    %eax,%eax
    110e:	e8 5d f8 ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = 0;
    1113:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    111a:	ff 
    111b:	48 8d 35 d8 0b 00 00 	lea    0xbd8(%rip),%rsi        # 1cfa <_IO_stdin_used+0xea>
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
    127c:	48 8d 3d 85 0a 00 00 	lea    0xa85(%rip),%rdi        # 1d08 <_IO_stdin_used+0xf8>
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
    1381:	4c 8d 2d 24 26 20 00 	lea    0x202624(%rip),%r13        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    1388:	e8 b3 f5 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    138d:	e8 0e f6 ff ff       	callq  9a0 <sched_getcpu@plt>
    1392:	48 8d 35 75 09 00 00 	lea    0x975(%rip),%rsi        # 1d0e <_IO_stdin_used+0xfe>
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
    13b7:	48 8d 35 68 09 00 00 	lea    0x968(%rip),%rsi        # 1d26 <_IO_stdin_used+0x116>
    13be:	bf 01 00 00 00       	mov    $0x1,%edi
    13c3:	31 c0                	xor    %eax,%eax
    13c5:	e8 a6 f5 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    13ca:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    13d1:	ff ff 
    pthread_barrier_wait(&barrier);
    13d3:	48 8d 3d 46 1f 20 00 	lea    0x201f46(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    13da:	41 c6 44 05 00 01    	movb   $0x1,0x0(%r13,%rax,1)
    pthread_barrier_wait(&barrier);
    13e0:	e8 eb f5 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    13e5:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    13e7:	64 4c 63 34 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r14
    13ee:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    13f0:	48 8d 2d 89 1f 20 00 	lea    0x201f89(%rip),%rbp        # 203380 <UserThreadingVec>
    13f7:	48 8d 35 37 09 00 00 	lea    0x937(%rip),%rsi        # 1d35 <_IO_stdin_used+0x125>
    13fe:	48 c1 e2 20          	shl    $0x20,%rdx
    1402:	bf 01 00 00 00       	mov    $0x1,%edi
    1407:	48 09 d0             	or     %rdx,%rax
    thread1_starttime = __rdtsc();
    140a:	48 89 05 77 25 20 00 	mov    %rax,0x202577(%rip)        # 203988 <thread1_starttime>
    1411:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1413:	4d 89 f4             	mov    %r14,%r12
    1416:	49 c1 e4 09          	shl    $0x9,%r12
    141a:	49 01 ec             	add    %rbp,%r12
    141d:	41 8b 94 24 40 01 00 	mov    0x140(%r12),%edx
    1424:	00 
    1425:	e8 46 f5 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    142a:	be 80 10 00 00       	mov    $0x1080,%esi
    142f:	bf 40 00 00 00       	mov    $0x40,%edi
    1434:	e8 87 f5 ff ff       	callq  9c0 <aligned_alloc@plt>
    1439:	49 89 84 24 c0 00 00 	mov    %rax,0xc0(%r12)
    1440:	00 
  while (_uth->buf->context.mxcsr == 11);
    1441:	4d 8b 24 24          	mov    (%r12),%r12
  _thread->context.mxcsr = 0;
    1445:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    144c:	00 00 00 00 
  while (_uth->buf->context.mxcsr == 11);
    1450:	49 8b 94 24 70 10 00 	mov    0x1070(%r12),%rdx
    1457:	00 
    1458:	48 83 fa 0b          	cmp    $0xb,%rdx
    145c:	74 f2                	je     1450 <mpthread1+0x130>
  Context *t = &(_uth->buf->context);
    145e:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    1465:	48 8d 35 df 08 00 00 	lea    0x8df(%rip),%rsi        # 1d4b <_IO_stdin_used+0x13b>
  Context *s = &(_uth->sched_thread->context);
    146c:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
    1473:	4c 89 e2             	mov    %r12,%rdx
    1476:	bf 01 00 00 00       	mov    $0x1,%edi
    147b:	31 c0                	xor    %eax,%eax
  while (!_uth->sp_exit_check){
    147d:	49 c1 e6 09          	shl    $0x9,%r14
    1481:	e8 ea f4 ff ff       	callq  970 <__printf_chk@plt>
    1486:	4a 8d 54 35 00       	lea    0x0(%rbp,%r14,1),%rdx
    148b:	eb 1c                	jmp    14a9 <mpthread1+0x189>
    148d:	0f 1f 00             	nopl   (%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1490:	48 8b 02             	mov    (%rdx),%rax
    1493:	48 8b b0 70 10 00 00 	mov    0x1070(%rax),%rsi
    149a:	0f b6 82 80 01 00 00 	movzbl 0x180(%rdx),%eax
    14a1:	48 39 c6             	cmp    %rax,%rsi
    14a4:	48 89 c1             	mov    %rax,%rcx
    14a7:	74 57                	je     1500 <mpthread1+0x1e0>
  while (!_uth->sp_exit_check){
    14a9:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
    14b0:	84 c0                	test   %al,%al
    14b2:	74 dc                	je     1490 <mpthread1+0x170>
    OSThreadAvailable[threadId] = false;
    14b4:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    14bb:	ff ff 
    14bd:	41 c6 44 05 00 00    	movb   $0x0,0x0(%r13,%rax,1)
    14c3:	0f 31                	rdtsc  
    14c5:	48 c1 e2 20          	shl    $0x20,%rdx
    14c9:	48 09 d0             	or     %rdx,%rax
}
    14cc:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    14d3:	00 
    14d4:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    14db:	00 00 
    thread1_endtime = __rdtsc();
    14dd:	48 89 05 d4 24 20 00 	mov    %rax,0x2024d4(%rip)        # 2039b8 <thread1_endtime>
}
    14e4:	0f 85 9e 00 00 00    	jne    1588 <target946+0x5>
    14ea:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    14f1:	5b                   	pop    %rbx
    14f2:	5d                   	pop    %rbp
    14f3:	41 5c                	pop    %r12
    14f5:	41 5d                	pop    %r13
    14f7:	41 5e                	pop    %r14
    14f9:	c3                   	retq   
    14fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
          _uth->expVal = !_uth->expVal;
    1500:	83 f1 01             	xor    $0x1,%ecx
            __asm__ __volatile__(
    1503:	4c 89 e0             	mov    %r12,%rax
          _uth->expVal = !_uth->expVal;
    1506:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    150c:	48 89 23             	mov    %rsp,(%rbx)
    150f:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1583 <target946>
    1516:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    151a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    151e:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    1522:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1526:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    152a:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    152e:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    1532:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1536:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    153a:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    153e:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    1542:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1546:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    154a:	48 8b 20             	mov    (%rax),%rsp
    154d:	4c 8b 68 40          	mov    0x40(%rax),%r13
    1551:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1555:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1559:	4c 8b 40 18          	mov    0x18(%rax),%r8
    155d:	4c 8b 48 20          	mov    0x20(%rax),%r9
    1561:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1565:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1569:	4c 8b 60 38          	mov    0x38(%rax),%r12
    156d:	4c 8b 70 48          	mov    0x48(%rax),%r14
    1571:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1575:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1579:	48 8b 78 60          	mov    0x60(%rax),%rdi
    157d:	48 8b 70 68          	mov    0x68(%rax),%rsi
    1581:	ff e1                	jmpq   *%rcx

0000000000001583 <target946>:
    1583:	e9 21 ff ff ff       	jmpq   14a9 <mpthread1+0x189>
}
    1588:	e8 a3 f3 ff ff       	callq  930 <__stack_chk_fail@plt>
    158d:	0f 1f 00             	nopl   (%rax)

0000000000001590 <mpthread2>:
void *mpthread2(void *arg){
    1590:	41 56                	push   %r14
    1592:	41 55                	push   %r13
    CPU_ZERO(&cpuset2);
    1594:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread2(void *arg){
    1599:	41 54                	push   %r12
    159b:	55                   	push   %rbp
    159c:	53                   	push   %rbx
    159d:	48 89 fb             	mov    %rdi,%rbx
    15a0:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    15a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15ae:	00 00 
    15b0:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    15b7:	00 
    15b8:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset2);
    15ba:	48 89 e2             	mov    %rsp,%rdx
    15bd:	48 89 d7             	mov    %rdx,%rdi
    15c0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_2, &cpuset2);
    15c3:	48 63 05 de 23 20 00 	movslq 0x2023de(%rip),%rax        # 2039a8 <coreId_2>
    15ca:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    15d0:	77 13                	ja     15e5 <mpthread2+0x55>
    15d2:	48 89 c1             	mov    %rax,%rcx
    15d5:	be 01 00 00 00       	mov    $0x1,%esi
    15da:	48 c1 e8 06          	shr    $0x6,%rax
    15de:	48 d3 e6             	shl    %cl,%rsi
    15e1:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    15e5:	48 8b 3d 14 1d 20 00 	mov    0x201d14(%rip),%rdi        # 203300 <threadId_2>
    15ec:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    15f1:	4c 8d 2d b4 23 20 00 	lea    0x2023b4(%rip),%r13        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    15f8:	e8 43 f3 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    15fd:	e8 9e f3 ff ff       	callq  9a0 <sched_getcpu@plt>
    1602:	48 8d 35 05 07 00 00 	lea    0x705(%rip),%rsi        # 1d0e <_IO_stdin_used+0xfe>
    1609:	89 c2                	mov    %eax,%edx
    160b:	bf 01 00 00 00       	mov    $0x1,%edi
    1610:	31 c0                	xor    %eax,%eax
    1612:	e8 59 f3 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    1617:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    161e:	ff 
    printf("ThreadNum: %d\n", threadId);
    161f:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    1626:	ff 
    1627:	48 8d 35 f8 06 00 00 	lea    0x6f8(%rip),%rsi        # 1d26 <_IO_stdin_used+0x116>
    162e:	bf 01 00 00 00       	mov    $0x1,%edi
    1633:	31 c0                	xor    %eax,%eax
    1635:	e8 36 f3 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    163a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1641:	ff ff 
    pthread_barrier_wait(&barrier);
    1643:	48 8d 3d d6 1c 20 00 	lea    0x201cd6(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    164a:	41 c6 44 05 00 01    	movb   $0x1,0x0(%r13,%rax,1)
    pthread_barrier_wait(&barrier);
    1650:	e8 7b f3 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    1655:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    1657:	64 4c 63 34 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r14
    165e:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    1660:	48 8d 2d 19 1d 20 00 	lea    0x201d19(%rip),%rbp        # 203380 <UserThreadingVec>
    1667:	48 8d 35 c7 06 00 00 	lea    0x6c7(%rip),%rsi        # 1d35 <_IO_stdin_used+0x125>
    166e:	48 c1 e2 20          	shl    $0x20,%rdx
    1672:	bf 01 00 00 00       	mov    $0x1,%edi
    1677:	48 09 d0             	or     %rdx,%rax
    thread2_starttime = __rdtsc();
    167a:	48 89 05 2f 23 20 00 	mov    %rax,0x20232f(%rip)        # 2039b0 <thread2_starttime>
    1681:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1683:	4d 89 f4             	mov    %r14,%r12
    1686:	49 c1 e4 09          	shl    $0x9,%r12
    168a:	49 01 ec             	add    %rbp,%r12
    168d:	41 8b 94 24 40 01 00 	mov    0x140(%r12),%edx
    1694:	00 
    1695:	e8 d6 f2 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    169a:	be 80 10 00 00       	mov    $0x1080,%esi
    169f:	bf 40 00 00 00       	mov    $0x40,%edi
    16a4:	e8 17 f3 ff ff       	callq  9c0 <aligned_alloc@plt>
    16a9:	49 89 84 24 c0 00 00 	mov    %rax,0xc0(%r12)
    16b0:	00 
  while (_uth->buf->context.mxcsr == 11);
    16b1:	4d 8b 24 24          	mov    (%r12),%r12
  _thread->context.mxcsr = 0;
    16b5:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    16bc:	00 00 00 00 
  while (_uth->buf->context.mxcsr == 11);
    16c0:	49 8b 94 24 70 10 00 	mov    0x1070(%r12),%rdx
    16c7:	00 
    16c8:	48 83 fa 0b          	cmp    $0xb,%rdx
    16cc:	74 f2                	je     16c0 <mpthread2+0x130>
  Context *t = &(_uth->buf->context);
    16ce:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    16d5:	48 8d 35 6f 06 00 00 	lea    0x66f(%rip),%rsi        # 1d4b <_IO_stdin_used+0x13b>
  Context *s = &(_uth->sched_thread->context);
    16dc:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
    16e3:	4c 89 e2             	mov    %r12,%rdx
    16e6:	bf 01 00 00 00       	mov    $0x1,%edi
    16eb:	31 c0                	xor    %eax,%eax
  while (!_uth->sp_exit_check){
    16ed:	49 c1 e6 09          	shl    $0x9,%r14
    16f1:	e8 7a f2 ff ff       	callq  970 <__printf_chk@plt>
    16f6:	4a 8d 54 35 00       	lea    0x0(%rbp,%r14,1),%rdx
    16fb:	eb 1c                	jmp    1719 <mpthread2+0x189>
    16fd:	0f 1f 00             	nopl   (%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1700:	48 8b 02             	mov    (%rdx),%rax
    1703:	48 8b b0 70 10 00 00 	mov    0x1070(%rax),%rsi
    170a:	0f b6 82 80 01 00 00 	movzbl 0x180(%rdx),%eax
    1711:	48 39 c6             	cmp    %rax,%rsi
    1714:	48 89 c1             	mov    %rax,%rcx
    1717:	74 57                	je     1770 <mpthread2+0x1e0>
  while (!_uth->sp_exit_check){
    1719:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
    1720:	84 c0                	test   %al,%al
    1722:	74 dc                	je     1700 <mpthread2+0x170>
    OSThreadAvailable[threadId] = false;
    1724:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    172b:	ff ff 
    172d:	41 c6 44 05 00 00    	movb   $0x0,0x0(%r13,%rax,1)
    1733:	0f 31                	rdtsc  
    1735:	48 c1 e2 20          	shl    $0x20,%rdx
    1739:	48 09 d0             	or     %rdx,%rax
}
    173c:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    1743:	00 
    1744:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    174b:	00 00 
    thread2_endtime = __rdtsc();
    174d:	48 89 05 3c 22 20 00 	mov    %rax,0x20223c(%rip)        # 203990 <thread2_endtime>
}
    1754:	0f 85 9e 00 00 00    	jne    17f8 <target1216+0x5>
    175a:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    1761:	5b                   	pop    %rbx
    1762:	5d                   	pop    %rbp
    1763:	41 5c                	pop    %r12
    1765:	41 5d                	pop    %r13
    1767:	41 5e                	pop    %r14
    1769:	c3                   	retq   
    176a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
          _uth->expVal = !_uth->expVal;
    1770:	83 f1 01             	xor    $0x1,%ecx
            __asm__ __volatile__(
    1773:	4c 89 e0             	mov    %r12,%rax
          _uth->expVal = !_uth->expVal;
    1776:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    177c:	48 89 23             	mov    %rsp,(%rbx)
    177f:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 17f3 <target1216>
    1786:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    178a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    178e:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    1792:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1796:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    179a:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    179e:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    17a2:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    17a6:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    17aa:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    17ae:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    17b2:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    17b6:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    17ba:	48 8b 20             	mov    (%rax),%rsp
    17bd:	4c 8b 68 40          	mov    0x40(%rax),%r13
    17c1:	48 8b 48 08          	mov    0x8(%rax),%rcx
    17c5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    17c9:	4c 8b 40 18          	mov    0x18(%rax),%r8
    17cd:	4c 8b 48 20          	mov    0x20(%rax),%r9
    17d1:	4c 8b 50 28          	mov    0x28(%rax),%r10
    17d5:	4c 8b 58 30          	mov    0x30(%rax),%r11
    17d9:	4c 8b 60 38          	mov    0x38(%rax),%r12
    17dd:	4c 8b 70 48          	mov    0x48(%rax),%r14
    17e1:	4c 8b 78 50          	mov    0x50(%rax),%r15
    17e5:	48 8b 68 58          	mov    0x58(%rax),%rbp
    17e9:	48 8b 78 60          	mov    0x60(%rax),%rdi
    17ed:	48 8b 70 68          	mov    0x68(%rax),%rsi
    17f1:	ff e1                	jmpq   *%rcx

00000000000017f3 <target1216>:
    17f3:	e9 21 ff ff ff       	jmpq   1719 <mpthread2+0x189>
}
    17f8:	e8 33 f1 ff ff       	callq  930 <__stack_chk_fail@plt>
    17fd:	0f 1f 00             	nopl   (%rax)

0000000000001800 <Thread_Init>:
  _thread->context.mxcsr = 0;
    1800:	48 c7 87 70 10 00 00 	movq   $0x0,0x1070(%rdi)
    1807:	00 00 00 00 
}
    180b:	c3                   	retq   
    180c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001810 <Thread_Destory>:
    1810:	f3 c3                	repz retq 
    1812:	0f 1f 40 00          	nopl   0x0(%rax)
    1816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    181d:	00 00 00 

0000000000001820 <UserThreading_Init>:
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1820:	55                   	push   %rbp
    1821:	53                   	push   %rbx
    1822:	89 f5                	mov    %esi,%ebp
    1824:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1827:	be 80 10 00 00       	mov    $0x1080,%esi
    182c:	bf 40 00 00 00       	mov    $0x40,%edi
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1831:	48 83 ec 08          	sub    $0x8,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1835:	e8 86 f1 ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->lastVal = !_id;
    183a:	85 ed                	test   %ebp,%ebp
    _uth->sp_exit_check = false;
    183c:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
    _uth->id = _id;
    1843:	89 ab 40 01 00 00    	mov    %ebp,0x140(%rbx)
    _uth->buf->context.mxcsr = 11;
    1849:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
    1850:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1854:	48 89 03             	mov    %rax,(%rbx)
    _uth->expVal = 1;
    1857:	c6 83 80 01 00 00 01 	movb   $0x1,0x180(%rbx)
    _uth->lastVal = !_id;
    185e:	0f 94 83 c0 01 00 00 	sete   0x1c0(%rbx)
}
    1865:	48 83 c4 08          	add    $0x8,%rsp
    1869:	5b                   	pop    %rbx
    186a:	5d                   	pop    %rbp
    186b:	c3                   	retq   
    186c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001870 <Scheduler>:
void Scheduler(UserThreading *_uth){
    1870:	41 54                	push   %r12
    1872:	55                   	push   %rbp
    1873:	48 8d 35 bb 04 00 00 	lea    0x4bb(%rip),%rsi        # 1d35 <_IO_stdin_used+0x125>
    187a:	53                   	push   %rbx
    187b:	8b 97 40 01 00 00    	mov    0x140(%rdi),%edx
    1881:	48 89 fd             	mov    %rdi,%rbp
    1884:	31 c0                	xor    %eax,%eax
    1886:	bf 01 00 00 00       	mov    $0x1,%edi
    188b:	e8 e0 f0 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1890:	be 80 10 00 00       	mov    $0x1080,%esi
    1895:	bf 40 00 00 00       	mov    $0x40,%edi
    189a:	e8 21 f1 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    189f:	4c 8b 65 00          	mov    0x0(%rbp),%r12
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    18a3:	48 89 85 c0 00 00 00 	mov    %rax,0xc0(%rbp)
  _thread->context.mxcsr = 0;
    18aa:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    18b1:	00 00 00 00 
    18b5:	0f 1f 00             	nopl   (%rax)
  while (_uth->buf->context.mxcsr == 11);
    18b8:	49 8b 94 24 70 10 00 	mov    0x1070(%r12),%rdx
    18bf:	00 
    18c0:	48 83 fa 0b          	cmp    $0xb,%rdx
    18c4:	74 f2                	je     18b8 <Scheduler+0x48>
  Context *t = &(_uth->buf->context);
    18c6:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    18cd:	48 8d 35 77 04 00 00 	lea    0x477(%rip),%rsi        # 1d4b <_IO_stdin_used+0x13b>
  Context *s = &(_uth->sched_thread->context);
    18d4:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
    18db:	4c 89 e2             	mov    %r12,%rdx
    18de:	bf 01 00 00 00       	mov    $0x1,%edi
    18e3:	31 c0                	xor    %eax,%eax
    18e5:	e8 86 f0 ff ff       	callq  970 <__printf_chk@plt>
    18ea:	eb 1e                	jmp    190a <Scheduler+0x9a>
    18ec:	0f 1f 40 00          	nopl   0x0(%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    18f0:	48 8b 45 00          	mov    0x0(%rbp),%rax
    18f4:	48 8b 88 70 10 00 00 	mov    0x1070(%rax),%rcx
    18fb:	0f b6 85 80 01 00 00 	movzbl 0x180(%rbp),%eax
    1902:	48 39 c1             	cmp    %rax,%rcx
    1905:	48 89 c2             	mov    %rax,%rdx
    1908:	74 16                	je     1920 <Scheduler+0xb0>
  while (!_uth->sp_exit_check){
    190a:	0f b6 95 00 01 00 00 	movzbl 0x100(%rbp),%edx
    1911:	84 d2                	test   %dl,%dl
    1913:	74 db                	je     18f0 <Scheduler+0x80>
}
    1915:	5b                   	pop    %rbx
    1916:	5d                   	pop    %rbp
    1917:	41 5c                	pop    %r12
    1919:	c3                   	retq   
    191a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
          _uth->expVal = !_uth->expVal;
    1920:	83 f2 01             	xor    $0x1,%edx
            __asm__ __volatile__(
    1923:	4c 89 e0             	mov    %r12,%rax
          _uth->expVal = !_uth->expVal;
    1926:	88 95 80 01 00 00    	mov    %dl,0x180(%rbp)
            __asm__ __volatile__(
    192c:	48 89 23             	mov    %rsp,(%rbx)
    192f:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 19a3 <target1410>
    1936:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    193a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    193e:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    1942:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1946:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    194a:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    194e:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    1952:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1956:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    195a:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    195e:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    1962:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1966:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    196a:	48 8b 20             	mov    (%rax),%rsp
    196d:	4c 8b 68 40          	mov    0x40(%rax),%r13
    1971:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1975:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1979:	4c 8b 40 18          	mov    0x18(%rax),%r8
    197d:	4c 8b 48 20          	mov    0x20(%rax),%r9
    1981:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1985:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1989:	4c 8b 60 38          	mov    0x38(%rax),%r12
    198d:	4c 8b 70 48          	mov    0x48(%rax),%r14
    1991:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1995:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1999:	48 8b 78 60          	mov    0x60(%rax),%rdi
    199d:	48 8b 70 68          	mov    0x68(%rax),%rsi
    19a1:	ff e1                	jmpq   *%rcx

00000000000019a3 <target1410>:
    19a3:	e9 62 ff ff ff       	jmpq   190a <Scheduler+0x9a>
    19a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19af:	00 

00000000000019b0 <UserThreading_Destory>:
}
    19b0:	f3 c3                	repz retq 
    19b2:	0f 1f 40 00          	nopl   0x0(%rax)
    19b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19bd:	00 00 00 

00000000000019c0 <Yield>:
  Context *s = &(_uth->sched_thread->context);
    19c0:	48 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%rax
void Yield(UserThreading *_uth){
    19c7:	53                   	push   %rbx
  Context *s = &(_uth->sched_thread->context);
    19c8:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    19cf:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
    19d6:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    19dc:	80 bf c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdi)
    19e3:	0f 84 8f 00 00 00    	je     1a78 <target21443+0x9>
      _uth->lastVal = !_uth->lastVal;
    19e9:	c6 87 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdi)
          __asm__ __volatile__(
    19f0:	48 89 20             	mov    %rsp,(%rax)
    19f3:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1a6f <target21443>
    19fa:	48 89 48 08          	mov    %rcx,0x8(%rax)
    19fe:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1a02:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1a06:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1a0a:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1a0e:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1a12:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1a16:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1a1a:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1a1e:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1a22:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1a26:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1a2a:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1a2e:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    1a35:	00 
    1a36:	48 8b 23             	mov    (%rbx),%rsp
    1a39:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1a3d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1a41:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1a45:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1a49:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1a4d:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1a51:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1a55:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1a59:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1a5d:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1a61:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1a65:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1a69:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1a6d:	ff e1                	jmpq   *%rcx

0000000000001a6f <target21443>:
}
    1a6f:	5b                   	pop    %rbx
    1a70:	c3                   	retq   
    1a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    _uth->lastVal = !_uth->lastVal;
    1a78:	c6 87 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdi)
    __asm__ __volatile__(
    1a7f:	48 89 20             	mov    %rsp,(%rax)
    1a82:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1afe <target21456>
    1a89:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1a8d:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1a91:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1a95:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1a99:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1a9d:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1aa1:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1aa5:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1aa9:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1aad:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1ab1:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1ab5:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1ab9:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1abd:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    1ac4:	00 
    1ac5:	48 8b 23             	mov    (%rbx),%rsp
    1ac8:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1acc:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1ad0:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1ad4:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1ad8:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1adc:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1ae0:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1ae4:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1ae8:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1aec:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1af0:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1af4:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1af8:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1afc:	ff e1                	jmpq   *%rcx

0000000000001afe <target21456>:
}
    1afe:	5b                   	pop    %rbx
    1aff:	c3                   	retq   

0000000000001b00 <makeThread>:
int makeThread(UserThreading *_uth, void (*fn)()){
    1b00:	55                   	push   %rbp
    1b01:	53                   	push   %rbx
    1b02:	48 89 f5             	mov    %rsi,%rbp
    1b05:	48 89 fb             	mov    %rdi,%rbx
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1b08:	be 80 10 00 00       	mov    $0x1080,%esi
    1b0d:	bf 80 00 00 00       	mov    $0x80,%edi
int makeThread(UserThreading *_uth, void (*fn)()){
    1b12:	48 83 ec 08          	sub    $0x8,%rsp
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1b16:	e8 a5 ee ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    1b1b:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
    1b22:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1b29:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
    1b2d:	48 89 a8 08 10 00 00 	mov    %rbp,0x1008(%rax)
  new_thread->context.mxcsr = 1;
    1b34:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
    1b3b:	01 00 00 00 
  _uth->buf = new_thread; 
    1b3f:	48 89 03             	mov    %rax,(%rbx)
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    1b42:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
}
    1b49:	48 83 c4 08          	add    $0x8,%rsp
    1b4d:	5b                   	pop    %rbx
    1b4e:	5d                   	pop    %rbp
    1b4f:	c3                   	retq   

0000000000001b50 <allSchedulersExit>:
    if (i != threadId )
    1b50:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1b57:	ff 
    1b58:	85 c0                	test   %eax,%eax
    1b5a:	74 07                	je     1b63 <allSchedulersExit+0x13>
      UserThreadingVec[i].sp_exit_check = true;
    1b5c:	c6 05 1d 19 20 00 01 	movb   $0x1,0x20191d(%rip)        # 203480 <UserThreadingVec+0x100>
    if (i != threadId )
    1b63:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1b6a:	ff 
    1b6b:	83 f8 01             	cmp    $0x1,%eax
    1b6e:	74 07                	je     1b77 <allSchedulersExit+0x27>
      UserThreadingVec[i].sp_exit_check = true;
    1b70:	c6 05 09 1b 20 00 01 	movb   $0x1,0x201b09(%rip)        # 203680 <UserThreadingVec+0x300>
    1b77:	48 8d 3d db 01 00 00 	lea    0x1db(%rip),%rdi        # 1d59 <_IO_stdin_used+0x149>
    1b7e:	e9 9d ed ff ff       	jmpq   920 <puts@plt>
    1b83:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1b8a:	00 00 00 
    1b8d:	0f 1f 00             	nopl   (%rax)

0000000000001b90 <__libc_csu_init>:
    1b90:	41 57                	push   %r15
    1b92:	41 56                	push   %r14
    1b94:	49 89 d7             	mov    %rdx,%r15
    1b97:	41 55                	push   %r13
    1b99:	41 54                	push   %r12
    1b9b:	4c 8d 25 a6 11 20 00 	lea    0x2011a6(%rip),%r12        # 202d48 <__frame_dummy_init_array_entry>
    1ba2:	55                   	push   %rbp
    1ba3:	48 8d 2d a6 11 20 00 	lea    0x2011a6(%rip),%rbp        # 202d50 <__init_array_end>
    1baa:	53                   	push   %rbx
    1bab:	41 89 fd             	mov    %edi,%r13d
    1bae:	49 89 f6             	mov    %rsi,%r14
    1bb1:	4c 29 e5             	sub    %r12,%rbp
    1bb4:	48 83 ec 08          	sub    $0x8,%rsp
    1bb8:	48 c1 fd 03          	sar    $0x3,%rbp
    1bbc:	e8 1f ed ff ff       	callq  8e0 <_init>
    1bc1:	48 85 ed             	test   %rbp,%rbp
    1bc4:	74 20                	je     1be6 <__libc_csu_init+0x56>
    1bc6:	31 db                	xor    %ebx,%ebx
    1bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bcf:	00 
    1bd0:	4c 89 fa             	mov    %r15,%rdx
    1bd3:	4c 89 f6             	mov    %r14,%rsi
    1bd6:	44 89 ef             	mov    %r13d,%edi
    1bd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1bdd:	48 83 c3 01          	add    $0x1,%rbx
    1be1:	48 39 dd             	cmp    %rbx,%rbp
    1be4:	75 ea                	jne    1bd0 <__libc_csu_init+0x40>
    1be6:	48 83 c4 08          	add    $0x8,%rsp
    1bea:	5b                   	pop    %rbx
    1beb:	5d                   	pop    %rbp
    1bec:	41 5c                	pop    %r12
    1bee:	41 5d                	pop    %r13
    1bf0:	41 5e                	pop    %r14
    1bf2:	41 5f                	pop    %r15
    1bf4:	c3                   	retq   
    1bf5:	90                   	nop
    1bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1bfd:	00 00 00 

0000000000001c00 <__libc_csu_fini>:
    1c00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001c04 <_fini>:
    1c04:	48 83 ec 08          	sub    $0x8,%rsp
    1c08:	48 83 c4 08          	add    $0x8,%rsp
    1c0c:	c3                   	retq   

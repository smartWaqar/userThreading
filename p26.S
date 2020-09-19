
./program26:     file format elf64-x86-64


Disassembly of section .init:

00000000000008e0 <_init>:
 8e0:	48 83 ec 08          	sub    $0x8,%rsp
 8e4:	48 8b 05 fd 16 20 00 	mov    0x2016fd(%rip),%rax        # 201fe8 <__gmon_start__>
 8eb:	48 85 c0             	test   %rax,%rax
 8ee:	74 02                	je     8f2 <_init+0x12>
 8f0:	ff d0                	callq  *%rax
 8f2:	48 83 c4 08          	add    $0x8,%rsp
 8f6:	c3                   	retq   

Disassembly of section .plt:

0000000000000900 <.plt>:
 900:	ff 35 5a 16 20 00    	pushq  0x20165a(%rip)        # 201f60 <_GLOBAL_OFFSET_TABLE_+0x8>
 906:	ff 25 5c 16 20 00    	jmpq   *0x20165c(%rip)        # 201f68 <_GLOBAL_OFFSET_TABLE_+0x10>
 90c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000910 <pthread_create@plt>:
 910:	ff 25 5a 16 20 00    	jmpq   *0x20165a(%rip)        # 201f70 <pthread_create@GLIBC_2.2.5>
 916:	68 00 00 00 00       	pushq  $0x0
 91b:	e9 e0 ff ff ff       	jmpq   900 <.plt>

0000000000000920 <puts@plt>:
 920:	ff 25 52 16 20 00    	jmpq   *0x201652(%rip)        # 201f78 <puts@GLIBC_2.2.5>
 926:	68 01 00 00 00       	pushq  $0x1
 92b:	e9 d0 ff ff ff       	jmpq   900 <.plt>

0000000000000930 <__stack_chk_fail@plt>:
 930:	ff 25 4a 16 20 00    	jmpq   *0x20164a(%rip)        # 201f80 <__stack_chk_fail@GLIBC_2.4>
 936:	68 02 00 00 00       	pushq  $0x2
 93b:	e9 c0 ff ff ff       	jmpq   900 <.plt>

0000000000000940 <pthread_setaffinity_np@plt>:
 940:	ff 25 42 16 20 00    	jmpq   *0x201642(%rip)        # 201f88 <pthread_setaffinity_np@GLIBC_2.3.4>
 946:	68 03 00 00 00       	pushq  $0x3
 94b:	e9 b0 ff ff ff       	jmpq   900 <.plt>

0000000000000950 <strtol@plt>:
 950:	ff 25 3a 16 20 00    	jmpq   *0x20163a(%rip)        # 201f90 <strtol@GLIBC_2.2.5>
 956:	68 04 00 00 00       	pushq  $0x4
 95b:	e9 a0 ff ff ff       	jmpq   900 <.plt>

0000000000000960 <pthread_barrier_init@plt>:
 960:	ff 25 32 16 20 00    	jmpq   *0x201632(%rip)        # 201f98 <pthread_barrier_init@GLIBC_2.2.5>
 966:	68 05 00 00 00       	pushq  $0x5
 96b:	e9 90 ff ff ff       	jmpq   900 <.plt>

0000000000000970 <__printf_chk@plt>:
 970:	ff 25 2a 16 20 00    	jmpq   *0x20162a(%rip)        # 201fa0 <__printf_chk@GLIBC_2.3.4>
 976:	68 06 00 00 00       	pushq  $0x6
 97b:	e9 80 ff ff ff       	jmpq   900 <.plt>

0000000000000980 <pthread_barrier_destroy@plt>:
 980:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 201fa8 <pthread_barrier_destroy@GLIBC_2.2.5>
 986:	68 07 00 00 00       	pushq  $0x7
 98b:	e9 70 ff ff ff       	jmpq   900 <.plt>

0000000000000990 <pthread_join@plt>:
 990:	ff 25 1a 16 20 00    	jmpq   *0x20161a(%rip)        # 201fb0 <pthread_join@GLIBC_2.2.5>
 996:	68 08 00 00 00       	pushq  $0x8
 99b:	e9 60 ff ff ff       	jmpq   900 <.plt>

00000000000009a0 <sched_getcpu@plt>:
 9a0:	ff 25 12 16 20 00    	jmpq   *0x201612(%rip)        # 201fb8 <sched_getcpu@GLIBC_2.6>
 9a6:	68 09 00 00 00       	pushq  $0x9
 9ab:	e9 50 ff ff ff       	jmpq   900 <.plt>

00000000000009b0 <exit@plt>:
 9b0:	ff 25 0a 16 20 00    	jmpq   *0x20160a(%rip)        # 201fc0 <exit@GLIBC_2.2.5>
 9b6:	68 0a 00 00 00       	pushq  $0xa
 9bb:	e9 40 ff ff ff       	jmpq   900 <.plt>

00000000000009c0 <aligned_alloc@plt>:
 9c0:	ff 25 02 16 20 00    	jmpq   *0x201602(%rip)        # 201fc8 <aligned_alloc@GLIBC_2.16>
 9c6:	68 0b 00 00 00       	pushq  $0xb
 9cb:	e9 30 ff ff ff       	jmpq   900 <.plt>

00000000000009d0 <pthread_barrier_wait@plt>:
 9d0:	ff 25 fa 15 20 00    	jmpq   *0x2015fa(%rip)        # 201fd0 <pthread_barrier_wait@GLIBC_2.2.5>
 9d6:	68 0c 00 00 00       	pushq  $0xc
 9db:	e9 20 ff ff ff       	jmpq   900 <.plt>

Disassembly of section .plt.got:

00000000000009e0 <__cxa_finalize@plt>:
 9e0:	ff 25 12 16 20 00    	jmpq   *0x201612(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
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
     a18:	89 05 e2 1f 20 00    	mov    %eax,0x201fe2(%rip)        # 202a00 <coreId_1>
     a1e:	e8 2d ff ff ff       	callq  950 <strtol@plt>

  coreId_1 = atoi(argv[1]);
  coreId_2 = atoi(argv[2]);


  if (coreId_1 == 5)
     a23:	83 3d d6 1f 20 00 05 	cmpl   $0x5,0x201fd6(%rip)        # 202a00 <coreId_1>
     a2a:	89 05 f8 1f 20 00    	mov    %eax,0x201ff8(%rip)        # 202a28 <coreId_2>
     a30:	75 0a                	jne    a3c <main+0x4c>
    special_global = 1;
     a32:	c7 05 e4 18 20 00 01 	movl   $0x1,0x2018e4(%rip)        # 202320 <special_global>
     a39:	00 00 00 
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
     a3c:	48 8d 3d 75 0e 00 00 	lea    0xe75(%rip),%rdi        # 18b8 <_IO_stdin_used+0xf8>
  new_thread->context.rip = (uint64_t) fn;
     a43:	48 8d 1d 36 03 00 00 	lea    0x336(%rip),%rbx        # d80 <pfc>
     a4a:	e8 d1 fe ff ff       	callq  920 <puts@plt>
  #else
    printf("REP_NOPS not enabled\n");
  #endif


  pthread_barrier_init (&barrier, NULL, 2);
     a4f:	48 8d 3d 4a 19 20 00 	lea    0x20194a(%rip),%rdi        # 2023a0 <barrier>
     a56:	ba 02 00 00 00       	mov    $0x2,%edx
     a5b:	31 f6                	xor    %esi,%esi
     a5d:	e8 fe fe ff ff       	callq  960 <pthread_barrier_init@plt>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a62:	be 80 10 00 00       	mov    $0x1080,%esi
     a67:	bf 40 00 00 00       	mov    $0x40,%edi

  threadCount = 2;
     a6c:	c7 05 12 19 20 00 02 	movl   $0x2,0x201912(%rip)        # 202388 <threadCount>
     a73:	00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a76:	e8 45 ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     a7b:	c6 05 7e 1a 20 00 00 	movb   $0x0,0x201a7e(%rip)        # 202500 <UserThreadingVec+0x100>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a82:	be 80 10 00 00       	mov    $0x1080,%esi
     a87:	bf 40 00 00 00       	mov    $0x40,%edi
    _uth->buf->context.mxcsr = 11;
     a8c:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
     a93:	0b 00 00 00 
    _uth->id = _id;
     a97:	c7 05 9f 1a 20 00 00 	movl   $0x0,0x201a9f(%rip)        # 202540 <UserThreadingVec+0x140>
     a9e:	00 00 00 
    _uth->expVal = 1;
     aa1:	c6 05 d8 1a 20 00 01 	movb   $0x1,0x201ad8(%rip)        # 202580 <UserThreadingVec+0x180>
    _uth->lastVal = !_id;
     aa8:	c6 05 11 1b 20 00 01 	movb   $0x1,0x201b11(%rip)        # 2025c0 <UserThreadingVec+0x1c0>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     aaf:	e8 0c ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     ab4:	c6 05 45 1c 20 00 00 	movb   $0x0,0x201c45(%rip)        # 202700 <UserThreadingVec+0x300>
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     abb:	be 80 10 00 00       	mov    $0x1080,%esi
     ac0:	bf 80 00 00 00       	mov    $0x80,%edi
    _uth->buf->context.mxcsr = 11;
     ac5:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
     acc:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     ad0:	48 89 05 29 1b 20 00 	mov    %rax,0x201b29(%rip)        # 202600 <UserThreadingVec+0x200>
    _uth->id = _id;
     ad7:	c7 05 5f 1c 20 00 01 	movl   $0x1,0x201c5f(%rip)        # 202740 <UserThreadingVec+0x340>
     ade:	00 00 00 
    _uth->expVal = 1;
     ae1:	c6 05 98 1c 20 00 01 	movb   $0x1,0x201c98(%rip)        # 202780 <UserThreadingVec+0x380>
    _uth->lastVal = !_id;
     ae8:	c6 05 d1 1c 20 00 00 	movb   $0x0,0x201cd1(%rip)        # 2027c0 <UserThreadingVec+0x3c0>
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
     b18:	48 89 05 e1 18 20 00 	mov    %rax,0x2018e1(%rip)        # 202400 <UserThreadingVec>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     b1f:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
/* rdtsc */
extern __inline unsigned long long
__attribute__((__gnu_inline__, __always_inline__, __artificial__))
__rdtsc (void)
{
  return __builtin_ia32_rdtsc ();
     b26:	0f 31                	rdtsc  
     b28:	48 8d 35 9a 0d 00 00 	lea    0xd9a(%rip),%rsi        # 18c9 <_IO_stdin_used+0x109>
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
     b45:	48 8d 15 b4 07 00 00 	lea    0x7b4(%rip),%rdx        # 1300 <mpthread1>
     b4c:	48 8d 3d c5 1e 20 00 	lea    0x201ec5(%rip),%rdi        # 202a18 <threadId_1>
     b53:	31 c9                	xor    %ecx,%ecx
     b55:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[0] = false;
     b57:	c6 05 ce 1e 20 00 00 	movb   $0x0,0x201ece(%rip)        # 202a2c <OSThreadAvailable>
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b5e:	e8 ad fd ff ff       	callq  910 <pthread_create@plt>
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b63:	48 8d 15 c6 08 00 00 	lea    0x8c6(%rip),%rdx        # 1430 <mpthread2>
     b6a:	48 8d 3d 0f 18 20 00 	lea    0x20180f(%rip),%rdi        # 202380 <threadId_2>
     b71:	b9 01 00 00 00       	mov    $0x1,%ecx
     b76:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[1] = false;
     b78:	c6 05 ae 1e 20 00 00 	movb   $0x0,0x201eae(%rip)        # 202a2d <OSThreadAvailable+0x1>
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b7f:	e8 8c fd ff ff       	callq  910 <pthread_create@plt>

  pthread_join(threadId_1, NULL); 
     b84:	48 8b 3d 8d 1e 20 00 	mov    0x201e8d(%rip),%rdi        # 202a18 <threadId_1>
     b8b:	31 f6                	xor    %esi,%esi
     b8d:	e8 fe fd ff ff       	callq  990 <pthread_join@plt>
  pthread_join(threadId_2, NULL);
     b92:	48 8b 3d e7 17 20 00 	mov    0x2017e7(%rip),%rdi        # 202380 <threadId_2>
     b99:	31 f6                	xor    %esi,%esi
     b9b:	e8 f0 fd ff ff       	callq  990 <pthread_join@plt>
     ba0:	0f 31                	rdtsc  
  uint64_t timeCounter_end = __rdtsc();
  //printf("Execution time per opertation: %lu clock cycles\n", 
  //  (timeCounter_end - timeCounter_start) / (10000000) );


  pthread_barrier_destroy(&barrier);
     ba2:	48 8d 3d f7 17 20 00 	lea    0x2017f7(%rip),%rdi        # 2023a0 <barrier>
     ba9:	e8 d2 fd ff ff       	callq  980 <pthread_barrier_destroy@plt>
     bae:	48 8b 15 73 17 20 00 	mov    0x201773(%rip),%rdx        # 202328 <globalVariable>
     bb5:	48 8d 35 1d 0d 00 00 	lea    0xd1d(%rip),%rsi        # 18d9 <_IO_stdin_used+0x119>
     bbc:	bf 01 00 00 00       	mov    $0x1,%edi
     bc1:	31 c0                	xor    %eax,%eax
     bc3:	e8 a8 fd ff ff       	callq  970 <__printf_chk@plt>
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
     bc8:	48 8b 15 b1 16 20 00 	mov    0x2016b1(%rip),%rdx        # 202280 <global_var1>
     bcf:	48 8d 35 19 0d 00 00 	lea    0xd19(%rip),%rsi        # 18ef <_IO_stdin_used+0x12f>
     bd6:	bf 01 00 00 00       	mov    $0x1,%edi
     bdb:	31 c0                	xor    %eax,%eax
     bdd:	e8 8e fd ff ff       	callq  970 <__printf_chk@plt>
  printf("global_var2: %lld \n", global_var2); 
     be2:	48 8b 15 17 16 20 00 	mov    0x201617(%rip),%rdx        # 202200 <global_var2>
     be9:	48 8d 35 12 0d 00 00 	lea    0xd12(%rip),%rsi        # 1902 <_IO_stdin_used+0x142>
     bf0:	bf 01 00 00 00       	mov    $0x1,%edi
     bf5:	31 c0                	xor    %eax,%eax
     bf7:	e8 74 fd ff ff       	callq  970 <__printf_chk@plt>
  //printf("Time from thead Counters");
  // smalller of start time and larger of end time
 
  uint64_t thread_starttime = 
  thread1_starttime < thread2_starttime ? thread1_starttime : thread2_starttime; 
  uint64_t thread_endtime = 
     bfc:	48 8b 15 35 1e 20 00 	mov    0x201e35(%rip),%rdx        # 202a38 <thread1_endtime>
     c03:	48 39 15 06 1e 20 00 	cmp    %rdx,0x201e06(%rip)        # 202a10 <thread2_endtime>
  thread1_endtime > thread2_endtime ? thread1_endtime : thread2_endtime;

  printf("Execution time is %lu clock cycles\n",
     c0a:	48 b9 bd 42 7a e5 d5 	movabs $0xd6bf94d5e57a42bd,%rcx
     c11:	94 bf d6 
  uint64_t thread_endtime = 
     c14:	48 0f 43 15 f4 1d 20 	cmovae 0x201df4(%rip),%rdx        # 202a10 <thread2_endtime>
     c1b:	00 
  uint64_t thread_starttime = 
     c1c:	48 8b 05 e5 1d 20 00 	mov    0x201de5(%rip),%rax        # 202a08 <thread1_starttime>
     c23:	48 8d 35 f6 0b 00 00 	lea    0xbf6(%rip),%rsi        # 1820 <_IO_stdin_used+0x60>
     c2a:	48 39 05 ff 1d 20 00 	cmp    %rax,0x201dff(%rip)        # 202a30 <thread2_starttime>
     c31:	bf 01 00 00 00       	mov    $0x1,%edi
     c36:	48 0f 46 05 f2 1d 20 	cmovbe 0x201df2(%rip),%rax        # 202a30 <thread2_starttime>
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
     c56:	48 8d 3d 93 0b 00 00 	lea    0xb93(%rip),%rdi        # 17f0 <_IO_stdin_used+0x30>
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
     c7f:	4c 8d 05 2a 0b 00 00 	lea    0xb2a(%rip),%r8        # 17b0 <__libc_csu_fini>
     c86:	48 8d 0d b3 0a 00 00 	lea    0xab3(%rip),%rcx        # 1740 <__libc_csu_init>
     c8d:	48 8d 3d 5c fd ff ff 	lea    -0x2a4(%rip),%rdi        # 9f0 <main>
     c94:	ff 15 46 13 20 00    	callq  *0x201346(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     c9a:	f4                   	hlt    
     c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ca0 <deregister_tm_clones>:
     ca0:	48 8d 3d 69 13 20 00 	lea    0x201369(%rip),%rdi        # 202010 <__TMC_END__>
     ca7:	55                   	push   %rbp
     ca8:	48 8d 05 61 13 20 00 	lea    0x201361(%rip),%rax        # 202010 <__TMC_END__>
     caf:	48 39 f8             	cmp    %rdi,%rax
     cb2:	48 89 e5             	mov    %rsp,%rbp
     cb5:	74 19                	je     cd0 <deregister_tm_clones+0x30>
     cb7:	48 8b 05 1a 13 20 00 	mov    0x20131a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
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
     ce0:	48 8d 3d 29 13 20 00 	lea    0x201329(%rip),%rdi        # 202010 <__TMC_END__>
     ce7:	48 8d 35 22 13 20 00 	lea    0x201322(%rip),%rsi        # 202010 <__TMC_END__>
     cee:	55                   	push   %rbp
     cef:	48 29 fe             	sub    %rdi,%rsi
     cf2:	48 89 e5             	mov    %rsp,%rbp
     cf5:	48 c1 fe 03          	sar    $0x3,%rsi
     cf9:	48 89 f0             	mov    %rsi,%rax
     cfc:	48 c1 e8 3f          	shr    $0x3f,%rax
     d00:	48 01 c6             	add    %rax,%rsi
     d03:	48 d1 fe             	sar    %rsi
     d06:	74 18                	je     d20 <register_tm_clones+0x40>
     d08:	48 8b 05 e1 12 20 00 	mov    0x2012e1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
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
     d30:	80 3d 49 13 20 00 00 	cmpb   $0x0,0x201349(%rip)        # 202080 <completed.7698>
     d37:	75 2f                	jne    d68 <__do_global_dtors_aux+0x38>
     d39:	48 83 3d b7 12 20 00 	cmpq   $0x0,0x2012b7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     d40:	00 
     d41:	55                   	push   %rbp
     d42:	48 89 e5             	mov    %rsp,%rbp
     d45:	74 0c                	je     d53 <__do_global_dtors_aux+0x23>
     d47:	48 8b 3d ba 12 20 00 	mov    0x2012ba(%rip),%rdi        # 202008 <__dso_handle>
     d4e:	e8 8d fc ff ff       	callq  9e0 <__cxa_finalize@plt>
     d53:	e8 48 ff ff ff       	callq  ca0 <deregister_tm_clones>
     d58:	c6 05 21 13 20 00 01 	movb   $0x1,0x201321(%rip)        # 202080 <completed.7698>
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
     d80:	55                   	push   %rbp
     d81:	53                   	push   %rbx
     d82:	48 8d 35 3f 0a 00 00 	lea    0xa3f(%rip),%rsi        # 17c8 <_IO_stdin_used+0x8>
     d89:	bf 01 00 00 00       	mov    $0x1,%edi
     d8e:	31 c0                	xor    %eax,%eax
     d90:	48 8d 2d 69 16 20 00 	lea    0x201669(%rip),%rbp        # 202400 <UserThreadingVec>
     d97:	48 83 ec 08          	sub    $0x8,%rsp
    printf("parentId: %d --------------------\n", threadId);
     d9b:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
     da2:	ff 
     da3:	e8 c8 fb ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     da8:	48 8b 05 51 16 20 00 	mov    0x201651(%rip),%rax        # 202400 <UserThreadingVec>
    for (int i=0; i < 10000000; i++){
     daf:	31 f6                	xor    %esi,%esi
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     db1:	48 89 05 c8 18 20 00 	mov    %rax,0x2018c8(%rip)        # 202680 <UserThreadingVec+0x280>
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;
     db8:	48 8b 05 41 18 20 00 	mov    0x201841(%rip),%rax        # 202600 <UserThreadingVec+0x200>
     dbf:	48 89 05 ba 16 20 00 	mov    %rax,0x2016ba(%rip)        # 202480 <UserThreadingVec+0x80>
     dc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     dcd:	00 00 00 
        if (threadId == 0)
     dd0:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     dd7:	ff 
     dd8:	85 c0                	test   %eax,%eax
     dda:	0f 85 ab 02 00 00    	jne    108b <target2179+0x25>
          global_var1++;
     de0:	48 8b 05 99 14 20 00 	mov    0x201499(%rip),%rax        # 202280 <global_var1>
     de7:	48 83 c0 01          	add    $0x1,%rax
     deb:	48 89 05 8e 14 20 00 	mov    %rax,0x20148e(%rip)        # 202280 <global_var1>
      Yield(&UserThreadingVec[threadId]); 
     df2:	64 48 63 14 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rdx
     df9:	ff ff 
  Context *s = &(_uth->sched_thread->context);
     dfb:	48 c1 e2 09          	shl    $0x9,%rdx
     dff:	48 01 ea             	add    %rbp,%rdx
     e02:	48 8b 82 c0 00 00 00 	mov    0xc0(%rdx),%rax
     e09:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
     e10:	48 8b 82 80 00 00 00 	mov    0x80(%rdx),%rax
     e17:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
     e1d:	80 ba c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdx)
     e24:	0f 85 b6 01 00 00    	jne    fe0 <target2138+0x13>
    _uth->lastVal = !_uth->lastVal;
     e2a:	c6 82 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdx)
    __asm__ __volatile__(
     e31:	48 89 20             	mov    %rsp,(%rax)
     e34:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # eb0 <target277>
     e3b:	48 89 48 08          	mov    %rcx,0x8(%rax)
     e3f:	48 89 50 10          	mov    %rdx,0x10(%rax)
     e43:	4c 89 40 18          	mov    %r8,0x18(%rax)
     e47:	4c 89 48 20          	mov    %r9,0x20(%rax)
     e4b:	4c 89 50 28          	mov    %r10,0x28(%rax)
     e4f:	4c 89 58 30          	mov    %r11,0x30(%rax)
     e53:	4c 89 60 38          	mov    %r12,0x38(%rax)
     e57:	4c 89 68 40          	mov    %r13,0x40(%rax)
     e5b:	4c 89 70 48          	mov    %r14,0x48(%rax)
     e5f:	4c 89 78 50          	mov    %r15,0x50(%rax)
     e63:	48 89 68 58          	mov    %rbp,0x58(%rax)
     e67:	48 89 78 60          	mov    %rdi,0x60(%rax)
     e6b:	48 89 70 68          	mov    %rsi,0x68(%rax)
     e6f:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
     e76:	00 
     e77:	48 8b 23             	mov    (%rbx),%rsp
     e7a:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     e7e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     e82:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     e86:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     e8a:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     e8e:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     e92:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     e96:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     e9a:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     e9e:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     ea2:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
     ea6:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
     eaa:	48 8b 73 68          	mov    0x68(%rbx),%rsi
     eae:	ff e1                	jmpq   *%rcx

0000000000000eb0 <target277>:
      myglobal = i;
     eb0:	89 35 4a 12 20 00    	mov    %esi,0x20124a(%rip)        # 202100 <myglobal>
    for (int i=0; i < 10000000; i++){
     eb6:	83 c6 01             	add    $0x1,%esi
     eb9:	81 fe 80 96 98 00    	cmp    $0x989680,%esi
     ebf:	0f 85 0b ff ff ff    	jne    dd0 <pfc+0x50>
     ec5:	48 8d 3d 7c 09 00 00 	lea    0x97c(%rip),%rdi        # 1848 <_IO_stdin_used+0x88>
     ecc:	e8 4f fa ff ff       	callq  920 <puts@plt>
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;
     ed1:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     ed8:	ff 
     ed9:	83 c0 01             	add    $0x1,%eax
     edc:	89 c2                	mov    %eax,%edx
     ede:	c1 ea 1f             	shr    $0x1f,%edx
     ee1:	01 d0                	add    %edx,%eax
     ee3:	83 e0 01             	and    $0x1,%eax
     ee6:	29 d0                	sub    %edx,%eax
     ee8:	48 98                	cltq   
     eea:	48 c1 e0 09          	shl    $0x9,%rax
     eee:	48 01 e8             	add    %rbp,%rax
     ef1:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    UserThreadingVec[threadId].sp_exit_check = true;
     ef8:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     eff:	ff ff 
     f01:	48 c1 e0 09          	shl    $0x9,%rax
     f05:	48 01 e8             	add    %rbp,%rax
     f08:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    Yield(&UserThreadingVec[threadId]);
     f0f:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     f16:	ff ff 
  Context *s = &(_uth->sched_thread->context);
     f18:	48 c1 e0 09          	shl    $0x9,%rax
     f1c:	48 01 c5             	add    %rax,%rbp
     f1f:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
     f26:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
     f2d:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
     f34:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
     f3a:	80 bd c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rbp)
     f41:	0f 84 5b 01 00 00    	je     10a2 <target2179+0x3c>
      _uth->lastVal = !_uth->lastVal;
     f47:	c6 85 c0 01 00 00 00 	movb   $0x0,0x1c0(%rbp)
          __asm__ __volatile__(
     f4e:	48 89 20             	mov    %rsp,(%rax)
     f51:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # fcd <target2138>
     f58:	48 89 48 08          	mov    %rcx,0x8(%rax)
     f5c:	48 89 50 10          	mov    %rdx,0x10(%rax)
     f60:	4c 89 40 18          	mov    %r8,0x18(%rax)
     f64:	4c 89 48 20          	mov    %r9,0x20(%rax)
     f68:	4c 89 50 28          	mov    %r10,0x28(%rax)
     f6c:	4c 89 58 30          	mov    %r11,0x30(%rax)
     f70:	4c 89 60 38          	mov    %r12,0x38(%rax)
     f74:	4c 89 68 40          	mov    %r13,0x40(%rax)
     f78:	4c 89 70 48          	mov    %r14,0x48(%rax)
     f7c:	4c 89 78 50          	mov    %r15,0x50(%rax)
     f80:	48 89 68 58          	mov    %rbp,0x58(%rax)
     f84:	48 89 78 60          	mov    %rdi,0x60(%rax)
     f88:	48 89 70 68          	mov    %rsi,0x68(%rax)
     f8c:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
     f93:	00 
     f94:	48 8b 23             	mov    (%rbx),%rsp
     f97:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     f9b:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     f9f:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     fa3:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     fa7:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     fab:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     faf:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     fb3:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     fb7:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     fbb:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     fbf:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
     fc3:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
     fc7:	48 8b 73 68          	mov    0x68(%rbx),%rsi
     fcb:	ff e1                	jmpq   *%rcx

0000000000000fcd <target2138>:
}
     fcd:	48 83 c4 08          	add    $0x8,%rsp
     fd1:	48 8d 3d 7a 08 00 00 	lea    0x87a(%rip),%rdi        # 1852 <_IO_stdin_used+0x92>
     fd8:	5b                   	pop    %rbx
     fd9:	5d                   	pop    %rbp
     fda:	e9 41 f9 ff ff       	jmpq   920 <puts@plt>
     fdf:	90                   	nop
      _uth->lastVal = !_uth->lastVal;
     fe0:	c6 82 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdx)
          __asm__ __volatile__(
     fe7:	48 89 20             	mov    %rsp,(%rax)
     fea:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1066 <target2179>
     ff1:	48 89 48 08          	mov    %rcx,0x8(%rax)
     ff5:	48 89 50 10          	mov    %rdx,0x10(%rax)
     ff9:	4c 89 40 18          	mov    %r8,0x18(%rax)
     ffd:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1001:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1005:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1009:	4c 89 60 38          	mov    %r12,0x38(%rax)
    100d:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1011:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1015:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1019:	48 89 68 58          	mov    %rbp,0x58(%rax)
    101d:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1021:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1025:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    102c:	00 
    102d:	48 8b 23             	mov    (%rbx),%rsp
    1030:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1034:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1038:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    103c:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1040:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1044:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1048:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    104c:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1050:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1054:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1058:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    105c:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1060:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1064:	ff e1                	jmpq   *%rcx

0000000000001066 <target2179>:
      myglobal = i;
    1066:	89 35 94 10 20 00    	mov    %esi,0x201094(%rip)        # 202100 <myglobal>
    for (int i=0; i < 10000000; i++){
    106c:	83 c6 01             	add    $0x1,%esi
    106f:	81 fe 80 96 98 00    	cmp    $0x989680,%esi
    1075:	0f 84 4a fe ff ff    	je     ec5 <target277+0x15>
        if (threadId == 0)
    107b:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1082:	ff 
    1083:	85 c0                	test   %eax,%eax
    1085:	0f 84 55 fd ff ff    	je     de0 <pfc+0x60>
          global_var2++;
    108b:	48 8b 05 6e 11 20 00 	mov    0x20116e(%rip),%rax        # 202200 <global_var2>
    1092:	48 83 c0 01          	add    $0x1,%rax
    1096:	48 89 05 63 11 20 00 	mov    %rax,0x201163(%rip)        # 202200 <global_var2>
    109d:	e9 50 fd ff ff       	jmpq   df2 <pfc+0x72>
    _uth->lastVal = !_uth->lastVal;
    10a2:	c6 85 c0 01 00 00 01 	movb   $0x1,0x1c0(%rbp)
    __asm__ __volatile__(
    10a9:	48 89 20             	mov    %rsp,(%rax)
    10ac:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1128 <target2214>
    10b3:	48 89 48 08          	mov    %rcx,0x8(%rax)
    10b7:	48 89 50 10          	mov    %rdx,0x10(%rax)
    10bb:	4c 89 40 18          	mov    %r8,0x18(%rax)
    10bf:	4c 89 48 20          	mov    %r9,0x20(%rax)
    10c3:	4c 89 50 28          	mov    %r10,0x28(%rax)
    10c7:	4c 89 58 30          	mov    %r11,0x30(%rax)
    10cb:	4c 89 60 38          	mov    %r12,0x38(%rax)
    10cf:	4c 89 68 40          	mov    %r13,0x40(%rax)
    10d3:	4c 89 70 48          	mov    %r14,0x48(%rax)
    10d7:	4c 89 78 50          	mov    %r15,0x50(%rax)
    10db:	48 89 68 58          	mov    %rbp,0x58(%rax)
    10df:	48 89 78 60          	mov    %rdi,0x60(%rax)
    10e3:	48 89 70 68          	mov    %rsi,0x68(%rax)
    10e7:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    10ee:	00 
    10ef:	48 8b 23             	mov    (%rbx),%rsp
    10f2:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    10f6:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    10fa:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    10fe:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1102:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1106:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    110a:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    110e:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1112:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1116:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    111a:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    111e:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1122:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1126:	ff e1                	jmpq   *%rcx

0000000000001128 <target2214>:
    1128:	e9 a0 fe ff ff       	jmpq   fcd <target2138>
    112d:	0f 1f 00             	nopl   (%rax)

0000000000001130 <Thread_Init>:
  _thread->context.mxcsr = 0;
    1130:	48 c7 87 70 10 00 00 	movq   $0x0,0x1070(%rdi)
    1137:	00 00 00 00 
}
    113b:	c3                   	retq   
    113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001140 <Thread_Destory>:
    1140:	f3 c3                	repz retq 
    1142:	0f 1f 40 00          	nopl   0x0(%rax)
    1146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    114d:	00 00 00 

0000000000001150 <UserThreading_Init>:
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1150:	55                   	push   %rbp
    1151:	53                   	push   %rbx
    1152:	89 f5                	mov    %esi,%ebp
    1154:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1157:	be 80 10 00 00       	mov    $0x1080,%esi
    115c:	bf 40 00 00 00       	mov    $0x40,%edi
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1161:	48 83 ec 08          	sub    $0x8,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1165:	e8 56 f8 ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->lastVal = !_id;
    116a:	85 ed                	test   %ebp,%ebp
    _uth->sp_exit_check = false;
    116c:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
    _uth->id = _id;
    1173:	89 ab 40 01 00 00    	mov    %ebp,0x140(%rbx)
    _uth->buf->context.mxcsr = 11;
    1179:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
    1180:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1184:	48 89 03             	mov    %rax,(%rbx)
    _uth->expVal = 1;
    1187:	c6 83 80 01 00 00 01 	movb   $0x1,0x180(%rbx)
    _uth->lastVal = !_id;
    118e:	0f 94 83 c0 01 00 00 	sete   0x1c0(%rbx)
}
    1195:	48 83 c4 08          	add    $0x8,%rsp
    1199:	5b                   	pop    %rbx
    119a:	5d                   	pop    %rbp
    119b:	c3                   	retq   
    119c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011a0 <Scheduler>:
void Scheduler(UserThreading *_uth){
    11a0:	41 57                	push   %r15
    11a2:	41 56                	push   %r14
    11a4:	48 8d 35 ad 06 00 00 	lea    0x6ad(%rip),%rsi        # 1858 <_IO_stdin_used+0x98>
    11ab:	41 55                	push   %r13
    11ad:	41 54                	push   %r12
    11af:	49 89 ff             	mov    %rdi,%r15
    11b2:	55                   	push   %rbp
    11b3:	53                   	push   %rbx
    11b4:	31 c0                	xor    %eax,%eax
    11b6:	48 83 ec 18          	sub    $0x18,%rsp
    11ba:	8b 97 40 01 00 00    	mov    0x140(%rdi),%edx
    11c0:	bf 01 00 00 00       	mov    $0x1,%edi
    11c5:	e8 a6 f7 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    11ca:	be 80 10 00 00       	mov    $0x1080,%esi
    11cf:	bf 40 00 00 00       	mov    $0x40,%edi
    11d4:	e8 e7 f7 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    11d9:	49 8b 2f             	mov    (%r15),%rbp
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    11dc:	49 89 87 c0 00 00 00 	mov    %rax,0xc0(%r15)
  _thread->context.mxcsr = 0;
    11e3:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    11ea:	00 00 00 00 
    11ee:	66 90                	xchg   %ax,%ax
  while (_uth->buf->context.mxcsr == 11);
    11f0:	48 8b 95 70 10 00 00 	mov    0x1070(%rbp),%rdx
    11f7:	48 83 fa 0b          	cmp    $0xb,%rdx
    11fb:	74 f3                	je     11f0 <Scheduler+0x50>
  int flagg = _uth->expVal;
    11fd:	45 0f b6 a7 80 01 00 	movzbl 0x180(%r15),%r12d
    1204:	00 
  Context *s = &(_uth->sched_thread->context);
    1205:	48 05 00 10 00 00    	add    $0x1000,%rax
  Context *t = &(_uth->buf->context);
    120b:	4c 8d b5 00 10 00 00 	lea    0x1000(%rbp),%r14
    1212:	4c 8d 2d 55 06 00 00 	lea    0x655(%rip),%r13        # 186e <_IO_stdin_used+0xae>
  Context *s = &(_uth->sched_thread->context);
    1219:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  while (!_uth->sp_exit_check){
    121e:	41 0f b6 87 00 01 00 	movzbl 0x100(%r15),%eax
    1225:	00 
    1226:	84 c0                	test   %al,%al
    1228:	75 25                	jne    124f <Scheduler+0xaf>
      if ( t->mxcsr == flagg){
    122a:	48 8b 95 70 10 00 00 	mov    0x1070(%rbp),%rdx
    1231:	49 63 c4             	movslq %r12d,%rax
    1234:	48 39 c2             	cmp    %rax,%rdx
    1237:	74 27                	je     1260 <Scheduler+0xc0>
    1239:	4c 89 ef             	mov    %r13,%rdi
    123c:	e8 df f6 ff ff       	callq  920 <puts@plt>
              asm volatile("rep nop");
    1241:	f3 90                	pause  
  while (!_uth->sp_exit_check){
    1243:	41 0f b6 87 00 01 00 	movzbl 0x100(%r15),%eax
    124a:	00 
    124b:	84 c0                	test   %al,%al
    124d:	74 db                	je     122a <Scheduler+0x8a>
}
    124f:	48 83 c4 18          	add    $0x18,%rsp
    1253:	5b                   	pop    %rbx
    1254:	5d                   	pop    %rbp
    1255:	41 5c                	pop    %r12
    1257:	41 5d                	pop    %r13
    1259:	41 5e                	pop    %r14
    125b:	41 5f                	pop    %r15
    125d:	c3                   	retq   
    125e:	66 90                	xchg   %ax,%ax
    1260:	41 83 f4 01          	xor    $0x1,%r12d
            __asm__ __volatile__(
    1264:	4c 89 f0             	mov    %r14,%rax
    1267:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    126c:	48 89 23             	mov    %rsp,(%rbx)
    126f:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 12e3 <target430>
    1276:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    127a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    127e:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    1282:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1286:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    128a:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    128e:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    1292:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1296:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    129a:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    129e:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    12a2:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    12a6:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    12aa:	48 8b 20             	mov    (%rax),%rsp
    12ad:	4c 8b 68 40          	mov    0x40(%rax),%r13
    12b1:	48 8b 48 08          	mov    0x8(%rax),%rcx
    12b5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    12b9:	4c 8b 40 18          	mov    0x18(%rax),%r8
    12bd:	4c 8b 48 20          	mov    0x20(%rax),%r9
    12c1:	4c 8b 50 28          	mov    0x28(%rax),%r10
    12c5:	4c 8b 58 30          	mov    0x30(%rax),%r11
    12c9:	4c 8b 60 38          	mov    0x38(%rax),%r12
    12cd:	4c 8b 70 48          	mov    0x48(%rax),%r14
    12d1:	4c 8b 78 50          	mov    0x50(%rax),%r15
    12d5:	48 8b 68 58          	mov    0x58(%rax),%rbp
    12d9:	48 8b 78 60          	mov    0x60(%rax),%rdi
    12dd:	48 8b 70 68          	mov    0x68(%rax),%rsi
    12e1:	ff e1                	jmpq   *%rcx

00000000000012e3 <target430>:
    12e3:	b8 e8 03 00 00       	mov    $0x3e8,%eax
    12e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12ef:	00 
              asm volatile("rep nop");
    12f0:	f3 90                	pause  
              for (int l=0; l < REP_NOPS; l++)
    12f2:	83 e8 01             	sub    $0x1,%eax
    12f5:	75 f9                	jne    12f0 <target430+0xd>
    12f7:	e9 22 ff ff ff       	jmpq   121e <Scheduler+0x7e>
    12fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001300 <mpthread1>:
void *mpthread1(void *arg){
    1300:	53                   	push   %rbx
    CPU_ZERO(&cpuset);
    1301:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread1(void *arg){
    1306:	48 89 fb             	mov    %rdi,%rbx
    1309:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1310:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1317:	00 00 
    1319:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1320:	00 
    1321:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset);
    1323:	48 89 e2             	mov    %rsp,%rdx
    1326:	48 89 d7             	mov    %rdx,%rdi
    1329:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_1, &cpuset);
    132c:	48 63 05 cd 16 20 00 	movslq 0x2016cd(%rip),%rax        # 202a00 <coreId_1>
    1333:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1339:	77 13                	ja     134e <mpthread1+0x4e>
    133b:	48 89 c1             	mov    %rax,%rcx
    133e:	be 01 00 00 00       	mov    $0x1,%esi
    1343:	48 c1 e8 06          	shr    $0x6,%rax
    1347:	48 d3 e6             	shl    %cl,%rsi
    134a:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    134e:	48 8b 3d c3 16 20 00 	mov    0x2016c3(%rip),%rdi        # 202a18 <threadId_1>
    1355:	be 80 00 00 00       	mov    $0x80,%esi
    135a:	e8 e1 f5 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    135f:	e8 3c f6 ff ff       	callq  9a0 <sched_getcpu@plt>
    1364:	48 8d 35 0a 05 00 00 	lea    0x50a(%rip),%rsi        # 1875 <_IO_stdin_used+0xb5>
    136b:	89 c2                	mov    %eax,%edx
    136d:	bf 01 00 00 00       	mov    $0x1,%edi
    1372:	31 c0                	xor    %eax,%eax
    1374:	e8 f7 f5 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    1379:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    1380:	ff 
    printf("ThreadNum: %d\n", threadId);
    1381:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    1388:	ff 
    1389:	48 8d 35 fd 04 00 00 	lea    0x4fd(%rip),%rsi        # 188d <_IO_stdin_used+0xcd>
    1390:	bf 01 00 00 00       	mov    $0x1,%edi
    1395:	31 c0                	xor    %eax,%eax
    OSThreadAvailable[threadId] = true;
    1397:	48 8d 1d 8e 16 20 00 	lea    0x20168e(%rip),%rbx        # 202a2c <OSThreadAvailable>
    139e:	e8 cd f5 ff ff       	callq  970 <__printf_chk@plt>
    13a3:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    13aa:	ff ff 
    pthread_barrier_wait(&barrier);
    13ac:	48 8d 3d ed 0f 20 00 	lea    0x200fed(%rip),%rdi        # 2023a0 <barrier>
    OSThreadAvailable[threadId] = true;
    13b3:	c6 04 03 01          	movb   $0x1,(%rbx,%rax,1)
    pthread_barrier_wait(&barrier);
    13b7:	e8 14 f6 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    13bc:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    13be:	64 48 63 3c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rdi
    13c5:	ff ff 
    13c7:	48 c1 e2 20          	shl    $0x20,%rdx
    13cb:	48 09 d0             	or     %rdx,%rax
    thread1_starttime = __rdtsc();
    13ce:	48 89 05 33 16 20 00 	mov    %rax,0x201633(%rip)        # 202a08 <thread1_starttime>
    Scheduler(&UserThreadingVec[threadId]);
    13d5:	48 8d 05 24 10 20 00 	lea    0x201024(%rip),%rax        # 202400 <UserThreadingVec>
    13dc:	48 c1 e7 09          	shl    $0x9,%rdi
    13e0:	48 01 c7             	add    %rax,%rdi
    13e3:	e8 b8 fd ff ff       	callq  11a0 <Scheduler>
    OSThreadAvailable[threadId] = false;
    13e8:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    13ef:	ff ff 
    13f1:	c6 04 03 00          	movb   $0x0,(%rbx,%rax,1)
    13f5:	0f 31                	rdtsc  
    13f7:	48 c1 e2 20          	shl    $0x20,%rdx
    13fb:	48 09 d0             	or     %rdx,%rax
}
    13fe:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
    1405:	00 
    1406:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    140d:	00 00 
    thread1_endtime = __rdtsc();
    140f:	48 89 05 22 16 20 00 	mov    %rax,0x201622(%rip)        # 202a38 <thread1_endtime>
}
    1416:	75 09                	jne    1421 <mpthread1+0x121>
    1418:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    141f:	5b                   	pop    %rbx
    1420:	c3                   	retq   
    1421:	e8 0a f5 ff ff       	callq  930 <__stack_chk_fail@plt>
    1426:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    142d:	00 00 00 

0000000000001430 <mpthread2>:
void *mpthread2(void *arg){
    1430:	53                   	push   %rbx
    CPU_ZERO(&cpuset2);
    1431:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread2(void *arg){
    1436:	48 89 fb             	mov    %rdi,%rbx
    1439:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1440:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1447:	00 00 
    1449:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1450:	00 
    1451:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset2);
    1453:	48 89 e2             	mov    %rsp,%rdx
    1456:	48 89 d7             	mov    %rdx,%rdi
    1459:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_2, &cpuset2);
    145c:	48 63 05 c5 15 20 00 	movslq 0x2015c5(%rip),%rax        # 202a28 <coreId_2>
    1463:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1469:	77 13                	ja     147e <mpthread2+0x4e>
    146b:	48 89 c1             	mov    %rax,%rcx
    146e:	be 01 00 00 00       	mov    $0x1,%esi
    1473:	48 c1 e8 06          	shr    $0x6,%rax
    1477:	48 d3 e6             	shl    %cl,%rsi
    147a:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    147e:	48 8b 3d fb 0e 20 00 	mov    0x200efb(%rip),%rdi        # 202380 <threadId_2>
    1485:	be 80 00 00 00       	mov    $0x80,%esi
    148a:	e8 b1 f4 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    148f:	e8 0c f5 ff ff       	callq  9a0 <sched_getcpu@plt>
    1494:	48 8d 35 da 03 00 00 	lea    0x3da(%rip),%rsi        # 1875 <_IO_stdin_used+0xb5>
    149b:	89 c2                	mov    %eax,%edx
    149d:	bf 01 00 00 00       	mov    $0x1,%edi
    14a2:	31 c0                	xor    %eax,%eax
    14a4:	e8 c7 f4 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    14a9:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    14b0:	ff 
    printf("ThreadNum: %d\n", threadId);
    14b1:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    14b8:	ff 
    14b9:	48 8d 35 cd 03 00 00 	lea    0x3cd(%rip),%rsi        # 188d <_IO_stdin_used+0xcd>
    14c0:	bf 01 00 00 00       	mov    $0x1,%edi
    14c5:	31 c0                	xor    %eax,%eax
    OSThreadAvailable[threadId] = true;
    14c7:	48 8d 1d 5e 15 20 00 	lea    0x20155e(%rip),%rbx        # 202a2c <OSThreadAvailable>
    14ce:	e8 9d f4 ff ff       	callq  970 <__printf_chk@plt>
    14d3:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    14da:	ff ff 
    pthread_barrier_wait(&barrier);
    14dc:	48 8d 3d bd 0e 20 00 	lea    0x200ebd(%rip),%rdi        # 2023a0 <barrier>
    OSThreadAvailable[threadId] = true;
    14e3:	c6 04 03 01          	movb   $0x1,(%rbx,%rax,1)
    pthread_barrier_wait(&barrier);
    14e7:	e8 e4 f4 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    14ec:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    14ee:	64 48 63 3c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rdi
    14f5:	ff ff 
    14f7:	48 c1 e2 20          	shl    $0x20,%rdx
    14fb:	48 09 d0             	or     %rdx,%rax
    thread2_starttime = __rdtsc();
    14fe:	48 89 05 2b 15 20 00 	mov    %rax,0x20152b(%rip)        # 202a30 <thread2_starttime>
    Scheduler(&UserThreadingVec[threadId]);
    1505:	48 8d 05 f4 0e 20 00 	lea    0x200ef4(%rip),%rax        # 202400 <UserThreadingVec>
    150c:	48 c1 e7 09          	shl    $0x9,%rdi
    1510:	48 01 c7             	add    %rax,%rdi
    1513:	e8 88 fc ff ff       	callq  11a0 <Scheduler>
    OSThreadAvailable[threadId] = false;
    1518:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    151f:	ff ff 
    1521:	c6 04 03 00          	movb   $0x0,(%rbx,%rax,1)
    1525:	0f 31                	rdtsc  
    1527:	48 c1 e2 20          	shl    $0x20,%rdx
    152b:	48 09 d0             	or     %rdx,%rax
}
    152e:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
    1535:	00 
    1536:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    153d:	00 00 
    thread2_endtime = __rdtsc();
    153f:	48 89 05 ca 14 20 00 	mov    %rax,0x2014ca(%rip)        # 202a10 <thread2_endtime>
}
    1546:	75 09                	jne    1551 <mpthread2+0x121>
    1548:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    154f:	5b                   	pop    %rbx
    1550:	c3                   	retq   
    1551:	e8 da f3 ff ff       	callq  930 <__stack_chk_fail@plt>
    1556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    155d:	00 00 00 

0000000000001560 <UserThreading_Destory>:
}
    1560:	f3 c3                	repz retq 
    1562:	0f 1f 40 00          	nopl   0x0(%rax)
    1566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    156d:	00 00 00 

0000000000001570 <Yield>:
  Context *s = &(_uth->sched_thread->context);
    1570:	48 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%rax
void Yield(UserThreading *_uth){
    1577:	53                   	push   %rbx
  Context *s = &(_uth->sched_thread->context);
    1578:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    157f:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
    1586:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    158c:	80 bf c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdi)
    1593:	0f 84 8f 00 00 00    	je     1628 <target2735+0x9>
      _uth->lastVal = !_uth->lastVal;
    1599:	c6 87 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdi)
          __asm__ __volatile__(
    15a0:	48 89 20             	mov    %rsp,(%rax)
    15a3:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 161f <target2735>
    15aa:	48 89 48 08          	mov    %rcx,0x8(%rax)
    15ae:	48 89 50 10          	mov    %rdx,0x10(%rax)
    15b2:	4c 89 40 18          	mov    %r8,0x18(%rax)
    15b6:	4c 89 48 20          	mov    %r9,0x20(%rax)
    15ba:	4c 89 50 28          	mov    %r10,0x28(%rax)
    15be:	4c 89 58 30          	mov    %r11,0x30(%rax)
    15c2:	4c 89 60 38          	mov    %r12,0x38(%rax)
    15c6:	4c 89 68 40          	mov    %r13,0x40(%rax)
    15ca:	4c 89 70 48          	mov    %r14,0x48(%rax)
    15ce:	4c 89 78 50          	mov    %r15,0x50(%rax)
    15d2:	48 89 68 58          	mov    %rbp,0x58(%rax)
    15d6:	48 89 78 60          	mov    %rdi,0x60(%rax)
    15da:	48 89 70 68          	mov    %rsi,0x68(%rax)
    15de:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    15e5:	00 
    15e6:	48 8b 23             	mov    (%rbx),%rsp
    15e9:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    15ed:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    15f1:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    15f5:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    15f9:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    15fd:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1601:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1605:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1609:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    160d:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1611:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1615:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1619:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    161d:	ff e1                	jmpq   *%rcx

000000000000161f <target2735>:
}
    161f:	5b                   	pop    %rbx
    1620:	c3                   	retq   
    1621:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    _uth->lastVal = !_uth->lastVal;
    1628:	c6 87 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdi)
    __asm__ __volatile__(
    162f:	48 89 20             	mov    %rsp,(%rax)
    1632:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 16ae <target2748>
    1639:	48 89 48 08          	mov    %rcx,0x8(%rax)
    163d:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1641:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1645:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1649:	4c 89 50 28          	mov    %r10,0x28(%rax)
    164d:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1651:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1655:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1659:	4c 89 70 48          	mov    %r14,0x48(%rax)
    165d:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1661:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1665:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1669:	48 89 70 68          	mov    %rsi,0x68(%rax)
    166d:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    1674:	00 
    1675:	48 8b 23             	mov    (%rbx),%rsp
    1678:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    167c:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1680:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1684:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1688:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    168c:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1690:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1694:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1698:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    169c:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    16a0:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    16a4:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    16a8:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    16ac:	ff e1                	jmpq   *%rcx

00000000000016ae <target2748>:
}
    16ae:	5b                   	pop    %rbx
    16af:	c3                   	retq   

00000000000016b0 <makeThread>:
int makeThread(UserThreading *_uth, void (*fn)()){
    16b0:	55                   	push   %rbp
    16b1:	53                   	push   %rbx
    16b2:	48 89 f5             	mov    %rsi,%rbp
    16b5:	48 89 fb             	mov    %rdi,%rbx
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    16b8:	be 80 10 00 00       	mov    $0x1080,%esi
    16bd:	bf 80 00 00 00       	mov    $0x80,%edi
int makeThread(UserThreading *_uth, void (*fn)()){
    16c2:	48 83 ec 08          	sub    $0x8,%rsp
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    16c6:	e8 f5 f2 ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    16cb:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
    16d2:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    16d9:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
    16dd:	48 89 a8 08 10 00 00 	mov    %rbp,0x1008(%rax)
  new_thread->context.mxcsr = 1;
    16e4:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
    16eb:	01 00 00 00 
  _uth->buf = new_thread; 
    16ef:	48 89 03             	mov    %rax,(%rbx)
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    16f2:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
}
    16f9:	48 83 c4 08          	add    $0x8,%rsp
    16fd:	5b                   	pop    %rbx
    16fe:	5d                   	pop    %rbp
    16ff:	c3                   	retq   

0000000000001700 <allSchedulersExit>:
    if (i != threadId )
    1700:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1707:	ff 
    1708:	85 c0                	test   %eax,%eax
    170a:	74 07                	je     1713 <allSchedulersExit+0x13>
      UserThreadingVec[i].sp_exit_check = true;
    170c:	c6 05 ed 0d 20 00 01 	movb   $0x1,0x200ded(%rip)        # 202500 <UserThreadingVec+0x100>
    if (i != threadId )
    1713:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    171a:	ff 
    171b:	83 f8 01             	cmp    $0x1,%eax
    171e:	74 07                	je     1727 <allSchedulersExit+0x27>
      UserThreadingVec[i].sp_exit_check = true;
    1720:	c6 05 d9 0f 20 00 01 	movb   $0x1,0x200fd9(%rip)        # 202700 <UserThreadingVec+0x300>
    1727:	48 8d 3d 6e 01 00 00 	lea    0x16e(%rip),%rdi        # 189c <_IO_stdin_used+0xdc>
    172e:	e9 ed f1 ff ff       	jmpq   920 <puts@plt>
    1733:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    173a:	00 00 00 
    173d:	0f 1f 00             	nopl   (%rax)

0000000000001740 <__libc_csu_init>:
    1740:	41 57                	push   %r15
    1742:	41 56                	push   %r14
    1744:	49 89 d7             	mov    %rdx,%r15
    1747:	41 55                	push   %r13
    1749:	41 54                	push   %r12
    174b:	4c 8d 25 f6 05 20 00 	lea    0x2005f6(%rip),%r12        # 201d48 <__frame_dummy_init_array_entry>
    1752:	55                   	push   %rbp
    1753:	48 8d 2d f6 05 20 00 	lea    0x2005f6(%rip),%rbp        # 201d50 <__init_array_end>
    175a:	53                   	push   %rbx
    175b:	41 89 fd             	mov    %edi,%r13d
    175e:	49 89 f6             	mov    %rsi,%r14
    1761:	4c 29 e5             	sub    %r12,%rbp
    1764:	48 83 ec 08          	sub    $0x8,%rsp
    1768:	48 c1 fd 03          	sar    $0x3,%rbp
    176c:	e8 6f f1 ff ff       	callq  8e0 <_init>
    1771:	48 85 ed             	test   %rbp,%rbp
    1774:	74 20                	je     1796 <__libc_csu_init+0x56>
    1776:	31 db                	xor    %ebx,%ebx
    1778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    177f:	00 
    1780:	4c 89 fa             	mov    %r15,%rdx
    1783:	4c 89 f6             	mov    %r14,%rsi
    1786:	44 89 ef             	mov    %r13d,%edi
    1789:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    178d:	48 83 c3 01          	add    $0x1,%rbx
    1791:	48 39 dd             	cmp    %rbx,%rbp
    1794:	75 ea                	jne    1780 <__libc_csu_init+0x40>
    1796:	48 83 c4 08          	add    $0x8,%rsp
    179a:	5b                   	pop    %rbx
    179b:	5d                   	pop    %rbp
    179c:	41 5c                	pop    %r12
    179e:	41 5d                	pop    %r13
    17a0:	41 5e                	pop    %r14
    17a2:	41 5f                	pop    %r15
    17a4:	c3                   	retq   
    17a5:	90                   	nop
    17a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17ad:	00 00 00 

00000000000017b0 <__libc_csu_fini>:
    17b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000017b4 <_fini>:
    17b4:	48 83 ec 08          	sub    $0x8,%rsp
    17b8:	48 83 c4 08          	add    $0x8,%rsp
    17bc:	c3                   	retq   

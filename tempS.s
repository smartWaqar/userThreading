
./program25:     file format elf64-x86-64


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
     9f4:	0f 85 49 02 00 00    	jne    c43 <main+0x253>

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
  new_thread->context.rip = (uint64_t) fn;
     a1e:	48 8d 1d 4b 03 00 00 	lea    0x34b(%rip),%rbx        # d70 <pfc>
     a25:	e8 26 ff ff ff       	callq  950 <strtol@plt>
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
     a2a:	48 8d 3d 0f 11 00 00 	lea    0x110f(%rip),%rdi        # 1b40 <_IO_stdin_used+0x110>
     a31:	89 05 71 2f 20 00    	mov    %eax,0x202f71(%rip)        # 2039a8 <coreId_2>
     a37:	e8 e4 fe ff ff       	callq  920 <puts@plt>
  #else
    printf("REP_NOPS not enabled\n");
  #endif


  pthread_barrier_init (&barrier, NULL, 2);
     a3c:	48 8d 3d dd 28 20 00 	lea    0x2028dd(%rip),%rdi        # 203320 <barrier>
     a43:	ba 02 00 00 00       	mov    $0x2,%edx
     a48:	31 f6                	xor    %esi,%esi
     a4a:	e8 11 ff ff ff       	callq  960 <pthread_barrier_init@plt>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a4f:	be 80 10 00 00       	mov    $0x1080,%esi
     a54:	bf 40 00 00 00       	mov    $0x40,%edi

  threadCount = 2;
     a59:	c7 05 a5 28 20 00 02 	movl   $0x2,0x2028a5(%rip)        # 203308 <threadCount>
     a60:	00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a63:	e8 58 ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     a68:	c6 05 11 2a 20 00 00 	movb   $0x0,0x202a11(%rip)        # 203480 <UserThreadingVec+0x100>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a6f:	be 80 10 00 00       	mov    $0x1080,%esi
     a74:	bf 40 00 00 00       	mov    $0x40,%edi
    _uth->buf->context.mxcsr = 11;
     a79:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
     a80:	0b 00 00 00 
    _uth->id = _id;
     a84:	c7 05 32 2a 20 00 00 	movl   $0x0,0x202a32(%rip)        # 2034c0 <UserThreadingVec+0x140>
     a8b:	00 00 00 
    _uth->expVal = 1;
     a8e:	c6 05 6b 2a 20 00 01 	movb   $0x1,0x202a6b(%rip)        # 203500 <UserThreadingVec+0x180>
    _uth->lastVal = !_id;
     a95:	c6 05 a4 2a 20 00 01 	movb   $0x1,0x202aa4(%rip)        # 203540 <UserThreadingVec+0x1c0>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a9c:	e8 1f ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     aa1:	c6 05 d8 2b 20 00 00 	movb   $0x0,0x202bd8(%rip)        # 203680 <UserThreadingVec+0x300>
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     aa8:	be 80 10 00 00       	mov    $0x1080,%esi
     aad:	bf 80 00 00 00       	mov    $0x80,%edi
    _uth->buf->context.mxcsr = 11;
     ab2:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
     ab9:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     abd:	48 89 05 bc 2a 20 00 	mov    %rax,0x202abc(%rip)        # 203580 <UserThreadingVec+0x200>
    _uth->id = _id;
     ac4:	c7 05 f2 2b 20 00 01 	movl   $0x1,0x202bf2(%rip)        # 2036c0 <UserThreadingVec+0x340>
     acb:	00 00 00 
    _uth->expVal = 1;
     ace:	c6 05 2b 2c 20 00 01 	movb   $0x1,0x202c2b(%rip)        # 203700 <UserThreadingVec+0x380>
    _uth->lastVal = !_id;
     ad5:	c6 05 64 2c 20 00 00 	movb   $0x0,0x202c64(%rip)        # 203740 <UserThreadingVec+0x3c0>
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     adc:	e8 df fe ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     ae1:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
     ae8:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     aef:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
     af3:	48 89 98 08 10 00 00 	mov    %rbx,0x1008(%rax)
  new_thread->context.mxcsr = 1;
     afa:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
     b01:	01 00 00 00 
  _uth->buf = new_thread; 
     b05:	48 89 05 74 28 20 00 	mov    %rax,0x202874(%rip)        # 203380 <UserThreadingVec>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     b0c:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
/* rdtsc */
extern __inline unsigned long long
__attribute__((__gnu_inline__, __always_inline__, __artificial__))
__rdtsc (void)
{
  return __builtin_ia32_rdtsc ();
     b13:	0f 31                	rdtsc  
     b15:	48 8d 35 39 10 00 00 	lea    0x1039(%rip),%rsi        # 1b55 <_IO_stdin_used+0x125>
     b1c:	bf 01 00 00 00       	mov    $0x1,%edi
     b21:	48 c1 e2 20          	shl    $0x20,%rdx
     b25:	48 09 d0             	or     %rdx,%rax
     b28:	48 89 c2             	mov    %rax,%rdx
     b2b:	31 c0                	xor    %eax,%eax
     b2d:	e8 3e fe ff ff       	callq  970 <__printf_chk@plt>
  uint64_t timeCounter_start = __rdtsc();
  printf("My start: %lu \n", timeCounter_start);

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b32:	48 8d 15 37 06 00 00 	lea    0x637(%rip),%rdx        # 1170 <mpthread1>
     b39:	48 8d 3d 58 2e 20 00 	lea    0x202e58(%rip),%rdi        # 203998 <threadId_1>
     b40:	31 c9                	xor    %ecx,%ecx
     b42:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[0] = false;
     b44:	c6 05 61 2e 20 00 00 	movb   $0x0,0x202e61(%rip)        # 2039ac <OSThreadAvailable>
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b4b:	e8 c0 fd ff ff       	callq  910 <pthread_create@plt>
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b50:	48 8d 15 79 08 00 00 	lea    0x879(%rip),%rdx        # 13d0 <mpthread2>
     b57:	48 8d 3d a2 27 20 00 	lea    0x2027a2(%rip),%rdi        # 203300 <threadId_2>
     b5e:	b9 01 00 00 00       	mov    $0x1,%ecx
     b63:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[1] = false;
     b65:	c6 05 41 2e 20 00 00 	movb   $0x0,0x202e41(%rip)        # 2039ad <OSThreadAvailable+0x1>
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b6c:	e8 9f fd ff ff       	callq  910 <pthread_create@plt>

  pthread_join(threadId_1, NULL); 
     b71:	48 8b 3d 20 2e 20 00 	mov    0x202e20(%rip),%rdi        # 203998 <threadId_1>
     b78:	31 f6                	xor    %esi,%esi
     b7a:	e8 11 fe ff ff       	callq  990 <pthread_join@plt>
  pthread_join(threadId_2, NULL);
     b7f:	48 8b 3d 7a 27 20 00 	mov    0x20277a(%rip),%rdi        # 203300 <threadId_2>
     b86:	31 f6                	xor    %esi,%esi
     b88:	e8 03 fe ff ff       	callq  990 <pthread_join@plt>
     b8d:	0f 31                	rdtsc  
  uint64_t timeCounter_end = __rdtsc();
  //printf("Execution time per opertation: %lu clock cycles\n", 
  //  (timeCounter_end - timeCounter_start) / (10000000) );


  pthread_barrier_destroy(&barrier);
     b8f:	48 8d 3d 8a 27 20 00 	lea    0x20278a(%rip),%rdi        # 203320 <barrier>
     b96:	e8 e5 fd ff ff       	callq  980 <pthread_barrier_destroy@plt>
     b9b:	48 8b 15 fe 26 20 00 	mov    0x2026fe(%rip),%rdx        # 2032a0 <globalVariable>
     ba2:	48 8d 35 bc 0f 00 00 	lea    0xfbc(%rip),%rsi        # 1b65 <_IO_stdin_used+0x135>
     ba9:	bf 01 00 00 00       	mov    $0x1,%edi
     bae:	31 c0                	xor    %eax,%eax
     bb0:	e8 bb fd ff ff       	callq  970 <__printf_chk@plt>
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
     bb5:	48 8b 15 44 26 20 00 	mov    0x202644(%rip),%rdx        # 203200 <global_var1>
     bbc:	48 8d 35 b8 0f 00 00 	lea    0xfb8(%rip),%rsi        # 1b7b <_IO_stdin_used+0x14b>
     bc3:	bf 01 00 00 00       	mov    $0x1,%edi
     bc8:	31 c0                	xor    %eax,%eax
     bca:	e8 a1 fd ff ff       	callq  970 <__printf_chk@plt>
  printf("global_var2: %lld \n", global_var2); 
     bcf:	48 8b 15 aa 25 20 00 	mov    0x2025aa(%rip),%rdx        # 203180 <global_var2>
     bd6:	48 8d 35 b1 0f 00 00 	lea    0xfb1(%rip),%rsi        # 1b8e <_IO_stdin_used+0x15e>
     bdd:	bf 01 00 00 00       	mov    $0x1,%edi
     be2:	31 c0                	xor    %eax,%eax
     be4:	e8 87 fd ff ff       	callq  970 <__printf_chk@plt>
  //printf("Time from thead Counters");
  // smalller of start time and larger of end time
 
  uint64_t thread_starttime = 
  thread1_starttime < thread2_starttime ? thread1_starttime : thread2_starttime; 
  uint64_t thread_endtime = 
     be9:	48 8b 15 c8 2d 20 00 	mov    0x202dc8(%rip),%rdx        # 2039b8 <thread1_endtime>
     bf0:	48 39 15 99 2d 20 00 	cmp    %rdx,0x202d99(%rip)        # 203990 <thread2_endtime>
  thread1_endtime > thread2_endtime ? thread1_endtime : thread2_endtime;

  printf("Execution time is %lu clock cycles\n",
     bf7:	48 b9 bd 42 7a e5 d5 	movabs $0xd6bf94d5e57a42bd,%rcx
     bfe:	94 bf d6 
  uint64_t thread_endtime = 
     c01:	48 0f 43 15 87 2d 20 	cmovae 0x202d87(%rip),%rdx        # 203990 <thread2_endtime>
     c08:	00 
  uint64_t thread_starttime = 
     c09:	48 8b 05 78 2d 20 00 	mov    0x202d78(%rip),%rax        # 203988 <thread1_starttime>
     c10:	48 8d 35 79 0e 00 00 	lea    0xe79(%rip),%rsi        # 1a90 <_IO_stdin_used+0x60>
     c17:	48 39 05 92 2d 20 00 	cmp    %rax,0x202d92(%rip)        # 2039b0 <thread2_starttime>
     c1e:	bf 01 00 00 00       	mov    $0x1,%edi
     c23:	48 0f 46 05 85 2d 20 	cmovbe 0x202d85(%rip),%rax        # 2039b0 <thread2_starttime>
     c2a:	00 
    (thread_endtime - thread_starttime) / (10000000) );
     c2b:	48 29 c2             	sub    %rax,%rdx
  printf("Execution time is %lu clock cycles\n",
     c2e:	48 89 d0             	mov    %rdx,%rax
     c31:	48 f7 e1             	mul    %rcx
     c34:	31 c0                	xor    %eax,%eax
     c36:	48 c1 ea 17          	shr    $0x17,%rdx
     c3a:	e8 31 fd ff ff       	callq  970 <__printf_chk@plt>

}
     c3f:	31 c0                	xor    %eax,%eax
     c41:	5b                   	pop    %rbx
     c42:	c3                   	retq   
     c43:	48 8d 3d 16 0e 00 00 	lea    0xe16(%rip),%rdi        # 1a60 <_IO_stdin_used+0x30>
     c4a:	e8 d1 fc ff ff       	callq  920 <puts@plt>
    exit(1);
     c4f:	bf 01 00 00 00       	mov    $0x1,%edi
     c54:	e8 57 fd ff ff       	callq  9b0 <exit@plt>
     c59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000c60 <_start>:
     c60:	31 ed                	xor    %ebp,%ebp
     c62:	49 89 d1             	mov    %rdx,%r9
     c65:	5e                   	pop    %rsi
     c66:	48 89 e2             	mov    %rsp,%rdx
     c69:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     c6d:	50                   	push   %rax
     c6e:	54                   	push   %rsp
     c6f:	4c 8d 05 aa 0d 00 00 	lea    0xdaa(%rip),%r8        # 1a20 <__libc_csu_fini>
     c76:	48 8d 0d 33 0d 00 00 	lea    0xd33(%rip),%rcx        # 19b0 <__libc_csu_init>
     c7d:	48 8d 3d 6c fd ff ff 	lea    -0x294(%rip),%rdi        # 9f0 <main>
     c84:	ff 15 56 23 20 00    	callq  *0x202356(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
     c8a:	f4                   	hlt    
     c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c90 <deregister_tm_clones>:
     c90:	48 8d 3d 79 23 20 00 	lea    0x202379(%rip),%rdi        # 203010 <__TMC_END__>
     c97:	55                   	push   %rbp
     c98:	48 8d 05 71 23 20 00 	lea    0x202371(%rip),%rax        # 203010 <__TMC_END__>
     c9f:	48 39 f8             	cmp    %rdi,%rax
     ca2:	48 89 e5             	mov    %rsp,%rbp
     ca5:	74 19                	je     cc0 <deregister_tm_clones+0x30>
     ca7:	48 8b 05 2a 23 20 00 	mov    0x20232a(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
     cae:	48 85 c0             	test   %rax,%rax
     cb1:	74 0d                	je     cc0 <deregister_tm_clones+0x30>
     cb3:	5d                   	pop    %rbp
     cb4:	ff e0                	jmpq   *%rax
     cb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     cbd:	00 00 00 
     cc0:	5d                   	pop    %rbp
     cc1:	c3                   	retq   
     cc2:	0f 1f 40 00          	nopl   0x0(%rax)
     cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     ccd:	00 00 00 

0000000000000cd0 <register_tm_clones>:
     cd0:	48 8d 3d 39 23 20 00 	lea    0x202339(%rip),%rdi        # 203010 <__TMC_END__>
     cd7:	48 8d 35 32 23 20 00 	lea    0x202332(%rip),%rsi        # 203010 <__TMC_END__>
     cde:	55                   	push   %rbp
     cdf:	48 29 fe             	sub    %rdi,%rsi
     ce2:	48 89 e5             	mov    %rsp,%rbp
     ce5:	48 c1 fe 03          	sar    $0x3,%rsi
     ce9:	48 89 f0             	mov    %rsi,%rax
     cec:	48 c1 e8 3f          	shr    $0x3f,%rax
     cf0:	48 01 c6             	add    %rax,%rsi
     cf3:	48 d1 fe             	sar    %rsi
     cf6:	74 18                	je     d10 <register_tm_clones+0x40>
     cf8:	48 8b 05 f1 22 20 00 	mov    0x2022f1(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
     cff:	48 85 c0             	test   %rax,%rax
     d02:	74 0c                	je     d10 <register_tm_clones+0x40>
     d04:	5d                   	pop    %rbp
     d05:	ff e0                	jmpq   *%rax
     d07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     d0e:	00 00 
     d10:	5d                   	pop    %rbp
     d11:	c3                   	retq   
     d12:	0f 1f 40 00          	nopl   0x0(%rax)
     d16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     d1d:	00 00 00 

0000000000000d20 <__do_global_dtors_aux>:
     d20:	80 3d 59 23 20 00 00 	cmpb   $0x0,0x202359(%rip)        # 203080 <completed.7698>
     d27:	75 2f                	jne    d58 <__do_global_dtors_aux+0x38>
     d29:	48 83 3d c7 22 20 00 	cmpq   $0x0,0x2022c7(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
     d30:	00 
     d31:	55                   	push   %rbp
     d32:	48 89 e5             	mov    %rsp,%rbp
     d35:	74 0c                	je     d43 <__do_global_dtors_aux+0x23>
     d37:	48 8b 3d ca 22 20 00 	mov    0x2022ca(%rip),%rdi        # 203008 <__dso_handle>
     d3e:	e8 9d fc ff ff       	callq  9e0 <__cxa_finalize@plt>
     d43:	e8 48 ff ff ff       	callq  c90 <deregister_tm_clones>
     d48:	c6 05 31 23 20 00 01 	movb   $0x1,0x202331(%rip)        # 203080 <completed.7698>
     d4f:	5d                   	pop    %rbp
     d50:	c3                   	retq   
     d51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     d58:	f3 c3                	repz retq 
     d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d60 <frame_dummy>:
     d60:	55                   	push   %rbp
     d61:	48 89 e5             	mov    %rsp,%rbp
     d64:	5d                   	pop    %rbp
     d65:	e9 66 ff ff ff       	jmpq   cd0 <register_tm_clones>
     d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d70 <pfc>:
void pfc(){
     d70:	55                   	push   %rbp
     d71:	53                   	push   %rbx
     d72:	48 8d 35 bf 0c 00 00 	lea    0xcbf(%rip),%rsi        # 1a38 <_IO_stdin_used+0x8>
     d79:	bf 01 00 00 00       	mov    $0x1,%edi
     d7e:	31 c0                	xor    %eax,%eax
     d80:	48 8d 2d f9 25 20 00 	lea    0x2025f9(%rip),%rbp        # 203380 <UserThreadingVec>
     d87:	48 83 ec 08          	sub    $0x8,%rsp
    printf("parentId: %d --------------------\n", threadId);
     d8b:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
     d92:	ff 
     d93:	e8 d8 fb ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     d98:	48 8b 05 e1 25 20 00 	mov    0x2025e1(%rip),%rax        # 203380 <UserThreadingVec>
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;
     d9f:	be 80 96 98 00       	mov    $0x989680,%esi
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     da4:	48 89 05 55 28 20 00 	mov    %rax,0x202855(%rip)        # 203600 <UserThreadingVec+0x280>
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;
     dab:	48 8b 05 ce 27 20 00 	mov    0x2027ce(%rip),%rax        # 203580 <UserThreadingVec+0x200>
     db2:	48 89 05 47 26 20 00 	mov    %rax,0x202647(%rip)        # 203400 <UserThreadingVec+0x80>
     db9:	e9 db 00 00 00       	jmpq   e99 <target270+0x9>
     dbe:	66 90                	xchg   %ax,%ax
          global_var1++;
     dc0:	48 8b 05 39 24 20 00 	mov    0x202439(%rip),%rax        # 203200 <global_var1>
     dc7:	48 83 c0 01          	add    $0x1,%rax
     dcb:	48 89 05 2e 24 20 00 	mov    %rax,0x20242e(%rip)        # 203200 <global_var1>
      Yield(&UserThreadingVec[threadId]);
     dd2:	64 48 63 14 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rdx
     dd9:	ff ff 
  Context *s = &(_uth->sched_thread->context);
     ddb:	48 c1 e2 09          	shl    $0x9,%rdx
     ddf:	48 01 ea             	add    %rbp,%rdx
     de2:	48 8b 82 c0 00 00 00 	mov    0xc0(%rdx),%rax
     de9:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
     df0:	48 8b 82 80 00 00 00 	mov    0x80(%rdx),%rax
     df7:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
     dfd:	80 ba c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdx)
     e04:	0f 85 b6 00 00 00    	jne    ec0 <target270+0x30>
    _uth->lastVal = !_uth->lastVal;
     e0a:	c6 82 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdx)
    __asm__ __volatile__(
     e11:	48 89 20             	mov    %rsp,(%rax)
     e14:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # e90 <target270>
     e1b:	48 89 48 08          	mov    %rcx,0x8(%rax)
     e1f:	48 89 50 10          	mov    %rdx,0x10(%rax)
     e23:	4c 89 40 18          	mov    %r8,0x18(%rax)
     e27:	4c 89 48 20          	mov    %r9,0x20(%rax)
     e2b:	4c 89 50 28          	mov    %r10,0x28(%rax)
     e2f:	4c 89 58 30          	mov    %r11,0x30(%rax)
     e33:	4c 89 60 38          	mov    %r12,0x38(%rax)
     e37:	4c 89 68 40          	mov    %r13,0x40(%rax)
     e3b:	4c 89 70 48          	mov    %r14,0x48(%rax)
     e3f:	4c 89 78 50          	mov    %r15,0x50(%rax)
     e43:	48 89 68 58          	mov    %rbp,0x58(%rax)
     e47:	48 89 78 60          	mov    %rdi,0x60(%rax)
     e4b:	48 89 70 68          	mov    %rsi,0x68(%rax)
     e4f:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
     e56:	00 
     e57:	48 8b 23             	mov    (%rbx),%rsp
     e5a:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     e5e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     e62:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     e66:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     e6a:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     e6e:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     e72:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     e76:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     e7a:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     e7e:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     e82:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
     e86:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
     e8a:	48 8b 73 68          	mov    0x68(%rbx),%rsi
     e8e:	ff e1                	jmpq   *%rcx

0000000000000e90 <target270>:
    for (int i=0; i < 10000000; i++){
     e90:	83 ee 01             	sub    $0x1,%esi
     e93:	0f 84 b6 00 00 00    	je     f4f <target299+0x9>
        if (threadId == 0)
     e99:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     ea0:	ff 
     ea1:	85 c0                	test   %eax,%eax
     ea3:	0f 84 17 ff ff ff    	je     dc0 <pfc+0x50>
          global_var2++;
     ea9:	48 8b 05 d0 22 20 00 	mov    0x2022d0(%rip),%rax        # 203180 <global_var2>
     eb0:	48 83 c0 01          	add    $0x1,%rax
     eb4:	48 89 05 c5 22 20 00 	mov    %rax,0x2022c5(%rip)        # 203180 <global_var2>
     ebb:	e9 12 ff ff ff       	jmpq   dd2 <pfc+0x62>
      _uth->lastVal = !_uth->lastVal;
     ec0:	c6 82 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdx)
          __asm__ __volatile__(
     ec7:	48 89 20             	mov    %rsp,(%rax)
     eca:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # f46 <target299>
     ed1:	48 89 48 08          	mov    %rcx,0x8(%rax)
     ed5:	48 89 50 10          	mov    %rdx,0x10(%rax)
     ed9:	4c 89 40 18          	mov    %r8,0x18(%rax)
     edd:	4c 89 48 20          	mov    %r9,0x20(%rax)
     ee1:	4c 89 50 28          	mov    %r10,0x28(%rax)
     ee5:	4c 89 58 30          	mov    %r11,0x30(%rax)
     ee9:	4c 89 60 38          	mov    %r12,0x38(%rax)
     eed:	4c 89 68 40          	mov    %r13,0x40(%rax)
     ef1:	4c 89 70 48          	mov    %r14,0x48(%rax)
     ef5:	4c 89 78 50          	mov    %r15,0x50(%rax)
     ef9:	48 89 68 58          	mov    %rbp,0x58(%rax)
     efd:	48 89 78 60          	mov    %rdi,0x60(%rax)
     f01:	48 89 70 68          	mov    %rsi,0x68(%rax)
     f05:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
     f0c:	00 
     f0d:	48 8b 23             	mov    (%rbx),%rsp
     f10:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     f14:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     f18:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     f1c:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     f20:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     f24:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     f28:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     f2c:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     f30:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     f34:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     f38:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
     f3c:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
     f40:	48 8b 73 68          	mov    0x68(%rbx),%rsi
     f44:	ff e1                	jmpq   *%rcx

0000000000000f46 <target299>:
    for (int i=0; i < 10000000; i++){
     f46:	83 ee 01             	sub    $0x1,%esi
     f49:	0f 85 4a ff ff ff    	jne    e99 <target270+0x9>
     f4f:	48 8d 3d 62 0b 00 00 	lea    0xb62(%rip),%rdi        # 1ab8 <_IO_stdin_used+0x88>
     f56:	e8 c5 f9 ff ff       	callq  920 <puts@plt>
     f5b:	48 8d 35 60 0b 00 00 	lea    0xb60(%rip),%rsi        # 1ac2 <_IO_stdin_used+0x92>
     f62:	31 d2                	xor    %edx,%edx
     f64:	bf 01 00 00 00       	mov    $0x1,%edi
     f69:	31 c0                	xor    %eax,%eax
     f6b:	e8 00 fa ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = 0;
     f70:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     f77:	ff 
     f78:	48 8d 35 54 0b 00 00 	lea    0xb54(%rip),%rsi        # 1ad3 <_IO_stdin_used+0xa3>
     f7f:	bf 01 00 00 00       	mov    $0x1,%edi
     f84:	83 c0 01             	add    $0x1,%eax
     f87:	89 c2                	mov    %eax,%edx
     f89:	c1 ea 1f             	shr    $0x1f,%edx
     f8c:	01 d0                	add    %edx,%eax
     f8e:	83 e0 01             	and    $0x1,%eax
     f91:	29 d0                	sub    %edx,%eax
     f93:	48 98                	cltq   
     f95:	48 c1 e0 09          	shl    $0x9,%rax
     f99:	48 8b 44 05 00       	mov    0x0(%rbp,%rax,1),%rax
     f9e:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     fa5:	00 00 00 00 
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;
     fa9:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     fb0:	ff 
     fb1:	83 c0 01             	add    $0x1,%eax
     fb4:	89 c2                	mov    %eax,%edx
     fb6:	c1 ea 1f             	shr    $0x1f,%edx
     fb9:	01 d0                	add    %edx,%eax
     fbb:	83 e0 01             	and    $0x1,%eax
     fbe:	29 d0                	sub    %edx,%eax
     fc0:	48 98                	cltq   
     fc2:	48 c1 e0 09          	shl    $0x9,%rax
     fc6:	48 01 e8             	add    %rbp,%rax
     fc9:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    UserThreadingVec[threadId].buf->context.mxcsr = 0;
     fd0:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     fd7:	ff ff 
     fd9:	48 c1 e0 09          	shl    $0x9,%rax
     fdd:	48 8b 44 05 00       	mov    0x0(%rbp,%rax,1),%rax
     fe2:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     fe9:	00 00 00 00 
    UserThreadingVec[threadId].sp_exit_check = true;
     fed:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     ff4:	ff ff 
     ff6:	48 c1 e0 09          	shl    $0x9,%rax
     ffa:	48 01 e8             	add    %rbp,%rax
     ffd:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    printf("I am done %d\n", threadId);
    1004:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    100b:	ff 
    100c:	31 c0                	xor    %eax,%eax
    100e:	e8 5d f9 ff ff       	callq  970 <__printf_chk@plt>
    Yield(&UserThreadingVec[threadId]);
    1013:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    101a:	ff ff 
  Context *s = &(_uth->sched_thread->context);
    101c:	48 c1 e0 09          	shl    $0x9,%rax
    1020:	48 01 c5             	add    %rax,%rbp
    1023:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
    102a:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    1031:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1038:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    103e:	80 bd c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rbp)
    1045:	0f 84 98 00 00 00    	je     10e3 <target2201+0x12>
      _uth->lastVal = !_uth->lastVal;
    104b:	c6 85 c0 01 00 00 00 	movb   $0x0,0x1c0(%rbp)
          __asm__ __volatile__(
    1052:	48 89 20             	mov    %rsp,(%rax)
    1055:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 10d1 <target2201>
    105c:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1060:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1064:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1068:	4c 89 48 20          	mov    %r9,0x20(%rax)
    106c:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1070:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1074:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1078:	4c 89 68 40          	mov    %r13,0x40(%rax)
    107c:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1080:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1084:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1088:	48 89 78 60          	mov    %rdi,0x60(%rax)
    108c:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1090:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    1097:	00 
    1098:	48 8b 23             	mov    (%rbx),%rsp
    109b:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    109f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    10a3:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    10a7:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    10ab:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    10af:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    10b3:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    10b7:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    10bb:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    10bf:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    10c3:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    10c7:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    10cb:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    10cf:	ff e1                	jmpq   *%rcx

00000000000010d1 <target2201>:
}
    10d1:	48 83 c4 08          	add    $0x8,%rsp
    10d5:	48 8d 3d 05 0a 00 00 	lea    0xa05(%rip),%rdi        # 1ae1 <_IO_stdin_used+0xb1>
    10dc:	5b                   	pop    %rbx
    10dd:	5d                   	pop    %rbp
    10de:	e9 3d f8 ff ff       	jmpq   920 <puts@plt>
    _uth->lastVal = !_uth->lastVal;
    10e3:	c6 85 c0 01 00 00 01 	movb   $0x1,0x1c0(%rbp)
    __asm__ __volatile__(
    10ea:	48 89 20             	mov    %rsp,(%rax)
    10ed:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1169 <target2240>
    10f4:	48 89 48 08          	mov    %rcx,0x8(%rax)
    10f8:	48 89 50 10          	mov    %rdx,0x10(%rax)
    10fc:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1100:	4c 89 48 20          	mov    %r9,0x20(%rax)
    1104:	4c 89 50 28          	mov    %r10,0x28(%rax)
    1108:	4c 89 58 30          	mov    %r11,0x30(%rax)
    110c:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1110:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1114:	4c 89 70 48          	mov    %r14,0x48(%rax)
    1118:	4c 89 78 50          	mov    %r15,0x50(%rax)
    111c:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1120:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1124:	48 89 70 68          	mov    %rsi,0x68(%rax)
    1128:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    112f:	00 
    1130:	48 8b 23             	mov    (%rbx),%rsp
    1133:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1137:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    113b:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    113f:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1143:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1147:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    114b:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    114f:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1153:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1157:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    115b:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    115f:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1163:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1167:	ff e1                	jmpq   *%rcx

0000000000001169 <target2240>:
    1169:	e9 63 ff ff ff       	jmpq   10d1 <target2201>
    116e:	66 90                	xchg   %ax,%ax

0000000000001170 <mpthread1>:
void *mpthread1(void *arg){
    1170:	41 56                	push   %r14
    1172:	41 55                	push   %r13
    CPU_ZERO(&cpuset);
    1174:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread1(void *arg){
    1179:	41 54                	push   %r12
    117b:	55                   	push   %rbp
    117c:	53                   	push   %rbx
    117d:	48 89 fb             	mov    %rdi,%rbx
    1180:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1187:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    118e:	00 00 
    1190:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1197:	00 
    1198:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset);
    119a:	48 89 e2             	mov    %rsp,%rdx
    119d:	48 89 d7             	mov    %rdx,%rdi
    11a0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_1, &cpuset);
    11a3:	48 63 05 d6 27 20 00 	movslq 0x2027d6(%rip),%rax        # 203980 <coreId_1>
    11aa:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    11b0:	77 13                	ja     11c5 <mpthread1+0x55>
    11b2:	48 89 c1             	mov    %rax,%rcx
    11b5:	be 01 00 00 00       	mov    $0x1,%esi
    11ba:	48 c1 e8 06          	shr    $0x6,%rax
    11be:	48 d3 e6             	shl    %cl,%rsi
    11c1:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    11c5:	48 8b 3d cc 27 20 00 	mov    0x2027cc(%rip),%rdi        # 203998 <threadId_1>
    11cc:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    11d1:	4c 8d 25 d4 27 20 00 	lea    0x2027d4(%rip),%r12        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    11d8:	e8 63 f7 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    11dd:	e8 be f7 ff ff       	callq  9a0 <sched_getcpu@plt>
    11e2:	48 8d 35 fe 08 00 00 	lea    0x8fe(%rip),%rsi        # 1ae7 <_IO_stdin_used+0xb7>
    11e9:	89 c2                	mov    %eax,%edx
    11eb:	bf 01 00 00 00       	mov    $0x1,%edi
    11f0:	31 c0                	xor    %eax,%eax
    11f2:	e8 79 f7 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    11f7:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    11fe:	ff 
    printf("ThreadNum: %d\n", threadId);
    11ff:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    1206:	ff 
    1207:	48 8d 35 f1 08 00 00 	lea    0x8f1(%rip),%rsi        # 1aff <_IO_stdin_used+0xcf>
    120e:	bf 01 00 00 00       	mov    $0x1,%edi
    1213:	31 c0                	xor    %eax,%eax
    1215:	e8 56 f7 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    121a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1221:	ff ff 
    pthread_barrier_wait(&barrier);
    1223:	48 8d 3d f6 20 20 00 	lea    0x2020f6(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    122a:	41 c6 04 04 01       	movb   $0x1,(%r12,%rax,1)
    pthread_barrier_wait(&barrier);
    122f:	e8 9c f7 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    1234:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    1236:	64 4c 63 2c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r13
    123d:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    123f:	48 8d 2d 3a 21 20 00 	lea    0x20213a(%rip),%rbp        # 203380 <UserThreadingVec>
    1246:	48 8d 35 c1 08 00 00 	lea    0x8c1(%rip),%rsi        # 1b0e <_IO_stdin_used+0xde>
    124d:	48 c1 e2 20          	shl    $0x20,%rdx
    1251:	bf 01 00 00 00       	mov    $0x1,%edi
    1256:	48 09 d0             	or     %rdx,%rax
    thread1_starttime = __rdtsc();
    1259:	48 89 05 28 27 20 00 	mov    %rax,0x202728(%rip)        # 203988 <thread1_starttime>
    1260:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1262:	4d 89 ee             	mov    %r13,%r14
    1265:	49 c1 e6 09          	shl    $0x9,%r14
    1269:	49 01 ee             	add    %rbp,%r14
    126c:	41 8b 96 40 01 00 00 	mov    0x140(%r14),%edx
    1273:	e8 f8 f6 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1278:	be 80 10 00 00       	mov    $0x1080,%esi
    127d:	bf 40 00 00 00       	mov    $0x40,%edi
    1282:	e8 39 f7 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    1287:	49 8b 0e             	mov    (%r14),%rcx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    128a:	49 89 86 c0 00 00 00 	mov    %rax,0xc0(%r14)
  _thread->context.mxcsr = 0;
    1291:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1298:	00 00 00 00 
    129c:	0f 1f 40 00          	nopl   0x0(%rax)
  while (_uth->buf->context.mxcsr == 11);
    12a0:	48 8b 91 70 10 00 00 	mov    0x1070(%rcx),%rdx
    12a7:	48 83 fa 0b          	cmp    $0xb,%rdx
    12ab:	74 f3                	je     12a0 <mpthread1+0x130>
  while (!_uth->sp_exit_check){
    12ad:	49 c1 e5 09          	shl    $0x9,%r13
  Context *s = &(_uth->sched_thread->context);
    12b1:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf->context);
    12b8:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
  while (!_uth->sp_exit_check){
    12bf:	4a 8d 54 2d 00       	lea    0x0(%rbp,%r13,1),%rdx
    12c4:	eb 23                	jmp    12e9 <mpthread1+0x179>
    12c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12cd:	00 00 00 
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    12d0:	48 8b 0a             	mov    (%rdx),%rcx
    12d3:	0f b6 b2 80 01 00 00 	movzbl 0x180(%rdx),%esi
    12da:	48 8b b9 70 10 00 00 	mov    0x1070(%rcx),%rdi
    12e1:	48 89 f1             	mov    %rsi,%rcx
    12e4:	48 39 f7             	cmp    %rsi,%rdi
    12e7:	74 57                	je     1340 <mpthread1+0x1d0>
  while (!_uth->sp_exit_check){
    12e9:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
    12f0:	84 c9                	test   %cl,%cl
    12f2:	74 dc                	je     12d0 <mpthread1+0x160>
    OSThreadAvailable[threadId] = false;
    12f4:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    12fb:	ff ff 
    12fd:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
    1302:	0f 31                	rdtsc  
    1304:	48 c1 e2 20          	shl    $0x20,%rdx
    1308:	48 09 d0             	or     %rdx,%rax
}
    130b:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    1312:	00 
    1313:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    131a:	00 00 
    thread1_endtime = __rdtsc();
    131c:	48 89 05 95 26 20 00 	mov    %rax,0x202695(%rip)        # 2039b8 <thread1_endtime>
}
    1323:	0f 85 9c 00 00 00    	jne    13c5 <target480+0x5>
    1329:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    1330:	5b                   	pop    %rbx
    1331:	5d                   	pop    %rbp
    1332:	41 5c                	pop    %r12
    1334:	41 5d                	pop    %r13
    1336:	41 5e                	pop    %r14
    1338:	c3                   	retq   
    1339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
          _uth->expVal = !_uth->expVal;
    1340:	83 f1 01             	xor    $0x1,%ecx
    1343:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    1349:	48 89 23             	mov    %rsp,(%rbx)
    134c:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 13c0 <target480>
    1353:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    1357:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    135b:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    135f:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1363:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    1367:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    136b:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    136f:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1373:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    1377:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    137b:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    137f:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1383:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    1387:	48 8b 20             	mov    (%rax),%rsp
    138a:	4c 8b 68 40          	mov    0x40(%rax),%r13
    138e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1392:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1396:	4c 8b 40 18          	mov    0x18(%rax),%r8
    139a:	4c 8b 48 20          	mov    0x20(%rax),%r9
    139e:	4c 8b 50 28          	mov    0x28(%rax),%r10
    13a2:	4c 8b 58 30          	mov    0x30(%rax),%r11
    13a6:	4c 8b 60 38          	mov    0x38(%rax),%r12
    13aa:	4c 8b 70 48          	mov    0x48(%rax),%r14
    13ae:	4c 8b 78 50          	mov    0x50(%rax),%r15
    13b2:	48 8b 68 58          	mov    0x58(%rax),%rbp
    13b6:	48 8b 78 60          	mov    0x60(%rax),%rdi
    13ba:	48 8b 70 68          	mov    0x68(%rax),%rsi
    13be:	ff e1                	jmpq   *%rcx

00000000000013c0 <target480>:
    13c0:	e9 24 ff ff ff       	jmpq   12e9 <mpthread1+0x179>
}
    13c5:	e8 66 f5 ff ff       	callq  930 <__stack_chk_fail@plt>
    13ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000013d0 <mpthread2>:
void *mpthread2(void *arg){
    13d0:	41 56                	push   %r14
    13d2:	41 55                	push   %r13
    CPU_ZERO(&cpuset2);
    13d4:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread2(void *arg){
    13d9:	41 54                	push   %r12
    13db:	55                   	push   %rbp
    13dc:	53                   	push   %rbx
    13dd:	48 89 fb             	mov    %rdi,%rbx
    13e0:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    13e7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13ee:	00 00 
    13f0:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    13f7:	00 
    13f8:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset2);
    13fa:	48 89 e2             	mov    %rsp,%rdx
    13fd:	48 89 d7             	mov    %rdx,%rdi
    1400:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_2, &cpuset2);
    1403:	48 63 05 9e 25 20 00 	movslq 0x20259e(%rip),%rax        # 2039a8 <coreId_2>
    140a:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1410:	77 13                	ja     1425 <mpthread2+0x55>
    1412:	48 89 c1             	mov    %rax,%rcx
    1415:	be 01 00 00 00       	mov    $0x1,%esi
    141a:	48 c1 e8 06          	shr    $0x6,%rax
    141e:	48 d3 e6             	shl    %cl,%rsi
    1421:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    1425:	48 8b 3d d4 1e 20 00 	mov    0x201ed4(%rip),%rdi        # 203300 <threadId_2>
    142c:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    1431:	4c 8d 25 74 25 20 00 	lea    0x202574(%rip),%r12        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    1438:	e8 03 f5 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    143d:	e8 5e f5 ff ff       	callq  9a0 <sched_getcpu@plt>
    1442:	48 8d 35 9e 06 00 00 	lea    0x69e(%rip),%rsi        # 1ae7 <_IO_stdin_used+0xb7>
    1449:	89 c2                	mov    %eax,%edx
    144b:	bf 01 00 00 00       	mov    $0x1,%edi
    1450:	31 c0                	xor    %eax,%eax
    1452:	e8 19 f5 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    1457:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    145e:	ff 
    printf("ThreadNum: %d\n", threadId);
    145f:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    1466:	ff 
    1467:	48 8d 35 91 06 00 00 	lea    0x691(%rip),%rsi        # 1aff <_IO_stdin_used+0xcf>
    146e:	bf 01 00 00 00       	mov    $0x1,%edi
    1473:	31 c0                	xor    %eax,%eax
    1475:	e8 f6 f4 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    147a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1481:	ff ff 
    pthread_barrier_wait(&barrier);
    1483:	48 8d 3d 96 1e 20 00 	lea    0x201e96(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    148a:	41 c6 04 04 01       	movb   $0x1,(%r12,%rax,1)
    pthread_barrier_wait(&barrier);
    148f:	e8 3c f5 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    1494:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    1496:	64 4c 63 2c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r13
    149d:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    149f:	48 8d 2d da 1e 20 00 	lea    0x201eda(%rip),%rbp        # 203380 <UserThreadingVec>
    14a6:	48 8d 35 61 06 00 00 	lea    0x661(%rip),%rsi        # 1b0e <_IO_stdin_used+0xde>
    14ad:	48 c1 e2 20          	shl    $0x20,%rdx
    14b1:	bf 01 00 00 00       	mov    $0x1,%edi
    14b6:	48 09 d0             	or     %rdx,%rax
    thread2_starttime = __rdtsc();
    14b9:	48 89 05 f0 24 20 00 	mov    %rax,0x2024f0(%rip)        # 2039b0 <thread2_starttime>
    14c0:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    14c2:	4d 89 ee             	mov    %r13,%r14
    14c5:	49 c1 e6 09          	shl    $0x9,%r14
    14c9:	49 01 ee             	add    %rbp,%r14
    14cc:	41 8b 96 40 01 00 00 	mov    0x140(%r14),%edx
    14d3:	e8 98 f4 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    14d8:	be 80 10 00 00       	mov    $0x1080,%esi
    14dd:	bf 40 00 00 00       	mov    $0x40,%edi
    14e2:	e8 d9 f4 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    14e7:	49 8b 0e             	mov    (%r14),%rcx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    14ea:	49 89 86 c0 00 00 00 	mov    %rax,0xc0(%r14)
  _thread->context.mxcsr = 0;
    14f1:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    14f8:	00 00 00 00 
    14fc:	0f 1f 40 00          	nopl   0x0(%rax)
  while (_uth->buf->context.mxcsr == 11);
    1500:	48 8b 91 70 10 00 00 	mov    0x1070(%rcx),%rdx
    1507:	48 83 fa 0b          	cmp    $0xb,%rdx
    150b:	74 f3                	je     1500 <mpthread2+0x130>
  while (!_uth->sp_exit_check){
    150d:	49 c1 e5 09          	shl    $0x9,%r13
  Context *s = &(_uth->sched_thread->context);
    1511:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf->context);
    1518:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
  while (!_uth->sp_exit_check){
    151f:	4a 8d 54 2d 00       	lea    0x0(%rbp,%r13,1),%rdx
    1524:	eb 23                	jmp    1549 <mpthread2+0x179>
    1526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    152d:	00 00 00 
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1530:	48 8b 0a             	mov    (%rdx),%rcx
    1533:	0f b6 b2 80 01 00 00 	movzbl 0x180(%rdx),%esi
    153a:	48 8b b9 70 10 00 00 	mov    0x1070(%rcx),%rdi
    1541:	48 89 f1             	mov    %rsi,%rcx
    1544:	48 39 f7             	cmp    %rsi,%rdi
    1547:	74 57                	je     15a0 <mpthread2+0x1d0>
  while (!_uth->sp_exit_check){
    1549:	0f b6 8a 00 01 00 00 	movzbl 0x100(%rdx),%ecx
    1550:	84 c9                	test   %cl,%cl
    1552:	74 dc                	je     1530 <mpthread2+0x160>
    OSThreadAvailable[threadId] = false;
    1554:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    155b:	ff ff 
    155d:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
    1562:	0f 31                	rdtsc  
    1564:	48 c1 e2 20          	shl    $0x20,%rdx
    1568:	48 09 d0             	or     %rdx,%rax
}
    156b:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    1572:	00 
    1573:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    157a:	00 00 
    thread2_endtime = __rdtsc();
    157c:	48 89 05 0d 24 20 00 	mov    %rax,0x20240d(%rip)        # 203990 <thread2_endtime>
}
    1583:	0f 85 9c 00 00 00    	jne    1625 <target729+0x5>
    1589:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    1590:	5b                   	pop    %rbx
    1591:	5d                   	pop    %rbp
    1592:	41 5c                	pop    %r12
    1594:	41 5d                	pop    %r13
    1596:	41 5e                	pop    %r14
    1598:	c3                   	retq   
    1599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
          _uth->expVal = !_uth->expVal;
    15a0:	83 f1 01             	xor    $0x1,%ecx
    15a3:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    15a9:	48 89 23             	mov    %rsp,(%rbx)
    15ac:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1620 <target729>
    15b3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    15b7:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    15bb:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    15bf:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    15c3:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    15c7:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    15cb:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    15cf:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    15d3:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    15d7:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    15db:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    15df:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    15e3:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    15e7:	48 8b 20             	mov    (%rax),%rsp
    15ea:	4c 8b 68 40          	mov    0x40(%rax),%r13
    15ee:	48 8b 48 08          	mov    0x8(%rax),%rcx
    15f2:	48 8b 50 10          	mov    0x10(%rax),%rdx
    15f6:	4c 8b 40 18          	mov    0x18(%rax),%r8
    15fa:	4c 8b 48 20          	mov    0x20(%rax),%r9
    15fe:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1602:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1606:	4c 8b 60 38          	mov    0x38(%rax),%r12
    160a:	4c 8b 70 48          	mov    0x48(%rax),%r14
    160e:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1612:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1616:	48 8b 78 60          	mov    0x60(%rax),%rdi
    161a:	48 8b 70 68          	mov    0x68(%rax),%rsi
    161e:	ff e1                	jmpq   *%rcx

0000000000001620 <target729>:
    1620:	e9 24 ff ff ff       	jmpq   1549 <mpthread2+0x179>
}
    1625:	e8 06 f3 ff ff       	callq  930 <__stack_chk_fail@plt>
    162a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001630 <Thread_Init>:
  _thread->context.mxcsr = 0;
    1630:	48 c7 87 70 10 00 00 	movq   $0x0,0x1070(%rdi)
    1637:	00 00 00 00 
}
    163b:	c3                   	retq   
    163c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001640 <Thread_Destory>:
    1640:	f3 c3                	repz retq 
    1642:	0f 1f 40 00          	nopl   0x0(%rax)
    1646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    164d:	00 00 00 

0000000000001650 <UserThreading_Init>:
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1650:	55                   	push   %rbp
    1651:	53                   	push   %rbx
    1652:	89 f5                	mov    %esi,%ebp
    1654:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1657:	be 80 10 00 00       	mov    $0x1080,%esi
    165c:	bf 40 00 00 00       	mov    $0x40,%edi
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1661:	48 83 ec 08          	sub    $0x8,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1665:	e8 56 f3 ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->lastVal = !_id;
    166a:	85 ed                	test   %ebp,%ebp
    _uth->sp_exit_check = false;
    166c:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
    _uth->id = _id;
    1673:	89 ab 40 01 00 00    	mov    %ebp,0x140(%rbx)
    _uth->buf->context.mxcsr = 11;
    1679:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
    1680:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1684:	48 89 03             	mov    %rax,(%rbx)
    _uth->expVal = 1;
    1687:	c6 83 80 01 00 00 01 	movb   $0x1,0x180(%rbx)
    _uth->lastVal = !_id;
    168e:	0f 94 83 c0 01 00 00 	sete   0x1c0(%rbx)
}
    1695:	48 83 c4 08          	add    $0x8,%rsp
    1699:	5b                   	pop    %rbx
    169a:	5d                   	pop    %rbp
    169b:	c3                   	retq   
    169c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000016a0 <Scheduler>:
void Scheduler(UserThreading *_uth){
    16a0:	55                   	push   %rbp
    16a1:	53                   	push   %rbx
    16a2:	48 8d 35 65 04 00 00 	lea    0x465(%rip),%rsi        # 1b0e <_IO_stdin_used+0xde>
    16a9:	48 89 fd             	mov    %rdi,%rbp
    16ac:	31 c0                	xor    %eax,%eax
    16ae:	48 83 ec 08          	sub    $0x8,%rsp
    16b2:	8b 97 40 01 00 00    	mov    0x140(%rdi),%edx
    16b8:	bf 01 00 00 00       	mov    $0x1,%edi
    16bd:	e8 ae f2 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    16c2:	be 80 10 00 00       	mov    $0x1080,%esi
    16c7:	bf 40 00 00 00       	mov    $0x40,%edi
    16cc:	e8 ef f2 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    16d1:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    16d5:	48 89 85 c0 00 00 00 	mov    %rax,0xc0(%rbp)
  _thread->context.mxcsr = 0;
    16dc:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    16e3:	00 00 00 00 
    16e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    16ee:	00 00 
  while (_uth->buf->context.mxcsr == 11);
    16f0:	48 8b 91 70 10 00 00 	mov    0x1070(%rcx),%rdx
    16f7:	48 83 fa 0b          	cmp    $0xb,%rdx
    16fb:	74 f3                	je     16f0 <Scheduler+0x50>
  Context *s = &(_uth->sched_thread->context);
    16fd:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf->context);
    1704:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
  while (!_uth->sp_exit_check){
    170b:	eb 1d                	jmp    172a <Scheduler+0x8a>
    170d:	0f 1f 00             	nopl   (%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1710:	48 8b 55 00          	mov    0x0(%rbp),%rdx
    1714:	0f b6 8d 80 01 00 00 	movzbl 0x180(%rbp),%ecx
    171b:	48 8b b2 70 10 00 00 	mov    0x1070(%rdx),%rsi
    1722:	48 89 ca             	mov    %rcx,%rdx
    1725:	48 39 ce             	cmp    %rcx,%rsi
    1728:	74 16                	je     1740 <Scheduler+0xa0>
  while (!_uth->sp_exit_check){
    172a:	0f b6 95 00 01 00 00 	movzbl 0x100(%rbp),%edx
    1731:	84 d2                	test   %dl,%dl
    1733:	74 db                	je     1710 <Scheduler+0x70>
}
    1735:	48 83 c4 08          	add    $0x8,%rsp
    1739:	5b                   	pop    %rbx
    173a:	5d                   	pop    %rbp
    173b:	c3                   	retq   
    173c:	0f 1f 40 00          	nopl   0x0(%rax)
          _uth->expVal = !_uth->expVal;
    1740:	83 f2 01             	xor    $0x1,%edx
    1743:	88 95 80 01 00 00    	mov    %dl,0x180(%rbp)
            __asm__ __volatile__(
    1749:	48 89 23             	mov    %rsp,(%rbx)
    174c:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 17c0 <target905>
    1753:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    1757:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    175b:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    175f:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1763:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    1767:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    176b:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    176f:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1773:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    1777:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    177b:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    177f:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1783:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    1787:	48 8b 20             	mov    (%rax),%rsp
    178a:	4c 8b 68 40          	mov    0x40(%rax),%r13
    178e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1792:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1796:	4c 8b 40 18          	mov    0x18(%rax),%r8
    179a:	4c 8b 48 20          	mov    0x20(%rax),%r9
    179e:	4c 8b 50 28          	mov    0x28(%rax),%r10
    17a2:	4c 8b 58 30          	mov    0x30(%rax),%r11
    17a6:	4c 8b 60 38          	mov    0x38(%rax),%r12
    17aa:	4c 8b 70 48          	mov    0x48(%rax),%r14
    17ae:	4c 8b 78 50          	mov    0x50(%rax),%r15
    17b2:	48 8b 68 58          	mov    0x58(%rax),%rbp
    17b6:	48 8b 78 60          	mov    0x60(%rax),%rdi
    17ba:	48 8b 70 68          	mov    0x68(%rax),%rsi
    17be:	ff e1                	jmpq   *%rcx

00000000000017c0 <target905>:
    17c0:	e9 65 ff ff ff       	jmpq   172a <Scheduler+0x8a>
    17c5:	90                   	nop
    17c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17cd:	00 00 00 

00000000000017d0 <UserThreading_Destory>:
}
    17d0:	f3 c3                	repz retq 
    17d2:	0f 1f 40 00          	nopl   0x0(%rax)
    17d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17dd:	00 00 00 

00000000000017e0 <Yield>:
  Context *s = &(_uth->sched_thread->context);
    17e0:	48 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%rax
void Yield(UserThreading *_uth){
    17e7:	53                   	push   %rbx
  Context *s = &(_uth->sched_thread->context);
    17e8:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    17ef:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
    17f6:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    17fc:	80 bf c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdi)
    1803:	0f 84 8f 00 00 00    	je     1898 <target2938+0x9>
      _uth->lastVal = !_uth->lastVal;
    1809:	c6 87 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdi)
          __asm__ __volatile__(
    1810:	48 89 20             	mov    %rsp,(%rax)
    1813:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 188f <target2938>
    181a:	48 89 48 08          	mov    %rcx,0x8(%rax)
    181e:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1822:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1826:	4c 89 48 20          	mov    %r9,0x20(%rax)
    182a:	4c 89 50 28          	mov    %r10,0x28(%rax)
    182e:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1832:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1836:	4c 89 68 40          	mov    %r13,0x40(%rax)
    183a:	4c 89 70 48          	mov    %r14,0x48(%rax)
    183e:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1842:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1846:	48 89 78 60          	mov    %rdi,0x60(%rax)
    184a:	48 89 70 68          	mov    %rsi,0x68(%rax)
    184e:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    1855:	00 
    1856:	48 8b 23             	mov    (%rbx),%rsp
    1859:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    185d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1861:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1865:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1869:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    186d:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1871:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1875:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1879:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    187d:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1881:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1885:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1889:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    188d:	ff e1                	jmpq   *%rcx

000000000000188f <target2938>:
}
    188f:	5b                   	pop    %rbx
    1890:	c3                   	retq   
    1891:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    _uth->lastVal = !_uth->lastVal;
    1898:	c6 87 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdi)
    __asm__ __volatile__(
    189f:	48 89 20             	mov    %rsp,(%rax)
    18a2:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 191e <target2951>
    18a9:	48 89 48 08          	mov    %rcx,0x8(%rax)
    18ad:	48 89 50 10          	mov    %rdx,0x10(%rax)
    18b1:	4c 89 40 18          	mov    %r8,0x18(%rax)
    18b5:	4c 89 48 20          	mov    %r9,0x20(%rax)
    18b9:	4c 89 50 28          	mov    %r10,0x28(%rax)
    18bd:	4c 89 58 30          	mov    %r11,0x30(%rax)
    18c1:	4c 89 60 38          	mov    %r12,0x38(%rax)
    18c5:	4c 89 68 40          	mov    %r13,0x40(%rax)
    18c9:	4c 89 70 48          	mov    %r14,0x48(%rax)
    18cd:	4c 89 78 50          	mov    %r15,0x50(%rax)
    18d1:	48 89 68 58          	mov    %rbp,0x58(%rax)
    18d5:	48 89 78 60          	mov    %rdi,0x60(%rax)
    18d9:	48 89 70 68          	mov    %rsi,0x68(%rax)
    18dd:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    18e4:	00 
    18e5:	48 8b 23             	mov    (%rbx),%rsp
    18e8:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    18ec:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    18f0:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    18f4:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    18f8:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    18fc:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1900:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1904:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1908:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    190c:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1910:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1914:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1918:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    191c:	ff e1                	jmpq   *%rcx

000000000000191e <target2951>:
}
    191e:	5b                   	pop    %rbx
    191f:	c3                   	retq   

0000000000001920 <makeThread>:
int makeThread(UserThreading *_uth, void (*fn)()){
    1920:	55                   	push   %rbp
    1921:	53                   	push   %rbx
    1922:	48 89 f5             	mov    %rsi,%rbp
    1925:	48 89 fb             	mov    %rdi,%rbx
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1928:	be 80 10 00 00       	mov    $0x1080,%esi
    192d:	bf 80 00 00 00       	mov    $0x80,%edi
int makeThread(UserThreading *_uth, void (*fn)()){
    1932:	48 83 ec 08          	sub    $0x8,%rsp
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1936:	e8 85 f0 ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    193b:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
    1942:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1949:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
    194d:	48 89 a8 08 10 00 00 	mov    %rbp,0x1008(%rax)
  new_thread->context.mxcsr = 1;
    1954:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
    195b:	01 00 00 00 
  _uth->buf = new_thread; 
    195f:	48 89 03             	mov    %rax,(%rbx)
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    1962:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
}
    1969:	48 83 c4 08          	add    $0x8,%rsp
    196d:	5b                   	pop    %rbx
    196e:	5d                   	pop    %rbp
    196f:	c3                   	retq   

0000000000001970 <allSchedulersExit>:
    if (i != threadId )
    1970:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    1977:	ff 
    1978:	85 c0                	test   %eax,%eax
    197a:	74 07                	je     1983 <allSchedulersExit+0x13>
      UserThreadingVec[i].sp_exit_check = true;
    197c:	c6 05 fd 1a 20 00 01 	movb   $0x1,0x201afd(%rip)        # 203480 <UserThreadingVec+0x100>
    if (i != threadId )
    1983:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    198a:	ff 
    198b:	83 f8 01             	cmp    $0x1,%eax
    198e:	74 07                	je     1997 <allSchedulersExit+0x27>
      UserThreadingVec[i].sp_exit_check = true;
    1990:	c6 05 e9 1c 20 00 01 	movb   $0x1,0x201ce9(%rip)        # 203680 <UserThreadingVec+0x300>
    1997:	48 8d 3d 86 01 00 00 	lea    0x186(%rip),%rdi        # 1b24 <_IO_stdin_used+0xf4>
    199e:	e9 7d ef ff ff       	jmpq   920 <puts@plt>
    19a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19aa:	00 00 00 
    19ad:	0f 1f 00             	nopl   (%rax)

00000000000019b0 <__libc_csu_init>:
    19b0:	41 57                	push   %r15
    19b2:	41 56                	push   %r14
    19b4:	49 89 d7             	mov    %rdx,%r15
    19b7:	41 55                	push   %r13
    19b9:	41 54                	push   %r12
    19bb:	4c 8d 25 86 13 20 00 	lea    0x201386(%rip),%r12        # 202d48 <__frame_dummy_init_array_entry>
    19c2:	55                   	push   %rbp
    19c3:	48 8d 2d 86 13 20 00 	lea    0x201386(%rip),%rbp        # 202d50 <__init_array_end>
    19ca:	53                   	push   %rbx
    19cb:	41 89 fd             	mov    %edi,%r13d
    19ce:	49 89 f6             	mov    %rsi,%r14
    19d1:	4c 29 e5             	sub    %r12,%rbp
    19d4:	48 83 ec 08          	sub    $0x8,%rsp
    19d8:	48 c1 fd 03          	sar    $0x3,%rbp
    19dc:	e8 ff ee ff ff       	callq  8e0 <_init>
    19e1:	48 85 ed             	test   %rbp,%rbp
    19e4:	74 20                	je     1a06 <__libc_csu_init+0x56>
    19e6:	31 db                	xor    %ebx,%ebx
    19e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19ef:	00 
    19f0:	4c 89 fa             	mov    %r15,%rdx
    19f3:	4c 89 f6             	mov    %r14,%rsi
    19f6:	44 89 ef             	mov    %r13d,%edi
    19f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    19fd:	48 83 c3 01          	add    $0x1,%rbx
    1a01:	48 39 dd             	cmp    %rbx,%rbp
    1a04:	75 ea                	jne    19f0 <__libc_csu_init+0x40>
    1a06:	48 83 c4 08          	add    $0x8,%rsp
    1a0a:	5b                   	pop    %rbx
    1a0b:	5d                   	pop    %rbp
    1a0c:	41 5c                	pop    %r12
    1a0e:	41 5d                	pop    %r13
    1a10:	41 5e                	pop    %r14
    1a12:	41 5f                	pop    %r15
    1a14:	c3                   	retq   
    1a15:	90                   	nop
    1a16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a1d:	00 00 00 

0000000000001a20 <__libc_csu_fini>:
    1a20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001a24 <_fini>:
    1a24:	48 83 ec 08          	sub    $0x8,%rsp
    1a28:	48 83 c4 08          	add    $0x8,%rsp
    1a2c:	c3                   	retq   

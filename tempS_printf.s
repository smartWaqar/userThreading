
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
     a2a:	48 8d 3d 4d 11 00 00 	lea    0x114d(%rip),%rdi        # 1b7e <_IO_stdin_used+0x11e>
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
     b15:	48 8d 35 77 10 00 00 	lea    0x1077(%rip),%rsi        # 1b93 <_IO_stdin_used+0x133>
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
     b50:	48 8d 15 89 08 00 00 	lea    0x889(%rip),%rdx        # 13e0 <mpthread2>
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
     ba2:	48 8d 35 fa 0f 00 00 	lea    0xffa(%rip),%rsi        # 1ba3 <_IO_stdin_used+0x143>
     ba9:	bf 01 00 00 00       	mov    $0x1,%edi
     bae:	31 c0                	xor    %eax,%eax
     bb0:	e8 bb fd ff ff       	callq  970 <__printf_chk@plt>
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
     bb5:	48 8b 15 44 26 20 00 	mov    0x202644(%rip),%rdx        # 203200 <global_var1>
     bbc:	48 8d 35 f6 0f 00 00 	lea    0xff6(%rip),%rsi        # 1bb9 <_IO_stdin_used+0x159>
     bc3:	bf 01 00 00 00       	mov    $0x1,%edi
     bc8:	31 c0                	xor    %eax,%eax
     bca:	e8 a1 fd ff ff       	callq  970 <__printf_chk@plt>
  printf("global_var2: %lld \n", global_var2); 
     bcf:	48 8b 15 aa 25 20 00 	mov    0x2025aa(%rip),%rdx        # 203180 <global_var2>
     bd6:	48 8d 35 ef 0f 00 00 	lea    0xfef(%rip),%rsi        # 1bcc <_IO_stdin_used+0x16c>
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
     c10:	48 8d 35 a9 0e 00 00 	lea    0xea9(%rip),%rsi        # 1ac0 <_IO_stdin_used+0x60>
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
     c43:	48 8d 3d 46 0e 00 00 	lea    0xe46(%rip),%rdi        # 1a90 <_IO_stdin_used+0x30>
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
     c6f:	4c 8d 05 da 0d 00 00 	lea    0xdda(%rip),%r8        # 1a50 <__libc_csu_fini>
     c76:	48 8d 0d 63 0d 00 00 	lea    0xd63(%rip),%rcx        # 19e0 <__libc_csu_init>
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
     d72:	48 8d 35 ef 0c 00 00 	lea    0xcef(%rip),%rsi        # 1a68 <_IO_stdin_used+0x8>
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
     f4f:	48 8d 3d 92 0b 00 00 	lea    0xb92(%rip),%rdi        # 1ae8 <_IO_stdin_used+0x88>
     f56:	e8 c5 f9 ff ff       	callq  920 <puts@plt>
     f5b:	48 8d 35 90 0b 00 00 	lea    0xb90(%rip),%rsi        # 1af2 <_IO_stdin_used+0x92>
     f62:	31 d2                	xor    %edx,%edx
     f64:	bf 01 00 00 00       	mov    $0x1,%edi
     f69:	31 c0                	xor    %eax,%eax
     f6b:	e8 00 fa ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = 0;
     f70:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     f77:	ff 
     f78:	48 8d 35 84 0b 00 00 	lea    0xb84(%rip),%rsi        # 1b03 <_IO_stdin_used+0xa3>
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
    10d5:	48 8d 3d 35 0a 00 00 	lea    0xa35(%rip),%rdi        # 1b11 <_IO_stdin_used+0xb1>
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
    11d1:	4c 8d 2d d4 27 20 00 	lea    0x2027d4(%rip),%r13        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    11d8:	e8 63 f7 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    11dd:	e8 be f7 ff ff       	callq  9a0 <sched_getcpu@plt>
    11e2:	48 8d 35 2e 09 00 00 	lea    0x92e(%rip),%rsi        # 1b17 <_IO_stdin_used+0xb7>
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
    1207:	48 8d 35 21 09 00 00 	lea    0x921(%rip),%rsi        # 1b2f <_IO_stdin_used+0xcf>
    120e:	bf 01 00 00 00       	mov    $0x1,%edi
    1213:	31 c0                	xor    %eax,%eax
    1215:	e8 56 f7 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    121a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1221:	ff ff 
    pthread_barrier_wait(&barrier);
    1223:	48 8d 3d f6 20 20 00 	lea    0x2020f6(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    122a:	41 c6 44 05 00 01    	movb   $0x1,0x0(%r13,%rax,1)
    pthread_barrier_wait(&barrier);
    1230:	e8 9b f7 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    1235:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    1237:	64 4c 63 34 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r14
    123e:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    1240:	48 8d 2d 39 21 20 00 	lea    0x202139(%rip),%rbp        # 203380 <UserThreadingVec>
    1247:	48 8d 35 f0 08 00 00 	lea    0x8f0(%rip),%rsi        # 1b3e <_IO_stdin_used+0xde>
    124e:	48 c1 e2 20          	shl    $0x20,%rdx
    1252:	bf 01 00 00 00       	mov    $0x1,%edi
    1257:	48 09 d0             	or     %rdx,%rax
    thread1_starttime = __rdtsc();
    125a:	48 89 05 27 27 20 00 	mov    %rax,0x202727(%rip)        # 203988 <thread1_starttime>
    1261:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1263:	4d 89 f4             	mov    %r14,%r12
    1266:	49 c1 e4 09          	shl    $0x9,%r12
    126a:	49 01 ec             	add    %rbp,%r12
    126d:	41 8b 94 24 40 01 00 	mov    0x140(%r12),%edx
    1274:	00 
    1275:	e8 f6 f6 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    127a:	be 80 10 00 00       	mov    $0x1080,%esi
    127f:	bf 40 00 00 00       	mov    $0x40,%edi
    1284:	e8 37 f7 ff ff       	callq  9c0 <aligned_alloc@plt>
    1289:	49 89 84 24 c0 00 00 	mov    %rax,0xc0(%r12)
    1290:	00 
  while (_uth->buf->context.mxcsr == 11);
    1291:	4d 8b 24 24          	mov    (%r12),%r12
  _thread->context.mxcsr = 0;
    1295:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    129c:	00 00 00 00 
  while (_uth->buf->context.mxcsr == 11);
    12a0:	49 8b 94 24 70 10 00 	mov    0x1070(%r12),%rdx
    12a7:	00 
    12a8:	48 83 fa 0b          	cmp    $0xb,%rdx
    12ac:	74 f2                	je     12a0 <mpthread1+0x130>
  Context *t = &(_uth->buf->context);
    12ae:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    12b5:	48 8d 35 98 08 00 00 	lea    0x898(%rip),%rsi        # 1b54 <_IO_stdin_used+0xf4>
  Context *s = &(_uth->sched_thread->context);
    12bc:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
    12c3:	4c 89 e2             	mov    %r12,%rdx
    12c6:	bf 01 00 00 00       	mov    $0x1,%edi
    12cb:	31 c0                	xor    %eax,%eax
  while (!_uth->sp_exit_check){
    12cd:	49 c1 e6 09          	shl    $0x9,%r14
    12d1:	e8 9a f6 ff ff       	callq  970 <__printf_chk@plt>
    12d6:	4a 8d 54 35 00       	lea    0x0(%rbp,%r14,1),%rdx
    12db:	eb 1c                	jmp    12f9 <mpthread1+0x189>
    12dd:	0f 1f 00             	nopl   (%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    12e0:	48 8b 02             	mov    (%rdx),%rax
    12e3:	48 8b b0 70 10 00 00 	mov    0x1070(%rax),%rsi
    12ea:	0f b6 82 80 01 00 00 	movzbl 0x180(%rdx),%eax
    12f1:	48 39 c6             	cmp    %rax,%rsi
    12f4:	48 89 c1             	mov    %rax,%rcx
    12f7:	74 57                	je     1350 <mpthread1+0x1e0>
  while (!_uth->sp_exit_check){
    12f9:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
    1300:	84 c0                	test   %al,%al
    1302:	74 dc                	je     12e0 <mpthread1+0x170>
    OSThreadAvailable[threadId] = false;
    1304:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    130b:	ff ff 
    130d:	41 c6 44 05 00 00    	movb   $0x0,0x0(%r13,%rax,1)
    1313:	0f 31                	rdtsc  
    1315:	48 c1 e2 20          	shl    $0x20,%rdx
    1319:	48 09 d0             	or     %rdx,%rax
}
    131c:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    1323:	00 
    1324:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    132b:	00 00 
    thread1_endtime = __rdtsc();
    132d:	48 89 05 84 26 20 00 	mov    %rax,0x202684(%rip)        # 2039b8 <thread1_endtime>
}
    1334:	0f 85 9e 00 00 00    	jne    13d8 <target501+0x5>
    133a:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    1341:	5b                   	pop    %rbx
    1342:	5d                   	pop    %rbp
    1343:	41 5c                	pop    %r12
    1345:	41 5d                	pop    %r13
    1347:	41 5e                	pop    %r14
    1349:	c3                   	retq   
    134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
          _uth->expVal = !_uth->expVal;
    1350:	83 f1 01             	xor    $0x1,%ecx
            __asm__ __volatile__(
    1353:	4c 89 e0             	mov    %r12,%rax
          _uth->expVal = !_uth->expVal;
    1356:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    135c:	48 89 23             	mov    %rsp,(%rbx)
    135f:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 13d3 <target501>
    1366:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    136a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    136e:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    1372:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1376:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    137a:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    137e:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    1382:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1386:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    138a:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    138e:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    1392:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1396:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    139a:	48 8b 20             	mov    (%rax),%rsp
    139d:	4c 8b 68 40          	mov    0x40(%rax),%r13
    13a1:	48 8b 48 08          	mov    0x8(%rax),%rcx
    13a5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    13a9:	4c 8b 40 18          	mov    0x18(%rax),%r8
    13ad:	4c 8b 48 20          	mov    0x20(%rax),%r9
    13b1:	4c 8b 50 28          	mov    0x28(%rax),%r10
    13b5:	4c 8b 58 30          	mov    0x30(%rax),%r11
    13b9:	4c 8b 60 38          	mov    0x38(%rax),%r12
    13bd:	4c 8b 70 48          	mov    0x48(%rax),%r14
    13c1:	4c 8b 78 50          	mov    0x50(%rax),%r15
    13c5:	48 8b 68 58          	mov    0x58(%rax),%rbp
    13c9:	48 8b 78 60          	mov    0x60(%rax),%rdi
    13cd:	48 8b 70 68          	mov    0x68(%rax),%rsi
    13d1:	ff e1                	jmpq   *%rcx

00000000000013d3 <target501>:
    13d3:	e9 21 ff ff ff       	jmpq   12f9 <mpthread1+0x189>
}
    13d8:	e8 53 f5 ff ff       	callq  930 <__stack_chk_fail@plt>
    13dd:	0f 1f 00             	nopl   (%rax)

00000000000013e0 <mpthread2>:
void *mpthread2(void *arg){
    13e0:	41 56                	push   %r14
    13e2:	41 55                	push   %r13
    CPU_ZERO(&cpuset2);
    13e4:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread2(void *arg){
    13e9:	41 54                	push   %r12
    13eb:	55                   	push   %rbp
    13ec:	53                   	push   %rbx
    13ed:	48 89 fb             	mov    %rdi,%rbx
    13f0:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    13f7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13fe:	00 00 
    1400:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1407:	00 
    1408:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset2);
    140a:	48 89 e2             	mov    %rsp,%rdx
    140d:	48 89 d7             	mov    %rdx,%rdi
    1410:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_2, &cpuset2);
    1413:	48 63 05 8e 25 20 00 	movslq 0x20258e(%rip),%rax        # 2039a8 <coreId_2>
    141a:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1420:	77 13                	ja     1435 <mpthread2+0x55>
    1422:	48 89 c1             	mov    %rax,%rcx
    1425:	be 01 00 00 00       	mov    $0x1,%esi
    142a:	48 c1 e8 06          	shr    $0x6,%rax
    142e:	48 d3 e6             	shl    %cl,%rsi
    1431:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    1435:	48 8b 3d c4 1e 20 00 	mov    0x201ec4(%rip),%rdi        # 203300 <threadId_2>
    143c:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    1441:	4c 8d 2d 64 25 20 00 	lea    0x202564(%rip),%r13        # 2039ac <OSThreadAvailable>
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    1448:	e8 f3 f4 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    144d:	e8 4e f5 ff ff       	callq  9a0 <sched_getcpu@plt>
    1452:	48 8d 35 be 06 00 00 	lea    0x6be(%rip),%rsi        # 1b17 <_IO_stdin_used+0xb7>
    1459:	89 c2                	mov    %eax,%edx
    145b:	bf 01 00 00 00       	mov    $0x1,%edi
    1460:	31 c0                	xor    %eax,%eax
    1462:	e8 09 f5 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    1467:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    146e:	ff 
    printf("ThreadNum: %d\n", threadId);
    146f:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    1476:	ff 
    1477:	48 8d 35 b1 06 00 00 	lea    0x6b1(%rip),%rsi        # 1b2f <_IO_stdin_used+0xcf>
    147e:	bf 01 00 00 00       	mov    $0x1,%edi
    1483:	31 c0                	xor    %eax,%eax
    1485:	e8 e6 f4 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    148a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1491:	ff ff 
    pthread_barrier_wait(&barrier);
    1493:	48 8d 3d 86 1e 20 00 	lea    0x201e86(%rip),%rdi        # 203320 <barrier>
    OSThreadAvailable[threadId] = true;
    149a:	41 c6 44 05 00 01    	movb   $0x1,0x0(%r13,%rax,1)
    pthread_barrier_wait(&barrier);
    14a0:	e8 2b f5 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    14a5:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    14a7:	64 4c 63 34 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r14
    14ae:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    14b0:	48 8d 2d c9 1e 20 00 	lea    0x201ec9(%rip),%rbp        # 203380 <UserThreadingVec>
    14b7:	48 8d 35 80 06 00 00 	lea    0x680(%rip),%rsi        # 1b3e <_IO_stdin_used+0xde>
    14be:	48 c1 e2 20          	shl    $0x20,%rdx
    14c2:	bf 01 00 00 00       	mov    $0x1,%edi
    14c7:	48 09 d0             	or     %rdx,%rax
    thread2_starttime = __rdtsc();
    14ca:	48 89 05 df 24 20 00 	mov    %rax,0x2024df(%rip)        # 2039b0 <thread2_starttime>
    14d1:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    14d3:	4d 89 f4             	mov    %r14,%r12
    14d6:	49 c1 e4 09          	shl    $0x9,%r12
    14da:	49 01 ec             	add    %rbp,%r12
    14dd:	41 8b 94 24 40 01 00 	mov    0x140(%r12),%edx
    14e4:	00 
    14e5:	e8 86 f4 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    14ea:	be 80 10 00 00       	mov    $0x1080,%esi
    14ef:	bf 40 00 00 00       	mov    $0x40,%edi
    14f4:	e8 c7 f4 ff ff       	callq  9c0 <aligned_alloc@plt>
    14f9:	49 89 84 24 c0 00 00 	mov    %rax,0xc0(%r12)
    1500:	00 
  while (_uth->buf->context.mxcsr == 11);
    1501:	4d 8b 24 24          	mov    (%r12),%r12
  _thread->context.mxcsr = 0;
    1505:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    150c:	00 00 00 00 
  while (_uth->buf->context.mxcsr == 11);
    1510:	49 8b 94 24 70 10 00 	mov    0x1070(%r12),%rdx
    1517:	00 
    1518:	48 83 fa 0b          	cmp    $0xb,%rdx
    151c:	74 f2                	je     1510 <mpthread2+0x130>
  Context *t = &(_uth->buf->context);
    151e:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    1525:	48 8d 35 28 06 00 00 	lea    0x628(%rip),%rsi        # 1b54 <_IO_stdin_used+0xf4>
  Context *s = &(_uth->sched_thread->context);
    152c:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
    1533:	4c 89 e2             	mov    %r12,%rdx
    1536:	bf 01 00 00 00       	mov    $0x1,%edi
    153b:	31 c0                	xor    %eax,%eax
  while (!_uth->sp_exit_check){
    153d:	49 c1 e6 09          	shl    $0x9,%r14
    1541:	e8 2a f4 ff ff       	callq  970 <__printf_chk@plt>
    1546:	4a 8d 54 35 00       	lea    0x0(%rbp,%r14,1),%rdx
    154b:	eb 1c                	jmp    1569 <mpthread2+0x189>
    154d:	0f 1f 00             	nopl   (%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1550:	48 8b 02             	mov    (%rdx),%rax
    1553:	48 8b b0 70 10 00 00 	mov    0x1070(%rax),%rsi
    155a:	0f b6 82 80 01 00 00 	movzbl 0x180(%rdx),%eax
    1561:	48 39 c6             	cmp    %rax,%rsi
    1564:	48 89 c1             	mov    %rax,%rcx
    1567:	74 57                	je     15c0 <mpthread2+0x1e0>
  while (!_uth->sp_exit_check){
    1569:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
    1570:	84 c0                	test   %al,%al
    1572:	74 dc                	je     1550 <mpthread2+0x170>
    OSThreadAvailable[threadId] = false;
    1574:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    157b:	ff ff 
    157d:	41 c6 44 05 00 00    	movb   $0x0,0x0(%r13,%rax,1)
    1583:	0f 31                	rdtsc  
    1585:	48 c1 e2 20          	shl    $0x20,%rdx
    1589:	48 09 d0             	or     %rdx,%rax
}
    158c:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    1593:	00 
    1594:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    159b:	00 00 
    thread2_endtime = __rdtsc();
    159d:	48 89 05 ec 23 20 00 	mov    %rax,0x2023ec(%rip)        # 203990 <thread2_endtime>
}
    15a4:	0f 85 9e 00 00 00    	jne    1648 <target771+0x5>
    15aa:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
    15b1:	5b                   	pop    %rbx
    15b2:	5d                   	pop    %rbp
    15b3:	41 5c                	pop    %r12
    15b5:	41 5d                	pop    %r13
    15b7:	41 5e                	pop    %r14
    15b9:	c3                   	retq   
    15ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
          _uth->expVal = !_uth->expVal;
    15c0:	83 f1 01             	xor    $0x1,%ecx
            __asm__ __volatile__(
    15c3:	4c 89 e0             	mov    %r12,%rax
          _uth->expVal = !_uth->expVal;
    15c6:	88 8a 80 01 00 00    	mov    %cl,0x180(%rdx)
            __asm__ __volatile__(
    15cc:	48 89 23             	mov    %rsp,(%rbx)
    15cf:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1643 <target771>
    15d6:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    15da:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    15de:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    15e2:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    15e6:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    15ea:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    15ee:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    15f2:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    15f6:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    15fa:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    15fe:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    1602:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1606:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    160a:	48 8b 20             	mov    (%rax),%rsp
    160d:	4c 8b 68 40          	mov    0x40(%rax),%r13
    1611:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1615:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1619:	4c 8b 40 18          	mov    0x18(%rax),%r8
    161d:	4c 8b 48 20          	mov    0x20(%rax),%r9
    1621:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1625:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1629:	4c 8b 60 38          	mov    0x38(%rax),%r12
    162d:	4c 8b 70 48          	mov    0x48(%rax),%r14
    1631:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1635:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1639:	48 8b 78 60          	mov    0x60(%rax),%rdi
    163d:	48 8b 70 68          	mov    0x68(%rax),%rsi
    1641:	ff e1                	jmpq   *%rcx

0000000000001643 <target771>:
    1643:	e9 21 ff ff ff       	jmpq   1569 <mpthread2+0x189>
}
    1648:	e8 e3 f2 ff ff       	callq  930 <__stack_chk_fail@plt>
    164d:	0f 1f 00             	nopl   (%rax)

0000000000001650 <Thread_Init>:
  _thread->context.mxcsr = 0;
    1650:	48 c7 87 70 10 00 00 	movq   $0x0,0x1070(%rdi)
    1657:	00 00 00 00 
}
    165b:	c3                   	retq   
    165c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001660 <Thread_Destory>:
    1660:	f3 c3                	repz retq 
    1662:	0f 1f 40 00          	nopl   0x0(%rax)
    1666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    166d:	00 00 00 

0000000000001670 <UserThreading_Init>:
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1670:	55                   	push   %rbp
    1671:	53                   	push   %rbx
    1672:	89 f5                	mov    %esi,%ebp
    1674:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1677:	be 80 10 00 00       	mov    $0x1080,%esi
    167c:	bf 40 00 00 00       	mov    $0x40,%edi
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1681:	48 83 ec 08          	sub    $0x8,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1685:	e8 36 f3 ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->lastVal = !_id;
    168a:	85 ed                	test   %ebp,%ebp
    _uth->sp_exit_check = false;
    168c:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
    _uth->id = _id;
    1693:	89 ab 40 01 00 00    	mov    %ebp,0x140(%rbx)
    _uth->buf->context.mxcsr = 11;
    1699:	48 c7 80 70 10 00 00 	movq   $0xb,0x1070(%rax)
    16a0:	0b 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    16a4:	48 89 03             	mov    %rax,(%rbx)
    _uth->expVal = 1;
    16a7:	c6 83 80 01 00 00 01 	movb   $0x1,0x180(%rbx)
    _uth->lastVal = !_id;
    16ae:	0f 94 83 c0 01 00 00 	sete   0x1c0(%rbx)
}
    16b5:	48 83 c4 08          	add    $0x8,%rsp
    16b9:	5b                   	pop    %rbx
    16ba:	5d                   	pop    %rbp
    16bb:	c3                   	retq   
    16bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000016c0 <Scheduler>:
void Scheduler(UserThreading *_uth){
    16c0:	41 54                	push   %r12
    16c2:	55                   	push   %rbp
    16c3:	48 8d 35 74 04 00 00 	lea    0x474(%rip),%rsi        # 1b3e <_IO_stdin_used+0xde>
    16ca:	53                   	push   %rbx
    16cb:	8b 97 40 01 00 00    	mov    0x140(%rdi),%edx
    16d1:	48 89 fd             	mov    %rdi,%rbp
    16d4:	31 c0                	xor    %eax,%eax
    16d6:	bf 01 00 00 00       	mov    $0x1,%edi
    16db:	e8 90 f2 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    16e0:	be 80 10 00 00       	mov    $0x1080,%esi
    16e5:	bf 40 00 00 00       	mov    $0x40,%edi
    16ea:	e8 d1 f2 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    16ef:	4c 8b 65 00          	mov    0x0(%rbp),%r12
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    16f3:	48 89 85 c0 00 00 00 	mov    %rax,0xc0(%rbp)
  _thread->context.mxcsr = 0;
    16fa:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1701:	00 00 00 00 
    1705:	0f 1f 00             	nopl   (%rax)
  while (_uth->buf->context.mxcsr == 11);
    1708:	49 8b 94 24 70 10 00 	mov    0x1070(%r12),%rdx
    170f:	00 
    1710:	48 83 fa 0b          	cmp    $0xb,%rdx
    1714:	74 f2                	je     1708 <Scheduler+0x48>
  Context *t = &(_uth->buf->context);
    1716:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    171d:	48 8d 35 30 04 00 00 	lea    0x430(%rip),%rsi        # 1b54 <_IO_stdin_used+0xf4>
  Context *s = &(_uth->sched_thread->context);
    1724:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
    172b:	4c 89 e2             	mov    %r12,%rdx
    172e:	bf 01 00 00 00       	mov    $0x1,%edi
    1733:	31 c0                	xor    %eax,%eax
    1735:	e8 36 f2 ff ff       	callq  970 <__printf_chk@plt>
    173a:	eb 1e                	jmp    175a <Scheduler+0x9a>
    173c:	0f 1f 40 00          	nopl   0x0(%rax)
      if ( _uth->buf->context.mxcsr == _uth->expVal){
    1740:	48 8b 45 00          	mov    0x0(%rbp),%rax
    1744:	48 8b 88 70 10 00 00 	mov    0x1070(%rax),%rcx
    174b:	0f b6 85 80 01 00 00 	movzbl 0x180(%rbp),%eax
    1752:	48 39 c1             	cmp    %rax,%rcx
    1755:	48 89 c2             	mov    %rax,%rdx
    1758:	74 16                	je     1770 <Scheduler+0xb0>
  while (!_uth->sp_exit_check){
    175a:	0f b6 95 00 01 00 00 	movzbl 0x100(%rbp),%edx
    1761:	84 d2                	test   %dl,%dl
    1763:	74 db                	je     1740 <Scheduler+0x80>
}
    1765:	5b                   	pop    %rbx
    1766:	5d                   	pop    %rbp
    1767:	41 5c                	pop    %r12
    1769:	c3                   	retq   
    176a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
          _uth->expVal = !_uth->expVal;
    1770:	83 f2 01             	xor    $0x1,%edx
            __asm__ __volatile__(
    1773:	4c 89 e0             	mov    %r12,%rax
          _uth->expVal = !_uth->expVal;
    1776:	88 95 80 01 00 00    	mov    %dl,0x180(%rbp)
            __asm__ __volatile__(
    177c:	48 89 23             	mov    %rsp,(%rbx)
    177f:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 17f3 <target965>
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

00000000000017f3 <target965>:
    17f3:	e9 62 ff ff ff       	jmpq   175a <Scheduler+0x9a>
    17f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    17ff:	00 

0000000000001800 <UserThreading_Destory>:
}
    1800:	f3 c3                	repz retq 
    1802:	0f 1f 40 00          	nopl   0x0(%rax)
    1806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    180d:	00 00 00 

0000000000001810 <Yield>:
  Context *s = &(_uth->sched_thread->context);
    1810:	48 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%rax
void Yield(UserThreading *_uth){
    1817:	53                   	push   %rbx
  Context *s = &(_uth->sched_thread->context);
    1818:	48 8d 98 00 10 00 00 	lea    0x1000(%rax),%rbx
  Context *t = &(_uth->buf2->context);
    181f:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
    1826:	48 05 00 10 00 00    	add    $0x1000,%rax
  if (_uth->lastVal == 0){
    182c:	80 bf c0 01 00 00 00 	cmpb   $0x0,0x1c0(%rdi)
    1833:	0f 84 8f 00 00 00    	je     18c8 <target2998+0x9>
      _uth->lastVal = !_uth->lastVal;
    1839:	c6 87 c0 01 00 00 00 	movb   $0x0,0x1c0(%rdi)
          __asm__ __volatile__(
    1840:	48 89 20             	mov    %rsp,(%rax)
    1843:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 18bf <target2998>
    184a:	48 89 48 08          	mov    %rcx,0x8(%rax)
    184e:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1852:	4c 89 40 18          	mov    %r8,0x18(%rax)
    1856:	4c 89 48 20          	mov    %r9,0x20(%rax)
    185a:	4c 89 50 28          	mov    %r10,0x28(%rax)
    185e:	4c 89 58 30          	mov    %r11,0x30(%rax)
    1862:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1866:	4c 89 68 40          	mov    %r13,0x40(%rax)
    186a:	4c 89 70 48          	mov    %r14,0x48(%rax)
    186e:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1872:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1876:	48 89 78 60          	mov    %rdi,0x60(%rax)
    187a:	48 89 70 68          	mov    %rsi,0x68(%rax)
    187e:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    1885:	00 
    1886:	48 8b 23             	mov    (%rbx),%rsp
    1889:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    188d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1891:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1895:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1899:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    189d:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    18a1:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    18a5:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    18a9:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    18ad:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    18b1:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    18b5:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    18b9:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    18bd:	ff e1                	jmpq   *%rcx

00000000000018bf <target2998>:
}
    18bf:	5b                   	pop    %rbx
    18c0:	c3                   	retq   
    18c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    _uth->lastVal = !_uth->lastVal;
    18c8:	c6 87 c0 01 00 00 01 	movb   $0x1,0x1c0(%rdi)
    __asm__ __volatile__(
    18cf:	48 89 20             	mov    %rsp,(%rax)
    18d2:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 194e <target21011>
    18d9:	48 89 48 08          	mov    %rcx,0x8(%rax)
    18dd:	48 89 50 10          	mov    %rdx,0x10(%rax)
    18e1:	4c 89 40 18          	mov    %r8,0x18(%rax)
    18e5:	4c 89 48 20          	mov    %r9,0x20(%rax)
    18e9:	4c 89 50 28          	mov    %r10,0x28(%rax)
    18ed:	4c 89 58 30          	mov    %r11,0x30(%rax)
    18f1:	4c 89 60 38          	mov    %r12,0x38(%rax)
    18f5:	4c 89 68 40          	mov    %r13,0x40(%rax)
    18f9:	4c 89 70 48          	mov    %r14,0x48(%rax)
    18fd:	4c 89 78 50          	mov    %r15,0x50(%rax)
    1901:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1905:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1909:	48 89 70 68          	mov    %rsi,0x68(%rax)
    190d:	48 c7 40 70 00 00 00 	movq   $0x0,0x70(%rax)
    1914:	00 
    1915:	48 8b 23             	mov    (%rbx),%rsp
    1918:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    191c:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1920:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    1924:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1928:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    192c:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1930:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    1934:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1938:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    193c:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1940:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1944:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1948:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    194c:	ff e1                	jmpq   *%rcx

000000000000194e <target21011>:
}
    194e:	5b                   	pop    %rbx
    194f:	c3                   	retq   

0000000000001950 <makeThread>:
int makeThread(UserThreading *_uth, void (*fn)()){
    1950:	55                   	push   %rbp
    1951:	53                   	push   %rbx
    1952:	48 89 f5             	mov    %rsi,%rbp
    1955:	48 89 fb             	mov    %rdi,%rbx
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1958:	be 80 10 00 00       	mov    $0x1080,%esi
    195d:	bf 80 00 00 00       	mov    $0x80,%edi
int makeThread(UserThreading *_uth, void (*fn)()){
    1962:	48 83 ec 08          	sub    $0x8,%rsp
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1966:	e8 55 f0 ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    196b:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
    1972:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1979:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
    197d:	48 89 a8 08 10 00 00 	mov    %rbp,0x1008(%rax)
  new_thread->context.mxcsr = 1;
    1984:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
    198b:	01 00 00 00 
  _uth->buf = new_thread; 
    198f:	48 89 03             	mov    %rax,(%rbx)
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    1992:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
}
    1999:	48 83 c4 08          	add    $0x8,%rsp
    199d:	5b                   	pop    %rbx
    199e:	5d                   	pop    %rbp
    199f:	c3                   	retq   

00000000000019a0 <allSchedulersExit>:
    if (i != threadId )
    19a0:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    19a7:	ff 
    19a8:	85 c0                	test   %eax,%eax
    19aa:	74 07                	je     19b3 <allSchedulersExit+0x13>
      UserThreadingVec[i].sp_exit_check = true;
    19ac:	c6 05 cd 1a 20 00 01 	movb   $0x1,0x201acd(%rip)        # 203480 <UserThreadingVec+0x100>
    if (i != threadId )
    19b3:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    19ba:	ff 
    19bb:	83 f8 01             	cmp    $0x1,%eax
    19be:	74 07                	je     19c7 <allSchedulersExit+0x27>
      UserThreadingVec[i].sp_exit_check = true;
    19c0:	c6 05 b9 1c 20 00 01 	movb   $0x1,0x201cb9(%rip)        # 203680 <UserThreadingVec+0x300>
    19c7:	48 8d 3d 94 01 00 00 	lea    0x194(%rip),%rdi        # 1b62 <_IO_stdin_used+0x102>
    19ce:	e9 4d ef ff ff       	jmpq   920 <puts@plt>
    19d3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19da:	00 00 00 
    19dd:	0f 1f 00             	nopl   (%rax)

00000000000019e0 <__libc_csu_init>:
    19e0:	41 57                	push   %r15
    19e2:	41 56                	push   %r14
    19e4:	49 89 d7             	mov    %rdx,%r15
    19e7:	41 55                	push   %r13
    19e9:	41 54                	push   %r12
    19eb:	4c 8d 25 56 13 20 00 	lea    0x201356(%rip),%r12        # 202d48 <__frame_dummy_init_array_entry>
    19f2:	55                   	push   %rbp
    19f3:	48 8d 2d 56 13 20 00 	lea    0x201356(%rip),%rbp        # 202d50 <__init_array_end>
    19fa:	53                   	push   %rbx
    19fb:	41 89 fd             	mov    %edi,%r13d
    19fe:	49 89 f6             	mov    %rsi,%r14
    1a01:	4c 29 e5             	sub    %r12,%rbp
    1a04:	48 83 ec 08          	sub    $0x8,%rsp
    1a08:	48 c1 fd 03          	sar    $0x3,%rbp
    1a0c:	e8 cf ee ff ff       	callq  8e0 <_init>
    1a11:	48 85 ed             	test   %rbp,%rbp
    1a14:	74 20                	je     1a36 <__libc_csu_init+0x56>
    1a16:	31 db                	xor    %ebx,%ebx
    1a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a1f:	00 
    1a20:	4c 89 fa             	mov    %r15,%rdx
    1a23:	4c 89 f6             	mov    %r14,%rsi
    1a26:	44 89 ef             	mov    %r13d,%edi
    1a29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1a2d:	48 83 c3 01          	add    $0x1,%rbx
    1a31:	48 39 dd             	cmp    %rbx,%rbp
    1a34:	75 ea                	jne    1a20 <__libc_csu_init+0x40>
    1a36:	48 83 c4 08          	add    $0x8,%rsp
    1a3a:	5b                   	pop    %rbx
    1a3b:	5d                   	pop    %rbp
    1a3c:	41 5c                	pop    %r12
    1a3e:	41 5d                	pop    %r13
    1a40:	41 5e                	pop    %r14
    1a42:	41 5f                	pop    %r15
    1a44:	c3                   	retq   
    1a45:	90                   	nop
    1a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a4d:	00 00 00 

0000000000001a50 <__libc_csu_fini>:
    1a50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001a54 <_fini>:
    1a54:	48 83 ec 08          	sub    $0x8,%rsp
    1a58:	48 83 c4 08          	add    $0x8,%rsp
    1a5c:	c3                   	retq   

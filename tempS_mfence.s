
./program24:     file format elf64-x86-64


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
     9f4:	0f 85 2d 02 00 00    	jne    c27 <main+0x237>

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
     a18:	89 05 e2 1d 20 00    	mov    %eax,0x201de2(%rip)        # 202800 <coreId_1>
  new_thread->context.rip = (uint64_t) fn;
     a1e:	48 8d 1d 2b 03 00 00 	lea    0x32b(%rip),%rbx        # d50 <pfc>
     a25:	e8 26 ff ff ff       	callq  950 <strtol@plt>
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
     a2a:	48 8d 3d 4f 0f 00 00 	lea    0xf4f(%rip),%rdi        # 1980 <_IO_stdin_used+0x110>
     a31:	89 05 f1 1d 20 00    	mov    %eax,0x201df1(%rip)        # 202828 <coreId_2>
     a37:	e8 e4 fe ff ff       	callq  920 <puts@plt>
  #else
    printf("REP_NOPS not enabled\n");
  #endif


  pthread_barrier_init (&barrier, NULL, 2);
     a3c:	48 8d 3d dd 18 20 00 	lea    0x2018dd(%rip),%rdi        # 202320 <barrier>
     a43:	ba 02 00 00 00       	mov    $0x2,%edx
     a48:	31 f6                	xor    %esi,%esi
     a4a:	e8 11 ff ff ff       	callq  960 <pthread_barrier_init@plt>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a4f:	be 80 10 00 00       	mov    $0x1080,%esi
     a54:	bf 40 00 00 00       	mov    $0x40,%edi

  threadCount = 2;
     a59:	c7 05 a5 18 20 00 02 	movl   $0x2,0x2018a5(%rip)        # 202308 <threadCount>
     a60:	00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a63:	e8 58 ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     a68:	c6 05 11 1a 20 00 00 	movb   $0x0,0x201a11(%rip)        # 202480 <UserThreadingVec+0x100>
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a6f:	be 80 10 00 00       	mov    $0x1080,%esi
     a74:	bf 40 00 00 00       	mov    $0x40,%edi
    _uth->buf->context.mxcsr = 0;
     a79:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     a80:	00 00 00 00 
    _uth->id = _id;
     a84:	c7 05 32 1a 20 00 00 	movl   $0x0,0x201a32(%rip)        # 2024c0 <UserThreadingVec+0x140>
     a8b:	00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     a8e:	e8 2d ff ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
     a93:	c6 05 66 1b 20 00 00 	movb   $0x0,0x201b66(%rip)        # 202600 <UserThreadingVec+0x280>
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     a9a:	be 80 10 00 00       	mov    $0x1080,%esi
     a9f:	bf 80 00 00 00       	mov    $0x80,%edi
    _uth->buf->context.mxcsr = 0;
     aa4:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     aab:	00 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
     aaf:	48 89 05 4a 1a 20 00 	mov    %rax,0x201a4a(%rip)        # 202500 <UserThreadingVec+0x180>
    _uth->id = _id;
     ab6:	c7 05 80 1b 20 00 01 	movl   $0x1,0x201b80(%rip)        # 202640 <UserThreadingVec+0x2c0>
     abd:	00 00 00 
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
     ac0:	e8 fb fe ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     ac5:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
     acc:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     ad3:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
     ad7:	48 89 98 08 10 00 00 	mov    %rbx,0x1008(%rax)
  new_thread->context.mxcsr = 1;
     ade:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
     ae5:	01 00 00 00 
  _uth->buf = new_thread; 
     ae9:	48 89 05 90 18 20 00 	mov    %rax,0x201890(%rip)        # 202380 <UserThreadingVec>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
     af0:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
/* rdtsc */
extern __inline unsigned long long
__attribute__((__gnu_inline__, __always_inline__, __artificial__))
__rdtsc (void)
{
  return __builtin_ia32_rdtsc ();
     af7:	0f 31                	rdtsc  
     af9:	48 8d 35 95 0e 00 00 	lea    0xe95(%rip),%rsi        # 1995 <_IO_stdin_used+0x125>
     b00:	bf 01 00 00 00       	mov    $0x1,%edi
     b05:	48 c1 e2 20          	shl    $0x20,%rdx
     b09:	48 09 d0             	or     %rdx,%rax
     b0c:	48 89 c2             	mov    %rax,%rdx
     b0f:	31 c0                	xor    %eax,%eax
     b11:	e8 5a fe ff ff       	callq  970 <__printf_chk@plt>
  uint64_t timeCounter_start = __rdtsc();
  printf("My start: %lu \n", timeCounter_start);

  
  OSThreadAvailable[0] = false;
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b16:	48 8d 15 63 07 00 00 	lea    0x763(%rip),%rdx        # 1280 <mpthread1>
     b1d:	48 8d 3d f4 1c 20 00 	lea    0x201cf4(%rip),%rdi        # 202818 <threadId_1>
     b24:	31 c9                	xor    %ecx,%ecx
     b26:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[0] = false;
     b28:	c6 05 fd 1c 20 00 00 	movb   $0x0,0x201cfd(%rip)        # 20282c <OSThreadAvailable>
  pthread_create(&threadId_1, NULL, mpthread1, (void *)(intptr_t) 0);
     b2f:	e8 dc fd ff ff       	callq  910 <pthread_create@plt>
  OSThreadAvailable[1] = false;
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b34:	48 8d 15 f5 04 00 00 	lea    0x4f5(%rip),%rdx        # 1030 <mpthread2>
     b3b:	48 8d 3d be 17 20 00 	lea    0x2017be(%rip),%rdi        # 202300 <threadId_2>
     b42:	b9 01 00 00 00       	mov    $0x1,%ecx
     b47:	31 f6                	xor    %esi,%esi
  OSThreadAvailable[1] = false;
     b49:	c6 05 dd 1c 20 00 00 	movb   $0x0,0x201cdd(%rip)        # 20282d <OSThreadAvailable+0x1>
  pthread_create(&threadId_2, NULL, mpthread2, (void *)(intptr_t) 1);
     b50:	e8 bb fd ff ff       	callq  910 <pthread_create@plt>

  pthread_join(threadId_1, NULL); 
     b55:	48 8b 3d bc 1c 20 00 	mov    0x201cbc(%rip),%rdi        # 202818 <threadId_1>
     b5c:	31 f6                	xor    %esi,%esi
     b5e:	e8 2d fe ff ff       	callq  990 <pthread_join@plt>
  pthread_join(threadId_2, NULL);
     b63:	48 8b 3d 96 17 20 00 	mov    0x201796(%rip),%rdi        # 202300 <threadId_2>
     b6a:	31 f6                	xor    %esi,%esi
     b6c:	e8 1f fe ff ff       	callq  990 <pthread_join@plt>
     b71:	0f 31                	rdtsc  
  uint64_t timeCounter_end = __rdtsc();
  //printf("Execution time per opertation: %lu clock cycles\n", 
  //  (timeCounter_end - timeCounter_start) / (10000000) );


  pthread_barrier_destroy(&barrier);
     b73:	48 8d 3d a6 17 20 00 	lea    0x2017a6(%rip),%rdi        # 202320 <barrier>
     b7a:	e8 01 fe ff ff       	callq  980 <pthread_barrier_destroy@plt>
     b7f:	48 8b 15 1a 17 20 00 	mov    0x20171a(%rip),%rdx        # 2022a0 <globalVariable>
     b86:	48 8d 35 18 0e 00 00 	lea    0xe18(%rip),%rsi        # 19a5 <_IO_stdin_used+0x135>
     b8d:	bf 01 00 00 00       	mov    $0x1,%edi
     b92:	31 c0                	xor    %eax,%eax
     b94:	e8 d7 fd ff ff       	callq  970 <__printf_chk@plt>
  printf("globalVariable: %lld\n",globalVariable); 

  printf("global_var1: %lld\n", global_var1);
     b99:	48 8b 15 60 16 20 00 	mov    0x201660(%rip),%rdx        # 202200 <global_var1>
     ba0:	48 8d 35 14 0e 00 00 	lea    0xe14(%rip),%rsi        # 19bb <_IO_stdin_used+0x14b>
     ba7:	bf 01 00 00 00       	mov    $0x1,%edi
     bac:	31 c0                	xor    %eax,%eax
     bae:	e8 bd fd ff ff       	callq  970 <__printf_chk@plt>
  printf("global_var2: %lld \n", global_var2); 
     bb3:	48 8b 15 c6 15 20 00 	mov    0x2015c6(%rip),%rdx        # 202180 <global_var2>
     bba:	48 8d 35 0d 0e 00 00 	lea    0xe0d(%rip),%rsi        # 19ce <_IO_stdin_used+0x15e>
     bc1:	bf 01 00 00 00       	mov    $0x1,%edi
     bc6:	31 c0                	xor    %eax,%eax
     bc8:	e8 a3 fd ff ff       	callq  970 <__printf_chk@plt>
  //printf("Time from thead Counters");
  // smalller of start time and larger of end time
 
  uint64_t thread_starttime = 
  thread1_starttime < thread2_starttime ? thread1_starttime : thread2_starttime; 
  uint64_t thread_endtime = 
     bcd:	48 8b 15 64 1c 20 00 	mov    0x201c64(%rip),%rdx        # 202838 <thread1_endtime>
     bd4:	48 39 15 35 1c 20 00 	cmp    %rdx,0x201c35(%rip)        # 202810 <thread2_endtime>
  thread1_endtime > thread2_endtime ? thread1_endtime : thread2_endtime;

  printf("Execution time is %lu clock cycles\n",
     bdb:	48 b9 bd 42 7a e5 d5 	movabs $0xd6bf94d5e57a42bd,%rcx
     be2:	94 bf d6 
  uint64_t thread_endtime = 
     be5:	48 0f 43 15 23 1c 20 	cmovae 0x201c23(%rip),%rdx        # 202810 <thread2_endtime>
     bec:	00 
  uint64_t thread_starttime = 
     bed:	48 8b 05 14 1c 20 00 	mov    0x201c14(%rip),%rax        # 202808 <thread1_starttime>
     bf4:	48 8d 35 d5 0c 00 00 	lea    0xcd5(%rip),%rsi        # 18d0 <_IO_stdin_used+0x60>
     bfb:	48 39 05 2e 1c 20 00 	cmp    %rax,0x201c2e(%rip)        # 202830 <thread2_starttime>
     c02:	bf 01 00 00 00       	mov    $0x1,%edi
     c07:	48 0f 46 05 21 1c 20 	cmovbe 0x201c21(%rip),%rax        # 202830 <thread2_starttime>
     c0e:	00 
    (thread_endtime - thread_starttime) / (10000000) );
     c0f:	48 29 c2             	sub    %rax,%rdx
  printf("Execution time is %lu clock cycles\n",
     c12:	48 89 d0             	mov    %rdx,%rax
     c15:	48 f7 e1             	mul    %rcx
     c18:	31 c0                	xor    %eax,%eax
     c1a:	48 c1 ea 17          	shr    $0x17,%rdx
     c1e:	e8 4d fd ff ff       	callq  970 <__printf_chk@plt>

}
     c23:	31 c0                	xor    %eax,%eax
     c25:	5b                   	pop    %rbx
     c26:	c3                   	retq   
     c27:	48 8d 3d 72 0c 00 00 	lea    0xc72(%rip),%rdi        # 18a0 <_IO_stdin_used+0x30>
     c2e:	e8 ed fc ff ff       	callq  920 <puts@plt>
    exit(1);
     c33:	bf 01 00 00 00       	mov    $0x1,%edi
     c38:	e8 73 fd ff ff       	callq  9b0 <exit@plt>
     c3d:	0f 1f 00             	nopl   (%rax)

0000000000000c40 <_start>:
     c40:	31 ed                	xor    %ebp,%ebp
     c42:	49 89 d1             	mov    %rdx,%r9
     c45:	5e                   	pop    %rsi
     c46:	48 89 e2             	mov    %rsp,%rdx
     c49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     c4d:	50                   	push   %rax
     c4e:	54                   	push   %rsp
     c4f:	4c 8d 05 0a 0c 00 00 	lea    0xc0a(%rip),%r8        # 1860 <__libc_csu_fini>
     c56:	48 8d 0d 93 0b 00 00 	lea    0xb93(%rip),%rcx        # 17f0 <__libc_csu_init>
     c5d:	48 8d 3d 8c fd ff ff 	lea    -0x274(%rip),%rdi        # 9f0 <main>
     c64:	ff 15 76 13 20 00    	callq  *0x201376(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     c6a:	f4                   	hlt    
     c6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c70 <deregister_tm_clones>:
     c70:	48 8d 3d 99 13 20 00 	lea    0x201399(%rip),%rdi        # 202010 <__TMC_END__>
     c77:	55                   	push   %rbp
     c78:	48 8d 05 91 13 20 00 	lea    0x201391(%rip),%rax        # 202010 <__TMC_END__>
     c7f:	48 39 f8             	cmp    %rdi,%rax
     c82:	48 89 e5             	mov    %rsp,%rbp
     c85:	74 19                	je     ca0 <deregister_tm_clones+0x30>
     c87:	48 8b 05 4a 13 20 00 	mov    0x20134a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
     c8e:	48 85 c0             	test   %rax,%rax
     c91:	74 0d                	je     ca0 <deregister_tm_clones+0x30>
     c93:	5d                   	pop    %rbp
     c94:	ff e0                	jmpq   *%rax
     c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c9d:	00 00 00 
     ca0:	5d                   	pop    %rbp
     ca1:	c3                   	retq   
     ca2:	0f 1f 40 00          	nopl   0x0(%rax)
     ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     cad:	00 00 00 

0000000000000cb0 <register_tm_clones>:
     cb0:	48 8d 3d 59 13 20 00 	lea    0x201359(%rip),%rdi        # 202010 <__TMC_END__>
     cb7:	48 8d 35 52 13 20 00 	lea    0x201352(%rip),%rsi        # 202010 <__TMC_END__>
     cbe:	55                   	push   %rbp
     cbf:	48 29 fe             	sub    %rdi,%rsi
     cc2:	48 89 e5             	mov    %rsp,%rbp
     cc5:	48 c1 fe 03          	sar    $0x3,%rsi
     cc9:	48 89 f0             	mov    %rsi,%rax
     ccc:	48 c1 e8 3f          	shr    $0x3f,%rax
     cd0:	48 01 c6             	add    %rax,%rsi
     cd3:	48 d1 fe             	sar    %rsi
     cd6:	74 18                	je     cf0 <register_tm_clones+0x40>
     cd8:	48 8b 05 11 13 20 00 	mov    0x201311(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
     cdf:	48 85 c0             	test   %rax,%rax
     ce2:	74 0c                	je     cf0 <register_tm_clones+0x40>
     ce4:	5d                   	pop    %rbp
     ce5:	ff e0                	jmpq   *%rax
     ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     cee:	00 00 
     cf0:	5d                   	pop    %rbp
     cf1:	c3                   	retq   
     cf2:	0f 1f 40 00          	nopl   0x0(%rax)
     cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     cfd:	00 00 00 

0000000000000d00 <__do_global_dtors_aux>:
     d00:	80 3d 79 13 20 00 00 	cmpb   $0x0,0x201379(%rip)        # 202080 <completed.7698>
     d07:	75 2f                	jne    d38 <__do_global_dtors_aux+0x38>
     d09:	48 83 3d e7 12 20 00 	cmpq   $0x0,0x2012e7(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     d10:	00 
     d11:	55                   	push   %rbp
     d12:	48 89 e5             	mov    %rsp,%rbp
     d15:	74 0c                	je     d23 <__do_global_dtors_aux+0x23>
     d17:	48 8b 3d ea 12 20 00 	mov    0x2012ea(%rip),%rdi        # 202008 <__dso_handle>
     d1e:	e8 bd fc ff ff       	callq  9e0 <__cxa_finalize@plt>
     d23:	e8 48 ff ff ff       	callq  c70 <deregister_tm_clones>
     d28:	c6 05 51 13 20 00 01 	movb   $0x1,0x201351(%rip)        # 202080 <completed.7698>
     d2f:	5d                   	pop    %rbp
     d30:	c3                   	retq   
     d31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     d38:	f3 c3                	repz retq 
     d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d40 <frame_dummy>:
     d40:	55                   	push   %rbp
     d41:	48 89 e5             	mov    %rsp,%rbp
     d44:	5d                   	pop    %rbp
     d45:	e9 66 ff ff ff       	jmpq   cb0 <register_tm_clones>
     d4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d50 <pfc>:
void pfc(){
     d50:	55                   	push   %rbp
     d51:	53                   	push   %rbx
     d52:	48 8d 35 1f 0b 00 00 	lea    0xb1f(%rip),%rsi        # 1878 <_IO_stdin_used+0x8>
     d59:	bf 01 00 00 00       	mov    $0x1,%edi
     d5e:	31 c0                	xor    %eax,%eax
     d60:	48 8d 2d 19 16 20 00 	lea    0x201619(%rip),%rbp        # 202380 <UserThreadingVec>
     d67:	48 83 ec 08          	sub    $0x8,%rsp
    printf("parentId: %d --------------------\n", threadId);
     d6b:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
     d72:	ff 
     d73:	e8 f8 fb ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     d78:	48 8b 05 01 16 20 00 	mov    0x201601(%rip),%rax        # 202380 <UserThreadingVec>
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;
     d7f:	be 80 96 98 00       	mov    $0x989680,%esi
    UserThreadingVec[1].buf2 = UserThreadingVec[0].buf; 
     d84:	48 89 05 f5 17 20 00 	mov    %rax,0x2017f5(%rip)        # 202580 <UserThreadingVec+0x200>
    UserThreadingVec[0].buf2 = UserThreadingVec[1].buf;
     d8b:	48 8b 05 6e 17 20 00 	mov    0x20176e(%rip),%rax        # 202500 <UserThreadingVec+0x180>
     d92:	48 89 05 67 16 20 00 	mov    %rax,0x201667(%rip)        # 202400 <UserThreadingVec+0x80>
     d99:	e9 c7 00 00 00       	jmpq   e65 <target269+0x5>
     d9e:	66 90                	xchg   %ax,%ax
          global_var1++;
     da0:	48 8b 05 59 14 20 00 	mov    0x201459(%rip),%rax        # 202200 <global_var1>
     da7:	48 83 c0 01          	add    $0x1,%rax
     dab:	48 89 05 4e 14 20 00 	mov    %rax,0x20144e(%rip)        # 202200 <global_var1>
      Yield(&UserThreadingVec[threadId]);
     db2:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     db9:	ff ff 
  Context *t = &(_uth->buf2->context);
     dbb:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
     dbf:	48 c1 e2 07          	shl    $0x7,%rdx
     dc3:	48 01 ea             	add    %rbp,%rdx
     dc6:	48 8b 82 80 00 00 00 	mov    0x80(%rdx),%rax
  Context *s = &(_uth->sched_thread->context);
     dcd:	48 8b 9a c0 00 00 00 	mov    0xc0(%rdx),%rbx
  Context *t = &(_uth->buf2->context);
     dd4:	48 05 00 10 00 00    	add    $0x1000,%rax
  Context *s = &(_uth->sched_thread->context);
     dda:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
    __asm__ __volatile__(
     de1:	48 89 20             	mov    %rsp,(%rax)
     de4:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # e60 <target269>
     deb:	48 89 48 08          	mov    %rcx,0x8(%rax)
     def:	48 89 50 10          	mov    %rdx,0x10(%rax)
     df3:	4c 89 40 18          	mov    %r8,0x18(%rax)
     df7:	4c 89 48 20          	mov    %r9,0x20(%rax)
     dfb:	4c 89 50 28          	mov    %r10,0x28(%rax)
     dff:	4c 89 58 30          	mov    %r11,0x30(%rax)
     e03:	4c 89 60 38          	mov    %r12,0x38(%rax)
     e07:	4c 89 68 40          	mov    %r13,0x40(%rax)
     e0b:	4c 89 70 48          	mov    %r14,0x48(%rax)
     e0f:	4c 89 78 50          	mov    %r15,0x50(%rax)
     e13:	48 89 68 58          	mov    %rbp,0x58(%rax)
     e17:	48 89 78 60          	mov    %rdi,0x60(%rax)
     e1b:	48 89 70 68          	mov    %rsi,0x68(%rax)
     e1f:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
     e26:	00 
     e27:	48 8b 23             	mov    (%rbx),%rsp
     e2a:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     e2e:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     e32:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     e36:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     e3a:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     e3e:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     e42:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     e46:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     e4a:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     e4e:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
     e52:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
     e56:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
     e5a:	48 8b 73 68          	mov    0x68(%rbx),%rsi
     e5e:	ff e1                	jmpq   *%rcx

0000000000000e60 <target269>:
    for (int i=0; i < 10000000; i++){
     e60:	83 ee 01             	sub    $0x1,%esi
     e63:	74 2b                	je     e90 <target269+0x30>
        if (threadId == 0)
     e65:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     e6c:	ff 
     e6d:	85 c0                	test   %eax,%eax
     e6f:	0f 84 2b ff ff ff    	je     da0 <pfc+0x50>
          global_var2++;
     e75:	48 8b 05 04 13 20 00 	mov    0x201304(%rip),%rax        # 202180 <global_var2>
     e7c:	48 83 c0 01          	add    $0x1,%rax
     e80:	48 89 05 f9 12 20 00 	mov    %rax,0x2012f9(%rip)        # 202180 <global_var2>
     e87:	e9 26 ff ff ff       	jmpq   db2 <pfc+0x62>
     e8c:	0f 1f 40 00          	nopl   0x0(%rax)
     e90:	48 8d 3d 61 0a 00 00 	lea    0xa61(%rip),%rdi        # 18f8 <_IO_stdin_used+0x88>
     e97:	e8 84 fa ff ff       	callq  920 <puts@plt>
     e9c:	48 8d 35 5f 0a 00 00 	lea    0xa5f(%rip),%rsi        # 1902 <_IO_stdin_used+0x92>
     ea3:	31 d2                	xor    %edx,%edx
     ea5:	bf 01 00 00 00       	mov    $0x1,%edi
     eaa:	31 c0                	xor    %eax,%eax
     eac:	e8 bf fa ff ff       	callq  970 <__printf_chk@plt>
    UserThreadingVec[(threadId + 1) % 2].buf->context.mxcsr = 0;
     eb1:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     eb8:	ff 
     eb9:	48 8d 35 53 0a 00 00 	lea    0xa53(%rip),%rsi        # 1913 <_IO_stdin_used+0xa3>
     ec0:	bf 01 00 00 00       	mov    $0x1,%edi
     ec5:	83 c0 01             	add    $0x1,%eax
     ec8:	89 c2                	mov    %eax,%edx
     eca:	c1 ea 1f             	shr    $0x1f,%edx
     ecd:	01 d0                	add    %edx,%eax
     ecf:	83 e0 01             	and    $0x1,%eax
     ed2:	29 d0                	sub    %edx,%eax
     ed4:	48 98                	cltq   
     ed6:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     eda:	48 c1 e0 07          	shl    $0x7,%rax
     ede:	48 8b 44 05 00       	mov    0x0(%rbp,%rax,1),%rax
     ee3:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     eea:	00 00 00 00 
    UserThreadingVec[(threadId + 1) % 2].sp_exit_check = true;
     eee:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
     ef5:	ff 
     ef6:	83 c0 01             	add    $0x1,%eax
     ef9:	89 c2                	mov    %eax,%edx
     efb:	c1 ea 1f             	shr    $0x1f,%edx
     efe:	01 d0                	add    %edx,%eax
     f00:	83 e0 01             	and    $0x1,%eax
     f03:	29 d0                	sub    %edx,%eax
     f05:	48 98                	cltq   
     f07:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     f0b:	48 c1 e0 07          	shl    $0x7,%rax
     f0f:	48 01 e8             	add    %rbp,%rax
     f12:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    UserThreadingVec[threadId].buf->context.mxcsr = 0;
     f19:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     f20:	ff ff 
     f22:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     f26:	48 c1 e0 07          	shl    $0x7,%rax
     f2a:	48 8b 44 05 00       	mov    0x0(%rbp,%rax,1),%rax
     f2f:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
     f36:	00 00 00 00 
    UserThreadingVec[threadId].sp_exit_check = true;
     f3a:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     f41:	ff ff 
     f43:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     f47:	48 c1 e0 07          	shl    $0x7,%rax
     f4b:	48 01 e8             	add    %rbp,%rax
     f4e:	c6 80 00 01 00 00 01 	movb   $0x1,0x100(%rax)
    printf("I am done %d\n", threadId);
     f55:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
     f5c:	ff 
     f5d:	31 c0                	xor    %eax,%eax
     f5f:	e8 0c fa ff ff       	callq  970 <__printf_chk@plt>
    Yield(&UserThreadingVec[threadId]);
     f64:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
     f6b:	ff ff 
  Context *t = &(_uth->buf2->context);
     f6d:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
     f71:	48 c1 e0 07          	shl    $0x7,%rax
     f75:	48 01 c5             	add    %rax,%rbp
     f78:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
  Context *s = &(_uth->sched_thread->context);
     f7f:	48 8b 9d c0 00 00 00 	mov    0xc0(%rbp),%rbx
  Context *t = &(_uth->buf2->context);
     f86:	48 05 00 10 00 00    	add    $0x1000,%rax
  Context *s = &(_uth->sched_thread->context);
     f8c:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
    __asm__ __volatile__(
     f93:	48 89 20             	mov    %rsp,(%rax)
     f96:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 1012 <target2191>
     f9d:	48 89 48 08          	mov    %rcx,0x8(%rax)
     fa1:	48 89 50 10          	mov    %rdx,0x10(%rax)
     fa5:	4c 89 40 18          	mov    %r8,0x18(%rax)
     fa9:	4c 89 48 20          	mov    %r9,0x20(%rax)
     fad:	4c 89 50 28          	mov    %r10,0x28(%rax)
     fb1:	4c 89 58 30          	mov    %r11,0x30(%rax)
     fb5:	4c 89 60 38          	mov    %r12,0x38(%rax)
     fb9:	4c 89 68 40          	mov    %r13,0x40(%rax)
     fbd:	4c 89 70 48          	mov    %r14,0x48(%rax)
     fc1:	4c 89 78 50          	mov    %r15,0x50(%rax)
     fc5:	48 89 68 58          	mov    %rbp,0x58(%rax)
     fc9:	48 89 78 60          	mov    %rdi,0x60(%rax)
     fcd:	48 89 70 68          	mov    %rsi,0x68(%rax)
     fd1:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
     fd8:	00 
     fd9:	48 8b 23             	mov    (%rbx),%rsp
     fdc:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
     fe0:	48 8b 53 10          	mov    0x10(%rbx),%rdx
     fe4:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     fe8:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
     fec:	4c 8b 53 28          	mov    0x28(%rbx),%r10
     ff0:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
     ff4:	4c 8b 63 38          	mov    0x38(%rbx),%r12
     ff8:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
     ffc:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1000:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    1004:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1008:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    100c:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1010:	ff e1                	jmpq   *%rcx

0000000000001012 <target2191>:
}
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	48 8d 3d 04 09 00 00 	lea    0x904(%rip),%rdi        # 1921 <_IO_stdin_used+0xb1>
    101d:	5b                   	pop    %rbx
    101e:	5d                   	pop    %rbp
    101f:	e9 fc f8 ff ff       	jmpq   920 <puts@plt>
    1024:	66 90                	xchg   %ax,%ax
    1026:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    102d:	00 00 00 

0000000000001030 <mpthread2>:
void *mpthread2(void *arg){
    1030:	41 55                	push   %r13
    1032:	41 54                	push   %r12
    CPU_ZERO(&cpuset2);
    1034:	b9 10 00 00 00       	mov    $0x10,%ecx
void *mpthread2(void *arg){
    1039:	55                   	push   %rbp
    103a:	53                   	push   %rbx
    103b:	48 89 fb             	mov    %rdi,%rbx
    103e:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1045:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    104c:	00 00 
    104e:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1055:	00 
    1056:	31 c0                	xor    %eax,%eax
    CPU_ZERO(&cpuset2);
    1058:	48 89 e2             	mov    %rsp,%rdx
    105b:	48 89 d7             	mov    %rdx,%rdi
    105e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_2, &cpuset2);
    1061:	48 63 05 c0 17 20 00 	movslq 0x2017c0(%rip),%rax        # 202828 <coreId_2>
    1068:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    106e:	77 13                	ja     1083 <mpthread2+0x53>
    1070:	48 89 c1             	mov    %rax,%rcx
    1073:	be 01 00 00 00       	mov    $0x1,%esi
    1078:	48 c1 e8 06          	shr    $0x6,%rax
    107c:	48 d3 e6             	shl    %cl,%rsi
    107f:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    1083:	48 8b 3d 76 12 20 00 	mov    0x201276(%rip),%rdi        # 202300 <threadId_2>
    108a:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    108f:	4c 8d 25 96 17 20 00 	lea    0x201796(%rip),%r12        # 20282c <OSThreadAvailable>
    pthread_setaffinity_np(threadId_2, sizeof(cpu_set_t), &cpuset2);
    1096:	e8 a5 f8 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    109b:	e8 00 f9 ff ff       	callq  9a0 <sched_getcpu@plt>
    10a0:	48 8d 35 80 08 00 00 	lea    0x880(%rip),%rsi        # 1927 <_IO_stdin_used+0xb7>
    10a7:	89 c2                	mov    %eax,%edx
    10a9:	bf 01 00 00 00       	mov    $0x1,%edi
    10ae:	31 c0                	xor    %eax,%eax
    10b0:	e8 bb f8 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    10b5:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    10bc:	ff 
    printf("ThreadNum: %d\n", threadId);
    10bd:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    10c4:	ff 
    10c5:	48 8d 35 73 08 00 00 	lea    0x873(%rip),%rsi        # 193f <_IO_stdin_used+0xcf>
    10cc:	bf 01 00 00 00       	mov    $0x1,%edi
    10d1:	31 c0                	xor    %eax,%eax
    10d3:	e8 98 f8 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    10d8:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    10df:	ff ff 
    pthread_barrier_wait(&barrier);
    10e1:	48 8d 3d 38 12 20 00 	lea    0x201238(%rip),%rdi        # 202320 <barrier>
    OSThreadAvailable[threadId] = true;
    10e8:	41 c6 04 04 01       	movb   $0x1,(%r12,%rax,1)
    pthread_barrier_wait(&barrier);
    10ed:	e8 de f8 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    10f2:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    10f4:	64 4c 63 2c 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r13
    10fb:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    10fd:	48 8d 1d 7c 12 20 00 	lea    0x20127c(%rip),%rbx        # 202380 <UserThreadingVec>
    1104:	48 8d 35 43 08 00 00 	lea    0x843(%rip),%rsi        # 194e <_IO_stdin_used+0xde>
    110b:	48 c1 e2 20          	shl    $0x20,%rdx
    110f:	bf 01 00 00 00       	mov    $0x1,%edi
    1114:	48 09 d0             	or     %rdx,%rax
    thread2_starttime = __rdtsc();
    1117:	48 89 05 12 17 20 00 	mov    %rax,0x201712(%rip)        # 202830 <thread2_starttime>
    111e:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    1120:	4b 8d 6c 6d 00       	lea    0x0(%r13,%r13,2),%rbp
    1125:	48 c1 e5 07          	shl    $0x7,%rbp
    1129:	48 01 dd             	add    %rbx,%rbp
    112c:	8b 95 40 01 00 00    	mov    0x140(%rbp),%edx
    1132:	e8 39 f8 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1137:	be 80 10 00 00       	mov    $0x1080,%esi
    113c:	bf 40 00 00 00       	mov    $0x40,%edi
    1141:	e8 7a f8 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    1146:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    114a:	48 89 85 c0 00 00 00 	mov    %rax,0xc0(%rbp)
  _thread->context.mxcsr = 0;
    1151:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1158:	00 00 00 00 
    115c:	0f 1f 40 00          	nopl   0x0(%rax)
  while (_uth->buf->context.mxcsr == 11);
    1160:	48 8b 82 70 10 00 00 	mov    0x1070(%rdx),%rax
    1167:	48 83 f8 0b          	cmp    $0xb,%rax
    116b:	74 f3                	je     1160 <mpthread2+0x130>
  while (!_uth->sp_exit_check){
    116d:	4b 8d 54 6d 00       	lea    0x0(%r13,%r13,2),%rdx
    1172:	48 c1 e2 07          	shl    $0x7,%rdx
    1176:	48 01 da             	add    %rbx,%rdx
    1179:	eb 15                	jmp    1190 <mpthread2+0x160>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      if ( _uth->buf->context.mxcsr == 1){
    1180:	48 8b 02             	mov    (%rdx),%rax
    1183:	48 8b 88 70 10 00 00 	mov    0x1070(%rax),%rcx
    118a:	48 83 f9 01          	cmp    $0x1,%rcx
    118e:	74 50                	je     11e0 <mpthread2+0x1b0>
  while (!_uth->sp_exit_check){
    1190:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
    1197:	84 c0                	test   %al,%al
    1199:	74 e5                	je     1180 <mpthread2+0x150>
    OSThreadAvailable[threadId] = false;
    119b:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    11a2:	ff ff 
    11a4:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
    11a9:	0f 31                	rdtsc  
    11ab:	48 c1 e2 20          	shl    $0x20,%rdx
    11af:	48 09 d0             	or     %rdx,%rax
}
    11b2:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    11b9:	00 
    11ba:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    11c1:	00 00 
    thread2_endtime = __rdtsc();
    11c3:	48 89 05 46 16 20 00 	mov    %rax,0x201646(%rip)        # 202810 <thread2_endtime>
}
    11ca:	0f 85 ab 00 00 00    	jne    127b <target447+0x5>
    11d0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    11d7:	5b                   	pop    %rbx
    11d8:	5d                   	pop    %rbp
    11d9:	41 5c                	pop    %r12
    11db:	41 5d                	pop    %r13
    11dd:	c3                   	retq   
    11de:	66 90                	xchg   %ax,%ax
            Context *s = &(_uth->sched_thread->context);
    11e0:	48 8b 9a c0 00 00 00 	mov    0xc0(%rdx),%rbx
          _uth->buf->context.mxcsr = 0;
    11e7:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    11ee:	00 00 00 00 
            Context *t = &(_uth->buf->context);
    11f2:	48 05 00 10 00 00    	add    $0x1000,%rax
            Context *s = &(_uth->sched_thread->context);
    11f8:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
            __asm__ __volatile__(
    11ff:	48 89 23             	mov    %rsp,(%rbx)
    1202:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1276 <target447>
    1209:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    120d:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1211:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    1215:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1219:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    121d:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    1221:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    1225:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1229:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    122d:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    1231:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    1235:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1239:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    123d:	48 8b 20             	mov    (%rax),%rsp
    1240:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1244:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1248:	4c 8b 40 18          	mov    0x18(%rax),%r8
    124c:	4c 8b 48 20          	mov    0x20(%rax),%r9
    1250:	4c 8b 50 28          	mov    0x28(%rax),%r10
    1254:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1258:	4c 8b 60 38          	mov    0x38(%rax),%r12
    125c:	4c 8b 68 40          	mov    0x40(%rax),%r13
    1260:	4c 8b 70 48          	mov    0x48(%rax),%r14
    1264:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1268:	48 8b 68 58          	mov    0x58(%rax),%rbp
    126c:	48 8b 78 60          	mov    0x60(%rax),%rdi
    1270:	48 8b 70 68          	mov    0x68(%rax),%rsi
    1274:	ff e1                	jmpq   *%rcx

0000000000001276 <target447>:
            asm volatile("": : :"memory");
    1276:	e9 15 ff ff ff       	jmpq   1190 <mpthread2+0x160>
}
    127b:	e8 b0 f6 ff ff       	callq  930 <__stack_chk_fail@plt>

0000000000001280 <mpthread1>:
void *mpthread1(void *arg){
    1280:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    1285:	48 83 e4 80          	and    $0xffffffffffffff80,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1289:	be 80 10 00 00       	mov    $0x1080,%esi
void *mpthread1(void *arg){
    128e:	41 ff 72 f8          	pushq  -0x8(%r10)
    1292:	55                   	push   %rbp
    1293:	48 89 e5             	mov    %rsp,%rbp
    1296:	41 56                	push   %r14
    1298:	41 55                	push   %r13
    129a:	41 54                	push   %r12
    129c:	41 52                	push   %r10
    129e:	53                   	push   %rbx
    129f:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    12a2:	bf 40 00 00 00       	mov    $0x40,%edi
void *mpthread1(void *arg){
    12a7:	48 81 ec c8 02 00 00 	sub    $0x2c8,%rsp
    12ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12b5:	00 00 
    12b7:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    12bb:	31 c0                	xor    %eax,%eax
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    12bd:	e8 fe f6 ff ff       	callq  9c0 <aligned_alloc@plt>
    CPU_ZERO(&cpuset);
    12c2:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
    _uth->sp_exit_check = false;
    12c9:	c6 85 10 fe ff ff 00 	movb   $0x0,-0x1f0(%rbp)
    CPU_ZERO(&cpuset);
    12d0:	b9 10 00 00 00       	mov    $0x10,%ecx
    _uth->buf->context.mxcsr = 0;
    12d5:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    12dc:	00 00 00 00 
    CPU_ZERO(&cpuset);
    12e0:	31 c0                	xor    %eax,%eax
    12e2:	48 89 d7             	mov    %rdx,%rdi
    12e5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    CPU_SET(coreId_1, &cpuset);
    12e8:	48 63 05 11 15 20 00 	movslq 0x201511(%rip),%rax        # 202800 <coreId_1>
    12ef:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    12f5:	77 13                	ja     130a <mpthread1+0x8a>
    12f7:	48 89 c1             	mov    %rax,%rcx
    12fa:	be 01 00 00 00       	mov    $0x1,%esi
    12ff:	48 c1 e8 06          	shr    $0x6,%rax
    1303:	48 d3 e6             	shl    %cl,%rsi
    1306:	48 09 34 c2          	or     %rsi,(%rdx,%rax,8)
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    130a:	48 8b 3d 07 15 20 00 	mov    0x201507(%rip),%rdi        # 202818 <threadId_1>
    1311:	be 80 00 00 00       	mov    $0x80,%esi
    OSThreadAvailable[threadId] = true;
    1316:	4c 8d 25 0f 15 20 00 	lea    0x20150f(%rip),%r12        # 20282c <OSThreadAvailable>
    pthread_setaffinity_np(threadId_1, sizeof(cpu_set_t), &cpuset);
    131d:	e8 1e f6 ff ff       	callq  940 <pthread_setaffinity_np@plt>
    printf("OS Thread Affinity %d \n", sched_getcpu());
    1322:	e8 79 f6 ff ff       	callq  9a0 <sched_getcpu@plt>
    1327:	48 8d 35 f9 05 00 00 	lea    0x5f9(%rip),%rsi        # 1927 <_IO_stdin_used+0xb7>
    132e:	89 c2                	mov    %eax,%edx
    1330:	bf 01 00 00 00       	mov    $0x1,%edi
    1335:	31 c0                	xor    %eax,%eax
    1337:	e8 34 f6 ff ff       	callq  970 <__printf_chk@plt>
    threadId = (intptr_t) arg;
    133c:	64 89 1c 25 fc ff ff 	mov    %ebx,%fs:0xfffffffffffffffc
    1343:	ff 
    printf("ThreadNum: %d\n", threadId);
    1344:	64 8b 14 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%edx
    134b:	ff 
    134c:	48 8d 35 ec 05 00 00 	lea    0x5ec(%rip),%rsi        # 193f <_IO_stdin_used+0xcf>
    1353:	bf 01 00 00 00       	mov    $0x1,%edi
    1358:	31 c0                	xor    %eax,%eax
    135a:	e8 11 f6 ff ff       	callq  970 <__printf_chk@plt>
    OSThreadAvailable[threadId] = true;
    135f:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    1366:	ff ff 
    pthread_barrier_wait(&barrier);
    1368:	48 8d 3d b1 0f 20 00 	lea    0x200fb1(%rip),%rdi        # 202320 <barrier>
    OSThreadAvailable[threadId] = true;
    136f:	41 c6 04 04 01       	movb   $0x1,(%r12,%rax,1)
    pthread_barrier_wait(&barrier);
    1374:	e8 57 f6 ff ff       	callq  9d0 <pthread_barrier_wait@plt>
    1379:	0f 31                	rdtsc  
    Scheduler(&UserThreadingVec[threadId]);
    137b:	64 4c 63 34 25 fc ff 	movslq %fs:0xfffffffffffffffc,%r14
    1382:	ff ff 
  printf("Scheduler Started %d\n", _uth->id);
    1384:	48 8d 1d f5 0f 20 00 	lea    0x200ff5(%rip),%rbx        # 202380 <UserThreadingVec>
    138b:	48 8d 35 bc 05 00 00 	lea    0x5bc(%rip),%rsi        # 194e <_IO_stdin_used+0xde>
    1392:	48 c1 e2 20          	shl    $0x20,%rdx
    1396:	bf 01 00 00 00       	mov    $0x1,%edi
    139b:	48 09 d0             	or     %rdx,%rax
    thread1_starttime = __rdtsc();
    139e:	48 89 05 63 14 20 00 	mov    %rax,0x201463(%rip)        # 202808 <thread1_starttime>
    13a5:	31 c0                	xor    %eax,%eax
  printf("Scheduler Started %d\n", _uth->id);
    13a7:	4f 8d 2c 76          	lea    (%r14,%r14,2),%r13
    13ab:	49 c1 e5 07          	shl    $0x7,%r13
    13af:	49 01 dd             	add    %rbx,%r13
    13b2:	41 8b 95 40 01 00 00 	mov    0x140(%r13),%edx
    13b9:	e8 b2 f5 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    13be:	be 80 10 00 00       	mov    $0x1080,%esi
    13c3:	bf 40 00 00 00       	mov    $0x40,%edi
    13c8:	e8 f3 f5 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    13cd:	49 8b 55 00          	mov    0x0(%r13),%rdx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    13d1:	49 89 85 c0 00 00 00 	mov    %rax,0xc0(%r13)
  _thread->context.mxcsr = 0;
    13d8:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    13df:	00 00 00 00 
    13e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  while (_uth->buf->context.mxcsr == 11);
    13e8:	48 8b 82 70 10 00 00 	mov    0x1070(%rdx),%rax
    13ef:	48 83 f8 0b          	cmp    $0xb,%rax
    13f3:	74 f3                	je     13e8 <mpthread1+0x168>
  while (!_uth->sp_exit_check){
    13f5:	4b 8d 14 76          	lea    (%r14,%r14,2),%rdx
    13f9:	48 c1 e2 07          	shl    $0x7,%rdx
    13fd:	48 01 da             	add    %rbx,%rdx
    1400:	eb 16                	jmp    1418 <mpthread1+0x198>
    1402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      if ( _uth->buf->context.mxcsr == 1){
    1408:	48 8b 02             	mov    (%rdx),%rax
    140b:	48 8b 88 70 10 00 00 	mov    0x1070(%rax),%rcx
    1412:	48 83 f9 01          	cmp    $0x1,%rcx
    1416:	74 58                	je     1470 <mpthread1+0x1f0>
  while (!_uth->sp_exit_check){
    1418:	0f b6 82 00 01 00 00 	movzbl 0x100(%rdx),%eax
    141f:	84 c0                	test   %al,%al
    1421:	74 e5                	je     1408 <mpthread1+0x188>
    OSThreadAvailable[threadId] = false;
    1423:	64 48 63 04 25 fc ff 	movslq %fs:0xfffffffffffffffc,%rax
    142a:	ff ff 
    142c:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
    1431:	0f 31                	rdtsc  
    1433:	48 c1 e2 20          	shl    $0x20,%rdx
    1437:	48 09 d0             	or     %rdx,%rax
}
    143a:	48 8b 75 88          	mov    -0x78(%rbp),%rsi
    143e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1445:	00 00 
    thread1_endtime = __rdtsc();
    1447:	48 89 05 ea 13 20 00 	mov    %rax,0x2013ea(%rip)        # 202838 <thread1_endtime>
}
    144e:	0f 85 b7 00 00 00    	jne    150b <target734+0x5>
    1454:	48 81 c4 c8 02 00 00 	add    $0x2c8,%rsp
    145b:	5b                   	pop    %rbx
    145c:	41 5a                	pop    %r10
    145e:	41 5c                	pop    %r12
    1460:	41 5d                	pop    %r13
    1462:	41 5e                	pop    %r14
    1464:	5d                   	pop    %rbp
    1465:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
    1469:	c3                   	retq   
    146a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
            Context *s = &(_uth->sched_thread->context);
    1470:	48 8b 9a c0 00 00 00 	mov    0xc0(%rdx),%rbx
          _uth->buf->context.mxcsr = 0;
    1477:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    147e:	00 00 00 00 
            Context *t = &(_uth->buf->context);
    1482:	48 05 00 10 00 00    	add    $0x1000,%rax
            Context *s = &(_uth->sched_thread->context);
    1488:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
            __asm__ __volatile__(
    148f:	48 89 23             	mov    %rsp,(%rbx)
    1492:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 1506 <target734>
    1499:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    149d:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    14a1:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    14a5:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    14a9:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    14ad:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    14b1:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    14b5:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    14b9:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    14bd:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    14c1:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    14c5:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    14c9:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    14cd:	48 8b 20             	mov    (%rax),%rsp
    14d0:	48 8b 48 08          	mov    0x8(%rax),%rcx
    14d4:	48 8b 50 10          	mov    0x10(%rax),%rdx
    14d8:	4c 8b 40 18          	mov    0x18(%rax),%r8
    14dc:	4c 8b 48 20          	mov    0x20(%rax),%r9
    14e0:	4c 8b 50 28          	mov    0x28(%rax),%r10
    14e4:	4c 8b 58 30          	mov    0x30(%rax),%r11
    14e8:	4c 8b 60 38          	mov    0x38(%rax),%r12
    14ec:	4c 8b 68 40          	mov    0x40(%rax),%r13
    14f0:	4c 8b 70 48          	mov    0x48(%rax),%r14
    14f4:	4c 8b 78 50          	mov    0x50(%rax),%r15
    14f8:	48 8b 68 58          	mov    0x58(%rax),%rbp
    14fc:	48 8b 78 60          	mov    0x60(%rax),%rdi
    1500:	48 8b 70 68          	mov    0x68(%rax),%rsi
    1504:	ff e1                	jmpq   *%rcx

0000000000001506 <target734>:
            asm volatile("": : :"memory");
    1506:	e9 0d ff ff ff       	jmpq   1418 <mpthread1+0x198>
}
    150b:	e8 20 f4 ff ff       	callq  930 <__stack_chk_fail@plt>

0000000000001510 <Thread_Init>:
  _thread->context.mxcsr = 0;
    1510:	48 c7 87 70 10 00 00 	movq   $0x0,0x1070(%rdi)
    1517:	00 00 00 00 
}
    151b:	c3                   	retq   
    151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001520 <Thread_Destory>:
    1520:	f3 c3                	repz retq 
    1522:	0f 1f 40 00          	nopl   0x0(%rax)
    1526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    152d:	00 00 00 

0000000000001530 <UserThreading_Init>:
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1530:	55                   	push   %rbp
    1531:	53                   	push   %rbx
    1532:	89 f5                	mov    %esi,%ebp
    1534:	48 89 fb             	mov    %rdi,%rbx
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1537:	be 80 10 00 00       	mov    $0x1080,%esi
    153c:	bf 40 00 00 00       	mov    $0x40,%edi
void UserThreading_Init(UserThreading *_uth /*,void*/, int _id){
    1541:	48 83 ec 08          	sub    $0x8,%rsp
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1545:	e8 76 f4 ff ff       	callq  9c0 <aligned_alloc@plt>
    _uth->sp_exit_check = false;
    154a:	c6 83 00 01 00 00 00 	movb   $0x0,0x100(%rbx)
    _uth->id = _id;
    1551:	89 ab 40 01 00 00    	mov    %ebp,0x140(%rbx)
    _uth->buf->context.mxcsr = 0;
    1557:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    155e:	00 00 00 00 
    _uth->buf = aligned_alloc(64, sizeof(Thread));
    1562:	48 89 03             	mov    %rax,(%rbx)
}
    1565:	48 83 c4 08          	add    $0x8,%rsp
    1569:	5b                   	pop    %rbx
    156a:	5d                   	pop    %rbp
    156b:	c3                   	retq   
    156c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001570 <Scheduler>:
void Scheduler(UserThreading *_uth){
    1570:	55                   	push   %rbp
    1571:	53                   	push   %rbx
    1572:	48 8d 35 d5 03 00 00 	lea    0x3d5(%rip),%rsi        # 194e <_IO_stdin_used+0xde>
    1579:	48 89 fd             	mov    %rdi,%rbp
    157c:	31 c0                	xor    %eax,%eax
    157e:	48 83 ec 08          	sub    $0x8,%rsp
    1582:	8b 97 40 01 00 00    	mov    0x140(%rdi),%edx
    1588:	bf 01 00 00 00       	mov    $0x1,%edi
    158d:	e8 de f3 ff ff       	callq  970 <__printf_chk@plt>
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    1592:	be 80 10 00 00       	mov    $0x1080,%esi
    1597:	bf 40 00 00 00       	mov    $0x40,%edi
    159c:	e8 1f f4 ff ff       	callq  9c0 <aligned_alloc@plt>
  while (_uth->buf->context.mxcsr == 11);
    15a1:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  _uth->sched_thread = (Thread *) aligned_alloc(64, (sizeof(Thread)));
    15a5:	48 89 85 c0 00 00 00 	mov    %rax,0xc0(%rbp)
  _thread->context.mxcsr = 0;
    15ac:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    15b3:	00 00 00 00 
    15b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    15be:	00 00 
  while (_uth->buf->context.mxcsr == 11);
    15c0:	48 8b 82 70 10 00 00 	mov    0x1070(%rdx),%rax
    15c7:	48 83 f8 0b          	cmp    $0xb,%rax
    15cb:	74 f3                	je     15c0 <Scheduler+0x50>
  while (!_uth->sp_exit_check){
    15cd:	0f b6 85 00 01 00 00 	movzbl 0x100(%rbp),%eax
    15d4:	84 c0                	test   %al,%al
    15d6:	75 24                	jne    15fc <Scheduler+0x8c>
    15d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15df:	00 
      if ( _uth->buf->context.mxcsr == 1){
    15e0:	48 8b 45 00          	mov    0x0(%rbp),%rax
    15e4:	48 8b 90 70 10 00 00 	mov    0x1070(%rax),%rdx
    15eb:	48 83 fa 01          	cmp    $0x1,%rdx
    15ef:	74 17                	je     1608 <Scheduler+0x98>
  while (!_uth->sp_exit_check){
    15f1:	0f b6 85 00 01 00 00 	movzbl 0x100(%rbp),%eax
    15f8:	84 c0                	test   %al,%al
    15fa:	74 e4                	je     15e0 <Scheduler+0x70>
}
    15fc:	48 83 c4 08          	add    $0x8,%rsp
    1600:	5b                   	pop    %rbx
    1601:	5d                   	pop    %rbp
    1602:	c3                   	retq   
    1603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
            Context *s = &(_uth->sched_thread->context);
    1608:	48 8b 8d c0 00 00 00 	mov    0xc0(%rbp),%rcx
          _uth->buf->context.mxcsr = 0;
    160f:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1616:	00 00 00 00 
            Context *t = &(_uth->buf->context);
    161a:	48 05 00 10 00 00    	add    $0x1000,%rax
            Context *s = &(_uth->sched_thread->context);
    1620:	48 8d 99 00 10 00 00 	lea    0x1000(%rcx),%rbx
            __asm__ __volatile__(
    1627:	48 89 23             	mov    %rsp,(%rbx)
    162a:	48 8d 0d 6d 00 00 00 	lea    0x6d(%rip),%rcx        # 169e <target908>
    1631:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    1635:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    1639:	4c 89 43 18          	mov    %r8,0x18(%rbx)
    163d:	4c 89 4b 20          	mov    %r9,0x20(%rbx)
    1641:	4c 89 53 28          	mov    %r10,0x28(%rbx)
    1645:	4c 89 5b 30          	mov    %r11,0x30(%rbx)
    1649:	4c 89 63 38          	mov    %r12,0x38(%rbx)
    164d:	4c 89 6b 40          	mov    %r13,0x40(%rbx)
    1651:	4c 89 73 48          	mov    %r14,0x48(%rbx)
    1655:	4c 89 7b 50          	mov    %r15,0x50(%rbx)
    1659:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    165d:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
    1661:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    1665:	48 8b 20             	mov    (%rax),%rsp
    1668:	48 8b 48 08          	mov    0x8(%rax),%rcx
    166c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1670:	4c 8b 40 18          	mov    0x18(%rax),%r8
    1674:	4c 8b 48 20          	mov    0x20(%rax),%r9
    1678:	4c 8b 50 28          	mov    0x28(%rax),%r10
    167c:	4c 8b 58 30          	mov    0x30(%rax),%r11
    1680:	4c 8b 60 38          	mov    0x38(%rax),%r12
    1684:	4c 8b 68 40          	mov    0x40(%rax),%r13
    1688:	4c 8b 70 48          	mov    0x48(%rax),%r14
    168c:	4c 8b 78 50          	mov    0x50(%rax),%r15
    1690:	48 8b 68 58          	mov    0x58(%rax),%rbp
    1694:	48 8b 78 60          	mov    0x60(%rax),%rdi
    1698:	48 8b 70 68          	mov    0x68(%rax),%rsi
    169c:	ff e1                	jmpq   *%rcx

000000000000169e <target908>:
            asm volatile("": : :"memory");
    169e:	e9 4e ff ff ff       	jmpq   15f1 <Scheduler+0x81>
    16a3:	0f 1f 00             	nopl   (%rax)
    16a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16ad:	00 00 00 

00000000000016b0 <UserThreading_Destory>:
}
    16b0:	f3 c3                	repz retq 
    16b2:	0f 1f 40 00          	nopl   0x0(%rax)
    16b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16bd:	00 00 00 

00000000000016c0 <Yield>:
void Yield(UserThreading *_uth){
    16c0:	53                   	push   %rbx
  Context *t = &(_uth->buf2->context);
    16c1:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  Context *s = &(_uth->sched_thread->context);
    16c8:	48 8b 9f c0 00 00 00 	mov    0xc0(%rdi),%rbx
  Context *t = &(_uth->buf2->context);
    16cf:	48 05 00 10 00 00    	add    $0x1000,%rax
  Context *s = &(_uth->sched_thread->context);
    16d5:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
    __asm__ __volatile__(
    16dc:	48 89 20             	mov    %rsp,(%rax)
    16df:	48 8d 0d 75 00 00 00 	lea    0x75(%rip),%rcx        # 175b <target2940>
    16e6:	48 89 48 08          	mov    %rcx,0x8(%rax)
    16ea:	48 89 50 10          	mov    %rdx,0x10(%rax)
    16ee:	4c 89 40 18          	mov    %r8,0x18(%rax)
    16f2:	4c 89 48 20          	mov    %r9,0x20(%rax)
    16f6:	4c 89 50 28          	mov    %r10,0x28(%rax)
    16fa:	4c 89 58 30          	mov    %r11,0x30(%rax)
    16fe:	4c 89 60 38          	mov    %r12,0x38(%rax)
    1702:	4c 89 68 40          	mov    %r13,0x40(%rax)
    1706:	4c 89 70 48          	mov    %r14,0x48(%rax)
    170a:	4c 89 78 50          	mov    %r15,0x50(%rax)
    170e:	48 89 68 58          	mov    %rbp,0x58(%rax)
    1712:	48 89 78 60          	mov    %rdi,0x60(%rax)
    1716:	48 89 70 68          	mov    %rsi,0x68(%rax)
    171a:	48 c7 40 70 01 00 00 	movq   $0x1,0x70(%rax)
    1721:	00 
    1722:	48 8b 23             	mov    (%rbx),%rsp
    1725:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1729:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    172d:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    1731:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
    1735:	4c 8b 53 28          	mov    0x28(%rbx),%r10
    1739:	4c 8b 5b 30          	mov    0x30(%rbx),%r11
    173d:	4c 8b 63 38          	mov    0x38(%rbx),%r12
    1741:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    1745:	4c 8b 73 48          	mov    0x48(%rbx),%r14
    1749:	4c 8b 7b 50          	mov    0x50(%rbx),%r15
    174d:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    1751:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
    1755:	48 8b 73 68          	mov    0x68(%rbx),%rsi
    1759:	ff e1                	jmpq   *%rcx

000000000000175b <target2940>:
}
    175b:	5b                   	pop    %rbx
    175c:	c3                   	retq   
    175d:	0f 1f 00             	nopl   (%rax)

0000000000001760 <makeThread>:
int makeThread(UserThreading *_uth, void (*fn)()){
    1760:	55                   	push   %rbp
    1761:	53                   	push   %rbx
    1762:	48 89 f5             	mov    %rsi,%rbp
    1765:	48 89 fb             	mov    %rdi,%rbx
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1768:	be 80 10 00 00       	mov    $0x1080,%esi
    176d:	bf 80 00 00 00       	mov    $0x80,%edi
int makeThread(UserThreading *_uth, void (*fn)()){
    1772:	48 83 ec 08          	sub    $0x8,%rsp
  Thread* new_thread = (Thread *) aligned_alloc(128,sizeof(Thread));
    1776:	e8 45 f2 ff ff       	callq  9c0 <aligned_alloc@plt>
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    177b:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
  _thread->context.mxcsr = 0;
    1782:	48 c7 80 70 10 00 00 	movq   $0x0,0x1070(%rax)
    1789:	00 00 00 00 
  new_thread->context.rip = (uint64_t) fn;
    178d:	48 89 a8 08 10 00 00 	mov    %rbp,0x1008(%rax)
  new_thread->context.mxcsr = 1;
    1794:	48 c7 80 70 10 00 00 	movq   $0x1,0x1070(%rax)
    179b:	01 00 00 00 
  _uth->buf = new_thread; 
    179f:	48 89 03             	mov    %rax,(%rbx)
  new_thread->context.rsp = (uint64_t)&new_thread->stack[4096];
    17a2:	48 89 90 00 10 00 00 	mov    %rdx,0x1000(%rax)
}
    17a9:	48 83 c4 08          	add    $0x8,%rsp
    17ad:	5b                   	pop    %rbx
    17ae:	5d                   	pop    %rbp
    17af:	c3                   	retq   

00000000000017b0 <allSchedulersExit>:
    if (i != threadId )
    17b0:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    17b7:	ff 
    17b8:	85 c0                	test   %eax,%eax
    17ba:	74 07                	je     17c3 <allSchedulersExit+0x13>
      UserThreadingVec[i].sp_exit_check = true;
    17bc:	c6 05 bd 0c 20 00 01 	movb   $0x1,0x200cbd(%rip)        # 202480 <UserThreadingVec+0x100>
    if (i != threadId )
    17c3:	64 8b 04 25 fc ff ff 	mov    %fs:0xfffffffffffffffc,%eax
    17ca:	ff 
    17cb:	83 f8 01             	cmp    $0x1,%eax
    17ce:	74 07                	je     17d7 <allSchedulersExit+0x27>
      UserThreadingVec[i].sp_exit_check = true;
    17d0:	c6 05 29 0e 20 00 01 	movb   $0x1,0x200e29(%rip)        # 202600 <UserThreadingVec+0x280>
    17d7:	48 8d 3d 86 01 00 00 	lea    0x186(%rip),%rdi        # 1964 <_IO_stdin_used+0xf4>
    17de:	e9 3d f1 ff ff       	jmpq   920 <puts@plt>
    17e3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    17ea:	00 00 00 
    17ed:	0f 1f 00             	nopl   (%rax)

00000000000017f0 <__libc_csu_init>:
    17f0:	41 57                	push   %r15
    17f2:	41 56                	push   %r14
    17f4:	49 89 d7             	mov    %rdx,%r15
    17f7:	41 55                	push   %r13
    17f9:	41 54                	push   %r12
    17fb:	4c 8d 25 46 05 20 00 	lea    0x200546(%rip),%r12        # 201d48 <__frame_dummy_init_array_entry>
    1802:	55                   	push   %rbp
    1803:	48 8d 2d 46 05 20 00 	lea    0x200546(%rip),%rbp        # 201d50 <__init_array_end>
    180a:	53                   	push   %rbx
    180b:	41 89 fd             	mov    %edi,%r13d
    180e:	49 89 f6             	mov    %rsi,%r14
    1811:	4c 29 e5             	sub    %r12,%rbp
    1814:	48 83 ec 08          	sub    $0x8,%rsp
    1818:	48 c1 fd 03          	sar    $0x3,%rbp
    181c:	e8 bf f0 ff ff       	callq  8e0 <_init>
    1821:	48 85 ed             	test   %rbp,%rbp
    1824:	74 20                	je     1846 <__libc_csu_init+0x56>
    1826:	31 db                	xor    %ebx,%ebx
    1828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    182f:	00 
    1830:	4c 89 fa             	mov    %r15,%rdx
    1833:	4c 89 f6             	mov    %r14,%rsi
    1836:	44 89 ef             	mov    %r13d,%edi
    1839:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    183d:	48 83 c3 01          	add    $0x1,%rbx
    1841:	48 39 dd             	cmp    %rbx,%rbp
    1844:	75 ea                	jne    1830 <__libc_csu_init+0x40>
    1846:	48 83 c4 08          	add    $0x8,%rsp
    184a:	5b                   	pop    %rbx
    184b:	5d                   	pop    %rbp
    184c:	41 5c                	pop    %r12
    184e:	41 5d                	pop    %r13
    1850:	41 5e                	pop    %r14
    1852:	41 5f                	pop    %r15
    1854:	c3                   	retq   
    1855:	90                   	nop
    1856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    185d:	00 00 00 

0000000000001860 <__libc_csu_fini>:
    1860:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001864 <_fini>:
    1864:	48 83 ec 08          	sub    $0x8,%rsp
    1868:	48 83 c4 08          	add    $0x8,%rsp
    186c:	c3                   	retq   

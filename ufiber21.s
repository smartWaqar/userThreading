	.file	"ufiber21.c"
	.text
	.p2align 4,,15
	.globl	Thread_Init
	.type	Thread_Init, @function
Thread_Init:
.LFB4786:
	.cfi_startproc
	movq	$0, 4152(%rdi)
	ret
	.cfi_endproc
.LFE4786:
	.size	Thread_Init, .-Thread_Init
	.p2align 4,,15
	.globl	Thread_Destory
	.type	Thread_Destory, @function
Thread_Destory:
.LFB4797:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4797:
	.size	Thread_Destory, .-Thread_Destory
	.p2align 4,,15
	.globl	UserThreading_Init
	.type	UserThreading_Init, @function
UserThreading_Init:
.LFB4788:
	.cfi_startproc
	movq	$0, 4224(%rdi)
	movl	%esi, 4480(%rdi)
	movb	$0, 4416(%rdi)
	movq	$11, 4152(%rdi)
	ret
	.cfi_endproc
.LFE4788:
	.size	UserThreading_Init, .-UserThreading_Init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Scheduler Started "
	.text
	.p2align 4,,15
	.globl	Scheduler
	.type	Scheduler, @function
Scheduler:
.LFB4789:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$4160, %edi
	call	malloc@PLT
	movq	%rax, 4352(%rbx)
	movq	$0, 4152(%rax)
	.p2align 4,,10
	.p2align 3
.L6:
	movq	4152(%rbx), %rax
	cmpq	$11, %rax
	je	.L6
	leaq	4096(%rbx), %rsi
	xorl	%ecx, %ecx
.L7:
	movslq	4480(%rbx), %rdx
	movq	4152(%rbx), %rax
	cmpq	%rdx, %rax
	je	.L10
	.p2align 4,,10
	.p2align 3
.L8:
	movq	4152(%rbx), %rax
	cmpq	%rdx, %rax
	jne	.L8
.L10:
	addl	$1, %ecx
#APP
# 84 "ufiber21.c" 1
	movq    %rsp, (%rsi) 
movq    %r15, 8(%rsi) 
movq    %r14, 16(%rsi) 
movq    %r13, 24(%rsi) 
movq    %r12, 32(%rsi) 
movq    %rbx, 40(%rsi) 
movq    %rbp, 48(%rsi) 
movq    (%rax), %rsp 
movq    8(%rax), %r15 
movq    16(%rax), %r14 
movq    24(%rax), %r13 
movq    32(%rax), %r12 
movq    40(%rax), %rbx 
movq    48(%rax), %rbp 
retq 

# 0 "" 2
#NO_APP
	movq	4160(%rbx), %rax
	cmpl	$5000000, %ecx
	movdqa	4096(%rbx), %xmm0
	movups	%xmm0, 4096(%rax)
	movdqa	4112(%rbx), %xmm0
	movups	%xmm0, 4112(%rax)
	movdqa	4128(%rbx), %xmm0
	movups	%xmm0, 4128(%rax)
	movdqa	4144(%rbx), %xmm0
	movups	%xmm0, 4144(%rax)
	jne	.L7
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4789:
	.size	Scheduler, .-Scheduler
	.p2align 4,,15
	.globl	UserThreading_Destory
	.type	UserThreading_Destory, @function
UserThreading_Destory:
.LFB4790:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4790:
	.size	UserThreading_Destory, .-UserThreading_Destory
	.p2align 4,,15
	.globl	Yield
	.type	Yield, @function
Yield:
.LFB4791:
	.cfi_startproc
	movq	4352(%rdi), %rax
	addq	$4096, %rdi
	leaq	4096(%rax), %rsi
	jmp	context_switch2@PLT
	.cfi_endproc
.LFE4791:
	.size	Yield, .-Yield
	.p2align 4,,15
	.globl	ThreadExit
	.type	ThreadExit, @function
ThreadExit:
.LFB4795:
	.cfi_startproc
	movq	4352(%rdi), %rax
	addq	$4096, %rdi
	leaq	4096(%rax), %rsi
	jmp	context_switch2@PLT
	.cfi_endproc
.LFE4795:
	.size	ThreadExit, .-ThreadExit
	.p2align 4,,15
	.globl	makeThread
	.type	makeThread, @function
makeThread:
.LFB4793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$4160, %esi
	movl	$64, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	aligned_alloc@PLT
	movq	$0, 4152(%rax)
	movq	%rax, %rsi
	leaq	4088(%rax), %rax
	movq	%rbp, 4088(%rsi)
	movq	%rbx, %rdi
	movl	$520, %ecx
	movq	%rax, 4096(%rsi)
	rep movsq
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4793:
	.size	makeThread, .-makeThread
	.globl	kStackSize
	.section	.rodata
	.align 4
	.type	kStackSize, @object
	.size	kStackSize, 4
kStackSize:
	.long	2097152
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

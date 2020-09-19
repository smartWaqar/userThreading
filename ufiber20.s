	.file	"ufiber20.c"
	.text
	.p2align 4,,15
	.globl	Thread_Init
	.type	Thread_Init, @function
Thread_Init:
.LFB4786:
	.cfi_startproc
	testb	%sil, %sil
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	jne	.L6
	movq	$0, 64(%rdi)
	movq	$0, 56(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
	movl	$2097152, %esi
	movl	$16, %edi
	call	aligned_alloc@PLT
	addq	$2097152, %rax
	movq	$0, 56(%rbx)
	movq	%rax, 64(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4786:
	.size	Thread_Init, .-Thread_Init
	.p2align 4,,15
	.globl	Thread_Destory
	.type	Thread_Destory, @function
Thread_Destory:
.LFB4787:
	.cfi_startproc
	movq	64(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L7
	subq	$2097152, %rdi
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L7:
	rep ret
	.cfi_endproc
.LFE4787:
	.size	Thread_Destory, .-Thread_Destory
	.p2align 4,,15
	.globl	UserThreading_Init
	.type	UserThreading_Init, @function
UserThreading_Init:
.LFB4788:
	.cfi_startproc
	movq	$0, 192(%rdi)
	movl	%esi, 448(%rdi)
	movb	$0, 384(%rdi)
	movq	$11, 56(%rdi)
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	puts@PLT
	movl	$72, %edi
	call	malloc@PLT
	movl	$2097152, %esi
	movq	%rax, 320(%rbx)
	movl	$16, %edi
	movq	%rax, %rbp
	call	aligned_alloc@PLT
	addq	$2097152, %rax
	movq	$0, 56(%rbp)
	movq	%rax, 64(%rbp)
	.p2align 4,,10
	.p2align 3
.L11:
	movq	56(%rbx), %rax
	cmpq	$11, %rax
	je	.L11
	xorl	%ebp, %ebp
.L12:
	movslq	448(%rbx), %rdx
	movq	56(%rbx), %rax
	cmpq	%rdx, %rax
	je	.L15
	.p2align 4,,10
	.p2align 3
.L13:
	movq	56(%rbx), %rax
	cmpq	%rdx, %rax
	jne	.L13
.L15:
	movq	320(%rbx), %rdi
	movq	%rbx, %rsi
	addl	$1, %ebp
	call	context_switch@PLT
	movq	128(%rbx), %rax
	cmpl	$5000000, %ebp
	movdqa	(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movdqa	16(%rbx), %xmm0
	movups	%xmm0, 16(%rax)
	movdqa	32(%rbx), %xmm0
	movups	%xmm0, 32(%rax)
	movdqa	48(%rbx), %xmm0
	movups	%xmm0, 48(%rax)
	jne	.L12
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	movq	320(%rdi), %rax
	movq	64(%rax), %rdi
	testq	%rdi, %rdi
	je	.L20
	subq	$2097152, %rdi
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L20:
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
	movq	320(%rdi), %rsi
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
	movq	320(%rdi), %rsi
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbp
	movl	$72, %esi
	movl	$64, %edi
	call	aligned_alloc@PLT
	movl	$2097152, %esi
	movl	$16, %edi
	movq	%rax, %rbx
	call	aligned_alloc@PLT
	leaq	2097144(%rax), %rcx
	movq	%r12, 2097144(%rax)
	movq	$0, 56(%rbx)
	leaq	2097152(%rax), %rdx
	movq	%rcx, (%rbx)
	movdqa	(%rbx), %xmm0
	movq	%rdx, 64(%rbp)
	movq	%rdx, 64(%rbx)
	movaps	%xmm0, 0(%rbp)
	movdqa	16(%rbx), %xmm0
	movaps	%xmm0, 16(%rbp)
	movdqa	32(%rbx), %xmm0
	movaps	%xmm0, 32(%rbp)
	movdqa	48(%rbx), %xmm0
	movaps	%xmm0, 48(%rbp)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
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

	.file	"ufiber26b.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"parentId: %d --------------------\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"C Exiting"
.LC2:
	.string	"*****"
	.text
	.p2align 4,,15
	.globl	pfc
	.type	pfc, @function
pfc:
.LFB5086:
	.file 1 "ufiber26b.c"
	.loc 1 522 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
.LBB98:
.LBB99:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	UserThreadingVec(%rip), %rbp
.LBE99:
.LBE98:
	.loc 1 522 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 525 0
	movl	%fs:threadId@tpoff, %edx
.LVL0:
.LBB101:
.LBB100:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL1:
.LBE100:
.LBE101:
	.loc 1 537 0
	movq	UserThreadingVec(%rip), %rax
.LBB102:
	.loc 1 541 0
	xorl	%esi, %esi
.LBE102:
	.loc 1 537 0
	movq	%rax, 640+UserThreadingVec(%rip)
	.loc 1 538 0
	movq	512+UserThreadingVec(%rip), %rax
	movq	%rax, 128+UserThreadingVec(%rip)
.LVL2:
	.p2align 4,,10
	.p2align 3
.L2:
.LBB107:
	.loc 1 558 0
	movl	%fs:threadId@tpoff, %eax
	testl	%eax, %eax
	jne	.L3
.L14:
	.loc 1 559 0
	movq	global_var1(%rip), %rax
	addq	$1, %rax
	movq	%rax, global_var1(%rip)
.L4:
	.loc 1 567 0 discriminator 2
	movslq	%fs:threadId@tpoff, %rdx
.LVL3:
.LBB103:
.LBB104:
	.loc 1 354 0 discriminator 2
	salq	$9, %rdx
.LVL4:
	addq	%rbp, %rdx
	movq	192(%rdx), %rax
	leaq	4096(%rax), %rbx
.LVL5:
	.loc 1 355 0 discriminator 2
	movq	128(%rdx), %rax
	addq	$4096, %rax
.LVL6:
	.loc 1 359 0 discriminator 2
	cmpb	$0, 448(%rdx)
	jne	.L5
	.loc 1 361 0
	movb	$1, 448(%rdx)
	.loc 1 363 0
#APP
# 363 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target277(%rip), %rcx 
	movq    %rcx, 8(%rax) 
	movq    %rdx, 16(%rax) 
	movq    %r8,  24(%rax) 
	movq    %r9,  32(%rax) 
	movq    %r10, 40(%rax) 
	movq    %r11, 48(%rax) 
	movq    %r12, 56(%rax) 
	movq    %r13, 64(%rax) 
	movq    %r14, 72(%rax) 
	movq    %r15, 80(%rax) 
	movq    %rbp, 88(%rax) 
	movq    %rdi, 96(%rax) 
	movq    %rsi, 104(%rax) 
	movq    $0, 112(%rax) 
	movq    (%rbx), %rsp 
	movq    64(%rbx), %r13 
	movq 8(%rbx), %rcx 
	movq    16(%rbx), %rdx 
	movq    24(%rbx), %r8 
	movq    32(%rbx), %r9 
	movq    40(%rbx), %r10 
	movq    48(%rbx), %r11 
	movq    56(%rbx), %r12 
	movq    72(%rbx), %r14 
	movq    80(%rbx), %r15 
	movq    88(%rbx), %rbp 
	movq    96(%rbx), %rdi 
	movq    104(%rbx), %rsi 
	jmp *%rcx 
	target277: 
# 0 "" 2
.LVL7:
#NO_APP
.LBE104:
.LBE103:
	.loc 1 568 0
	movl	%esi, myglobal(%rip)
	.loc 1 541 0
	addl	$1, %esi
.LVL8:
	cmpl	$10000000, %esi
	jne	.L2
.L7:
.LVL9:
.LBE107:
.LBB108:
.LBB109:
	.loc 2 104 0
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.LVL10:
.LBE109:
.LBE108:
	.loc 1 588 0
	movl	%fs:threadId@tpoff, %eax
	addl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cltq
	salq	$9, %rax
	addq	%rbp, %rax
	movb	$1, 256(%rax)
	.loc 1 591 0
	movslq	%fs:threadId@tpoff, %rax
	salq	$9, %rax
	addq	%rbp, %rax
	movb	$1, 256(%rax)
	.loc 1 599 0
	movslq	%fs:threadId@tpoff, %rax
.LVL11:
.LBB110:
.LBB111:
	.loc 1 354 0
	salq	$9, %rax
.LVL12:
	addq	%rax, %rbp
	movq	192(%rbp), %rax
	leaq	4096(%rax), %rbx
.LVL13:
	.loc 1 355 0
	movq	128(%rbp), %rax
	addq	$4096, %rax
.LVL14:
	.loc 1 359 0
	cmpb	$0, 448(%rbp)
	je	.L13
	.loc 1 412 0
	movb	$0, 448(%rbp)
	.loc 1 414 0
#APP
# 414 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2138(%rip), %rcx 
	movq    %rcx, 8(%rax) 
	movq    %rdx, 16(%rax) 
	movq    %r8,  24(%rax) 
	movq    %r9,  32(%rax) 
	movq    %r10, 40(%rax) 
	movq    %r11, 48(%rax) 
	movq    %r12, 56(%rax) 
	movq    %r13, 64(%rax) 
	movq    %r14, 72(%rax) 
	movq    %r15, 80(%rax) 
	movq    %rbp, 88(%rax) 
	movq    %rdi, 96(%rax) 
	movq    %rsi, 104(%rax) 
	movq    $1, 112(%rax) 
	movq    (%rbx), %rsp 
	movq    64(%rbx), %r13 
	movq 8(%rbx), %rcx 
	movq    16(%rbx), %rdx 
	movq    24(%rbx), %r8 
	movq    32(%rbx), %r9 
	movq    40(%rbx), %r10 
	movq    48(%rbx), %r11 
	movq    56(%rbx), %r12 
	movq    72(%rbx), %r14 
	movq    80(%rbx), %r15 
	movq    88(%rbx), %rbp 
	movq    96(%rbx), %rdi 
	movq    104(%rbx), %rsi 
	jmp *%rcx 
	target2138: 
# 0 "" 2
#NO_APP
.L9:
.LVL15:
.LBE111:
.LBE110:
	.loc 1 602 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LBB113:
.LBB114:
	.loc 2 104 0
	leaq	.LC2(%rip), %rdi
.LBE114:
.LBE113:
	.loc 1 602 0
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LBB116:
.LBB115:
	.loc 2 104 0
	jmp	puts@PLT
.LVL16:
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
.LBE115:
.LBE116:
.LBB117:
.LBB106:
.LBB105:
	.loc 1 412 0
	movb	$0, 448(%rdx)
	.loc 1 414 0
#APP
# 414 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2179(%rip), %rcx 
	movq    %rcx, 8(%rax) 
	movq    %rdx, 16(%rax) 
	movq    %r8,  24(%rax) 
	movq    %r9,  32(%rax) 
	movq    %r10, 40(%rax) 
	movq    %r11, 48(%rax) 
	movq    %r12, 56(%rax) 
	movq    %r13, 64(%rax) 
	movq    %r14, 72(%rax) 
	movq    %r15, 80(%rax) 
	movq    %rbp, 88(%rax) 
	movq    %rdi, 96(%rax) 
	movq    %rsi, 104(%rax) 
	movq    $1, 112(%rax) 
	movq    (%rbx), %rsp 
	movq    64(%rbx), %r13 
	movq 8(%rbx), %rcx 
	movq    16(%rbx), %rdx 
	movq    24(%rbx), %r8 
	movq    32(%rbx), %r9 
	movq    40(%rbx), %r10 
	movq    48(%rbx), %r11 
	movq    56(%rbx), %r12 
	movq    72(%rbx), %r14 
	movq    80(%rbx), %r15 
	movq    88(%rbx), %rbp 
	movq    96(%rbx), %rdi 
	movq    104(%rbx), %rsi 
	jmp *%rcx 
	target2179: 
# 0 "" 2
.LVL17:
#NO_APP
.LBE105:
.LBE106:
	.loc 1 568 0
	movl	%esi, myglobal(%rip)
	.loc 1 541 0
	addl	$1, %esi
.LVL18:
	cmpl	$10000000, %esi
	je	.L7
	.loc 1 558 0
	movl	%fs:threadId@tpoff, %eax
	testl	%eax, %eax
	je	.L14
.L3:
	.loc 1 561 0
	movq	global_var2(%rip), %rax
	addq	$1, %rax
	movq	%rax, global_var2(%rip)
	jmp	.L4
.LVL19:
.L13:
.LBE117:
.LBB118:
.LBB112:
	.loc 1 361 0
	movb	$1, 448(%rbp)
	.loc 1 363 0
#APP
# 363 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2214(%rip), %rcx 
	movq    %rcx, 8(%rax) 
	movq    %rdx, 16(%rax) 
	movq    %r8,  24(%rax) 
	movq    %r9,  32(%rax) 
	movq    %r10, 40(%rax) 
	movq    %r11, 48(%rax) 
	movq    %r12, 56(%rax) 
	movq    %r13, 64(%rax) 
	movq    %r14, 72(%rax) 
	movq    %r15, 80(%rax) 
	movq    %rbp, 88(%rax) 
	movq    %rdi, 96(%rax) 
	movq    %rsi, 104(%rax) 
	movq    $0, 112(%rax) 
	movq    (%rbx), %rsp 
	movq    64(%rbx), %r13 
	movq 8(%rbx), %rcx 
	movq    16(%rbx), %rdx 
	movq    24(%rbx), %r8 
	movq    32(%rbx), %r9 
	movq    40(%rbx), %r10 
	movq    48(%rbx), %r11 
	movq    56(%rbx), %r12 
	movq    72(%rbx), %r14 
	movq    80(%rbx), %r15 
	movq    88(%rbx), %rbp 
	movq    96(%rbx), %rdi 
	movq    104(%rbx), %rsi 
	jmp *%rcx 
	target2214: 
# 0 "" 2
#NO_APP
	jmp	.L9
.LBE112:
.LBE118:
	.cfi_endproc
.LFE5086:
	.size	pfc, .-pfc
	.p2align 4,,15
	.globl	Thread_Init
	.type	Thread_Init, @function
Thread_Init:
.LFB5078:
	.loc 1 24 0
	.cfi_startproc
.LVL20:
	.loc 1 26 0
	movq	$0, 4208(%rdi)
	.loc 1 27 0
	ret
	.cfi_endproc
.LFE5078:
	.size	Thread_Init, .-Thread_Init
	.p2align 4,,15
	.globl	Thread_Destory
	.type	Thread_Destory, @function
Thread_Destory:
.LFB5091:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE5091:
	.size	Thread_Destory, .-Thread_Destory
	.p2align 4,,15
	.globl	UserThreading_Init
	.type	UserThreading_Init, @function
UserThreading_Init:
.LFB5080:
	.loc 1 38 0
	.cfi_startproc
.LVL21:
	.loc 1 38 0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebp
	movq	%rdi, %rbx
	.loc 1 40 0
	movl	$4224, %esi
.LVL22:
	movl	$64, %edi
.LVL23:
	.loc 1 38 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 40 0
	call	aligned_alloc@PLT
.LVL24:
	.loc 1 52 0
	testl	%ebp, %ebp
	.loc 1 43 0
	movb	$0, 256(%rbx)
	.loc 1 44 0
	movl	%ebp, 320(%rbx)
	.loc 1 47 0
	movq	$11, 4208(%rax)
	.loc 1 40 0
	movq	%rax, (%rbx)
	.loc 1 50 0
	movb	$1, 384(%rbx)
	.loc 1 52 0
	sete	448(%rbx)
	.loc 1 56 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL25:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL26:
	ret
	.cfi_endproc
.LFE5080:
	.size	UserThreading_Init, .-UserThreading_Init
	.section	.rodata.str1.1
.LC3:
	.string	"Scheduler Started %d\n"
	.text
	.p2align 4,,15
	.globl	Scheduler
	.type	Scheduler, @function
Scheduler:
.LFB5081:
	.loc 1 59 0
	.cfi_startproc
.LVL27:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
.LBB119:
.LBB120:
	.loc 2 104 0
	leaq	.LC3(%rip), %rsi
.LBE120:
.LBE119:
	.loc 1 59 0
	movq	%rdi, %rbp
.LBB123:
.LBB121:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE121:
.LBE123:
	.loc 1 59 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LBB124:
.LBB122:
	.loc 2 104 0
	movl	320(%rdi), %edx
	movl	$1, %edi
.LVL28:
	call	__printf_chk@PLT
.LVL29:
.LBE122:
.LBE124:
	.loc 1 62 0
	movl	$4224, %esi
	movl	$64, %edi
	call	aligned_alloc@PLT
.LVL30:
	.loc 1 66 0
	movq	0(%rbp), %rcx
	.loc 1 62 0
	movq	%rax, 192(%rbp)
.LVL31:
.LBB125:
.LBB126:
	.loc 1 26 0
	movq	$0, 4208(%rax)
	.p2align 4,,10
	.p2align 3
.L20:
.LBE126:
.LBE125:
	.loc 1 66 0 discriminator 1
	movq	4208(%rcx), %rdx
	cmpq	$11, %rdx
	je	.L20
	.loc 1 68 0
	leaq	4096(%rax), %r8
.LVL32:
	.loc 1 69 0
	leaq	4096(%rcx), %rdi
.LVL33:
	.loc 1 84 0
	jmp	.L22
.LVL34:
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 87 0
	movq	0(%rbp), %rdx
	movzbl	384(%rbp), %ecx
	movq	4208(%rdx), %rsi
	movq	%rcx, %rdx
	cmpq	%rcx, %rsi
	je	.L28
.L22:
	.loc 1 84 0
	movzbl	256(%rbp), %edx
	testb	%dl, %dl
	je	.L23
	.loc 1 199 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL35:
	ret
.LVL36:
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
.LBB127:
	.loc 1 94 0
	xorl	$1, %edx
	.loc 1 112 0
	movq	%rdi, %rax
	movq	%r8, %rbx
	.loc 1 94 0
	movb	%dl, 384(%rbp)
.LVL37:
	.loc 1 112 0
#APP
# 112 "ufiber26b.c" 1
	movq    %rsp, (%rbx) 
	lea target382(%rip), %rcx 
	movq %rcx, 8(%rbx) 
	movq    %rdx, 16(%rbx) 
	movq    %r8,  24(%rbx) 
	movq    %r9,  32(%rbx) 
	movq    %r10, 40(%rbx) 
	movq    %r11, 48(%rbx) 
	movq    %r12, 56(%rbx) 
	movq    %r13, 64(%rbx) 
	movq    %r14, 72(%rbx) 
	movq    %r15, 80(%rbx) 
	movq    %rbp, 88(%rbx) 
	movq    %rdi, 96(%rbx) 
	movq    %rsi, 104(%rbx) 
	movq    (%rax), %rsp 
	movq    64(%rax), %r13 
	movq 8(%rax), %rcx 
	movq    16(%rax), %rdx 
	movq    24(%rax), %r8 
	movq    32(%rax), %r9 
	movq    40(%rax), %r10 
	movq    48(%rax), %r11 
	movq    56(%rax), %r12 
	movq    72(%rax), %r14 
	movq    80(%rax), %r15 
	movq    88(%rax), %rbp 
	movq    96(%rax), %rdi 
	movq    104(%rax), %rsi 
	jmp *%rcx 
	target382: 
# 0 "" 2
.LVL38:
#NO_APP
	jmp	.L22
.LBE127:
	.cfi_endproc
.LFE5081:
	.size	Scheduler, .-Scheduler
	.section	.rodata.str1.1
.LC4:
	.string	"OS Thread Affinity %d \n"
.LC5:
	.string	"ThreadNum: %d\n"
	.text
	.p2align 4,,15
	.globl	mpthread1
	.type	mpthread1, @function
mpthread1:
.LFB5087:
	.loc 1 611 0
	.cfi_startproc
.LVL39:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 617 0
	movl	$16, %ecx
	.loc 1 611 0
	movq	%rdi, %rbx
	subq	$144, %rsp
	.cfi_def_cfa_offset 160
	.loc 1 611 0
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	.loc 1 617 0
	movq	%rsp, %rdx
	movq	%rdx, %rdi
.LVL40:
	rep stosq
.LBB128:
	.loc 1 618 0
	movslq	coreId_1(%rip), %rax
.LVL41:
	cmpq	$1023, %rax
	ja	.L30
	movq	%rax, %rcx
	.loc 1 618 0 is_stmt 0 discriminator 1
	movl	$1, %esi
	shrq	$6, %rax
.LVL42:
	salq	%cl, %rsi
	orq	%rsi, (%rdx,%rax,8)
.LVL43:
.L30:
.LBE128:
	.loc 1 619 0 is_stmt 1 discriminator 4
	movq	threadId_1(%rip), %rdi
	movl	$128, %esi
	call	pthread_setaffinity_np@PLT
.LVL44:
	.loc 1 621 0 discriminator 4
	call	sched_getcpu@PLT
.LVL45:
.LBB129:
.LBB130:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL46:
.LBE130:
.LBE129:
	.loc 1 623 0 discriminator 4
	movl	%ebx, %fs:threadId@tpoff
	.loc 1 624 0 discriminator 4
	movl	%fs:threadId@tpoff, %edx
.LVL47:
.LBB131:
.LBB132:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE132:
.LBE131:
	.loc 1 626 0 discriminator 4
	leaq	OSThreadAvailable(%rip), %rbx
.LVL48:
.LBB134:
.LBB133:
	.loc 2 104 0 discriminator 4
	call	__printf_chk@PLT
.LVL49:
.LBE133:
.LBE134:
	.loc 1 626 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	.loc 1 628 0 discriminator 4
	leaq	barrier(%rip), %rdi
	.loc 1 626 0 discriminator 4
	movb	$1, (%rbx,%rax)
	.loc 1 628 0 discriminator 4
	call	pthread_barrier_wait@PLT
.LVL50:
.LBB135:
.LBB136:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/ia32intrin.h"
	.loc 3 114 0 discriminator 4
	rdtsc
.LBE136:
.LBE135:
	.loc 1 632 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rdi
.LBB138:
.LBB137:
	.loc 3 114 0 discriminator 4
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE137:
.LBE138:
	.loc 1 629 0 discriminator 4
	movq	%rax, thread1_starttime(%rip)
	.loc 1 632 0 discriminator 4
	leaq	UserThreadingVec(%rip), %rax
	salq	$9, %rdi
	addq	%rax, %rdi
	call	Scheduler
.LVL51:
	.loc 1 633 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	movb	$0, (%rbx,%rax)
.LBB139:
.LBB140:
	.loc 3 114 0 discriminator 4
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE140:
.LBE139:
	.loc 1 641 0 discriminator 4
	movq	136(%rsp), %rcx
	xorq	%fs:40, %rcx
	.loc 1 635 0 discriminator 4
	movq	%rax, thread1_endtime(%rip)
	.loc 1 641 0 discriminator 4
	jne	.L33
	.loc 1 641 0 is_stmt 0
	addq	$144, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L33:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL52:
	.cfi_endproc
.LFE5087:
	.size	mpthread1, .-mpthread1
	.p2align 4,,15
	.globl	mpthread2
	.type	mpthread2, @function
mpthread2:
.LFB5088:
	.loc 1 643 0 is_stmt 1
	.cfi_startproc
.LVL53:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 646 0
	movl	$16, %ecx
	.loc 1 643 0
	movq	%rdi, %rbx
	subq	$144, %rsp
	.cfi_def_cfa_offset 160
	.loc 1 643 0
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	.loc 1 646 0
	movq	%rsp, %rdx
	movq	%rdx, %rdi
.LVL54:
	rep stosq
.LBB141:
	.loc 1 647 0
	movslq	coreId_2(%rip), %rax
.LVL55:
	cmpq	$1023, %rax
	ja	.L35
	movq	%rax, %rcx
	.loc 1 647 0 is_stmt 0 discriminator 1
	movl	$1, %esi
	shrq	$6, %rax
.LVL56:
	salq	%cl, %rsi
	orq	%rsi, (%rdx,%rax,8)
.LVL57:
.L35:
.LBE141:
	.loc 1 648 0 is_stmt 1 discriminator 4
	movq	threadId_2(%rip), %rdi
	movl	$128, %esi
	call	pthread_setaffinity_np@PLT
.LVL58:
	.loc 1 650 0 discriminator 4
	call	sched_getcpu@PLT
.LVL59:
.LBB142:
.LBB143:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL60:
.LBE143:
.LBE142:
	.loc 1 652 0 discriminator 4
	movl	%ebx, %fs:threadId@tpoff
	.loc 1 653 0 discriminator 4
	movl	%fs:threadId@tpoff, %edx
.LVL61:
.LBB144:
.LBB145:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE145:
.LBE144:
	.loc 1 654 0 discriminator 4
	leaq	OSThreadAvailable(%rip), %rbx
.LVL62:
.LBB147:
.LBB146:
	.loc 2 104 0 discriminator 4
	call	__printf_chk@PLT
.LVL63:
.LBE146:
.LBE147:
	.loc 1 654 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	.loc 1 657 0 discriminator 4
	leaq	barrier(%rip), %rdi
	.loc 1 654 0 discriminator 4
	movb	$1, (%rbx,%rax)
	.loc 1 657 0 discriminator 4
	call	pthread_barrier_wait@PLT
.LVL64:
.LBB148:
.LBB149:
	.loc 3 114 0 discriminator 4
	rdtsc
.LBE149:
.LBE148:
	.loc 1 660 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rdi
.LBB151:
.LBB150:
	.loc 3 114 0 discriminator 4
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE150:
.LBE151:
	.loc 1 658 0 discriminator 4
	movq	%rax, thread2_starttime(%rip)
	.loc 1 660 0 discriminator 4
	leaq	UserThreadingVec(%rip), %rax
	salq	$9, %rdi
	addq	%rax, %rdi
	call	Scheduler
.LVL65:
	.loc 1 661 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	movb	$0, (%rbx,%rax)
.LBB152:
.LBB153:
	.loc 3 114 0 discriminator 4
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE153:
.LBE152:
	.loc 1 668 0 discriminator 4
	movq	136(%rsp), %rcx
	xorq	%fs:40, %rcx
	.loc 1 663 0 discriminator 4
	movq	%rax, thread2_endtime(%rip)
	.loc 1 668 0 discriminator 4
	jne	.L38
	.loc 1 668 0 is_stmt 0
	addq	$144, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L38:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL66:
	.cfi_endproc
.LFE5088:
	.size	mpthread2, .-mpthread2
	.p2align 4,,15
	.globl	UserThreading_Destory
	.type	UserThreading_Destory, @function
UserThreading_Destory:
.LFB5082:
	.loc 1 340 0 is_stmt 1
	.cfi_startproc
.LVL67:
	.loc 1 342 0
	rep ret
	.cfi_endproc
.LFE5082:
	.size	UserThreading_Destory, .-UserThreading_Destory
	.p2align 4,,15
	.globl	Yield
	.type	Yield, @function
Yield:
.LFB5083:
	.loc 1 347 0
	.cfi_startproc
.LVL68:
	.loc 1 354 0
	movq	192(%rdi), %rax
	.loc 1 347 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 354 0
	leaq	4096(%rax), %rbx
.LVL69:
	.loc 1 355 0
	movq	128(%rdi), %rax
	addq	$4096, %rax
.LVL70:
	.loc 1 359 0
	cmpb	$0, 448(%rdi)
	je	.L44
	.loc 1 412 0
	movb	$0, 448(%rdi)
	.loc 1 414 0
#APP
# 414 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2674(%rip), %rcx 
	movq    %rcx, 8(%rax) 
	movq    %rdx, 16(%rax) 
	movq    %r8,  24(%rax) 
	movq    %r9,  32(%rax) 
	movq    %r10, 40(%rax) 
	movq    %r11, 48(%rax) 
	movq    %r12, 56(%rax) 
	movq    %r13, 64(%rax) 
	movq    %r14, 72(%rax) 
	movq    %r15, 80(%rax) 
	movq    %rbp, 88(%rax) 
	movq    %rdi, 96(%rax) 
	movq    %rsi, 104(%rax) 
	movq    $1, 112(%rax) 
	movq    (%rbx), %rsp 
	movq    64(%rbx), %r13 
	movq 8(%rbx), %rcx 
	movq    16(%rbx), %rdx 
	movq    24(%rbx), %r8 
	movq    32(%rbx), %r9 
	movq    40(%rbx), %r10 
	movq    48(%rbx), %r11 
	movq    56(%rbx), %r12 
	movq    72(%rbx), %r14 
	movq    80(%rbx), %r15 
	movq    88(%rbx), %rbp 
	movq    96(%rbx), %rdi 
	movq    104(%rbx), %rsi 
	jmp *%rcx 
	target2674: 
# 0 "" 2
	.loc 1 462 0
#NO_APP
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL71:
	ret
.LVL72:
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	.loc 1 361 0
	movb	$1, 448(%rdi)
	.loc 1 363 0
#APP
# 363 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2687(%rip), %rcx 
	movq    %rcx, 8(%rax) 
	movq    %rdx, 16(%rax) 
	movq    %r8,  24(%rax) 
	movq    %r9,  32(%rax) 
	movq    %r10, 40(%rax) 
	movq    %r11, 48(%rax) 
	movq    %r12, 56(%rax) 
	movq    %r13, 64(%rax) 
	movq    %r14, 72(%rax) 
	movq    %r15, 80(%rax) 
	movq    %rbp, 88(%rax) 
	movq    %rdi, 96(%rax) 
	movq    %rsi, 104(%rax) 
	movq    $0, 112(%rax) 
	movq    (%rbx), %rsp 
	movq    64(%rbx), %r13 
	movq 8(%rbx), %rcx 
	movq    16(%rbx), %rdx 
	movq    24(%rbx), %r8 
	movq    32(%rbx), %r9 
	movq    40(%rbx), %r10 
	movq    48(%rbx), %r11 
	movq    56(%rbx), %r12 
	movq    72(%rbx), %r14 
	movq    80(%rbx), %r15 
	movq    88(%rbx), %rbp 
	movq    96(%rbx), %rdi 
	movq    104(%rbx), %rsi 
	jmp *%rcx 
	target2687: 
# 0 "" 2
	.loc 1 462 0
#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL73:
	ret
	.cfi_endproc
.LFE5083:
	.size	Yield, .-Yield
	.p2align 4,,15
	.globl	makeThread
	.type	makeThread, @function
makeThread:
.LFB5084:
	.loc 1 467 0
	.cfi_startproc
.LVL74:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	.loc 1 470 0
	movl	$4224, %esi
.LVL75:
	movl	$128, %edi
.LVL76:
	.loc 1 467 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 470 0
	call	aligned_alloc@PLT
.LVL77:
	.loc 1 473 0
	leaq	4096(%rax), %rdx
.LBB154:
.LBB155:
	.loc 1 26 0
	movq	$0, 4208(%rax)
.LVL78:
.LBE155:
.LBE154:
	.loc 1 474 0
	movq	%rbp, 4104(%rax)
	.loc 1 475 0
	movq	$1, 4208(%rax)
	.loc 1 479 0
	movq	%rax, (%rbx)
	.loc 1 473 0
	movq	%rdx, 4096(%rax)
	.loc 1 482 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
.LVL79:
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL80:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL81:
	ret
	.cfi_endproc
.LFE5084:
	.size	makeThread, .-makeThread
	.section	.rodata.str1.1
.LC6:
	.string	"All Schedulers Check Marked"
	.text
	.p2align 4,,15
	.globl	allSchedulersExit
	.type	allSchedulersExit, @function
allSchedulersExit:
.LFB5085:
	.loc 1 507 0
	.cfi_startproc
.LVL82:
.LBB156:
	.loc 1 510 0
	movl	%fs:threadId@tpoff, %eax
	testl	%eax, %eax
	je	.L48
	.loc 1 512 0
	movb	$1, 256+UserThreadingVec(%rip)
.L48:
.LVL83:
	.loc 1 510 0
	movl	%fs:threadId@tpoff, %eax
	cmpl	$1, %eax
	je	.L49
	.loc 1 512 0
	movb	$1, 768+UserThreadingVec(%rip)
.L49:
.LVL84:
.LBE156:
.LBB157:
.LBB158:
	.loc 2 104 0
	leaq	.LC6(%rip), %rdi
	jmp	puts@PLT
.LVL85:
.LBE158:
.LBE157:
	.cfi_endproc
.LFE5085:
	.size	allSchedulersExit, .-allSchedulersExit
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Program needs 2 arguments: two core ids "
	.section	.rodata.str1.1
.LC8:
	.string	"REP_NOPS not enabled"
.LC9:
	.string	"My start: %lu \n"
.LC10:
	.string	"globalVariable: %lld\n"
.LC11:
	.string	"global_var1: %lld\n"
.LC12:
	.string	"global_var2: %lld \n"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Execution time is %lu clock cycles\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5089:
	.loc 1 672 0
	.cfi_startproc
.LVL86:
	.loc 1 676 0
	cmpl	$3, %edi
	.loc 1 672 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 676 0
	jne	.L60
.LBB159:
.LBB160:
	.file 4 "/usr/include/stdlib.h"
	.loc 4 363 0
	movq	8(%rsi), %rdi
.LVL87:
	movq	%rsi, %rbx
.LVL88:
	movl	$10, %edx
	xorl	%esi, %esi
.LVL89:
	call	strtol@PLT
.LVL90:
.LBE160:
.LBE159:
.LBB162:
.LBB163:
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
.LBE163:
.LBE162:
.LBB166:
.LBB161:
	movl	%eax, coreId_1(%rip)
.LVL91:
.LBE161:
.LBE166:
.LBB167:
.LBB164:
	call	strtol@PLT
.LVL92:
.LBE164:
.LBE167:
	.loc 1 685 0
	cmpl	$5, coreId_1(%rip)
.LBB168:
.LBB165:
	.loc 4 363 0
	movl	%eax, coreId_2(%rip)
.LBE165:
.LBE168:
	.loc 1 685 0
	jne	.L58
	.loc 1 686 0
	movl	$1, special_global(%rip)
.L58:
.LVL93:
.LBB169:
.LBB170:
	.loc 2 104 0
	leaq	.LC8(%rip), %rdi
.LBE170:
.LBE169:
.LBB172:
.LBB173:
	.loc 1 474 0
	leaq	pfc(%rip), %rbx
.LVL94:
.LBE173:
.LBE172:
.LBB178:
.LBB171:
	.loc 2 104 0
	call	puts@PLT
.LVL95:
.LBE171:
.LBE178:
	.loc 1 695 0
	leaq	barrier(%rip), %rdi
	movl	$2, %edx
	xorl	%esi, %esi
	call	pthread_barrier_init@PLT
.LVL96:
.LBB179:
.LBB180:
	.loc 1 40 0
	movl	$4224, %esi
	movl	$64, %edi
.LBE180:
.LBE179:
	.loc 1 697 0
	movl	$2, threadCount(%rip)
.LVL97:
.LBB183:
.LBB181:
	.loc 1 40 0
	call	aligned_alloc@PLT
.LVL98:
	.loc 1 43 0
	movb	$0, 256+UserThreadingVec(%rip)
.LBE181:
.LBE183:
.LBB184:
.LBB185:
	.loc 1 40 0
	movl	$4224, %esi
	movl	$64, %edi
.LBE185:
.LBE184:
.LBB188:
.LBB182:
	.loc 1 47 0
	movq	$11, 4208(%rax)
	.loc 1 44 0
	movl	$0, 320+UserThreadingVec(%rip)
	.loc 1 50 0
	movb	$1, 384+UserThreadingVec(%rip)
	.loc 1 52 0
	movb	$1, 448+UserThreadingVec(%rip)
.LVL99:
.LBE182:
.LBE188:
.LBB189:
.LBB186:
	.loc 1 40 0
	call	aligned_alloc@PLT
.LVL100:
	.loc 1 43 0
	movb	$0, 768+UserThreadingVec(%rip)
.LBE186:
.LBE189:
.LBB190:
.LBB176:
	.loc 1 470 0
	movl	$4224, %esi
	movl	$128, %edi
.LBE176:
.LBE190:
.LBB191:
.LBB187:
	.loc 1 47 0
	movq	$11, 4208(%rax)
	.loc 1 40 0
	movq	%rax, 512+UserThreadingVec(%rip)
	.loc 1 44 0
	movl	$1, 832+UserThreadingVec(%rip)
	.loc 1 50 0
	movb	$1, 896+UserThreadingVec(%rip)
	.loc 1 52 0
	movb	$0, 960+UserThreadingVec(%rip)
.LVL101:
.LBE187:
.LBE191:
.LBB192:
.LBB177:
	.loc 1 470 0
	call	aligned_alloc@PLT
.LVL102:
	.loc 1 473 0
	leaq	4096(%rax), %rdx
.LBB174:
.LBB175:
	.loc 1 26 0
	movq	$0, 4208(%rax)
.LVL103:
.LBE175:
.LBE174:
	.loc 1 474 0
	movq	%rbx, 4104(%rax)
	.loc 1 475 0
	movq	$1, 4208(%rax)
	.loc 1 479 0
	movq	%rax, UserThreadingVec(%rip)
.LVL104:
	.loc 1 473 0
	movq	%rdx, 4096(%rax)
.LBE177:
.LBE192:
.LBB193:
.LBB194:
	.loc 3 114 0
	rdtsc
.LBE194:
.LBE193:
.LBB196:
.LBB197:
	.loc 2 104 0
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
.LBE197:
.LBE196:
.LBB199:
.LBB195:
	.loc 3 114 0
	salq	$32, %rdx
	orq	%rdx, %rax
.LVL105:
.LBE195:
.LBE199:
.LBB200:
.LBB198:
	.loc 2 104 0
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL106:
.LBE198:
.LBE200:
	.loc 1 716 0
	leaq	mpthread1(%rip), %rdx
	leaq	threadId_1(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.loc 1 715 0
	movb	$0, OSThreadAvailable(%rip)
	.loc 1 716 0
	call	pthread_create@PLT
.LVL107:
	.loc 1 718 0
	leaq	mpthread2(%rip), %rdx
	leaq	threadId_2(%rip), %rdi
	movl	$1, %ecx
	xorl	%esi, %esi
	.loc 1 717 0
	movb	$0, 1+OSThreadAvailable(%rip)
	.loc 1 718 0
	call	pthread_create@PLT
.LVL108:
	.loc 1 720 0
	movq	threadId_1(%rip), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL109:
	.loc 1 721 0
	movq	threadId_2(%rip), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL110:
.LBB201:
.LBB202:
	.loc 3 114 0
	rdtsc
.LBE202:
.LBE201:
	.loc 1 729 0
	leaq	barrier(%rip), %rdi
	call	pthread_barrier_destroy@PLT
.LVL111:
.LBB203:
.LBB204:
	.loc 2 104 0
	movq	globalVariable(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL112:
.LBE204:
.LBE203:
	.loc 1 732 0
	movq	global_var1(%rip), %rdx
.LVL113:
.LBB205:
.LBB206:
	.loc 2 104 0
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL114:
.LBE206:
.LBE205:
	.loc 1 733 0
	movq	global_var2(%rip), %rdx
.LVL115:
.LBB207:
.LBB208:
	.loc 2 104 0
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL116:
.LBE208:
.LBE207:
	.loc 1 741 0
	movq	thread1_endtime(%rip), %rdx
	cmpq	%rdx, thread2_endtime(%rip)
	.loc 1 744 0
	movabsq	$-2972493582642298179, %rcx
	.loc 1 741 0
	cmovnb	thread2_endtime(%rip), %rdx
	.loc 1 739 0
	movq	thread1_starttime(%rip), %rax
.LBB209:
.LBB210:
	.loc 2 104 0
	leaq	.LC13(%rip), %rsi
.LBE210:
.LBE209:
	.loc 1 739 0
	cmpq	%rax, thread2_starttime(%rip)
.LBB214:
.LBB211:
	.loc 2 104 0
	movl	$1, %edi
.LBE211:
.LBE214:
	.loc 1 739 0
	cmovbe	thread2_starttime(%rip), %rax
	.loc 1 745 0
	subq	%rax, %rdx
	.loc 1 744 0
	movq	%rdx, %rax
	mulq	%rcx
.LBB215:
.LBB212:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE212:
.LBE215:
	.loc 1 744 0
	shrq	$23, %rdx
.LBB216:
.LBB213:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL117:
.LBE213:
.LBE216:
	.loc 1 747 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL118:
.L60:
	.cfi_restore_state
.LBB217:
.LBB218:
	.loc 2 104 0
	leaq	.LC7(%rip), %rdi
.LVL119:
	call	puts@PLT
.LVL120:
.LBE218:
.LBE217:
	.loc 1 678 0
	movl	$1, %edi
	call	exit@PLT
.LVL121:
	.cfi_endproc
.LFE5089:
	.size	main, .-main
	.comm	thread2_endtime,8,8
	.comm	thread1_endtime,8,8
	.comm	thread2_starttime,8,8
	.comm	thread1_starttime,8,8
	.comm	coreId_2,4,4
	.comm	coreId_1,4,4
	.comm	threadId_3,8,8
	.comm	threadId_2,8,8
	.comm	threadId_1,8,8
	.globl	myglobal
	.bss
	.align 4
	.type	myglobal, @object
	.size	myglobal, 4
myglobal:
	.zero	4
	.globl	buf2
	.align 32
	.type	buf2, @object
	.size	buf2, 128
buf2:
	.zero	128
	.globl	global_var2
	.align 128
	.type	global_var2, @object
	.size	global_var2, 8
global_var2:
	.zero	8
	.globl	global_var1
	.align 128
	.type	global_var1, @object
	.size	global_var1, 8
global_var1:
	.zero	8
	.globl	buf
	.align 32
	.type	buf, @object
	.size	buf, 128
buf:
	.zero	128
	.globl	special_global
	.align 4
	.type	special_global, @object
	.size	special_global, 4
special_global:
	.zero	4
	.comm	userTh,512,128
	.section	.tbss,"awT",@nobits
	.align 4
	.type	threadId, @object
	.size	threadId, 4
threadId:
	.zero	4
	.comm	OSThreadAvailable,2,1
	.comm	threadCount,4,4
	.comm	UserThreadingVec,1024,128
	.globl	globalVariable
	.bss
	.align 8
	.type	globalVariable, @object
	.size	globalVariable, 8
globalVariable:
	.zero	8
	.comm	barrier,32,32
	.globl	kStackSize
	.section	.rodata
	.align 4
	.type	kStackSize, @object
	.size	kStackSize, 4
kStackSize:
	.long	2097152
	.text
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/cpu-set.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 15 "ufiber26b.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 18 "/usr/include/pthread.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/sched.h"
	.file 20 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16ed
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF158
	.byte	0xc
	.long	.LASF159
	.long	.LASF160
	.long	.Ldebug_ranges0+0x410
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF7
	.byte	0x5
	.byte	0x25
	.long	0x29
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	0x5e
	.uleb128 0x6
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x5
	.byte	0x2c
	.long	0x3e
	.uleb128 0x3
	.long	.LASF9
	.byte	0x5
	.byte	0x8c
	.long	0x6f
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x8d
	.long	0x6f
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.long	0x9f
	.uleb128 0x3
	.long	.LASF12
	.byte	0x6
	.byte	0xd8
	.long	0x3e
	.uleb128 0x3
	.long	.LASF13
	.byte	0x7
	.byte	0x20
	.long	0x3e
	.uleb128 0x9
	.byte	0x80
	.byte	0x7
	.byte	0x27
	.long	0xd6
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x29
	.long	0xd6
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xb6
	.long	0xe6
	.uleb128 0xc
	.long	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x7
	.byte	0x2a
	.long	0xc1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x6
	.long	0xf1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0x8
	.byte	0x8
	.long	0xa6
	.uleb128 0x5
	.long	0x104
	.uleb128 0xd
	.long	0x104
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x3
	.long	.LASF18
	.byte	0x8
	.byte	0x1b
	.long	0x3e
	.uleb128 0xe
	.byte	0x20
	.byte	0x8
	.byte	0x6c
	.long	0x145
	.uleb128 0xf
	.long	.LASF19
	.byte	0x8
	.byte	0x6e
	.long	0x145
	.uleb128 0xf
	.long	.LASF20
	.byte	0x8
	.byte	0x6f
	.long	0x6f
	.byte	0
	.uleb128 0xb
	.long	0x9f
	.long	0x155
	.uleb128 0xc
	.long	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x8
	.byte	0x70
	.long	0x126
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF22
	.uleb128 0x3
	.long	.LASF23
	.byte	0x9
	.byte	0x18
	.long	0x4c
	.uleb128 0x3
	.long	.LASF24
	.byte	0x9
	.byte	0x1b
	.long	0x76
	.uleb128 0x6
	.long	0x172
	.uleb128 0x3
	.long	.LASF25
	.byte	0xa
	.byte	0x61
	.long	0x6f
	.uleb128 0xb
	.long	0x99
	.long	0x19d
	.uleb128 0xc
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF26
	.byte	0xb
	.byte	0x9f
	.long	0x18d
	.uleb128 0x10
	.long	.LASF27
	.byte	0xb
	.byte	0xa0
	.long	0x5e
	.uleb128 0x10
	.long	.LASF28
	.byte	0xb
	.byte	0xa1
	.long	0x6f
	.uleb128 0x10
	.long	.LASF29
	.byte	0xb
	.byte	0xa6
	.long	0x18d
	.uleb128 0x10
	.long	.LASF30
	.byte	0xb
	.byte	0xae
	.long	0x5e
	.uleb128 0x10
	.long	.LASF31
	.byte	0xb
	.byte	0xaf
	.long	0x6f
	.uleb128 0x11
	.long	.LASF32
	.byte	0xb
	.value	0x118
	.long	0x5e
	.uleb128 0x12
	.long	.LASF63
	.byte	0xd8
	.byte	0xc
	.byte	0xf5
	.long	0x36b
	.uleb128 0xa
	.long	.LASF34
	.byte	0xc
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0xc
	.byte	0xfb
	.long	0x99
	.byte	0x8
	.uleb128 0xa
	.long	.LASF36
	.byte	0xc
	.byte	0xfc
	.long	0x99
	.byte	0x10
	.uleb128 0xa
	.long	.LASF37
	.byte	0xc
	.byte	0xfd
	.long	0x99
	.byte	0x18
	.uleb128 0xa
	.long	.LASF38
	.byte	0xc
	.byte	0xfe
	.long	0x99
	.byte	0x20
	.uleb128 0xa
	.long	.LASF39
	.byte	0xc
	.byte	0xff
	.long	0x99
	.byte	0x28
	.uleb128 0x13
	.long	.LASF40
	.byte	0xc
	.value	0x100
	.long	0x99
	.byte	0x30
	.uleb128 0x13
	.long	.LASF41
	.byte	0xc
	.value	0x101
	.long	0x99
	.byte	0x38
	.uleb128 0x13
	.long	.LASF42
	.byte	0xc
	.value	0x102
	.long	0x99
	.byte	0x40
	.uleb128 0x13
	.long	.LASF43
	.byte	0xc
	.value	0x104
	.long	0x99
	.byte	0x48
	.uleb128 0x13
	.long	.LASF44
	.byte	0xc
	.value	0x105
	.long	0x99
	.byte	0x50
	.uleb128 0x13
	.long	.LASF45
	.byte	0xc
	.value	0x106
	.long	0x99
	.byte	0x58
	.uleb128 0x13
	.long	.LASF46
	.byte	0xc
	.value	0x108
	.long	0x3a3
	.byte	0x60
	.uleb128 0x13
	.long	.LASF47
	.byte	0xc
	.value	0x10a
	.long	0x3a9
	.byte	0x68
	.uleb128 0x13
	.long	.LASF48
	.byte	0xc
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0x13
	.long	.LASF49
	.byte	0xc
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0x13
	.long	.LASF50
	.byte	0xc
	.value	0x112
	.long	0x81
	.byte	0x78
	.uleb128 0x13
	.long	.LASF51
	.byte	0xc
	.value	0x116
	.long	0x30
	.byte	0x80
	.uleb128 0x13
	.long	.LASF52
	.byte	0xc
	.value	0x117
	.long	0x45
	.byte	0x82
	.uleb128 0x13
	.long	.LASF53
	.byte	0xc
	.value	0x118
	.long	0x3af
	.byte	0x83
	.uleb128 0x13
	.long	.LASF54
	.byte	0xc
	.value	0x11c
	.long	0x3bf
	.byte	0x88
	.uleb128 0x13
	.long	.LASF55
	.byte	0xc
	.value	0x125
	.long	0x8c
	.byte	0x90
	.uleb128 0x13
	.long	.LASF56
	.byte	0xc
	.value	0x12d
	.long	0x97
	.byte	0x98
	.uleb128 0x13
	.long	.LASF57
	.byte	0xc
	.value	0x12e
	.long	0x97
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF58
	.byte	0xc
	.value	0x12f
	.long	0x97
	.byte	0xa8
	.uleb128 0x13
	.long	.LASF59
	.byte	0xc
	.value	0x130
	.long	0x97
	.byte	0xb0
	.uleb128 0x13
	.long	.LASF60
	.byte	0xc
	.value	0x132
	.long	0xab
	.byte	0xb8
	.uleb128 0x13
	.long	.LASF61
	.byte	0xc
	.value	0x133
	.long	0x5e
	.byte	0xc0
	.uleb128 0x13
	.long	.LASF62
	.byte	0xc
	.value	0x135
	.long	0x3c5
	.byte	0xc4
	.byte	0
	.uleb128 0x14
	.long	.LASF161
	.byte	0xc
	.byte	0x9a
	.uleb128 0x12
	.long	.LASF64
	.byte	0x18
	.byte	0xc
	.byte	0xa0
	.long	0x3a3
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0xa1
	.long	0x3a3
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0xa2
	.long	0x3a9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x372
	.uleb128 0x8
	.byte	0x8
	.long	0x1eb
	.uleb128 0xb
	.long	0x9f
	.long	0x3bf
	.uleb128 0xc
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x36b
	.uleb128 0xb
	.long	0x9f
	.long	0x3d5
	.uleb128 0xc
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x15
	.long	.LASF162
	.uleb128 0x11
	.long	.LASF68
	.byte	0xc
	.value	0x13f
	.long	0x3d5
	.uleb128 0x11
	.long	.LASF69
	.byte	0xc
	.value	0x140
	.long	0x3d5
	.uleb128 0x11
	.long	.LASF70
	.byte	0xc
	.value	0x141
	.long	0x3d5
	.uleb128 0x10
	.long	.LASF71
	.byte	0xd
	.byte	0x87
	.long	0x3a9
	.uleb128 0x10
	.long	.LASF72
	.byte	0xd
	.byte	0x88
	.long	0x3a9
	.uleb128 0x10
	.long	.LASF73
	.byte	0xd
	.byte	0x89
	.long	0x3a9
	.uleb128 0x10
	.long	.LASF74
	.byte	0xe
	.byte	0x1a
	.long	0x5e
	.uleb128 0xb
	.long	0x10a
	.long	0x435
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.long	0x42a
	.uleb128 0x10
	.long	.LASF75
	.byte	0xe
	.byte	0x1b
	.long	0x435
	.uleb128 0x10
	.long	.LASF76
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.uleb128 0x10
	.long	.LASF77
	.byte	0xe
	.byte	0x1f
	.long	0x435
	.uleb128 0x9
	.byte	0x78
	.byte	0xf
	.byte	0xe
	.long	0x516
	.uleb128 0x17
	.string	"rsp"
	.byte	0xf
	.byte	0xf
	.long	0x172
	.byte	0
	.uleb128 0x17
	.string	"rip"
	.byte	0xf
	.byte	0x10
	.long	0x172
	.byte	0x8
	.uleb128 0x17
	.string	"rdx"
	.byte	0xf
	.byte	0x14
	.long	0x172
	.byte	0x10
	.uleb128 0x17
	.string	"r8"
	.byte	0xf
	.byte	0x15
	.long	0x172
	.byte	0x18
	.uleb128 0x17
	.string	"r9"
	.byte	0xf
	.byte	0x16
	.long	0x172
	.byte	0x20
	.uleb128 0x17
	.string	"r10"
	.byte	0xf
	.byte	0x17
	.long	0x172
	.byte	0x28
	.uleb128 0x17
	.string	"r11"
	.byte	0xf
	.byte	0x18
	.long	0x172
	.byte	0x30
	.uleb128 0x17
	.string	"r12"
	.byte	0xf
	.byte	0x1a
	.long	0x172
	.byte	0x38
	.uleb128 0x17
	.string	"r13"
	.byte	0xf
	.byte	0x1b
	.long	0x172
	.byte	0x40
	.uleb128 0x17
	.string	"r14"
	.byte	0xf
	.byte	0x1c
	.long	0x172
	.byte	0x48
	.uleb128 0x17
	.string	"r15"
	.byte	0xf
	.byte	0x1d
	.long	0x172
	.byte	0x50
	.uleb128 0x17
	.string	"rbp"
	.byte	0xf
	.byte	0x1e
	.long	0x172
	.byte	0x58
	.uleb128 0x17
	.string	"rdi"
	.byte	0xf
	.byte	0x1f
	.long	0x172
	.byte	0x60
	.uleb128 0x17
	.string	"rsi"
	.byte	0xf
	.byte	0x20
	.long	0x172
	.byte	0x68
	.uleb128 0xa
	.long	.LASF78
	.byte	0xf
	.byte	0x23
	.long	0x17d
	.byte	0x70
	.byte	0
	.uleb128 0x3
	.long	.LASF79
	.byte	0xf
	.byte	0x24
	.long	0x45b
	.uleb128 0x18
	.value	0x1080
	.byte	0x80
	.byte	0xf
	.byte	0x26
	.long	0x546
	.uleb128 0xa
	.long	.LASF80
	.byte	0xf
	.byte	0x28
	.long	0x546
	.byte	0
	.uleb128 0x19
	.long	.LASF81
	.byte	0xf
	.byte	0x29
	.long	0x516
	.byte	0x80
	.value	0x1000
	.byte	0
	.uleb128 0xb
	.long	0x167
	.long	0x557
	.uleb128 0x1a
	.long	0x3e
	.value	0xfff
	.byte	0
	.uleb128 0x1b
	.long	.LASF88
	.byte	0xf
	.byte	0x2b
	.long	0x521
	.byte	0x80
	.uleb128 0x18
	.value	0x200
	.byte	0x80
	.byte	0xf
	.byte	0x30
	.long	0x5cc
	.uleb128 0x1c
	.string	"buf"
	.byte	0xf
	.byte	0x33
	.long	0x5cc
	.byte	0x80
	.byte	0
	.uleb128 0x1d
	.long	.LASF82
	.byte	0xf
	.byte	0x34
	.long	0x5cc
	.byte	0x80
	.byte	0x80
	.uleb128 0x1d
	.long	.LASF83
	.byte	0xf
	.byte	0x3a
	.long	0x5cc
	.byte	0x40
	.byte	0xc0
	.uleb128 0x19
	.long	.LASF84
	.byte	0xf
	.byte	0x3c
	.long	0x5d9
	.byte	0x40
	.value	0x100
	.uleb128 0x1e
	.string	"id"
	.byte	0xf
	.byte	0x3e
	.long	0x5e
	.byte	0x40
	.value	0x140
	.uleb128 0x19
	.long	.LASF85
	.byte	0xf
	.byte	0x40
	.long	0x5d2
	.byte	0x40
	.value	0x180
	.uleb128 0x19
	.long	.LASF86
	.byte	0xf
	.byte	0x42
	.long	0x5d2
	.byte	0x40
	.value	0x1c0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x557
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF87
	.uleb128 0x6
	.long	0x5d2
	.uleb128 0x1b
	.long	.LASF89
	.byte	0xf
	.byte	0x45
	.long	0x563
	.byte	0x80
	.uleb128 0x11
	.long	.LASF90
	.byte	0x10
	.value	0x222
	.long	0x5f6
	.uleb128 0x8
	.byte	0x8
	.long	0x99
	.uleb128 0x11
	.long	.LASF91
	.byte	0x10
	.value	0x224
	.long	0x5f6
	.uleb128 0x10
	.long	.LASF92
	.byte	0x11
	.byte	0x24
	.long	0x99
	.uleb128 0x10
	.long	.LASF93
	.byte	0x11
	.byte	0x32
	.long	0x5e
	.uleb128 0x10
	.long	.LASF94
	.byte	0x11
	.byte	0x37
	.long	0x5e
	.uleb128 0x10
	.long	.LASF95
	.byte	0x11
	.byte	0x3b
	.long	0x5e
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.byte	0x13
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	kStackSize
	.uleb128 0x20
	.long	.LASF97
	.byte	0x1
	.value	0x1e6
	.long	0x155
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.uleb128 0x20
	.long	.LASF98
	.byte	0x1
	.value	0x1e7
	.long	0xf1
	.uleb128 0x9
	.byte	0x3
	.quad	globalVariable
	.uleb128 0x21
	.long	0x5de
	.byte	0x80
	.long	0x686
	.uleb128 0xc
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.long	.LASF103
	.byte	0x1
	.value	0x1e8
	.long	0x675
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	UserThreadingVec
	.uleb128 0x20
	.long	.LASF99
	.byte	0x1
	.value	0x1e9
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	threadCount
	.uleb128 0xb
	.long	0x5d2
	.long	0x6c3
	.uleb128 0xc
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.long	.LASF100
	.byte	0x1
	.value	0x1ea
	.long	0x6b3
	.uleb128 0x9
	.byte	0x3
	.quad	OSThreadAvailable
	.uleb128 0x23
	.long	.LASF120
	.byte	0x1
	.value	0x1ec
	.long	0x6a
	.uleb128 0xa
	.byte	0xe
	.long	threadId@dtpoff, 0
	.byte	0xe0
	.uleb128 0x20
	.long	.LASF101
	.byte	0x1
	.value	0x1ee
	.long	0x5de
	.uleb128 0x9
	.byte	0x3
	.quad	userTh
	.uleb128 0x20
	.long	.LASF102
	.byte	0x1
	.value	0x1f2
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	special_global
	.uleb128 0xb
	.long	0x9f
	.long	0x72c
	.uleb128 0xc
	.long	0x3e
	.byte	0x7f
	.byte	0
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x1f6
	.long	0x71c
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x22
	.long	.LASF104
	.byte	0x1
	.value	0x1f7
	.long	0xf8
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	global_var1
	.uleb128 0x22
	.long	.LASF105
	.byte	0x1
	.value	0x1f8
	.long	0xf8
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	global_var2
	.uleb128 0x20
	.long	.LASF82
	.byte	0x1
	.value	0x1f9
	.long	0x71c
	.uleb128 0x9
	.byte	0x3
	.quad	buf2
	.uleb128 0x20
	.long	.LASF106
	.byte	0x1
	.value	0x208
	.long	0x6a
	.uleb128 0x9
	.byte	0x3
	.quad	myglobal
	.uleb128 0x20
	.long	.LASF107
	.byte	0x1
	.value	0x25d
	.long	0x11b
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_1
	.uleb128 0x20
	.long	.LASF108
	.byte	0x1
	.value	0x25d
	.long	0x11b
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_2
	.uleb128 0x20
	.long	.LASF109
	.byte	0x1
	.value	0x25d
	.long	0x11b
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_3
	.uleb128 0x20
	.long	.LASF110
	.byte	0x1
	.value	0x25e
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	coreId_1
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.value	0x25e
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	coreId_2
	.uleb128 0x20
	.long	.LASF112
	.byte	0x1
	.value	0x260
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread1_starttime
	.uleb128 0x20
	.long	.LASF113
	.byte	0x1
	.value	0x260
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread2_starttime
	.uleb128 0x20
	.long	.LASF114
	.byte	0x1
	.value	0x260
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread1_endtime
	.uleb128 0x20
	.long	.LASF115
	.byte	0x1
	.value	0x260
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread2_endtime
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.value	0x2a0
	.long	0x5e
	.quad	.LFB5089
	.quad	.LFE5089-.LFB5089
	.uleb128 0x1
	.byte	0x9c
	.long	0xd52
	.uleb128 0x26
	.long	.LASF116
	.byte	0x1
	.value	0x2a0
	.long	0x5e
	.long	.LLST32
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x2a0
	.long	0x5f6
	.long	.LLST33
	.uleb128 0x27
	.long	.LASF118
	.byte	0x1
	.value	0x2c7
	.long	0x172
	.uleb128 0x27
	.long	.LASF119
	.byte	0x1
	.value	0x2d4
	.long	0x172
	.uleb128 0x28
	.long	.LASF121
	.byte	0x1
	.value	0x2e3
	.long	0x172
	.long	.LLST34
	.uleb128 0x28
	.long	.LASF122
	.byte	0x1
	.value	0x2e5
	.long	0x172
	.long	.LLST35
	.uleb128 0x29
	.long	0x1462
	.quad	.LBB159
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.value	0x2a9
	.long	0x916
	.uleb128 0x2a
	.long	0x1473
	.long	.LLST36
	.uleb128 0x2b
	.quad	.LVL90
	.long	0x15d6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1462
	.quad	.LBB162
	.long	.Ldebug_ranges0+0x230
	.byte	0x1
	.value	0x2aa
	.long	0x950
	.uleb128 0x2a
	.long	0x1473
	.long	.LLST37
	.uleb128 0x2b
	.quad	.LVL92
	.long	0x15d6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1445
	.quad	.LBB169
	.long	.Ldebug_ranges0+0x270
	.byte	0x1
	.value	0x2b3
	.long	0x98d
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST38
	.uleb128 0x2b
	.quad	.LVL95
	.long	0x15fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1255
	.quad	.LBB172
	.long	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.value	0x2c1
	.long	0xa0d
	.uleb128 0x2a
	.long	0x1272
	.long	.LLST39
	.uleb128 0x2a
	.long	0x1266
	.long	.LLST40
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x2a0
	.uleb128 0x2e
	.long	0x1582
	.uleb128 0x2f
	.long	0x1422
	.quad	.LBB174
	.quad	.LBE174-.LBB174
	.byte	0x1
	.value	0x1d7
	.long	0x9f0
	.uleb128 0x2a
	.long	0x1439
	.long	.LLST41
	.uleb128 0x2a
	.long	0x142e
	.long	.LLST42
	.byte	0
	.uleb128 0x2b
	.quad	.LVL102
	.long	0x160a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1080
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x13e7
	.quad	.LBB179
	.long	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.value	0x2bf
	.long	0xa53
	.uleb128 0x2a
	.long	0x13fe
	.long	.LLST43
	.uleb128 0x2a
	.long	0x13f3
	.long	.LLST44
	.uleb128 0x2b
	.quad	.LVL98
	.long	0x160a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1080
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x13e7
	.quad	.LBB184
	.long	.Ldebug_ranges0+0x320
	.byte	0x1
	.value	0x2c0
	.long	0xa99
	.uleb128 0x2a
	.long	0x13fe
	.long	.LLST45
	.uleb128 0x2a
	.long	0x13f3
	.long	.LLST46
	.uleb128 0x2b
	.quad	.LVL100
	.long	0x160a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1080
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1480
	.quad	.LBB193
	.long	.Ldebug_ranges0+0x360
	.byte	0x1
	.value	0x2c7
	.uleb128 0x29
	.long	0x1445
	.quad	.LBB196
	.long	.Ldebug_ranges0+0x390
	.byte	0x1
	.value	0x2c8
	.long	0xaef
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST47
	.uleb128 0x2b
	.quad	.LVL106
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1480
	.quad	.LBB201
	.quad	.LBE201-.LBB201
	.byte	0x1
	.value	0x2d4
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB203
	.quad	.LBE203-.LBB203
	.byte	0x1
	.value	0x2da
	.long	0xb4d
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST48
	.uleb128 0x2b
	.quad	.LVL112
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB205
	.quad	.LBE205-.LBB205
	.byte	0x1
	.value	0x2dc
	.long	0xb93
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST49
	.uleb128 0x2b
	.quad	.LVL114
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB207
	.quad	.LBE207-.LBB207
	.byte	0x1
	.value	0x2dd
	.long	0xbd9
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST50
	.uleb128 0x2b
	.quad	.LVL116
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1445
	.quad	.LBB209
	.long	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.value	0x2e8
	.long	0xc1b
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST51
	.uleb128 0x2b
	.quad	.LVL117
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB217
	.quad	.LBE217-.LBB217
	.byte	0x1
	.value	0x2a5
	.long	0xc5c
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST52
	.uleb128 0x2b
	.quad	.LVL120
	.long	0x15fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL96
	.long	0x164f
	.long	0xc85
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x32
	.quad	.LVL107
	.long	0x165b
	.long	0xcbb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	mpthread1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL108
	.long	0x165b
	.long	0xcf1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	mpthread2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.quad	.LVL109
	.long	0x1666
	.long	0xd08
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL110
	.long	0x1666
	.long	0xd1f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL111
	.long	0x1671
	.long	0xd3e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.byte	0
	.uleb128 0x2b
	.quad	.LVL121
	.long	0x167d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF124
	.byte	0x1
	.value	0x283
	.long	0x97
	.quad	.LFB5088
	.quad	.LFE5088-.LFB5088
	.uleb128 0x1
	.byte	0x9c
	.long	0xecd
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x283
	.long	0x97
	.long	.LLST21
	.uleb128 0x23
	.long	.LASF125
	.byte	0x1
	.value	0x285
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x34
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.long	0xdba
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x287
	.long	0xab
	.long	.LLST22
	.byte	0
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.byte	0x1
	.value	0x28a
	.long	0xe00
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST23
	.uleb128 0x2b
	.quad	.LVL60
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1445
	.quad	.LBB144
	.long	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.value	0x28d
	.long	0xe42
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST24
	.uleb128 0x2b
	.quad	.LVL63
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1480
	.quad	.LBB148
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.value	0x292
	.uleb128 0x31
	.long	0x1480
	.quad	.LBB152
	.quad	.LBE152-.LBB152
	.byte	0x1
	.value	0x297
	.uleb128 0x32
	.quad	.LVL58
	.long	0x1689
	.long	0xe86
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x35
	.quad	.LVL59
	.long	0x1695
	.uleb128 0x32
	.quad	.LVL64
	.long	0x16a0
	.long	0xeb2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.byte	0
	.uleb128 0x35
	.quad	.LVL65
	.long	0x12eb
	.uleb128 0x35
	.quad	.LVL66
	.long	0x16ac
	.byte	0
	.uleb128 0x25
	.long	.LASF127
	.byte	0x1
	.value	0x263
	.long	0x97
	.quad	.LFB5087
	.quad	.LFE5087-.LFB5087
	.uleb128 0x1
	.byte	0x9c
	.long	0x1048
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x263
	.long	0x97
	.long	.LLST17
	.uleb128 0x23
	.long	.LASF128
	.byte	0x1
	.value	0x268
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x34
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.long	0xf35
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x26a
	.long	0xab
	.long	.LLST18
	.byte	0
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.byte	0x1
	.value	0x26d
	.long	0xf7b
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST19
	.uleb128 0x2b
	.quad	.LVL46
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1445
	.quad	.LBB131
	.long	.Ldebug_ranges0+0x140
	.byte	0x1
	.value	0x270
	.long	0xfbd
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST20
	.uleb128 0x2b
	.quad	.LVL49
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1480
	.quad	.LBB135
	.long	.Ldebug_ranges0+0x170
	.byte	0x1
	.value	0x275
	.uleb128 0x31
	.long	0x1480
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.byte	0x1
	.value	0x27b
	.uleb128 0x32
	.quad	.LVL44
	.long	0x1689
	.long	0x1001
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x35
	.quad	.LVL45
	.long	0x1695
	.uleb128 0x32
	.quad	.LVL50
	.long	0x16a0
	.long	0x102d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.byte	0
	.uleb128 0x35
	.quad	.LVL51
	.long	0x12eb
	.uleb128 0x35
	.quad	.LVL52
	.long	0x16ac
	.byte	0
	.uleb128 0x36
	.string	"pfc"
	.byte	0x1
	.value	0x20a
	.quad	.LFB5086
	.quad	.LFE5086-.LFB5086
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d2
	.uleb128 0x37
	.long	.LASF129
	.byte	0x1
	.value	0x20f
	.long	0xf1
	.byte	0
	.uleb128 0x37
	.long	.LASF130
	.byte	0x1
	.value	0x211
	.long	0xf1
	.byte	0
	.uleb128 0x37
	.long	.LASF131
	.byte	0x1
	.value	0x212
	.long	0xf1
	.byte	0
	.uleb128 0x38
	.long	.Ldebug_ranges0+0x30
	.long	0x10db
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x21d
	.long	0x5e
	.long	.LLST1
	.uleb128 0x3a
	.long	0x129d
	.quad	.LBB103
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x237
	.uleb128 0x2a
	.long	0x12aa
	.long	.LLST2
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x3b
	.long	0x12b6
	.long	.LLST3
	.uleb128 0x3b
	.long	0x12c0
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1445
	.quad	.LBB98
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x20d
	.long	0x111d
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST0
	.uleb128 0x2b
	.quad	.LVL1
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x1445
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.byte	0x1
	.value	0x23b
	.long	0x115e
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST5
	.uleb128 0x2b
	.quad	.LVL10
	.long	0x15fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x129d
	.quad	.LBB110
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.value	0x257
	.long	0x1198
	.uleb128 0x2a
	.long	0x12aa
	.long	.LLST6
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x3b
	.long	0x12b6
	.long	.LLST7
	.uleb128 0x3b
	.long	0x12c0
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x1445
	.quad	.LBB113
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.value	0x259
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST9
	.uleb128 0x3c
	.quad	.LVL16
	.long	0x15fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF132
	.byte	0x1
	.value	0x1fb
	.quad	.LFB5085
	.quad	.LFE5085-.LFB5085
	.uleb128 0x1
	.byte	0x9c
	.long	0x1255
	.uleb128 0x34
	.quad	.LBB156
	.quad	.LBE156-.LBB156
	.long	0x1214
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.value	0x1fd
	.long	0x5e
	.long	.LLST31
	.byte	0
	.uleb128 0x3e
	.long	0x1445
	.quad	.LBB157
	.quad	.LBE157-.LBB157
	.byte	0x1
	.value	0x204
	.uleb128 0x3f
	.long	0x1455
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+5839
	.sleb128 0
	.uleb128 0x3c
	.quad	.LVL85
	.long	0x15fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.LASF144
	.byte	0x1
	.value	0x1d3
	.long	0x5e
	.byte	0x1
	.long	0x128a
	.uleb128 0x41
	.long	.LASF133
	.byte	0x1
	.value	0x1d3
	.long	0x128a
	.uleb128 0x42
	.string	"fn"
	.byte	0x1
	.value	0x1d3
	.long	0x1297
	.uleb128 0x27
	.long	.LASF134
	.byte	0x1
	.value	0x1d6
	.long	0x5cc
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5de
	.uleb128 0x43
	.long	0x1297
	.uleb128 0x44
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1290
	.uleb128 0x45
	.long	.LASF135
	.byte	0x1
	.value	0x15b
	.byte	0x1
	.long	0x12cb
	.uleb128 0x41
	.long	.LASF133
	.byte	0x1
	.value	0x15b
	.long	0x128a
	.uleb128 0x46
	.string	"s"
	.byte	0x1
	.value	0x162
	.long	0x12cb
	.uleb128 0x46
	.string	"t"
	.byte	0x1
	.value	0x163
	.long	0x12cb
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x516
	.uleb128 0x45
	.long	.LASF136
	.byte	0x1
	.value	0x154
	.byte	0x1
	.long	0x12eb
	.uleb128 0x41
	.long	.LASF133
	.byte	0x1
	.value	0x154
	.long	0x128a
	.byte	0
	.uleb128 0x47
	.long	.LASF163
	.byte	0x1
	.byte	0x3b
	.quad	.LFB5081
	.quad	.LFE5081-.LFB5081
	.uleb128 0x1
	.byte	0x9c
	.long	0x13e7
	.uleb128 0x48
	.long	.LASF133
	.byte	0x1
	.byte	0x3b
	.long	0x128a
	.long	.LLST12
	.uleb128 0x49
	.string	"s"
	.byte	0x1
	.byte	0x44
	.long	0x12cb
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x49
	.string	"t"
	.byte	0x1
	.byte	0x45
	.long	0x12cb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x34
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.long	0x135f
	.uleb128 0x4a
	.string	"s2"
	.byte	0x1
	.byte	0x6c
	.long	0x12cb
	.long	.LLST15
	.uleb128 0x4a
	.string	"t2"
	.byte	0x1
	.byte	0x6d
	.long	0x12cb
	.long	.LLST16
	.byte	0
	.uleb128 0x4b
	.long	0x1445
	.quad	.LBB119
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x3d
	.long	0x13a0
	.uleb128 0x2a
	.long	0x1455
	.long	.LLST13
	.uleb128 0x2b
	.quad	.LVL29
	.long	0x1616
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x4c
	.long	0x1422
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.byte	0x1
	.byte	0x3f
	.long	0x13cb
	.uleb128 0x4d
	.long	0x1439
	.byte	0x1
	.uleb128 0x2a
	.long	0x142e
	.long	.LLST14
	.byte	0
	.uleb128 0x2b
	.quad	.LVL30
	.long	0x160a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1080
	.byte	0
	.byte	0
	.uleb128 0x4e
	.long	.LASF137
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x140a
	.uleb128 0x4f
	.long	.LASF133
	.byte	0x1
	.byte	0x26
	.long	0x128a
	.uleb128 0x50
	.string	"_id"
	.byte	0x1
	.byte	0x26
	.long	0x5e
	.byte	0
	.uleb128 0x4e
	.long	.LASF138
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x1422
	.uleb128 0x4f
	.long	.LASF139
	.byte	0x1
	.byte	0x1d
	.long	0x5cc
	.byte	0
	.uleb128 0x4e
	.long	.LASF140
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	0x1445
	.uleb128 0x4f
	.long	.LASF139
	.byte	0x1
	.byte	0x17
	.long	0x5cc
	.uleb128 0x4f
	.long	.LASF141
	.byte	0x1
	.byte	0x17
	.long	0x5d2
	.byte	0
	.uleb128 0x51
	.long	.LASF142
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x1462
	.uleb128 0x4f
	.long	.LASF143
	.byte	0x2
	.byte	0x66
	.long	0x10f
	.uleb128 0x44
	.byte	0
	.uleb128 0x40
	.long	.LASF145
	.byte	0x4
	.value	0x169
	.long	0x5e
	.byte	0x3
	.long	0x1480
	.uleb128 0x41
	.long	.LASF146
	.byte	0x4
	.value	0x169
	.long	0x104
	.byte	0
	.uleb128 0x52
	.long	.LASF164
	.byte	0x3
	.byte	0x70
	.long	0x114
	.byte	0x3
	.uleb128 0x53
	.long	0x1422
	.quad	.LFB5078
	.quad	.LFE5078-.LFB5078
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b6
	.uleb128 0x3f
	.long	0x142e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3f
	.long	0x1439
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x53
	.long	0x13e7
	.quad	.LFB5080
	.quad	.LFE5080-.LFB5080
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ff
	.uleb128 0x2a
	.long	0x13f3
	.long	.LLST10
	.uleb128 0x2a
	.long	0x13fe
	.long	.LLST11
	.uleb128 0x2b
	.quad	.LVL24
	.long	0x160a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1080
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	0x12d1
	.quad	.LFB5082
	.quad	.LFE5082-.LFB5082
	.uleb128 0x1
	.byte	0x9c
	.long	0x1522
	.uleb128 0x3f
	.long	0x12de
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x53
	.long	0x129d
	.quad	.LFB5083
	.quad	.LFE5083-.LFB5083
	.uleb128 0x1
	.byte	0x9c
	.long	0x1555
	.uleb128 0x3f
	.long	0x12aa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.long	0x12b6
	.long	.LLST25
	.uleb128 0x54
	.long	0x12c0
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x53
	.long	0x1255
	.quad	.LFB5084
	.quad	.LFE5084-.LFB5084
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d6
	.uleb128 0x2a
	.long	0x1266
	.long	.LLST26
	.uleb128 0x2a
	.long	0x1272
	.long	.LLST27
	.uleb128 0x3b
	.long	0x127d
	.long	.LLST28
	.uleb128 0x2f
	.long	0x1422
	.quad	.LBB154
	.quad	.LBE154-.LBB154
	.byte	0x1
	.value	0x1d7
	.long	0x15ba
	.uleb128 0x2a
	.long	0x1439
	.long	.LLST29
	.uleb128 0x2a
	.long	0x142e
	.long	.LLST30
	.byte	0
	.uleb128 0x2b
	.quad	.LVL77
	.long	0x160a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1080
	.byte	0
	.byte	0
	.uleb128 0x55
	.long	.LASF147
	.long	.LASF147
	.byte	0x4
	.byte	0xb0
	.uleb128 0x56
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0x52
	.byte	0x45
	.byte	0x50
	.byte	0x5f
	.byte	0x4e
	.byte	0x4f
	.byte	0x50
	.byte	0x53
	.byte	0x20
	.byte	0x6e
	.byte	0x6f
	.byte	0x74
	.byte	0x20
	.byte	0x65
	.byte	0x6e
	.byte	0x61
	.byte	0x62
	.byte	0x6c
	.byte	0x65
	.byte	0x64
	.byte	0xa
	.byte	0
	.uleb128 0x57
	.long	.LASF165
	.long	.LASF166
	.byte	0x14
	.byte	0
	.long	.LASF165
	.uleb128 0x58
	.long	.LASF148
	.long	.LASF148
	.byte	0x4
	.value	0x247
	.uleb128 0x55
	.long	.LASF149
	.long	.LASF149
	.byte	0x2
	.byte	0x57
	.uleb128 0x56
	.uleb128 0x2c
	.byte	0x9e
	.uleb128 0x2a
	.byte	0x50
	.byte	0x72
	.byte	0x6f
	.byte	0x67
	.byte	0x72
	.byte	0x61
	.byte	0x6d
	.byte	0x20
	.byte	0x6e
	.byte	0x65
	.byte	0x65
	.byte	0x64
	.byte	0x73
	.byte	0x20
	.byte	0x32
	.byte	0x20
	.byte	0x61
	.byte	0x72
	.byte	0x67
	.byte	0x75
	.byte	0x6d
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x73
	.byte	0x3a
	.byte	0x20
	.byte	0x74
	.byte	0x77
	.byte	0x6f
	.byte	0x20
	.byte	0x63
	.byte	0x6f
	.byte	0x72
	.byte	0x65
	.byte	0x20
	.byte	0x69
	.byte	0x64
	.byte	0x73
	.byte	0x20
	.byte	0xa
	.byte	0
	.uleb128 0x58
	.long	.LASF150
	.long	.LASF150
	.byte	0x12
	.value	0x42d
	.uleb128 0x55
	.long	.LASF151
	.long	.LASF151
	.byte	0x12
	.byte	0xea
	.uleb128 0x55
	.long	.LASF152
	.long	.LASF152
	.byte	0x12
	.byte	0xfb
	.uleb128 0x58
	.long	.LASF153
	.long	.LASF153
	.byte	0x12
	.value	0x433
	.uleb128 0x58
	.long	.LASF154
	.long	.LASF154
	.byte	0x4
	.value	0x266
	.uleb128 0x58
	.long	.LASF155
	.long	.LASF155
	.byte	0x12
	.value	0x1db
	.uleb128 0x55
	.long	.LASF156
	.long	.LASF156
	.byte	0x13
	.byte	0x5b
	.uleb128 0x58
	.long	.LASF157
	.long	.LASF157
	.byte	0x12
	.value	0x437
	.uleb128 0x59
	.long	.LASF167
	.long	.LASF167
	.uleb128 0x56
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x43
	.byte	0x20
	.byte	0x45
	.byte	0x78
	.byte	0x69
	.byte	0x74
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0xa
	.byte	0
	.uleb128 0x56
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0x7
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0xa
	.byte	0
	.uleb128 0x56
	.uleb128 0x1f
	.byte	0x9e
	.uleb128 0x1d
	.byte	0x41
	.byte	0x6c
	.byte	0x6c
	.byte	0x20
	.byte	0x53
	.byte	0x63
	.byte	0x68
	.byte	0x65
	.byte	0x64
	.byte	0x75
	.byte	0x6c
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x20
	.byte	0x43
	.byte	0x68
	.byte	0x65
	.byte	0x63
	.byte	0x6b
	.byte	0x20
	.byte	0x4d
	.byte	0x61
	.byte	0x72
	.byte	0x6b
	.byte	0x65
	.byte	0x64
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST32:
	.quad	.LVL86
	.quad	.LVL87
	.value	0x1
	.byte	0x55
	.quad	.LVL87
	.quad	.LVL118
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL118
	.quad	.LVL119
	.value	0x1
	.byte	0x55
	.quad	.LVL119
	.quad	.LFE5089
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL86
	.quad	.LVL89
	.value	0x1
	.byte	0x54
	.quad	.LVL89
	.quad	.LVL94
	.value	0x1
	.byte	0x53
	.quad	.LVL94
	.quad	.LVL118
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL118
	.quad	.LVL120-1
	.value	0x1
	.byte	0x54
	.quad	.LVL120-1
	.quad	.LFE5089
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL116
	.quad	.LVL117-1
	.value	0x34
	.byte	0x3
	.quad	thread2_starttime
	.byte	0x6
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x3
	.quad	thread1_starttime
	.byte	0x6
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL116
	.quad	.LVL117-1
	.value	0x34
	.byte	0x3
	.quad	thread2_endtime
	.byte	0x6
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x3
	.quad	thread1_endtime
	.byte	0x6
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2b
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL88
	.quad	.LVL90-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL91
	.quad	.LVL92-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5601
	.sleb128 0
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL101
	.quad	.LVL104
	.value	0xa
	.byte	0x3
	.quad	pfc
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL101
	.quad	.LVL104
	.value	0xa
	.byte	0x3
	.quad	UserThreadingVec
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL102
	.quad	.LVL103
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL97
	.quad	.LVL99
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL97
	.quad	.LVL99
	.value	0xa
	.byte	0x3
	.quad	UserThreadingVec
	.byte	0x9f
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL99
	.quad	.LVL101
	.value	0xa
	.byte	0x3
	.quad	UserThreadingVec+512
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL105
	.quad	.LVL106
	.value	0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL111
	.quad	.LVL112
	.value	0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL113
	.quad	.LVL114
	.value	0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL115
	.quad	.LVL116
	.value	0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL116
	.quad	.LVL117
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL118
	.quad	.LVL120
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5665
	.sleb128 0
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x55
	.quad	.LVL54
	.quad	.LVL62
	.value	0x1
	.byte	0x53
	.quad	.LVL62
	.quad	.LFE5088
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1
	.byte	0x50
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x52
	.quad	.LVL57
	.quad	.LVL58-1
	.value	0x12
	.byte	0x3
	.quad	coreId_2
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL59
	.quad	.LVL60
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL61
	.quad	.LVL63
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x1
	.byte	0x55
	.quad	.LVL40
	.quad	.LVL48
	.value	0x1
	.byte	0x53
	.quad	.LVL48
	.quad	.LFE5087
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL43
	.value	0x1
	.byte	0x52
	.quad	.LVL43
	.quad	.LVL44-1
	.value	0x12
	.byte	0x3
	.quad	coreId_1
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL45
	.quad	.LVL46
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL47
	.quad	.LVL49
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2
	.quad	.LVL10-1
	.value	0x1
	.byte	0x54
	.quad	.LVL16
	.quad	.LVL19
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x15
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x39
	.byte	0x24
	.byte	0x3
	.quad	UserThreadingVec
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x53
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x50
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5813
	.sleb128 0
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x15
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x39
	.byte	0x24
	.byte	0x3
	.quad	UserThreadingVec
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13
	.quad	.LVL15
	.value	0x1
	.byte	0x53
	.quad	.LVL19
	.quad	.LFE5086
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL14
	.quad	.LVL15
	.value	0x1
	.byte	0x50
	.quad	.LVL19
	.quad	.LFE5086
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5828
	.sleb128 0
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL84
	.quad	.LFE5085
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL27
	.quad	.LVL28
	.value	0x1
	.byte	0x55
	.quad	.LVL28
	.quad	.LVL35
	.value	0x1
	.byte	0x56
	.quad	.LVL35
	.quad	.LVL36
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL36
	.quad	.LFE5081
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL27
	.quad	.LVL29
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL31
	.quad	.LVL34
	.value	0x1
	.byte	0x50
	.quad	.LVL34
	.quad	.LVL35
	.value	0x3
	.byte	0x76
	.sleb128 192
	.quad	.LVL35
	.quad	.LFE5081
	.value	0x4
	.byte	0x78
	.sleb128 -4096
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL21
	.quad	.LVL23
	.value	0x1
	.byte	0x55
	.quad	.LVL23
	.quad	.LVL25
	.value	0x1
	.byte	0x53
	.quad	.LVL25
	.quad	.LFE5080
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x54
	.quad	.LVL22
	.quad	.LVL26
	.value	0x1
	.byte	0x56
	.quad	.LVL26
	.quad	.LFE5080
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x140
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL69
	.quad	.LVL71
	.value	0x1
	.byte	0x53
	.quad	.LVL72
	.quad	.LVL73
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL74
	.quad	.LVL76
	.value	0x1
	.byte	0x55
	.quad	.LVL76
	.quad	.LVL80
	.value	0x1
	.byte	0x53
	.quad	.LVL80
	.quad	.LFE5084
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL74
	.quad	.LVL75
	.value	0x1
	.byte	0x54
	.quad	.LVL75
	.quad	.LVL81
	.value	0x1
	.byte	0x56
	.quad	.LVL81
	.quad	.LFE5084
	.value	0x2
	.byte	0x71
	.sleb128 8
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL77
	.quad	.LVL79
	.value	0x1
	.byte	0x50
	.quad	.LVL79
	.quad	.LVL80
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL80
	.quad	.LFE5084
	.value	0x4
	.byte	0x71
	.sleb128 -4096
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL77
	.quad	.LVL78
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB5089
	.quad	.LFE5089-.LFB5089
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB101
	.quad	.LBE101
	.quad	0
	.quad	0
	.quad	.LBB102
	.quad	.LBE102
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB117
	.quad	.LBE117
	.quad	0
	.quad	0
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB106
	.quad	.LBE106
	.quad	0
	.quad	0
	.quad	.LBB110
	.quad	.LBE110
	.quad	.LBB118
	.quad	.LBE118
	.quad	0
	.quad	0
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB116
	.quad	.LBE116
	.quad	0
	.quad	0
	.quad	.LBB119
	.quad	.LBE119
	.quad	.LBB123
	.quad	.LBE123
	.quad	.LBB124
	.quad	.LBE124
	.quad	0
	.quad	0
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB134
	.quad	.LBE134
	.quad	0
	.quad	0
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB138
	.quad	.LBE138
	.quad	0
	.quad	0
	.quad	.LBB144
	.quad	.LBE144
	.quad	.LBB147
	.quad	.LBE147
	.quad	0
	.quad	0
	.quad	.LBB148
	.quad	.LBE148
	.quad	.LBB151
	.quad	.LBE151
	.quad	0
	.quad	0
	.quad	.LBB159
	.quad	.LBE159
	.quad	.LBB166
	.quad	.LBE166
	.quad	0
	.quad	0
	.quad	.LBB162
	.quad	.LBE162
	.quad	.LBB167
	.quad	.LBE167
	.quad	.LBB168
	.quad	.LBE168
	.quad	0
	.quad	0
	.quad	.LBB169
	.quad	.LBE169
	.quad	.LBB178
	.quad	.LBE178
	.quad	0
	.quad	0
	.quad	.LBB172
	.quad	.LBE172
	.quad	.LBB190
	.quad	.LBE190
	.quad	.LBB192
	.quad	.LBE192
	.quad	0
	.quad	0
	.quad	.LBB179
	.quad	.LBE179
	.quad	.LBB183
	.quad	.LBE183
	.quad	.LBB188
	.quad	.LBE188
	.quad	0
	.quad	0
	.quad	.LBB184
	.quad	.LBE184
	.quad	.LBB189
	.quad	.LBE189
	.quad	.LBB191
	.quad	.LBE191
	.quad	0
	.quad	0
	.quad	.LBB193
	.quad	.LBE193
	.quad	.LBB199
	.quad	.LBE199
	.quad	0
	.quad	0
	.quad	.LBB196
	.quad	.LBE196
	.quad	.LBB200
	.quad	.LBE200
	.quad	0
	.quad	0
	.quad	.LBB209
	.quad	.LBE209
	.quad	.LBB214
	.quad	.LBE214
	.quad	.LBB215
	.quad	.LBE215
	.quad	.LBB216
	.quad	.LBE216
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB5089
	.quad	.LFE5089
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF142:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF35:
	.string	"_IO_read_ptr"
.LASF84:
	.string	"sp_exit_check"
.LASF47:
	.string	"_chain"
.LASF101:
	.string	"userTh"
.LASF12:
	.string	"size_t"
.LASF155:
	.string	"pthread_setaffinity_np"
.LASF53:
	.string	"_shortbuf"
.LASF7:
	.string	"__uint8_t"
.LASF157:
	.string	"pthread_barrier_wait"
.LASF19:
	.string	"__size"
.LASF104:
	.string	"global_var1"
.LASF105:
	.string	"global_var2"
.LASF144:
	.string	"makeThread"
.LASF70:
	.string	"_IO_2_1_stderr_"
.LASF41:
	.string	"_IO_buf_base"
.LASF17:
	.string	"long long unsigned int"
.LASF153:
	.string	"pthread_barrier_destroy"
.LASF72:
	.string	"stdout"
.LASF83:
	.string	"sched_thread"
.LASF122:
	.string	"thread_endtime"
.LASF26:
	.string	"__tzname"
.LASF25:
	.string	"intptr_t"
.LASF28:
	.string	"__timezone"
.LASF118:
	.string	"timeCounter_start"
.LASF4:
	.string	"signed char"
.LASF152:
	.string	"pthread_join"
.LASF96:
	.string	"kStackSize"
.LASF33:
	.string	"__bits"
.LASF48:
	.string	"_fileno"
.LASF164:
	.string	"__rdtsc"
.LASF36:
	.string	"_IO_read_end"
.LASF76:
	.string	"_sys_nerr"
.LASF6:
	.string	"long int"
.LASF137:
	.string	"UserThreading_Init"
.LASF147:
	.string	"strtol"
.LASF34:
	.string	"_flags"
.LASF78:
	.string	"mxcsr"
.LASF166:
	.string	"__builtin_puts"
.LASF51:
	.string	"_cur_column"
.LASF15:
	.string	"long long int"
.LASF22:
	.string	"double"
.LASF149:
	.string	"__printf_chk"
.LASF55:
	.string	"_offset"
.LASF150:
	.string	"pthread_barrier_init"
.LASF127:
	.string	"mpthread1"
.LASF124:
	.string	"mpthread2"
.LASF163:
	.string	"Scheduler"
.LASF31:
	.string	"timezone"
.LASF88:
	.string	"Thread"
.LASF64:
	.string	"_IO_marker"
.LASF71:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF133:
	.string	"_uth"
.LASF20:
	.string	"__align"
.LASF3:
	.string	"long unsigned int"
.LASF86:
	.string	"lastVal"
.LASF162:
	.string	"_IO_FILE_plus"
.LASF39:
	.string	"_IO_write_ptr"
.LASF132:
	.string	"allSchedulersExit"
.LASF74:
	.string	"sys_nerr"
.LASF66:
	.string	"_sbuf"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"_IO_save_base"
.LASF129:
	.string	"local_var"
.LASF91:
	.string	"environ"
.LASF110:
	.string	"coreId_1"
.LASF111:
	.string	"coreId_2"
.LASF54:
	.string	"_lock"
.LASF139:
	.string	"_thread"
.LASF49:
	.string	"_flags2"
.LASF61:
	.string	"_mode"
.LASF148:
	.string	"aligned_alloc"
.LASF82:
	.string	"buf2"
.LASF113:
	.string	"thread2_starttime"
.LASF68:
	.string	"_IO_2_1_stdin_"
.LASF159:
	.string	"ufiber26b.c"
.LASF103:
	.string	"UserThreadingVec"
.LASF92:
	.string	"optarg"
.LASF160:
	.string	"/home/wazam2/FebWeek1"
.LASF107:
	.string	"threadId_1"
.LASF108:
	.string	"threadId_2"
.LASF109:
	.string	"threadId_3"
.LASF32:
	.string	"getdate_err"
.LASF93:
	.string	"optind"
.LASF85:
	.string	"expVal"
.LASF89:
	.string	"UserThreading"
.LASF40:
	.string	"_IO_write_end"
.LASF24:
	.string	"uint64_t"
.LASF161:
	.string	"_IO_lock_t"
.LASF63:
	.string	"_IO_FILE"
.LASF106:
	.string	"myglobal"
.LASF90:
	.string	"__environ"
.LASF158:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -O3 -std=gnu11 -fstack-protector-strong"
.LASF146:
	.string	"__nptr"
.LASF8:
	.string	"__uint64_t"
.LASF156:
	.string	"sched_getcpu"
.LASF119:
	.string	"timeCounter_end"
.LASF16:
	.string	"float"
.LASF67:
	.string	"_pos"
.LASF50:
	.string	"_old_offset"
.LASF75:
	.string	"sys_errlist"
.LASF46:
	.string	"_markers"
.LASF18:
	.string	"pthread_t"
.LASF145:
	.string	"atoi"
.LASF87:
	.string	"_Bool"
.LASF99:
	.string	"threadCount"
.LASF0:
	.string	"unsigned char"
.LASF114:
	.string	"thread1_endtime"
.LASF42:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"pthread_barrier_t"
.LASF100:
	.string	"OSThreadAvailable"
.LASF121:
	.string	"thread_starttime"
.LASF52:
	.string	"_vtable_offset"
.LASF29:
	.string	"tzname"
.LASF69:
	.string	"_IO_2_1_stdout_"
.LASF154:
	.string	"exit"
.LASF13:
	.string	"__cpu_mask"
.LASF112:
	.string	"thread1_starttime"
.LASF27:
	.string	"__daylight"
.LASF95:
	.string	"optopt"
.LASF98:
	.string	"globalVariable"
.LASF30:
	.string	"daylight"
.LASF138:
	.string	"Thread_Destory"
.LASF79:
	.string	"Context"
.LASF134:
	.string	"new_thread"
.LASF11:
	.string	"char"
.LASF126:
	.string	"__cpu"
.LASF128:
	.string	"cpuset"
.LASF167:
	.string	"__stack_chk_fail"
.LASF77:
	.string	"_sys_errlist"
.LASF94:
	.string	"opterr"
.LASF115:
	.string	"thread2_endtime"
.LASF125:
	.string	"cpuset2"
.LASF65:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF37:
	.string	"_IO_read_base"
.LASF45:
	.string	"_IO_save_end"
.LASF81:
	.string	"context"
.LASF143:
	.string	"__fmt"
.LASF56:
	.string	"__pad1"
.LASF57:
	.string	"__pad2"
.LASF58:
	.string	"__pad3"
.LASF59:
	.string	"__pad4"
.LASF60:
	.string	"__pad5"
.LASF120:
	.string	"threadId"
.LASF136:
	.string	"UserThreading_Destory"
.LASF62:
	.string	"_unused2"
.LASF73:
	.string	"stderr"
.LASF117:
	.string	"argv"
.LASF151:
	.string	"pthread_create"
.LASF130:
	.string	"local_var1"
.LASF131:
	.string	"local_var2"
.LASF23:
	.string	"uint8_t"
.LASF97:
	.string	"barrier"
.LASF44:
	.string	"_IO_backup_base"
.LASF116:
	.string	"argc"
.LASF14:
	.string	"cpu_set_t"
.LASF102:
	.string	"special_global"
.LASF80:
	.string	"stack"
.LASF165:
	.string	"puts"
.LASF123:
	.string	"main"
.LASF38:
	.string	"_IO_write_base"
.LASF135:
	.string	"Yield"
.LASF140:
	.string	"Thread_Init"
.LASF141:
	.string	"create_stack"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

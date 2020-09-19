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
	.loc 1 519 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
.LBB100:
.LBB101:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	UserThreadingVec(%rip), %rbp
.LBE101:
.LBE100:
	.loc 1 519 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 522 0
	movl	%fs:threadId@tpoff, %edx
.LVL0:
.LBB103:
.LBB102:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL1:
.LBE102:
.LBE103:
	.loc 1 534 0
	movq	UserThreadingVec(%rip), %rax
.LBB104:
	.loc 1 538 0
	xorl	%esi, %esi
.LBE104:
	.loc 1 534 0
	movq	%rax, 640+UserThreadingVec(%rip)
	.loc 1 535 0
	movq	512+UserThreadingVec(%rip), %rax
	movq	%rax, 128+UserThreadingVec(%rip)
.LVL2:
	.p2align 4,,10
	.p2align 3
.L2:
.LBB109:
	.loc 1 555 0
	movl	%fs:threadId@tpoff, %eax
	testl	%eax, %eax
	jne	.L3
.L14:
	.loc 1 556 0
	movq	global_var1(%rip), %rax
	addq	$1, %rax
	movq	%rax, global_var1(%rip)
.L4:
	.loc 1 564 0 discriminator 2
	movslq	%fs:threadId@tpoff, %rdx
.LVL3:
.LBB105:
.LBB106:
	.loc 1 351 0 discriminator 2
	salq	$9, %rdx
.LVL4:
	addq	%rbp, %rdx
	movq	192(%rdx), %rax
	leaq	4096(%rax), %rbx
.LVL5:
	.loc 1 352 0 discriminator 2
	movq	128(%rdx), %rax
	addq	$4096, %rax
.LVL6:
	.loc 1 356 0 discriminator 2
	cmpb	$0, 448(%rdx)
	jne	.L5
	.loc 1 358 0
	movb	$1, 448(%rdx)
	.loc 1 360 0
#APP
# 360 "ufiber26b.c" 1
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
.LBE106:
.LBE105:
	.loc 1 565 0
	movl	%esi, myglobal(%rip)
	.loc 1 538 0
	addl	$1, %esi
.LVL8:
	cmpl	$10, %esi
	jne	.L2
.L7:
.LVL9:
.LBE109:
.LBB110:
.LBB111:
	.loc 2 104 0
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.LVL10:
.LBE111:
.LBE110:
	.loc 1 585 0
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
	.loc 1 588 0
	movslq	%fs:threadId@tpoff, %rax
	salq	$9, %rax
	addq	%rbp, %rax
	movb	$1, 256(%rax)
	.loc 1 596 0
	movslq	%fs:threadId@tpoff, %rax
.LVL11:
.LBB112:
.LBB113:
	.loc 1 351 0
	salq	$9, %rax
.LVL12:
	addq	%rax, %rbp
	movq	192(%rbp), %rax
	leaq	4096(%rax), %rbx
.LVL13:
	.loc 1 352 0
	movq	128(%rbp), %rax
	addq	$4096, %rax
.LVL14:
	.loc 1 356 0
	cmpb	$0, 448(%rbp)
	je	.L13
	.loc 1 409 0
	movb	$0, 448(%rbp)
	.loc 1 411 0
#APP
# 411 "ufiber26b.c" 1
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
.LBE113:
.LBE112:
	.loc 1 599 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LBB115:
.LBB116:
	.loc 2 104 0
	leaq	.LC2(%rip), %rdi
.LBE116:
.LBE115:
	.loc 1 599 0
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LBB118:
.LBB117:
	.loc 2 104 0
	jmp	puts@PLT
.LVL16:
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
.LBE117:
.LBE118:
.LBB119:
.LBB108:
.LBB107:
	.loc 1 409 0
	movb	$0, 448(%rdx)
	.loc 1 411 0
#APP
# 411 "ufiber26b.c" 1
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
.LBE107:
.LBE108:
	.loc 1 565 0
	movl	%esi, myglobal(%rip)
	.loc 1 538 0
	addl	$1, %esi
.LVL18:
	cmpl	$10, %esi
	je	.L7
	.loc 1 555 0
	movl	%fs:threadId@tpoff, %eax
	testl	%eax, %eax
	je	.L14
.L3:
	.loc 1 558 0
	movq	global_var2(%rip), %rax
	addq	$1, %rax
	movq	%rax, global_var2(%rip)
	jmp	.L4
.LVL19:
	.p2align 4,,10
	.p2align 3
.L13:
.LBE119:
.LBB120:
.LBB114:
	.loc 1 358 0
	movb	$1, 448(%rbp)
	.loc 1 360 0
#APP
# 360 "ufiber26b.c" 1
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
.LBE114:
.LBE120:
	.cfi_endproc
.LFE5086:
	.size	pfc, .-pfc
	.section	.rodata.str1.1
.LC3:
	.string	"OS Thread Affinity %d \n"
.LC4:
	.string	"ThreadNum: %d\n"
.LC5:
	.string	"Scheduler Started %d\n"
.LC6:
	.string	"pointer %ld \n"
	.text
	.p2align 4,,15
	.globl	mpthread1
	.type	mpthread1, @function
mpthread1:
.LFB5087:
	.loc 1 608 0
	.cfi_startproc
.LVL20:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	.loc 1 614 0
	movl	$16, %ecx
	.loc 1 608 0
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$144, %rsp
	.cfi_def_cfa_offset 192
	.loc 1 608 0
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	.loc 1 614 0
	movq	%rsp, %rdx
	movq	%rdx, %rdi
.LVL21:
	rep stosq
.LBB138:
	.loc 1 615 0
	movslq	coreId_1(%rip), %rax
.LVL22:
	cmpq	$1023, %rax
	ja	.L16
	movq	%rax, %rcx
	.loc 1 615 0 is_stmt 0 discriminator 1
	movl	$1, %esi
	shrq	$6, %rax
.LVL23:
	salq	%cl, %rsi
	orq	%rsi, (%rdx,%rax,8)
.LVL24:
.L16:
.LBE138:
	.loc 1 616 0 is_stmt 1 discriminator 4
	movq	threadId_1(%rip), %rdi
	movl	$128, %esi
	.loc 1 623 0 discriminator 4
	leaq	OSThreadAvailable(%rip), %r13
	.loc 1 616 0 discriminator 4
	call	pthread_setaffinity_np@PLT
.LVL25:
	.loc 1 618 0 discriminator 4
	call	sched_getcpu@PLT
.LVL26:
.LBB139:
.LBB140:
	.loc 2 104 0 discriminator 4
	leaq	.LC3(%rip), %rsi
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL27:
.LBE140:
.LBE139:
	.loc 1 620 0 discriminator 4
	movl	%ebx, %fs:threadId@tpoff
	.loc 1 621 0 discriminator 4
	movl	%fs:threadId@tpoff, %edx
.LVL28:
.LBB141:
.LBB142:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL29:
.LBE142:
.LBE141:
	.loc 1 623 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	.loc 1 625 0 discriminator 4
	leaq	barrier(%rip), %rdi
	.loc 1 623 0 discriminator 4
	movb	$1, 0(%r13,%rax)
	.loc 1 625 0 discriminator 4
	call	pthread_barrier_wait@PLT
.LVL30:
.LBB143:
.LBB144:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/ia32intrin.h"
	.loc 3 114 0 discriminator 4
	rdtsc
.LBE144:
.LBE143:
	.loc 1 629 0 discriminator 4
	movslq	%fs:threadId@tpoff, %r14
.LVL31:
.LBB147:
.LBB148:
	.loc 1 60 0 discriminator 4
	leaq	UserThreadingVec(%rip), %rbp
.LBB149:
.LBB150:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
.LBE150:
.LBE149:
.LBE148:
.LBE147:
.LBB168:
.LBB145:
	.loc 3 114 0 discriminator 4
	salq	$32, %rdx
.LBE145:
.LBE168:
.LBB169:
.LBB165:
.LBB154:
.LBB151:
	.loc 2 104 0 discriminator 4
	movl	$1, %edi
.LBE151:
.LBE154:
.LBE165:
.LBE169:
.LBB170:
.LBB146:
	.loc 3 114 0 discriminator 4
	orq	%rdx, %rax
.LBE146:
.LBE170:
	.loc 1 626 0 discriminator 4
	movq	%rax, thread1_starttime(%rip)
.LBB171:
.LBB166:
.LBB155:
.LBB152:
	.loc 2 104 0 discriminator 4
	xorl	%eax, %eax
.LBE152:
.LBE155:
	.loc 1 60 0 discriminator 4
	movq	%r14, %r12
	salq	$9, %r12
	addq	%rbp, %r12
.LBB156:
.LBB153:
	.loc 2 104 0 discriminator 4
	movl	320(%r12), %edx
	call	__printf_chk@PLT
.LVL32:
.LBE153:
.LBE156:
	.loc 1 61 0 discriminator 4
	movl	$4224, %esi
	movl	$64, %edi
	call	aligned_alloc@PLT
.LVL33:
	movq	%rax, 192(%r12)
.LVL34:
	.loc 1 65 0 discriminator 4
	movq	(%r12), %r12
.LBB157:
.LBB158:
	.loc 1 26 0 discriminator 4
	movq	$0, 4208(%rax)
	.p2align 4,,10
	.p2align 3
.L17:
.LBE158:
.LBE157:
	.loc 1 65 0
	movq	4208(%r12), %rdx
	cmpq	$11, %rdx
	je	.L17
	.loc 1 68 0
	addq	$4096, %r12
.LBB159:
.LBB160:
	.loc 2 104 0
	leaq	.LC6(%rip), %rsi
.LBE160:
.LBE159:
	.loc 1 67 0
	leaq	4096(%rax), %rbx
.LVL35:
.LBB163:
.LBB161:
	.loc 2 104 0
	movq	%r12, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL36:
.LBE161:
.LBE163:
	.loc 1 83 0
	salq	$9, %r14
.LVL37:
.LBB164:
.LBB162:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL38:
.LBE162:
.LBE164:
	.loc 1 83 0
	leaq	0(%rbp,%r14), %rdx
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 1 86 0
	movq	(%rdx), %rax
	movq	4208(%rax), %rsi
	movzbl	384(%rdx), %eax
	cmpq	%rax, %rsi
	movq	%rax, %rcx
	je	.L26
.L19:
	.loc 1 83 0
	movzbl	256(%rdx), %eax
	testb	%al, %al
	je	.L20
.LVL39:
.LBE166:
.LBE171:
	.loc 1 630 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	movb	$0, 0(%r13,%rax)
.LBB172:
.LBB173:
	.loc 3 114 0 discriminator 4
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE173:
.LBE172:
	.loc 1 638 0 discriminator 4
	movq	136(%rsp), %rbx
	xorq	%fs:40, %rbx
.LVL40:
	.loc 1 632 0 discriminator 4
	movq	%rax, thread1_endtime(%rip)
	.loc 1 638 0 discriminator 4
	jne	.L27
	.loc 1 638 0 is_stmt 0
	addq	$144, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL41:
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore_state
.LBB174:
.LBB167:
	.loc 1 93 0 is_stmt 1
	xorl	$1, %ecx
	.loc 1 108 0
	movq	%r12, %rax
	.loc 1 93 0
	movb	%cl, 384(%rdx)
	.loc 1 108 0
#APP
# 108 "ufiber26b.c" 1
	movq    %rsp, (%rbx) 
	lea target475(%rip), %rcx 
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
	target475: 
# 0 "" 2
#NO_APP
	jmp	.L19
.LVL42:
.L27:
.LBE167:
.LBE174:
	.loc 1 638 0
	call	__stack_chk_fail@PLT
.LVL43:
	.cfi_endproc
.LFE5087:
	.size	mpthread1, .-mpthread1
	.p2align 4,,15
	.globl	mpthread2
	.type	mpthread2, @function
mpthread2:
.LFB5088:
	.loc 1 640 0
	.cfi_startproc
.LVL44:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	.loc 1 643 0
	movl	$16, %ecx
	.loc 1 640 0
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$144, %rsp
	.cfi_def_cfa_offset 192
	.loc 1 640 0
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	.loc 1 643 0
	movq	%rsp, %rdx
	movq	%rdx, %rdi
.LVL45:
	rep stosq
.LBB192:
	.loc 1 644 0
	movslq	coreId_2(%rip), %rax
.LVL46:
	cmpq	$1023, %rax
	ja	.L29
	movq	%rax, %rcx
	.loc 1 644 0 is_stmt 0 discriminator 1
	movl	$1, %esi
	shrq	$6, %rax
.LVL47:
	salq	%cl, %rsi
	orq	%rsi, (%rdx,%rax,8)
.LVL48:
.L29:
.LBE192:
	.loc 1 645 0 is_stmt 1 discriminator 4
	movq	threadId_2(%rip), %rdi
	movl	$128, %esi
	.loc 1 651 0 discriminator 4
	leaq	OSThreadAvailable(%rip), %r13
	.loc 1 645 0 discriminator 4
	call	pthread_setaffinity_np@PLT
.LVL49:
	.loc 1 647 0 discriminator 4
	call	sched_getcpu@PLT
.LVL50:
.LBB193:
.LBB194:
	.loc 2 104 0 discriminator 4
	leaq	.LC3(%rip), %rsi
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL51:
.LBE194:
.LBE193:
	.loc 1 649 0 discriminator 4
	movl	%ebx, %fs:threadId@tpoff
	.loc 1 650 0 discriminator 4
	movl	%fs:threadId@tpoff, %edx
.LVL52:
.LBB195:
.LBB196:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL53:
.LBE196:
.LBE195:
	.loc 1 651 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	.loc 1 654 0 discriminator 4
	leaq	barrier(%rip), %rdi
	.loc 1 651 0 discriminator 4
	movb	$1, 0(%r13,%rax)
	.loc 1 654 0 discriminator 4
	call	pthread_barrier_wait@PLT
.LVL54:
.LBB197:
.LBB198:
	.loc 3 114 0 discriminator 4
	rdtsc
.LBE198:
.LBE197:
	.loc 1 657 0 discriminator 4
	movslq	%fs:threadId@tpoff, %r14
.LVL55:
.LBB201:
.LBB202:
	.loc 1 60 0 discriminator 4
	leaq	UserThreadingVec(%rip), %rbp
.LBB203:
.LBB204:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
.LBE204:
.LBE203:
.LBE202:
.LBE201:
.LBB222:
.LBB199:
	.loc 3 114 0 discriminator 4
	salq	$32, %rdx
.LBE199:
.LBE222:
.LBB223:
.LBB219:
.LBB208:
.LBB205:
	.loc 2 104 0 discriminator 4
	movl	$1, %edi
.LBE205:
.LBE208:
.LBE219:
.LBE223:
.LBB224:
.LBB200:
	.loc 3 114 0 discriminator 4
	orq	%rdx, %rax
.LBE200:
.LBE224:
	.loc 1 655 0 discriminator 4
	movq	%rax, thread2_starttime(%rip)
.LBB225:
.LBB220:
.LBB209:
.LBB206:
	.loc 2 104 0 discriminator 4
	xorl	%eax, %eax
.LBE206:
.LBE209:
	.loc 1 60 0 discriminator 4
	movq	%r14, %r12
	salq	$9, %r12
	addq	%rbp, %r12
.LBB210:
.LBB207:
	.loc 2 104 0 discriminator 4
	movl	320(%r12), %edx
	call	__printf_chk@PLT
.LVL56:
.LBE207:
.LBE210:
	.loc 1 61 0 discriminator 4
	movl	$4224, %esi
	movl	$64, %edi
	call	aligned_alloc@PLT
.LVL57:
	movq	%rax, 192(%r12)
.LVL58:
	.loc 1 65 0 discriminator 4
	movq	(%r12), %r12
.LBB211:
.LBB212:
	.loc 1 26 0 discriminator 4
	movq	$0, 4208(%rax)
	.p2align 4,,10
	.p2align 3
.L30:
.LBE212:
.LBE211:
	.loc 1 65 0
	movq	4208(%r12), %rdx
	cmpq	$11, %rdx
	je	.L30
	.loc 1 68 0
	addq	$4096, %r12
.LBB213:
.LBB214:
	.loc 2 104 0
	leaq	.LC6(%rip), %rsi
.LBE214:
.LBE213:
	.loc 1 67 0
	leaq	4096(%rax), %rbx
.LVL59:
.LBB217:
.LBB215:
	.loc 2 104 0
	movq	%r12, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL60:
.LBE215:
.LBE217:
	.loc 1 83 0
	salq	$9, %r14
.LVL61:
.LBB218:
.LBB216:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL62:
.LBE216:
.LBE218:
	.loc 1 83 0
	leaq	0(%rbp,%r14), %rdx
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 86 0
	movq	(%rdx), %rax
	movq	4208(%rax), %rsi
	movzbl	384(%rdx), %eax
	cmpq	%rax, %rsi
	movq	%rax, %rcx
	je	.L39
.L32:
	.loc 1 83 0
	movzbl	256(%rdx), %eax
	testb	%al, %al
	je	.L33
.LVL63:
.LBE220:
.LBE225:
	.loc 1 658 0 discriminator 4
	movslq	%fs:threadId@tpoff, %rax
	movb	$0, 0(%r13,%rax)
.LBB226:
.LBB227:
	.loc 3 114 0 discriminator 4
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE227:
.LBE226:
	.loc 1 665 0 discriminator 4
	movq	136(%rsp), %rbx
	xorq	%fs:40, %rbx
.LVL64:
	.loc 1 660 0 discriminator 4
	movq	%rax, thread2_endtime(%rip)
	.loc 1 665 0 discriminator 4
	jne	.L40
	.loc 1 665 0 is_stmt 0
	addq	$144, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL65:
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
.LBB228:
.LBB221:
	.loc 1 93 0 is_stmt 1
	xorl	$1, %ecx
	.loc 1 108 0
	movq	%r12, %rax
	.loc 1 93 0
	movb	%cl, 384(%rdx)
	.loc 1 108 0
#APP
# 108 "ufiber26b.c" 1
	movq    %rsp, (%rbx) 
	lea target745(%rip), %rcx 
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
	target745: 
# 0 "" 2
#NO_APP
	jmp	.L32
.LVL66:
.L40:
.LBE221:
.LBE228:
	.loc 1 665 0
	call	__stack_chk_fail@PLT
.LVL67:
	.cfi_endproc
.LFE5088:
	.size	mpthread2, .-mpthread2
	.p2align 4,,15
	.globl	Thread_Init
	.type	Thread_Init, @function
Thread_Init:
.LFB5078:
	.loc 1 24 0
	.cfi_startproc
.LVL68:
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
.LVL69:
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
.LVL70:
	movl	$64, %edi
.LVL71:
	.loc 1 38 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 40 0
	call	aligned_alloc@PLT
.LVL72:
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
.LVL73:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL74:
	ret
	.cfi_endproc
.LFE5080:
	.size	UserThreading_Init, .-UserThreading_Init
	.p2align 4,,15
	.globl	Scheduler
	.type	Scheduler, @function
Scheduler:
.LFB5081:
	.loc 1 58 0
	.cfi_startproc
.LVL75:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
.LBB229:
.LBB230:
	.loc 2 104 0
	leaq	.LC5(%rip), %rsi
.LBE230:
.LBE229:
	.loc 1 58 0
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
.LBB233:
.LBB231:
	.loc 2 104 0
	movl	320(%rdi), %edx
.LBE231:
.LBE233:
	.loc 1 58 0
	movq	%rdi, %rbp
.LBB234:
.LBB232:
	.loc 2 104 0
	xorl	%eax, %eax
	movl	$1, %edi
.LVL76:
	call	__printf_chk@PLT
.LVL77:
.LBE232:
.LBE234:
	.loc 1 61 0
	movl	$4224, %esi
	movl	$64, %edi
	call	aligned_alloc@PLT
.LVL78:
	.loc 1 65 0
	movq	0(%rbp), %r12
	.loc 1 61 0
	movq	%rax, 192(%rbp)
.LVL79:
.LBB235:
.LBB236:
	.loc 1 26 0
	movq	$0, 4208(%rax)
	.p2align 4,,10
	.p2align 3
.L46:
.LBE236:
.LBE235:
	.loc 1 65 0 discriminator 1
	movq	4208(%r12), %rdx
	cmpq	$11, %rdx
	je	.L46
	.loc 1 68 0
	addq	$4096, %r12
.LBB237:
.LBB238:
	.loc 2 104 0
	leaq	.LC6(%rip), %rsi
.LBE238:
.LBE237:
	.loc 1 67 0
	leaq	4096(%rax), %rbx
.LVL80:
.LBB240:
.LBB239:
	.loc 2 104 0
	movq	%r12, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL81:
	call	__printf_chk@PLT
.LVL82:
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L49:
.LBE239:
.LBE240:
	.loc 1 86 0
	movq	0(%rbp), %rax
	movq	4208(%rax), %rcx
	movzbl	384(%rbp), %eax
	cmpq	%rax, %rcx
	movq	%rax, %rdx
	je	.L54
.L48:
	.loc 1 83 0
	movzbl	256(%rbp), %edx
	testb	%dl, %dl
	je	.L49
	.loc 1 196 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL83:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL84:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL85:
	ret
.LVL86:
	.p2align 4,,10
	.p2align 3
.L54:
	.cfi_restore_state
	.loc 1 93 0
	xorl	$1, %edx
	.loc 1 108 0
	movq	%r12, %rax
	.loc 1 93 0
	movb	%dl, 384(%rbp)
	.loc 1 108 0
#APP
# 108 "ufiber26b.c" 1
	movq    %rsp, (%rbx) 
	lea target939(%rip), %rcx 
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
	target939: 
# 0 "" 2
#NO_APP
	jmp	.L48
	.cfi_endproc
.LFE5081:
	.size	Scheduler, .-Scheduler
	.p2align 4,,15
	.globl	UserThreading_Destory
	.type	UserThreading_Destory, @function
UserThreading_Destory:
.LFB5082:
	.loc 1 337 0
	.cfi_startproc
.LVL87:
	.loc 1 339 0
	rep ret
	.cfi_endproc
.LFE5082:
	.size	UserThreading_Destory, .-UserThreading_Destory
	.p2align 4,,15
	.globl	Yield
	.type	Yield, @function
Yield:
.LFB5083:
	.loc 1 344 0
	.cfi_startproc
.LVL88:
	.loc 1 351 0
	movq	192(%rdi), %rax
	.loc 1 344 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 351 0
	leaq	4096(%rax), %rbx
.LVL89:
	.loc 1 352 0
	movq	128(%rdi), %rax
	addq	$4096, %rax
.LVL90:
	.loc 1 356 0
	cmpb	$0, 448(%rdi)
	je	.L60
	.loc 1 409 0
	movb	$0, 448(%rdi)
	.loc 1 411 0
#APP
# 411 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2972(%rip), %rcx 
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
	target2972: 
# 0 "" 2
	.loc 1 459 0
#NO_APP
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL91:
	ret
.LVL92:
	.p2align 4,,10
	.p2align 3
.L60:
	.cfi_restore_state
	.loc 1 358 0
	movb	$1, 448(%rdi)
	.loc 1 360 0
#APP
# 360 "ufiber26b.c" 1
	movq    %rsp, (%rax) 
	lea     target2985(%rip), %rcx 
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
	target2985: 
# 0 "" 2
	.loc 1 459 0
#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL93:
	ret
	.cfi_endproc
.LFE5083:
	.size	Yield, .-Yield
	.p2align 4,,15
	.globl	makeThread
	.type	makeThread, @function
makeThread:
.LFB5084:
	.loc 1 464 0
	.cfi_startproc
.LVL94:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	.loc 1 467 0
	movl	$4224, %esi
.LVL95:
	movl	$128, %edi
.LVL96:
	.loc 1 464 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 467 0
	call	aligned_alloc@PLT
.LVL97:
	.loc 1 470 0
	leaq	4096(%rax), %rdx
.LBB241:
.LBB242:
	.loc 1 26 0
	movq	$0, 4208(%rax)
.LVL98:
.LBE242:
.LBE241:
	.loc 1 471 0
	movq	%rbp, 4104(%rax)
	.loc 1 472 0
	movq	$1, 4208(%rax)
	.loc 1 476 0
	movq	%rax, (%rbx)
	.loc 1 470 0
	movq	%rdx, 4096(%rax)
	.loc 1 479 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
.LVL99:
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL100:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL101:
	ret
	.cfi_endproc
.LFE5084:
	.size	makeThread, .-makeThread
	.section	.rodata.str1.1
.LC7:
	.string	"All Schedulers Check Marked"
	.text
	.p2align 4,,15
	.globl	allSchedulersExit
	.type	allSchedulersExit, @function
allSchedulersExit:
.LFB5085:
	.loc 1 504 0
	.cfi_startproc
.LVL102:
.LBB243:
	.loc 1 507 0
	movl	%fs:threadId@tpoff, %eax
	testl	%eax, %eax
	je	.L64
	.loc 1 509 0
	movb	$1, 256+UserThreadingVec(%rip)
.L64:
.LVL103:
	.loc 1 507 0
	movl	%fs:threadId@tpoff, %eax
	cmpl	$1, %eax
	je	.L65
	.loc 1 509 0
	movb	$1, 768+UserThreadingVec(%rip)
.L65:
.LVL104:
.LBE243:
.LBB244:
.LBB245:
	.loc 2 104 0
	leaq	.LC7(%rip), %rdi
	jmp	puts@PLT
.LVL105:
.LBE245:
.LBE244:
	.cfi_endproc
.LFE5085:
	.size	allSchedulersExit, .-allSchedulersExit
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"Program needs 2 arguments: two core ids "
	.section	.rodata.str1.1
.LC9:
	.string	"REP_NOPS not enabled"
.LC10:
	.string	"My start: %lu \n"
.LC11:
	.string	"globalVariable: %lld\n"
.LC12:
	.string	"global_var1: %lld\n"
.LC13:
	.string	"global_var2: %lld \n"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"Execution time is %lu clock cycles\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB5089:
	.loc 1 669 0
	.cfi_startproc
.LVL106:
	.loc 1 673 0
	cmpl	$3, %edi
	.loc 1 669 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 673 0
	jne	.L76
.LBB246:
.LBB247:
	.file 4 "/usr/include/stdlib.h"
	.loc 4 363 0
	movq	8(%rsi), %rdi
.LVL107:
	movq	%rsi, %rbx
.LVL108:
	movl	$10, %edx
	xorl	%esi, %esi
.LVL109:
	call	strtol@PLT
.LVL110:
.LBE247:
.LBE246:
.LBB249:
.LBB250:
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
.LBE250:
.LBE249:
.LBB253:
.LBB248:
	movl	%eax, coreId_1(%rip)
.LVL111:
.LBE248:
.LBE253:
.LBB254:
.LBB251:
	call	strtol@PLT
.LVL112:
.LBE251:
.LBE254:
	.loc 1 682 0
	cmpl	$5, coreId_1(%rip)
.LBB255:
.LBB252:
	.loc 4 363 0
	movl	%eax, coreId_2(%rip)
.LBE252:
.LBE255:
	.loc 1 682 0
	jne	.L74
	.loc 1 683 0
	movl	$1, special_global(%rip)
.L74:
.LVL113:
.LBB256:
.LBB257:
	.loc 2 104 0
	leaq	.LC9(%rip), %rdi
.LBE257:
.LBE256:
.LBB259:
.LBB260:
	.loc 1 471 0
	leaq	pfc(%rip), %rbx
.LVL114:
.LBE260:
.LBE259:
.LBB265:
.LBB258:
	.loc 2 104 0
	call	puts@PLT
.LVL115:
.LBE258:
.LBE265:
	.loc 1 692 0
	leaq	barrier(%rip), %rdi
	movl	$2, %edx
	xorl	%esi, %esi
	call	pthread_barrier_init@PLT
.LVL116:
.LBB266:
.LBB267:
	.loc 1 40 0
	movl	$4224, %esi
	movl	$64, %edi
.LBE267:
.LBE266:
	.loc 1 694 0
	movl	$2, threadCount(%rip)
.LVL117:
.LBB270:
.LBB268:
	.loc 1 40 0
	call	aligned_alloc@PLT
.LVL118:
	.loc 1 43 0
	movb	$0, 256+UserThreadingVec(%rip)
.LBE268:
.LBE270:
.LBB271:
.LBB272:
	.loc 1 40 0
	movl	$4224, %esi
	movl	$64, %edi
.LBE272:
.LBE271:
.LBB275:
.LBB269:
	.loc 1 47 0
	movq	$11, 4208(%rax)
	.loc 1 44 0
	movl	$0, 320+UserThreadingVec(%rip)
	.loc 1 50 0
	movb	$1, 384+UserThreadingVec(%rip)
	.loc 1 52 0
	movb	$1, 448+UserThreadingVec(%rip)
.LVL119:
.LBE269:
.LBE275:
.LBB276:
.LBB273:
	.loc 1 40 0
	call	aligned_alloc@PLT
.LVL120:
	.loc 1 43 0
	movb	$0, 768+UserThreadingVec(%rip)
.LBE273:
.LBE276:
.LBB277:
.LBB263:
	.loc 1 467 0
	movl	$4224, %esi
	movl	$128, %edi
.LBE263:
.LBE277:
.LBB278:
.LBB274:
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
.LVL121:
.LBE274:
.LBE278:
.LBB279:
.LBB264:
	.loc 1 467 0
	call	aligned_alloc@PLT
.LVL122:
	.loc 1 470 0
	leaq	4096(%rax), %rdx
.LBB261:
.LBB262:
	.loc 1 26 0
	movq	$0, 4208(%rax)
.LVL123:
.LBE262:
.LBE261:
	.loc 1 471 0
	movq	%rbx, 4104(%rax)
	.loc 1 472 0
	movq	$1, 4208(%rax)
	.loc 1 476 0
	movq	%rax, UserThreadingVec(%rip)
.LVL124:
	.loc 1 470 0
	movq	%rdx, 4096(%rax)
.LBE264:
.LBE279:
.LBB280:
.LBB281:
	.loc 3 114 0
	rdtsc
.LBE281:
.LBE280:
.LBB283:
.LBB284:
	.loc 2 104 0
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
.LBE284:
.LBE283:
.LBB286:
.LBB282:
	.loc 3 114 0
	salq	$32, %rdx
	orq	%rdx, %rax
.LVL125:
.LBE282:
.LBE286:
.LBB287:
.LBB285:
	.loc 2 104 0
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL126:
.LBE285:
.LBE287:
	.loc 1 713 0
	leaq	mpthread1(%rip), %rdx
	leaq	threadId_1(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.loc 1 712 0
	movb	$0, OSThreadAvailable(%rip)
	.loc 1 713 0
	call	pthread_create@PLT
.LVL127:
	.loc 1 715 0
	leaq	mpthread2(%rip), %rdx
	leaq	threadId_2(%rip), %rdi
	movl	$1, %ecx
	xorl	%esi, %esi
	.loc 1 714 0
	movb	$0, 1+OSThreadAvailable(%rip)
	.loc 1 715 0
	call	pthread_create@PLT
.LVL128:
	.loc 1 717 0
	movq	threadId_1(%rip), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL129:
	.loc 1 718 0
	movq	threadId_2(%rip), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL130:
.LBB288:
.LBB289:
	.loc 3 114 0
	rdtsc
.LBE289:
.LBE288:
	.loc 1 726 0
	leaq	barrier(%rip), %rdi
	call	pthread_barrier_destroy@PLT
.LVL131:
.LBB290:
.LBB291:
	.loc 2 104 0
	movq	globalVariable(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL132:
.LBE291:
.LBE290:
	.loc 1 729 0
	movq	global_var1(%rip), %rdx
.LVL133:
.LBB292:
.LBB293:
	.loc 2 104 0
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL134:
.LBE293:
.LBE292:
	.loc 1 730 0
	movq	global_var2(%rip), %rdx
.LVL135:
.LBB294:
.LBB295:
	.loc 2 104 0
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL136:
.LBE295:
.LBE294:
	.loc 1 738 0
	movq	thread1_endtime(%rip), %rdx
	cmpq	%rdx, thread2_endtime(%rip)
	.loc 1 741 0
	movabsq	$-2972493582642298179, %rcx
	.loc 1 738 0
	cmovnb	thread2_endtime(%rip), %rdx
	.loc 1 736 0
	movq	thread1_starttime(%rip), %rax
.LBB296:
.LBB297:
	.loc 2 104 0
	leaq	.LC14(%rip), %rsi
.LBE297:
.LBE296:
	.loc 1 736 0
	cmpq	%rax, thread2_starttime(%rip)
.LBB301:
.LBB298:
	.loc 2 104 0
	movl	$1, %edi
.LBE298:
.LBE301:
	.loc 1 736 0
	cmovbe	thread2_starttime(%rip), %rax
	.loc 1 742 0
	subq	%rax, %rdx
	.loc 1 741 0
	movq	%rdx, %rax
	mulq	%rcx
.LBB302:
.LBB299:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE299:
.LBE302:
	.loc 1 741 0
	shrq	$23, %rdx
.LBB303:
.LBB300:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL137:
.LBE300:
.LBE303:
	.loc 1 744 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL138:
.L76:
	.cfi_restore_state
.LBB304:
.LBB305:
	.loc 2 104 0
	leaq	.LC8(%rip), %rdi
.LVL139:
	call	puts@PLT
.LVL140:
.LBE305:
.LBE304:
	.loc 1 675 0
	movl	$1, %edi
	call	exit@PLT
.LVL141:
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
	.long	0x1933
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF159
	.byte	0xc
	.long	.LASF160
	.long	.LASF161
	.long	.Ldebug_ranges0+0x5c0
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
	.long	.LASF162
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
	.long	.LASF163
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
	.value	0x1e3
	.long	0x155
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.uleb128 0x20
	.long	.LASF98
	.byte	0x1
	.value	0x1e4
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
	.value	0x1e5
	.long	0x675
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	UserThreadingVec
	.uleb128 0x20
	.long	.LASF99
	.byte	0x1
	.value	0x1e6
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
	.value	0x1e7
	.long	0x6b3
	.uleb128 0x9
	.byte	0x3
	.quad	OSThreadAvailable
	.uleb128 0x23
	.long	.LASF120
	.byte	0x1
	.value	0x1e9
	.long	0x6a
	.uleb128 0xa
	.byte	0xe
	.long	threadId@dtpoff, 0
	.byte	0xe0
	.uleb128 0x20
	.long	.LASF101
	.byte	0x1
	.value	0x1eb
	.long	0x5de
	.uleb128 0x9
	.byte	0x3
	.quad	userTh
	.uleb128 0x20
	.long	.LASF102
	.byte	0x1
	.value	0x1ef
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
	.value	0x1f3
	.long	0x71c
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x22
	.long	.LASF104
	.byte	0x1
	.value	0x1f4
	.long	0xf8
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	global_var1
	.uleb128 0x22
	.long	.LASF105
	.byte	0x1
	.value	0x1f5
	.long	0xf8
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	global_var2
	.uleb128 0x20
	.long	.LASF82
	.byte	0x1
	.value	0x1f6
	.long	0x71c
	.uleb128 0x9
	.byte	0x3
	.quad	buf2
	.uleb128 0x20
	.long	.LASF106
	.byte	0x1
	.value	0x205
	.long	0x6a
	.uleb128 0x9
	.byte	0x3
	.quad	myglobal
	.uleb128 0x20
	.long	.LASF107
	.byte	0x1
	.value	0x25a
	.long	0x11b
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_1
	.uleb128 0x20
	.long	.LASF108
	.byte	0x1
	.value	0x25a
	.long	0x11b
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_2
	.uleb128 0x20
	.long	.LASF109
	.byte	0x1
	.value	0x25a
	.long	0x11b
	.uleb128 0x9
	.byte	0x3
	.quad	threadId_3
	.uleb128 0x20
	.long	.LASF110
	.byte	0x1
	.value	0x25b
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	coreId_1
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.value	0x25b
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	coreId_2
	.uleb128 0x20
	.long	.LASF112
	.byte	0x1
	.value	0x25d
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread1_starttime
	.uleb128 0x20
	.long	.LASF113
	.byte	0x1
	.value	0x25d
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread2_starttime
	.uleb128 0x20
	.long	.LASF114
	.byte	0x1
	.value	0x25d
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread1_endtime
	.uleb128 0x20
	.long	.LASF115
	.byte	0x1
	.value	0x25d
	.long	0x172
	.uleb128 0x9
	.byte	0x3
	.quad	thread2_endtime
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.value	0x29d
	.long	0x5e
	.quad	.LFB5089
	.quad	.LFE5089-.LFB5089
	.uleb128 0x1
	.byte	0x9c
	.long	0xd52
	.uleb128 0x26
	.long	.LASF116
	.byte	0x1
	.value	0x29d
	.long	0x5e
	.long	.LLST42
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x29d
	.long	0x5f6
	.long	.LLST43
	.uleb128 0x27
	.long	.LASF118
	.byte	0x1
	.value	0x2c4
	.long	0x172
	.uleb128 0x27
	.long	.LASF119
	.byte	0x1
	.value	0x2d1
	.long	0x172
	.uleb128 0x28
	.long	.LASF121
	.byte	0x1
	.value	0x2e0
	.long	0x172
	.long	.LLST44
	.uleb128 0x28
	.long	.LASF122
	.byte	0x1
	.value	0x2e2
	.long	0x172
	.long	.LLST45
	.uleb128 0x29
	.long	0x159c
	.quad	.LBB246
	.long	.Ldebug_ranges0+0x3b0
	.byte	0x1
	.value	0x2a6
	.long	0x916
	.uleb128 0x2a
	.long	0x15ad
	.long	.LLST46
	.uleb128 0x2b
	.quad	.LVL110
	.long	0x181c
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
	.long	0x159c
	.quad	.LBB249
	.long	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.value	0x2a7
	.long	0x950
	.uleb128 0x2a
	.long	0x15ad
	.long	.LLST47
	.uleb128 0x2b
	.quad	.LVL112
	.long	0x181c
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
	.long	0x157f
	.quad	.LBB256
	.long	.Ldebug_ranges0+0x420
	.byte	0x1
	.value	0x2b0
	.long	0x98d
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST48
	.uleb128 0x2b
	.quad	.LVL115
	.long	0x1841
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x1461
	.quad	.LBB259
	.long	.Ldebug_ranges0+0x450
	.byte	0x1
	.value	0x2be
	.long	0xa0d
	.uleb128 0x2a
	.long	0x147e
	.long	.LLST49
	.uleb128 0x2a
	.long	0x1472
	.long	.LLST50
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x450
	.uleb128 0x2e
	.long	0x17c8
	.uleb128 0x2f
	.long	0x155c
	.quad	.LBB261
	.quad	.LBE261-.LBB261
	.byte	0x1
	.value	0x1d4
	.long	0x9f0
	.uleb128 0x2a
	.long	0x1573
	.long	.LLST51
	.uleb128 0x2a
	.long	0x1568
	.long	.LLST52
	.byte	0
	.uleb128 0x2b
	.quad	.LVL122
	.long	0x1850
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
	.long	0x1521
	.quad	.LBB266
	.long	.Ldebug_ranges0+0x490
	.byte	0x1
	.value	0x2bc
	.long	0xa53
	.uleb128 0x2a
	.long	0x1538
	.long	.LLST53
	.uleb128 0x2a
	.long	0x152d
	.long	.LLST54
	.uleb128 0x2b
	.quad	.LVL118
	.long	0x1850
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
	.long	0x1521
	.quad	.LBB271
	.long	.Ldebug_ranges0+0x4d0
	.byte	0x1
	.value	0x2bd
	.long	0xa99
	.uleb128 0x2a
	.long	0x1538
	.long	.LLST55
	.uleb128 0x2a
	.long	0x152d
	.long	.LLST56
	.uleb128 0x2b
	.quad	.LVL120
	.long	0x1850
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
	.long	0x15ba
	.quad	.LBB280
	.long	.Ldebug_ranges0+0x510
	.byte	0x1
	.value	0x2c4
	.uleb128 0x29
	.long	0x157f
	.quad	.LBB283
	.long	.Ldebug_ranges0+0x540
	.byte	0x1
	.value	0x2c5
	.long	0xaef
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST57
	.uleb128 0x2b
	.quad	.LVL126
	.long	0x185c
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
	.uleb128 0x31
	.long	0x15ba
	.quad	.LBB288
	.quad	.LBE288-.LBB288
	.byte	0x1
	.value	0x2d1
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB290
	.quad	.LBE290-.LBB290
	.byte	0x1
	.value	0x2d7
	.long	0xb4d
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST58
	.uleb128 0x2b
	.quad	.LVL132
	.long	0x185c
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
	.long	0x157f
	.quad	.LBB292
	.quad	.LBE292-.LBB292
	.byte	0x1
	.value	0x2d9
	.long	0xb93
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST59
	.uleb128 0x2b
	.quad	.LVL134
	.long	0x185c
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
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB294
	.quad	.LBE294-.LBB294
	.byte	0x1
	.value	0x2da
	.long	0xbd9
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST60
	.uleb128 0x2b
	.quad	.LVL136
	.long	0x185c
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
	.uleb128 0x29
	.long	0x157f
	.quad	.LBB296
	.long	.Ldebug_ranges0+0x570
	.byte	0x1
	.value	0x2e5
	.long	0xc1b
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST61
	.uleb128 0x2b
	.quad	.LVL137
	.long	0x185c
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
	.quad	.LC14
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB304
	.quad	.LBE304-.LBB304
	.byte	0x1
	.value	0x2a2
	.long	0xc5c
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST62
	.uleb128 0x2b
	.quad	.LVL140
	.long	0x1841
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL116
	.long	0x1895
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
	.quad	.LVL127
	.long	0x18a1
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
	.quad	.LVL128
	.long	0x18a1
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
	.quad	.LVL129
	.long	0x18ac
	.long	0xd08
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL130
	.long	0x18ac
	.long	0xd1f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL131
	.long	0x18b7
	.long	0xd3e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.byte	0
	.uleb128 0x2b
	.quad	.LVL141
	.long	0x18c3
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
	.value	0x280
	.long	0x97
	.quad	.LFB5088
	.quad	.LFE5088-.LFB5088
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd3
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x280
	.long	0x97
	.long	.LLST19
	.uleb128 0x23
	.long	.LASF125
	.byte	0x1
	.value	0x282
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.quad	.LBB192
	.quad	.LBE192-.LBB192
	.long	0xdba
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x284
	.long	0xab
	.long	.LLST20
	.byte	0
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB193
	.quad	.LBE193-.LBB193
	.byte	0x1
	.value	0x287
	.long	0xe00
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST21
	.uleb128 0x2b
	.quad	.LVL51
	.long	0x185c
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
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB195
	.quad	.LBE195-.LBB195
	.byte	0x1
	.value	0x28a
	.long	0xe46
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST22
	.uleb128 0x2b
	.quad	.LVL53
	.long	0x185c
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
	.uleb128 0x30
	.long	0x15ba
	.quad	.LBB197
	.long	.Ldebug_ranges0+0x220
	.byte	0x1
	.value	0x28f
	.uleb128 0x29
	.long	0x14f7
	.quad	.LBB201
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.value	0x291
	.long	0xf69
	.uleb128 0x2a
	.long	0x1503
	.long	.LLST23
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x35
	.long	0x150e
	.long	.LLST24
	.uleb128 0x35
	.long	0x1517
	.long	.LLST25
	.uleb128 0x36
	.long	0x157f
	.quad	.LBB203
	.long	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.byte	0x3c
	.long	0xed3
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST26
	.uleb128 0x2b
	.quad	.LVL56
	.long	0x185c
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
	.uleb128 0x37
	.long	0x155c
	.quad	.LBB211
	.quad	.LBE211-.LBB211
	.byte	0x1
	.byte	0x3e
	.long	0xefe
	.uleb128 0x38
	.long	0x1573
	.byte	0x1
	.uleb128 0x2a
	.long	0x1568
	.long	.LLST27
	.byte	0
	.uleb128 0x36
	.long	0x157f
	.quad	.LBB213
	.long	.Ldebug_ranges0+0x300
	.byte	0x1
	.byte	0x46
	.long	0xf4c
	.uleb128 0x39
	.long	0x158f
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.uleb128 0x2b
	.quad	.LVL62
	.long	0x185c
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
	.quad	.LC6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL57
	.long	0x1850
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
	.byte	0
	.uleb128 0x31
	.long	0x15ba
	.quad	.LBB226
	.quad	.LBE226-.LBB226
	.byte	0x1
	.value	0x294
	.uleb128 0x32
	.quad	.LVL49
	.long	0x18cf
	.long	0xf99
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x3a
	.quad	.LVL50
	.long	0x18db
	.uleb128 0x32
	.quad	.LVL54
	.long	0x18e6
	.long	0xfc5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.byte	0
	.uleb128 0x3a
	.quad	.LVL67
	.long	0x18f2
	.byte	0
	.uleb128 0x25
	.long	.LASF127
	.byte	0x1
	.value	0x260
	.long	0x97
	.quad	.LFB5087
	.quad	.LFE5087-.LFB5087
	.uleb128 0x1
	.byte	0x9c
	.long	0x1254
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x260
	.long	0x97
	.long	.LLST10
	.uleb128 0x23
	.long	.LASF128
	.byte	0x1
	.value	0x265
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.long	0x103b
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x267
	.long	0xab
	.long	.LLST11
	.byte	0
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.byte	0x1
	.value	0x26a
	.long	0x1081
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST12
	.uleb128 0x2b
	.quad	.LVL27
	.long	0x185c
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
	.uleb128 0x2f
	.long	0x157f
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.byte	0x1
	.value	0x26d
	.long	0x10c7
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST13
	.uleb128 0x2b
	.quad	.LVL29
	.long	0x185c
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
	.uleb128 0x30
	.long	0x15ba
	.quad	.LBB143
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.value	0x272
	.uleb128 0x29
	.long	0x14f7
	.quad	.LBB147
	.long	.Ldebug_ranges0+0x140
	.byte	0x1
	.value	0x275
	.long	0x11ea
	.uleb128 0x2a
	.long	0x1503
	.long	.LLST14
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x35
	.long	0x150e
	.long	.LLST15
	.uleb128 0x35
	.long	0x1517
	.long	.LLST16
	.uleb128 0x36
	.long	0x157f
	.quad	.LBB149
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x3c
	.long	0x1154
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST17
	.uleb128 0x2b
	.quad	.LVL32
	.long	0x185c
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
	.uleb128 0x37
	.long	0x155c
	.quad	.LBB157
	.quad	.LBE157-.LBB157
	.byte	0x1
	.byte	0x3e
	.long	0x117f
	.uleb128 0x38
	.long	0x1573
	.byte	0x1
	.uleb128 0x2a
	.long	0x1568
	.long	.LLST18
	.byte	0
	.uleb128 0x36
	.long	0x157f
	.quad	.LBB159
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0x46
	.long	0x11cd
	.uleb128 0x39
	.long	0x158f
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.uleb128 0x2b
	.quad	.LVL38
	.long	0x185c
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
	.quad	.LC6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL33
	.long	0x1850
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
	.byte	0
	.uleb128 0x31
	.long	0x15ba
	.quad	.LBB172
	.quad	.LBE172-.LBB172
	.byte	0x1
	.value	0x278
	.uleb128 0x32
	.quad	.LVL25
	.long	0x18cf
	.long	0x121a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x3a
	.quad	.LVL26
	.long	0x18db
	.uleb128 0x32
	.quad	.LVL30
	.long	0x18e6
	.long	0x1246
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	barrier
	.byte	0
	.uleb128 0x3a
	.quad	.LVL43
	.long	0x18f2
	.byte	0
	.uleb128 0x3b
	.string	"pfc"
	.byte	0x1
	.value	0x207
	.quad	.LFB5086
	.quad	.LFE5086-.LFB5086
	.uleb128 0x1
	.byte	0x9c
	.long	0x13de
	.uleb128 0x3c
	.long	.LASF129
	.byte	0x1
	.value	0x20c
	.long	0xf1
	.byte	0
	.uleb128 0x3c
	.long	.LASF130
	.byte	0x1
	.value	0x20e
	.long	0xf1
	.byte	0
	.uleb128 0x3c
	.long	.LASF131
	.byte	0x1
	.value	0x20f
	.long	0xf1
	.byte	0
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x30
	.long	0x12e7
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.value	0x21a
	.long	0x5e
	.long	.LLST1
	.uleb128 0x3f
	.long	0x14a9
	.quad	.LBB105
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x234
	.uleb128 0x2a
	.long	0x14b6
	.long	.LLST2
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x35
	.long	0x14c2
	.long	.LLST3
	.uleb128 0x35
	.long	0x14cc
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x157f
	.quad	.LBB100
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x20a
	.long	0x1329
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST0
	.uleb128 0x2b
	.quad	.LVL1
	.long	0x185c
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
	.long	0x157f
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.byte	0x1
	.value	0x238
	.long	0x136a
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST5
	.uleb128 0x2b
	.quad	.LVL10
	.long	0x1841
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x14a9
	.quad	.LBB112
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.value	0x254
	.long	0x13a4
	.uleb128 0x2a
	.long	0x14b6
	.long	.LLST6
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x35
	.long	0x14c2
	.long	.LLST7
	.uleb128 0x35
	.long	0x14cc
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	0x157f
	.quad	.LBB115
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.value	0x256
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST9
	.uleb128 0x40
	.quad	.LVL16
	.long	0x1841
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	.LASF132
	.byte	0x1
	.value	0x1f8
	.quad	.LFB5085
	.quad	.LFE5085-.LFB5085
	.uleb128 0x1
	.byte	0x9c
	.long	0x1461
	.uleb128 0x34
	.quad	.LBB243
	.quad	.LBE243-.LBB243
	.long	0x1420
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.value	0x1fa
	.long	0x5e
	.long	.LLST41
	.byte	0
	.uleb128 0x42
	.long	0x157f
	.quad	.LBB244
	.quad	.LBE244-.LBB244
	.byte	0x1
	.value	0x201
	.uleb128 0x39
	.long	0x158f
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+6421
	.sleb128 0
	.uleb128 0x40
	.quad	.LVL105
	.long	0x1841
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	.LASF145
	.byte	0x1
	.value	0x1d0
	.long	0x5e
	.byte	0x1
	.long	0x1496
	.uleb128 0x44
	.long	.LASF133
	.byte	0x1
	.value	0x1d0
	.long	0x1496
	.uleb128 0x45
	.string	"fn"
	.byte	0x1
	.value	0x1d0
	.long	0x14a3
	.uleb128 0x27
	.long	.LASF134
	.byte	0x1
	.value	0x1d3
	.long	0x5cc
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5de
	.uleb128 0x46
	.long	0x14a3
	.uleb128 0x47
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x149c
	.uleb128 0x48
	.long	.LASF135
	.byte	0x1
	.value	0x158
	.byte	0x1
	.long	0x14d7
	.uleb128 0x44
	.long	.LASF133
	.byte	0x1
	.value	0x158
	.long	0x1496
	.uleb128 0x49
	.string	"s"
	.byte	0x1
	.value	0x15f
	.long	0x14d7
	.uleb128 0x49
	.string	"t"
	.byte	0x1
	.value	0x160
	.long	0x14d7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x516
	.uleb128 0x48
	.long	.LASF136
	.byte	0x1
	.value	0x151
	.byte	0x1
	.long	0x14f7
	.uleb128 0x44
	.long	.LASF133
	.byte	0x1
	.value	0x151
	.long	0x1496
	.byte	0
	.uleb128 0x4a
	.long	.LASF137
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x1521
	.uleb128 0x4b
	.long	.LASF133
	.byte	0x1
	.byte	0x3a
	.long	0x1496
	.uleb128 0x4c
	.string	"s"
	.byte	0x1
	.byte	0x43
	.long	0x14d7
	.uleb128 0x4c
	.string	"t"
	.byte	0x1
	.byte	0x44
	.long	0x14d7
	.byte	0
	.uleb128 0x4a
	.long	.LASF138
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x1544
	.uleb128 0x4b
	.long	.LASF133
	.byte	0x1
	.byte	0x26
	.long	0x1496
	.uleb128 0x4d
	.string	"_id"
	.byte	0x1
	.byte	0x26
	.long	0x5e
	.byte	0
	.uleb128 0x4a
	.long	.LASF139
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x155c
	.uleb128 0x4b
	.long	.LASF140
	.byte	0x1
	.byte	0x1d
	.long	0x5cc
	.byte	0
	.uleb128 0x4a
	.long	.LASF141
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	0x157f
	.uleb128 0x4b
	.long	.LASF140
	.byte	0x1
	.byte	0x17
	.long	0x5cc
	.uleb128 0x4b
	.long	.LASF142
	.byte	0x1
	.byte	0x17
	.long	0x5d2
	.byte	0
	.uleb128 0x4e
	.long	.LASF143
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x159c
	.uleb128 0x4b
	.long	.LASF144
	.byte	0x2
	.byte	0x66
	.long	0x10f
	.uleb128 0x47
	.byte	0
	.uleb128 0x43
	.long	.LASF146
	.byte	0x4
	.value	0x169
	.long	0x5e
	.byte	0x3
	.long	0x15ba
	.uleb128 0x44
	.long	.LASF147
	.byte	0x4
	.value	0x169
	.long	0x104
	.byte	0
	.uleb128 0x4f
	.long	.LASF164
	.byte	0x3
	.byte	0x70
	.long	0x114
	.byte	0x3
	.uleb128 0x50
	.long	0x155c
	.quad	.LFB5078
	.quad	.LFE5078-.LFB5078
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f0
	.uleb128 0x39
	.long	0x1568
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x39
	.long	0x1573
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x50
	.long	0x1521
	.quad	.LFB5080
	.quad	.LFE5080-.LFB5080
	.uleb128 0x1
	.byte	0x9c
	.long	0x1639
	.uleb128 0x2a
	.long	0x152d
	.long	.LLST28
	.uleb128 0x2a
	.long	0x1538
	.long	.LLST29
	.uleb128 0x2b
	.quad	.LVL72
	.long	0x1850
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
	.uleb128 0x50
	.long	0x14f7
	.quad	.LFB5081
	.quad	.LFE5081-.LFB5081
	.uleb128 0x1
	.byte	0x9c
	.long	0x1745
	.uleb128 0x2a
	.long	0x1503
	.long	.LLST30
	.uleb128 0x35
	.long	0x150e
	.long	.LLST31
	.uleb128 0x35
	.long	0x1517
	.long	.LLST32
	.uleb128 0x36
	.long	0x157f
	.quad	.LBB229
	.long	.Ldebug_ranges0+0x340
	.byte	0x1
	.byte	0x3c
	.long	0x16b0
	.uleb128 0x2a
	.long	0x158f
	.long	.LLST33
	.uleb128 0x2b
	.quad	.LVL77
	.long	0x185c
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
	.uleb128 0x37
	.long	0x155c
	.quad	.LBB235
	.quad	.LBE235-.LBB235
	.byte	0x1
	.byte	0x3e
	.long	0x16db
	.uleb128 0x38
	.long	0x1573
	.byte	0x1
	.uleb128 0x2a
	.long	0x1568
	.long	.LLST34
	.byte	0
	.uleb128 0x36
	.long	0x157f
	.quad	.LBB237
	.long	.Ldebug_ranges0+0x380
	.byte	0x1
	.byte	0x46
	.long	0x1729
	.uleb128 0x39
	.long	0x158f
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.uleb128 0x2b
	.quad	.LVL82
	.long	0x185c
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
	.quad	.LC6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL78
	.long	0x1850
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
	.uleb128 0x50
	.long	0x14dd
	.quad	.LFB5082
	.quad	.LFE5082-.LFB5082
	.uleb128 0x1
	.byte	0x9c
	.long	0x1768
	.uleb128 0x39
	.long	0x14ea
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x50
	.long	0x14a9
	.quad	.LFB5083
	.quad	.LFE5083-.LFB5083
	.uleb128 0x1
	.byte	0x9c
	.long	0x179b
	.uleb128 0x39
	.long	0x14b6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x35
	.long	0x14c2
	.long	.LLST35
	.uleb128 0x51
	.long	0x14cc
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x50
	.long	0x1461
	.quad	.LFB5084
	.quad	.LFE5084-.LFB5084
	.uleb128 0x1
	.byte	0x9c
	.long	0x181c
	.uleb128 0x2a
	.long	0x1472
	.long	.LLST36
	.uleb128 0x2a
	.long	0x147e
	.long	.LLST37
	.uleb128 0x35
	.long	0x1489
	.long	.LLST38
	.uleb128 0x2f
	.long	0x155c
	.quad	.LBB241
	.quad	.LBE241-.LBB241
	.byte	0x1
	.value	0x1d4
	.long	0x1800
	.uleb128 0x2a
	.long	0x1573
	.long	.LLST39
	.uleb128 0x2a
	.long	0x1568
	.long	.LLST40
	.byte	0
	.uleb128 0x2b
	.quad	.LVL97
	.long	0x1850
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
	.uleb128 0x52
	.long	.LASF148
	.long	.LASF148
	.byte	0x4
	.byte	0xb0
	.uleb128 0x53
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
	.uleb128 0x54
	.long	.LASF165
	.long	.LASF166
	.byte	0x14
	.byte	0
	.long	.LASF165
	.uleb128 0x55
	.long	.LASF149
	.long	.LASF149
	.byte	0x4
	.value	0x247
	.uleb128 0x52
	.long	.LASF150
	.long	.LASF150
	.byte	0x2
	.byte	0x57
	.uleb128 0x53
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
	.uleb128 0x55
	.long	.LASF151
	.long	.LASF151
	.byte	0x12
	.value	0x42d
	.uleb128 0x52
	.long	.LASF152
	.long	.LASF152
	.byte	0x12
	.byte	0xea
	.uleb128 0x52
	.long	.LASF153
	.long	.LASF153
	.byte	0x12
	.byte	0xfb
	.uleb128 0x55
	.long	.LASF154
	.long	.LASF154
	.byte	0x12
	.value	0x433
	.uleb128 0x55
	.long	.LASF155
	.long	.LASF155
	.byte	0x4
	.value	0x266
	.uleb128 0x55
	.long	.LASF156
	.long	.LASF156
	.byte	0x12
	.value	0x1db
	.uleb128 0x52
	.long	.LASF157
	.long	.LASF157
	.byte	0x13
	.byte	0x5b
	.uleb128 0x55
	.long	.LASF158
	.long	.LASF158
	.byte	0x12
	.value	0x437
	.uleb128 0x56
	.long	.LASF167
	.long	.LASF167
	.uleb128 0x53
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
	.uleb128 0x53
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
	.uleb128 0x53
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x56
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
.LLST42:
	.quad	.LVL106
	.quad	.LVL107
	.value	0x1
	.byte	0x55
	.quad	.LVL107
	.quad	.LVL138
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL138
	.quad	.LVL139
	.value	0x1
	.byte	0x55
	.quad	.LVL139
	.quad	.LFE5089
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL106
	.quad	.LVL109
	.value	0x1
	.byte	0x54
	.quad	.LVL109
	.quad	.LVL114
	.value	0x1
	.byte	0x53
	.quad	.LVL114
	.quad	.LVL138
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL138
	.quad	.LVL140-1
	.value	0x1
	.byte	0x54
	.quad	.LVL140-1
	.quad	.LFE5089
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL136
	.quad	.LVL137-1
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
.LLST45:
	.quad	.LVL136
	.quad	.LVL137-1
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
.LLST46:
	.quad	.LVL108
	.quad	.LVL110-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL111
	.quad	.LVL112-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL113
	.quad	.LVL115
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6183
	.sleb128 0
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL121
	.quad	.LVL124
	.value	0xa
	.byte	0x3
	.quad	pfc
	.byte	0x9f
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL121
	.quad	.LVL124
	.value	0xa
	.byte	0x3
	.quad	UserThreadingVec
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL117
	.quad	.LVL119
	.value	0xa
	.byte	0x3
	.quad	UserThreadingVec
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL119
	.quad	.LVL121
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL119
	.quad	.LVL121
	.value	0xa
	.byte	0x3
	.quad	UserThreadingVec+512
	.byte	0x9f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL125
	.quad	.LVL126
	.value	0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL131
	.quad	.LVL132
	.value	0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL133
	.quad	.LVL134
	.value	0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL135
	.quad	.LVL136
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL136
	.quad	.LVL137
	.value	0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL138
	.quad	.LVL140
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6247
	.sleb128 0
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x55
	.quad	.LVL45
	.quad	.LVL59
	.value	0x1
	.byte	0x53
	.quad	.LVL59
	.quad	.LFE5088
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL46
	.quad	.LVL47
	.value	0x1
	.byte	0x50
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x52
	.quad	.LVL48
	.quad	.LVL49-1
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
.LLST21:
	.quad	.LVL50
	.quad	.LVL51
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL52
	.quad	.LVL53
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL55
	.quad	.LVL61
	.value	0x15
	.byte	0x7e
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
.LLST24:
	.quad	.LVL59
	.quad	.LVL63
	.value	0x1
	.byte	0x53
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL59
	.quad	.LVL63
	.value	0x1
	.byte	0x5c
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL55
	.quad	.LVL56
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL58
	.quad	.LVL60
	.value	0x1
	.byte	0x50
	.quad	.LVL60
	.quad	.LVL61
	.value	0xa
	.byte	0x7e
	.sleb128 0
	.byte	0x39
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc0
	.quad	.LVL61
	.quad	.LVL64
	.value	0x4
	.byte	0x73
	.sleb128 -4096
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x4
	.byte	0x73
	.sleb128 -4096
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x55
	.quad	.LVL21
	.quad	.LVL35
	.value	0x1
	.byte	0x53
	.quad	.LVL35
	.quad	.LFE5087
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x50
	.quad	.LVL23
	.quad	.LVL24
	.value	0x1
	.byte	0x52
	.quad	.LVL24
	.quad	.LVL25-1
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
.LLST12:
	.quad	.LVL26
	.quad	.LVL27
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL28
	.quad	.LVL29
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL31
	.quad	.LVL37
	.value	0x15
	.byte	0x7e
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
.LLST15:
	.quad	.LVL35
	.quad	.LVL39
	.value	0x1
	.byte	0x53
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL35
	.quad	.LVL39
	.value	0x1
	.byte	0x5c
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL31
	.quad	.LVL32
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL34
	.quad	.LVL36
	.value	0x1
	.byte	0x50
	.quad	.LVL36
	.quad	.LVL37
	.value	0xa
	.byte	0x7e
	.sleb128 0
	.byte	0x39
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc0
	.quad	.LVL37
	.quad	.LVL40
	.value	0x4
	.byte	0x73
	.sleb128 -4096
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL42
	.value	0x4
	.byte	0x73
	.sleb128 -4096
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
	.long	.Ldebug_info0+6395
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
	.long	.Ldebug_info0+6410
	.sleb128 0
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL102
	.quad	.LVL103
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL103
	.quad	.LVL104
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL104
	.quad	.LFE5085
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL69
	.quad	.LVL71
	.value	0x1
	.byte	0x55
	.quad	.LVL71
	.quad	.LVL73
	.value	0x1
	.byte	0x53
	.quad	.LVL73
	.quad	.LFE5080
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL69
	.quad	.LVL70
	.value	0x1
	.byte	0x54
	.quad	.LVL70
	.quad	.LVL74
	.value	0x1
	.byte	0x56
	.quad	.LVL74
	.quad	.LFE5080
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x140
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x55
	.quad	.LVL76
	.quad	.LVL84
	.value	0x1
	.byte	0x56
	.quad	.LVL84
	.quad	.LVL86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL86
	.quad	.LFE5081
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL80
	.quad	.LVL83
	.value	0x1
	.byte	0x53
	.quad	.LVL86
	.quad	.LFE5081
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL80
	.quad	.LVL85
	.value	0x1
	.byte	0x5c
	.quad	.LVL86
	.quad	.LFE5081
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL75
	.quad	.LVL77
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL79
	.quad	.LVL81
	.value	0x1
	.byte	0x50
	.quad	.LVL81
	.quad	.LVL82-1
	.value	0x3
	.byte	0x76
	.sleb128 192
	.quad	.LVL82-1
	.quad	.LVL83
	.value	0x4
	.byte	0x73
	.sleb128 -4096
	.byte	0x9f
	.quad	.LVL86
	.quad	.LFE5081
	.value	0x4
	.byte	0x73
	.sleb128 -4096
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL89
	.quad	.LVL91
	.value	0x1
	.byte	0x53
	.quad	.LVL92
	.quad	.LVL93
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL94
	.quad	.LVL96
	.value	0x1
	.byte	0x55
	.quad	.LVL96
	.quad	.LVL100
	.value	0x1
	.byte	0x53
	.quad	.LVL100
	.quad	.LFE5084
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL94
	.quad	.LVL95
	.value	0x1
	.byte	0x54
	.quad	.LVL95
	.quad	.LVL101
	.value	0x1
	.byte	0x56
	.quad	.LVL101
	.quad	.LFE5084
	.value	0x2
	.byte	0x71
	.sleb128 8
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL97
	.quad	.LVL99
	.value	0x1
	.byte	0x50
	.quad	.LVL99
	.quad	.LVL100
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL100
	.quad	.LFE5084
	.value	0x4
	.byte	0x71
	.sleb128 -4096
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL97
	.quad	.LVL98
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL97
	.quad	.LVL98
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
	.quad	.LBB100
	.quad	.LBE100
	.quad	.LBB103
	.quad	.LBE103
	.quad	0
	.quad	0
	.quad	.LBB104
	.quad	.LBE104
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB119
	.quad	.LBE119
	.quad	0
	.quad	0
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB108
	.quad	.LBE108
	.quad	0
	.quad	0
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB120
	.quad	.LBE120
	.quad	0
	.quad	0
	.quad	.LBB115
	.quad	.LBE115
	.quad	.LBB118
	.quad	.LBE118
	.quad	0
	.quad	0
	.quad	.LBB143
	.quad	.LBE143
	.quad	.LBB168
	.quad	.LBE168
	.quad	.LBB170
	.quad	.LBE170
	.quad	0
	.quad	0
	.quad	.LBB147
	.quad	.LBE147
	.quad	.LBB169
	.quad	.LBE169
	.quad	.LBB171
	.quad	.LBE171
	.quad	.LBB174
	.quad	.LBE174
	.quad	0
	.quad	0
	.quad	.LBB149
	.quad	.LBE149
	.quad	.LBB154
	.quad	.LBE154
	.quad	.LBB155
	.quad	.LBE155
	.quad	.LBB156
	.quad	.LBE156
	.quad	0
	.quad	0
	.quad	.LBB159
	.quad	.LBE159
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB164
	.quad	.LBE164
	.quad	0
	.quad	0
	.quad	.LBB197
	.quad	.LBE197
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB224
	.quad	.LBE224
	.quad	0
	.quad	0
	.quad	.LBB201
	.quad	.LBE201
	.quad	.LBB223
	.quad	.LBE223
	.quad	.LBB225
	.quad	.LBE225
	.quad	.LBB228
	.quad	.LBE228
	.quad	0
	.quad	0
	.quad	.LBB203
	.quad	.LBE203
	.quad	.LBB208
	.quad	.LBE208
	.quad	.LBB209
	.quad	.LBE209
	.quad	.LBB210
	.quad	.LBE210
	.quad	0
	.quad	0
	.quad	.LBB213
	.quad	.LBE213
	.quad	.LBB217
	.quad	.LBE217
	.quad	.LBB218
	.quad	.LBE218
	.quad	0
	.quad	0
	.quad	.LBB229
	.quad	.LBE229
	.quad	.LBB233
	.quad	.LBE233
	.quad	.LBB234
	.quad	.LBE234
	.quad	0
	.quad	0
	.quad	.LBB237
	.quad	.LBE237
	.quad	.LBB240
	.quad	.LBE240
	.quad	0
	.quad	0
	.quad	.LBB246
	.quad	.LBE246
	.quad	.LBB253
	.quad	.LBE253
	.quad	0
	.quad	0
	.quad	.LBB249
	.quad	.LBE249
	.quad	.LBB254
	.quad	.LBE254
	.quad	.LBB255
	.quad	.LBE255
	.quad	0
	.quad	0
	.quad	.LBB256
	.quad	.LBE256
	.quad	.LBB265
	.quad	.LBE265
	.quad	0
	.quad	0
	.quad	.LBB259
	.quad	.LBE259
	.quad	.LBB277
	.quad	.LBE277
	.quad	.LBB279
	.quad	.LBE279
	.quad	0
	.quad	0
	.quad	.LBB266
	.quad	.LBE266
	.quad	.LBB270
	.quad	.LBE270
	.quad	.LBB275
	.quad	.LBE275
	.quad	0
	.quad	0
	.quad	.LBB271
	.quad	.LBE271
	.quad	.LBB276
	.quad	.LBE276
	.quad	.LBB278
	.quad	.LBE278
	.quad	0
	.quad	0
	.quad	.LBB280
	.quad	.LBE280
	.quad	.LBB286
	.quad	.LBE286
	.quad	0
	.quad	0
	.quad	.LBB283
	.quad	.LBE283
	.quad	.LBB287
	.quad	.LBE287
	.quad	0
	.quad	0
	.quad	.LBB296
	.quad	.LBE296
	.quad	.LBB301
	.quad	.LBE301
	.quad	.LBB302
	.quad	.LBE302
	.quad	.LBB303
	.quad	.LBE303
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
.LASF143:
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
.LASF156:
	.string	"pthread_setaffinity_np"
.LASF53:
	.string	"_shortbuf"
.LASF7:
	.string	"__uint8_t"
.LASF158:
	.string	"pthread_barrier_wait"
.LASF19:
	.string	"__size"
.LASF104:
	.string	"global_var1"
.LASF105:
	.string	"global_var2"
.LASF145:
	.string	"makeThread"
.LASF70:
	.string	"_IO_2_1_stderr_"
.LASF41:
	.string	"_IO_buf_base"
.LASF17:
	.string	"long long unsigned int"
.LASF154:
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
.LASF153:
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
.LASF138:
	.string	"UserThreading_Init"
.LASF148:
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
.LASF150:
	.string	"__printf_chk"
.LASF55:
	.string	"_offset"
.LASF151:
	.string	"pthread_barrier_init"
.LASF127:
	.string	"mpthread1"
.LASF124:
	.string	"mpthread2"
.LASF137:
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
.LASF163:
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
.LASF140:
	.string	"_thread"
.LASF49:
	.string	"_flags2"
.LASF61:
	.string	"_mode"
.LASF149:
	.string	"aligned_alloc"
.LASF82:
	.string	"buf2"
.LASF113:
	.string	"thread2_starttime"
.LASF68:
	.string	"_IO_2_1_stdin_"
.LASF160:
	.string	"ufiber26b.c"
.LASF103:
	.string	"UserThreadingVec"
.LASF92:
	.string	"optarg"
.LASF161:
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
.LASF162:
	.string	"_IO_lock_t"
.LASF63:
	.string	"_IO_FILE"
.LASF106:
	.string	"myglobal"
.LASF90:
	.string	"__environ"
.LASF159:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -O3 -std=gnu11 -fstack-protector-strong"
.LASF147:
	.string	"__nptr"
.LASF8:
	.string	"__uint64_t"
.LASF157:
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
.LASF146:
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
.LASF155:
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
.LASF139:
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
.LASF144:
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
.LASF152:
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
.LASF141:
	.string	"Thread_Init"
.LASF142:
	.string	"create_stack"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

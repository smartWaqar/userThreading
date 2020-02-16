.text
.globl context_switch
.align 16
context_switch:
   
    movq    %rsp, (%rdi)
    movq    %r15, 8(%rdi)
    movq    %r14, 16(%rdi)
    movq    %r13, 24(%rdi)
    movq    %r12, 32(%rdi)
    movq    %rbx, 40(%rdi)
    movq    %rbp, 48(%rdi)
    # stmxcsr 0x38(%rdi)
    # fnstcw  0x3C(%rdi)

    movq    (%rsi), %rsp
    movq    8(%rsi), %r15
    movq    16(%rsi), %r14
    movq    24(%rsi), %r13
    movq    32(%rsi), %r12
    movq    40(%rsi), %rbx
    movq    48(%rsi), %rbp
    # ldmxcsr 0x38(%rsi)
    # fldcw   0x3C(%rsi)
    
  retq

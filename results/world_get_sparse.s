	.text
	.file	"world_get_sparse.81c10637457c0881-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,56
.LCPI0_1:
	.byte	201
	.byte	106
	.byte	85
	.byte	71
	.byte	98
	.byte	195
	.byte	216
	.byte	242
	.byte	248
	.byte	120
	.byte	244
	.byte	23
	.byte	2
	.byte	86
	.byte	112
	.byte	13
	.section	.text.world_get,"ax",@progbits
	.globl	world_get
	.p2align	4, 0x90
	.type	world_get,@function
world_get:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r8d
	cmpq	%r8, 16(%rdi)
	jbe	.LBB0_17
	movq	(%rdi), %rax
	leaq	(%r8,%r8,4), %rcx
	cmpl	%esi, (%rax,%rcx,4)
	jne	.LBB0_17
	cmpl	$-1, 4(%rax,%rcx,4)
	je	.LBB0_17
	movl	764(%rdi), %ecx
	movl	760(%rdi), %eax
	cmpq	$0, 112(%rdi)
	je	.LBB0_17
	movq	88(%rdi), %rsi
	movq	96(%rdi), %r9
	leaq	-24(%rsi), %r10
	movabsq	$8188646145276575997, %r11
	xorl	%edx, %edx
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm2
	xorl	%ebx, %ebx
.LBB0_5:
	andq	%r9, %r11
	movdqu	(%rsi,%r11), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r14d
	.p2align	4, 0x90
.LBB0_6:
	testw	%r14w, %r14w
	je	.LBB0_8
	leal	-1(%r14), %ebp
	andl	%r14d, %ebp
	rep		bsfl	%r14d, %r14d
	addq	%r11, %r14
	andq	%r9, %r14
	negq	%r14
	leaq	(%r14,%r14,2), %r15
	movdqu	(%r10,%r15,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r12d
	movl	%ebp, %r14d
	cmpl	$65535, %r12d
	jne	.LBB0_6
	jmp	.LBB0_10
.LBB0_8:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_18
	addq	%rbx, %r11
	addq	$16, %r11
	addq	$16, %rbx
	jmp	.LBB0_5
.LBB0_10:
	movq	-8(%rsi,%r15,8), %r10
	xorl	%edx, %edx
	cmpq	%r10, 280(%rdi)
	jbe	.LBB0_18
	movq	264(%rdi), %r11
	testq	%r11, %r11
	je	.LBB0_19
	shlq	$4, %r10
	cmpq	$0, (%r11,%r10)
	je	.LBB0_17
	movq	216(%rdi), %rdi
	movq	8(%r11,%r10), %rdx
	leaq	(%rdx,%rdx,8), %r10
	shlq	$4, %r10
	xorl	%edx, %edx
	cmpq	%r8, 136(%rdi,%r10)
	jbe	.LBB0_18
	movq	120(%rdi,%r10), %r11
	testq	%r11, %r11
	je	.LBB0_19
	cmpl	$0, (%r11,%r8,8)
	je	.LBB0_17
	addq	%r10, %rdi
	movl	4(%r11,%r8,8), %esi
	movq	8(%rdi), %rdx
	imulq	%rsi, %rdx
	addq	16(%rdi), %rdx
	shlq	$2, %rsi
	movq	48(%rdi), %r9
	addq	%rsi, %r9
	addq	72(%rdi), %rsi
	jmp	.LBB0_19
.LBB0_17:
	xorl	%edx, %edx
.LBB0_18:
.LBB0_19:
	movq	%rdx, -32(%rsp)
	movq	%r9, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%ecx, -8(%rsp)
	movl	%eax, -4(%rsp)
	leaq	-32(%rsp), %rax
	#APP
	#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

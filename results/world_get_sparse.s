	.file	"world_get_sparse.35fd6ca2ea432e27-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,98
.LCPI0_1:
	.byte	3
	.byte	228
	.byte	242
	.byte	199
	.byte	140
	.byte	188
	.byte	103
	.byte	39
	.byte	4
	.byte	127
	.byte	155
	.byte	243
	.byte	116
	.byte	10
	.byte	64
	.byte	197
	.section	.text.world_get,"ax",@progbits
	.globl	world_get
	.p2align	4
	.type	world_get,@function
world_get:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r8d
	notl	%r8d
	cmpq	16(%rdi), %r8
	jae	.LBB0_15
	leaq	(%r8,%r8,2), %rax
	shlq	$3, %rax
	addq	8(%rdi), %rax
	shrq	$32, %rsi
	cmpl	%esi, 16(%rax)
	jne	.LBB0_15
	cmpl	$0, (%rax)
	je	.LBB0_15
	cmpq	$0, 104(%rdi)
	je	.LBB0_15
	movl	1448(%rdi), %eax
	movl	1452(%rdi), %ecx
	movq	80(%rdi), %rsi
	movq	88(%rdi), %r9
	leaq	-24(%rsi), %r10
	movabsq	$-4233372152308728060, %r11
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
	testl	%r14d, %r14d
	je	.LBB0_8
.LBB0_6:
	rep		bsfl	%r14d, %r15d
	addq	%r11, %r15
	andq	%r9, %r15
	negq	%r15
	leaq	(%r15,%r15,2), %r15
	movdqu	(%r10,%r15,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %ebp
	cmpl	$65535, %ebp
	je	.LBB0_10
	leal	-1(%r14), %ebp
	andw	%r14w, %bp
	movl	%ebp, %r14d
	jne	.LBB0_6
.LBB0_8:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_16
	addq	%rbx, %r11
	addq	$16, %r11
	addq	$16, %rbx
	jmp	.LBB0_5
.LBB0_10:
	movq	-8(%rsi,%r15,8), %rdx
	cmpq	400(%rdi), %rdx
	jae	.LBB0_15
	movq	392(%rdi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_15
	movq	344(%rdi), %r9
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	cmpq	88(%r9,%rdx), %r8
	jae	.LBB0_15
	addq	%rdx, %r9
	movq	80(%r9), %rdx
	movl	(%rdx,%r8,4), %esi
	testl	%esi, %esi
	je	.LBB0_15
	notl	%esi
	movq	8(%r9), %rdx
	imulq	%rsi, %rdx
	addq	16(%r9), %rdx
	shlq	$2, %rsi
	movq	32(%r9), %rdi
	addq	%rsi, %rdi
	addq	40(%r9), %rsi
	jmp	.LBB0_17
.LBB0_15:
	xorl	%edx, %edx
.LBB0_16:
.LBB0_17:
	movq	%rdx, -32(%rsp)
	movq	%rdi, -24(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%ecx, -8(%rsp)
	movl	%eax, -4(%rsp)
	leaq	-32(%rsp), %rax
	#APP
	#NO_APP
	popq	%rbx
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

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

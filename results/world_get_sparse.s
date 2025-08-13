	.file	"world_get_sparse.3f19b28fb571fd5d-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,31
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r8d
	notl	%r8d
	cmpq	%r8, 16(%rdi)
	jbe	.LBB0_16
	shrq	$32, %rsi
	movq	8(%rdi), %rax
	leaq	(%r8,%r8,2), %rcx
	cmpl	%esi, 16(%rax,%rcx,8)
	jne	.LBB0_16
	leaq	(%rax,%rcx,8), %rax
	cmpl	$0, (%rax)
	je	.LBB0_16
	cmpq	$0, 104(%rdi)
	je	.LBB0_16
	movl	1448(%rdi), %eax
	movl	1452(%rdi), %ecx
	movabsq	$4514074820160711338, %r9
	movq	80(%rdi), %rsi
	movq	88(%rdi), %r10
	xorl	%edx, %edx
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-8947910603753900906, %r11
	movq	%r9, %rbx
	xorl	%r14d, %r14d
.LBB0_5:
	andq	%r10, %rbx
	movdqu	(%rsi,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r15d
	testl	%r15d, %r15d
	je	.LBB0_9
.LBB0_6:
	rep		bsfl	%r15d, %r12d
	addq	%rbx, %r12
	andq	%r10, %r12
	negq	%r12
	leaq	(%r12,%r12,2), %r12
	cmpq	%r11, -24(%rsi,%r12,8)
	jne	.LBB0_8
	cmpq	%r9, -16(%rsi,%r12,8)
	je	.LBB0_11
.LBB0_8:
	leal	-1(%r15), %ebp
	andw	%r15w, %bp
	movl	%ebp, %r15d
	jne	.LBB0_6
.LBB0_9:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_17
	addq	%r14, %rbx
	addq	$16, %rbx
	addq	$16, %r14
	jmp	.LBB0_5
.LBB0_11:
	leaq	(%rsi,%r12,8), %rdx
	movq	-8(%rdx), %rdx
	cmpq	400(%rdi), %rdx
	jae	.LBB0_16
	movq	392(%rdi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_16
	movq	344(%rdi), %r9
	notq	%rdx
	leaq	(%rdx,%rdx,8), %rdx
	shlq	$4, %rdx
	cmpq	136(%r9,%rdx), %r8
	jae	.LBB0_16
	addq	%rdx, %r9
	movq	128(%r9), %rdx
	movl	(%rdx,%r8,4), %esi
	testl	%esi, %esi
	je	.LBB0_16
	notl	%esi
	movq	8(%r9), %rdx
	imulq	%rsi, %rdx
	addq	16(%r9), %rdx
	shlq	$2, %rsi
	movq	56(%r9), %rdi
	addq	%rsi, %rdi
	addq	80(%r9), %rsi
	jmp	.LBB0_18
.LBB0_16:
	xorl	%edx, %edx
.LBB0_17:
.LBB0_18:
	movq	%rdx, -32(%rsp)
	movq	%rdi, -24(%rsp)
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

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

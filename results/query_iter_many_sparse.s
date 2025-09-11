	.file	"query_iter_many_sparse.8d6d71fd9f92bd18-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	272(%rax), %rdi
	movq	280(%rax), %r8
	movq	400(%rcx), %r9
	cmpq	%r9, %rdi
	jae	.LBB0_3
	movq	392(%rcx), %r10
	movq	(%r10,%rdi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
	notq	%rdi
	leaq	(%rdi,%rdi,8), %rdi
	shlq	$4, %rdi
	addq	344(%rcx), %rdi
	cmpq	%r9, %r8
	jb	.LBB0_4
	jmp	.LBB0_8
.LBB0_3:
	xorl	%edi, %edi
	cmpq	%r9, %r8
	jae	.LBB0_8
.LBB0_4:
	movq	392(%rcx), %r9
	movq	(%r9,%r8,8), %r8
	testq	%r8, %r8
	je	.LBB0_8
	notq	%r8
	leaq	(%r8,%r8,8), %r8
	shlq	$4, %r8
	addq	344(%rcx), %r8
	testq	%rdx, %rdx
	jne	.LBB0_9
	jmp	.LBB0_18
.LBB0_8:
	xorl	%r8d, %r8d
	testq	%rdx, %rdx
	je	.LBB0_18
.LBB0_9:
	leaq	(%rsi,%rdx,8), %rdx
	leaq	-8(%rsp), %r9
.LBB0_10:
	movq	16(%rcx), %r10
	jmp	.LBB0_12
	.p2align	4
.LBB0_11:
	addq	$8, %rsi
	cmpq	%rdx, %rsi
	je	.LBB0_18
.LBB0_12:
	movq	(%rsi), %rbx
	movl	%ebx, %r11d
	notl	%r11d
	cmpq	%r11, %r10
	jbe	.LBB0_11
	shrq	$32, %rbx
	movq	8(%rcx), %r14
	leaq	(%r11,%r11,2), %r15
	cmpl	%ebx, 16(%r14,%r15,8)
	jne	.LBB0_11
	leaq	(%r14,%r15,8), %rbx
	cmpl	$0, (%rbx)
	je	.LBB0_11
	movl	8(%rbx), %ebx
	cmpq	%rbx, 56(%rax)
	jbe	.LBB0_11
	movq	40(%rax), %r14
	movl	%ebx, %r15d
	shrl	$6, %r15d
	movq	(%r14,%r15,8), %r14
	btq	%rbx, %r14
	jae	.LBB0_11
	movq	128(%rdi), %r10
	movl	(%r10,%r11,4), %r10d
	notl	%r10d
	imulq	8(%rdi), %r10
	addq	16(%rdi), %r10
	movq	128(%r8), %rbx
	movl	(%rbx,%r11,4), %r11d
	notl	%r11d
	imulq	8(%r8), %r11
	addq	16(%r8), %r11
	movq	%r10, -8(%rsp)
	#APP
	#NO_APP
	movq	%r11, -8(%rsp)
	#APP
	#NO_APP
	addq	$8, %rsi
	cmpq	%rdx, %rsi
	jne	.LBB0_10
.LBB0_18:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

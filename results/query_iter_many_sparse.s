	.text
	.file	"query_iter_many_sparse.608e45e1b4b7b494-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	216(%rax), %r8
	movq	224(%rax), %r9
	movq	272(%rcx), %r10
	movq	280(%rcx), %r11
	xorl	%edi, %edi
	cmpq	%r8, %r11
	jbe	.LBB0_4
	testq	%r10, %r10
	je	.LBB0_4
	movq	(%r10,%r8,8), %rdi
	testq	%rdi, %rdi
	je	.LBB0_8
	notq	%rdi
	leaq	(%rdi,%rdi,8), %rdi
	shlq	$4, %rdi
	addq	224(%rcx), %rdi
.LBB0_4:
	xorl	%r8d, %r8d
	cmpq	%r9, %r11
	jbe	.LBB0_10
.LBB0_5:
	testq	%r10, %r10
	je	.LBB0_10
	movq	(%r10,%r9,8), %r8
	testq	%r8, %r8
	je	.LBB0_9
	notq	%r8
	leaq	(%r8,%r8,8), %r8
	shlq	$4, %r8
	addq	224(%rcx), %r8
	jmp	.LBB0_10
.LBB0_8:
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	cmpq	%r9, %r11
	ja	.LBB0_5
	jmp	.LBB0_10
.LBB0_9:
	xorl	%r8d, %r8d
.LBB0_10:
	testq	%rdx, %rdx
	je	.LBB0_32
	leaq	(%rsi,%rdx,8), %rdx
	movl	$4294967295, %r9d
	leaq	-8(%rsp), %r10
.LBB0_12:
	movq	16(%rcx), %rbx
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:
	addq	$8, %rsi
	cmpq	%rdx, %rsi
	je	.LBB0_32
.LBB0_14:
	movq	(%rsi), %r14
	movl	%r14d, %r11d
	cmpq	%rbx, %r11
	jae	.LBB0_13
	shrq	$32, %r14
	movq	8(%rcx), %r15
	leaq	(%r11,%r11,4), %r12
	cmpl	%r14d, (%r15,%r12,4)
	jne	.LBB0_13
	movl	4(%r15,%r12,4), %r14d
	cmpq	%r9, %r14
	je	.LBB0_13
	cmpq	%r14, 56(%rax)
	jbe	.LBB0_13
	movq	40(%rax), %r15
	movl	%r14d, %r12d
	shrl	$6, %r12d
	movq	(%r15,%r12,8), %r15
	btq	%r14, %r15
	jae	.LBB0_13
	cmpq	136(%rdi), %r11
	jae	.LBB0_24
	movq	128(%rdi), %r14
	movl	$0, %ebx
	testq	%r14, %r14
	je	.LBB0_25
	cmpl	$0, (%r14,%r11,8)
	je	.LBB0_24
	movl	4(%r14,%r11,8), %ebx
	imulq	8(%rdi), %rbx
	addq	16(%rdi), %rbx
	jmp	.LBB0_25
.LBB0_24:
	xorl	%ebx, %ebx
.LBB0_25:
	cmpq	136(%r8), %r11
	jae	.LBB0_30
	movq	128(%r8), %r15
	movl	$0, %r14d
	testq	%r15, %r15
	je	.LBB0_31
	cmpl	$0, (%r15,%r11,8)
	je	.LBB0_30
	movl	4(%r15,%r11,8), %r14d
	imulq	8(%r8), %r14
	addq	16(%r8), %r14
	jmp	.LBB0_31
.LBB0_30:
	xorl	%r14d, %r14d
.LBB0_31:
	addq	$8, %rsi
	movq	%rbx, -8(%rsp)
	#APP
	#NO_APP
	movq	%r14, -8(%rsp)
	#APP
	#NO_APP
	cmpq	%rdx, %rsi
	jne	.LBB0_12
.LBB0_32:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

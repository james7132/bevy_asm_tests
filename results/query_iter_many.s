	.file	"query_iter_many.99ea20f7b2d4d4ac-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	testq	%rdx, %rdx
	je	.LBB0_20
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	(%rsi,%rdx,8), %rax
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	leaq	-8(%rsp), %rdi
.LBB0_2:
	movq	16(%rdx), %r9
	jmp	.LBB0_4
	.p2align	4
.LBB0_3:
	addq	$8, %rsi
	cmpq	%rax, %rsi
	je	.LBB0_19
.LBB0_4:
	movq	(%rsi), %r8
	movl	%r8d, %r10d
	notl	%r10d
	cmpq	%r10, %r9
	jbe	.LBB0_3
	shrq	$32, %r8
	movq	8(%rdx), %r11
	leaq	(%r10,%r10,2), %r10
	cmpl	%r8d, 16(%r11,%r10,8)
	jne	.LBB0_3
	leaq	(%r11,%r10,8), %r8
	cmpl	$0, (%r8)
	je	.LBB0_3
	movl	8(%r8), %r10d
	cmpq	%r10, 56(%rcx)
	jbe	.LBB0_3
	movq	40(%rcx), %r11
	movl	%r10d, %ebx
	shrl	$6, %ebx
	movq	(%r11,%rbx,8), %r11
	btq	%r10, %r11
	jae	.LBB0_3
	movl	12(%r8), %r9d
	movq	416(%rdx), %r11
	leaq	(%r9,%r9,8), %rbx
	leaq	(%r11,%rbx,8), %r10
	movq	272(%rcx), %r9
	movq	64(%r11,%rbx,8), %r11
	cmpq	%r11, %r9
	jae	.LBB0_12
	movq	56(%r10), %rbx
	movq	(%rbx,%r9,8), %r9
	testq	%r9, %r9
	je	.LBB0_12
	movq	24(%r10), %rbx
	notq	%r9
	leaq	(%r9,%r9,2), %r9
	shlq	$4, %r9
	movq	16(%rbx,%r9), %r9
	movq	280(%rcx), %rbx
	cmpq	%r11, %rbx
	jb	.LBB0_13
	jmp	.LBB0_17
.LBB0_12:
	xorl	%r9d, %r9d
	movq	280(%rcx), %rbx
	cmpq	%r11, %rbx
	jae	.LBB0_17
.LBB0_13:
	movq	56(%r10), %r11
	movq	(%r11,%rbx,8), %r11
	testq	%r11, %r11
	je	.LBB0_17
	movq	24(%r10), %r10
	notq	%r11
	leaq	(%r11,%r11,2), %r11
	shlq	$4, %r11
	movq	16(%r10,%r11), %r10
	jmp	.LBB0_18
.LBB0_17:
	xorl	%r10d, %r10d
.LBB0_18:
	movl	4(%r8), %r8d
	addq	$8, %rsi
	notl	%r8d
	leaq	(%r9,%r8,4), %r9
	leaq	(%r10,%r8,4), %r8
	movq	%r9, -8(%rsp)
	#APP
	#NO_APP
	movq	%r8, -8(%rsp)
	#APP
	#NO_APP
	cmpq	%rax, %rsi
	jne	.LBB0_2
.LBB0_19:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_20:
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

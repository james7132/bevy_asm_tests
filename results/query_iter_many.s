	.file	"query_iter_many.51754ad599f191e8-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	leaq	(%rsi,%rdx,8), %rdx
	leaq	-8(%rsp), %rdi
	cmpq	%rdx, %rsi
	je	.LBB0_12
	.p2align	4
.LBB0_1:
	movq	8(%rcx), %r9
	movq	16(%rcx), %r10
	jmp	.LBB0_3
	.p2align	4
.LBB0_2:
	leaq	8(%r8), %rsi
	cmpq	%rdx, %rsi
	je	.LBB0_11
.LBB0_3:
	movq	%rsi, %r8
	movq	(%rsi), %r11
	movl	%r11d, %esi
	notl	%esi
	cmpq	%r10, %rsi
	jae	.LBB0_2
	leaq	(%rsi,%rsi,2), %rsi
	leaq	(%r9,%rsi,8), %rsi
	shrq	$32, %r11
	cmpl	%r11d, 16(%rsi)
	jne	.LBB0_2
	cmpl	$0, (%rsi)
	je	.LBB0_2
	movl	8(%rsi), %r11d
	cmpq	%r11, 56(%rax)
	jbe	.LBB0_2
	movq	40(%rax), %rbx
	movl	%r11d, %r14d
	shrl	$6, %r14d
	movq	(%rbx,%r14,8), %rbx
	btq	%r11, %rbx
	jae	.LBB0_2
	movl	12(%rsi), %r9d
	movq	416(%rcx), %r11
	leaq	(%r9,%r9,8), %rbx
	leaq	(%r11,%rbx,8), %r10
	movq	272(%rax), %r9
	movq	64(%r11,%rbx,8), %r11
	cmpq	%r11, %r9
	jae	.LBB0_14
	movq	56(%r10), %rbx
	movq	(%rbx,%r9,8), %r9
	testq	%r9, %r9
	je	.LBB0_14
	movq	24(%r10), %rbx
	notq	%r9
	leaq	(%r9,%r9,2), %r9
	shlq	$4, %r9
	movq	16(%rbx,%r9), %r9
	movq	280(%rax), %rbx
	cmpq	%r11, %rbx
	jb	.LBB0_15
	jmp	.LBB0_19
	.p2align	4
.LBB0_11:
	addq	$8, %r8
	movq	%r8, %rsi
	xorl	%r9d, %r9d
	testq	%r9, %r9
	jne	.LBB0_13
	jmp	.LBB0_21
.LBB0_14:
	xorl	%r9d, %r9d
	movq	280(%rax), %rbx
	cmpq	%r11, %rbx
	jae	.LBB0_19
.LBB0_15:
	movq	56(%r10), %r11
	movq	(%r11,%rbx,8), %r11
	testq	%r11, %r11
	je	.LBB0_19
	movq	24(%r10), %r10
	notq	%r11
	leaq	(%r11,%r11,2), %r11
	shlq	$4, %r11
	movq	16(%r10,%r11), %r10
	jmp	.LBB0_20
.LBB0_19:
	xorl	%r10d, %r10d
.LBB0_20:
	movl	4(%rsi), %esi
	addq	$8, %r8
	notl	%esi
	leaq	(%r9,%rsi,4), %r9
	leaq	(%r10,%rsi,4), %r10
	movq	%r8, %rsi
	testq	%r9, %r9
	jne	.LBB0_13
	jmp	.LBB0_21
	.p2align	4
.LBB0_12:
	movq	%rdx, %rsi
	xorl	%r9d, %r9d
	testq	%r9, %r9
	je	.LBB0_21
.LBB0_13:
	movq	%r9, -8(%rsp)
	#APP
	#NO_APP
	movq	%r10, -8(%rsp)
	#APP
	#NO_APP
	cmpq	%rdx, %rsi
	jne	.LBB0_1
	jmp	.LBB0_12
.LBB0_21:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.ident	"rustc version 1.93.0-nightly (82ae0ee64 2025-10-31)"
	.section	".note.GNU-stack","",@progbits

	.file	"query_for_each.a3ab934b97b661e4-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4
	.type	query_for_each,@function
query_for_each:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdi), %rax
	movq	256(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB0_30
	movl	20(%rdi), %ecx
	movq	248(%rax), %rdx
	leaq	(%rdx,%rsi,4), %rsi
	movq	8(%rdi), %rdi
	cmpb	$0, 264(%rax)
	je	.LBB0_4
	movl	$4294967295, %r8d
	jmp	.LBB0_22
	.p2align	4
.LBB0_3:
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	je	.LBB0_30
.LBB0_4:
	movl	(%rdx), %r8d
	leaq	(%r8,%r8,4), %r11
	shlq	$5, %r11
	movq	256(%rdi), %r9
	movq	416(%rdi), %r10
	movl	148(%r9,%r11), %r8d
	leaq	(%r8,%r8,8), %rbx
	leaq	(%r10,%rbx,8), %r15
	movq	88(%r9,%r11), %r8
	cmpl	%r8d, 16(%r10,%rbx,8)
	jne	.LBB0_9
	testq	%r8, %r8
	je	.LBB0_3
	movq	280(%rax), %r9
	movq	24(%r15), %r10
	movq	56(%r15), %r11
	cmpq	64(%r15), %r9
	jae	.LBB0_13
	movq	(%r11,%r9,8), %r9
	testq	%r9, %r9
	je	.LBB0_13
	notq	%r9
	leaq	(%r9,%r9,2), %r9
	shlq	$4, %r9
	movq	16(%r10,%r9), %r9
	testl	%r8d, %r8d
	jne	.LBB0_16
	jmp	.LBB0_3
	.p2align	4
.LBB0_9:
	testq	%r8, %r8
	je	.LBB0_3
	movq	280(%rax), %r10
	movq	24(%r15), %rbx
	movq	56(%r15), %r14
	cmpq	64(%r15), %r10
	jae	.LBB0_14
	movq	(%r14,%r10,8), %r10
	testq	%r10, %r10
	je	.LBB0_14
	notq	%r10
	leaq	(%r10,%r10,2), %r10
	shlq	$4, %r10
	movq	16(%rbx,%r10), %r10
	testl	%r8d, %r8d
	jne	.LBB0_19
	jmp	.LBB0_3
	.p2align	4
.LBB0_13:
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	je	.LBB0_3
.LBB0_16:
	movq	272(%rax), %rbx
	movq	(%r11,%rbx,8), %r11
	notq	%r11
	leaq	(%r11,%r11,2), %rbx
	shlq	$4, %rbx
	movq	16(%r10,%rbx), %r11
	movq	40(%r10,%rbx), %r10
	movl	%r8d, %r8d
	xorl	%ebx, %ebx
	.p2align	4
.LBB0_17:
	movss	(%r9,%rbx,4), %xmm0
	movl	%ecx, (%r10,%rbx,4)
	addss	(%r11,%rbx,4), %xmm0
	movss	%xmm0, (%r11,%rbx,4)
	leaq	1(%rbx), %r14
	movq	%r14, %rbx
	cmpq	%r14, %r8
	jne	.LBB0_17
	jmp	.LBB0_3
	.p2align	4
.LBB0_14:
	xorl	%r10d, %r10d
	testl	%r8d, %r8d
	je	.LBB0_3
.LBB0_19:
	addq	%r11, %r9
	movq	272(%rax), %r11
	movq	(%r14,%r11,8), %r11
	notq	%r11
	leaq	(%r11,%r11,2), %r14
	shlq	$4, %r14
	movq	16(%rbx,%r14), %r11
	movq	40(%rbx,%r14), %rbx
	movq	80(%r9), %r9
	movl	%r8d, %r8d
	addq	$8, %r9
	xorl	%r14d, %r14d
	.p2align	4
.LBB0_20:
	movl	(%r9), %r15d
	notl	%r15d
	movss	(%r10,%r15,4), %xmm0
	movl	%ecx, (%rbx,%r15,4)
	addss	(%r11,%r15,4), %xmm0
	incq	%r14
	movss	%xmm0, (%r11,%r15,4)
	addq	$16, %r9
	cmpq	%r14, %r8
	jne	.LBB0_20
	jmp	.LBB0_3
	.p2align	4
.LBB0_21:
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	je	.LBB0_30
.LBB0_22:
	movl	(%rdx), %r9d
	movq	416(%rdi), %r10
	leaq	(%r9,%r9,8), %r11
	movq	16(%r10,%r11,8), %r9
	testq	%r9, %r9
	je	.LBB0_21
	leaq	(%r10,%r11,8), %r14
	movq	280(%rax), %r11
	movq	24(%r14), %r10
	movq	56(%r14), %rbx
	cmpq	64(%r14), %r11
	jae	.LBB0_27
	movq	(%rbx,%r11,8), %r11
	testq	%r11, %r11
	je	.LBB0_27
	notq	%r11
	leaq	(%r11,%r11,2), %r11
	shlq	$4, %r11
	movq	16(%r10,%r11), %r11
	andq	%r8, %r9
	jne	.LBB0_28
	jmp	.LBB0_21
	.p2align	4
.LBB0_27:
	xorl	%r11d, %r11d
	andq	%r8, %r9
	je	.LBB0_21
.LBB0_28:
	movq	272(%rax), %r14
	movq	(%rbx,%r14,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %r14
	shlq	$4, %r14
	movq	16(%r10,%r14), %rbx
	movq	40(%r10,%r14), %r10
	xorl	%r14d, %r14d
	.p2align	4
.LBB0_29:
	movss	(%r11,%r14,4), %xmm0
	movl	%ecx, (%r10,%r14,4)
	addss	(%rbx,%r14,4), %xmm0
	movss	%xmm0, (%rbx,%r14,4)
	leaq	1(%r14), %r15
	movq	%r15, %r14
	cmpq	%r15, %r9
	jne	.LBB0_29
	jmp	.LBB0_21
.LBB0_30:
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	query_for_each, .Lfunc_end0-query_for_each

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

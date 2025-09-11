	.file	"query_iter.a584ea5f3f585bcc-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4
	.type	query_iter,@function
query_iter:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	20(%rdi), %edx
	movq	248(%rax), %rsi
	movq	256(%rax), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	movzbl	264(%rax), %r8d
	xorl	%ebx, %ebx
	movl	$8, %r10d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	xorl	%ebp, %ebp
	jmp	.LBB0_5
.LBB0_1:
	xorl	%r11d, %r11d
.LBB0_2:
	movq	272(%rax), %r15
	movq	(%rbx,%r15,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %r15
	shlq	$4, %r15
	movq	16(%r14,%r15), %rbx
	movq	40(%r14,%r15), %r14
	xorl	%ebp, %ebp
.LBB0_3:
	movl	%ebp, %r13d
.LBB0_4:
	leaq	(%rbx,%r13,4), %r15
	leaq	(%r14,%r13,4), %r12
	leaq	(%r11,%r13,4), %r13
	incl	%ebp
	movss	(%r13), %xmm0
	movl	%edx, (%r12)
	addss	(%r15), %xmm0
	movss	%xmm0, (%r15)
.LBB0_5:
	testb	%r8b, %r8b
	je	.LBB0_12
	cmpl	%r9d, %ebp
	jne	.LBB0_3
	.p2align	4
.LBB0_7:
	cmpq	%rdi, %rsi
	je	.LBB0_23
	movl	(%rsi), %r9d
	addq	$4, %rsi
	movq	416(%rcx), %r11
	leaq	(%r9,%r9,8), %rbx
	movq	16(%r11,%rbx,8), %r9
	testq	%r9, %r9
	je	.LBB0_7
	leaq	(%r11,%rbx,8), %r15
	movq	280(%rax), %r11
	movq	24(%r15), %r14
	movq	56(%r15), %rbx
	cmpq	64(%r15), %r11
	jae	.LBB0_1
	movq	(%rbx,%r11,8), %r11
	testq	%r11, %r11
	je	.LBB0_1
	notq	%r11
	leaq	(%r11,%r11,2), %r11
	shlq	$4, %r11
	movq	16(%r14,%r11), %r11
	jmp	.LBB0_2
	.p2align	4
.LBB0_12:
	cmpl	%r9d, %ebp
	jne	.LBB0_22
	.p2align	4
.LBB0_13:
	cmpq	%rdi, %rsi
	je	.LBB0_23
	movl	(%rsi), %r9d
	addq	$4, %rsi
	movq	256(%rcx), %r10
	leaq	(%r9,%r9,4), %r11
	shlq	$5, %r11
	movq	88(%r10,%r11), %r9
	testq	%r9, %r9
	je	.LBB0_13
	addq	%r11, %r10
	movl	148(%r10), %r11d
	movq	416(%rcx), %r15
	leaq	(%r11,%r11,8), %r12
	movq	280(%rax), %r11
	movq	24(%r15,%r12,8), %r14
	movq	56(%r15,%r12,8), %rbx
	cmpq	64(%r15,%r12,8), %r11
	jae	.LBB0_20
	movq	(%rbx,%r11,8), %r11
	testq	%r11, %r11
	je	.LBB0_20
	notq	%r11
	leaq	(%r11,%r11,2), %r11
	shlq	$4, %r11
	movq	16(%r14,%r11), %r11
	jmp	.LBB0_21
.LBB0_20:
	xorl	%r11d, %r11d
.LBB0_21:
	movq	272(%rax), %r15
	movq	(%rbx,%r15,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %r15
	shlq	$4, %r15
	movq	16(%r14,%r15), %rbx
	movq	40(%r14,%r15), %r14
	movq	80(%r10), %r10
	xorl	%ebp, %ebp
.LBB0_22:
	movl	%ebp, %r15d
	shlq	$4, %r15
	movl	8(%r10,%r15), %r13d
	notl	%r13d
	jmp	.LBB0_4
.LBB0_23:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

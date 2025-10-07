	.file	"query_for_each_sparse.735c915595b4a262-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4
	.type	query_for_each,@function
query_for_each:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rax
	movq	272(%r8), %rcx
	movq	280(%r8), %rdx
	movq	400(%rax), %rsi
	cmpq	%rsi, %rcx
	jae	.LBB0_3
	movq	392(%rax), %r9
	movq	(%r9,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	addq	344(%rax), %rcx
	cmpq	%rsi, %rdx
	jb	.LBB0_4
	jmp	.LBB0_8
.LBB0_3:
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdx
	jae	.LBB0_8
.LBB0_4:
	movq	392(%rax), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_8
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	addq	344(%rax), %rdx
	jmp	.LBB0_9
.LBB0_8:
	xorl	%edx, %edx
.LBB0_9:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	256(%r8), %r9
	testq	%r9, %r9
	je	.LBB0_11
	cmpb	$0, 264(%r8)
	je	.LBB0_12
.LBB0_11:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_12:
	.cfi_def_cfa_offset 56
	movl	20(%rdi), %esi
	movq	248(%r8), %rdi
	leaq	(%rdi,%r9,4), %r8
	movq	%r8, -16(%rsp)
	movl	$4294967295, %r9d
	movq	%rax, -8(%rsp)
	jmp	.LBB0_14
	.p2align	4
.LBB0_13:
	addq	$4, %rdi
	cmpq	-16(%rsp), %rdi
	movq	-8(%rsp), %rax
	je	.LBB0_11
.LBB0_14:
	movl	(%rdi), %r10d
	leaq	(%r10,%r10,4), %r10
	shlq	$5, %r10
	movq	256(%rax), %rbx
	movq	416(%rax), %r14
	movl	148(%rbx,%r10), %r11d
	leaq	(%r11,%r11,8), %r15
	movq	88(%rbx,%r10), %r11
	cmpl	%r11d, 16(%r14,%r15,8)
	jne	.LBB0_19
	testq	%r11, %r11
	je	.LBB0_13
	testl	%r11d, %r11d
	je	.LBB0_13
	leaq	(%r14,%r15,8), %rax
	movq	8(%rax), %r10
	movl	%r11d, %r11d
	xorl	%ebx, %ebx
	.p2align	4
.LBB0_18:
	movl	(%r10,%rbx,8), %eax
	incq	%rbx
	xorq	%r9, %rax
	movq	80(%rcx), %r8
	movl	(%r8,%rax,4), %r8d
	notl	%r8d
	movq	8(%rcx), %r14
	imulq	%r8, %r14
	movq	16(%rcx), %r15
	movq	40(%rcx), %r12
	movq	16(%rdx), %r13
	movq	80(%rdx), %rbp
	movl	(%rbp,%rax,4), %eax
	notl	%eax
	imulq	8(%rdx), %rax
	movss	(%r13,%rax), %xmm0
	movl	%esi, (%r12,%r8,4)
	addss	(%r15,%r14), %xmm0
	movss	%xmm0, (%r15,%r14)
	cmpq	%rbx, %r11
	jne	.LBB0_18
	jmp	.LBB0_13
	.p2align	4
.LBB0_19:
	testq	%r11, %r11
	je	.LBB0_13
	testl	%r11d, %r11d
	je	.LBB0_13
	addq	%r10, %rbx
	movq	80(%rbx), %r10
	movl	%r11d, %r11d
	xorl	%ebx, %ebx
	.p2align	4
.LBB0_22:
	movl	(%r10), %r14d
	xorq	%r9, %r14
	movq	80(%rcx), %r15
	movl	(%r15,%r14,4), %r15d
	notl	%r15d
	movq	8(%rcx), %r12
	imulq	%r15, %r12
	movq	16(%rcx), %r13
	movq	40(%rcx), %rbp
	movq	16(%rdx), %r8
	movq	80(%rdx), %rax
	movl	(%rax,%r14,4), %eax
	notl	%eax
	imulq	8(%rdx), %rax
	movss	(%r8,%rax), %xmm0
	movl	%esi, (%rbp,%r15,4)
	addss	(%r13,%r12), %xmm0
	incq	%rbx
	movss	%xmm0, (%r13,%r12)
	addq	$16, %r10
	cmpq	%rbx, %r11
	jne	.LBB0_22
	jmp	.LBB0_13
.Lfunc_end0:
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

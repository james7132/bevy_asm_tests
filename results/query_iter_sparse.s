	.text
	.file	"query_iter_sparse.13622385-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
	.cfi_startproc
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	20(%rdi), %edx
	movl	%edx, 4(%rsp)
	movq	336(%rcx), %rdx
	movq	344(%rcx), %rsi
	movq	168(%rax), %rbx
	movq	216(%rax), %rdi
	shlq	$4, %rdx
	movq	8(%rdi,%rdx), %rdx
	leaq	(%rdx,%rdx,8), %rdx
	shlq	$4, %rdx
	leaq	(%rbx,%rdx), %r15
	shlq	$4, %rsi
	movq	8(%rdi,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	shlq	$4, %rsi
	leaq	(%rbx,%rsi), %r11
	movq	320(%rcx), %rdi
	movq	328(%rcx), %rcx
	leaq	(%rdi,%rcx,4), %rcx
	leaq	128(%rbx,%rdx), %rdx
	movq	%rdx, 24(%rsp)
	leaq	128(%rbx,%rsi), %rdx
	movq	%rdx, 16(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.0(%rip), %rdx
	movq	%rdx, 8(%rsp)
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:
	leaq	(%r12,%r12,2), %rdx
	movq	8(%rsp), %rbp
	movl	4(%rbp,%rdx,4), %edx
	movq	24(%rsp), %rbp
	movq	(%rbp), %rbx
	movl	4(%rbx,%rdx,8), %r13d
	movq	(%r15), %rbx
	imulq	%r13, %rbx
	movq	40(%r15), %r14
	movq	80(%r15), %r8
	movq	16(%rsp), %rbp
	movq	(%rbp), %r9
	movq	40(%r11), %r10
	movl	4(%r9,%rdx,8), %edx
	imulq	(%r11), %rdx
	incq	%r12
	movss	(%r10,%rdx), %xmm0
	movl	4(%rsp), %edx
	movl	%edx, (%r8,%r13,4)
	addss	(%r14,%rbx), %xmm0
	movss	%xmm0, (%r14,%rbx)
.LBB0_1:
	cmpq	%rsi, %r12
	jne	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%rcx, %rdi
	je	.LBB0_6
	movl	(%rdi), %edx
	addq	$4, %rdi
	movq	144(%rax), %rbx
	imulq	$152, %rdx, %rdx
	movq	136(%rbx,%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
	movq	128(%rbx,%rdx), %rdx
	movq	%rdx, 8(%rsp)
	xorl	%r12d, %r12d
	jmp	.LBB0_5
.LBB0_6:
	addq	$32, %rsp
	.cfi_def_cfa_offset 56
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
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.0,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.0,"a",@progbits
	.p2align	2
.Lanon.a01df851b6197f632189e2f0fa818bdd.0:
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.0, 0

	.section	".note.GNU-stack","",@progbits

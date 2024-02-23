	.text
	.file	"query_iter_sparse.37eddd5afdc18781-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	movq	(%rdi), %r8
	movq	8(%rdi), %rax
	movq	392(%r8), %rdx
	movq	400(%r8), %rsi
	movq	272(%rax), %r9
	movq	280(%rax), %r10
	xorl	%ecx, %ecx
	cmpq	%rdx, %r10
	jbe	.LBB0_4
	testq	%r9, %r9
	je	.LBB0_4
	shlq	$4, %rdx
	cmpq	$0, (%r9,%rdx)
	je	.LBB0_8
	movq	8(%r9,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	224(%rax), %rcx
.LBB0_4:
	xorl	%edx, %edx
	cmpq	%rsi, %r10
	jbe	.LBB0_10
.LBB0_5:
	testq	%r9, %r9
	je	.LBB0_10
	shlq	$4, %rsi
	cmpq	$0, (%r9,%rsi)
	je	.LBB0_9
	movq	8(%r9,%rsi), %rdx
	leaq	(%rdx,%rdx,8), %rdx
	shlq	$4, %rdx
	addq	224(%rax), %rdx
	jmp	.LBB0_10
.LBB0_8:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	cmpq	%rsi, %r10
	ja	.LBB0_5
	jmp	.LBB0_10
.LBB0_9:
	xorl	%edx, %edx
.LBB0_10:
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
	movl	20(%rdi), %esi
	movq	376(%r8), %rdi
	movq	384(%r8), %r8
	leaq	(%rdi,%r8,4), %r8
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.0(%rip), %r11
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:
	xorl	%r13d, %r13d
.LBB0_12:
	incq	%rbx
	movss	(%r13), %xmm0
	movl	%esi, (%r14)
	addss	(%r15), %xmm0
	movss	%xmm0, (%r15)
.LBB0_13:
	cmpq	%r10, %rbx
	jne	.LBB0_18
	movq	160(%rax), %r11
	movq	168(%rax), %rbx
	.p2align	4, 0x90
.LBB0_15:
	cmpq	%r8, %rdi
	je	.LBB0_28
	movl	(%rdi), %r10d
	addq	$4, %rdi
	imulq	$152, %r10, %r14
	addq	%r11, %r14
	cmpq	%r10, %rbx
	cmovbeq	%r9, %r14
	movq	88(%r14), %r10
	testq	%r10, %r10
	je	.LBB0_15
	movq	80(%r14), %r11
	xorl	%ebx, %ebx
.LBB0_18:
	movq	%rbx, %r14
	shlq	$4, %r14
	movl	(%r11,%r14), %r12d
	cmpq	136(%rcx), %r12
	jae	.LBB0_22
	movq	128(%rcx), %r13
	movl	$0, %r15d
	testq	%r13, %r13
	je	.LBB0_23
	cmpl	$0, (%r13,%r12,8)
	je	.LBB0_22
	movl	4(%r13,%r12,8), %r14d
	movq	8(%rcx), %r15
	imulq	%r14, %r15
	addq	16(%rcx), %r15
	shlq	$2, %r14
	addq	80(%rcx), %r14
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_22:
	xorl	%r15d, %r15d
.LBB0_23:
	cmpq	136(%rdx), %r12
	jae	.LBB0_11
	movq	128(%rdx), %rbp
	movl	$0, %r13d
	testq	%rbp, %rbp
	je	.LBB0_12
	cmpl	$0, (%rbp,%r12,8)
	je	.LBB0_11
	movl	4(%rbp,%r12,8), %r13d
	imulq	8(%rdx), %r13
	addq	16(%rdx), %r13
	jmp	.LBB0_12
.LBB0_28:
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
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.0:
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.0, 0

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"query_for_each_sparse.f6da20628bc8508d-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
	.cfi_startproc
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	movq	392(%rsi), %rdx
	movq	400(%rsi), %r8
	movq	272(%rax), %r9
	movq	280(%rax), %r10
	xorl	%ecx, %ecx
	cmpq	%rdx, %r10
	jbe	.LBB0_5
	testq	%r9, %r9
	je	.LBB0_5
	movq	(%r9,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	224(%rax), %rcx
.LBB0_5:
	xorl	%edx, %edx
	cmpq	%r8, %r10
	jbe	.LBB0_10
.LBB0_6:
	testq	%r9, %r9
	je	.LBB0_10
	movq	(%r9,%r8,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_8
	notq	%rdx
	leaq	(%rdx,%rdx,8), %rdx
	shlq	$4, %rdx
	addq	224(%rax), %rdx
	jmp	.LBB0_10
.LBB0_3:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	cmpq	%r8, %r10
	ja	.LBB0_6
	jmp	.LBB0_10
.LBB0_8:
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
	movq	384(%rsi), %r8
	testq	%r8, %r8
	je	.LBB0_16
	movl	20(%rdi), %edi
	movq	376(%rsi), %rsi
	leaq	(%rsi,%r8,4), %r8
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_15:
	addq	$4, %rsi
	cmpq	%r8, %rsi
	je	.LBB0_16
.LBB0_12:
	movl	(%rsi), %r10d
	leaq	(%r10,%r10,4), %r11
	shlq	$5, %r11
	addq	160(%rax), %r11
	cmpq	%r10, 168(%rax)
	movl	$0, %r9d
	cmovbeq	%r9, %r11
	movq	88(%r11), %r10
	testq	%r10, %r10
	je	.LBB0_15
	movq	80(%r11), %r11
	.p2align	4, 0x90
.LBB0_14:
	movl	(%r11), %ebx
	movq	128(%rcx), %r14
	movl	4(%r14,%rbx,8), %r14d
	movq	8(%rcx), %r15
	imulq	%r14, %r15
	movq	16(%rcx), %r12
	movq	80(%rcx), %r13
	movq	16(%rdx), %rbp
	movq	128(%rdx), %r9
	movl	4(%r9,%rbx,8), %r9d
	imulq	8(%rdx), %r9
	movss	(%rbp,%r9), %xmm0
	movl	%edi, (%r13,%r14,4)
	addss	(%r12,%r15), %xmm0
	movss	%xmm0, (%r12,%r15)
	addq	$16, %r11
	decq	%r10
	jne	.LBB0_14
	jmp	.LBB0_15
.LBB0_16:
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
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

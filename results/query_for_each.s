	.text
	.file	"query_for_each.45f5fcdcdfca2538-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
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
	movq	264(%rax), %r8
	testq	%r8, %r8
	je	.LBB0_6
	movq	8(%rdi), %rcx
	movl	20(%rdi), %edx
	movq	248(%rax), %rsi
	leaq	(%rsi,%r8,4), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_5:
	addq	$4, %rsi
	cmpq	%rdi, %rsi
	je	.LBB0_6
.LBB0_2:
	movl	(%rsi), %r9d
	leaq	(%r9,%r9,8), %r10
	shlq	$3, %r10
	addq	288(%rcx), %r10
	cmpq	%r9, 304(%rcx)
	cmovbeq	%r8, %r10
	movq	64(%r10), %r9
	testq	%r9, %r9
	je	.LBB0_5
	movq	296(%rax), %r11
	movq	304(%rax), %rbx
	movq	(%r10), %r14
	movq	32(%r10), %r15
	shlq	$4, %r11
	movq	8(%r15,%r11), %r10
	leaq	(%r10,%r10,2), %r11
	shlq	$5, %r11
	movq	16(%r14,%r11), %r10
	movq	72(%r14,%r11), %r11
	shlq	$4, %rbx
	movq	8(%r15,%rbx), %rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$5, %rbx
	movq	16(%r14,%rbx), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_4:
	movl	%r14d, %r15d
	shlq	$2, %r15
	movss	(%rbx,%r15), %xmm0
	movl	%edx, (%r11,%r15)
	addss	(%r10,%r15), %xmm0
	leaq	1(%r14), %r12
	movss	%xmm0, (%r10,%r15)
	movq	%r12, %r14
	cmpq	%r12, %r9
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:
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
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

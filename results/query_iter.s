	.text
	.file	"query_iter.6857d8b1031b9902-cgu.0"
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
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	20(%rdi), %edx
	movq	248(%rax), %rsi
	movq	264(%rax), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	cmpq	%r9, %r14
	jne	.LBB0_7
.LBB0_2:
	movq	288(%rcx), %r11
	movq	304(%rcx), %r14
	movq	296(%rax), %r10
	movq	304(%rax), %rbx
	.p2align	4, 0x90
.LBB0_3:
	cmpq	%rdi, %rsi
	je	.LBB0_8
	movl	(%rsi), %r9d
	addq	$4, %rsi
	cmpq	%r9, %r14
	leaq	(%r9,%r9,8), %r9
	leaq	(%r11,%r9,8), %r15
	cmovbeq	%r8, %r15
	movq	64(%r15), %r9
	testq	%r9, %r9
	je	.LBB0_3
	movq	32(%r15), %r14
	shlq	$4, %r10
	movq	(%r15), %r15
	movq	8(%r14,%r10), %r10
	leaq	(%r10,%r10,2), %r11
	shlq	$5, %r11
	movq	16(%r15,%r11), %r10
	movq	72(%r15,%r11), %r11
	shlq	$4, %rbx
	movq	8(%r14,%rbx), %rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$5, %rbx
	movq	16(%r15,%rbx), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_7:
	testq	%r10, %r10
	je	.LBB0_8
.LBB0_6:
	movl	%r14d, %r15d
	shlq	$2, %r15
	incq	%r14
	movss	(%rbx,%r15), %xmm0
	movl	%edx, (%r11,%r15)
	addss	(%r10,%r15), %xmm0
	movss	%xmm0, (%r10,%r15)
	cmpq	%r9, %r14
	jne	.LBB0_7
	jmp	.LBB0_2
.LBB0_8:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

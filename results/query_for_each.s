	.text
	.file	"query_for_each.be4c3b3d2679d155-cgu.0"
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
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %r8
	movq	264(%r8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_6
	movq	8(%rdi), %rax
	movl	20(%rdi), %ecx
	movq	248(%r8), %rdx
	leaq	(%rdx,%rsi,4), %rsi
	movq	296(%r8), %rdi
	movq	304(%r8), %r8
	xorl	%r9d, %r9d
	shlq	$4, %rdi
	shlq	$4, %r8
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	je	.LBB0_6
.LBB0_3:
	movl	(%rdx), %r10d
	leaq	(%r10,%r10,8), %r11
	shlq	$3, %r11
	addq	288(%rax), %r11
	cmpq	%r10, 304(%rax)
	cmovbeq	%r9, %r11
	movq	64(%r11), %r10
	testq	%r10, %r10
	je	.LBB0_2
	movq	(%r11), %r14
	movq	32(%r11), %r15
	movq	8(%r15,%rdi), %r11
	leaq	(%r11,%r11,2), %rbx
	shlq	$5, %rbx
	movq	16(%r14,%rbx), %r11
	movq	72(%r14,%rbx), %rbx
	movq	8(%r15,%r8), %r15
	leaq	(%r15,%r15,2), %r15
	shlq	$5, %r15
	movq	16(%r14,%r15), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_5:
	movl	%r15d, %r12d
	shlq	$2, %r12
	movss	(%r14,%r12), %xmm0
	movl	%ecx, (%rbx,%r12)
	addss	(%r11,%r12), %xmm0
	leaq	1(%r15), %r13
	movss	%xmm0, (%r11,%r12)
	movq	%r13, %r15
	cmpq	%r13, %r10
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_6:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
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

	.text
	.file	"query_for_each.654633bb-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	8(%rdi), %rax
	movq	304(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB0_6
	movq	(%rdi), %r10
	movl	20(%rdi), %r15d
	movq	296(%rax), %r14
	leaq	(%r14,%rdx,4), %r11
	movq	336(%rax), %r8
	movq	344(%rax), %r9
	shlq	$4, %r8
	shlq	$4, %r9
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%r11, %r14
	je	.LBB0_6
.LBB0_3:
	movl	(%r14), %edx
	addq	$4, %r14
	movq	304(%r10), %rax
	leaq	(%rdx,%rdx,8), %rdx
	movq	64(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB0_2
	movq	(%rax,%rdx,8), %rbx
	movq	32(%rax,%rdx,8), %rdx
	movq	8(%rdx,%r8), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$5, %rsi
	movq	40(%rbx,%rsi), %rax
	movq	80(%rbx,%rsi), %rsi
	movq	8(%rdx,%r9), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	40(%rbx,%rdx), %rbx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_5:
	movl	%edx, %ecx
	shlq	$2, %rcx
	movss	(%rbx,%rcx), %xmm0
	movl	%r15d, (%rsi,%rcx)
	addss	(%rax,%rcx), %xmm0
	leaq	1(%rdx), %rbp
	movss	%xmm0, (%rax,%rcx)
	movq	%rbp, %rdx
	cmpq	%rbp, %rdi
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_6:
	popq	%rbx
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

	.section	".note.GNU-stack","",@progbits

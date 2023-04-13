	.text
	.file	"query_iter.ed0a0f3b-cgu.0"
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
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %r9
	movl	20(%rdi), %r8d
	movq	296(%r9), %rsi
	movq	304(%r9), %rcx
	leaq	(%rsi,%rcx,4), %rdi
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:
	movl	%ebx, %ecx
	shlq	$2, %rcx
	incq	%rbx
	movss	(%r11,%rcx), %xmm0
	movl	%r8d, (%r10,%rcx)
	addss	(%r12,%rcx), %xmm0
	movss	%xmm0, (%r12,%rcx)
.LBB0_1:
	cmpq	%rdx, %rbx
	jne	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%rdi, %rsi
	je	.LBB0_6
	movl	(%rsi), %edx
	addq	$4, %rsi
	movq	304(%rax), %rcx
	leaq	(%rdx,%rdx,8), %rbx
	movq	64(%rcx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_2
	leaq	(%rcx,%rbx,8), %r10
	movq	336(%r9), %r11
	movq	344(%r9), %r14
	movq	32(%rcx,%rbx,8), %r15
	shlq	$4, %r11
	movq	(%r10), %rbx
	movq	8(%r15,%r11), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	40(%rbx,%rcx), %r12
	movq	80(%rbx,%rcx), %r10
	shlq	$4, %r14
	movq	8(%r15,%r14), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	40(%rbx,%rcx), %r11
	xorl	%ebx, %ebx
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
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

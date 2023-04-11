	.text
	.file	"query_get.31be4193-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$40, %rsp
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movl	16(%rdi), %r8d
	movl	20(%rdi), %r9d
	movl	%edx, %ebx
	leaq	(%rbx,%rbx,4), %rdx
	shlq	$2, %rdx
	addq	16(%rax), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r10d
	cmpq	%rbx, 24(%rax)
	cmovaq	%rdx, %rcx
	jbe	.LBB0_6
	cmpl	%esi, (%rcx)
	jne	.LBB0_6
	movl	4(%rcx), %r11d
	movl	$4294967295, %edx
	cmpq	%rdx, %r11
	je	.LBB0_6
	movq	8(%rdi), %r10
	movq	%r11, %rdi
	shrq	$5, %rdi
	cmpq	72(%r10), %rdi
	jae	.LBB0_5
	movq	64(%r10), %rdx
	movl	(%rdx,%rdi,4), %edx
	btl	%r11d, %edx
	jae	.LBB0_5
	movl	12(%rcx), %edx
	movl	16(%rcx), %edi
	movq	304(%rax), %rax
	leaq	(%rdx,%rdx,8), %rcx
	movq	336(%r10), %rdx
	movq	344(%r10), %rsi
	movq	(%rax,%rcx,8), %r10
	movq	32(%rax,%rcx,8), %rax
	shlq	$4, %rdx
	movq	8(%rax,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	shlq	$4, %rsi
	movq	8(%rax,%rsi), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$5, %rdx
	shlq	$2, %rdi
	movq	40(%r10,%rcx), %rax
	addq	%rdi, %rax
	movq	56(%r10,%rcx), %rsi
	addq	%rdi, %rsi
	movq	80(%r10,%rcx), %rbx
	addq	%rdi, %rbx
	addq	40(%r10,%rdx), %rdi
	jmp	.LBB0_8
.LBB0_5:
	xorl	%r10d, %r10d
.LBB0_6:
	shlq	$32, %rsi
	orq	%r10, %rsi
	xorl	%eax, %eax
.LBB0_8:
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r9d, 28(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rsp, %rax
	#APP
	#NO_APP
	addq	$40, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

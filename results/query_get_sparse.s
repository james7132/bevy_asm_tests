	.text
	.file	"query_get_sparse.4fbe732d-cgu.0"
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
	movl	%edx, %r11d
	leaq	(%r11,%r11,4), %rcx
	shlq	$2, %rcx
	addq	16(%rax), %rcx
	xorl	%edx, %edx
	movl	$1, %ebx
	cmpq	%r11, 24(%rax)
	cmovaq	%rcx, %rdx
	jbe	.LBB0_6
	cmpl	%esi, (%rdx)
	jne	.LBB0_6
	movl	4(%rdx), %r10d
	testq	%r10, %r10
	je	.LBB0_6
	movq	8(%rdi), %rcx
	movq	%r10, %rdx
	shrq	$5, %rdx
	cmpq	72(%rcx), %rdx
	jae	.LBB0_5
	movq	64(%rcx), %rdi
	movl	(%rdi,%rdx,4), %edx
	btl	%r10d, %edx
	jae	.LBB0_5
	movq	336(%rcx), %rdx
	movq	344(%rcx), %rcx
	movq	168(%rax), %rdi
	movq	216(%rax), %rax
	shlq	$4, %rdx
	movq	8(%rax,%rdx), %rdx
	leaq	(%rdx,%rdx,8), %rdx
	shlq	$4, %rdx
	shlq	$4, %rcx
	movq	8(%rax,%rcx), %rax
	leaq	(%rax,%rax,8), %r10
	shlq	$4, %r10
	movq	128(%rdi,%rdx), %rax
	movl	4(%rax,%r11,8), %ebx
	movq	(%rdi,%rdx), %rax
	imulq	%rbx, %rax
	addq	40(%rdi,%rdx), %rax
	movq	128(%rdi,%r10), %rcx
	movl	4(%rcx,%r11,8), %ecx
	shlq	$2, %rbx
	movq	56(%rdi,%rdx), %rsi
	addq	%rbx, %rsi
	addq	80(%rdi,%rdx), %rbx
	imulq	(%rdi,%r10), %rcx
	addq	40(%rdi,%r10), %rcx
	movq	%rbx, %r11
	jmp	.LBB0_8
.LBB0_5:
	xorl	%ebx, %ebx
.LBB0_6:
	shlq	$32, %rsi
	orq	%rbx, %rsi
	xorl	%eax, %eax
.LBB0_8:
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r9d, 28(%rsp)
	movq	%rcx, 32(%rsp)
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

	.file	"query_get.6ecd67ebca8d34a4-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4
	.type	query_get,@function
query_get:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	8(%rdi), %rdx
	movl	%esi, %eax
	movl	$4294967295, %r8d
	xorq	%rax, %r8
	shrq	$32, %rsi
	movl	$1, %ecx
	cmpq	16(%rdx), %r8
	jae	.LBB0_8
	leaq	(%r8,%r8,2), %r8
	shlq	$3, %r8
	addq	8(%rdx), %r8
	cmpl	%esi, 16(%r8)
	jne	.LBB0_8
	cmpl	$0, (%r8)
	je	.LBB0_8
	movq	8(%r8), %rcx
	movq	(%rdi), %r9
	movl	%ecx, %r10d
	cmpq	56(%r9), %r10
	jae	.LBB0_10
	movq	40(%r9), %r11
	shrl	$6, %r10d
	movq	(%r11,%r10,8), %r10
	btq	%rcx, %r10
	jae	.LBB0_10
	movl	4(%r8), %eax
	shrq	$32, %rcx
	movq	416(%rdx), %r11
	leaq	(%rcx,%rcx,8), %rbx
	movq	272(%r9), %rcx
	movq	280(%r9), %r9
	movq	24(%r11,%rbx,8), %rdx
	movq	56(%r11,%rbx,8), %r10
	movq	(%r10,%rcx,8), %rcx
	notq	%rcx
	leaq	(%rcx,%rcx,2), %r8
	shlq	$4, %r8
	movq	16(%rdx,%r8), %rcx
	movq	32(%rdx,%r8), %rsi
	movq	40(%rdx,%r8), %r8
	cmpq	64(%r11,%rbx,8), %r9
	jae	.LBB0_12
	movq	(%r10,%r9,8), %r9
	testq	%r9, %r9
	je	.LBB0_12
	notq	%r9
	leaq	(%r9,%r9,2), %r9
	shlq	$4, %r9
	movq	16(%rdx,%r9), %r10
	jmp	.LBB0_13
.LBB0_10:
	shlq	$32, %rcx
.LBB0_8:
	xorl	%edx, %edx
.LBB0_9:
	movq	%rdx, -40(%rsp)
	movq	%rcx, -32(%rsp)
	shlq	$32, %rsi
	orq	%rax, %rsi
	movq	%rsi, -24(%rsp)
	movl	%r9d, -16(%rsp)
	movl	%edi, -12(%rsp)
	movq	%r8, -8(%rsp)
	leaq	-40(%rsp), %rax
	#APP
	#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_12:
	.cfi_def_cfa_offset 16
	xorl	%r10d, %r10d
.LBB0_13:
	movl	16(%rdi), %r9d
	movl	20(%rdi), %edi
	notl	%eax
	leaq	(%rcx,%rax,4), %rdx
	leaq	(%rsi,%rax,4), %rcx
	leaq	(%r8,%rax,4), %rsi
	leaq	(%r10,%rax,4), %r8
	movl	%esi, %eax
	shrq	$32, %rsi
	jmp	.LBB0_9
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

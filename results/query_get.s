	.text
	.file	"query_get.f42e2661d8601812-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	8(%rdi), %r8
	movl	16(%rdi), %eax
	movl	20(%rdi), %ecx
	movl	%esi, %edx
	shrq	$32, %rsi
	movl	$1, %r9d
	cmpq	16(%r8), %rdx
	jae	.LBB0_6
	movq	8(%r8), %r10
	leaq	(%rdx,%rdx,4), %r11
	cmpl	%esi, (%r10,%r11,4)
	jne	.LBB0_6
	movl	4(%r10,%r11,4), %ebx
	movl	$4294967295, %r14d
	cmpq	%r14, %rbx
	je	.LBB0_6
	movq	(%rdi), %r9
	cmpq	%rbx, 56(%r9)
	jbe	.LBB0_9
	movq	40(%r9), %rdi
	movl	%ebx, %r14d
	shrl	$6, %r14d
	movq	(%rdi,%r14,8), %rdi
	btq	%rbx, %rdi
	jae	.LBB0_9
	leaq	(%r10,%r11,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$3, %rdi
	addq	296(%r8), %rdi
	xorl	%r10d, %r10d
	cmpq	304(%r8), %rsi
	cmovbq	%rdi, %r10
	movl	12(%rdx), %edi
	movq	216(%r9), %rdx
	movq	224(%r9), %rsi
	movq	24(%r10), %r8
	movq	56(%r10), %r9
	movq	(%r9,%rdx,8), %rdx
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	(%r9,%rsi,8), %rsi
	notq	%rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$5, %rsi
	shlq	$2, %rdi
	movq	16(%r8,%rdx), %r10
	addq	%rdi, %r10
	movq	56(%r8,%rdx), %r9
	addq	%rdi, %r9
	movq	80(%r8,%rdx), %r11
	addq	%rdi, %r11
	addq	16(%r8,%rsi), %rdi
	movabsq	$-4294967296, %r8
	andq	%r9, %r8
	movl	%r11d, %edx
	movq	%r11, %rsi
	shrq	$32, %rsi
	movl	%r9d, %r9d
	jmp	.LBB0_8
.LBB0_6:
	xorl	%r8d, %r8d
.LBB0_7:
	xorl	%r10d, %r10d
.LBB0_8:
	orq	%r9, %r8
	movq	%r10, -40(%rsp)
	movq	%r8, -32(%rsp)
	shlq	$32, %rsi
	orq	%rdx, %rsi
	movq	%rsi, -24(%rsp)
	movl	%eax, -16(%rsp)
	movl	%ecx, -12(%rsp)
	movq	%rdi, -8(%rsp)
	leaq	-40(%rsp), %rax
	#APP
	#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_9:
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB0_7
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

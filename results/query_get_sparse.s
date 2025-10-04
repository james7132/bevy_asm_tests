	.file	"query_get_sparse.815046f74cfebf8f-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4
	.type	query_get,@function
query_get:
	.cfi_startproc
	movq	8(%rdi), %r8
	movl	%esi, %edx
	movl	$4294967295, %eax
	xorq	%rdx, %rax
	shrq	$32, %rsi
	movl	$1, %ecx
	cmpq	16(%r8), %rax
	jae	.LBB0_8
	leaq	(%rax,%rax,2), %r9
	shlq	$3, %r9
	addq	8(%r8), %r9
	cmpl	%esi, 16(%r9)
	jne	.LBB0_8
	cmpl	$0, (%r9)
	je	.LBB0_8
	movl	8(%r9), %ecx
	movq	(%rdi), %r9
	cmpq	56(%r9), %rcx
	jae	.LBB0_10
	movq	40(%r9), %r10
	movl	%ecx, %r11d
	shrl	$6, %r11d
	movq	(%r10,%r11,8), %r10
	btq	%rcx, %r10
	jae	.LBB0_10
	movq	272(%r9), %rsi
	movq	280(%r9), %rcx
	movq	400(%r8), %rdx
	cmpq	%rdx, %rsi
	jae	.LBB0_11
	movq	392(%r8), %r9
	movq	(%r9,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_11
	notq	%rsi
	leaq	(%rsi,%rsi,8), %rsi
	shlq	$4, %rsi
	addq	344(%r8), %rsi
	cmpq	%rdx, %rcx
	jb	.LBB0_12
	jmp	.LBB0_16
.LBB0_10:
	shlq	$32, %rcx
.LBB0_8:
	xorl	%r8d, %r8d
.LBB0_9:
	movq	%r8, -40(%rsp)
	movq	%rcx, -32(%rsp)
	shlq	$32, %rsi
	orq	%rdx, %rsi
	movq	%rsi, -24(%rsp)
	movl	%r9d, -16(%rsp)
	movl	%edi, -12(%rsp)
	movq	%rax, -8(%rsp)
	leaq	-40(%rsp), %rax
	#APP
	#NO_APP
	retq
.LBB0_11:
	xorl	%esi, %esi
	cmpq	%rdx, %rcx
	jae	.LBB0_16
.LBB0_12:
	movq	392(%r8), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB0_16
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$4, %rdx
	addq	344(%r8), %rdx
	cmpq	136(%rsi), %rax
	jae	.LBB0_19
	jmp	.LBB0_17
.LBB0_16:
	xorl	%edx, %edx
	cmpq	136(%rsi), %rax
	jae	.LBB0_19
.LBB0_17:
	movq	128(%rsi), %rcx
	movl	(%rcx,%rax,4), %r10d
	testl	%r10d, %r10d
	je	.LBB0_19
	notl	%r10d
	movq	8(%rsi), %r8
	imulq	%r10, %r8
	addq	16(%rsi), %r8
	shlq	$2, %r10
	movq	56(%rsi), %rcx
	addq	%r10, %rcx
	addq	80(%rsi), %r10
	jmp	.LBB0_20
.LBB0_19:
	xorl	%r8d, %r8d
.LBB0_20:
	movl	16(%rdi), %r9d
	movq	128(%rdx), %rsi
	movl	(%rsi,%rax,4), %eax
	notl	%eax
	imulq	8(%rdx), %rax
	addq	16(%rdx), %rax
	movl	20(%rdi), %edi
	movq	%r10, %rsi
	shrq	$32, %rsi
	movl	%r10d, %edx
	jmp	.LBB0_9
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.90.0 (1159e78c4 2025-09-14)"
	.section	".note.GNU-stack","",@progbits

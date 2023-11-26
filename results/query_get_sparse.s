	.text
	.file	"query_get_sparse.c69c1888fedc5b37-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	8(%rdi), %r8
	movl	16(%rdi), %eax
	movl	20(%rdi), %ecx
	movl	%esi, %edx
	shrq	$32, %rsi
	movl	$1, %r10d
	cmpq	16(%r8), %rdx
	jae	.LBB0_10
	movq	(%r8), %r9
	leaq	(%rdx,%rdx,4), %r11
	cmpl	%esi, (%r9,%r11,4)
	jne	.LBB0_10
	movl	4(%r9,%r11,4), %r11d
	movl	$4294967295, %r9d
	cmpq	%r9, %r11
	je	.LBB0_10
	movq	(%rdi), %rdi
	movl	%r11d, %r10d
	shrl	$5, %r10d
	xorl	%r9d, %r9d
	cmpq	64(%rdi), %r10
	jae	.LBB0_14
	movq	48(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB0_14
	movl	(%rbx,%r10,4), %r9d
	btl	%r11d, %r9d
	jae	.LBB0_13
	movq	296(%rdi), %rsi
	movq	304(%rdi), %rdi
	movq	264(%r8), %r10
	movq	280(%r8), %r11
	xorl	%r9d, %r9d
	cmpq	%rsi, %r11
	jbe	.LBB0_16
	testq	%r10, %r10
	je	.LBB0_16
	shlq	$4, %rsi
	cmpq	$0, (%r10,%rsi)
	je	.LBB0_15
	movq	8(%r10,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %r9
	shlq	$4, %r9
	addq	216(%r8), %r9
	jmp	.LBB0_16
.LBB0_10:
	xorl	%r9d, %r9d
.LBB0_11:
	xorl	%edi, %edi
.LBB0_12:
	orq	%r10, %r9
	movq	%rdi, -40(%rsp)
	movq	%r9, -32(%rsp)
	shlq	$32, %rsi
	orq	%rdx, %rsi
	movq	%rsi, -24(%rsp)
	movl	%eax, -16(%rsp)
	movl	%ecx, -12(%rsp)
	movq	%r8, -8(%rsp)
	leaq	-40(%rsp), %rax
	#APP
	#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_13:
	.cfi_def_cfa_offset 16
	xorl	%r9d, %r9d
.LBB0_14:
	xorl	%r10d, %r10d
	jmp	.LBB0_11
.LBB0_15:
	xorl	%r9d, %r9d
.LBB0_16:
	xorl	%esi, %esi
	cmpq	%rdi, %r11
	jbe	.LBB0_21
	testq	%r10, %r10
	je	.LBB0_21
	shlq	$4, %rdi
	cmpq	$0, (%r10,%rdi)
	je	.LBB0_20
	movq	8(%r10,%rdi), %rsi
	leaq	(%rsi,%rsi,8), %rsi
	shlq	$4, %rsi
	addq	216(%r8), %rsi
	jmp	.LBB0_21
.LBB0_20:
	xorl	%esi, %esi
.LBB0_21:
	xorl	%edi, %edi
	cmpq	136(%r9), %rdx
	jae	.LBB0_27
	movq	120(%r9), %r8
	testq	%r8, %r8
	je	.LBB0_28
	cmpl	$0, (%r8,%rdx,8)
	je	.LBB0_26
	movl	4(%r8,%rdx,8), %r11d
	movq	8(%r9), %rdi
	imulq	%r11, %rdi
	addq	16(%r9), %rdi
	shlq	$2, %r11
	movq	48(%r9), %r10
	addq	%r11, %r10
	addq	72(%r9), %r11
	jmp	.LBB0_28
.LBB0_26:
	xorl	%edi, %edi
.LBB0_27:
.LBB0_28:
	xorl	%r8d, %r8d
	cmpq	136(%rsi), %rdx
	jae	.LBB0_33
	movq	120(%rsi), %r9
	testq	%r9, %r9
	je	.LBB0_33
	cmpl	$0, (%r9,%rdx,8)
	je	.LBB0_32
	movl	4(%r9,%rdx,8), %r8d
	imulq	8(%rsi), %r8
	addq	16(%rsi), %r8
	jmp	.LBB0_33
.LBB0_32:
	xorl	%r8d, %r8d
.LBB0_33:
	movabsq	$-4294967296, %r9
	andq	%r10, %r9
	movq	%r11, %rsi
	shrq	$32, %rsi
	movl	%r10d, %r10d
	movl	%r11d, %edx
	jmp	.LBB0_12
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"query_get_sparse.344579c115cdce59-cgu.0"
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
	movl	$1, %r9d
	cmpq	16(%r8), %rdx
	jae	.LBB0_9
	movq	8(%r8), %r10
	leaq	(%rdx,%rdx,4), %r11
	cmpl	%esi, (%r10,%r11,4)
	jne	.LBB0_9
	movl	4(%r10,%r11,4), %r10d
	movl	$4294967295, %r11d
	cmpq	%r11, %r10
	je	.LBB0_9
	movq	(%rdi), %rdi
	cmpq	%r10, 56(%rdi)
	jbe	.LBB0_12
	movq	40(%rdi), %r9
	movl	%r10d, %r11d
	shrl	$6, %r11d
	movq	(%r9,%r11,8), %r9
	btq	%r10, %r9
	jae	.LBB0_12
	movq	216(%rdi), %rsi
	movq	224(%rdi), %rdi
	movq	272(%r8), %r10
	movq	280(%r8), %r11
	xorl	%r9d, %r9d
	cmpq	%rsi, %r11
	jbe	.LBB0_14
	testq	%r10, %r10
	je	.LBB0_14
	movq	(%r10,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_13
	notq	%rsi
	leaq	(%rsi,%rsi,8), %r9
	shlq	$4, %r9
	addq	224(%r8), %r9
	jmp	.LBB0_14
.LBB0_9:
	xorl	%r8d, %r8d
.LBB0_10:
	xorl	%edi, %edi
.LBB0_11:
	orq	%r9, %r8
	movq	%rdi, -40(%rsp)
	movq	%r8, -32(%rsp)
	shlq	$32, %rsi
	orq	%rdx, %rsi
	movq	%rsi, -24(%rsp)
	movl	%eax, -16(%rsp)
	movl	%ecx, -12(%rsp)
	movq	%r10, -8(%rsp)
	leaq	-40(%rsp), %rax
	#APP
	#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_12:
	.cfi_def_cfa_offset 16
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB0_10
.LBB0_13:
	xorl	%r9d, %r9d
.LBB0_14:
	xorl	%esi, %esi
	cmpq	%rdi, %r11
	jbe	.LBB0_19
	testq	%r10, %r10
	je	.LBB0_19
	movq	(%r10,%rdi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_18
	notq	%rsi
	leaq	(%rsi,%rsi,8), %rsi
	shlq	$4, %rsi
	addq	224(%r8), %rsi
	jmp	.LBB0_19
.LBB0_18:
	xorl	%esi, %esi
.LBB0_19:
	xorl	%edi, %edi
	cmpq	136(%r9), %rdx
	jae	.LBB0_25
	movq	128(%r9), %r8
	testq	%r8, %r8
	je	.LBB0_26
	cmpl	$0, (%r8,%rdx,8)
	je	.LBB0_24
	movl	4(%r8,%rdx,8), %r11d
	movq	8(%r9), %rdi
	imulq	%r11, %rdi
	addq	16(%r9), %rdi
	shlq	$2, %r11
	movq	56(%r9), %rbx
	addq	%r11, %rbx
	addq	80(%r9), %r11
	jmp	.LBB0_26
.LBB0_24:
	xorl	%edi, %edi
.LBB0_25:
.LBB0_26:
	xorl	%r10d, %r10d
	cmpq	136(%rsi), %rdx
	jae	.LBB0_31
	movq	128(%rsi), %r8
	testq	%r8, %r8
	je	.LBB0_31
	cmpl	$0, (%r8,%rdx,8)
	je	.LBB0_30
	movl	4(%r8,%rdx,8), %r10d
	imulq	8(%rsi), %r10
	addq	16(%rsi), %r10
	jmp	.LBB0_31
.LBB0_30:
	xorl	%r10d, %r10d
.LBB0_31:
	movabsq	$-4294967296, %r8
	andq	%rbx, %r8
	movq	%r11, %rsi
	shrq	$32, %rsi
	movl	%ebx, %r9d
	movl	%r11d, %edx
	jmp	.LBB0_11
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

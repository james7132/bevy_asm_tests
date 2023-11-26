	.text
	.file	"query_get.6dc49ac774f6fb7e-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	8(%rdi), %r8
	movl	16(%rdi), %eax
	movl	20(%rdi), %ecx
	movl	%esi, %edx
	shrq	$32, %rsi
	movl	$1, %r9d
	cmpq	16(%r8), %rdx
	jae	.LBB0_7
	movq	(%r8), %r10
	leaq	(%rdx,%rdx,4), %r11
	cmpl	%esi, (%r10,%r11,4)
	jne	.LBB0_7
	movl	4(%r10,%r11,4), %ebx
	movl	$4294967295, %r14d
	cmpq	%r14, %rbx
	je	.LBB0_7
	movq	(%rdi), %r9
	movl	%ebx, %r14d
	shrl	$5, %r14d
	xorl	%edi, %edi
	cmpq	64(%r9), %r14
	jae	.LBB0_11
	movq	48(%r9), %r15
	testq	%r15, %r15
	je	.LBB0_11
	movl	(%r15,%r14,4), %edi
	btl	%ebx, %edi
	jae	.LBB0_10
	leaq	(%r10,%r11,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$3, %rdi
	addq	288(%r8), %rdi
	xorl	%r10d, %r10d
	cmpq	304(%r8), %rsi
	cmovbq	%rdi, %r10
	movl	12(%rdx), %r8d
	movq	296(%r9), %rdx
	movq	304(%r9), %rsi
	movq	(%r10), %rdi
	movq	32(%r10), %r9
	shlq	$4, %rdx
	movq	8(%r9,%rdx), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	shlq	$4, %rsi
	movq	8(%r9,%rsi), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$5, %rsi
	shlq	$2, %r8
	movq	16(%rdi,%rdx), %r10
	addq	%r8, %r10
	movq	48(%rdi,%rdx), %r9
	addq	%r8, %r9
	movq	72(%rdi,%rdx), %r11
	addq	%r8, %r11
	addq	16(%rdi,%rsi), %r8
	movabsq	$-4294967296, %rdi
	andq	%r9, %rdi
	movl	%r11d, %edx
	movq	%r11, %rsi
	shrq	$32, %rsi
	movl	%r9d, %r9d
	jmp	.LBB0_9
.LBB0_7:
	xorl	%edi, %edi
.LBB0_8:
	xorl	%r10d, %r10d
.LBB0_9:
	orq	%r9, %rdi
	movq	%r10, -40(%rsp)
	movq	%rdi, -32(%rsp)
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
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_10:
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
.LBB0_11:
	xorl	%r9d, %r9d
	jmp	.LBB0_8
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

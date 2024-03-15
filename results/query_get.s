	.text
	.file	"query_get.d2d08c143802fd58-cgu.0"
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
	jae	.LBB0_7
	movq	8(%r8), %r10
	leaq	(%rdx,%rdx,4), %r11
	cmpl	%esi, (%r10,%r11,4)
	jne	.LBB0_7
	cmpl	$-1, 4(%r10,%r11,4)
	je	.LBB0_7
	movq	(%rdi), %r9
	leaq	(%r10,%r11,4), %r10
	addq	$4, %r10
	movq	4(%r10), %r11
	movq	%r11, %rbx
	shrq	$37, %rbx
	xorl	%edi, %edi
	cmpq	32(%r9), %rbx
	jae	.LBB0_11
	movq	24(%r9), %r14
	testq	%r14, %r14
	je	.LBB0_11
	shrq	$32, %r11
	movl	(%r14,%rbx,4), %edi
	btl	%r11d, %edi
	jae	.LBB0_10
	leaq	(%r11,%r11,8), %rdx
	shlq	$3, %rdx
	addq	296(%r8), %rdx
	xorl	%esi, %esi
	cmpq	304(%r8), %r11
	cmovbq	%rdx, %rsi
	movl	12(%r10), %r8d
	movq	392(%r9), %rdx
	movq	400(%r9), %rdi
	movq	24(%rsi), %r9
	movq	56(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	(%rsi,%rdi,8), %rsi
	notq	%rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$5, %rsi
	shlq	$2, %r8
	movq	16(%r9,%rdx), %r10
	addq	%r8, %r10
	movq	56(%r9,%rdx), %r11
	addq	%r8, %r11
	movq	80(%r9,%rdx), %rbx
	addq	%r8, %rbx
	addq	16(%r9,%rsi), %r8
	movabsq	$-4294967296, %rdi
	andq	%r11, %rdi
	movl	%ebx, %edx
	movq	%rbx, %rsi
	shrq	$32, %rsi
	movl	%r11d, %r9d
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
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_10:
	.cfi_def_cfa_offset 24
	xorl	%edi, %edi
.LBB0_11:
	xorl	%r9d, %r9d
	jmp	.LBB0_8
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

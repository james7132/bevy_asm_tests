	.text
	.file	"query_get.7c71a028bdc095b6-cgu.0"
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
	movl	%edx, %edx
	cmpq	%rdx, 16(%r8)
	jbe	.LBB0_10
	movq	(%r8), %r10
	leaq	(%rdx,%rdx,4), %r11
	cmpl	%esi, (%r10,%r11,4)
	jne	.LBB0_10
	movl	4(%r10,%r11,4), %ebx
	movl	$4294967295, %r9d
	cmpq	%r9, %rbx
	je	.LBB0_10
	movq	(%rdi), %r9
	movq	%rbx, %rdi
	shrq	$5, %rdi
	cmpq	64(%r9), %rdi
	jae	.LBB0_7
	movq	48(%r9), %r14
	testq	%r14, %r14
	je	.LBB0_7
	movl	(%r14,%rdi,4), %edi
	btl	%ebx, %edi
	jae	.LBB0_7
	leaq	(%r10,%r11,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	leaq	(%rsi,%rsi,8), %r10
	shlq	$3, %r10
	addq	288(%r8), %r10
	movl	12(%rdx), %edi
	xorl	%edx, %edx
	cmpq	%rsi, 304(%r8)
	cmovaq	%r10, %rdx
	movq	296(%r9), %rsi
	movq	304(%r9), %r8
	movq	(%rdx), %r9
	movq	32(%rdx), %rdx
	shlq	$4, %rsi
	movq	8(%rdx,%rsi), %rsi
	leaq	(%rsi,%rsi,2), %r10
	shlq	$5, %r10
	shlq	$4, %r8
	movq	8(%rdx,%r8), %rdx
	leaq	(%rdx,%rdx,2), %r11
	shlq	$5, %r11
	shlq	$2, %rdi
	movq	16(%r9,%r10), %r8
	addq	%rdi, %r8
	movq	48(%r9,%r10), %rsi
	addq	%rdi, %rsi
	movq	72(%r9,%r10), %rdx
	addq	%rdi, %rdx
	addq	16(%r9,%r11), %rdi
	jmp	.LBB0_9
.LBB0_10:
	shlq	$32, %rsi
	orq	$1, %rsi
.LBB0_8:
	xorl	%r8d, %r8d
.LBB0_9:
	movq	%r8, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	%rdx, -24(%rsp)
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
.LBB0_7:
	.cfi_def_cfa_offset 24
	shlq	$32, %rsi
	jmp	.LBB0_8
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

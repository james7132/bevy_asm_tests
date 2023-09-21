	.text
	.file	"query_get_sparse.d04918bef90d0fe6-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
	.cfi_startproc
	movq	8(%rdi), %r8
	movl	16(%rdi), %eax
	movl	20(%rdi), %ecx
	movl	%edx, %edx
	cmpq	%rdx, 16(%r8)
	jbe	.LBB0_10
	movq	(%r8), %r9
	leaq	(%rdx,%rdx,4), %r10
	cmpl	%esi, (%r9,%r10,4)
	jne	.LBB0_10
	movl	4(%r9,%r10,4), %r9d
	movl	$4294967295, %r10d
	cmpq	%r10, %r9
	je	.LBB0_10
	movq	(%rdi), %rdi
	movq	%r9, %r10
	shrq	$5, %r10
	cmpq	64(%rdi), %r10
	jae	.LBB0_13
	movq	48(%rdi), %r11
	testq	%r11, %r11
	je	.LBB0_13
	movl	(%r11,%r10,4), %r10d
	btl	%r9d, %r10d
	jae	.LBB0_13
	movq	296(%rdi), %r9
	movq	304(%rdi), %rsi
	movq	264(%r8), %rdi
	movq	280(%r8), %r11
	xorl	%r10d, %r10d
	cmpq	%r9, %r11
	jbe	.LBB0_15
	testq	%rdi, %rdi
	je	.LBB0_15
	shlq	$4, %r9
	cmpq	$0, (%rdi,%r9)
	je	.LBB0_14
	movq	8(%rdi,%r9), %r9
	leaq	(%r9,%r9,8), %r10
	shlq	$4, %r10
	addq	216(%r8), %r10
	jmp	.LBB0_15
.LBB0_10:
	shlq	$32, %rsi
	orq	$1, %rsi
.LBB0_11:
	xorl	%edi, %edi
	movq	%rdx, %r8
.LBB0_12:
	movq	%rdi, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	%r8, -24(%rsp)
	movl	%eax, -16(%rsp)
	movl	%ecx, -12(%rsp)
	movq	%r10, -8(%rsp)
	leaq	-40(%rsp), %rax
	#APP
	#NO_APP
	retq
.LBB0_13:
	shlq	$32, %rsi
	jmp	.LBB0_11
.LBB0_14:
	xorl	%r10d, %r10d
.LBB0_15:
	xorl	%r9d, %r9d
	cmpq	%rsi, %r11
	jbe	.LBB0_20
	testq	%rdi, %rdi
	je	.LBB0_20
	shlq	$4, %rsi
	cmpq	$0, (%rdi,%rsi)
	je	.LBB0_19
	movq	8(%rdi,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %r9
	shlq	$4, %r9
	addq	216(%r8), %r9
	jmp	.LBB0_20
.LBB0_19:
	xorl	%r9d, %r9d
.LBB0_20:
	xorl	%edi, %edi
	cmpq	%rdx, 136(%r10)
	jbe	.LBB0_26
	movq	120(%r10), %r11
	testq	%r11, %r11
	je	.LBB0_27
	cmpl	$0, (%r11,%rdx,8)
	je	.LBB0_25
	movl	4(%r11,%rdx,8), %r8d
	movq	8(%r10), %rdi
	imulq	%r8, %rdi
	addq	16(%r10), %rdi
	shlq	$2, %r8
	movq	48(%r10), %rsi
	addq	%r8, %rsi
	addq	72(%r10), %r8
	jmp	.LBB0_27
.LBB0_25:
	xorl	%edi, %edi
.LBB0_26:
.LBB0_27:
	xorl	%r10d, %r10d
	cmpq	%rdx, 136(%r9)
	jbe	.LBB0_12
	movq	120(%r9), %r11
	testq	%r11, %r11
	je	.LBB0_12
	cmpl	$0, (%r11,%rdx,8)
	je	.LBB0_31
	movl	4(%r11,%rdx,8), %r10d
	imulq	8(%r9), %r10
	addq	16(%r9), %r10
	jmp	.LBB0_12
.LBB0_31:
	xorl	%r10d, %r10d
	jmp	.LBB0_12
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

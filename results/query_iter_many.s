	.text
	.file	"query_iter_many.b45b47373242f1c3-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	testq	%rdx, %rdx
	je	.LBB0_11
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	(%rsi,%rdx,8), %rax
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movl	$4294967295, %edi
	xorl	%r8d, %r8d
	leaq	-8(%rsp), %r9
.LBB0_2:
	movq	16(%rdx), %r10
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:
	addq	$8, %rsi
	cmpq	%rax, %rsi
	je	.LBB0_10
.LBB0_3:
	movq	(%rsi), %r14
	movl	%r14d, %ebx
	cmpq	%r10, %rbx
	jae	.LBB0_8
	shrq	$32, %r14
	movq	8(%rdx), %r11
	leaq	(%rbx,%rbx,4), %rbx
	cmpl	%r14d, (%r11,%rbx,4)
	jne	.LBB0_8
	movl	4(%r11,%rbx,4), %r14d
	cmpq	%rdi, %r14
	je	.LBB0_8
	cmpq	%r14, 56(%rcx)
	jbe	.LBB0_8
	movq	40(%rcx), %r15
	movl	%r14d, %r12d
	shrl	$6, %r12d
	movq	(%r15,%r12,8), %r15
	btq	%r14, %r15
	jae	.LBB0_8
	leaq	(%r11,%rbx,4), %r10
	addq	$4, %r10
	movl	8(%r10), %r11d
	leaq	(%r11,%r11,8), %rbx
	shlq	$3, %rbx
	addq	296(%rdx), %rbx
	cmpq	%r11, 304(%rdx)
	cmovbeq	%r8, %rbx
	movl	12(%r10), %r10d
	movq	216(%rcx), %r11
	movq	224(%rcx), %r14
	movq	24(%rbx), %r15
	movq	56(%rbx), %rbx
	movq	(%rbx,%r11,8), %r11
	notq	%r11
	leaq	(%r11,%r11,2), %r11
	shlq	$5, %r11
	movq	(%rbx,%r14,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$5, %rbx
	shlq	$2, %r10
	movq	16(%r15,%r11), %r11
	addq	%r10, %r11
	addq	16(%r15,%rbx), %r10
	movq	%r11, -8(%rsp)
	#APP
	#NO_APP
	movq	%r10, -8(%rsp)
	#APP
	#NO_APP
	addq	$8, %rsi
	cmpq	%rax, %rsi
	jne	.LBB0_2
.LBB0_10:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB0_11:
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

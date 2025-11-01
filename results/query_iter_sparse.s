	.file	"query_iter_sparse.5b3f6343cd4cb6f1-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r10
	movq	8(%rdi), %rax
	movq	272(%r10), %rcx
	movq	280(%r10), %rdx
	movq	400(%rax), %r8
	cmpq	%r8, %rcx
	jae	.LBB0_3
	movq	392(%rax), %rsi
	movq	(%rsi,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	addq	344(%rax), %rcx
	xorl	%esi, %esi
	cmpq	%r8, %rdx
	jb	.LBB0_4
	jmp	.LBB0_8
.LBB0_3:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpq	%r8, %rdx
	jae	.LBB0_8
.LBB0_4:
	movq	392(%rax), %r8
	movq	(%r8,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_8
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	addq	344(%rax), %rdx
	jmp	.LBB0_9
.LBB0_8:
	xorl	%edx, %edx
.LBB0_9:
	movl	20(%rdi), %edi
	movl	%edi, -4(%rsp)
	movq	248(%r10), %rdi
	movq	256(%r10), %r8
	leaq	(%rdi,%r8,4), %r8
	movzbl	264(%r10), %r9d
	movb	%r9b, -5(%rsp)
	movl	$8, %r11d
	xorl	%ebx, %ebx
	jmp	.LBB0_12
	.p2align	4
.LBB0_10:
	addq	%rbx, %r11
	movq	80(%r11), %r11
	xorl	%ebx, %ebx
.LBB0_11:
	movl	%ebx, %r14d
	shlq	$4, %r14
	movl	(%r11,%r14), %r14d
	notl	%r14d
	movq	80(%rcx), %r15
	movl	(%r15,%r14,4), %r15d
	notl	%r15d
	movq	8(%rcx), %r12
	imulq	%r15, %r12
	movq	16(%rcx), %r13
	movq	40(%rcx), %rbp
	movq	16(%rdx), %r9
	movq	80(%rdx), %r10
	movl	(%r10,%r14,4), %r10d
	notl	%r10d
	imulq	8(%rdx), %r10
	incl	%ebx
	movss	(%r9,%r10), %xmm0
	movl	-4(%rsp), %r9d
	movl	%r9d, (%rbp,%r15,4)
	addss	(%r13,%r12), %xmm0
	movss	%xmm0, (%r13,%r12)
.LBB0_12:
	cmpb	$0, -5(%rsp)
	jne	.LBB0_17
	cmpl	%esi, %ebx
	jne	.LBB0_11
	.p2align	4
.LBB0_14:
	cmpq	%r8, %rdi
	je	.LBB0_18
	movl	(%rdi), %esi
	addq	$4, %rdi
	movq	256(%rax), %r11
	leaq	(%rsi,%rsi,4), %rbx
	shlq	$5, %rbx
	movq	88(%r11,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_14
	jmp	.LBB0_10
	.p2align	4
.LBB0_16:
	addq	$4, %rdi
.LBB0_17:
	cmpq	%r8, %rdi
	jne	.LBB0_16
.LBB0_18:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.ident	"rustc version 1.93.0-nightly (82ae0ee64 2025-10-31)"
	.section	".note.GNU-stack","",@progbits

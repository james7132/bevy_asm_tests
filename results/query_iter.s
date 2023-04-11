	.text
	.file	"query_iter.ed0a0f3b-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r15
	movl	16(%rdi), %edx
	movl	20(%rdi), %r14d
	leaq	352(%r15), %rsi
	movq	%rbx, %rdi
	movl	%r14d, %ecx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::init_fetch@GOTPCREL(%rip)
	movq	296(%r15), %rax
	movq	304(%r15), %rcx
	leaq	(%rax,%rcx,4), %rcx
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	xorl	%edi, %edi
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:
	movl	%edi, %ebp
	shlq	$2, %rbp
	incq	%rdi
	movss	(%r9,%rbp), %xmm0
	movl	%r14d, (%r8,%rbp)
	addss	(%rsi,%rbp), %xmm0
	movss	%xmm0, (%rsi,%rbp)
.LBB0_1:
	cmpq	%rdx, %rdi
	jne	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%rcx, %rax
	je	.LBB0_6
	movl	(%rax), %edx
	addq	$4, %rax
	movq	304(%rbx), %rsi
	leaq	(%rdx,%rdx,8), %rdi
	movq	64(%rsi,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_2
	leaq	(%rsi,%rdi,8), %r8
	movq	336(%r15), %rbp
	movq	344(%r15), %r9
	movq	32(%rsi,%rdi,8), %r10
	shlq	$4, %rbp
	movq	(%r8), %rdi
	movq	8(%r10,%rbp), %rsi
	leaq	(%rsi,%rsi,2), %rbp
	shlq	$5, %rbp
	movq	40(%rdi,%rbp), %rsi
	movq	80(%rdi,%rbp), %r8
	shlq	$4, %r9
	movq	8(%r10,%r9), %rbp
	leaq	(%rbp,%rbp,2), %rbp
	shlq	$5, %rbp
	movq	40(%rdi,%rbp), %r9
	xorl	%edi, %edi
	jmp	.LBB0_5
.LBB0_6:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
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

	.section	".note.GNU-stack","",@progbits

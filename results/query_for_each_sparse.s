	.text
	.file	"query_for_each_sparse.27191a09-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	8(%rdi), %rax
	movq	328(%rax), %r9
	testq	%r9, %r9
	je	.LBB0_6
	movq	(%rdi), %rcx
	movl	20(%rdi), %r11d
	movq	336(%rax), %rdx
	movq	344(%rax), %rsi
	movq	168(%rcx), %rdi
	movq	%rcx, 8(%rsp)
	movq	216(%rcx), %rbx
	shlq	$4, %rdx
	movq	8(%rbx,%rdx), %rdx
	leaq	(%rdx,%rdx,8), %rcx
	shlq	$4, %rcx
	leaq	(%rdi,%rcx), %r8
	shlq	$4, %rsi
	movq	8(%rbx,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %rbx
	shlq	$4, %rbx
	leaq	(%rdi,%rbx), %r13
	movq	320(%rax), %r10
	leaq	(%r10,%r9,4), %rax
	movq	%rax, (%rsp)
	leaq	(%rdi,%rcx), %r15
	addq	$128, %r15
	leaq	(%rdi,%rbx), %r12
	addq	$128, %r12
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	cmpq	(%rsp), %r10
	je	.LBB0_6
.LBB0_3:
	movl	(%r10), %ecx
	addq	$4, %r10
	movq	8(%rsp), %rax
	movq	144(%rax), %r14
	imulq	$152, %rcx, %rbx
	movq	136(%r14,%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB0_2
	movq	128(%r14,%rbx), %rbx
	addq	$4, %rbx
	.p2align	4, 0x90
.LBB0_5:
	movl	(%rbx), %eax
	movq	(%r15), %rdi
	movl	4(%rdi,%rax,8), %edi
	movq	(%r8), %rsi
	imulq	%rdi, %rsi
	movq	40(%r8), %rdx
	movq	80(%r8), %r14
	movq	(%r12), %rbp
	movq	40(%r13), %r9
	movl	4(%rbp,%rax,8), %eax
	imulq	(%r13), %rax
	movss	(%r9,%rax), %xmm0
	movl	%r11d, (%r14,%rdi,4)
	addss	(%rdx,%rsi), %xmm0
	movss	%xmm0, (%rdx,%rsi)
	addq	$12, %rbx
	decq	%rcx
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_6:
	addq	$16, %rsp
	.cfi_def_cfa_offset 56
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
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

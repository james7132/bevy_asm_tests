	.text
	.file	"query_iter_sparse.84946c0f-cgu.0"
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
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %rbp
	movl	16(%rdi), %eax
	movl	%eax, 8(%rsp)
	movl	20(%rdi), %r12d
	movq	336(%rbp), %rsi
	movq	344(%rbp), %r15
	leaq	160(%rbx), %r13
	movq	bevy_ecs::storage::sparse_set::SparseSets::get@GOTPCREL(%rip), %r14
	movq	%r13, %rdi
	callq	*%r14
	movq	%rax, 48(%rsp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*%r14
	movq	%rax, 40(%rsp)
	leaq	352(%rbp), %rsi
	movq	%rbx, %rdi
	movl	8(%rsp), %edx
	movl	%r12d, 16(%rsp)
	movl	%r12d, %ecx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::init_fetch@GOTPCREL(%rip)
	movq	320(%rbp), %r12
	movq	328(%rbp), %rax
	leaq	(%r12,%rax,4), %r13
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.0(%rip), %rax
	movq	%rax, 32(%rsp)
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:
	movq	%rdx, 8(%rsp)
	leaq	(%rdx,%rdx,2), %rax
	movq	32(%rsp), %rcx
	movl	4(%rcx,%rax,4), %eax
	movl	%eax, 20(%rsp)
	movq	48(%rsp), %rbp
	movq	128(%rbp), %r15
	movl	%eax, 24(%rsp)
	leaq	24(%rsp), %rdi
	callq	*<u32 as bevy_ecs::storage::sparse_set::SparseSetIndex>::sparse_set_index@GOTPCREL(%rip)
	movl	4(%r15,%rax,8), %eax
	movq	%rax, 72(%rsp)
	movq	(%rbp), %r15
	imulq	%rax, %r15
	movq	40(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rbp), %rax
	movq	%rax, 64(%rsp)
	movq	40(%rsp), %rbp
	movq	128(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	20(%rsp), %eax
	movl	%eax, 28(%rsp)
	leaq	28(%rsp), %rdi
	callq	*<u32 as bevy_ecs::storage::sparse_set::SparseSetIndex>::sparse_set_index@GOTPCREL(%rip)
	movq	8(%rsp), %rdx
	movq	40(%rbp), %rcx
	movq	56(%rsp), %rsi
	movl	4(%rsi,%rax,8), %eax
	imulq	(%rbp), %rax
	incq	%rdx
	movss	(%rcx,%rax), %xmm0
	movl	16(%rsp), %eax
	movq	72(%rsp), %rcx
	movq	64(%rsp), %rsi
	movl	%eax, (%rsi,%rcx,4)
	movq	80(%rsp), %rax
	addss	(%rax,%r15), %xmm0
	movss	%xmm0, (%rax,%r15)
.LBB0_1:
	cmpq	%r14, %rdx
	jne	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%r13, %r12
	je	.LBB0_6
	movl	(%r12), %ecx
	addq	$4, %r12
	movq	144(%rbx), %rax
	imulq	$152, %rcx, %rcx
	movq	136(%rax,%rcx), %r14
	testq	%r14, %r14
	je	.LBB0_2
	movq	128(%rax,%rcx), %rax
	movq	%rax, 32(%rsp)
	xorl	%edx, %edx
	jmp	.LBB0_5
.LBB0_6:
	addq	$88, %rsp
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
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.0,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.0,"a",@progbits
	.p2align	2
.Lanon.a01df851b6197f632189e2f0fa818bdd.0:
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.0, 0

	.section	".note.GNU-stack","",@progbits

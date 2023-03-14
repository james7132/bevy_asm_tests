	.text
	.file	"query_for_each_sparse.8a1babba-cgu.0"
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r14
	movl	16(%rdi), %eax
	movl	%eax, (%rsp)
	movl	20(%rdi), %r12d
	movq	336(%r14), %rsi
	movq	344(%r14), %r13
	leaq	160(%rbx), %rbp
	movq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h97de2298059f36a3E@GOTPCREL(%rip), %r15
	movq	%rbp, %rdi
	callq	*%r15
	movq	%rax, 40(%rsp)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*%r15
	movq	%rax, 24(%rsp)
	leaq	352(%r14), %rsi
	movq	%rbx, 48(%rsp)
	movq	%rbx, %rdi
	movl	(%rsp), %edx
	movl	%r12d, %r15d
	movl	%r12d, %ecx
	callq	*_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h67fabdabaece8c19E@GOTPCREL(%rip)
	movq	328(%r14), %rax
	testq	%rax, %rax
	je	.LBB0_6
	movq	320(%r14), %rdx
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 32(%rsp)
	movq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17hbb24cba696ec0cbcE@GOTPCREL(%rip), %r14
	movl	%r15d, 12(%rsp)
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	movq	56(%rsp), %rdx
	cmpq	32(%rsp), %rdx
	je	.LBB0_6
.LBB0_3:
	movl	(%rdx), %ecx
	addq	$4, %rdx
	movq	%rdx, 56(%rsp)
	movq	48(%rsp), %rax
	movq	144(%rax), %rax
	imulq	$152, %rcx, %rcx
	movq	136(%rax,%rcx), %rbp
	testq	%rbp, %rbp
	movq	40(%rsp), %rdi
	je	.LBB0_2
	movq	128(%rax,%rcx), %r13
	addq	$4, %r13
	.p2align	4, 0x90
.LBB0_5:
	movl	(%r13), %r12d
	movq	128(%rdi), %rbx
	movl	%r12d, 16(%rsp)
	movq	%rdi, %r15
	leaq	16(%rsp), %rdi
	callq	*%r14
	movl	4(%rbx,%rax,8), %eax
	movq	%rax, 80(%rsp)
	movq	(%r15), %rbx
	imulq	%rax, %rbx
	movq	40(%r15), %rax
	movq	%rax, (%rsp)
	movq	80(%r15), %rax
	movq	%rax, 72(%rsp)
	movq	24(%rsp), %rax
	movq	128(%rax), %rax
	movq	%rax, 64(%rsp)
	movl	%r12d, 20(%rsp)
	movl	12(%rsp), %r12d
	leaq	20(%rsp), %rdi
	callq	*%r14
	movq	24(%rsp), %rsi
	movq	%r15, %rdi
	movq	40(%rsi), %rcx
	movq	64(%rsp), %rdx
	movl	4(%rdx,%rax,8), %eax
	imulq	(%rsi), %rax
	movss	(%rcx,%rax), %xmm0
	movq	80(%rsp), %rax
	movq	72(%rsp), %rcx
	movl	%r12d, (%rcx,%rax,4)
	movq	(%rsp), %rax
	addss	(%rax,%rbx), %xmm0
	movss	%xmm0, (%rax,%rbx)
	addq	$12, %r13
	decq	%rbp
	jne	.LBB0_5
	jmp	.LBB0_2
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
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

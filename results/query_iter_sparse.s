	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_iter_sparse.87be5244-cgu.0"
	.def	query_iter;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,query_iter
	.globl	query_iter
	.p2align	4, 0x90
query_iter:
.seh_proc query_iter
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	(%rcx), %r12
	movq	8(%rcx), %rdi
	movl	16(%rcx), %r14d
	movl	20(%rcx), %ebx
	movq	336(%rdi), %rdx
	movq	344(%rdi), %r15
	leaq	240(%r12), %rbp
	movq	%rbp, %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h45db64a136acb059E
	movq	%rax, 64(%rsp)
	movq	%rbp, %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h45db64a136acb059E
	movq	%rax, 56(%rsp)
	leaq	352(%rdi), %rdx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	movl	%ebx, 36(%rsp)
	movl	%ebx, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h2634c7fb1d1468e5E
	movq	312(%rdi), %rbp
	movq	328(%rdi), %rax
	leaq	(,%rax,4), %rdi
	addq	%rbp, %rdi
	leaq	anon.a01df851b6197f632189e2f0fa818bdd.0(%rip), %rax
	movq	%rax, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	movq	56(%rsp), %rsi
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:
	movq	%rdx, 96(%rsp)
	leaq	(%rdx,%rdx,2), %rax
	movq	48(%rsp), %rcx
	movl	4(%rcx,%rax,4), %r15d
	movq	64(%rsp), %r13
	movq	120(%r13), %rbx
	movl	%r15d, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h77f890244aa7bfc7E
	movl	4(%rbx,%rax,8), %eax
	movq	%rax, 80(%rsp)
	movq	(%r13), %rbx
	imulq	%rax, %rbx
	movq	32(%r13), %rax
	movq	%rax, 88(%rsp)
	movq	72(%r13), %r13
	movq	120(%rsi), %rax
	movq	%rax, 72(%rsp)
	movl	%r15d, 44(%rsp)
	leaq	44(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h77f890244aa7bfc7E
	movq	96(%rsp), %rdx
	movq	32(%rsi), %r8
	movq	72(%rsp), %rcx
	movl	4(%rcx,%rax,8), %eax
	imulq	(%rsi), %rax
	incq	%rdx
	movss	(%r8,%rax), %xmm0
	movl	36(%rsp), %eax
	movq	80(%rsp), %rcx
	movl	%eax, (%r13,%rcx,4)
	movq	88(%rsp), %rax
	addss	(%rax,%rbx), %xmm0
	movss	%xmm0, (%rax,%rbx)
.LBB0_1:
	cmpq	%r14, %rdx
	jne	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%rdi, %rbp
	je	.LBB0_6
	movl	(%rbp), %ecx
	addq	$4, %rbp
	movq	160(%r12), %rax
	imulq	$152, %rcx, %rcx
	movq	88(%rax,%rcx), %r14
	testq	%r14, %r14
	je	.LBB0_2
	movq	72(%rax,%rcx), %rax
	movq	%rax, 48(%rsp)
	xorl	%edx, %edx
	jmp	.LBB0_5
.LBB0_6:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.section	.rdata,"dr",one_only,anon.a01df851b6197f632189e2f0fa818bdd.0
	.p2align	2
anon.a01df851b6197f632189e2f0fa818bdd.0:

	.globl	_fltused

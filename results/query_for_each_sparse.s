	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_for_each_sparse.8a33145b-cgu.0"
	.def	query_for_each;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,query_for_each
	.globl	query_for_each
	.p2align	4, 0x90
query_for_each:
.seh_proc query_for_each
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
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	(%rcx), %r12
	movq	8(%rcx), %rdi
	movl	16(%rcx), %r15d
	movl	20(%rcx), %ebp
	movq	336(%rdi), %rdx
	movq	344(%rdi), %r14
	leaq	240(%r12), %rsi
	movq	%rsi, %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h45db64a136acb059E
	movq	%rax, %rbx
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h45db64a136acb059E
	leaq	352(%rdi), %rdx
	movq	%r12, 56(%rsp)
	movq	%r12, %rcx
	movq	%rax, %r12
	movl	%r15d, %r8d
	movl	%ebp, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h2634c7fb1d1468e5E
	movq	328(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_6
	movq	312(%rdi), %rdx
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 48(%rsp)
	leaq	36(%rsp), %rcx
	movl	%ebp, 40(%rsp)
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	movq	64(%rsp), %rdx
	cmpq	48(%rsp), %rdx
	je	.LBB0_6
.LBB0_3:
	movl	(%rdx), %edi
	addq	$4, %rdx
	movq	%rdx, 64(%rsp)
	movq	56(%rsp), %rax
	movq	160(%rax), %rax
	imulq	$152, %rdi, %rdx
	movq	88(%rax,%rdx), %r14
	testq	%r14, %r14
	je	.LBB0_2
	movq	72(%rax,%rdx), %r13
	addq	$4, %r13
	.p2align	4, 0x90
.LBB0_5:
	movl	(%r13), %ebp
	movq	120(%rbx), %r15
	movl	%ebp, 36(%rsp)
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h77f890244aa7bfc7E
	movl	4(%r15,%rax,8), %edi
	movq	(%rbx), %rsi
	imulq	%rdi, %rsi
	movq	32(%rbx), %r15
	movq	72(%rbx), %rax
	movq	%rax, 80(%rsp)
	movq	120(%r12), %rax
	movq	%rax, 72(%rsp)
	movl	%ebp, 44(%rsp)
	leaq	44(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h77f890244aa7bfc7E
	leaq	36(%rsp), %rcx
	movq	32(%r12), %rdx
	movq	72(%rsp), %rbp
	movl	4(%rbp,%rax,8), %eax
	movl	40(%rsp), %ebp
	imulq	(%r12), %rax
	movss	(%rdx,%rax), %xmm0
	movq	80(%rsp), %rax
	movl	%ebp, (%rax,%rdi,4)
	addss	(%r15,%rsi), %xmm0
	movss	%xmm0, (%r15,%rsi)
	addq	$12, %r13
	decq	%r14
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_6:
	addq	$88, %rsp
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

	.globl	_fltused

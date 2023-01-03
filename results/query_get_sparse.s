	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_get_sparse.8a9e7198-cgu.0"
	.def	query_get;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,query_get
	.globl	query_get
	.p2align	4, 0x90
query_get:
.seh_proc query_get
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
	movl	%r8d, %r13d
	movl	%edx, %ebx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movl	16(%rcx), %r15d
	movl	20(%rcx), %r12d
	leaq	8(%rdi), %rdx
	leaq	40(%rsp), %rbp
	movq	%rbp, %rcx
	movl	%ebx, %r8d
	movl	%r13d, %r9d
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, 40(%rsp)
	movl	$1, %eax
	je	.LBB0_2
	movl	44(%rsp), %eax
.LBB0_2:
	je	.LBB0_3
	movl	%eax, %ecx
	shrq	$5, %rcx
	cmpq	64(%rsi), %rcx
	jae	.LBB0_6
	movq	48(%rsi), %rdx
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jae	.LBB0_6
	movq	336(%rsi), %rdx
	movq	344(%rsi), %rbp
	leaq	240(%rdi), %rbx
	movq	%rbx, %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h45db64a136acb059E
	movq	%rax, %r14
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h45db64a136acb059E
	movq	%rax, %rbp
	movq	%rax, 80(%rsp)
	addq	$352, %rsi
	movq	%rdi, %rcx
	movq	%rsi, %rdx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h2634c7fb1d1468e5E
	movq	120(%r14), %rsi
	movl	%r13d, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h77f890244aa7bfc7E
	movl	4(%rsi,%rax,8), %esi
	movq	(%r14), %rdi
	imulq	%rsi, %rdi
	addq	32(%r14), %rdi
	shlq	$2, %rsi
	movq	48(%r14), %rbx
	addq	%rsi, %rbx
	addq	72(%r14), %rsi
	movq	120(%rbp), %r14
	movl	%r13d, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h77f890244aa7bfc7E
	movl	4(%r14,%rax,8), %eax
	leaq	40(%rsp), %rbp
	movq	80(%rsp), %rcx
	imulq	(%rcx), %rax
	addq	32(%rcx), %rax
	jmp	.LBB0_9
.LBB0_6:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_3:
	movl	$1, %eax
.LBB0_7:
	shlq	$32, %rbx
	orq	%rax, %rbx
	movl	%r13d, %esi
	xorl	%edi, %edi
.LBB0_9:
	movq	%rdi, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movl	%r15d, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movq	%rax, 72(%rsp)
	#APP
	#NO_APP
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


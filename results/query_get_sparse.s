	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_get_sparse.467abf3a-cgu.0"
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
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movl	%r8d, %r12d
	movl	%edx, %ebp
	movq	(%rcx), %rsi
	movq	8(%rcx), %r15
	movl	16(%rcx), %r13d
	movl	20(%rcx), %r14d
	leaq	8(%rsi), %rdx
	leaq	56(%rsp), %rdi
	movq	%rdi, %rcx
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	movl	%ebp, %eax
	movq	%r12, %rbx
	shlq	$32, %rbx
	orq	%rax, %rbx
	cmpq	$0, 56(%rsp)
	je	.LBB0_2
	movq	64(%rsp), %rbx
.LBB0_2:
	je	.LBB0_8
	movq	%rbx, %rax
	shrq	$5, %rax
	cmpq	64(%r15), %rax
	jae	.LBB0_7
	movq	48(%r15), %rcx
	movl	(%rcx,%rax,4), %eax
	btl	%ebx, %eax
	jae	.LBB0_7
	movq	72(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	160(%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	336(%r15), %rdx
	movq	344(%r15), %rax
	movq	%rax, 96(%rsp)
	movl	%r14d, %edi
	leaq	240(%rsi), %r14
	movq	%r14, %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17hd1d94803de0ce562E
	movq	%rax, %rbp
	movq	%r14, %rcx
	movq	96(%rsp), %rdx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17hd1d94803de0ce562E
	movq	%rax, %r14
	addq	$352, %r15
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movl	%r13d, %r8d
	movl	%edi, %r15d
	movl	%edi, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h20345ab9dc04a3a1E
	movq	104(%rsp), %rcx
	leaq	(%rbx,%rbx,4), %rax
	shlq	$5, %rax
	movq	112(%rsp), %rdx
	movq	104(%rdx,%rax), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB0_11
	movq	120(%rbp), %rsi
	movl	%r12d, 56(%rsp)
	leaq	56(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h4da07b09974712c1E
	movl	4(%rsi,%rax,8), %edi
	movq	(%rbp), %rsi
	imulq	%rdi, %rsi
	addq	32(%rbp), %rsi
	shlq	$2, %rdi
	movq	48(%rbp), %rbx
	addq	%rdi, %rbx
	addq	72(%rbp), %rdi
	movq	120(%r14), %rbp
	movl	%r12d, 56(%rsp)
	leaq	56(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h4da07b09974712c1E
	movl	4(%rbp,%rax,8), %eax
	imulq	(%r14), %rax
	addq	32(%r14), %rax
	movq	%rbx, 40(%rsp)
	movq	%rdi, 48(%rsp)
	leaq	56(%rsp), %rdi
	movl	%r15d, %r14d
	jmp	.LBB0_10
.LBB0_7:
	movl	$0, 40(%rsp)
	movl	%ebp, 44(%rsp)
	movl	%r12d, 48(%rsp)
	jmp	.LBB0_9
.LBB0_8:
	movl	$1, 40(%rsp)
	movq	%rbx, 44(%rsp)
.LBB0_9:
	xorl	%esi, %esi
.LBB0_10:
	movl	40(%rsp), %ecx
	movl	%ecx, 64(%rsp)
	movl	44(%rsp), %ecx
	movl	%ecx, 68(%rsp)
	movl	48(%rsp), %ecx
	movl	%ecx, 72(%rsp)
	movl	52(%rsp), %ecx
	movl	%ecx, 76(%rsp)
	movq	%rsi, 56(%rsp)
	movl	%r13d, 80(%rsp)
	movl	%r14d, 84(%rsp)
	movq	%rax, 88(%rsp)
	#APP
	#NO_APP
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB0_11:
	leaq	anon.161d7961c923b4e842c0f6e55225f2ee.1(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
	.seh_endproc

	.section	.rdata,"dr",one_only,anon.161d7961c923b4e842c0f6e55225f2ee.0
anon.161d7961c923b4e842c0f6e55225f2ee.0:
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\archetype.rs"

	.section	.rdata,"dr",one_only,anon.161d7961c923b4e842c0f6e55225f2ee.1
	.p2align	3
anon.161d7961c923b4e842c0f6e55225f2ee.1:
	.quad	anon.161d7961c923b4e842c0f6e55225f2ee.0
	.asciz	"b\000\000\000\000\000\000\000\245\001\000\000\t\000\000"


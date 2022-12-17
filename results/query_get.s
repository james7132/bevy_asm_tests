	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_get.45c1a2f2-cgu.0"
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
	movl	%r8d, %ebp
	movl	%edx, %edi
	movq	(%rcx), %rbx
	movq	8(%rcx), %r13
	movl	16(%rcx), %r12d
	movl	20(%rcx), %r15d
	leaq	8(%rbx), %rdx
	leaq	48(%rsp), %r14
	movq	%r14, %rcx
	movl	%edi, %r8d
	movl	%ebp, %r9d
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	movl	%edi, %eax
	movq	%rbp, %rsi
	shlq	$32, %rsi
	orq	%rax, %rsi
	cmpq	$0, 48(%rsp)
	je	.LBB0_2
	movq	56(%rsp), %rsi
.LBB0_2:
	je	.LBB0_8
	movq	%rsi, %rax
	shrq	$5, %rax
	cmpq	64(%r13), %rax
	jae	.LBB0_7
	movq	48(%r13), %rcx
	movl	(%rcx,%rax,4), %eax
	btl	%esi, %eax
	jae	.LBB0_7
	movq	64(%rsp), %rdi
	movq	160(%rbx), %rbp
	leaq	352(%r13), %rdx
	movq	%rbx, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h20345ab9dc04a3a1E
	leaq	(%rsi,%rsi,4), %rax
	shlq	$5, %rax
	movq	104(%rbp,%rax), %rdx
	cmpq	%rdx, %rdi
	jae	.LBB0_11
	movq	8(%rbp,%rax), %rcx
	movq	88(%rbp,%rax), %rax
	shlq	$4, %rdi
	movq	(%rax,%rdi), %rax
	movq	312(%rbx), %rdx
	leaq	(%rcx,%rcx,8), %rcx
	movq	336(%r13), %rbp
	movq	344(%r13), %rbx
	movq	(%rdx,%rcx,8), %rdi
	movq	32(%rdx,%rcx,8), %rcx
	shlq	$4, %rbp
	movq	8(%rcx,%rbp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	shlq	$4, %rbx
	movq	8(%rcx,%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$5, %rbp
	shlq	$2, %rax
	movq	32(%rdi,%rdx), %rcx
	addq	%rax, %rcx
	movq	48(%rdi,%rdx), %rbx
	addq	%rax, %rbx
	movq	72(%rdi,%rdx), %rdx
	addq	%rax, %rdx
	addq	32(%rdi,%rbp), %rax
	movq	%rbx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	jmp	.LBB0_10
.LBB0_7:
	movl	$0, 32(%rsp)
	movl	%edi, 36(%rsp)
	movl	%ebp, 40(%rsp)
	jmp	.LBB0_9
.LBB0_8:
	movl	$1, 32(%rsp)
	movq	%rsi, 36(%rsp)
.LBB0_9:
	xorl	%ecx, %ecx
.LBB0_10:
	movl	32(%rsp), %edx
	movl	%edx, 56(%rsp)
	movl	36(%rsp), %edx
	movl	%edx, 60(%rsp)
	movl	40(%rsp), %edx
	movl	%edx, 64(%rsp)
	movl	44(%rsp), %edx
	movl	%edx, 68(%rsp)
	movq	%rcx, 48(%rsp)
	movl	%r12d, 72(%rsp)
	movl	%r15d, 76(%rsp)
	movq	%rax, 80(%rsp)
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
.LBB0_11:
	leaq	anon.161d7961c923b4e842c0f6e55225f2ee.1(%rip), %r8
	movq	%rdi, %rcx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
	.seh_endproc

	.section	.rdata,"dr",one_only,anon.161d7961c923b4e842c0f6e55225f2ee.0
anon.161d7961c923b4e842c0f6e55225f2ee.0:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\archetype.rs"

	.section	.rdata,"dr",one_only,anon.161d7961c923b4e842c0f6e55225f2ee.1
	.p2align	3
anon.161d7961c923b4e842c0f6e55225f2ee.1:
	.quad	anon.161d7961c923b4e842c0f6e55225f2ee.0
	.asciz	"b\000\000\000\000\000\000\000\245\001\000\000\t\000\000"


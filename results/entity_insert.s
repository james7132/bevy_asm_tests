	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"entity_insert.f471b31e-cgu.0"
	.def	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1456b2a6ebbe8bafE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1456b2a6ebbe8bafE
	.p2align	4, 0x90
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1456b2a6ebbe8bafE:
.seh_proc _ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1456b2a6ebbe8bafE
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	(%rcx), %r14
	movq	16(%rcx), %rsi
	testq	%r14, %r14
	je	.LBB0_5
	movq	(%rsi), %r12
	cmpq	$-1, %r12
	je	.LBB0_5
	movq	8(%rcx), %r15
	movq	%r15, %rdi
	negq	%rdi
	negq	%r12
	movq	$-16, %rbx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:
	subq	%r15, %rdi
	leaq	(%r12,%rbx), %rax
	incq	%rax
	incq	%rbx
	cmpq	$-15, %rax
	je	.LBB0_5
.LBB0_3:
	movq	8(%rsi), %rax
	cmpb	$-128, 16(%rax,%rbx)
	jne	.LBB0_4
	movq	(%rsi), %rcx
	andq	%rbx, %rcx
	movb	$-1, 16(%rax,%rbx)
	movb	$-1, 16(%rcx,%rax)
	movq	8(%rsi), %rcx
	addq	%rdi, %rcx
	callq	*%r14
	decq	24(%rsi)
	jmp	.LBB0_4
.LBB0_5:
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andq	$-8, %rcx
	subq	%rdx, %rcx
	cmpq	$8, %rax
	cmovbq	%rax, %rcx
	subq	24(%rsi), %rcx
	movq	%rcx, 16(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.def	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h579c5dca1c8f9bc6E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h579c5dca1c8f9bc6E
	.p2align	4, 0x90
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h579c5dca1c8f9bc6E:
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_1
	movq	8(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB1_1:
	retq

	.def	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h5dbe157af6b6565fE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h5dbe157af6b6565fE
	.p2align	4, 0x90
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h5dbe157af6b6565fE:
	movq	%rcx, %rax
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB2_2
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB2_2
	movq	%rdx, %r8
	notq	%r8
	shrq	$63, %r8
	jmp	__rust_dealloc
.LBB2_2:
	retq

	.def	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h641429a8e3d09cb1E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h641429a8e3d09cb1E
	.p2align	4, 0x90
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h641429a8e3d09cb1E:
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_1
	movq	(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB3_1:
	retq

	.def	_ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE
	.p2align	4, 0x90
_ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE:
.seh_proc _ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	testq	%r8, %r8
	je	.LBB4_5
	movq	%r8, %rdi
	cmpq	$0, 16(%r9)
	je	.LBB4_3
	movq	8(%r9), %rdx
	testq	%rdx, %rdx
	je	.LBB4_3
	movq	(%r9), %rcx
	movq	%rdi, %r8
	movq	%rbx, %r9
	callq	__rust_realloc
	movq	%rbx, %rcx
	testq	%rax, %rax
	jne	.LBB4_12
	jmp	.LBB4_13
.LBB4_3:
	testq	%rbx, %rbx
	je	.LBB4_4
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	__rust_alloc
	movq	%rbx, %rcx
	testq	%rax, %rax
	je	.LBB4_13
.LBB4_12:
	movq	%rax, 8(%rsi)
	movq	%rcx, 16(%rsi)
	xorl	%eax, %eax
	jmp	.LBB4_7
.LBB4_5:
	movq	%rbx, 8(%rsi)
	movq	$0, 16(%rsi)
	jmp	.LBB4_6
.LBB4_4:
	xorl	%ecx, %ecx
	movq	%rdi, %rax
	testq	%rax, %rax
	jne	.LBB4_12
.LBB4_13:
	movq	%rbx, 8(%rsi)
	movq	%rdi, 16(%rsi)
.LBB4_6:
	movl	$1, %eax
.LBB4_7:
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h55bcda9bcadbbfa2E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h55bcda9bcadbbfa2E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h55bcda9bcadbbfa2E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h55bcda9bcadbbfa2E
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	incq	%rdx
	je	.LBB5_10
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	cmpq	$5, %rdx
	movl	$4, %edi
	cmovaeq	%rdx, %rdi
	movabsq	$115292150460684698, %rcx
	xorl	%r8d, %r8d
	cmpq	%rcx, %rdi
	setb	%r8b
	movq	%rdi, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB5_3
	movq	(%rsi), %rcx
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB5_4
.LBB5_3:
	movq	$0, 56(%rsp)
.LBB5_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB5_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB5_6
	testq	%rdx, %rdx
	jne	.LBB5_9
.LBB5_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB5_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB5_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB5_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6487664544eeb09aE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6487664544eeb09aE
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6487664544eeb09aE:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6487664544eeb09aE
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	incq	%rdx
	je	.LBB6_10
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	cmpq	$5, %rdx
	movl	$4, %edi
	cmovaeq	%rdx, %rdi
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	shrq	$60, %rcx
	sete	%r8b
	leaq	(,%rdi,8), %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB6_3
	movq	(%rsi), %rcx
	shlq	$3, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB6_4
.LBB6_3:
	movq	$0, 56(%rsp)
.LBB6_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB6_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB6_6
	testq	%rdx, %rdx
	jne	.LBB6_9
.LBB6_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB6_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB6_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB6_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h92a334b4639e5a78E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h92a334b4639e5a78E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h92a334b4639e5a78E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h92a334b4639e5a78E
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	incq	%rdx
	je	.LBB7_10
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	cmpq	$5, %rdx
	movl	$4, %edi
	cmovaeq	%rdx, %rdi
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	shrq	$58, %rcx
	sete	%r8b
	movq	%rdi, %rdx
	shlq	$5, %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB7_3
	movq	(%rsi), %rcx
	shlq	$5, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 56(%rsp)
.LBB7_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17hf6ddac88ac7a203eE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB7_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB7_6
	testq	%rdx, %rdx
	jne	.LBB7_9
.LBB7_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB7_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB7_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB7_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h79263a4fab3da94eE;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h79263a4fab3da94eE
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h79263a4fab3da94eE:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h79263a4fab3da94eE
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
	movq	%rcx, %r14
	movq	%rdx, 40(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	24(%rcx), %rbp
	movq	%rbp, %rcx
	incq	%rcx
	jne	.LBB8_2
.LBB8_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB8_30
.LBB8_2:
	movq	(%r14), %r13
	leaq	1(%r13), %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movq	%rdi, %rax
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %r13
	cmovbq	%r13, %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rdx, %rcx
	jbe	.LBB8_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB8_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rsi
	jmp	.LBB8_7
.LBB8_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hed3be36c1c693bc6E(%rip), %r8
	leaq	80(%rsp), %rdx
	movq	%r14, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
.LBB8_29:
	movabsq	$-9223372036854775807, %rbx
.LBB8_30:
	movq	%rbx, %rax
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
.LBB8_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB8_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rsi
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB8_30
	jmp	.LBB8_7
.LBB8_5:
	movq	%rax, %rcx
	movabsq	$2635249153387078803, %rdx
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	xorl	$63, %ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.LBB8_7:
	movl	$16, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB8_1
	movq	%rax, %rbx
	leaq	16(%rsi), %r12
	movq	%rax, %r15
	addq	%r12, %r15
	jb	.LBB8_1
	je	.LBB8_10
	movl	$16, %edx
	movq	%r15, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB8_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%r15, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB8_30
.LBB8_10:
	movl	$16, %eax
.LBB8_11:
	addq	%rax, %rbx
	movq	%rbx, %rcx
	movb	$-1, %dl
	movq	%r12, %r8
	callq	memset
	leaq	-1(%rsi), %rax
	movq	%rsi, %rcx
	shrq	$3, %rcx
	andq	$-8, %rsi
	subq	%rcx, %rsi
	cmpq	$8, %rax
	cmovbq	%rax, %rsi
	subq	%rbp, %rsi
	testq	%rdi, %rdi
	je	.LBB8_12
	movq	%rsi, 48(%rsp)
	movq	%rbp, 56(%rsp)
	movq	%rdi, 64(%rsp)
	movq	8(%r14), %rcx
	leaq	-16(%rcx), %rdi
	movq	40(%rsp), %rdx
	movq	%rdx, 72(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB8_19
	.p2align	4, 0x90
.LBB8_26:
	shrq	$57, %r10
	leaq	-16(%rbp), %rdx
	andq	%rax, %rdx
	movb	%r10b, (%rbx,%rbp)
	movb	%r10b, 16(%rdx,%rbx)
	movq	%r15, %rdx
	notq	%rdx
	shlq	$4, %rdx
	notq	%rbp
	shlq	$4, %rbp
	movdqu	(%rcx,%rdx), %xmm0
	movdqu	%xmm0, (%rbx,%rbp)
.LBB8_27:
	leaq	1(%r15), %rdx
	cmpq	%r13, %r15
	movq	%rdx, %r15
	je	.LBB8_28
.LBB8_19:
	cmpb	$0, (%rcx,%r15)
	js	.LBB8_27
	movq	%r15, %rdx
	shlq	$4, %rdx
	movq	%rdi, %rbp
	subq	%rdx, %rbp
	movq	(%rbp), %rsi
	movq	72(%rsp), %rdx
	movq	(%rdx), %r11
	movq	8(%rdx), %r8
	movq	%r11, %r12
	movabsq	$8317987319222330741, %rdx
	xorq	%rdx, %r12
	movq	%r8, %r10
	movabsq	$7237128888997146477, %rdx
	xorq	%rdx, %r10
	movabsq	$7816392313619706465, %rdx
	xorq	%rdx, %r11
	addq	%r10, %r12
	rolq	$13, %r10
	movabsq	$8387220255154660723, %rdx
	xorq	%rdx, %r8
	xorq	%r12, %r10
	rolq	$32, %r12
	xorq	%rsi, %r8
	addq	%r8, %r11
	rolq	$16, %r8
	xorq	%r11, %r8
	addq	%r8, %r12
	rolq	$21, %r8
	addq	%r10, %r11
	rolq	$17, %r10
	xorq	%r12, %r8
	xorq	%r11, %r10
	rolq	$32, %r11
	xorq	%rsi, %r12
	addq	%r10, %r12
	rolq	$13, %r10
	movq	%r8, %r9
	xorq	%r12, %r10
	rolq	$32, %r12
	movabsq	$576460752303423488, %rdx
	xorq	%rdx, %r9
	addq	%r9, %r11
	shrdq	$48, %r8, %r9
	xorq	%r11, %r9
	addq	%r9, %r12
	rolq	$21, %r9
	addq	%r10, %r11
	rolq	$17, %r10
	xorq	%r12, %r9
	xorq	%r11, %r10
	rolq	$32, %r11
	xorq	%rdx, %r12
	addq	%r10, %r12
	rolq	$13, %r10
	xorq	%r12, %r10
	rolq	$32, %r12
	xorq	$255, %r11
	addq	%r9, %r11
	rolq	$16, %r9
	xorq	%r11, %r9
	addq	%r9, %r12
	rolq	$21, %r9
	addq	%r10, %r11
	rolq	$17, %r10
	xorq	%r11, %r10
	rolq	$32, %r11
	xorq	%r12, %r9
	addq	%r10, %r12
	rolq	$13, %r10
	xorq	%r12, %r10
	rolq	$32, %r12
	addq	%r9, %r11
	rolq	$16, %r9
	xorq	%r11, %r9
	addq	%r9, %r12
	rolq	$21, %r9
	addq	%r10, %r11
	rolq	$17, %r10
	xorq	%r11, %r10
	rolq	$32, %r11
	xorq	%r12, %r9
	addq	%r10, %r12
	rolq	$13, %r10
	addq	%r9, %r11
	rolq	$16, %r9
	xorq	%r11, %r9
	rolq	$21, %r9
	xorq	%r12, %r10
	addq	%r10, %r11
	rolq	$17, %r10
	movq	%r11, %rdx
	rolq	$32, %rdx
	xorq	%r11, %r10
	xorq	%rdx, %r10
	xorq	%r9, %r10
	movq	%r10, %rsi
	andq	%rax, %rsi
	movdqu	(%rbx,%rsi), %xmm0
	pmovmskb	%xmm0, %ebp
	testl	%ebp, %ebp
	jne	.LBB8_24
	movq	%rdi, %rdx
	movl	$16, %edi
	.p2align	4, 0x90
.LBB8_22:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rbx,%rsi), %xmm0
	pmovmskb	%xmm0, %ebp
	addq	$16, %rdi
	testl	%ebp, %ebp
	je	.LBB8_22
	movq	%rdx, %rdi
.LBB8_24:
	bsfw	%bp, %dx
	movzwl	%dx, %ebp
	addq	%rsi, %rbp
	andq	%rax, %rbp
	cmpb	$0, (%rbx,%rbp)
	js	.LBB8_26
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebp
	jmp	.LBB8_26
.LBB8_28:
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	48(%rsp), %rax
	movq	%rax, 16(%r14)
	movq	56(%rsp), %rax
	movq	%rax, 24(%r14)
	testq	%r13, %r13
	movq	64(%rsp), %rdi
	jne	.LBB8_13
	jmp	.LBB8_29
.LBB8_12:
	movq	8(%r14), %rcx
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	%rsi, 16(%r14)
	movq	%rbp, 24(%r14)
.LBB8_13:
	movl	$16, %edx
	movq	%rdi, %rax
	mulq	%rdx
	addq	%rax, %r13
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r13
	je	.LBB8_30
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r13, %rdx
	callq	__rust_dealloc
	jmp	.LBB8_30
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h88846c4b1dca7341E;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h88846c4b1dca7341E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h88846c4b1dca7341E:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h88846c4b1dca7341E
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, %r15
	movq	%rdx, 40(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	24(%rcx), %r12
	movq	%r12, %rcx
	incq	%rcx
	jne	.LBB9_2
.LBB9_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB9_29
.LBB9_2:
	movq	(%r15), %r14
	leaq	1(%r14), %rdi
	movq	%rdi, %rdx
	shrq	$3, %rdx
	movq	%rdi, %rax
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %r14
	cmovbq	%r14, %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rdx, %rcx
	jbe	.LBB9_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB9_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rbp
	jmp	.LBB9_7
.LBB9_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hfbcd49298c27179cE(%rip), %r8
	leaq	48(%rsp), %rdx
	movq	%r15, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
.LBB9_28:
	movabsq	$-9223372036854775807, %rbx
.LBB9_29:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB9_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB9_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rbp
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB9_29
	jmp	.LBB9_7
.LBB9_5:
	movq	%rax, %rcx
	movabsq	$2635249153387078803, %rdx
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	xorl	$63, %ecx
	movq	$-1, %rbp
	shrq	%cl, %rbp
	incq	%rbp
.LBB9_7:
	movl	$16, %ecx
	movq	%rbp, %rax
	mulq	%rcx
	jo	.LBB9_1
	movq	%rax, %r13
	leaq	16(%rbp), %rbx
	movq	%rax, %rsi
	addq	%rbx, %rsi
	jb	.LBB9_1
	je	.LBB9_10
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB9_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%rsi, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB9_29
.LBB9_10:
	movl	$16, %eax
.LBB9_11:
	addq	%rax, %r13
	movq	%r13, %rcx
	movb	$-1, %dl
	movq	%rbx, %r8
	callq	memset
	leaq	-1(%rbp), %rbx
	movq	%rbp, %rcx
	shrq	$3, %rcx
	andq	$-8, %rbp
	subq	%rcx, %rbp
	cmpq	$8, %rbx
	cmovbq	%rbx, %rbp
	subq	%r12, %rbp
	movq	%rdi, %rax
	testq	%rdi, %rdi
	je	.LBB9_12
	movq	%rbp, 32(%rsp)
	movq	8(%r15), %rcx
	leaq	-16(%rcx), %r8
	xorl	%r11d, %r11d
	movabsq	$5871781006564002453, %r9
	jmp	.LBB9_19
	.p2align	4, 0x90
.LBB9_25:
	shrq	$57, %r10
	leaq	-16(%rdi), %rdx
	andq	%rbx, %rdx
	movb	%r10b, (%r13,%rdi)
	movb	%r10b, 16(%rdx,%r13)
	movq	%r11, %rdx
	notq	%rdx
	shlq	$4, %rdx
	notq	%rdi
	shlq	$4, %rdi
	movdqu	(%rcx,%rdx), %xmm0
	movdqu	%xmm0, (%r13,%rdi)
.LBB9_26:
	leaq	1(%r11), %rdx
	cmpq	%r14, %r11
	movq	%rdx, %r11
	je	.LBB9_27
.LBB9_19:
	cmpb	$0, (%rcx,%r11)
	js	.LBB9_26
	movq	%r11, %rdx
	shlq	$4, %rdx
	movq	%r8, %rbp
	subq	%rdx, %rbp
	movq	(%rbp), %r10
	imulq	%r9, %r10
	movq	%r10, %rbp
	andq	%rbx, %rbp
	movdqu	(%r13,%rbp), %xmm0
	pmovmskb	%xmm0, %edi
	testl	%edi, %edi
	jne	.LBB9_23
	movl	$16, %esi
	.p2align	4, 0x90
.LBB9_22:
	addq	%rsi, %rbp
	andq	%rbx, %rbp
	movdqu	(%r13,%rbp), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rsi
	testl	%edi, %edi
	je	.LBB9_22
.LBB9_23:
	bsfw	%di, %dx
	movzwl	%dx, %edi
	addq	%rbp, %rdi
	andq	%rbx, %rdi
	cmpb	$0, (%r13,%rdi)
	js	.LBB9_25
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edi
	jmp	.LBB9_25
.LBB9_27:
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%r15)
	movq	%r12, 24(%r15)
	testq	%r14, %r14
	jne	.LBB9_13
	jmp	.LBB9_28
.LBB9_12:
	movq	8(%r15), %rcx
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	%rbp, 16(%r15)
	movq	%r12, 24(%r15)
.LBB9_13:
	movl	$16, %edx
	mulq	%rdx
	addq	%rax, %r14
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r14
	je	.LBB9_29
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r14, %rdx
	callq	__rust_dealloc
	jmp	.LBB9_29
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hed3be36c1c693bc6E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hed3be36c1c693bc6E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hed3be36c1c693bc6E:
	movq	(%rcx), %rax
	movq	8(%rdx), %rcx
	shlq	$4, %r8
	subq	%r8, %rcx
	movq	(%rax), %rax
	movq	-16(%rcx), %r10
	movq	(%rax), %rdx
	movq	8(%rax), %r11
	movabsq	$8317987319222330741, %r8
	xorq	%rdx, %r8
	movabsq	$7237128888997146477, %rax
	xorq	%r11, %rax
	movabsq	$7816392313619706465, %rcx
	xorq	%rdx, %rcx
	movabsq	$8387220255154660723, %r9
	addq	%rax, %r8
	rolq	$13, %rax
	xorq	%r10, %r9
	xorq	%r8, %rax
	rolq	$32, %r8
	xorq	%r11, %r9
	addq	%r9, %rcx
	rolq	$16, %r9
	xorq	%rcx, %r9
	addq	%r9, %r8
	rolq	$21, %r9
	xorq	%r8, %r9
	addq	%rax, %rcx
	rolq	$17, %rax
	xorq	%rcx, %rax
	rolq	$32, %rcx
	xorq	%r10, %r8
	movabsq	$576460752303423488, %r10
	addq	%rax, %r8
	rolq	$13, %rax
	movq	%r9, %rdx
	xorq	%r8, %rax
	rolq	$32, %r8
	xorq	%r10, %rdx
	addq	%rdx, %rcx
	shrdq	$48, %r9, %rdx
	xorq	%rcx, %rdx
	addq	%rdx, %r8
	rolq	$21, %rdx
	addq	%rax, %rcx
	rolq	$17, %rax
	xorq	%r8, %rdx
	xorq	%rcx, %rax
	rolq	$32, %rcx
	xorq	%r10, %r8
	addq	%rax, %r8
	rolq	$13, %rax
	xorq	%r8, %rax
	rolq	$32, %r8
	xorq	$255, %rcx
	addq	%rdx, %rcx
	rolq	$16, %rdx
	xorq	%rcx, %rdx
	addq	%rdx, %r8
	rolq	$21, %rdx
	addq	%rax, %rcx
	rolq	$17, %rax
	xorq	%rcx, %rax
	rolq	$32, %rcx
	xorq	%r8, %rdx
	addq	%rax, %r8
	rolq	$13, %rax
	xorq	%r8, %rax
	rolq	$32, %r8
	addq	%rdx, %rcx
	rolq	$16, %rdx
	xorq	%rcx, %rdx
	addq	%rdx, %r8
	rolq	$21, %rdx
	addq	%rax, %rcx
	rolq	$17, %rax
	xorq	%rcx, %rax
	rolq	$32, %rcx
	xorq	%r8, %rdx
	addq	%rax, %r8
	rolq	$13, %rax
	addq	%rdx, %rcx
	rolq	$16, %rdx
	xorq	%rcx, %rdx
	rolq	$21, %rdx
	xorq	%r8, %rax
	addq	%rax, %rcx
	rolq	$17, %rax
	movq	%rcx, %r8
	rolq	$32, %r8
	xorq	%rcx, %rax
	xorq	%rdx, %rax
	xorq	%r8, %rax
	retq

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hfbcd49298c27179cE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hfbcd49298c27179cE
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hfbcd49298c27179cE:
	movq	8(%rdx), %rcx
	shlq	$4, %r8
	subq	%r8, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq

	.def	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E;
	.scl	3;
	.type	32;
	.endef
	.globl	__xmm@80808080808080808080808080808080
	.section	.rdata,"dr",discard,__xmm@80808080808080808080808080808080
	.p2align	4
__xmm@80808080808080808080808080808080:
	.zero	16,128
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
	.p2align	4, 0x90
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E:
.Lfunc_begin0:
.seh_proc _ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	leaq	80(%rsp), %rbp
	.seh_setframe %rbp, 80
	.seh_endprologue
	movq	$-2, (%rbp)
	movq	%r8, -16(%rbp)
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	(%rcx), %r8
	movq	8(%rcx), %rdx
	incq	%r8
	xorl	%eax, %eax
	movdqa	__xmm@80808080808080808080808080808080(%rip), %xmm0
	xorl	%ebx, %ebx
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_6:
	cmpq	%r8, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%r8, %rax
	jae	.LBB12_7
.LBB12_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rdx,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rdx,%rax)
	movb	$1, %bl
	movq	%rcx, %rax
.LBB12_1:
	testb	$1, %bl
	je	.LBB12_6
	addq	$15, %rax
	jb	.LBB12_7
	cmpq	%r8, %rax
	jae	.LBB12_7
	leaq	1(%rax), %rcx
	jmp	.LBB12_5
.LBB12_7:
	cmpq	$16, %r8
	jae	.LBB12_8
	leaq	16(%rdx), %rcx
	callq	memmove
	jmp	.LBB12_10
.LBB12_8:
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdx,%r8)
.LBB12_10:
	movq	$0, -40(%rbp)
	movq	$16, -32(%rbp)
	movq	%r13, -24(%rbp)
	movq	(%r13), %rax
	movq	%rax, -8(%rbp)
	cmpq	$-1, %rax
	je	.LBB12_11
	xorl	%r15d, %r15d
	jmp	.LBB12_16
	.p2align	4, 0x90
.LBB12_25:
	shrq	$57, %rax
	leaq	-16(%r15), %rbx
	andq	%rbx, %rdx
	movb	%al, (%rcx,%r15)
	movb	%al, 16(%rdx,%rcx)
.LBB12_29:
	leaq	1(%r15), %rax
	cmpq	-8(%rbp), %r15
	movq	%rax, %r15
	je	.LBB12_13
.LBB12_16:
	movq	8(%r13), %r14
	cmpb	$-128, (%r14,%r15)
	jne	.LBB12_29
	movq	%r15, %rax
	notq	%rax
	shlq	$4, %rax
	addq	%rax, %r14
	.p2align	4, 0x90
.LBB12_18:
.Ltmp0:
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%r15, %r8
	callq	*-16(%rbp)
.Ltmp1:
	movq	(%r13), %rdx
	movq	8(%r13), %rcx
	movq	%rdx, %r8
	andq	%rax, %r8
	movdqu	(%rcx,%r8), %xmm0
	pmovmskb	%xmm0, %edi
	movq	%r8, %rsi
	testl	%edi, %edi
	jne	.LBB12_22
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB12_21:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB12_21
.LBB12_22:
	bsfw	%di, %bx
	movzwl	%bx, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB12_24
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %ebx
	bsfw	%bx, %bx
	movzwl	%bx, %ebx
.LBB12_24:
	movq	%r15, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB12_25
	movq	%rbx, %rsi
	notq	%rsi
	shlq	$4, %rsi
	addq	%rcx, %rsi
	movzbl	(%rcx,%rbx), %r8d
	shrq	$57, %rax
	leaq	-16(%rbx), %rdi
	andq	%rdx, %rdi
	movb	%al, (%rcx,%rbx)
	movb	%al, 16(%rdi,%rcx)
	cmpb	$-1, %r8b
	je	.LBB12_28
	movzbl	(%r14), %eax
	movzbl	(%rsi), %ecx
	movb	%cl, (%r14)
	movb	%al, (%rsi)
	movzbl	1(%r14), %eax
	movzbl	1(%rsi), %ecx
	movb	%cl, 1(%r14)
	movb	%al, 1(%rsi)
	movzbl	2(%r14), %eax
	movzbl	2(%rsi), %ecx
	movb	%cl, 2(%r14)
	movb	%al, 2(%rsi)
	movzbl	3(%r14), %eax
	movzbl	3(%rsi), %ecx
	movb	%cl, 3(%r14)
	movb	%al, 3(%rsi)
	movzbl	4(%r14), %eax
	movzbl	4(%rsi), %ecx
	movb	%cl, 4(%r14)
	movb	%al, 4(%rsi)
	movzbl	5(%r14), %eax
	movzbl	5(%rsi), %ecx
	movb	%cl, 5(%r14)
	movb	%al, 5(%rsi)
	movzbl	6(%r14), %eax
	movzbl	6(%rsi), %ecx
	movb	%cl, 6(%r14)
	movb	%al, 6(%rsi)
	movzbl	7(%r14), %eax
	movzbl	7(%rsi), %ecx
	movb	%cl, 7(%r14)
	movb	%al, 7(%rsi)
	movzbl	8(%r14), %eax
	movzbl	8(%rsi), %ecx
	movb	%cl, 8(%r14)
	movb	%al, 8(%rsi)
	movzbl	9(%r14), %eax
	movzbl	9(%rsi), %ecx
	movb	%cl, 9(%r14)
	movb	%al, 9(%rsi)
	movzbl	10(%r14), %eax
	movzbl	10(%rsi), %ecx
	movb	%cl, 10(%r14)
	movb	%al, 10(%rsi)
	movzbl	11(%r14), %eax
	movzbl	11(%rsi), %ecx
	movb	%cl, 11(%r14)
	movb	%al, 11(%rsi)
	movzbl	12(%r14), %eax
	movzbl	12(%rsi), %ecx
	movb	%cl, 12(%r14)
	movb	%al, 12(%rsi)
	movzbl	13(%r14), %eax
	movzbl	13(%rsi), %ecx
	movb	%cl, 13(%r14)
	movb	%al, 13(%rsi)
	movzbl	14(%r14), %eax
	movzbl	14(%rsi), %ecx
	movb	%cl, 14(%r14)
	movb	%al, 14(%rsi)
	movzbl	15(%r14), %eax
	movzbl	15(%rsi), %ecx
	movb	%cl, 15(%r14)
	movb	%al, 15(%rsi)
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_28:
	movq	8(%r13), %rax
	leaq	-16(%r15), %rcx
	andq	(%r13), %rcx
	movb	$-1, (%rax,%r15)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%r14), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB12_29
.LBB12_13:
	movq	(%r13), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB12_14
.LBB12_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB12_14:
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
	subq	24(%r13), %rax
	movq	%rax, 16(%r13)
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.seh_handlerdata
	.long	($cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E)@IMGREL
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
	.seh_endproc
	.def	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E@4HA":
.seh_proc "?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E@4HA"
.LBB12_12:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	leaq	80(%rdx), %rbp
	.seh_endprologue
	leaq	-40(%rbp), %rcx
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1456b2a6ebbe8bafE
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E
	.p2align	2
$cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E:
	.long	429065506
	.long	1
	.long	($stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E)@IMGREL
	.long	80
	.long	0
	.long	1
$stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E:
	.long	-1
	.long	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E@4HA"@IMGREL
$ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E:
	.long	.Lfunc_begin0@IMGREL
	.long	-1
	.long	.Ltmp0@IMGREL+1
	.long	0
	.long	.Ltmp1@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h425da2343d967bd7E

	.def	entity_insert;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@79797979797979797979797979797979
	.section	.rdata,"dr",discard,__xmm@79797979797979797979797979797979
	.p2align	4
__xmm@79797979797979797979797979797979:
	.zero	16,121
	.section	.text,"xr",one_only,entity_insert
	.globl	entity_insert
	.p2align	4, 0x90
entity_insert:
.Lfunc_begin1:
.seh_proc entity_insert
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$376, %rsp
	.seh_stackalloc 376
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	movaps	%xmm6, 224(%rbp)
	.seh_savexmm %xmm6, 352
	.seh_endprologue
	movq	$-2, 216(%rbp)
	movdqa	%xmm3, %xmm6
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movq	%rcx, %r14
	movl	%edx, 184(%rbp)
	movl	%r9d, 188(%rbp)
	leaq	8(%rcx), %rsi
	leaq	96(%rbp), %rcx
	movq	%rsi, %rdx
	movl	%r8d, 208(%rbp)
	movl	%r9d, 180(%rbp)
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	cmpq	$0, 96(%rbp)
	je	.LBB13_97
	movq	%rsi, 88(%rbp)
	movq	496(%r14), %rdx
	movq	504(%r14), %rbx
	movabsq	$8317987319222330741, %rcx
	xorq	%rdx, %rcx
	movabsq	$7237128888997146477, %r13
	xorq	%rbx, %r13
	movabsq	$7816392313619706465, %rax
	xorq	%rdx, %rax
	movabsq	$-1734477487832548243, %rdx
	addq	%r13, %rcx
	rolq	$13, %r13
	xorq	%rbx, %rdx
	xorq	%rcx, %r13
	rolq	$32, %rcx
	addq	%rdx, %rax
	rolq	$16, %rdx
	xorq	%rax, %rdx
	addq	%rdx, %rcx
	rolq	$21, %rdx
	xorq	%rcx, %rdx
	addq	%r13, %rax
	rolq	$17, %r13
	xorq	%rax, %r13
	rolq	$32, %rax
	movabsq	$-7815854730514507490, %r12
	xorq	%r12, %rcx
	movabsq	$576460752303423488, %rdi
	addq	%r13, %rcx
	rolq	$13, %r13
	movq	%rdx, %rbx
	xorq	%rcx, %r13
	rolq	$32, %rcx
	xorq	%rdi, %rbx
	addq	%rbx, %rax
	shrdq	$48, %rdx, %rbx
	xorq	%rax, %rbx
	addq	%rbx, %rcx
	rolq	$21, %rbx
	addq	%r13, %rax
	rolq	$17, %r13
	xorq	%rcx, %rbx
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rdi, %rcx
	addq	%r13, %rcx
	rolq	$13, %r13
	xorq	%rcx, %r13
	rolq	$32, %rcx
	xorq	$255, %rax
	addq	%rbx, %rax
	rolq	$16, %rbx
	xorq	%rax, %rbx
	addq	%rbx, %rcx
	rolq	$21, %rbx
	movq	104(%rbp), %rdx
	movq	%rdx, (%rbp)
	addq	%r13, %rax
	rolq	$17, %r13
	movq	112(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rcx, %rbx
	addq	%r13, %rcx
	rolq	$13, %r13
	movl	696(%r14), %edx
	movl	%edx, 176(%rbp)
	xorq	%rcx, %r13
	rolq	$32, %rcx
	leaq	472(%r14), %r11
	addq	%rbx, %rax
	rolq	$16, %rbx
	xorq	%rax, %rbx
	addq	%rbx, %rcx
	rolq	$21, %rbx
	leaq	72(%r14), %rdx
	movq	%rdx, -16(%rbp)
	addq	%r13, %rax
	rolq	$17, %r13
	leaq	240(%r14), %rdx
	movq	%rdx, -24(%rbp)
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rcx, %rbx
	addq	%r13, %rcx
	rolq	$13, %r13
	leaq	496(%r14), %rdx
	addq	%rbx, %rax
	rolq	$16, %rbx
	xorq	%rcx, %r13
	xorq	%rax, %rbx
	rolq	$21, %rbx
	addq	%r13, %rax
	rolq	$17, %r13
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rbx, %r13
	xorq	%rax, %r13
	movq	512(%r14), %r9
	movq	520(%r14), %r10
	movq	%r13, %r15
	shrq	$57, %r15
	movd	%r15d, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
	movq	%r13, %rdi
.LBB13_2:
	andq	%r9, %rdi
	movdqu	(%r10,%rdi), %xmm2
	movdqa	%xmm0, %xmm3
	pcmpeqb	%xmm2, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB13_3:
	testw	%bx, %bx
	je	.LBB13_4
	bsfw	%bx, %cx
	movzwl	%cx, %eax
	leal	-1(%rbx), %esi
	andl	%ebx, %esi
	addq	%rdi, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rcx
	subq	%rax, %rcx
	movl	%esi, %ebx
	cmpq	%r12, -16(%rcx)
	jne	.LBB13_3
	jmp	.LBB13_14
	.p2align	4, 0x90
.LBB13_4:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB13_6
	addq	%r8, %rdi
	addq	$16, %rdi
	addq	$16, %r8
	jmp	.LBB13_2
.LBB13_14:
	addq	$-8, %rcx
	movq	88(%rbp), %r8
.LBB13_47:
	movq	-8(%rbp), %rsi
	movq	(%rbp), %rax
	movl	176(%rbp), %ebx
	movq	(%rcx), %rdx
	shlq	$5, %rdx
	addq	472(%r14), %rdx
	addq	$160, %r14
	movl	%ebx, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 32(%rsp)
	leaq	96(%rbp), %rcx
	movq	%r14, %r9
	callq	_ZN8bevy_ecs6bundle10BundleInfo19get_bundle_inserter17hcb2528ebd44dd36cE
	movq	96(%rbp), %rbx
	movq	136(%rbp), %rax
	testq	%rax, %rax
	je	.LBB13_55
	movq	(%rbx), %r14
	cmpl	$1, %eax
	jne	.LBB13_58
	leaq	8(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	callq	_ZN8bevy_ecs9archetype9Archetype11swap_remove17hc8ba87f0926f5569E
	cmpl	$1, 16(%rbp)
	jne	.LBB13_50
	movl	24(%rbp), %edx
	movq	104(%rbp), %rdi
	movq	%rdi, %rcx
	movq	%r14, %r8
	movq	%rsi, %r9
	callq	_ZN8bevy_ecs6entity8Entities3set17h9e91bb373c8ee791E
	jmp	.LBB13_80
.LBB13_55:
	movq	112(%rbp), %rcx
	movq	(%rcx), %rax
	cmpq	32(%rbx), %rax
	jae	.LBB13_57
	movq	16(%rbx), %rdx
	shlq	$5, %rax
	movq	8(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_57
	movq	104(%rbx), %rdx
	cmpq	%rsi, %rdx
	jbe	.LBB13_99
	movq	120(%rbp), %rdx
	movq	88(%rbx), %rbx
	shlq	$4, %rsi
	movq	(%rbx,%rsi), %r15
	movl	168(%rbp), %r14d
	movd	%xmm6, 8(%rbp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB13_74
	movq	32(%rdx), %rbx
	shlq	$4, %rcx
	cmpq	$0, (%rbx,%rcx)
	je	.LBB13_74
	movq	(%rdx), %rdi
	movq	8(%rbx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$5, %rsi
	leaq	(%rdi,%rsi), %rbx
	cmpb	$0, (%rax)
	je	.LBB13_93
	leaq	8(%rbp), %r8
	movq	%rbx, %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h98f588a89fcf51e1E
	jmp	.LBB13_95
.LBB13_58:
	leaq	-56(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	callq	_ZN8bevy_ecs9archetype9Archetype11swap_remove17hc8ba87f0926f5569E
	cmpl	$1, -48(%rbp)
	jne	.LBB13_59
	movl	-40(%rbp), %edx
	movq	104(%rbp), %r12
	movq	%r12, %rcx
	movq	%r14, %r8
	movq	%rsi, %r9
	callq	_ZN8bevy_ecs6entity8Entities3set17h9e91bb373c8ee791E
	jmp	.LBB13_61
.LBB13_50:
	movq	104(%rbp), %rdi
.LBB13_80:
	movl	208(%rbp), %edx
	movq	144(%rbp), %rcx
	movq	8(%rbp), %r14
	movl	180(%rbp), %esi
	movl	%esi, %r8d
	movq	%r14, %r9
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h2c04090af96fd937E
	movq	%rdx, %r9
	movq	%rdi, %rcx
	movl	%esi, %edx
	movq	%rax, %r8
	callq	_ZN8bevy_ecs6entity8Entities3set17h9e91bb373c8ee791E
	movq	112(%rbp), %rcx
	movq	(%rcx), %rax
	cmpq	32(%rbx), %rax
	jae	.LBB13_82
	movq	16(%rbx), %rdx
	shlq	$5, %rax
	movq	8(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_82
	movq	120(%rbp), %rdx
	movl	168(%rbp), %r15d
	movd	%xmm6, 184(%rbp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB13_74
	movq	32(%rdx), %rbx
	shlq	$4, %rcx
	cmpq	$0, (%rbx,%rcx)
	je	.LBB13_74
	movq	(%rdx), %rsi
	movq	8(%rbx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	shlq	$5, %rdi
	leaq	(%rsi,%rdi), %rbx
	cmpb	$0, (%rax)
	je	.LBB13_86
	leaq	184(%rbp), %r8
	movq	%rbx, %rcx
	movq	%r14, %rdx
	callq	_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h98f588a89fcf51e1E
	jmp	.LBB13_88
.LBB13_59:
	movq	104(%rbp), %r12
.LBB13_61:
	movq	-56(%rbp), %r14
	movq	120(%rbp), %rdx
	movq	152(%rbp), %rsi
	leaq	184(%rbp), %rcx
	movq	%r14, %r8
	movq	%rsi, %r9
	callq	_ZN8bevy_ecs7storage5table5Table26move_to_superset_unchecked17he9ca903b4dfe02ffE
	movq	144(%rbp), %r15
	movq	184(%rbp), %r13
	movq	%r15, %rcx
	movl	208(%rbp), %edx
	movl	180(%rbp), %edi
	movl	%edi, %r8d
	movq	%r13, %r9
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h2c04090af96fd937E
	movq	%rdx, %r9
	movq	%r12, %rcx
	movl	%edi, %edx
	movq	%rax, %r8
	callq	_ZN8bevy_ecs6entity8Entities3set17h9e91bb373c8ee791E
	cmpl	$1, 192(%rbp)
	jne	.LBB13_65
	movl	196(%rbp), %r8d
	movl	200(%rbp), %r9d
	leaq	8(%rbp), %rcx
	movq	%r12, %rdx
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	cmpq	$0, 8(%rbp)
	je	.LBB13_63
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	%rbx, %rax
	cmpq	%rdx, (%rbx)
	je	.LBB13_70
	leaq	(%rdx,%rdx,4), %rax
	shlq	$5, %rax
	addq	160(%rbp), %rax
	cmpq	%rdx, (%r15)
	cmoveq	%r15, %rax
.LBB13_70:
	movq	104(%rax), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB13_98
	movq	88(%rax), %rax
	shlq	$4, %rcx
	movq	%r14, (%rax,%rcx)
.LBB13_65:
	movq	112(%rbp), %rcx
	movq	(%rcx), %rax
	cmpq	32(%rbx), %rax
	jae	.LBB13_67
	movq	16(%rbx), %rdx
	shlq	$5, %rax
	movq	8(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_67
	movl	168(%rbp), %r14d
	movd	%xmm6, 8(%rbp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rsi)
	jbe	.LBB13_74
	movq	32(%rsi), %rdx
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB13_74
	movq	(%rsi), %rdi
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$5, %rbx
	leaq	(%rdi,%rbx), %rsi
	cmpb	$0, (%rax)
	je	.LBB13_76
	leaq	8(%rbp), %r8
	movq	%rsi, %rcx
	movq	%r13, %rdx
	callq	_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h98f588a89fcf51e1E
	jmp	.LBB13_78
.LBB13_86:
	movl	%r15d, %ecx
	callq	_ZN8bevy_ecs9component4Tick3new17h58de1e5f827b4135E
	movl	%eax, %r15d
	movq	(%rbx), %r8
	movq	%r8, %rcx
	imulq	%r14, %rcx
	addq	32(%rbx), %rcx
	leaq	184(%rbp), %rdx
	callq	memcpy
	movq	48(%rsi,%rdi), %rax
	movl	%r15d, (%rax,%r14,4)
.LBB13_88:
	movq	72(%rsi,%rdi), %rax
	movl	%r15d, (%rax,%r14,4)
	jmp	.LBB13_96
.LBB13_76:
	movl	%r14d, %ecx
	callq	_ZN8bevy_ecs9component4Tick3new17h58de1e5f827b4135E
	movl	%eax, %r14d
	movq	(%rsi), %r8
	movq	%r8, %rcx
	imulq	%r13, %rcx
	addq	32(%rsi), %rcx
	leaq	8(%rbp), %rdx
	callq	memcpy
	movq	48(%rdi,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
.LBB13_78:
	movq	72(%rdi,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
	jmp	.LBB13_96
.LBB13_93:
	movl	%r14d, %ecx
	callq	_ZN8bevy_ecs9component4Tick3new17h58de1e5f827b4135E
	movl	%eax, %r14d
	movq	(%rbx), %r8
	movq	%r8, %rcx
	imulq	%r15, %rcx
	addq	32(%rbx), %rcx
	leaq	8(%rbp), %rdx
	callq	memcpy
	movq	48(%rdi,%rsi), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB13_95:
	movq	72(%rdi,%rsi), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB13_96:
	movaps	224(%rbp), %xmm6
	addq	$376, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_6:
	cmpq	$0, 528(%r14)
	movq	%r11, -32(%rbp)
	je	.LBB13_7
.LBB13_8:
	movq	$8, 184(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 192(%rbp)
	leaq	96(%r14), %rcx
	movq	96(%r14), %r9
	movq	104(%r14), %r10
	movabsq	$-998475753432872330, %rbx
	xorl	%r8d, %r8d
	movdqa	__xmm@79797979797979797979797979797979(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB13_9:
	andq	%r9, %rbx
	movdqu	(%r10,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB13_10:
	testw	%si, %si
	je	.LBB13_11
	bsfw	%si, %dx
	movzwl	%dx, %eax
	leal	-1(%rsi), %edi
	andl	%esi, %edi
	addq	%rbx, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rdx
	subq	%rax, %rdx
	movl	%edi, %esi
	cmpq	%r12, -16(%rdx)
	jne	.LBB13_10
	jmp	.LBB13_29
.LBB13_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB13_15
	addq	%r8, %rbx
	addq	$16, %rbx
	addq	$16, %r8
	jmp	.LBB13_9
.LBB13_29:
	addq	$-8, %rdx
.LBB13_30:
	movq	(%rdx), %rsi
	movb	$1, 215(%rbp)
.Ltmp10:
	leaq	184(%rbp), %rcx
	xorl	%edx, %edx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6487664544eeb09aE
.Ltmp11:
	movq	184(%rbp), %rax
	movq	200(%rbp), %rcx
	movq	%rsi, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 200(%rbp)
	movq	488(%r14), %rsi
	movq	%rcx, 112(%rbp)
	movdqu	184(%rbp), %xmm0
	movdqa	%xmm0, 96(%rbp)
	movb	$0, 215(%rbp)
.Ltmp12:
	movq	%rsi, 32(%rsp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.0(%rip), %rdx
	leaq	8(%rbp), %rcx
	leaq	96(%rbp), %r9
	movl	$16, %r8d
	callq	_ZN8bevy_ecs6bundle17initialize_bundle17h6f83904060b4c120E
.Ltmp13:
	movdqu	8(%rbp), %xmm0
	movdqu	24(%rbp), %xmm1
	movdqa	%xmm1, 112(%rbp)
	movdqa	%xmm0, 96(%rbp)
	movq	488(%r14), %rdx
	cmpq	480(%r14), %rdx
	jne	.LBB13_33
.Ltmp14:
	movq	-32(%rbp), %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h92a334b4639e5a78E
.Ltmp15:
	movq	88(%rbp), %r8
	movq	488(%r14), %rdx
	jmp	.LBB13_41
.LBB13_33:
	movq	88(%rbp), %r8
.LBB13_41:
	movq	472(%r14), %rax
	movq	%rdx, %rcx
	shlq	$5, %rcx
	movups	8(%rbp), %xmm0
	movdqu	24(%rbp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rdx
	movq	%rdx, 488(%r14)
	movq	512(%r14), %rcx
	movq	520(%r14), %rax
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB13_44
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB13_43:
	addq	%rbx, %r13
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB13_43
.LBB13_44:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r13, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB13_46
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB13_46:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	%r15b, (%rax,%rdx)
	movb	%r15b, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rcx
	andb	$1, %bl
	movzbl	%bl, %ebx
	subq	%rbx, 528(%r14)
	subq	%rdx, %rcx
	negq	%rdx
	movq	%r12, -16(%rax,%rdx)
	movq	%rsi, -8(%rcx)
	addq	$-8, %rcx
	incq	536(%r14)
	jmp	.LBB13_47
.LBB13_7:
	leaq	512(%r14), %rcx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h79263a4fab3da94eE
	jmp	.LBB13_8
.LBB13_15:
	cmpq	$0, 112(%r14)
	jne	.LBB13_17
	movb	$1, 215(%rbp)
.Ltmp2:
	movq	%rcx, %rdx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h88846c4b1dca7341E
.Ltmp3:
.LBB13_17:
	movq	88(%r14), %rsi
	movq	$0, 96(%rbp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.0(%rip), %rax
	movq	%rax, 104(%rbp)
	movq	$16, 112(%rbp)
	movq	$1, 120(%rbp)
	movq	%r12, 128(%rbp)
	movq	$4, 136(%rbp)
	movq	$4, 144(%rbp)
	movq	$0, 152(%rbp)
	movw	$256, 160(%rbp)
	movb	$1, 215(%rbp)
.Ltmp4:
	leaq	8(%rbp), %rcx
	leaq	96(%rbp), %r8
	movq	%rsi, %rdx
	callq	_ZN8bevy_ecs9component13ComponentInfo3new17hb1b178f87dcedcd1E
.Ltmp5:
	cmpb	$0, 80(%rbp)
	je	.LBB13_19
	movb	$1, 214(%rbp)
.Ltmp6:
	leaq	8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17h88a6ccbdc456f0e7E
.Ltmp7:
.LBB13_19:
	movups	72(%rbp), %xmm0
	movaps	%xmm0, 160(%rbp)
	movdqu	8(%rbp), %xmm0
	movdqu	24(%rbp), %xmm1
	movdqu	40(%rbp), %xmm2
	movdqu	56(%rbp), %xmm3
	movdqa	%xmm3, 144(%rbp)
	movdqa	%xmm2, 128(%rbp)
	movdqa	%xmm1, 112(%rbp)
	movdqa	%xmm0, 96(%rbp)
	movq	%rsi, %rax
	cmpq	80(%r14), %rsi
	jne	.LBB13_22
.Ltmp8:
	movq	-16(%rbp), %rcx
	movq	%rsi, %rdx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h55bcda9bcadbbfa2E
.Ltmp9:
	movq	88(%r14), %rax
.LBB13_22:
	movq	72(%r14), %rcx
	leaq	(%rax,%rax,4), %rdx
	shlq	$4, %rdx
	movaps	160(%rbp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	96(%rbp), %xmm0
	movdqa	112(%rbp), %xmm1
	movdqa	128(%rbp), %xmm2
	movdqa	144(%rbp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r14)
	movq	96(%r14), %rcx
	movq	104(%r14), %rax
	movabsq	$-998475753432872330, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB13_25
	movl	$16, %edi
.LBB13_24:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rdi
	testl	%ebx, %ebx
	je	.LBB13_24
.LBB13_25:
	bsfw	%bx, %bx
	movzwl	%bx, %ebx
	addq	%rdx, %rbx
	andq	%rcx, %rbx
	movzbl	(%rax,%rbx), %r8d
	testb	%r8b, %r8b
	js	.LBB13_27
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	movzbl	(%rax,%rbx), %r8d
.LBB13_27:
	leaq	-16(%rbx), %rdx
	andq	%rcx, %rdx
	movb	$121, (%rax,%rbx)
	movb	$121, 16(%rdx,%rax)
	shlq	$4, %rbx
	movq	%rax, %rdx
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subq	%rcx, 112(%r14)
	subq	%rbx, %rdx
	negq	%rbx
	movq	%r12, -16(%rax,%rbx)
	movq	%rsi, -8(%rdx)
	addq	$-8, %rdx
	incq	120(%r14)
	jmp	.LBB13_30
.LBB13_99:
	leaq	anon.83959b72e5b8236df4a28836bf490603.14(%rip), %r8
	movq	%rsi, %rcx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB13_98:
	leaq	anon.83959b72e5b8236df4a28836bf490603.10(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB13_74:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.8(%rip), %r8
	jmp	.LBB13_64
.LBB13_97:
	leaq	184(%rbp), %rax
	movq	%rax, 8(%rbp)
	leaq	_ZN61_$LT$bevy_ecs..entity..Entity$u20$as$u20$core..fmt..Debug$GT$3fmt17hd68eb4a20c857de8E(%rip), %rax
	movq	%rax, 16(%rbp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.3(%rip), %rax
	movq	%rax, 96(%rbp)
	movq	$2, 104(%rbp)
	movq	$0, 112(%rbp)
	leaq	8(%rbp), %rax
	movq	%rax, 128(%rbp)
	movq	$1, 136(%rbp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	leaq	96(%rbp), %rcx
	callq	_ZN4core9panicking9panic_fmt17h94563f1a4f8281d4E
	ud2
.LBB13_57:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.15(%rip), %r8
	jmp	.LBB13_64
.LBB13_82:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.13(%rip), %r8
	jmp	.LBB13_64
.LBB13_67:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.11(%rip), %r8
	jmp	.LBB13_64
.LBB13_63:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.12(%rip), %r8
.LBB13_64:
	movl	$43, %edx
	callq	_ZN4core9panicking5panic17h5935d2cd162cf84fE
	ud2
	.seh_handlerdata
	.long	($cppxdata$entity_insert)@IMGREL
	.section	.text,"xr",one_only,entity_insert
	.seh_endproc
	.def	"?dtor$34@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$34@?0?entity_insert@4HA":
.seh_proc "?dtor$34@?0?entity_insert@4HA"
.LBB13_34:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	leaq	128(%rdx), %rbp
	movdqa	%xmm6, 64(%rsp)
	.seh_savexmm %xmm6, 64
	.seh_endprologue
	leaq	96(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h5dbe157af6b6565fE
	movb	$0, 214(%rbp)
	movdqa	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.seh_handlerdata
	.section	.text,"xr",one_only,entity_insert
	.seh_endproc
	.def	"?dtor$36@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$36@?0?entity_insert@4HA":
.seh_proc "?dtor$36@?0?entity_insert@4HA"
.LBB13_36:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	leaq	128(%rdx), %rbp
	movdqa	%xmm6, 64(%rsp)
	.seh_savexmm %xmm6, 64
	.seh_endprologue
	cmpb	$0, 214(%rbp)
	je	.LBB13_37
	leaq	8(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h5dbe157af6b6565fE
	movb	$1, 215(%rbp)
	movdqa	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_37:
	movb	$1, 215(%rbp)
	movdqa	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.seh_handlerdata
	.section	.text,"xr",one_only,entity_insert
	.seh_endproc
	.def	"?dtor$51@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$51@?0?entity_insert@4HA":
.seh_proc "?dtor$51@?0?entity_insert@4HA"
.LBB13_51:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	leaq	128(%rdx), %rbp
	movdqa	%xmm6, 64(%rsp)
	.seh_savexmm %xmm6, 64
	.seh_endprologue
	leaq	96(%rbp), %rcx
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h579c5dca1c8f9bc6E
	movb	$0, 215(%rbp)
	movdqa	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.seh_handlerdata
	.section	.text,"xr",one_only,entity_insert
	.seh_endproc
	.def	"?dtor$52@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$52@?0?entity_insert@4HA":
.seh_proc "?dtor$52@?0?entity_insert@4HA"
.LBB13_52:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
	.seh_pushreg %rbp
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
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	leaq	128(%rdx), %rbp
	movdqa	%xmm6, 64(%rsp)
	.seh_savexmm %xmm6, 64
	.seh_endprologue
	cmpb	$0, 215(%rbp)
	je	.LBB13_54
	leaq	184(%rbp), %rcx
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h641429a8e3d09cb1E
.LBB13_54:
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",one_only,entity_insert
	.seh_endproc
	.section	.xdata,"dr",associative,entity_insert
	.p2align	2
$cppxdata$entity_insert:
	.long	429065506
	.long	4
	.long	($stateUnwindMap$entity_insert)@IMGREL
	.long	0
	.long	0
	.long	8
	.long	($ip2state$entity_insert)@IMGREL
	.long	344
	.long	0
	.long	1
$stateUnwindMap$entity_insert:
	.long	-1
	.long	"?dtor$52@?0?entity_insert@4HA"@IMGREL
	.long	0
	.long	"?dtor$51@?0?entity_insert@4HA"@IMGREL
	.long	0
	.long	"?dtor$36@?0?entity_insert@4HA"@IMGREL
	.long	2
	.long	"?dtor$34@?0?entity_insert@4HA"@IMGREL
$ip2state$entity_insert:
	.long	.Lfunc_begin1@IMGREL
	.long	-1
	.long	.Ltmp10@IMGREL+1
	.long	0
	.long	.Ltmp14@IMGREL+1
	.long	1
	.long	.Ltmp15@IMGREL+1
	.long	-1
	.long	.Ltmp2@IMGREL+1
	.long	0
	.long	.Ltmp6@IMGREL+1
	.long	2
	.long	.Ltmp8@IMGREL+1
	.long	3
	.long	.Ltmp9@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,entity_insert

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.0
anon.83959b72e5b8236df4a28836bf490603.0:
	.ascii	"entity_insert::A"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.1
anon.83959b72e5b8236df4a28836bf490603.1:
	.ascii	"Entity "

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.2
anon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	" does not exist"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.3
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.3:
	.quad	anon.83959b72e5b8236df4a28836bf490603.1
	.asciz	"\007\000\000\000\000\000\000"
	.quad	anon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\017\000\000\000\000\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.4
anon.83959b72e5b8236df4a28836bf490603.4:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\world\\mod.rs"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.5
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.5:
	.quad	anon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"b\000\000\000\000\000\000\000\367\000\000\000 \000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.6
anon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"called `Option::unwrap()` on a `None` value"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.7
anon.83959b72e5b8236df4a28836bf490603.7:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\bundle.rs"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.8
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.8:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\212\001\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.9
anon.83959b72e5b8236df4a28836bf490603.9:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\archetype.rs"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.10
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.10:
	.quad	anon.83959b72e5b8236df4a28836bf490603.9
	.asciz	"b\000\000\000\000\000\000\000\257\001\000\000\t\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.11
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.11:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000j\002\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.12
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.12:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000X\002\000\000,\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.13
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.13:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\0006\002\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.14
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.14:
	.quad	anon.83959b72e5b8236df4a28836bf490603.9
	.asciz	"b\000\000\000\000\000\000\000\245\001\000\000\t\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.15
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.15:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\035\002\000\000\"\000\000"

	.globl	_fltused

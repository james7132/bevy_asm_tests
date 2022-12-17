	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"entity_remove_intersection.bce486a7-cgu.0"
	.def	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc1c7ed8683259749E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc1c7ed8683259749E
	.p2align	4, 0x90
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc1c7ed8683259749E:
.seh_proc _ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc1c7ed8683259749E
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

	.def	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h1302dd7e770677deE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h1302dd7e770677deE
	.p2align	4, 0x90
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h1302dd7e770677deE:
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_1
	movq	8(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB1_1:
	retq

	.def	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha6cf801bb1e5d676E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha6cf801bb1e5d676E
	.p2align	4, 0x90
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha6cf801bb1e5d676E:
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

	.def	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hae1447f73aa21d29E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hae1447f73aa21d29E
	.p2align	4, 0x90
_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hae1447f73aa21d29E:
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_1
	movq	(%rcx), %rcx
	shlq	$3, %rdx
	movl	$4, %r8d
	jmp	__rust_dealloc
.LBB3_1:
	retq

	.def	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h0660f5894c66bd18E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h0660f5894c66bd18E
	.p2align	4, 0x90
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h0660f5894c66bd18E:
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB4_1
	movq	(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB4_1:
	retq

	.def	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
	.p2align	4, 0x90
_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE:
.seh_proc _ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
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
	je	.LBB5_5
	movq	%r8, %rdi
	cmpq	$0, 16(%r9)
	je	.LBB5_3
	movq	8(%r9), %rdx
	testq	%rdx, %rdx
	je	.LBB5_3
	movq	(%r9), %rcx
	movq	%rdi, %r8
	movq	%rbx, %r9
	callq	__rust_realloc
	movq	%rbx, %rcx
	testq	%rax, %rax
	jne	.LBB5_12
	jmp	.LBB5_13
.LBB5_3:
	testq	%rbx, %rbx
	je	.LBB5_4
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	__rust_alloc
	movq	%rbx, %rcx
	testq	%rax, %rax
	je	.LBB5_13
.LBB5_12:
	movq	%rax, 8(%rsi)
	movq	%rcx, 16(%rsi)
	xorl	%eax, %eax
	jmp	.LBB5_7
.LBB5_5:
	movq	%rbx, 8(%rsi)
	movq	$0, 16(%rsi)
	jmp	.LBB5_6
.LBB5_4:
	xorl	%ecx, %ecx
	movq	%rdi, %rax
	testq	%rax, %rax
	jne	.LBB5_12
.LBB5_13:
	movq	%rbx, 8(%rsi)
	movq	%rdi, 16(%rsi)
.LBB5_6:
	movl	$1, %eax
.LBB5_7:
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h02b3492cc657dba3E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h02b3492cc657dba3E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h02b3492cc657dba3E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h02b3492cc657dba3E
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
	movabsq	$115292150460684698, %rcx
	xorl	%r8d, %r8d
	cmpq	%rcx, %rdi
	setb	%r8b
	movq	%rdi, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB6_3
	movq	(%rsi), %rcx
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB6_4
.LBB6_3:
	movq	$0, 56(%rsp)
.LBB6_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h18520f04afc9da20E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h18520f04afc9da20E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h18520f04afc9da20E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h18520f04afc9da20E
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
	shrq	$60, %rcx
	sete	%r8b
	leaq	(,%rdi,8), %rdx
	shlq	$2, %r8
	testq	%rax, %rax
	je	.LBB7_3
	movq	(%rsi), %rcx
	shlq	$3, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$4, 56(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 56(%rsp)
.LBB7_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6f4bfe5e187720a9E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6f4bfe5e187720a9E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6f4bfe5e187720a9E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6f4bfe5e187720a9E
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	incq	%rdx
	je	.LBB8_10
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
	je	.LBB8_3
	movq	(%rsi), %rcx
	shlq	$5, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB8_4
.LBB8_3:
	movq	$0, 56(%rsp)
.LBB8_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB8_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB8_6
	testq	%rdx, %rdx
	jne	.LBB8_9
.LBB8_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB8_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB8_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB8_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h922813666c0be561E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h922813666c0be561E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h922813666c0be561E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h922813666c0be561E
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	incq	%rdx
	je	.LBB9_10
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	cmpq	$5, %rdx
	movl	$4, %edi
	cmovaeq	%rdx, %rdi
	movabsq	$384307168202282326, %rcx
	xorl	%r8d, %r8d
	cmpq	%rcx, %rdi
	setb	%r8b
	leaq	(,%rdi,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB9_3
	movq	(%rsi), %rcx
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	$0, 56(%rsp)
.LBB9_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB9_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB9_6
	testq	%rdx, %rdx
	jne	.LBB9_9
.LBB9_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB9_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB9_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB9_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc554b6d1d555b69dE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc554b6d1d555b69dE
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc554b6d1d555b69dE:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc554b6d1d555b69dE
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	incq	%rdx
	je	.LBB10_10
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
	je	.LBB10_3
	movq	(%rsi), %rcx
	shlq	$3, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB10_4
.LBB10_3:
	movq	$0, 56(%rsp)
.LBB10_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB10_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB10_6
	testq	%rdx, %rdx
	jne	.LBB10_9
.LBB10_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB10_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB10_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB10_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4ed14eb012480fabE;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4ed14eb012480fabE
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4ed14eb012480fabE:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4ed14eb012480fabE
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	addq	%r8, %rdx
	jb	.LBB11_10
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
	shrq	$59, %rcx
	sete	%r8b
	movq	%rdi, %rdx
	shlq	$4, %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB11_3
	movq	(%rsi), %rcx
	shlq	$4, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB11_4
.LBB11_3:
	movq	$0, 56(%rsp)
.LBB11_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h1fc027b579efac3aE
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rcx
	je	.LBB11_5
	movq	80(%rsp), %rdx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	.LBB11_6
	testq	%rdx, %rdx
	jne	.LBB11_9
.LBB11_10:
	callq	_ZN5alloc7raw_vec17capacity_overflow17hedc637919bd6aa02E
	ud2
.LBB11_5:
	movq	%rcx, (%rsi)
	movq	%rdi, 8(%rsi)
.LBB11_6:
	addq	$88, %rsp
	popq	%rdi
	popq	%rsi
	retq
.LBB11_9:
	callq	_ZN5alloc5alloc18handle_alloc_error17h382732522befb8cbE
	ud2
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1534f5e58f5248d5E;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1534f5e58f5248d5E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1534f5e58f5248d5E:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1534f5e58f5248d5E
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
	jne	.LBB12_2
.LBB12_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB12_30
.LBB12_2:
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
	jbe	.LBB12_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB12_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rsi
	jmp	.LBB12_7
.LBB12_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17heefb2440d2482400E(%rip), %r8
	leaq	80(%rsp), %rdx
	movq	%r14, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
.LBB12_29:
	movabsq	$-9223372036854775807, %rbx
.LBB12_30:
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
.LBB12_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB12_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rsi
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB12_30
	jmp	.LBB12_7
.LBB12_5:
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
.LBB12_7:
	movl	$16, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB12_1
	movq	%rax, %rbx
	leaq	16(%rsi), %r12
	movq	%rax, %r15
	addq	%r12, %r15
	jb	.LBB12_1
	je	.LBB12_10
	movl	$16, %edx
	movq	%r15, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB12_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%r15, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB12_30
.LBB12_10:
	movl	$16, %eax
.LBB12_11:
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
	je	.LBB12_12
	movq	%rsi, 48(%rsp)
	movq	%rbp, 56(%rsp)
	movq	%rdi, 64(%rsp)
	movq	8(%r14), %rcx
	leaq	-16(%rcx), %rdi
	movq	40(%rsp), %rdx
	movq	%rdx, 72(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB12_19
	.p2align	4, 0x90
.LBB12_26:
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
.LBB12_27:
	leaq	1(%r15), %rdx
	cmpq	%r13, %r15
	movq	%rdx, %r15
	je	.LBB12_28
.LBB12_19:
	cmpb	$0, (%rcx,%r15)
	js	.LBB12_27
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
	jne	.LBB12_24
	movq	%rdi, %rdx
	movl	$16, %edi
	.p2align	4, 0x90
.LBB12_22:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rbx,%rsi), %xmm0
	pmovmskb	%xmm0, %ebp
	addq	$16, %rdi
	testl	%ebp, %ebp
	je	.LBB12_22
	movq	%rdx, %rdi
.LBB12_24:
	bsfw	%bp, %dx
	movzwl	%dx, %ebp
	addq	%rsi, %rbp
	andq	%rax, %rbp
	cmpb	$0, (%rbx,%rbp)
	js	.LBB12_26
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebp
	jmp	.LBB12_26
.LBB12_28:
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	48(%rsp), %rax
	movq	%rax, 16(%r14)
	movq	56(%rsp), %rax
	movq	%rax, 24(%r14)
	testq	%r13, %r13
	movq	64(%rsp), %rdi
	jne	.LBB12_13
	jmp	.LBB12_29
.LBB12_12:
	movq	8(%r14), %rcx
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	%rsi, 16(%r14)
	movq	%rbp, 24(%r14)
.LBB12_13:
	movl	$16, %edx
	movq	%rdi, %rax
	mulq	%rdx
	addq	%rax, %r13
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r13
	je	.LBB12_30
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r13, %rdx
	callq	__rust_dealloc
	jmp	.LBB12_30
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb9011d3652172aa2E;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb9011d3652172aa2E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb9011d3652172aa2E:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb9011d3652172aa2E
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
	jne	.LBB13_2
.LBB13_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB13_29
.LBB13_2:
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
	jbe	.LBB13_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB13_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rbp
	jmp	.LBB13_7
.LBB13_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h1129246c11be5511E(%rip), %r8
	leaq	48(%rsp), %rdx
	movq	%r15, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
.LBB13_28:
	movabsq	$-9223372036854775807, %rbx
.LBB13_29:
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
.LBB13_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB13_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rbp
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB13_29
	jmp	.LBB13_7
.LBB13_5:
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
.LBB13_7:
	movl	$16, %ecx
	movq	%rbp, %rax
	mulq	%rcx
	jo	.LBB13_1
	movq	%rax, %r13
	leaq	16(%rbp), %rbx
	movq	%rax, %rsi
	addq	%rbx, %rsi
	jb	.LBB13_1
	je	.LBB13_10
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB13_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%rsi, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB13_29
.LBB13_10:
	movl	$16, %eax
.LBB13_11:
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
	je	.LBB13_12
	movq	%rbp, 32(%rsp)
	movq	8(%r15), %rcx
	leaq	-16(%rcx), %r8
	xorl	%r11d, %r11d
	movabsq	$5871781006564002453, %r9
	jmp	.LBB13_19
	.p2align	4, 0x90
.LBB13_25:
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
.LBB13_26:
	leaq	1(%r11), %rdx
	cmpq	%r14, %r11
	movq	%rdx, %r11
	je	.LBB13_27
.LBB13_19:
	cmpb	$0, (%rcx,%r11)
	js	.LBB13_26
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
	jne	.LBB13_23
	movl	$16, %esi
	.p2align	4, 0x90
.LBB13_22:
	addq	%rsi, %rbp
	andq	%rbx, %rbp
	movdqu	(%r13,%rbp), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rsi
	testl	%edi, %edi
	je	.LBB13_22
.LBB13_23:
	bsfw	%di, %dx
	movzwl	%dx, %edi
	addq	%rbp, %rdi
	andq	%rbx, %rdi
	cmpb	$0, (%r13,%rdi)
	js	.LBB13_25
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edi
	jmp	.LBB13_25
.LBB13_27:
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%r15)
	movq	%r12, 24(%r15)
	testq	%r14, %r14
	jne	.LBB13_13
	jmp	.LBB13_28
.LBB13_12:
	movq	8(%r15), %rcx
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	%rbp, 16(%r15)
	movq	%r12, 24(%r15)
.LBB13_13:
	movl	$16, %edx
	mulq	%rdx
	addq	%rax, %r14
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r14
	je	.LBB13_29
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r14, %rdx
	callq	__rust_dealloc
	jmp	.LBB13_29
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h1129246c11be5511E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h1129246c11be5511E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h1129246c11be5511E:
	movq	8(%rdx), %rcx
	shlq	$4, %r8
	subq	%r8, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17heefb2440d2482400E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17heefb2440d2482400E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17heefb2440d2482400E:
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

	.def	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E;
	.scl	3;
	.type	32;
	.endef
	.globl	__xmm@80808080808080808080808080808080
	.section	.rdata,"dr",discard,__xmm@80808080808080808080808080808080
	.p2align	4
__xmm@80808080808080808080808080808080:
	.zero	16,128
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
	.p2align	4, 0x90
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E:
.Lfunc_begin0:
.seh_proc _ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
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
	jmp	.LBB16_1
	.p2align	4, 0x90
.LBB16_6:
	cmpq	%r8, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%r8, %rax
	jae	.LBB16_7
.LBB16_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rdx,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rdx,%rax)
	movb	$1, %bl
	movq	%rcx, %rax
.LBB16_1:
	testb	$1, %bl
	je	.LBB16_6
	addq	$15, %rax
	jb	.LBB16_7
	cmpq	%r8, %rax
	jae	.LBB16_7
	leaq	1(%rax), %rcx
	jmp	.LBB16_5
.LBB16_7:
	cmpq	$16, %r8
	jae	.LBB16_8
	leaq	16(%rdx), %rcx
	callq	memmove
	jmp	.LBB16_10
.LBB16_8:
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdx,%r8)
.LBB16_10:
	movq	$0, -40(%rbp)
	movq	$16, -32(%rbp)
	movq	%r13, -24(%rbp)
	movq	(%r13), %rax
	movq	%rax, -8(%rbp)
	cmpq	$-1, %rax
	je	.LBB16_11
	xorl	%r15d, %r15d
	jmp	.LBB16_16
	.p2align	4, 0x90
.LBB16_25:
	shrq	$57, %rax
	leaq	-16(%r15), %rbx
	andq	%rbx, %rdx
	movb	%al, (%rcx,%r15)
	movb	%al, 16(%rdx,%rcx)
.LBB16_29:
	leaq	1(%r15), %rax
	cmpq	-8(%rbp), %r15
	movq	%rax, %r15
	je	.LBB16_13
.LBB16_16:
	movq	8(%r13), %r14
	cmpb	$-128, (%r14,%r15)
	jne	.LBB16_29
	movq	%r15, %rax
	notq	%rax
	shlq	$4, %rax
	addq	%rax, %r14
	.p2align	4, 0x90
.LBB16_18:
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
	jne	.LBB16_22
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB16_21:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB16_21
.LBB16_22:
	bsfw	%di, %bx
	movzwl	%bx, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB16_24
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %ebx
	bsfw	%bx, %bx
	movzwl	%bx, %ebx
.LBB16_24:
	movq	%r15, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB16_25
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
	je	.LBB16_28
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
	jmp	.LBB16_18
	.p2align	4, 0x90
.LBB16_28:
	movq	8(%r13), %rax
	leaq	-16(%r15), %rcx
	andq	(%r13), %rcx
	movb	$-1, (%rax,%r15)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%r14), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB16_29
.LBB16_13:
	movq	(%r13), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB16_14
.LBB16_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB16_14:
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
	.long	($cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E)@IMGREL
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
	.seh_endproc
	.def	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E@4HA":
.seh_proc "?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E@4HA"
.LBB16_12:
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
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc1c7ed8683259749E
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
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E
	.p2align	2
$cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E:
	.long	429065506
	.long	1
	.long	($stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E)@IMGREL
	.long	80
	.long	0
	.long	1
$stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E:
	.long	-1
	.long	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E@4HA"@IMGREL
$ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E:
	.long	.Lfunc_begin0@IMGREL
	.long	-1
	.long	.Ltmp0@IMGREL+1
	.long	0
	.long	.Ltmp1@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hc330e0bbe540b7f1E

	.def	entity_remove;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@18181818181818181818181818181818
	.section	.rdata,"dr",discard,__xmm@18181818181818181818181818181818
	.p2align	4
__xmm@18181818181818181818181818181818:
	.zero	16,24
	.section	.text,"xr",one_only,entity_remove
	.globl	entity_remove
	.p2align	4, 0x90
entity_remove:
.Lfunc_begin1:
.seh_proc entity_remove
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
	subq	$392, %rsp
	.seh_stackalloc 392
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	movaps	%xmm6, 240(%rbp)
	.seh_savexmm %xmm6, 368
	.seh_endprologue
	movq	$-2, 232(%rbp)
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movq	%rcx, %rsi
	movl	%edx, 168(%rbp)
	movl	%r9d, 172(%rbp)
	leaq	8(%rcx), %rdx
	leaq	80(%rbp), %rcx
	movq	%rdx, 72(%rbp)
	movl	%r8d, 208(%rbp)
	movl	%r9d, 212(%rbp)
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	cmpq	$0, 80(%rbp)
	je	.LBB17_127
	movq	496(%rsi), %rdx
	movq	504(%rsi), %rbx
	movabsq	$8317987319222330741, %rcx
	xorq	%rdx, %rcx
	movabsq	$7237128888997146477, %r13
	xorq	%rbx, %r13
	movabsq	$7816392313619706465, %rax
	xorq	%rdx, %rax
	movabsq	$2794729341343618606, %rdx
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
	movabsq	$5957624474761278301, %r14
	xorq	%r14, %rcx
	movabsq	$576460752303423488, %rbx
	addq	%r13, %rcx
	rolq	$13, %r13
	movq	%rdx, %rdi
	xorq	%rcx, %r13
	rolq	$32, %rcx
	xorq	%rbx, %rdi
	addq	%rdi, %rax
	shrdq	$48, %rdx, %rdi
	xorq	%rax, %rdi
	addq	%rdi, %rcx
	rolq	$21, %rdi
	addq	%r13, %rax
	rolq	$17, %r13
	xorq	%rcx, %rdi
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rbx, %rcx
	addq	%r13, %rcx
	rolq	$13, %r13
	movq	88(%rbp), %rdx
	movq	%rdx, 64(%rbp)
	xorq	%rcx, %r13
	rolq	$32, %rcx
	xorq	$255, %rax
	addq	%rdi, %rax
	rolq	$16, %rdi
	xorq	%rax, %rdi
	addq	%rdi, %rcx
	rolq	$21, %rdi
	movq	96(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	addq	%r13, %rax
	rolq	$17, %r13
	leaq	160(%rsi), %rdx
	movq	%rdx, 192(%rbp)
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rcx, %rdi
	addq	%r13, %rcx
	rolq	$13, %r13
	leaq	240(%rsi), %rdx
	movq	%rdx, 56(%rbp)
	xorq	%rcx, %r13
	rolq	$32, %rcx
	leaq	72(%rsi), %rdx
	movq	%rdx, 200(%rbp)
	addq	%rdi, %rax
	rolq	$16, %rdi
	xorq	%rax, %rdi
	addq	%rdi, %rcx
	rolq	$21, %rdi
	leaq	544(%rsi), %rdx
	movq	%rdx, -40(%rbp)
	addq	%r13, %rax
	rolq	$17, %r13
	leaq	472(%rsi), %r12
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rcx, %rdi
	addq	%r13, %rcx
	rolq	$13, %r13
	leaq	496(%rsi), %rdx
	addq	%rdi, %rax
	rolq	$16, %rdi
	xorq	%rcx, %r13
	xorq	%rax, %rdi
	rolq	$21, %rdi
	addq	%r13, %rax
	rolq	$17, %r13
	xorq	%rax, %r13
	rolq	$32, %rax
	xorq	%rdi, %r13
	xorq	%rax, %r13
	movq	512(%rsi), %r9
	movq	%rsi, 216(%rbp)
	movq	520(%rsi), %r10
	movq	%r13, %r15
	shrq	$57, %r15
	movd	%r15d, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	xorl	%r8d, %r8d
	movq	%r13, %rbx
.LBB17_2:
	andq	%r9, %rbx
	movdqu	(%r10,%rbx), %xmm2
	movdqa	%xmm0, %xmm3
	pcmpeqb	%xmm2, %xmm3
	pmovmskb	%xmm3, %edi
	.p2align	4, 0x90
.LBB17_3:
	testw	%di, %di
	je	.LBB17_4
	bsfw	%di, %cx
	movzwl	%cx, %eax
	leal	-1(%rdi), %esi
	andl	%edi, %esi
	addq	%rbx, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rcx
	subq	%rax, %rcx
	movl	%esi, %edi
	cmpq	%r14, -16(%rcx)
	jne	.LBB17_3
	jmp	.LBB17_14
	.p2align	4, 0x90
.LBB17_4:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB17_6
	addq	%r8, %rbx
	addq	$16, %rbx
	addq	$16, %r8
	jmp	.LBB17_2
.LBB17_14:
	addq	$-8, %rcx
.LBB17_47:
	movl	212(%rbp), %r13d
	movq	(%r12), %r15
	movq	(%rcx), %rdi
	shlq	$5, %rdi
	leaq	(%r15,%rdi), %rax
	movq	%rax, 32(%rsp)
	movb	$1, 40(%rsp)
	movq	192(%rbp), %rcx
	movq	56(%rbp), %rdx
	movq	200(%rbp), %r8
	movq	64(%rbp), %rsi
	movq	%rsi, %r9
	callq	_ZN8bevy_ecs5world10entity_ref28remove_bundle_from_archetype17hce62f56af2547df3E
	testq	%rax, %rax
	je	.LBB17_128
	cmpq	%rsi, %rdx
	movq	216(%rbp), %rbx
	je	.LBB17_89
	movq	%rdx, -64(%rbp)
	movq	176(%rbx), %rdx
	cmpq	%rdx, %rsi
	jae	.LBB17_129
	movq	160(%rbx), %rax
	movq	8(%r15,%rdi), %r14
	movq	24(%r15,%rdi), %rcx
	leaq	(%r14,%rcx,8), %r12
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$5, %rcx
	movq	%rcx, -32(%rbp)
	leaq	(%rax,%rcx), %rdx
	addq	$144, %rdx
	leaq	592(%rbx), %rax
	movq	%rax, 192(%rbp)
	leaq	568(%rbx), %rax
	movq	%rax, -80(%rbp)
	xorps	%xmm6, %xmm6
	movq	%rdx, -56(%rbp)
	movq	%r12, -48(%rbp)
	.p2align	4, 0x90
.LBB17_51:
	cmpq	%r12, %r14
	je	.LBB17_52
	movq	(%r14), %r15
	addq	$8, %r14
	cmpq	8(%rdx), %r15
	jae	.LBB17_51
	movq	(%rdx), %rax
	movq	%r15, %rdi
	shlq	$4, %rdi
	cmpq	$0, (%rax,%rdi)
	je	.LBB17_51
	movq	608(%rbx), %r12
	cmpq	%r15, %r12
	jbe	.LBB17_98
	movq	192(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax,%rdi)
	je	.LBB17_94
	movq	8(%rax,%rdi), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	movq	-40(%rbp), %rax
	addq	(%rax), %rsi
	movq	216(%rbp), %rbx
	movq	-48(%rbp), %r12
	movq	16(%rsi), %rdx
	cmpq	8(%rsi), %rdx
	je	.LBB17_120
	jmp	.LBB17_121
.LBB17_98:
	movq	$4, -24(%rbp)
	leaq	-16(%rbp), %rax
	movups	%xmm6, (%rax)
	movq	560(%rbx), %rax
	movq	%rax, 200(%rbp)
	movq	600(%rbx), %rcx
	leaq	1(%r15), %rsi
	movq	%rsi, %r13
	subq	%r12, %r13
	subq	%r12, %rcx
	movq	%r12, %rax
	cmpq	%r13, %rcx
	jae	.LBB17_101
	movb	$1, 230(%rbp)
.Ltmp16:
	movq	192(%rbp), %rcx
	movq	%r12, %rdx
	movq	%r13, %r8
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h4ed14eb012480fabE
.Ltmp17:
	movq	216(%rbp), %rax
	movq	608(%rax), %rax
.LBB17_101:
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	192(%rbp), %rdx
	addq	(%rdx), %rcx
	cmpq	$2, %r13
	jb	.LBB17_105
	movq	%r15, %rdx
	subq	%r12, %rdx
	.p2align	4, 0x90
.LBB17_103:
	movq	$0, (%rcx)
	addq	$16, %rcx
	decq	%rdx
	jne	.LBB17_103
	addq	%r13, %rax
	decq	%rax
.LBB17_105:
	cmpq	%r12, %rsi
	movl	212(%rbp), %r13d
	je	.LBB17_107
	movq	$0, (%rcx)
	incq	%rax
.LBB17_107:
	movq	216(%rbp), %rcx
	movq	%rax, 608(%rcx)
	movq	%rax, %r12
	cmpq	%r15, %r12
	ja	.LBB17_108
	jmp	.LBB17_96
.LBB17_94:
	movq	$4, -24(%rbp)
	leaq	-16(%rbp), %rax
	movups	%xmm6, (%rax)
	movq	216(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, 200(%rbp)
	cmpq	%r15, %r12
	jbe	.LBB17_96
.LBB17_108:
	movq	216(%rbp), %rbx
	movq	592(%rbx), %rax
	movq	$1, (%rax,%rdi)
	movq	200(%rbp), %rcx
	movq	%rcx, 8(%rax,%rdi)
	movq	584(%rbx), %rdx
	cmpq	576(%rbx), %rdx
	jne	.LBB17_111
	movb	$1, 230(%rbp)
.Ltmp20:
	movq	-80(%rbp), %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc554b6d1d555b69dE
.Ltmp21:
	movq	216(%rbp), %rbx
	movq	584(%rbx), %rdx
	movl	212(%rbp), %r13d
.LBB17_111:
	movq	568(%rbx), %rax
	movq	%r15, (%rax,%rdx,8)
	incq	%rdx
	movq	%rdx, 584(%rbx)
	movq	-8(%rbp), %rax
	movq	%rax, 96(%rbp)
	movdqu	-24(%rbp), %xmm0
	movdqa	%xmm0, 80(%rbp)
	movq	560(%rbx), %rdx
	cmpq	552(%rbx), %rdx
	movq	-48(%rbp), %r12
	jne	.LBB17_114
.Ltmp22:
	movq	-40(%rbp), %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h922813666c0be561E
.Ltmp23:
	movq	560(%rbx), %rdx
.LBB17_114:
	movq	544(%rbx), %rax
	leaq	(%rdx,%rdx,2), %rcx
	movq	-8(%rbp), %rsi
	movq	%rsi, 16(%rax,%rcx,8)
	movdqu	-24(%rbp), %xmm0
	movdqu	%xmm0, (%rax,%rcx,8)
	incq	%rdx
	movq	%rdx, 560(%rbx)
	movq	200(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rcx,8), %rsi
	movq	16(%rsi), %rdx
	cmpq	8(%rsi), %rdx
	jne	.LBB17_121
.LBB17_120:
	movq	%rsi, %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h18520f04afc9da20E
	movq	16(%rsi), %rdx
.LBB17_121:
	movq	(%rsi), %rax
	movl	208(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,8)
	movl	%r13d, 4(%rax,%rdx,8)
	incq	%rdx
	movq	%rdx, 16(%rsi)
	movq	-56(%rbp), %rdx
	cmpq	%r15, 8(%rdx)
	jbe	.LBB17_51
	movq	(%rdx), %rax
	cmpq	$0, (%rax,%rdi)
	je	.LBB17_51
	movq	-32(%rdx), %rcx
	movq	8(%rax,%rdi), %rax
	shlq	$4, %rax
	cmpb	$0, 8(%rcx,%rax)
	je	.LBB17_51
	movq	56(%rbp), %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets7get_mut17h46fc743c47d2587bE
	testq	%rax, %rax
	je	.LBB17_125
	movq	%rax, %rcx
	movl	208(%rbp), %edx
	movl	%r13d, %r8d
	callq	_ZN8bevy_ecs7storage10sparse_set18ComponentSparseSet6remove17hb1b0ea47f31d7eafE
	movq	-56(%rbp), %rdx
	jmp	.LBB17_51
.LBB17_52:
	movq	176(%rbx), %r14
	movq	64(%rbp), %rcx
	cmpq	%r14, %rcx
	jae	.LBB17_53
	movq	160(%rbx), %r15
	movq	312(%rbx), %r12
	movq	328(%rbx), %rdi
	movq	-32(%rbp), %rax
	leaq	(%r15,%rax), %rdx
	leaq	168(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	%rsi, %r8
	callq	_ZN8bevy_ecs9archetype9Archetype11swap_remove17hc8ba87f0926f5569E
	cmpl	$1, 176(%rbp)
	jne	.LBB17_61
	movl	184(%rbp), %edx
	movq	72(%rbp), %rcx
	movq	64(%rbp), %r8
	movq	%rsi, %r9
	callq	_ZN8bevy_ecs6entity8Entities3set17h9e91bb373c8ee791E
.LBB17_61:
	movq	-64(%rbp), %rax
	cmpq	%r14, %rax
	jae	.LBB17_62
	movq	168(%rbp), %rbx
	movq	-32(%rbp), %rcx
	movq	8(%r15,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	leaq	(%r15,%rax), %rsi
	movq	8(%r15,%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.LBB17_65
	movq	%rsi, %rcx
	movl	208(%rbp), %edx
	movl	%r13d, %r8d
	movq	%rbx, %r9
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h2c04090af96fd937E
	movq	%rax, %rsi
	movq	%rdx, %rdi
	jmp	.LBB17_88
.LBB17_65:
	jbe	.LBB17_66
	cmpq	%rdi, %rcx
	ja	.LBB17_70
	je	.LBB17_72
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%r12,%rax,8), %rax
	leaq	(%rdx,%rdx,8), %rcx
	leaq	(%r12,%rcx,8), %r9
	jmp	.LBB17_79
.LBB17_66:
	cmpq	%rdi, %rdx
	ja	.LBB17_67
	cmpq	%rcx, %rdx
	jbe	.LBB17_130
	cmpq	%rdi, %rdx
	je	.LBB17_77
	leaq	(%rdx,%rdx,8), %rax
	leaq	(%r12,%rax,8), %r9
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%r12,%rax,8), %rax
.LBB17_79:
	leaq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rbx, %r8
	callq	_ZN8bevy_ecs7storage5table5Table34move_to_and_drop_missing_unchecked17h1c373b94841c34a3E
	movq	-24(%rbp), %r9
	movq	%rsi, %rcx
	movl	208(%rbp), %edx
	movl	%r13d, %r8d
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h2c04090af96fd937E
	movq	%rax, %rsi
	movq	%rdx, %rdi
	cmpl	$1, -16(%rbp)
	jne	.LBB17_88
	movl	-12(%rbp), %r8d
	movl	-8(%rbp), %r9d
	leaq	80(%rbp), %rcx
	movq	72(%rbp), %rdx
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	cmpq	$0, 80(%rbp)
	je	.LBB17_81
	movq	88(%rbp), %rax
	cmpq	%r14, %rax
	jae	.LBB17_84
	movq	96(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	104(%r15,%rax), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB17_131
	addq	%r15, %rax
	addq	$88, %rax
	movq	(%rax), %rax
	shlq	$4, %rcx
	movq	%rbx, (%rax,%rcx)
.LBB17_88:
	movq	72(%rbp), %rcx
	movl	%r13d, %edx
	movq	%rsi, %r8
	movq	%rdi, %r9
	callq	_ZN8bevy_ecs6entity8Entities3set17h9e91bb373c8ee791E
.LBB17_89:
	#APP
	#NO_APP
	movaps	240(%rbp), %xmm6
	addq	$392, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_6:
	movq	216(%rbp), %rsi
	cmpq	$0, 528(%rsi)
	je	.LBB17_7
.LBB17_8:
	movq	$8, 168(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 176(%rbp)
	leaq	96(%rsi), %rcx
	movq	96(%rsi), %r9
	movq	104(%rsi), %r10
	movabsq	$3582814791861339937, %rdi
	xorl	%r8d, %r8d
	movdqa	__xmm@18181818181818181818181818181818(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB17_9:
	andq	%r9, %rdi
	movdqu	(%r10,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB17_10:
	testw	%si, %si
	je	.LBB17_11
	bsfw	%si, %dx
	movzwl	%dx, %eax
	leal	-1(%rsi), %ebx
	andl	%esi, %ebx
	addq	%rdi, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rdx
	subq	%rax, %rdx
	movl	%ebx, %esi
	cmpq	%r14, -16(%rdx)
	jne	.LBB17_10
	jmp	.LBB17_29
.LBB17_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB17_15
	addq	%r8, %rdi
	addq	$16, %rdi
	addq	$16, %r8
	jmp	.LBB17_9
.LBB17_29:
	addq	$-8, %rdx
.LBB17_30:
	movq	(%rdx), %rsi
	movb	$1, 231(%rbp)
.Ltmp10:
	leaq	168(%rbp), %rcx
	xorl	%edx, %edx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc554b6d1d555b69dE
.Ltmp11:
	movq	216(%rbp), %rbx
	movq	168(%rbp), %rax
	movq	184(%rbp), %rcx
	movq	%rsi, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 184(%rbp)
	movq	488(%rbx), %rdi
	movq	%rcx, 96(%rbp)
	movdqu	168(%rbp), %xmm0
	movdqa	%xmm0, 80(%rbp)
	movb	$0, 231(%rbp)
.Ltmp12:
	movq	%rdi, 32(%rsp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdx
	leaq	-24(%rbp), %rcx
	leaq	80(%rbp), %r9
	movl	$29, %r8d
	callq	_ZN8bevy_ecs6bundle17initialize_bundle17h6f83904060b4c120E
.Ltmp13:
	movdqu	-24(%rbp), %xmm0
	movdqu	-8(%rbp), %xmm1
	movdqa	%xmm1, 96(%rbp)
	movdqa	%xmm0, 80(%rbp)
	movq	488(%rbx), %rdx
	cmpq	480(%rbx), %rdx
	jne	.LBB17_33
.Ltmp14:
	movq	%r12, %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6f4bfe5e187720a9E
.Ltmp15:
	movq	216(%rbp), %rbx
	movq	488(%rbx), %rdx
	jmp	.LBB17_41
.LBB17_33:
	movq	216(%rbp), %rbx
.LBB17_41:
	movq	472(%rbx), %rax
	movq	%rdx, %rcx
	shlq	$5, %rcx
	movups	-24(%rbp), %xmm0
	movdqu	-8(%rbp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rdx
	movq	%rdx, 488(%rbx)
	movq	512(%rbx), %rcx
	movq	520(%rbx), %rax
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB17_44
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB17_43:
	addq	%rbx, %r13
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB17_43
.LBB17_44:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r13, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB17_46
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB17_46:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	%r15b, (%rax,%rdx)
	movb	%r15b, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rcx
	andb	$1, %bl
	movzbl	%bl, %ebx
	movq	216(%rbp), %rsi
	subq	%rbx, 528(%rsi)
	subq	%rdx, %rcx
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rdi, -8(%rcx)
	addq	$-8, %rcx
	incq	536(%rsi)
	jmp	.LBB17_47
.LBB17_7:
	leaq	512(%rsi), %rcx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1534f5e58f5248d5E
	jmp	.LBB17_8
.LBB17_96:
	movb	$1, 230(%rbp)
.Ltmp18:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %r8
	movq	%r15, %rcx
	movq	%r12, %rdx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
.Ltmp19:
	ud2
.LBB17_15:
	movq	216(%rbp), %rsi
	cmpq	$0, 112(%rsi)
	jne	.LBB17_17
	movb	$1, 231(%rbp)
.Ltmp2:
	movq	%rcx, %rdx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb9011d3652172aa2E
.Ltmp3:
.LBB17_17:
	movq	88(%rsi), %rdi
	movq	$0, 80(%rbp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rax
	movq	%rax, 88(%rbp)
	movq	$29, 96(%rbp)
	movq	$1, 104(%rbp)
	movq	%r14, 112(%rbp)
	movq	$4, 120(%rbp)
	movq	$4, 128(%rbp)
	movq	$0, 136(%rbp)
	movw	$256, 144(%rbp)
	movb	$1, 231(%rbp)
.Ltmp4:
	leaq	-24(%rbp), %rcx
	leaq	80(%rbp), %r8
	movq	%rdi, %rdx
	callq	_ZN8bevy_ecs9component13ComponentInfo3new17hb1b178f87dcedcd1E
.Ltmp5:
	cmpb	$0, 48(%rbp)
	je	.LBB17_19
	movb	$1, 229(%rbp)
.Ltmp6:
	leaq	-24(%rbp), %rdx
	movq	56(%rbp), %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17h88a6ccbdc456f0e7E
.Ltmp7:
.LBB17_19:
	movups	40(%rbp), %xmm0
	movaps	%xmm0, 144(%rbp)
	movdqu	-24(%rbp), %xmm0
	movdqu	-8(%rbp), %xmm1
	movdqu	8(%rbp), %xmm2
	movdqu	24(%rbp), %xmm3
	movdqa	%xmm3, 128(%rbp)
	movdqa	%xmm2, 112(%rbp)
	movdqa	%xmm1, 96(%rbp)
	movdqa	%xmm0, 80(%rbp)
	movq	%rdi, %rax
	movq	216(%rbp), %rbx
	cmpq	80(%rbx), %rdi
	jne	.LBB17_22
.Ltmp8:
	movq	200(%rbp), %rcx
	movq	%rdi, %rdx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h02b3492cc657dba3E
.Ltmp9:
	movq	216(%rbp), %rbx
	movq	88(%rbx), %rax
.LBB17_22:
	movq	72(%rbx), %rcx
	leaq	(%rax,%rax,4), %rdx
	shlq	$4, %rdx
	movaps	144(%rbp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	80(%rbp), %xmm0
	movdqa	96(%rbp), %xmm1
	movdqa	112(%rbp), %xmm2
	movdqa	128(%rbp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbx)
	movq	96(%rbx), %rcx
	movq	104(%rbx), %rax
	movabsq	$3582814791861339937, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB17_25
	movl	$16, %esi
.LBB17_24:
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB17_24
.LBB17_25:
	bsfw	%bx, %bx
	movzwl	%bx, %ebx
	addq	%rdx, %rbx
	andq	%rcx, %rbx
	movzbl	(%rax,%rbx), %r8d
	testb	%r8b, %r8b
	js	.LBB17_27
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	movzbl	(%rax,%rbx), %r8d
.LBB17_27:
	leaq	-16(%rbx), %rdx
	andq	%rcx, %rdx
	movb	$24, (%rax,%rbx)
	movb	$24, 16(%rdx,%rax)
	shlq	$4, %rbx
	movq	%rax, %rdx
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movq	216(%rbp), %rsi
	subq	%rcx, 112(%rsi)
	subq	%rbx, %rdx
	negq	%rbx
	movq	%r14, -16(%rax,%rbx)
	movq	%rdi, -8(%rdx)
	addq	$-8, %rdx
	incq	120(%rsi)
	jmp	.LBB17_30
.LBB17_129:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %r8
	movq	%rsi, %rcx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_53:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %r8
	movq	%r14, %rdx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_62:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %r8
	movq	%rax, %rcx
	movq	%r14, %rdx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_72:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %r8
	jmp	.LBB17_73
.LBB17_130:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_77:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %r8
.LBB17_73:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_84:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %r8
	movq	%rax, %rcx
	movq	%r14, %rdx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_131:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_127:
	leaq	168(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	_ZN61_$LT$bevy_ecs..entity..Entity$u20$as$u20$core..fmt..Debug$GT$3fmt17hd68eb4a20c857de8E(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rax
	movq	%rax, 80(%rbp)
	movq	$2, 88(%rbp)
	movq	$0, 96(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, 112(%rbp)
	movq	$1, 120(%rbp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdx
	leaq	80(%rbp), %rcx
	callq	_ZN4core9panicking9panic_fmt17h94563f1a4f8281d4E
	ud2
.LBB17_128:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rcx
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %r8
	movl	$43, %edx
	callq	_ZN4core6option13expect_failed17h724690bab8ec1ebbE
	ud2
.LBB17_125:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rcx
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %r8
	movl	$43, %edx
	callq	_ZN4core9panicking5panic17h5935d2cd162cf84fE
	ud2
.LBB17_70:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rcx
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %r8
	jmp	.LBB17_68
.LBB17_67:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rcx
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %r8
.LBB17_68:
	movl	$35, %edx
	callq	_ZN4core9panicking5panic17h5935d2cd162cf84fE
	ud2
.LBB17_81:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rcx
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %r8
	movl	$43, %edx
	callq	_ZN4core9panicking5panic17h5935d2cd162cf84fE
	ud2
	.seh_handlerdata
	.long	($cppxdata$entity_remove)@IMGREL
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.def	"?dtor$34@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$34@?0?entity_remove@4HA":
.seh_proc "?dtor$34@?0?entity_remove@4HA"
.LBB17_34:
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
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	128(%rdx), %rbp
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	leaq	80(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha6cf801bb1e5d676E
	movb	$0, 229(%rbp)
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.def	"?dtor$36@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$36@?0?entity_remove@4HA":
.seh_proc "?dtor$36@?0?entity_remove@4HA"
.LBB17_36:
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
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	128(%rdx), %rbp
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	cmpb	$0, 229(%rbp)
	je	.LBB17_37
	leaq	-24(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha6cf801bb1e5d676E
	movb	$1, 231(%rbp)
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_37:
	movb	$1, 231(%rbp)
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.def	"?dtor$55@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$55@?0?entity_remove@4HA":
.seh_proc "?dtor$55@?0?entity_remove@4HA"
.LBB17_55:
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
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	128(%rdx), %rbp
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	leaq	80(%rbp), %rcx
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h1302dd7e770677deE
	movb	$0, 231(%rbp)
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.def	"?dtor$56@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$56@?0?entity_remove@4HA":
.seh_proc "?dtor$56@?0?entity_remove@4HA"
.LBB17_56:
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
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	128(%rdx), %rbp
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	cmpb	$0, 231(%rbp)
	je	.LBB17_58
	leaq	168(%rbp), %rcx
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h0660f5894c66bd18E
.LBB17_58:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.def	"?dtor$115@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$115@?0?entity_remove@4HA":
.seh_proc "?dtor$115@?0?entity_remove@4HA"
.LBB17_115:
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
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	128(%rdx), %rbp
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	cmpb	$0, 230(%rbp)
	je	.LBB17_117
	leaq	-24(%rbp), %rcx
	callq	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hae1447f73aa21d29E
.LBB17_117:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.def	"?dtor$132@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$132@?0?entity_remove@4HA":
.seh_proc "?dtor$132@?0?entity_remove@4HA"
.LBB17_132:
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
	subq	$72, %rsp
	.seh_stackalloc 72
	leaq	128(%rdx), %rbp
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm %xmm6, 48
	.seh_endprologue
	movb	$0, 230(%rbp)
	leaq	80(%rbp), %rcx
	callq	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hae1447f73aa21d29E
	movb	$0, 230(%rbp)
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
	.section	.text,"xr",one_only,entity_remove
	.seh_endproc
	.section	.xdata,"dr",associative,entity_remove
	.p2align	2
$cppxdata$entity_remove:
	.long	429065506
	.long	6
	.long	($stateUnwindMap$entity_remove)@IMGREL
	.long	0
	.long	0
	.long	12
	.long	($ip2state$entity_remove)@IMGREL
	.long	360
	.long	0
	.long	1
$stateUnwindMap$entity_remove:
	.long	-1
	.long	"?dtor$56@?0?entity_remove@4HA"@IMGREL
	.long	0
	.long	"?dtor$55@?0?entity_remove@4HA"@IMGREL
	.long	0
	.long	"?dtor$36@?0?entity_remove@4HA"@IMGREL
	.long	2
	.long	"?dtor$34@?0?entity_remove@4HA"@IMGREL
	.long	-1
	.long	"?dtor$115@?0?entity_remove@4HA"@IMGREL
	.long	4
	.long	"?dtor$132@?0?entity_remove@4HA"@IMGREL
$ip2state$entity_remove:
	.long	.Lfunc_begin1@IMGREL
	.long	-1
	.long	.Ltmp16@IMGREL+1
	.long	4
	.long	.Ltmp22@IMGREL+1
	.long	5
	.long	.Ltmp23@IMGREL+1
	.long	-1
	.long	.Ltmp10@IMGREL+1
	.long	0
	.long	.Ltmp14@IMGREL+1
	.long	1
	.long	.Ltmp15@IMGREL+1
	.long	-1
	.long	.Ltmp18@IMGREL+1
	.long	4
	.long	.Ltmp2@IMGREL+1
	.long	0
	.long	.Ltmp6@IMGREL+1
	.long	2
	.long	.Ltmp8@IMGREL+1
	.long	3
	.long	.Ltmp9@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,entity_remove

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.0
anon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"entity_remove_intersection::A"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.1
anon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"assertion failed: mid <= self.len()"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.2
anon.ddd9cd1641521d33379e20f985469fcb.2:
	.ascii	"intersections should always return a result"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.3
anon.ddd9cd1641521d33379e20f985469fcb.3:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\world\\entity_ref.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.4
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000\033\002\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.5
anon.ddd9cd1641521d33379e20f985469fcb.5:
	.ascii	"called `Option::unwrap()` on a `None` value"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.6
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.6:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000&\002\000\000\025\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.7
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000\f\002\000\000\r\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.8
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000\324\001\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.9
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000\333\001\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.10
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000\361\001\000\000\021\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.11
anon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\archetype.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.12
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"b\000\000\000\000\000\000\000\257\001\000\000\t\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.13
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"i\000\000\000\000\000\000\000\360\001\000\000(\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.14
anon.ddd9cd1641521d33379e20f985469fcb.14:
	.ascii	"Entity "

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.15
anon.ddd9cd1641521d33379e20f985469fcb.15:
	.ascii	" does not exist"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.16
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.16:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.14
	.asciz	"\007\000\000\000\000\000\000"
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"\017\000\000\000\000\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.17
anon.ddd9cd1641521d33379e20f985469fcb.17:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\world\\mod.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.18
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.18:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.17
	.asciz	"b\000\000\000\000\000\000\000\367\000\000\000 \000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.19
anon.ddd9cd1641521d33379e20f985469fcb.19:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\storage\\sparse_set.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.20
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"k\000\000\000\000\000\000\000E\000\000\000\t\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.21
anon.ddd9cd1641521d33379e20f985469fcb.21:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\storage\\table.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.22
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\216\002\000\0002\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.23
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\217\002\000\000\023\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.24
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\221\002\000\0002\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.25
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\222\002\000\000\023\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.26
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\222\002\000\000,\000\000"


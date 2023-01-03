	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"entity_insert.3f8e5d40-cgu.0"
	.def	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5797dd39d61c303eE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5797dd39d61c303eE
	.p2align	4, 0x90
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5797dd39d61c303eE:
.seh_proc _ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5797dd39d61c303eE
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

	.def	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h66d2f409ce236574E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h66d2f409ce236574E
	.p2align	4, 0x90
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h66d2f409ce236574E:
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_1
	movq	8(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB1_1:
	retq

	.def	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2c896a33bafab8feE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2c896a33bafab8feE
	.p2align	4, 0x90
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2c896a33bafab8feE:
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

	.def	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h20f9568657dca739E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h20f9568657dca739E
	.p2align	4, 0x90
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h20f9568657dca739E:
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_1
	movq	(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB3_1:
	retq

	.def	_ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E
	.p2align	4, 0x90
_ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E:
.seh_proc _ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7416d073563d22daE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7416d073563d22daE
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7416d073563d22daE:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7416d073563d22daE
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
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	shrq	$58, %rcx
	sete	%r8b
	movq	%rdi, %rdx
	shlq	$5, %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB5_3
	movq	(%rsi), %rcx
	shlq	$5, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB5_4
.LBB5_3:
	movq	$0, 56(%rsp)
.LBB5_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ddb33048bc8b426E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ddb33048bc8b426E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ddb33048bc8b426E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ddb33048bc8b426E
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
	callq	_ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h9745e576415e8440E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h9745e576415e8440E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h9745e576415e8440E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h9745e576415e8440E
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
	movabsq	$115292150460684698, %rcx
	xorl	%r8d, %r8d
	cmpq	%rcx, %rdi
	setb	%r8b
	movq	%rdi, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB7_3
	movq	(%rsi), %rcx
	shlq	$4, %rax
	leaq	(%rax,%rax,4), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 56(%rsp)
.LBB7_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h817529314a6d1d05E
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

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5d8b8c084d7d07eaE;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5d8b8c084d7d07eaE
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5d8b8c084d7d07eaE:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5d8b8c084d7d07eaE
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
	jne	.LBB8_2
.LBB8_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB8_29
.LBB8_2:
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
	jbe	.LBB8_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB8_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rbp
	jmp	.LBB8_7
.LBB8_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hf5d09e0af7636d30E(%rip), %r8
	leaq	48(%rsp), %rdx
	movq	%r15, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
.LBB8_28:
	movabsq	$-9223372036854775807, %rbx
.LBB8_29:
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
.LBB8_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB8_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rbp
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB8_29
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
	movq	$-1, %rbp
	shrq	%cl, %rbp
	incq	%rbp
.LBB8_7:
	movl	$16, %ecx
	movq	%rbp, %rax
	mulq	%rcx
	jo	.LBB8_1
	movq	%rax, %r13
	leaq	16(%rbp), %rbx
	movq	%rax, %rsi
	addq	%rbx, %rsi
	jb	.LBB8_1
	je	.LBB8_10
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB8_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%rsi, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB8_29
.LBB8_10:
	movl	$16, %eax
.LBB8_11:
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
	je	.LBB8_12
	movq	%rbp, 32(%rsp)
	movq	8(%r15), %rcx
	leaq	-16(%rcx), %r8
	xorl	%r11d, %r11d
	movabsq	$5871781006564002453, %r9
	jmp	.LBB8_19
	.p2align	4, 0x90
.LBB8_25:
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
.LBB8_26:
	leaq	1(%r11), %rdx
	cmpq	%r14, %r11
	movq	%rdx, %r11
	je	.LBB8_27
.LBB8_19:
	cmpb	$0, (%rcx,%r11)
	js	.LBB8_26
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
	jne	.LBB8_23
	movl	$16, %esi
	.p2align	4, 0x90
.LBB8_22:
	addq	%rsi, %rbp
	andq	%rbx, %rbp
	movdqu	(%r13,%rbp), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rsi
	testl	%edi, %edi
	je	.LBB8_22
.LBB8_23:
	bsfw	%di, %dx
	movzwl	%dx, %edi
	addq	%rbp, %rdi
	andq	%rbx, %rdi
	cmpb	$0, (%r13,%rdi)
	js	.LBB8_25
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edi
	jmp	.LBB8_25
.LBB8_27:
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%r15)
	movq	%r12, 24(%r15)
	testq	%r14, %r14
	jne	.LBB8_13
	jmp	.LBB8_28
.LBB8_12:
	movq	8(%r15), %rcx
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	%rbp, 16(%r15)
	movq	%r12, 24(%r15)
.LBB8_13:
	movl	$16, %edx
	mulq	%rdx
	addq	%rax, %r14
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r14
	je	.LBB8_29
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r14, %rdx
	callq	__rust_dealloc
	jmp	.LBB8_29
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8dbee5756e950e6eE;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8dbee5756e950e6eE
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8dbee5756e950e6eE:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8dbee5756e950e6eE
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
	jne	.LBB9_2
.LBB9_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB9_30
.LBB9_2:
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
	jbe	.LBB9_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB9_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rsi
	jmp	.LBB9_7
.LBB9_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8c7ff93acd6001a5E(%rip), %r8
	leaq	80(%rsp), %rdx
	movq	%r14, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
.LBB9_29:
	movabsq	$-9223372036854775807, %rbx
.LBB9_30:
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
.LBB9_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB9_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rsi
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB9_30
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
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.LBB9_7:
	movl	$16, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB9_1
	movq	%rax, %rbx
	leaq	16(%rsi), %r12
	movq	%rax, %r15
	addq	%r12, %r15
	jb	.LBB9_1
	je	.LBB9_10
	movl	$16, %edx
	movq	%r15, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB9_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%r15, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB9_30
.LBB9_10:
	movl	$16, %eax
.LBB9_11:
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
	je	.LBB9_12
	movq	%rsi, 48(%rsp)
	movq	%rbp, 56(%rsp)
	movq	%rdi, 64(%rsp)
	movq	8(%r14), %rcx
	leaq	-16(%rcx), %rdi
	movq	40(%rsp), %rdx
	movq	%rdx, 72(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB9_19
	.p2align	4, 0x90
.LBB9_26:
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
.LBB9_27:
	leaq	1(%r15), %rdx
	cmpq	%r13, %r15
	movq	%rdx, %r15
	je	.LBB9_28
.LBB9_19:
	cmpb	$0, (%rcx,%r15)
	js	.LBB9_27
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
	jne	.LBB9_24
	movq	%rdi, %rdx
	movl	$16, %edi
	.p2align	4, 0x90
.LBB9_22:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rbx,%rsi), %xmm0
	pmovmskb	%xmm0, %ebp
	addq	$16, %rdi
	testl	%ebp, %ebp
	je	.LBB9_22
	movq	%rdx, %rdi
.LBB9_24:
	bsfw	%bp, %dx
	movzwl	%dx, %ebp
	addq	%rsi, %rbp
	andq	%rax, %rbp
	cmpb	$0, (%rbx,%rbp)
	js	.LBB9_26
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebp
	jmp	.LBB9_26
.LBB9_28:
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	48(%rsp), %rax
	movq	%rax, 16(%r14)
	movq	56(%rsp), %rax
	movq	%rax, 24(%r14)
	testq	%r13, %r13
	movq	64(%rsp), %rdi
	jne	.LBB9_13
	jmp	.LBB9_29
.LBB9_12:
	movq	8(%r14), %rcx
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	%rsi, 16(%r14)
	movq	%rbp, 24(%r14)
.LBB9_13:
	movl	$16, %edx
	movq	%rdi, %rax
	mulq	%rdx
	addq	%rax, %r13
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r13
	je	.LBB9_30
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r13, %rdx
	callq	__rust_dealloc
	jmp	.LBB9_30
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8c7ff93acd6001a5E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8c7ff93acd6001a5E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8c7ff93acd6001a5E:
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

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hf5d09e0af7636d30E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hf5d09e0af7636d30E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hf5d09e0af7636d30E:
	movq	8(%rdx), %rcx
	shlq	$4, %r8
	subq	%r8, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq

	.def	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE;
	.scl	3;
	.type	32;
	.endef
	.globl	__xmm@80808080808080808080808080808080
	.section	.rdata,"dr",discard,__xmm@80808080808080808080808080808080
	.p2align	4
__xmm@80808080808080808080808080808080:
	.zero	16,128
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
	.p2align	4, 0x90
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE:
.Lfunc_begin0:
.seh_proc _ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
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
	.long	($cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE)@IMGREL
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
	.seh_endproc
	.def	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE@4HA":
.seh_proc "?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE@4HA"
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
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5797dd39d61c303eE
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
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE
	.p2align	2
$cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE:
	.long	429065506
	.long	1
	.long	($stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE)@IMGREL
	.long	80
	.long	0
	.long	1
$stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE:
	.long	-1
	.long	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE@4HA"@IMGREL
$ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE:
	.long	.Lfunc_begin0@IMGREL
	.long	-1
	.long	.Ltmp0@IMGREL+1
	.long	0
	.long	.Ltmp1@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hab9e4c053371ee8bE

	.def	entity_insert;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c
	.section	.rdata,"dr",discard,__xmm@5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c
	.p2align	4
__xmm@5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c:
	.zero	16,92
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
	subq	$392, %rsp
	.seh_stackalloc 392
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	movaps	%xmm6, 240(%rbp)
	.seh_savexmm %xmm6, 368
	.seh_endprologue
	movq	$-2, 232(%rbp)
	movdqa	%xmm3, %xmm6
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movq	%rcx, %r14
	movl	%edx, 96(%rbp)
	movl	%r9d, 100(%rbp)
	leaq	8(%rcx), %rsi
	leaq	144(%rbp), %rcx
	movq	%rsi, %rdx
	movl	%r8d, 224(%rbp)
	movl	%r9d, 132(%rbp)
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, 144(%rbp)
	je	.LBB13_82
	movq	%rsi, -40(%rbp)
	movq	496(%r14), %rdx
	movq	504(%r14), %rbx
	movabsq	$8317987319222330741, %rcx
	xorq	%rdx, %rcx
	movabsq	$7237128888997146477, %r12
	xorq	%rbx, %r12
	movabsq	$7816392313619706465, %rax
	xorq	%rdx, %rax
	movabsq	$8852809565944070856, %rdx
	addq	%r12, %rcx
	rolq	$13, %r12
	xorq	%rbx, %rdx
	xorq	%rcx, %r12
	rolq	$32, %rcx
	addq	%rdx, %rax
	rolq	$16, %rdx
	xorq	%rax, %rdx
	addq	%rdx, %rcx
	rolq	$21, %rdx
	xorq	%rcx, %rdx
	addq	%r12, %rax
	rolq	$17, %r12
	xorq	%rax, %r12
	rolq	$32, %rax
	movabsq	$1062316279441041339, %r13
	xorq	%r13, %rcx
	movabsq	$576460752303423488, %rbx
	addq	%r12, %rcx
	rolq	$13, %r12
	movq	%rdx, %rsi
	xorq	%rcx, %r12
	rolq	$32, %rcx
	xorq	%rbx, %rsi
	addq	%rsi, %rax
	shrdq	$48, %rdx, %rsi
	xorq	%rax, %rsi
	addq	%rsi, %rcx
	rolq	$21, %rsi
	movl	148(%rbp), %edx
	movl	%edx, 124(%rbp)
	addq	%r12, %rax
	rolq	$17, %r12
	xorq	%rcx, %rsi
	xorq	%rax, %r12
	rolq	$32, %rax
	xorq	%rbx, %rcx
	addq	%r12, %rcx
	rolq	$13, %r12
	movl	152(%rbp), %edx
	movl	%edx, 136(%rbp)
	xorq	%rcx, %r12
	rolq	$32, %rcx
	xorq	$255, %rax
	addq	%rsi, %rax
	rolq	$16, %rsi
	xorq	%rax, %rsi
	addq	%rsi, %rcx
	rolq	$21, %rsi
	movl	156(%rbp), %edx
	movl	%edx, 140(%rbp)
	addq	%r12, %rax
	rolq	$17, %r12
	movl	160(%rbp), %edx
	movq	%rdx, -8(%rbp)
	xorq	%rax, %r12
	rolq	$32, %rax
	xorq	%rcx, %rsi
	addq	%r12, %rcx
	rolq	$13, %r12
	movl	696(%r14), %edx
	movl	%edx, 128(%rbp)
	xorq	%rcx, %r12
	rolq	$32, %rcx
	leaq	472(%r14), %r11
	addq	%rsi, %rax
	rolq	$16, %rsi
	xorq	%rax, %rsi
	addq	%rsi, %rcx
	rolq	$21, %rsi
	leaq	72(%r14), %rdx
	movq	%rdx, -16(%rbp)
	addq	%r12, %rax
	rolq	$17, %r12
	leaq	240(%r14), %rdx
	movq	%rdx, -24(%rbp)
	xorq	%rax, %r12
	rolq	$32, %rax
	xorq	%rcx, %rsi
	addq	%r12, %rcx
	rolq	$13, %r12
	xorq	%rcx, %r12
	addq	%rsi, %rax
	rolq	$16, %rsi
	leaq	496(%r14), %rdx
	xorq	%rax, %rsi
	rolq	$21, %rsi
	addq	%r12, %rax
	rolq	$17, %r12
	xorq	%rax, %r12
	rolq	$32, %rax
	xorq	%rsi, %r12
	xorq	%rax, %r12
	movq	512(%r14), %r9
	movq	%r12, %r15
	shrq	$57, %r15
	movd	%r15d, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	520(%r14), %r10
	xorl	%r8d, %r8d
	movq	%r12, %rbx
.LBB13_2:
	andq	%r9, %rbx
	movdqu	(%r10,%rbx), %xmm2
	movdqa	%xmm0, %xmm3
	pcmpeqb	%xmm2, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB13_3:
	testw	%si, %si
	je	.LBB13_5
	bsfw	%si, %cx
	movzwl	%cx, %eax
	leal	-1(%rsi), %edi
	andl	%esi, %edi
	addq	%rbx, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rcx
	subq	%rax, %rcx
	movl	%edi, %esi
	cmpq	%r13, -16(%rcx)
	jne	.LBB13_3
	jmp	.LBB13_7
	.p2align	4, 0x90
.LBB13_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB13_46
	addq	%r8, %rbx
	addq	$16, %rbx
	addq	$16, %r8
	jmp	.LBB13_2
.LBB13_7:
	addq	$-8, %rcx
.LBB13_8:
	movq	-8(%rbp), %r15
	movl	124(%rbp), %esi
	movl	128(%rbp), %eax
	movq	(%rcx), %rdx
	shlq	$5, %rdx
	addq	472(%r14), %rdx
	addq	$160, %r14
	movl	%eax, 56(%rsp)
	movl	%esi, 48(%rsp)
	movq	-24(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	-16(%rbp), %rax
	movq	%rax, 32(%rsp)
	leaq	144(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	%r14, %r9
	callq	_ZN8bevy_ecs6bundle10BundleInfo19get_bundle_inserter17hbd2b165e45d48444E
	movq	184(%rbp), %rax
	testq	%rax, %rax
	je	.LBB13_12
	cmpl	$1, %eax
	jne	.LBB13_18
	movq	144(%rbp), %rdi
	leaq	80(%rbp), %rcx
	movq	%rdi, %rdx
	movl	136(%rbp), %ebx
	movl	%ebx, %r8d
	callq	_ZN8bevy_ecs9archetype9Archetype11swap_remove17hb5f1db66ca977e2cE
	cmpl	$1, 80(%rbp)
	jne	.LBB13_20
	movl	88(%rbp), %edx
	movq	152(%rbp), %r14
	movl	%esi, (%rbp)
	movl	%ebx, 4(%rbp)
	movl	140(%rbp), %eax
	movl	%eax, 8(%rbp)
	movl	%r15d, 12(%rbp)
	movq	%rbp, %r8
	movq	%r14, %rcx
	callq	_ZN8bevy_ecs6entity8Entities3set17h7e39204e233345f9E
	jmp	.LBB13_21
.LBB13_12:
	movq	144(%rbp), %rdx
	movq	160(%rbp), %rcx
	movq	(%rcx), %rax
	cmpq	16(%rdx), %rax
	jae	.LBB13_83
	movq	(%rdx), %rdx
	shlq	$5, %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_83
	movq	168(%rbp), %rdx
	movl	216(%rbp), %r14d
	movd	%xmm6, (%rbp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB13_81
	movq	32(%rdx), %rdi
	shlq	$4, %rcx
	cmpq	$0, (%rdi,%rcx)
	je	.LBB13_81
	movq	(%rdx), %rbx
	movq	8(%rdi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$5, %rsi
	leaq	(%rbx,%rsi), %rdi
	cmpb	$0, (%rax)
	je	.LBB13_41
	movq	%rbp, %r8
	movq	%rdi, %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h685fab336473b041E
	jmp	.LBB13_42
.LBB13_18:
	movq	144(%rbp), %r13
	leaq	-56(%rbp), %rcx
	movq	%r13, %rdx
	movl	136(%rbp), %edi
	movl	%edi, %r8d
	callq	_ZN8bevy_ecs9archetype9Archetype11swap_remove17hb5f1db66ca977e2cE
	cmpl	$1, -56(%rbp)
	jne	.LBB13_27
	movl	-48(%rbp), %edx
	movq	152(%rbp), %rbx
	movl	%esi, (%rbp)
	movl	%edi, 4(%rbp)
	movl	140(%rbp), %eax
	movl	%eax, 8(%rbp)
	movl	%r15d, 12(%rbp)
	movq	%rbp, %r8
	movq	%rbx, %rcx
	callq	_ZN8bevy_ecs6entity8Entities3set17h7e39204e233345f9E
	jmp	.LBB13_28
.LBB13_20:
	movq	152(%rbp), %r14
.LBB13_21:
	movl	224(%rbp), %r8d
	movq	192(%rbp), %rdx
	movl	92(%rbp), %r15d
	movl	%r15d, 32(%rsp)
	leaq	96(%rbp), %rcx
	movl	132(%rbp), %esi
	movl	%esi, %r9d
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h44c86e5b2dbd5e15E
	movdqu	96(%rbp), %xmm0
	movdqa	%xmm0, (%rbp)
	movq	%rbp, %r8
	movq	%r14, %rcx
	movl	%esi, %edx
	callq	_ZN8bevy_ecs6entity8Entities3set17h7e39204e233345f9E
	movq	160(%rbp), %rcx
	movq	(%rcx), %rax
	cmpq	16(%rdi), %rax
	jae	.LBB13_84
	movq	(%rdi), %rdx
	shlq	$5, %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_84
	movq	168(%rbp), %rdx
	movl	216(%rbp), %r14d
	movd	%xmm6, (%rbp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB13_81
	movq	32(%rdx), %rbx
	shlq	$4, %rcx
	cmpq	$0, (%rbx,%rcx)
	je	.LBB13_81
	movq	(%rdx), %rdi
	movq	8(%rbx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$5, %rsi
	leaq	(%rdi,%rsi), %rbx
	cmpb	$0, (%rax)
	je	.LBB13_40
	movl	%r15d, %r15d
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h685fab336473b041E
	movq	72(%rdi,%rsi), %rax
	jmp	.LBB13_45
.LBB13_27:
	movq	152(%rbp), %rbx
.LBB13_28:
	movl	-44(%rbp), %r14d
	movq	168(%rbp), %rdx
	movq	200(%rbp), %rsi
	leaq	80(%rbp), %rcx
	movl	%r14d, %r8d
	movq	%rsi, %r9
	callq	_ZN8bevy_ecs7storage5table5Table26move_to_superset_unchecked17h4176857cd6c91873E
	movq	192(%rbp), %r12
	movl	92(%rbp), %r15d
	movl	%r15d, 32(%rsp)
	leaq	96(%rbp), %rcx
	movq	%r12, %rdx
	movl	224(%rbp), %r8d
	movl	132(%rbp), %edi
	movl	%edi, %r9d
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h44c86e5b2dbd5e15E
	movdqu	96(%rbp), %xmm0
	movdqa	%xmm0, (%rbp)
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movl	%edi, %edx
	callq	_ZN8bevy_ecs6entity8Entities3set17h7e39204e233345f9E
	cmpl	$1, 80(%rbp)
	jne	.LBB13_34
	movl	84(%rbp), %r8d
	movl	88(%rbp), %r9d
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, (%rbp)
	je	.LBB13_86
	movl	4(%rbp), %edx
	movl	8(%rbp), %ecx
	movq	%r13, %rax
	cmpl	%edx, 144(%r13)
	je	.LBB13_32
	imulq	$152, %rdx, %rax
	addq	208(%rbp), %rax
	cmpl	%edx, 144(%r12)
	cmoveq	%r12, %rax
.LBB13_32:
	movq	88(%rax), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB13_80
	movq	72(%rax), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movl	%r14d, 8(%rax,%rcx,4)
.LBB13_34:
	movq	160(%rbp), %rcx
	movq	(%rcx), %rax
	cmpq	16(%r13), %rax
	jae	.LBB13_85
	movq	(%r13), %rdx
	shlq	$5, %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_85
	movl	216(%rbp), %r14d
	movd	%xmm6, (%rbp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rsi)
	jbe	.LBB13_81
	movq	32(%rsi), %rdx
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB13_81
	movq	(%rsi), %rbx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rdi
	shlq	$5, %rdi
	leaq	(%rbx,%rdi), %rsi
	cmpb	$0, (%rax)
	je	.LBB13_43
	movl	%r15d, %r15d
	movq	%rbp, %r8
	movq	%rsi, %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h685fab336473b041E
	jmp	.LBB13_44
.LBB13_40:
	movl	%r14d, %ecx
	callq	_ZN8bevy_ecs9component4Tick3new17h2b98fac6d18d1e80E
	movl	%eax, %r14d
	movq	(%rbx), %r8
	movq	%r8, %rcx
	imulq	%r15, %rcx
	addq	32(%rbx), %rcx
	movq	%rbp, %rdx
	callq	memcpy
	movq	48(%rdi,%rsi), %rax
	movl	%r14d, (%rax,%r15,4)
	movq	72(%rdi,%rsi), %rax
	jmp	.LBB13_45
.LBB13_41:
	movl	%r14d, %ecx
	callq	_ZN8bevy_ecs9component4Tick3new17h2b98fac6d18d1e80E
	movl	%eax, %r14d
	movq	(%rdi), %r8
	movq	%r8, %rcx
	imulq	%r15, %rcx
	addq	32(%rdi), %rcx
	movq	%rbp, %rdx
	callq	memcpy
	movq	48(%rbx,%rsi), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB13_42:
	movq	72(%rbx,%rsi), %rax
	jmp	.LBB13_45
.LBB13_43:
	movl	%r14d, %ecx
	callq	_ZN8bevy_ecs9component4Tick3new17h2b98fac6d18d1e80E
	movl	%eax, %r14d
	movq	(%rsi), %r8
	movq	%r8, %rcx
	imulq	%r15, %rcx
	addq	32(%rsi), %rcx
	movq	%rbp, %rdx
	callq	memcpy
	movq	48(%rbx,%rdi), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB13_44:
	movq	72(%rbx,%rdi), %rax
.LBB13_45:
	movl	%r14d, (%rax,%r15,4)
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
.LBB13_46:
	cmpq	$0, 528(%r14)
	movq	%r11, -32(%rbp)
	je	.LBB13_65
.LBB13_47:
	movq	$8, 96(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%rbp)
	leaq	96(%r14), %rcx
	movq	96(%r14), %r9
	movq	104(%r14), %r10
	movabsq	$-5113775634260234793, %rsi
	xorl	%r8d, %r8d
	movdqa	__xmm@5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB13_48:
	andq	%r9, %rsi
	movdqu	(%r10,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %edi
	.p2align	4, 0x90
.LBB13_49:
	testw	%di, %di
	je	.LBB13_51
	bsfw	%di, %dx
	movzwl	%dx, %eax
	leal	-1(%rdi), %ebx
	andl	%edi, %ebx
	addq	%rsi, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rdx
	subq	%rax, %rdx
	movl	%ebx, %edi
	cmpq	%r13, -16(%rdx)
	jne	.LBB13_49
	jmp	.LBB13_53
.LBB13_51:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB13_66
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB13_48
.LBB13_53:
	addq	$-8, %rdx
.LBB13_54:
	movq	(%rdx), %rsi
	movb	$1, 231(%rbp)
.Ltmp10:
	leaq	96(%rbp), %rcx
	xorl	%edx, %edx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ddb33048bc8b426E
.Ltmp11:
	movq	96(%rbp), %rax
	movq	112(%rbp), %rcx
	movq	%rsi, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 112(%rbp)
	movq	488(%r14), %rsi
	movq	%rcx, 160(%rbp)
	movdqu	96(%rbp), %xmm0
	movdqa	%xmm0, 144(%rbp)
	movb	$0, 231(%rbp)
.Ltmp12:
	movq	%rsi, 32(%rsp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.0(%rip), %rdx
	movq	%rbp, %rcx
	leaq	144(%rbp), %r9
	movl	$16, %r8d
	callq	_ZN8bevy_ecs6bundle17initialize_bundle17hd51b22b92e16b6e1E
.Ltmp13:
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movdqa	%xmm1, 160(%rbp)
	movdqa	%xmm0, 144(%rbp)
	movq	488(%r14), %rdx
	cmpq	480(%r14), %rdx
	jne	.LBB13_59
.Ltmp14:
	movq	-32(%rbp), %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7416d073563d22daE
.Ltmp15:
	movq	488(%r14), %rdx
.LBB13_59:
	movq	472(%r14), %rax
	movq	%rdx, %rcx
	shlq	$5, %rcx
	movups	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rdx
	movq	%rdx, 488(%r14)
	movq	512(%r14), %rcx
	movq	520(%r14), %rax
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB13_62
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB13_61:
	addq	%rbx, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB13_61
.LBB13_62:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB13_64
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB13_64:
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
	movq	%r13, -16(%rax,%rdx)
	movq	%rsi, -8(%rcx)
	addq	$-8, %rcx
	incq	536(%r14)
	jmp	.LBB13_8
.LBB13_65:
	leaq	512(%r14), %rcx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8dbee5756e950e6eE
	jmp	.LBB13_47
.LBB13_66:
	cmpq	$0, 112(%r14)
	jne	.LBB13_68
	movb	$1, 231(%rbp)
.Ltmp2:
	movq	%rcx, %rdx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5d8b8c084d7d07eaE
.Ltmp3:
.LBB13_68:
	movq	88(%r14), %rsi
	movq	$0, 144(%rbp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.0(%rip), %rax
	movq	%rax, 152(%rbp)
	movq	$16, 160(%rbp)
	movq	$1, 168(%rbp)
	movq	%r13, 176(%rbp)
	movq	$4, 184(%rbp)
	movq	$4, 192(%rbp)
	movq	$0, 200(%rbp)
	movw	$256, 208(%rbp)
	movb	$1, 231(%rbp)
.Ltmp4:
	movq	%rbp, %rcx
	leaq	144(%rbp), %r8
	movq	%rsi, %rdx
	callq	_ZN8bevy_ecs9component13ComponentInfo3new17h8f9a07a30d7191e0E
.Ltmp5:
	cmpb	$0, 72(%rbp)
	je	.LBB13_71
	movb	$1, 230(%rbp)
.Ltmp6:
	movq	%rbp, %rdx
	movq	-24(%rbp), %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17haca435252b118073E
.Ltmp7:
.LBB13_71:
	movups	64(%rbp), %xmm0
	movaps	%xmm0, 208(%rbp)
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movdqu	32(%rbp), %xmm2
	movdqu	48(%rbp), %xmm3
	movdqa	%xmm3, 192(%rbp)
	movdqa	%xmm2, 176(%rbp)
	movdqa	%xmm1, 160(%rbp)
	movdqa	%xmm0, 144(%rbp)
	movq	%rsi, %rax
	cmpq	80(%r14), %rsi
	jne	.LBB13_74
.Ltmp8:
	movq	-16(%rbp), %rcx
	movq	%rsi, %rdx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h9745e576415e8440E
.Ltmp9:
	movq	88(%r14), %rax
.LBB13_74:
	movq	72(%r14), %rcx
	leaq	(%rax,%rax,4), %rdx
	shlq	$4, %rdx
	movaps	208(%rbp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	144(%rbp), %xmm0
	movdqa	160(%rbp), %xmm1
	movdqa	176(%rbp), %xmm2
	movdqa	192(%rbp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r14)
	movq	96(%r14), %rcx
	movq	104(%r14), %rax
	movabsq	$-5113775634260234793, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB13_77
	movl	$16, %edi
.LBB13_76:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rdi
	testl	%ebx, %ebx
	je	.LBB13_76
.LBB13_77:
	bsfw	%bx, %bx
	movzwl	%bx, %ebx
	addq	%rdx, %rbx
	andq	%rcx, %rbx
	movzbl	(%rax,%rbx), %r8d
	testb	%r8b, %r8b
	js	.LBB13_79
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	movzbl	(%rax,%rbx), %r8d
.LBB13_79:
	leaq	-16(%rbx), %rdx
	andq	%rcx, %rdx
	movb	$92, (%rax,%rbx)
	movb	$92, 16(%rdx,%rax)
	shlq	$4, %rbx
	movq	%rax, %rdx
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subq	%rcx, 112(%r14)
	subq	%rbx, %rdx
	negq	%rbx
	movq	%r13, -16(%rax,%rbx)
	movq	%rsi, -8(%rdx)
	addq	$-8, %rdx
	incq	120(%r14)
	jmp	.LBB13_54
.LBB13_80:
	leaq	anon.83959b72e5b8236df4a28836bf490603.10(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB13_81:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.8(%rip), %r8
	jmp	.LBB13_87
.LBB13_82:
	leaq	96(%rbp), %rax
	movq	%rax, (%rbp)
	leaq	_ZN61_$LT$bevy_ecs..entity..Entity$u20$as$u20$core..fmt..Debug$GT$3fmt17hea96f6de38d352d8E(%rip), %rax
	movq	%rax, 8(%rbp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.3(%rip), %rax
	movq	%rax, 144(%rbp)
	movq	$2, 152(%rbp)
	movq	$0, 160(%rbp)
	movq	%rbp, %rax
	movq	%rax, 176(%rbp)
	movq	$1, 184(%rbp)
	leaq	anon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	leaq	144(%rbp), %rcx
	callq	_ZN4core9panicking9panic_fmt17h94563f1a4f8281d4E
	ud2
.LBB13_83:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.14(%rip), %r8
	jmp	.LBB13_87
.LBB13_84:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.13(%rip), %r8
	jmp	.LBB13_87
.LBB13_85:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.11(%rip), %r8
	jmp	.LBB13_87
.LBB13_86:
	leaq	anon.83959b72e5b8236df4a28836bf490603.6(%rip), %rcx
	leaq	anon.83959b72e5b8236df4a28836bf490603.12(%rip), %r8
.LBB13_87:
	movl	$43, %edx
	callq	_ZN4core9panicking5panic17h5935d2cd162cf84fE
	ud2
	.seh_handlerdata
	.long	($cppxdata$entity_insert)@IMGREL
	.section	.text,"xr",one_only,entity_insert
	.seh_endproc
	.def	"?dtor$88@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$88@?0?entity_insert@4HA":
.seh_proc "?dtor$88@?0?entity_insert@4HA"
.LBB13_88:
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
	leaq	144(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2c896a33bafab8feE
	movb	$0, 230(%rbp)
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
	.def	"?dtor$89@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$89@?0?entity_insert@4HA":
.seh_proc "?dtor$89@?0?entity_insert@4HA"
.LBB13_89:
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
	cmpb	$0, 230(%rbp)
	je	.LBB13_91
	movq	%rbp, %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2c896a33bafab8feE
	movb	$1, 231(%rbp)
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
.LBB13_91:
	movb	$1, 231(%rbp)
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
	.def	"?dtor$92@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$92@?0?entity_insert@4HA":
.seh_proc "?dtor$92@?0?entity_insert@4HA"
.LBB13_92:
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
	leaq	144(%rbp), %rcx
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h66d2f409ce236574E
	movb	$0, 231(%rbp)
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
	.def	"?dtor$93@?0?entity_insert@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$93@?0?entity_insert@4HA":
.seh_proc "?dtor$93@?0?entity_insert@4HA"
.LBB13_93:
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
	cmpb	$0, 231(%rbp)
	je	.LBB13_95
	leaq	96(%rbp), %rcx
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h20f9568657dca739E
.LBB13_95:
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
	.long	360
	.long	0
	.long	1
$stateUnwindMap$entity_insert:
	.long	-1
	.long	"?dtor$93@?0?entity_insert@4HA"@IMGREL
	.long	0
	.long	"?dtor$92@?0?entity_insert@4HA"@IMGREL
	.long	0
	.long	"?dtor$89@?0?entity_insert@4HA"@IMGREL
	.long	2
	.long	"?dtor$88@?0?entity_insert@4HA"@IMGREL
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
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\world\\mod.rs"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.5
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.5:
	.quad	anon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"b\000\000\000\000\000\000\000\370\000\000\000 \000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.6
anon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"called `Option::unwrap()` on a `None` value"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.7
anon.83959b72e5b8236df4a28836bf490603.7:
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\bundle.rs"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.8
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.8:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\212\001\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.9
anon.83959b72e5b8236df4a28836bf490603.9:
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\archetype.rs"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.10
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.10:
	.quad	anon.83959b72e5b8236df4a28836bf490603.9
	.asciz	"b\000\000\000\000\000\000\000\257\001\000\000\t\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.11
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.11:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000f\002\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.12
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.12:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000T\002\000\000,\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.13
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.13:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\0002\002\000\000\"\000\000"

	.section	.rdata,"dr",one_only,anon.83959b72e5b8236df4a28836bf490603.14
	.p2align	3
anon.83959b72e5b8236df4a28836bf490603.14:
	.quad	anon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\031\002\000\000\"\000\000"

	.globl	_fltused

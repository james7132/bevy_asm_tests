	.text
	.file	"entity_insert.4ce84484-cgu.0"
	.section	".text._ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4dfef880e5c44e40E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4dfef880e5c44e40E,@function
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4dfef880e5c44e40E:
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r14
	movq	16(%rdi), %r13
	testq	%r14, %r14
	je	.LBB0_5
	movq	(%r13), %r15
	cmpq	$-1, %r15
	je	.LBB0_5
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	negq	%rbx
	negq	%r15
	movq	$-16, %rbp
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:
	subq	%r12, %rbx
	leaq	(%r15,%rbp), %rax
	incq	%rax
	incq	%rbp
	cmpq	$-15, %rax
	je	.LBB0_5
.LBB0_3:
	movq	24(%r13), %rax
	cmpb	$-128, 16(%rax,%rbp)
	jne	.LBB0_4
	movq	(%r13), %rcx
	andq	%rbp, %rcx
	movb	$-1, 16(%rax,%rbp)
	movb	$-1, 16(%rcx,%rax)
	movq	24(%r13), %rdi
	addq	%rbx, %rdi
	callq	*%r14
	decq	16(%r13)
	jmp	.LBB0_4
.LBB0_5:
	movq	(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andq	$-8, %rcx
	subq	%rdx, %rcx
	cmpq	$8, %rax
	cmovbq	%rax, %rcx
	subq	16(%r13), %rcx
	movq	%rcx, 8(%r13)
	addq	$8, %rsp
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
	.size	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4dfef880e5c44e40E, .Lfunc_end0-_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4dfef880e5c44e40E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17hc9c18f178222b52eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17hc9c18f178222b52eE,@function
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17hc9c18f178222b52eE:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB1_1
	movq	16(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_1:
	retq
.Lfunc_end1:
	.size	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17hc9c18f178222b52eE, .Lfunc_end1-_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17hc9c18f178222b52eE
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha0aa511e0975e231E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha0aa511e0975e231E,@function
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha0aa511e0975e231E:
	.cfi_startproc
	cmpq	$0, (%rdi)
	je	.LBB2_2
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
	movq	16(%rdi), %rdi
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_2:
	retq
.Lfunc_end2:
	.size	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha0aa511e0975e231E, .Lfunc_end2-_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha0aa511e0975e231E
	.cfi_endproc

	.section	".text._ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb851334184745a2bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb851334184745a2bE,@function
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb851334184745a2bE:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_1
	movq	8(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_1:
	retq
.Lfunc_end3:
	.size	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb851334184745a2bE, .Lfunc_end3-_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb851334184745a2bE
	.cfi_endproc

	.section	.text._ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE,@function
_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB4_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB4_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB4_11
.LBB4_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB4_6
.LBB4_7:
	testq	%r14, %r14
	je	.LBB4_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB4_4
.LBB4_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB4_12
.LBB4_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB4_6:
	movl	$1, %eax
.LBB4_12:
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB4_11
	jmp	.LBB4_4
.Lfunc_end4:
	.size	_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE, .Lfunc_end4-_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h07125ba55feeee10E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h07125ba55feeee10E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h07125ba55feeee10E:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	incq	%rsi
	je	.LBB5_10
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$58, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$5, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB5_3
	movq	8(%r14), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB5_4
.LBB5_3:
	movq	$0, 24(%rsp)
.LBB5_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB5_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB5_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_5:
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB5_9
.LBB5_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB5_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end5:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h07125ba55feeee10E, .Lfunc_end5-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h07125ba55feeee10E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h84c7bb3bc06ced70E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h84c7bb3bc06ced70E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h84c7bb3bc06ced70E:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	incq	%rsi
	je	.LBB6_10
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	movabsq	$104811045873349726, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setb	%dl
	imulq	$88, %rbx, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB6_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB6_4
.LBB6_3:
	movq	$0, 24(%rsp)
.LBB6_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB6_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB6_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB6_9
.LBB6_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB6_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end6:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h84c7bb3bc06ced70E, .Lfunc_end6-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h84c7bb3bc06ced70E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc04c233241522393E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc04c233241522393E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc04c233241522393E:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	incq	%rsi
	je	.LBB7_10
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB7_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 24(%rsp)
.LBB7_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h57144f2cec85a44dE
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB7_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB7_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_5:
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB7_9
.LBB7_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB7_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end7:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc04c233241522393E, .Lfunc_end7-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc04c233241522393E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0a3f713ab9ac0cefE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0a3f713ab9ac0cefE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0a3f713ab9ac0cefE:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rdi), %rbx
	movq	%rbx, %rcx
	incq	%rcx
	jne	.LBB8_2
.LBB8_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB8_29
.LBB8_2:
	movq	%rdi, %r15
	movq	(%rdi), %r14
	leaq	1(%r14), %r13
	movq	%r13, %rdx
	shrq	$3, %rdx
	movq	%r13, %rax
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %r14
	cmovbq	%r14, %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rdx, %rcx
	jbe	.LBB8_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB8_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB8_8
.LBB8_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h210990237dd9be68E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE
.LBB8_29:
	movq	%r12, %rax
	addq	$40, %rsp
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
.LBB8_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB8_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB8_29
	jmp	.LBB8_8
.LBB8_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB8_8
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	xorl	$63, %ecx
	movq	$-1, %r8
	shrq	%cl, %r8
	incq	%r8
.LBB8_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB8_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB8_1
	je	.LBB8_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB8_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB8_29
.LBB8_11:
	movl	$16, %eax
.LBB8_12:
	movabsq	$-9223372036854775807, %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, (%rsp)
	leaq	-1(%r8), %r13
	movq	%r8, %rcx
	shrq	$3, %rcx
	andq	$-8, %r8
	subq	%rcx, %r8
	cmpq	$8, %r13
	cmovbq	%r13, %r8
	addq	%rax, %rbp
	movq	%rbp, %rdi
	movl	$255, %esi
	movq	%r8, %rbx
	callq	*memset@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	subq	%rdx, %rbx
	movq	16(%rsp), %rsi
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.LBB8_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_24:
	shrq	$57, %r11
	leaq	-16(%rbx), %rdx
	andq	%r13, %rdx
	movb	%r11b, (%rbp,%rbx)
	movb	%r11b, 16(%rdx,%rbp)
	movq	%rdi, %rdx
	subq	%r10, %rdx
	shlq	$4, %rbx
	negq	%rbx
	movdqu	-16(%rdx), %xmm0
	movdqu	%xmm0, -16(%rbp,%rbx)
.LBB8_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB8_26
.LBB8_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB8_25
	movq	%rcx, %r10
	shlq	$4, %r10
	movq	%r9, %rdx
	subq	%r10, %rdx
	movq	(%rdx), %r11
	imulq	%r8, %r11
	movq	%r11, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB8_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB8_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB8_21
.LBB8_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB8_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB8_24
.LBB8_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB8_27
	jmp	.LBB8_29
.LBB8_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB8_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB8_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB8_29
.Lfunc_end8:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0a3f713ab9ac0cefE, .Lfunc_end8-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0a3f713ab9ac0cefE
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3d84e1f3d178b681E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3d84e1f3d178b681E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3d84e1f3d178b681E:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rdi), %rbx
	movq	%rbx, %rcx
	incq	%rcx
	jne	.LBB9_2
.LBB9_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB9_29
.LBB9_2:
	movq	%rdi, %r15
	movq	(%rdi), %r14
	leaq	1(%r14), %r13
	movq	%r13, %rdx
	shrq	$3, %rdx
	movq	%r13, %rax
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %r14
	cmovbq	%r14, %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rdx, %rcx
	jbe	.LBB9_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB9_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB9_8
.LBB9_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he716496ecb0c5028E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE
.LBB9_29:
	movq	%r12, %rax
	addq	$40, %rsp
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
.LBB9_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB9_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB9_29
	jmp	.LBB9_8
.LBB9_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB9_8
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	xorl	$63, %ecx
	movq	$-1, %r8
	shrq	%cl, %r8
	incq	%r8
.LBB9_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB9_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB9_1
	je	.LBB9_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB9_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB9_29
.LBB9_11:
	movl	$16, %eax
.LBB9_12:
	movabsq	$-9223372036854775807, %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, (%rsp)
	leaq	-1(%r8), %r13
	movq	%r8, %rcx
	shrq	$3, %rcx
	andq	$-8, %r8
	subq	%rcx, %r8
	cmpq	$8, %r13
	cmovbq	%r13, %r8
	addq	%rax, %rbp
	movq	%rbp, %rdi
	movl	$255, %esi
	movq	%r8, %rbx
	callq	*memset@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	subq	%rdx, %rbx
	movq	16(%rsp), %rsi
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.LBB9_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB9_18
	.p2align	4, 0x90
.LBB9_24:
	shrq	$57, %r11
	leaq	-16(%rbx), %rdx
	andq	%r13, %rdx
	movb	%r11b, (%rbp,%rbx)
	movb	%r11b, 16(%rdx,%rbp)
	movq	%rdi, %rdx
	subq	%r10, %rdx
	shlq	$4, %rbx
	negq	%rbx
	movdqu	-16(%rdx), %xmm0
	movdqu	%xmm0, -16(%rbp,%rbx)
.LBB9_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB9_26
.LBB9_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB9_25
	movq	%rcx, %r10
	shlq	$4, %r10
	movq	%r9, %rdx
	subq	%r10, %rdx
	movq	(%rdx), %r11
	imulq	%r8, %r11
	movq	%r11, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB9_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB9_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB9_21
.LBB9_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB9_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB9_24
.LBB9_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB9_27
	jmp	.LBB9_29
.LBB9_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB9_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB9_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB9_29
.Lfunc_end9:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3d84e1f3d178b681E, .Lfunc_end9-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3d84e1f3d178b681E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h210990237dd9be68E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h210990237dd9be68E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h210990237dd9be68E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end10:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h210990237dd9be68E, .Lfunc_end10-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h210990237dd9be68E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he716496ecb0c5028E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he716496ecb0c5028E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he716496ecb0c5028E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end11:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he716496ecb0c5028E, .Lfunc_end11-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he716496ecb0c5028E
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI12_0:
	.zero	16,128
	.section	".text._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE,@function
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%rdi), %rdx
	movq	24(%rdi), %rsi
	incq	%rdx
	xorl	%eax, %eax
	movdqa	.LCPI12_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB12_7
.LBB12_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB12_1:
	testb	$1, %dil
	je	.LBB12_6
	addq	$15, %rax
	jb	.LBB12_7
	cmpq	%rdx, %rax
	jae	.LBB12_7
	leaq	1(%rax), %rcx
	jmp	.LBB12_5
.LBB12_7:
	cmpq	$16, %rdx
	jae	.LBB12_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB12_10
.LBB12_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB12_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB12_11
	xorl	%r13d, %r13d
	jmp	.LBB12_15
	.p2align	4, 0x90
.LBB12_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB12_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB12_12
.LBB12_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB12_28
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %rbp
	addq	$-16, %rbp
	.p2align	4, 0x90
.LBB12_17:
.Ltmp0:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	*%r14
.Ltmp1:
	movq	(%r12), %rdx
	movq	24(%r12), %rcx
	movq	%rdx, %r8
	andq	%rax, %r8
	movdqu	(%rcx,%r8), %xmm0
	pmovmskb	%xmm0, %edi
	movq	%r8, %rsi
	testl	%edi, %edi
	jne	.LBB12_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB12_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB12_20
.LBB12_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB12_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB12_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB12_24
	movq	%rbx, %rdi
	shlq	$4, %rdi
	movq	%rcx, %rsi
	subq	%rdi, %rsi
	addq	$-16, %rsi
	movzbl	(%rcx,%rbx), %r8d
	shrq	$57, %rax
	leaq	-16(%rbx), %rdi
	andq	%rdx, %rdi
	movb	%al, (%rcx,%rbx)
	movb	%al, 16(%rdi,%rcx)
	cmpb	$-1, %r8b
	je	.LBB12_27
	movzbl	(%rbp), %eax
	movzbl	(%rsi), %ecx
	movb	%cl, (%rbp)
	movb	%al, (%rsi)
	movzbl	1(%rbp), %eax
	movzbl	1(%rsi), %ecx
	movb	%cl, 1(%rbp)
	movb	%al, 1(%rsi)
	movzbl	2(%rbp), %eax
	movzbl	2(%rsi), %ecx
	movb	%cl, 2(%rbp)
	movb	%al, 2(%rsi)
	movzbl	3(%rbp), %eax
	movzbl	3(%rsi), %ecx
	movb	%cl, 3(%rbp)
	movb	%al, 3(%rsi)
	movzbl	4(%rbp), %eax
	movzbl	4(%rsi), %ecx
	movb	%cl, 4(%rbp)
	movb	%al, 4(%rsi)
	movzbl	5(%rbp), %eax
	movzbl	5(%rsi), %ecx
	movb	%cl, 5(%rbp)
	movb	%al, 5(%rsi)
	movzbl	6(%rbp), %eax
	movzbl	6(%rsi), %ecx
	movb	%cl, 6(%rbp)
	movb	%al, 6(%rsi)
	movzbl	7(%rbp), %eax
	movzbl	7(%rsi), %ecx
	movb	%cl, 7(%rbp)
	movb	%al, 7(%rsi)
	movzbl	8(%rbp), %eax
	movzbl	8(%rsi), %ecx
	movb	%cl, 8(%rbp)
	movb	%al, 8(%rsi)
	movzbl	9(%rbp), %eax
	movzbl	9(%rsi), %ecx
	movb	%cl, 9(%rbp)
	movb	%al, 9(%rsi)
	movzbl	10(%rbp), %eax
	movzbl	10(%rsi), %ecx
	movb	%cl, 10(%rbp)
	movb	%al, 10(%rsi)
	movzbl	11(%rbp), %eax
	movzbl	11(%rsi), %ecx
	movb	%cl, 11(%rbp)
	movb	%al, 11(%rsi)
	movzbl	12(%rbp), %eax
	movzbl	12(%rsi), %ecx
	movb	%cl, 12(%rbp)
	movb	%al, 12(%rsi)
	movzbl	13(%rbp), %eax
	movzbl	13(%rsi), %ecx
	movb	%cl, 13(%rbp)
	movb	%al, 13(%rsi)
	movzbl	14(%rbp), %eax
	movzbl	14(%rsi), %ecx
	movb	%cl, 14(%rbp)
	movb	%al, 14(%rsi)
	movzbl	15(%rbp), %eax
	movzbl	15(%rsi), %ecx
	movb	%cl, 15(%rbp)
	movb	%al, 15(%rsi)
	jmp	.LBB12_17
	.p2align	4, 0x90
.LBB12_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB12_28
.LBB12_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB12_13
.LBB12_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB12_13:
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
	subq	16(%r12), %rax
	movq	%rax, 8(%r12)
	addq	$40, %rsp
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
.LBB12_29:
	.cfi_def_cfa_offset 96
.Ltmp2:
	movq	%rax, %rbx
.Ltmp3:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4dfef880e5c44e40E
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB12_31:
.Ltmp5:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE, .Lfunc_end12-_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE
	.cfi_endproc
	.section	".gcc_except_table._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h7252754c37e77ccdE","a",@progbits
	.p2align	2
GCC_except_table12:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Lfunc_end12-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI13_0:
	.zero	16,22
	.section	.text.entity_insert,"ax",@progbits
	.globl	entity_insert
	.p2align	4, 0x90
	.type	entity_insert,@function
entity_insert:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
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
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movd	%xmm0, 4(%rsp)
	movl	%edx, %ebx
	movl	%esi, %edx
	movq	%rdi, %r14
	movl	%esi, 120(%rsp)
	movl	%ebx, 124(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	movl	%edx, 28(%rsp)
	movl	%ebx, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, 32(%rsp)
	je	.LBB13_104
	movl	%ebx, 20(%rsp)
	movabsq	$-426570003457581966, %r15
	movabsq	$3198178435171795546, %r12
	movl	36(%rsp), %r13d
	movl	40(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	48(%rsp), %eax
	movq	%rax, 288(%rsp)
	movl	760(%r14), %eax
	movq	%rax, 232(%rsp)
	leaq	472(%r14), %rax
	movq	%rax, 8(%rsp)
	leaq	160(%r14), %rax
	movq	%rax, 240(%rsp)
	movq	560(%r14), %rax
	movq	584(%r14), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI13_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %rsi
.LBB13_2:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebx
	.p2align	4, 0x90
.LBB13_3:
	testw	%bx, %bx
	je	.LBB13_4
	bsfw	%bx, %di
	movzwl	%di, %ebp
	leal	-1(%rbx), %edx
	andl	%ebx, %edx
	addq	%rsi, %rbp
	andq	%rax, %rbp
	shlq	$4, %rbp
	movq	%rcx, %rdi
	subq	%rbp, %rdi
	movl	%edx, %ebx
	cmpq	%r15, -16(%rdi)
	jne	.LBB13_3
	jmp	.LBB13_14
	.p2align	4, 0x90
.LBB13_4:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB13_6
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB13_2
.LBB13_14:
	addq	$-8, %rdi
.LBB13_40:
	movq	232(%rsp), %rax
	movq	(%rdi), %rsi
	shlq	$5, %rsi
	addq	600(%r14), %rsi
	leaq	64(%r14), %rcx
	.cfi_escape 0x2e, 0x10
	leaq	32(%rsp), %rdi
	movq	%r14, %rdx
	movq	8(%rsp), %r8
	movq	240(%rsp), %r9
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*_ZN8bevy_ecs6bundle10BundleInfo19get_bundle_inserter17hb537ff4afe48151aE@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.LBB13_56
	cmpl	$1, %eax
	jne	.LBB13_59
	movq	40(%rsp), %r15
	.cfi_escape 0x2e, 0x00
	leaq	248(%rsp), %rdi
	movq	%r15, %rsi
	movl	24(%rsp), %ebp
	movl	%ebp, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h04ceb012628527fbE@GOTPCREL(%rip)
	cmpl	$1, 252(%rsp)
	jne	.LBB13_43
	movl	256(%rsp), %edx
	movl	260(%rsp), %r14d
	movq	48(%rsp), %rbx
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r14d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, 144(%rsp)
	je	.LBB13_84
	movl	148(%rsp), %eax
	movq	156(%rsp), %rcx
	movl	%eax, 144(%rsp)
	movl	%ebp, 148(%rsp)
	movq	%rcx, 152(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	jmp	.LBB13_44
.LBB13_56:
	movq	40(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	(%rdx), %rax
	cmpq	64(%rcx), %rax
	jae	.LBB13_58
	movq	56(%rcx), %rcx
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_58
	movq	64(%rsp), %rcx
	movl	104(%rsp), %r14d
	movss	4(%rsp), %xmm0
	movss	%xmm0, 144(%rsp)
	movq	16(%rdx), %rdx
	movq	(%rdx), %rdx
	cmpq	%rdx, 40(%rcx)
	movq	288(%rsp), %r12
	jbe	.LBB13_98
	movq	32(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_98
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB13_98
	movq	(%rcx), %r15
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$5, %rbx
	leaq	(%r15,%rbx), %rbp
	cmpb	$0, (%rax)
	je	.LBB13_100
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	jmp	.LBB13_102
.LBB13_59:
	movq	40(%rsp), %rbp
	.cfi_escape 0x2e, 0x00
	leaq	272(%rsp), %rdi
	movq	%rbp, %rsi
	movl	24(%rsp), %ebx
	movl	%ebx, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h04ceb012628527fbE@GOTPCREL(%rip)
	cmpl	$1, 276(%rsp)
	jne	.LBB13_60
	movl	280(%rsp), %edx
	movl	284(%rsp), %r14d
	movq	48(%rsp), %r15
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r14d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, 144(%rsp)
	je	.LBB13_64
	movl	148(%rsp), %eax
	movq	156(%rsp), %rcx
	movl	%eax, 144(%rsp)
	movl	%ebx, 148(%rsp)
	movq	%rcx, 152(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	movq	%r15, %r14
	jmp	.LBB13_61
.LBB13_43:
	movq	48(%rsp), %rbx
.LBB13_44:
	movq	88(%rsp), %rsi
	movl	248(%rsp), %r14d
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdi
	movl	28(%rsp), %edx
	movl	20(%rsp), %ebp
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17hc7d98d67535ac875E@GOTPCREL(%rip)
	movups	120(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	movq	56(%rsp), %rdx
	movq	(%rdx), %rax
	cmpq	64(%r15), %rax
	jae	.LBB13_46
	movq	56(%r15), %rcx
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_46
	movq	64(%rsp), %rcx
	movl	104(%rsp), %r15d
	movss	4(%rsp), %xmm0
	movss	%xmm0, 144(%rsp)
	movq	16(%rdx), %rdx
	movq	(%rdx), %rdx
	cmpq	%rdx, 40(%rcx)
	jbe	.LBB13_90
	movq	32(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_90
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB13_90
	movq	(%rcx), %r12
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$5, %rbp
	leaq	(%r12,%rbp), %rbx
	cmpb	$0, (%rax)
	je	.LBB13_92
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	jmp	.LBB13_94
.LBB13_60:
	movq	48(%rsp), %r14
.LBB13_61:
	movl	272(%rsp), %edx
	movq	64(%rsp), %rsi
	movq	96(%rsp), %r12
	.cfi_escape 0x2e, 0x00
	leaq	248(%rsp), %rdi
	movl	%edx, 8(%rsp)
	movq	%r12, %rcx
	callq	*_ZN8bevy_ecs7storage5table5Table26move_to_superset_unchecked17h2f1a8886f4101602E@GOTPCREL(%rip)
	movq	88(%rsp), %r15
	movl	248(%rsp), %r13d
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdi
	movq	%r15, %rsi
	movl	28(%rsp), %edx
	movl	20(%rsp), %ebx
	movl	%ebx, %ecx
	movl	%r13d, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17hc7d98d67535ac875E@GOTPCREL(%rip)
	movups	120(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	cmpl	$1, 252(%rsp)
	jne	.LBB13_68
	movq	%r13, 232(%rsp)
	movl	256(%rsp), %edx
	movl	260(%rsp), %ebx
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdi
	movq	%r14, 240(%rsp)
	movq	%r14, %rsi
	movl	%ebx, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, 144(%rsp)
	je	.LBB13_63
	movl	%ebx, %esi
	movl	148(%rsp), %eax
	movl	152(%rsp), %r14d
	movl	156(%rsp), %ecx
	movq	%rbp, %rdx
	movq	%rbp, %r13
	cmpl	%eax, 144(%rbp)
	je	.LBB13_73
	imulq	$152, %rax, %r13
	addq	32(%rsp), %r13
	cmpl	%eax, 144(%r15)
	cmoveq	%r15, %r13
.LBB13_73:
	movl	%eax, 144(%rsp)
	movl	%r14d, 148(%rsp)
	movl	%ecx, 152(%rsp)
	movl	8(%rsp), %ebx
	movl	%ebx, 156(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	240(%rsp), %rdi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	movq	136(%r13), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB13_105
	movq	128(%r13), %rax
	leaq	(%r14,%r14,2), %rcx
	movl	%ebx, 8(%rax,%rcx,4)
	movq	232(%rsp), %r13
.LBB13_68:
	movq	56(%rsp), %rcx
	movq	(%rcx), %rax
	cmpq	64(%rbp), %rax
	jae	.LBB13_70
	movq	56(%rbp), %rdx
	shlq	$5, %rax
	movq	8(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_70
	movl	104(%rsp), %r14d
	movss	4(%rsp), %xmm0
	movss	%xmm0, 144(%rsp)
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%r12)
	jbe	.LBB13_78
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB13_78
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB13_78
	movq	(%r12), %r15
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$5, %rbx
	leaq	(%r15,%rbx), %rbp
	cmpb	$0, (%rax)
	je	.LBB13_81
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	jmp	.LBB13_83
.LBB13_100:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %r14d
	movq	(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%rbx), %rax
	movl	%r14d, (%rax,%r12,4)
.LBB13_102:
	movq	80(%r15,%rbx), %rax
	movl	%r14d, (%rax,%r12,4)
	jmp	.LBB13_103
.LBB13_92:
	.cfi_escape 0x2e, 0x00
	movl	%r15d, %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %r15d
	movq	(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r14, %rdi
	addq	40(%rbx), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%rbp), %rax
	movl	%r15d, (%rax,%r14,4)
.LBB13_94:
	movq	80(%r12,%rbp), %rax
	movl	%r15d, (%rax,%r14,4)
	jmp	.LBB13_103
.LBB13_81:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %r14d
	movq	(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	40(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
.LBB13_83:
	movq	80(%r15,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
.LBB13_103:
	addq	$296, %rsp
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
.LBB13_6:
	.cfi_def_cfa_offset 352
	cmpq	$0, 568(%r14)
	je	.LBB13_7
.LBB13_8:
	leaq	592(%r14), %r9
	movq	$0, 120(%rsp)
	movq	$8, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	472(%r14), %rax
	movq	496(%r14), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %rsi
.LBB13_9:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebx
	.p2align	4, 0x90
.LBB13_10:
	testw	%bx, %bx
	je	.LBB13_11
	bsfw	%bx, %di
	movzwl	%di, %ebp
	leal	-1(%rbx), %edx
	andl	%ebx, %edx
	addq	%rsi, %rbp
	andq	%rax, %rbp
	shlq	$4, %rbp
	movq	%rcx, %rdi
	subq	%rbp, %rdi
	movl	%edx, %ebx
	cmpq	%r15, -16(%rdi)
	jne	.LBB13_10
	jmp	.LBB13_29
.LBB13_11:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB13_15
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB13_9
.LBB13_29:
	movq	%r9, %rbp
	addq	$-8, %rdi
.LBB13_30:
	movq	(%rdi), %rbx
.Ltmp16:
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc04c233241522393E
.Ltmp17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	movq	%rbx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 136(%rsp)
	movq	608(%r14), %rbx
	movq	%rcx, 48(%rsp)
	movups	120(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rsi
	leaq	144(%rsp), %rdi
	leaq	32(%rsp), %r8
	movl	$16, %edx
	movq	8(%rsp), %rcx
	movq	%rbx, %r9
	callq	*_ZN8bevy_ecs6bundle17initialize_bundle17h0de6d6327bb9c626E@GOTPCREL(%rip)
	movdqu	144(%rsp), %xmm0
	movdqu	160(%rsp), %xmm1
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	608(%r14), %rsi
	cmpq	592(%r14), %rsi
	jne	.LBB13_34
.Ltmp22:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h07125ba55feeee10E
.Ltmp23:
	movq	608(%r14), %rsi
.LBB13_34:
	movq	600(%r14), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	144(%rsp), %xmm0
	movdqu	160(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 608(%r14)
	movq	560(%r14), %rcx
	movq	584(%r14), %rax
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB13_37
	movl	$16, %esi
	.p2align	4, 0x90
.LBB13_36:
	addq	%rsi, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB13_36
.LBB13_37:
	movq	%rbx, %rbp
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB13_39
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB13_39:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$22, (%rax,%rdx)
	movb	$22, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	subq	%rcx, 568(%r14)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r15, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	576(%r14)
	jmp	.LBB13_40
.LBB13_7:
	leaq	560(%r14), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0a3f713ab9ac0cefE
	movdqa	.LCPI13_0(%rip), %xmm3
	jmp	.LBB13_8
.LBB13_15:
	movq	%r9, %rbp
	cmpq	$0, 480(%r14)
	jne	.LBB13_17
.Ltmp6:
	.cfi_escape 0x2e, 0x00
	movq	8(%rsp), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3d84e1f3d178b681E
.Ltmp7:
.LBB13_17:
	movq	552(%r14), %rbx
	movq	$0, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$16, 48(%rsp)
	movq	$4, 64(%rsp)
	movq	$4, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	%r15, 88(%rsp)
	movq	$0, 96(%rsp)
	movw	$256, 104(%rsp)
.Ltmp8:
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 264(%rsp)
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17h2102aa91793d6704E@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 216(%rsp)
	je	.LBB13_19
.Ltmp10:
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rsi
	movq	240(%rsp), %rdi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17he474721607fae770E@GOTPCREL(%rip)
.Ltmp11:
.LBB13_19:
	leaq	536(%r14), %rdi
	movq	224(%rsp), %rax
	movq	%rax, 112(%rsp)
	movups	208(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqu	144(%rsp), %xmm0
	movdqu	160(%rsp), %xmm1
	movdqu	176(%rsp), %xmm2
	movdqu	192(%rsp), %xmm3
	movdqa	%xmm3, 80(%rsp)
	movdqa	%xmm2, 64(%rsp)
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB13_22
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h84c7bb3bc06ced70E
.Ltmp14:
	movq	552(%r14), %rax
.LBB13_22:
	movq	544(%r14), %rcx
	imulq	$88, %rax, %rdx
	movq	112(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	32(%rsp), %xmm0
	movdqa	48(%rsp), %xmm1
	movdqa	64(%rsp), %xmm2
	movdqa	80(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%r14)
	movq	472(%r14), %rcx
	movq	496(%r14), %rax
	movq	%rcx, %rdx
	andq	%r12, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB13_25
	movl	$16, %edi
.LBB13_24:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB13_24
.LBB13_25:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB13_27
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB13_27:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$22, (%rax,%rsi)
	movb	$22, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r14)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r15, -16(%rax,%rsi)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r14)
	jmp	.LBB13_30
.LBB13_105:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rdx
	movq	%r14, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB13_104:
	leaq	120(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	_ZN61_$LT$bevy_ecs..entity..Entity$u20$as$u20$core..fmt..Debug$GT$3fmt17hf467585f47b13e32E@GOTPCREL(%rip), %rax
	movq	%rax, 152(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$2, 56(%rsp)
	movq	$0, 32(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rsi
	leaq	32(%rsp), %rdi
	callq	*_ZN4core9panicking9panic_fmt17h9843c6e24b48e253E@GOTPCREL(%rip)
	ud2
.LBB13_58:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.16(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_98:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB13_79
.LBB13_46:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_90:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB13_79
.LBB13_70:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.11(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_78:
	.cfi_escape 0x2e, 0x00
.LBB13_79:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_84:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.15(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_64:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.13(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_63:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.12(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_48:
.Ltmp15:
	movq	%rax, %rbp
	jmp	.LBB13_50
.LBB13_49:
.Ltmp12:
	movq	%rax, %rbp
	leaq	144(%rsp), %rax
	movq	%rax, 264(%rsp)
.LBB13_50:
	.cfi_escape 0x2e, 0x00
	movq	264(%rsp), %rdi
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17ha0aa511e0975e231E
	jmp	.LBB13_54
.LBB13_51:
.Ltmp24:
	movq	%rax, %rbp
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17hc9c18f178222b52eE
	jmp	.LBB13_52
.LBB13_53:
.Ltmp18:
	movq	%rax, %rbp
.LBB13_54:
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdi
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb851334184745a2bE
.Ltmp20:
.LBB13_52:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB13_55:
.Ltmp21:
	.cfi_escape 0x2e, 0x00
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end13:
	.size	entity_insert, .Lfunc_end13-entity_insert
	.cfi_endproc
	.section	.gcc_except_table.entity_insert,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1
	.uleb128 .Ltmp16-.Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp18-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin1
	.uleb128 .Ltmp22-.Ltmp17
	.byte	0
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin1
	.uleb128 .Ltmp23-.Ltmp22
	.uleb128 .Ltmp24-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp6-.Ltmp23
	.byte	0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp9-.Ltmp6
	.uleb128 .Ltmp18-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp12-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin1
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin1
	.uleb128 .Ltmp19-.Ltmp14
	.byte	0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin1
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin1
	.uleb128 .Lfunc_end13-.Ltmp20
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.1,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.ascii	"Entity "
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 7

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.2,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	" does not exist"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 15

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.1
	.asciz	"\007\000\000\000\000\000\000"
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\017\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.4,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.10.0/src/world/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 97

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"a\000\000\000\000\000\000\000\022\001\000\000 \000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.6,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 43

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.7,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.10.0/src/bundle.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 94

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000\214\001\000\000E\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.9,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.10.0/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 97

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.10,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.9
	.asciz	"a\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.11,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000\207\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.12,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.12,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.12:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000h\002\000\000N\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.12, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.13,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.13,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.13:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000S\002\000\000N\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.13, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.14,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.14,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.14:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000A\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.14, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.15,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.15,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.15:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000.\002\000\000N\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.15, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.16,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.16,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.16:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"^\000\000\000\000\000\000\000\037\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.16, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

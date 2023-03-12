	.text
	.file	"entity_insert.7701174b-cgu.0"
	.section	".text._ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8f6d138b69c79c36E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8f6d138b69c79c36E,@function
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8f6d138b69c79c36E:
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
	.size	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8f6d138b69c79c36E, .Lfunc_end0-_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8f6d138b69c79c36E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h991822c54d49ab0fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h991822c54d49ab0fE,@function
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h991822c54d49ab0fE:
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
	.size	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h991822c54d49ab0fE, .Lfunc_end1-_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h991822c54d49ab0fE
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hcf803cb844629abaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hcf803cb844629abaE,@function
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hcf803cb844629abaE:
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
	.size	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hcf803cb844629abaE, .Lfunc_end2-_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hcf803cb844629abaE
	.cfi_endproc

	.section	".text._ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha86f23d8a8524b88E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha86f23d8a8524b88E,@function
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha86f23d8a8524b88E:
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
	.size	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha86f23d8a8524b88E, .Lfunc_end3-_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha86f23d8a8524b88E
	.cfi_endproc

	.section	.text._ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE,@function
_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE:
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
	.size	_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE, .Lfunc_end4-_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h05a4991d1d7f5be7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h05a4991d1d7f5be7E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h05a4991d1d7f5be7E:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h05a4991d1d7f5be7E, .Lfunc_end5-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h05a4991d1d7f5be7E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b59e7b4d3cb2f7cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b59e7b4d3cb2f7cE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b59e7b4d3cb2f7cE:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b59e7b4d3cb2f7cE, .Lfunc_end6-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b59e7b4d3cb2f7cE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb8e199dbb039a98cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb8e199dbb039a98cE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb8e199dbb039a98cE:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0cb6c8aa76f8e0daE
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb8e199dbb039a98cE, .Lfunc_end7-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb8e199dbb039a98cE
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h051ad78dfa237a92E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h051ad78dfa237a92E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h051ad78dfa237a92E:
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
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h67177dfe91cbef56E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E
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
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h051ad78dfa237a92E, .Lfunc_end8-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h051ad78dfa237a92E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5772cff1df974b18E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5772cff1df974b18E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5772cff1df974b18E:
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
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4984d6d8fc562c79E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E
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
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5772cff1df974b18E, .Lfunc_end9-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5772cff1df974b18E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4984d6d8fc562c79E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4984d6d8fc562c79E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4984d6d8fc562c79E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end10:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4984d6d8fc562c79E, .Lfunc_end10-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h4984d6d8fc562c79E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h67177dfe91cbef56E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h67177dfe91cbef56E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h67177dfe91cbef56E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end11:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h67177dfe91cbef56E, .Lfunc_end11-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h67177dfe91cbef56E
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI12_0:
	.zero	16,128
	.section	".text._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E,@function
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E:
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
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8f6d138b69c79c36E
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB12_31:
.Ltmp5:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E, .Lfunc_end12-_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E
	.cfi_endproc
	.section	".gcc_except_table._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17hb8383db6b3d9e869E","a",@progbits
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
	.zero	16,119
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
	movd	%xmm0, 20(%rsp)
	movabsq	$-1180950382348164528, %r13
	movabsq	$8108071375404061968, %r14
	movq	%rdi, 264(%rsp)
	movq	24(%rdi), %r15
	movl	760(%r15), %edi
	.cfi_escape 0x2e, 0x00
	callq	*_ZN8bevy_ecs9component4Tick3new17h2abf9ac3d2356e37E@GOTPCREL(%rip)
	movl	%eax, %r12d
	leaq	472(%r15), %rax
	movq	%rax, 8(%rsp)
	leaq	160(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	560(%r15), %rax
	movq	584(%r15), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI13_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %rsi
.LBB13_1:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebx
	.p2align	4, 0x90
.LBB13_2:
	testw	%bx, %bx
	je	.LBB13_3
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
	cmpq	%r14, -16(%rdi)
	jne	.LBB13_2
	jmp	.LBB13_13
	.p2align	4, 0x90
.LBB13_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB13_5
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB13_1
.LBB13_13:
	addq	$-8, %rdi
.LBB13_14:
	movq	(%rdi), %rsi
	shlq	$5, %rsi
	addq	600(%r15), %rsi
	leaq	64(%r15), %rcx
	movq	264(%rsp), %rbp
	movl	(%rbp), %ebx
	.cfi_escape 0x2e, 0x10
	leaq	176(%rsp), %rdi
	movq	%r15, %rdx
	movq	8(%rsp), %r8
	movq	24(%rsp), %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	*_ZN8bevy_ecs6bundle10BundleInfo19get_bundle_inserter17hd3a5320a4158bc68E@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	4(%rbp), %r13d
	movq	224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB13_71
	movl	16(%rbp), %ebx
	movl	20(%rbp), %r14d
	cmpl	$1, %eax
	jne	.LBB13_52
	movq	184(%rsp), %r15
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h48d0b04d06725db9E@GOTPCREL(%rip)
	cmpl	$1, 68(%rsp)
	jne	.LBB13_17
	movl	72(%rsp), %edx
	movl	76(%rsp), %r12d
	movq	192(%rsp), %rbp
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r12d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17hb7da5c77bc66bcb4E@GOTPCREL(%rip)
	movl	84(%rsp), %eax
	movq	92(%rsp), %rcx
	movl	%eax, 80(%rsp)
	movl	%r13d, 84(%rsp)
	movq	%rcx, 88(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	jmp	.LBB13_66
.LBB13_71:
	movl	8(%rbp), %r14d
	movl	12(%rbp), %ebp
	movq	184(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	56(%rax), %rax
	shlq	$5, %rdx
	movq	8(%rax,%rdx), %rax
	movq	208(%rsp), %rdx
	movl	248(%rsp), %esi
	movl	%esi, 8(%rsp)
	movss	20(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rdx), %r12
	movq	32(%rdx), %rdx
	shlq	$4, %rcx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r15
	shlq	$5, %r15
	leaq	(%r12,%r15), %rdi
	cmpb	$0, (%rax)
	je	.LBB13_70
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17hc2877e486da7c0bdE@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB13_73
.LBB13_52:
	movl	%ebx, 24(%rsp)
	movq	184(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
	leaq	272(%rsp), %rdi
	movq	%rsi, 8(%rsp)
	movl	%r13d, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h48d0b04d06725db9E@GOTPCREL(%rip)
	cmpl	$1, 276(%rsp)
	jne	.LBB13_53
	movl	280(%rsp), %edx
	movl	284(%rsp), %ebp
	movq	192(%rsp), %rbx
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17hb7da5c77bc66bcb4E@GOTPCREL(%rip)
	movl	84(%rsp), %eax
	movq	92(%rsp), %rcx
	movl	%eax, 80(%rsp)
	movl	%r13d, 84(%rsp)
	movq	%rcx, 88(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	jmp	.LBB13_55
.LBB13_17:
	movq	192(%rsp), %rbp
.LBB13_66:
	movq	232(%rsp), %rsi
	movl	64(%rsp), %r12d
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	movl	%ebx, %edx
	movl	%r14d, %ecx
	movl	%r12d, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17h5c92eb6c7a1b02d4E@GOTPCREL(%rip)
	movups	32(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	movq	200(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	(%rax), %rdx
	movq	56(%r15), %rsi
	shlq	$5, %rdx
	movq	8(%rsi,%rdx), %rdx
	movl	248(%rsp), %r14d
	movss	20(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rcx), %rbp
	movq	32(%rcx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %rdi
	cmpb	$0, (%rdx)
	je	.LBB13_67
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%r12, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17hc2877e486da7c0bdE@GOTPCREL(%rip)
	jmp	.LBB13_69
.LBB13_53:
	movq	192(%rsp), %rbx
.LBB13_55:
	movl	272(%rsp), %edx
	movq	208(%rsp), %rsi
	movq	240(%rsp), %r15
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rdi
	movl	%edx, 56(%rsp)
	movq	%r15, %rcx
	callq	*_ZN8bevy_ecs7storage5table5Table26move_to_superset_unchecked17hc32839541f7c2eb9E@GOTPCREL(%rip)
	movq	232(%rsp), %r12
	movl	64(%rsp), %ebp
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	movl	24(%rsp), %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17h5c92eb6c7a1b02d4E@GOTPCREL(%rip)
	movups	32(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	cmpl	$1, 68(%rsp)
	jne	.LBB13_60
	movq	%rbp, 288(%rsp)
	movl	72(%rsp), %edx
	movl	76(%rsp), %ecx
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%ecx, 24(%rsp)
	callq	*_ZN8bevy_ecs6entity8Entities3get17hb7da5c77bc66bcb4E@GOTPCREL(%rip)
	movl	84(%rsp), %eax
	movl	88(%rsp), %r13d
	movl	92(%rsp), %ecx
	movq	8(%rsp), %rdx
	movq	%rdx, %r14
	cmpl	%eax, 144(%rdx)
	je	.LBB13_58
	imulq	$152, %rax, %r14
	addq	176(%rsp), %r14
	cmpl	%eax, 144(%r12)
	cmoveq	%r12, %r14
.LBB13_58:
	movl	%eax, 80(%rsp)
	movl	%r13d, 84(%rsp)
	movl	%ecx, 88(%rsp)
	movl	56(%rsp), %ebp
	movl	%ebp, 92(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbx, %rdi
	movl	24(%rsp), %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	movq	136(%r14), %rsi
	cmpq	%r13, %rsi
	jbe	.LBB13_75
	movq	128(%r14), %rax
	leaq	(,%r13,2), %rcx
	addq	%r13, %rcx
	movl	%ebp, 8(%rax,%rcx,4)
	movq	288(%rsp), %rbp
.LBB13_60:
	movq	200(%rsp), %rax
	movq	(%rax), %rcx
	movq	8(%rsp), %rdx
	movq	56(%rdx), %rdx
	shlq	$5, %rcx
	movq	8(%rdx,%rcx), %rcx
	movl	248(%rsp), %r14d
	movss	20(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%r15), %r12
	movq	32(%r15), %rdx
	shlq	$4, %rax
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%r12,%rbx), %rdi
	cmpb	$0, (%rcx)
	je	.LBB13_61
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17hc2877e486da7c0bdE@GOTPCREL(%rip)
	jmp	.LBB13_63
.LBB13_67:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r12, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r12,4)
.LBB13_69:
	movq	80(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r12,4)
	jmp	.LBB13_64
.LBB13_70:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%rbp, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%r15), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%rbp,4)
.LBB13_73:
	movq	80(%r12,%r15), %rax
	movl	%ecx, (%rax,%rbp,4)
	jmp	.LBB13_74
.LBB13_61:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%rbp, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%rbx), %rax
	movl	%r14d, (%rax,%rbp,4)
.LBB13_63:
	movq	80(%r12,%rbx), %rax
	movl	%r14d, (%rax,%rbp,4)
.LBB13_64:
	movl	32(%rsp), %ebx
	movl	36(%rsp), %r13d
	movl	40(%rsp), %r14d
	movl	44(%rsp), %ebp
.LBB13_74:
	movq	264(%rsp), %rax
	movl	%ebx, (%rax)
	movl	%r13d, 4(%rax)
	movl	%r14d, 8(%rax)
	movl	%ebp, 12(%rax)
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
.LBB13_5:
	.cfi_def_cfa_offset 352
	cmpq	$0, 568(%r15)
	je	.LBB13_6
.LBB13_7:
	leaq	592(%r15), %r9
	movq	$0, 32(%rsp)
	movq	$8, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	472(%r15), %rax
	movq	496(%r15), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %rsi
.LBB13_8:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebx
	.p2align	4, 0x90
.LBB13_9:
	testw	%bx, %bx
	je	.LBB13_10
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
	cmpq	%r14, -16(%rdi)
	jne	.LBB13_9
	jmp	.LBB13_32
.LBB13_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB13_18
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB13_8
.LBB13_32:
	movq	%r9, %rbp
	addq	$-8, %rdi
.LBB13_33:
	movq	(%rdi), %rbx
.Ltmp16:
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hb8e199dbb039a98cE
.Ltmp17:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rbx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 48(%rsp)
	movq	608(%r15), %rbx
	movq	%rcx, 192(%rsp)
	movups	32(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rsi
	leaq	80(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$16, %edx
	movq	8(%rsp), %rcx
	movq	%rbx, %r9
	callq	*_ZN8bevy_ecs6bundle17initialize_bundle17h62ffe30a1c230c72E@GOTPCREL(%rip)
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqa	%xmm1, 192(%rsp)
	movdqa	%xmm0, 176(%rsp)
	movq	608(%r15), %rsi
	cmpq	592(%r15), %rsi
	jne	.LBB13_37
.Ltmp22:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h05a4991d1d7f5be7E
.Ltmp23:
	movq	608(%r15), %rsi
.LBB13_37:
	movq	600(%r15), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 608(%r15)
	movq	560(%r15), %rcx
	movq	584(%r15), %rax
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB13_40
	movl	$16, %esi
	.p2align	4, 0x90
.LBB13_39:
	addq	%rsi, %r13
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB13_39
.LBB13_40:
	movq	%rbx, %rbp
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r13, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB13_42
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB13_42:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$119, (%rax,%rdx)
	movb	$119, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	subq	%rcx, 568(%r15)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	576(%r15)
	jmp	.LBB13_14
.LBB13_6:
	leaq	560(%r15), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5772cff1df974b18E
	movdqa	.LCPI13_0(%rip), %xmm3
	jmp	.LBB13_7
.LBB13_18:
	movq	%r9, %rbp
	cmpq	$0, 480(%r15)
	jne	.LBB13_20
.Ltmp6:
	.cfi_escape 0x2e, 0x00
	movq	8(%rsp), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h051ad78dfa237a92E
.Ltmp7:
.LBB13_20:
	movq	552(%r15), %rbx
	movq	$0, 176(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rax
	movq	%rax, 184(%rsp)
	movq	$16, 192(%rsp)
	movq	$4, 208(%rsp)
	movq	$4, 216(%rsp)
	movq	$1, 224(%rsp)
	movq	%r14, 232(%rsp)
	movq	$0, 240(%rsp)
	movw	$256, 248(%rsp)
.Ltmp8:
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 56(%rsp)
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17h11d31e40fdda5eb1E@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 152(%rsp)
	je	.LBB13_22
.Ltmp10:
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17ha317b927f1d4eb83E@GOTPCREL(%rip)
.Ltmp11:
.LBB13_22:
	leaq	536(%r15), %rdi
	movq	160(%rsp), %rax
	movq	%rax, 256(%rsp)
	movups	144(%rsp), %xmm0
	movaps	%xmm0, 240(%rsp)
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	112(%rsp), %xmm2
	movdqu	128(%rsp), %xmm3
	movdqa	%xmm3, 224(%rsp)
	movdqa	%xmm2, 208(%rsp)
	movdqa	%xmm1, 192(%rsp)
	movdqa	%xmm0, 176(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB13_25
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b59e7b4d3cb2f7cE
.Ltmp14:
	movq	552(%r15), %rax
.LBB13_25:
	movq	544(%r15), %rcx
	imulq	$88, %rax, %rdx
	movq	256(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	240(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	176(%rsp), %xmm0
	movdqa	192(%rsp), %xmm1
	movdqa	208(%rsp), %xmm2
	movdqa	224(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%r15)
	movq	472(%r15), %rcx
	movq	496(%r15), %rax
	movq	%rcx, %rdx
	andq	%r13, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB13_28
	movl	$16, %edi
.LBB13_27:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB13_27
.LBB13_28:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB13_30
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB13_30:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$119, (%rax,%rsi)
	movb	$119, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r15)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r14, -16(%rax,%rsi)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r15)
	jmp	.LBB13_33
.LBB13_75:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdx
	movq	%r13, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB13_44:
.Ltmp15:
	movq	%rax, %rbx
	jmp	.LBB13_46
.LBB13_45:
.Ltmp12:
	movq	%rax, %rbx
	leaq	80(%rsp), %rax
	movq	%rax, 56(%rsp)
.LBB13_46:
	.cfi_escape 0x2e, 0x00
	movq	56(%rsp), %rdi
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hcf803cb844629abaE
	jmp	.LBB13_50
.LBB13_47:
.Ltmp24:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h991822c54d49ab0fE
	jmp	.LBB13_48
.LBB13_49:
.Ltmp18:
	movq	%rax, %rbx
.LBB13_50:
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha86f23d8a8524b88E
.Ltmp20:
.LBB13_48:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB13_51:
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/78aa6df/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.2,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.1
	.asciz	"_\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

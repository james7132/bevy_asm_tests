	.text
	.file	"entity_take.814bf876-cgu.0"
	.section	".text._ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d9059beb832b0f9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d9059beb832b0f9E,@function
_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d9059beb832b0f9E:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h5c0a1faf22d9a81eE@GOTPCREL(%rip)
.Lfunc_end0:
	.size	_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d9059beb832b0f9E, .Lfunc_end0-_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d9059beb832b0f9E
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117he4efaa7b34a5142fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117he4efaa7b34a5142fE,@function
_ZN4core3fmt9Arguments6new_v117he4efaa7b34a5142fE:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	cmpq	%r8, %rdx
	jb	.LBB1_3
	leaq	1(%r8), %rax
	cmpq	%rdx, %rax
	jb	.LBB1_3
	movq	%rsi, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	$0, (%rdi)
	movq	%rcx, 32(%rdi)
	movq	%r8, 40(%rdi)
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_3:
	.cfi_def_cfa_offset 64
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rcx
	movq	%rsp, %rbx
	movl	$1, %edx
	movq	%rbx, %rdi
	xorl	%r8d, %r8d
	callq	_ZN4core3fmt9Arguments6new_v117he4efaa7b34a5142fE
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rsi
	movq	%rbx, %rdi
	callq	*_ZN4core9panicking9panic_fmt17h9843c6e24b48e253E@GOTPCREL(%rip)
	ud2
.Lfunc_end1:
	.size	_ZN4core3fmt9Arguments6new_v117he4efaa7b34a5142fE, .Lfunc_end1-_ZN4core3fmt9Arguments6new_v117he4efaa7b34a5142fE
	.cfi_endproc

	.section	".text._ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E,@function
_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
	movq	16(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_2:
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_3
	movq	48(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_3:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E, .Lfunc_end2-_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E
	.cfi_endproc

	.section	".text._ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h20d47c5b8dc2d329E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h20d47c5b8dc2d329E,@function
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h20d47c5b8dc2d329E:
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
	je	.LBB3_5
	movq	(%r13), %r15
	cmpq	$-1, %r15
	je	.LBB3_5
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	negq	%rbx
	negq	%r15
	movq	$-16, %rbp
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_4:
	subq	%r12, %rbx
	leaq	(%r15,%rbp), %rax
	incq	%rax
	incq	%rbp
	cmpq	$-15, %rax
	je	.LBB3_5
.LBB3_3:
	movq	24(%r13), %rax
	cmpb	$-128, 16(%rax,%rbp)
	jne	.LBB3_4
	movq	(%r13), %rcx
	andq	%rbp, %rcx
	movb	$-1, 16(%rax,%rbp)
	movb	$-1, 16(%rcx,%rax)
	movq	24(%r13), %rdi
	addq	%rbx, %rdi
	callq	*%r14
	decq	16(%r13)
	jmp	.LBB3_4
.LBB3_5:
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
.Lfunc_end3:
	.size	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h20d47c5b8dc2d329E, .Lfunc_end3-_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h20d47c5b8dc2d329E
	.cfi_endproc

	.section	".text._ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17hb111afde12ecf743E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17hb111afde12ecf743E,@function
_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17hb111afde12ecf743E:
	.cfi_startproc
	retq
.Lfunc_end4:
	.size	_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17hb111afde12ecf743E, .Lfunc_end4-_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17hb111afde12ecf743E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h67c4312f46adc432E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h67c4312f46adc432E,@function
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h67c4312f46adc432E:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB5_1
	movq	16(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_1:
	retq
.Lfunc_end5:
	.size	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h67c4312f46adc432E, .Lfunc_end5-_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h67c4312f46adc432E
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h698152f00cc4e481E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h698152f00cc4e481E,@function
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h698152f00cc4e481E:
	.cfi_startproc
	cmpq	$0, (%rdi)
	je	.LBB6_2
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB6_2
	movq	16(%rdi), %rdi
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB6_2:
	retq
.Lfunc_end6:
	.size	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h698152f00cc4e481E, .Lfunc_end6-_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h698152f00cc4e481E
	.cfi_endproc

	.section	".text._ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha7a67fec84c5c96dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha7a67fec84c5c96dE,@function
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha7a67fec84c5c96dE:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB7_1
	movq	8(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_1:
	retq
.Lfunc_end7:
	.size	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha7a67fec84c5c96dE, .Lfunc_end7-_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha7a67fec84c5c96dE
	.cfi_endproc

	.section	.text._ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E,@function
_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E:
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
	je	.LBB8_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB8_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB8_11
.LBB8_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB8_6
.LBB8_7:
	testq	%r14, %r14
	je	.LBB8_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_4
.LBB8_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB8_12
.LBB8_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB8_6:
	movl	$1, %eax
.LBB8_12:
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB8_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB8_11
	jmp	.LBB8_4
.Lfunc_end8:
	.size	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E, .Lfunc_end8-_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h288828dcababed4bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h288828dcababed4bE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h288828dcababed4bE:
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
	je	.LBB9_10
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
	je	.LBB9_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	$0, 24(%rsp)
.LBB9_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB9_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB9_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB9_5:
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
.LBB9_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB9_9
.LBB9_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB9_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end9:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h288828dcababed4bE, .Lfunc_end9-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h288828dcababed4bE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE:
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
	je	.LBB10_10
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	movabsq	$768614336404564651, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setb	%dl
	leaq	(,%rbx,4), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$2, %rdx
	testq	%rax, %rax
	je	.LBB10_3
	movq	8(%r14), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	jmp	.LBB10_4
.LBB10_3:
	movq	$0, 24(%rsp)
.LBB10_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB10_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB10_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB10_5:
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
.LBB10_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB10_9
.LBB10_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB10_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end10:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE, .Lfunc_end10-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b1aedeaef00109aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b1aedeaef00109aE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b1aedeaef00109aE:
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
	je	.LBB11_10
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
	je	.LBB11_3
	movq	8(%r14), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB11_4
.LBB11_3:
	movq	$0, 24(%rsp)
.LBB11_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB11_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB11_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB11_5:
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
.LBB11_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB11_9
.LBB11_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB11_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b1aedeaef00109aE, .Lfunc_end11-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b1aedeaef00109aE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc056babbbfafe329E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc056babbbfafe329E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc056babbbfafe329E:
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
	je	.LBB12_10
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
	shrq	$59, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$4, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB12_3
	movq	8(%r14), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB12_4
.LBB12_3:
	movq	$0, 24(%rsp)
.LBB12_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB12_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB12_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB12_5:
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
.LBB12_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB12_9
.LBB12_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB12_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc056babbbfafe329E, .Lfunc_end12-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc056babbbfafe329E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf2194bf4b128f651E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf2194bf4b128f651E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf2194bf4b128f651E:
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
	je	.LBB13_10
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	movabsq	$128102389400760776, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setb	%dl
	leaq	(,%rbx,8), %rcx
	leaq	(%rcx,%rcx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB13_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB13_4
.LBB13_3:
	movq	$0, 24(%rsp)
.LBB13_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB13_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB13_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB13_5:
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
.LBB13_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB13_9
.LBB13_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB13_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end13:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf2194bf4b128f651E, .Lfunc_end13-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf2194bf4b128f651E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E:
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
	je	.LBB14_10
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
	je	.LBB14_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB14_4
.LBB14_3:
	movq	$0, 24(%rsp)
.LBB14_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB14_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB14_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB14_5:
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
.LBB14_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB14_9
.LBB14_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB14_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end14:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E, .Lfunc_end14-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E
	.cfi_endproc

	.section	".text.unlikely._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h484300585fda1a0fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h484300585fda1a0fE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h484300585fda1a0fE:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB15_10
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
	shrq	$59, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$4, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB15_3
	movq	8(%r14), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB15_4
.LBB15_3:
	movq	$0, 24(%rsp)
.LBB15_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17hc0d56235cdf0c2f8E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB15_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB15_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB15_5:
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
.LBB15_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB15_9
.LBB15_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB15_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end15:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h484300585fda1a0fE, .Lfunc_end15-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h484300585fda1a0fE
	.cfi_endproc

	.section	".text._ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb7c68d42747d5ec4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb7c68d42747d5ec4E,@function
_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb7c68d42747d5ec4E:
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rcx
	leaq	96(%rsp), %rdi
	movl	$51, %edx
	movl	$2, %r8d
	callq	*_ZN4core3str7pattern11StrSearcher3new17he6a494ab4d970e27E@GOTPCREL(%rip)
	movq	96(%rsp), %rdi
	movq	104(%rsp), %r13
	movq	136(%rsp), %rdx
	movq	152(%rsp), %rbx
	cmpq	$0, 128(%rsp)
	movq	%r14, 64(%rsp)
	movq	%rbp, 56(%rsp)
	je	.LBB16_38
	movq	120(%rsp), %rsi
	movq	168(%rsp), %r8
	leaq	(%r8,%rsi), %rax
	decq	%rax
	cmpq	%r13, %rax
	jae	.LBB16_59
	movq	112(%rsp), %r10
	movq	160(%rsp), %r11
	movq	184(%rsp), %r14
	leaq	-1(%rsi), %r12
	movq	%rsi, %rcx
	movq	%rbx, 24(%rsp)
	subq	%rbx, %rcx
	movq	%rcx, 32(%rsp)
	leaq	-1(%rdx), %rcx
	movq	%rcx, 16(%rsp)
	cmpq	%rsi, %rcx
	setb	7(%rsp)
	movq	%rdx, %rcx
	negq	%rcx
	movq	%rcx, 48(%rsp)
	leaq	(%r10,%rdx), %rcx
	movq	%rcx, 72(%rsp)
	leaq	(%rdi,%rdx), %r15
	leaq	(%r10,%rdx), %rcx
	decq	%rcx
	movq	%rcx, 40(%rsp)
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)
	jmp	.LBB16_5
	.p2align	4, 0x90
.LBB16_3:
	xorl	%r14d, %r14d
.LBB16_4:
	addq	%rsi, %r8
	leaq	(%r8,%r12), %rax
	movq	%r8, 8(%rsp)
	cmpq	%r13, %rax
	jae	.LBB16_62
.LBB16_5:
	cmpq	$-1, %r14
	jne	.LBB16_6
	jmp	.LBB16_23
	.p2align	4, 0x90
.LBB16_12:
	addq	%rsi, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jae	.LBB16_61
.LBB16_6:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB16_12
	cmpq	%r14, %rdx
	movq	%r14, %rax
	cmovaq	%rdx, %rax
	leaq	(%rdi,%r8), %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB16_8:
	cmpq	%rsi, %rcx
	jae	.LBB16_14
	leaq	(%r8,%rcx), %rbp
	cmpq	%r13, %rbp
	jae	.LBB16_65
	leaq	1(%rcx), %rbp
	movzbl	(%r10,%rcx), %r9d
	cmpb	(%rbx,%rcx), %r9b
	movq	%rbp, %rcx
	je	.LBB16_8
	addq	48(%rsp), %r8
	addq	%rbp, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB16_6
	jmp	.LBB16_61
	.p2align	4, 0x90
.LBB16_14:
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB16_15:
	cmpq	%rax, %r14
	jae	.LBB16_3
	decq	%rax
	cmpq	%rsi, %rax
	jae	.LBB16_37
	leaq	(%rax,%r8), %rbx
	cmpq	%r13, %rbx
	jae	.LBB16_63
	movzbl	(%r10,%rax), %ecx
	cmpb	(%rdi,%rbx), %cl
	je	.LBB16_15
	addq	24(%rsp), %r8
	movq	32(%rsp), %r14
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB16_6
	jmp	.LBB16_61
	.p2align	4, 0x90
.LBB16_20:
	addq	%rsi, %r8
.LBB16_21:
	movq	%r8, %rcx
.LBB16_22:
	leaq	(%rcx,%r12), %rax
	movq	%rcx, %r8
	cmpq	%r13, %rax
	jae	.LBB16_61
.LBB16_23:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB16_20
	xorl	%eax, %eax
	movq	%r8, %rbp
	movq	72(%rsp), %rbx
	.p2align	4, 0x90
.LBB16_25:
	leaq	(%rdx,%rax), %rcx
	cmpq	%rsi, %rcx
	jae	.LBB16_28
	leaq	(%rdx,%rbp), %rcx
	cmpq	%r13, %rcx
	jae	.LBB16_64
	movzbl	(%rbx), %r14d
	incq	%rbx
	leaq	1(%rbp), %rcx
	incq	%rax
	cmpb	(%r15,%rbp), %r14b
	movq	%rcx, %rbp
	je	.LBB16_25
	jmp	.LBB16_22
	.p2align	4, 0x90
.LBB16_28:
	testb	$1, 7(%rsp)
	je	.LBB16_35
	movq	16(%rsp), %rax
	leaq	(%rax,%r8), %rbx
	movq	40(%rsp), %rax
	movq	%rdx, %rbp
	.p2align	4, 0x90
.LBB16_30:
	subq	$1, %rbp
	jb	.LBB16_34
	cmpq	%r13, %rbx
	jae	.LBB16_63
	movzbl	(%rax), %r14d
	decq	%rax
	leaq	-1(%rbx), %rcx
	cmpb	(%rdi,%rbx), %r14b
	movq	%rcx, %rbx
	je	.LBB16_30
	addq	24(%rsp), %r8
	jmp	.LBB16_21
	.p2align	4, 0x90
.LBB16_34:
	movq	$-1, %r14
	jmp	.LBB16_4
.LBB16_35:
	movq	$-1, %r14
	testq	%rdx, %rdx
	je	.LBB16_4
	movq	16(%rsp), %rax
.LBB16_37:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB16_38:
	xorl	%r8d, %r8d
	testl	$16711680, %ebx
	jne	.LBB16_62
	jmp	.LBB16_40
	.p2align	4, 0x90
.LBB16_39:
	addq	%rcx, %rdx
	movb	$1, %bl
.LBB16_40:
	testq	%rdx, %rdx
	je	.LBB16_44
.LBB16_41:
	cmpq	%rdx, %r13
	jbe	.LBB16_43
	cmpb	$-64, (%rdi,%rdx)
	jge	.LBB16_44
	jmp	.LBB16_67
	.p2align	4, 0x90
.LBB16_43:
	jne	.LBB16_67
.LBB16_44:
	cmpq	%r13, %rdx
	je	.LBB16_57
	movzbl	(%rdi,%rdx), %ecx
	testb	%cl, %cl
	js	.LBB16_47
	movl	%ecx, %eax
	testb	%bl, %bl
	jne	.LBB16_56
.LBB16_51:
	cmpl	$1114112, %eax
	je	.LBB16_62
	movl	$1, %ecx
	cmpl	$128, %eax
	jb	.LBB16_39
	movl	$2, %ecx
	cmpl	$2048, %eax
	jb	.LBB16_39
	cmpl	$65536, %eax
	movl	$4, %ecx
	sbbq	$0, %rcx
	jmp	.LBB16_39
	.p2align	4, 0x90
.LBB16_47:
	movl	%ecx, %eax
	andl	$31, %eax
	movzbl	1(%rdi,%rdx), %esi
	andl	$63, %esi
	cmpb	$-32, %cl
	jb	.LBB16_50
	movzbl	2(%rdi,%rdx), %ebp
	shll	$6, %esi
	andl	$63, %ebp
	orl	%esi, %ebp
	cmpb	$-16, %cl
	jb	.LBB16_55
	movzbl	3(%rdi,%rdx), %ecx
	andl	$7, %eax
	shll	$18, %eax
	shll	$6, %ebp
	andl	$63, %ecx
	orl	%ebp, %ecx
	orl	%ecx, %eax
	testb	%bl, %bl
	je	.LBB16_51
	jmp	.LBB16_56
.LBB16_50:
	shll	$6, %eax
	orl	%esi, %eax
	testb	%bl, %bl
	je	.LBB16_51
.LBB16_56:
	movq	%rbx, %rax
	jmp	.LBB16_58
.LBB16_55:
	shll	$12, %eax
	orl	%ebp, %eax
	testb	%bl, %bl
	je	.LBB16_51
	jmp	.LBB16_56
.LBB16_57:
	movq	%r13, %rdx
	movq	%rbx, %rax
	testb	%bl, %bl
	je	.LBB16_62
.LBB16_58:
	movq	%rax, %rbx
	xorb	$1, %bl
	movq	%rdx, %r8
	testq	%rdx, %rdx
	jne	.LBB16_41
	jmp	.LBB16_44
.LBB16_59:
	xorl	%r8d, %r8d
	jmp	.LBB16_62
.LBB16_61:
	movq	8(%rsp), %r8
.LBB16_62:
	addq	%r8, %rdi
	movl	$51, %eax
	subq	%r8, %rax
	movq	%rdi, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d9059beb832b0f9E(%rip), %rax
	movq	%rax, 208(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4b5b8faa5c05ab48E@GOTPCREL(%rip), %rax
	movq	%rax, 224(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	$2, 120(%rsp)
	movq	$0, 96(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	$2, 136(%rsp)
	leaq	96(%rsp), %rsi
	movq	64(%rsp), %rdi
	callq	*_ZN4core3fmt9Formatter9write_fmt17h740ab1c83c2e7feaE@GOTPCREL(%rip)
	addq	$232, %rsp
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
.LBB16_63:
	.cfi_def_cfa_offset 288
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rdx
	movq	%rbx, %rdi
	jmp	.LBB16_66
.LBB16_64:
	movq	%rdx, %rax
.LBB16_65:
	addq	%rax, %r8
	cmpq	%r8, %r13
	cmovaq	%r13, %r8
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rdx
	movq	%r8, %rdi
.LBB16_66:
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB16_67:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %r8
	movq	%r13, %rsi
	movq	%r13, %rcx
	callq	*_ZN4core3str16slice_error_fail17hf7d1bbf489898afdE@GOTPCREL(%rip)
	ud2
.Lfunc_end16:
	.size	_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb7c68d42747d5ec4E, .Lfunc_end16-_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb7c68d42747d5ec4E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h56b0aeeac798a67cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h56b0aeeac798a67cE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h56b0aeeac798a67cE:
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
	jne	.LBB17_2
.LBB17_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB17_29
.LBB17_2:
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
	jbe	.LBB17_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB17_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB17_8
.LBB17_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hafc3b8fd38523bedE(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E
.LBB17_29:
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
.LBB17_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB17_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB17_29
	jmp	.LBB17_8
.LBB17_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB17_8
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
.LBB17_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB17_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB17_1
	je	.LBB17_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB17_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB17_29
.LBB17_11:
	movl	$16, %eax
.LBB17_12:
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
	je	.LBB17_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB17_18
	.p2align	4, 0x90
.LBB17_24:
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
.LBB17_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB17_26
.LBB17_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB17_25
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
	jne	.LBB17_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB17_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB17_21
.LBB17_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB17_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB17_24
.LBB17_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB17_27
	jmp	.LBB17_29
.LBB17_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB17_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB17_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB17_29
.Lfunc_end17:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h56b0aeeac798a67cE, .Lfunc_end17-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h56b0aeeac798a67cE
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc32d9441ae5b1d85E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc32d9441ae5b1d85E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc32d9441ae5b1d85E:
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
	jne	.LBB18_2
.LBB18_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB18_29
.LBB18_2:
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
	jbe	.LBB18_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB18_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB18_8
.LBB18_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9db78e211efdec7dE(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E
.LBB18_29:
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
.LBB18_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB18_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB18_29
	jmp	.LBB18_8
.LBB18_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB18_8
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
.LBB18_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB18_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB18_1
	je	.LBB18_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB18_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB18_29
.LBB18_11:
	movl	$16, %eax
.LBB18_12:
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
	je	.LBB18_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB18_18
	.p2align	4, 0x90
.LBB18_24:
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
.LBB18_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB18_26
.LBB18_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB18_25
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
	jne	.LBB18_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB18_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB18_21
.LBB18_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB18_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB18_24
.LBB18_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB18_27
	jmp	.LBB18_29
.LBB18_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB18_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB18_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB18_29
.Lfunc_end18:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc32d9441ae5b1d85E, .Lfunc_end18-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc32d9441ae5b1d85E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9db78e211efdec7dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9db78e211efdec7dE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9db78e211efdec7dE:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end19:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9db78e211efdec7dE, .Lfunc_end19-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9db78e211efdec7dE
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hafc3b8fd38523bedE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hafc3b8fd38523bedE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hafc3b8fd38523bedE:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end20:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hafc3b8fd38523bedE, .Lfunc_end20-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hafc3b8fd38523bedE
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI21_0:
	.zero	16,128
	.section	".text._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E,@function
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E:
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
	movdqa	.LCPI21_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB21_1
	.p2align	4, 0x90
.LBB21_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB21_7
.LBB21_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB21_1:
	testb	$1, %dil
	je	.LBB21_6
	addq	$15, %rax
	jb	.LBB21_7
	cmpq	%rdx, %rax
	jae	.LBB21_7
	leaq	1(%rax), %rcx
	jmp	.LBB21_5
.LBB21_7:
	cmpq	$16, %rdx
	jae	.LBB21_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB21_10
.LBB21_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB21_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB21_11
	xorl	%r13d, %r13d
	jmp	.LBB21_15
	.p2align	4, 0x90
.LBB21_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB21_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB21_12
.LBB21_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB21_28
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %rbp
	addq	$-16, %rbp
	.p2align	4, 0x90
.LBB21_17:
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
	jne	.LBB21_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB21_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB21_20
.LBB21_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB21_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB21_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB21_24
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
	je	.LBB21_27
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
	jmp	.LBB21_17
	.p2align	4, 0x90
.LBB21_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB21_28
.LBB21_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB21_13
.LBB21_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB21_13:
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
.LBB21_29:
	.cfi_def_cfa_offset 96
.Ltmp2:
	movq	%rax, %rbx
.Ltmp3:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h20d47c5b8dc2d329E
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB21_31:
.Ltmp5:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end21:
	.size	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E, .Lfunc_end21-_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E
	.cfi_endproc
	.section	".gcc_except_table._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h4e074b7c2bca6ef8E","a",@progbits
	.p2align	2
GCC_except_table21:
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
	.uleb128 .Lfunc_end21-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI22_0:
	.zero	16,50
	.section	.text.entity_remove,"ax",@progbits
	.globl	entity_remove
	.p2align	4, 0x90
	.type	entity_remove,@function
entity_remove:
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
	subq	$376, %rsp
	.cfi_def_cfa_offset 432
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, 272(%rsp)
	movl	%edx, 276(%rsp)
	movl	%edx, 20(%rsp)
	movl	%edx, %ecx
	cmpq	%rcx, 24(%rdi)
	jbe	.LBB22_153
	movq	%rdi, %r15
	movq	16(%rdi), %rax
	leaq	(%rcx,%rcx,4), %rcx
	cmpl	%esi, (%rax,%rcx,4)
	jne	.LBB22_153
	movl	4(%rax,%rcx,4), %edx
	movq	%rdx, 8(%rsp)
	cmpl	$-1, %edx
	je	.LBB22_153
	movl	%esi, 36(%rsp)
	movq	%rcx, 328(%rsp)
	leaq	(%rax,%rcx,4), %rax
	addq	$4, %rax
	movabsq	$-1522271088850595570, %r12
	movabsq	$7345410596340824358, %r13
	movl	4(%rax), %ecx
	movq	%rcx, 152(%rsp)
	movl	8(%rax), %ecx
	movq	%rcx, 168(%rsp)
	movl	12(%rax), %eax
	movq	%rax, 312(%rsp)
	leaq	64(%r15), %rax
	movq	%rax, 40(%rsp)
	leaq	160(%r15), %rax
	movq	%rax, 24(%rsp)
	leaq	472(%r15), %r14
	leaq	616(%r15), %rax
	movq	%rax, 160(%rsp)
	movq	560(%r15), %rax
	movq	584(%r15), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI22_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %rsi
.LBB22_4:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebx
	.p2align	4, 0x90
.LBB22_5:
	testw	%bx, %bx
	je	.LBB22_6
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
	cmpq	%r12, -16(%rdi)
	jne	.LBB22_5
	jmp	.LBB22_16
	.p2align	4, 0x90
.LBB22_6:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB22_8
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB22_4
.LBB22_16:
	addq	$-8, %rdi
.LBB22_42:
	movq	8(%rsp), %r13
	movq	600(%r15), %rbx
	movq	(%rdi), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %r8
	xorl	%r12d, %r12d
	movq	40(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	%r14, %rdx
	movl	%r13d, %ecx
	xorl	%r9d, %r9d
	callq	*_ZN8bevy_ecs5world10entity_ref28remove_bundle_from_archetype17h3cde070aae7daf36E@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.LBB22_152
	cmpl	%r13d, %edx
	je	.LBB22_152
	cmpq	$0, 24(%rbx,%rbp)
	je	.LBB22_45
	movl	%edx, 144(%rsp)
	movq	16(%rbx,%rbp), %rax
	movq	(%rax), %r13
	movq	544(%r15), %r12
	movq	680(%r15), %rbp
	cmpq	%r13, %rbp
	movq	%r12, 40(%rsp)
	jbe	.LBB22_64
	movq	672(%r15), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	cmpq	$0, (%rax,%rcx)
	je	.LBB22_64
	movq	8(%rax,%rcx), %rax
	leaq	(%rax,%rax,8), %rbp
	shlq	$3, %rbp
	addq	624(%r15), %rbp
	jmp	.LBB22_59
.LBB22_64:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 176(%rsp)
	movq	$8, 192(%rsp)
	movdqu	%xmm0, 200(%rsp)
	movq	$0, 216(%rsp)
	movq	$8, 224(%rsp)
	movdqu	%xmm0, 232(%rsp)
	movq	632(%r15), %r14
	cmpq	%r13, %rbp
	ja	.LBB22_65
	leaq	1(%r13), %rax
	movq	%rax, %rdx
	subq	%rbp, %rdx
	jbe	.LBB22_77
	leaq	664(%r15), %rdi
	movq	(%rdi), %rax
	subq	%rbp, %rax
	cmpq	%rdx, %rax
	jae	.LBB22_75
.Ltmp25:
	movq	%rbp, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h484300585fda1a0fE
.Ltmp26:
	movq	680(%r15), %rax
	jmp	.LBB22_72
.LBB22_75:
	movq	%rbp, %rax
	testq	%rdx, %rdx
	je	.LBB22_76
.LBB22_72:
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	672(%r15), %rcx
	movq	%r13, %rdx
	notq	%rdx
	addq	%rbp, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB22_73:
	movq	$0, (%rcx)
	decq	%rsi
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jne	.LBB22_73
	subq	%rsi, %rax
.LBB22_77:
	movq	%rax, 680(%r15)
	movq	%rax, %rbp
.LBB22_65:
	cmpq	%r13, %rbp
	jbe	.LBB22_66
	movq	672(%r15), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	$1, (%rax,%rcx)
	movq	%r14, 8(%rax,%rcx)
	movq	656(%r15), %rsi
	cmpq	640(%r15), %rsi
	jne	.LBB22_81
.Ltmp29:
	leaq	640(%r15), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E
.Ltmp30:
	movq	656(%r15), %rsi
.LBB22_81:
	movq	648(%r15), %rax
	movq	%r13, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 656(%r15)
	movq	240(%rsp), %rax
	movq	%rax, 112(%rsp)
	movdqa	176(%rsp), %xmm0
	movdqa	192(%rsp), %xmm1
	movdqa	208(%rsp), %xmm2
	movdqa	224(%rsp), %xmm3
	movdqa	%xmm3, 96(%rsp)
	movdqa	%xmm2, 80(%rsp)
	movdqa	%xmm1, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	632(%r15), %rsi
	cmpq	616(%r15), %rsi
	jne	.LBB22_84
.Ltmp35:
	movq	160(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf2194bf4b128f651E
.Ltmp36:
	movq	632(%r15), %rsi
.LBB22_84:
	movq	624(%r15), %rax
	leaq	(%rsi,%rsi,8), %rcx
	movq	240(%rsp), %rdx
	movq	%rdx, 64(%rax,%rcx,8)
	movaps	176(%rsp), %xmm0
	movdqa	192(%rsp), %xmm1
	movdqa	208(%rsp), %xmm2
	movdqa	224(%rsp), %xmm3
	movdqu	%xmm3, 48(%rax,%rcx,8)
	movdqu	%xmm2, 32(%rax,%rcx,8)
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	incq	%rsi
	movq	%rsi, 632(%r15)
	leaq	(%r14,%r14,8), %rcx
	leaq	(%rax,%rcx,8), %rbp
.LBB22_59:
	movq	64(%rbp), %r14
	movq	%r14, 320(%rsp)
	movq	_ZN12tracing_core8metadata9MAX_LEVEL17h8d3e53ff7a70666aE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	decq	%rax
	movq	%r14, %rbx
	cmpq	$5, %rax
	jb	.LBB22_91
	movq	_ZN8bevy_ecs5event15Events$LT$E$GT$4send8CALLSITE17h10857d4755949668E@GOTPCREL(%rip), %r12
	movzbl	16(%r12), %eax
	movq	%r14, %rbx
	testb	%al, %al
	je	.LBB22_91
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	je	.LBB22_90
	cmpl	$2, %ecx
	jne	.LBB22_89
	movb	$2, %al
.LBB22_90:
	movq	8(%r12), %rdi
	movzbl	%al, %esi
	callq	*_ZN7tracing15__macro_support12__is_enabled17h5320f88931eb1b27E@GOTPCREL(%rip)
	movq	%r14, %rbx
	testb	%al, %al
	je	.LBB22_91
	movq	8(%r12), %rdi
	callq	*_ZN12tracing_core8metadata8Metadata6fields17hdd1499e20ab2e58eE@GOTPCREL(%rip)
	leaq	176(%rsp), %rdi
	movq	%rax, %rsi
	callq	*_ZN12tracing_core5field8FieldSet4iter17hedb7f6c5d488fc77E@GOTPCREL(%rip)
	movq	%r12, %rbx
	movq	8(%r12), %rdi
	callq	*_ZN12tracing_core8metadata8Metadata6fields17hdd1499e20ab2e58eE@GOTPCREL(%rip)
	movq	%rax, 160(%rsp)
	leaq	48(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	*_ZN84_$LT$tracing_core..field..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he5a4758f9fd49b38E@GOTPCREL(%rip)
	cmpq	$0, 48(%rsp)
	je	.LBB22_154
	movq	80(%rsp), %rax
	movq	%rax, 304(%rsp)
	movups	48(%rsp), %xmm0
	movdqu	64(%rsp), %xmm1
	movdqa	%xmm1, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb7c68d42747d5ec4E(%rip), %rax
	movq	%rax, 344(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$0, 48(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	$1, 88(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 352(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 360(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rax
	movq	%rax, 368(%rsp)
	leaq	352(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	$1, 184(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	8(%rbx), %rdi
	leaq	176(%rsp), %rsi
	callq	*_ZN12tracing_core5event5Event8dispatch17h0e68ab1004e4f264E@GOTPCREL(%rip)
	movq	320(%rsp), %rbx
.LBB22_91:
	movq	56(%rbp), %rsi
	cmpq	40(%rbp), %rsi
	jne	.LBB22_93
	leaq	40(%rbp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc056babbbfafe329E
	movq	56(%rbp), %rsi
	movq	64(%rbp), %r14
.LBB22_93:
	movq	48(%rbp), %rax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	%rbx, (%rax,%rcx)
	movl	36(%rsp), %ebx
	movl	%ebx, 8(%rax,%rcx)
	movl	20(%rsp), %edx
	movl	%edx, 12(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 56(%rbp)
	incq	%r14
	movq	%r14, 64(%rbp)
	imulq	$88, %r13, %rax
	movq	40(%rsp), %rcx
	cmpb	$0, 72(%rcx,%rax)
	je	.LBB22_94
	movq	24(%rsp), %rdi
	movq	%r13, %rsi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets7get_mut17h2861e64c0e9d01f5E@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB22_103
	movq	%rax, %rdi
	movl	%ebx, %esi
	movl	20(%rsp), %edx
	callq	*_ZN8bevy_ecs7storage10sparse_set18ComponentSparseSet17remove_and_forget17hcdfff228fb32e9baE@GOTPCREL(%rip)
	testq	%rax, %rax
	movq	152(%rsp), %rdi
	movq	8(%rsp), %rcx
	je	.LBB22_106
	movq	304(%r15), %r8
	movq	312(%r15), %rsi
	movq	152(%r15), %r11
	cmpq	%rcx, %r11
	jbe	.LBB22_109
.LBB22_111:
	movq	144(%r15), %r12
	imulq	$152, %rcx, %r10
	movq	136(%r12,%r10), %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB22_155
	movss	(%rax), %xmm0
	movq	16(%r15), %r14
	movq	24(%r15), %r13
	leaq	(%r12,%r10), %r9
	addq	$136, %r9
	decq	%rcx
	movq	128(%r12,%r10), %rax
	leaq	(%rdi,%rdi,2), %rbp
	movl	8(%rax,%rbp,4), %edx
	movl	%edx, 8(%rsp)
	leaq	(%rcx,%rcx,2), %rdx
	movl	8(%rax,%rdx,4), %ebx
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rbp,4)
	movl	%ebx, 8(%rax,%rbp,4)
	movq	%rcx, (%r9)
	cmpq	%rdi, %rcx
	je	.LBB22_119
	jbe	.LBB22_156
	leaq	(%rax,%rbp,4), %rcx
	movl	4(%rcx), %eax
	cmpq	%rax, %r13
	jbe	.LBB22_117
	leaq	(%rax,%rax,4), %rax
	movl	(%r14,%rax,4), %edx
	cmpl	(%rcx), %edx
	jne	.LBB22_117
	cmpl	$-1, 4(%r14,%rax,4)
	je	.LBB22_117
	leaq	(%r14,%rax,4), %rax
	addq	$4, %rax
	movl	%edi, 4(%rax)
.LBB22_119:
	movl	144(%rsp), %eax
	cmpq	%rax, %r11
	jbe	.LBB22_120
	movq	%r13, 40(%rsp)
	movl	148(%r12,%r10), %edi
	imulq	$152, %rax, %r13
	leaq	(%r12,%r13), %r15
	addq	$148, %r15
	movl	148(%r12,%r13), %eax
	cmpl	%eax, %edi
	jne	.LBB22_122
	leaq	(%r12,%r13), %rbx
	addq	$120, %rbx
	movq	136(%r12,%r13), %rbp
	movq	%rbp, %rax
	cmpq	120(%r12,%r13), %rbp
	jne	.LBB22_146
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movss	%xmm0, 24(%rsp)
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE
	movss	24(%rsp), %xmm0
	movq	16(%rbx), %rax
.LBB22_146:
	movq	8(%rbx), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	36(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	20(%rsp), %esi
	movl	%esi, 4(%rcx,%rdx,4)
	movl	8(%rsp), %esi
	movl	%esi, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 16(%rbx)
	movl	144(%r12,%r13), %ecx
	movl	(%r15), %edx
	jmp	.LBB22_151
.LBB22_122:
	cmpl	%eax, %edi
	movss	%xmm0, 24(%rsp)
	movq	%r11, 168(%rsp)
	movq	%r15, 152(%rsp)
	jbe	.LBB22_123
	cmpq	%rdi, %rsi
	jb	.LBB22_131
	je	.LBB22_129
	leaq	(%rdi,%rdi,8), %rcx
	leaq	(%r8,%rcx,8), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%r8,%rax,8), %rcx
	jmp	.LBB22_137
.LBB22_94:
	movq	312(%r15), %rsi
	movq	168(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB22_95
	movq	304(%r15), %r8
	leaq	(%rdi,%rdi,8), %rax
	cmpq	%r13, 40(%r8,%rax,8)
	jbe	.LBB22_101
	movq	32(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB22_101
	shlq	$4, %r13
	cmpq	$0, (%rcx,%r13)
	je	.LBB22_101
	leaq	(%r8,%rax,8), %rax
	movq	(%rax), %rdi
	movq	8(%rcx,%r13), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$5, %rcx
	movq	(%rdi,%rcx), %rax
	imulq	312(%rsp), %rax
	addq	40(%rdi,%rcx), %rax
	movq	152(%rsp), %rdi
	movq	8(%rsp), %rcx
	movq	152(%r15), %r11
	cmpq	%rcx, %r11
	ja	.LBB22_111
.LBB22_109:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.28(%rip), %rdx
	movq	%rcx, %rdi
	jmp	.LBB22_110
.LBB22_123:
	cmpq	%rax, %rsi
	jb	.LBB22_133
	cmpl	%edi, %eax
	jbe	.LBB22_134
	cmpq	%rax, %rsi
	je	.LBB22_135
	leaq	(%rax,%rax,8), %rax
	leaq	(%r8,%rax,8), %rcx
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%r8,%rax,8), %rsi
.LBB22_137:
	leaq	48(%rsp), %rdi
	movl	8(%rsp), %edx
	callq	*_ZN8bevy_ecs7storage5table5Table36move_to_and_forget_missing_unchecked17h91384f3719ce8696E@GOTPCREL(%rip)
	movl	48(%rsp), %r15d
	leaq	(%r12,%r13), %rbx
	addq	$120, %rbx
	movq	136(%r12,%r13), %rbp
	movq	%rbp, %rax
	cmpq	120(%r12,%r13), %rbp
	jne	.LBB22_139
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h73484fc0352d5d1fE
	movq	16(%rbx), %rax
.LBB22_139:
	movq	8(%rbx), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	36(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	20(%rsp), %esi
	movl	%esi, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 16(%rbx)
	movl	144(%r12,%r13), %ecx
	movq	152(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$1, 52(%rsp)
	movss	24(%rsp), %xmm0
	jne	.LBB22_150
	movl	60(%rsp), %eax
	cmpq	%rax, 40(%rsp)
	jbe	.LBB22_143
	leaq	(%rax,%rax,4), %rsi
	movl	(%r14,%rsi,4), %eax
	cmpl	56(%rsp), %eax
	jne	.LBB22_143
	movl	4(%r14,%rsi,4), %eax
	cmpl	$-1, %eax
	je	.LBB22_143
	leaq	(%r14,%rsi,4), %rsi
	addq	$4, %rsi
	movl	4(%rsi), %edi
	movq	312(%rsp), %rbx
	movl	%ebx, 12(%rsi)
	movq	168(%rsp), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB22_157
	imulq	$152, %rax, %rax
	movq	136(%r12,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB22_158
	addq	%r12, %rax
	addq	$120, %rax
	movq	8(%rax), %rax
	leaq	(%rdi,%rdi,2), %rsi
	movl	8(%rsp), %edi
	movl	%edi, 8(%rax,%rsi,4)
.LBB22_150:
	movl	%r15d, 8(%rsp)
.LBB22_151:
	movq	328(%rsp), %rax
	movl	%ecx, 4(%r14,%rax,4)
	movl	%ebp, 8(%r14,%rax,4)
	movl	%edx, 12(%r14,%rax,4)
	movl	8(%rsp), %ecx
	movl	%ecx, 16(%r14,%rax,4)
	movl	$1, %r12d
.LBB22_152:
	movl	%r12d, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	leaq	48(%rsp), %rax
	#APP
	#NO_APP
	movl	48(%rsp), %eax
	movss	52(%rsp), %xmm0
	addq	$376, %rsp
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
.LBB22_8:
	.cfi_def_cfa_offset 432
	cmpq	$0, 568(%r15)
	je	.LBB22_9
.LBB22_10:
	leaq	592(%r15), %r9
	movq	$0, 272(%rsp)
	movq	$8, 280(%rsp)
	movq	$0, 288(%rsp)
	movq	472(%r15), %rax
	movq	496(%r15), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %rsi
.LBB22_11:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebx
	.p2align	4, 0x90
.LBB22_12:
	testw	%bx, %bx
	je	.LBB22_13
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
	cmpq	%r12, -16(%rdi)
	jne	.LBB22_12
	jmp	.LBB22_31
.LBB22_13:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB22_17
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB22_11
.LBB22_31:
	movq	%r9, %rbp
	addq	$-8, %rdi
.LBB22_32:
	movq	(%rdi), %rbx
.Ltmp16:
	leaq	272(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf6e4a41c1e2f62f8E
.Ltmp17:
	movq	280(%rsp), %rax
	movq	288(%rsp), %rcx
	movq	%rbx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 288(%rsp)
	movq	608(%r15), %rbx
	movq	%rcx, 64(%rsp)
	movups	272(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rsi
	leaq	176(%rsp), %rdi
	leaq	48(%rsp), %r8
	movl	$14, %edx
	movq	%r14, %rcx
	movq	%rbx, %r9
	callq	*_ZN8bevy_ecs6bundle17initialize_bundle17hec4a75f27b0b29deE@GOTPCREL(%rip)
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqa	%xmm1, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	608(%r15), %rsi
	cmpq	592(%r15), %rsi
	jne	.LBB22_36
.Ltmp22:
	movq	%rbp, %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7b1aedeaef00109aE
.Ltmp23:
	movq	608(%r15), %rsi
.LBB22_36:
	movq	600(%r15), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
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
	jne	.LBB22_39
	movl	$16, %esi
	.p2align	4, 0x90
.LBB22_38:
	addq	%rsi, %r13
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB22_38
.LBB22_39:
	movq	%rbx, %rbp
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r13, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB22_41
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB22_41:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$50, (%rax,%rdx)
	movb	$50, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	subq	%rcx, 568(%r15)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r12, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	576(%r15)
	jmp	.LBB22_42
.LBB22_76:
	movq	%rbp, %rax
	jmp	.LBB22_77
.LBB22_89:
	movq	_ZN8bevy_ecs5event15Events$LT$E$GT$4send8CALLSITE17h10857d4755949668E@GOTPCREL(%rip), %rdi
	callq	*_ZN12tracing_core8callsite15DefaultCallsite8register17hbf498403702f2c39E@GOTPCREL(%rip)
	movq	%r14, %rbx
	testb	%al, %al
	jne	.LBB22_90
	jmp	.LBB22_91
.LBB22_9:
	leaq	560(%r15), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h56b0aeeac798a67cE
	movdqa	.LCPI22_0(%rip), %xmm3
	jmp	.LBB22_10
.LBB22_17:
	movq	%r9, %rbp
	cmpq	$0, 480(%r15)
	jne	.LBB22_19
.Ltmp6:
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc32d9441ae5b1d85E
.Ltmp7:
.LBB22_19:
	movq	552(%r15), %rbx
	movq	$0, 48(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$14, 64(%rsp)
	movq	$4, 80(%rsp)
	movq	$4, 88(%rsp)
	movq	$1, 96(%rsp)
	movq	%r12, 104(%rsp)
	movq	$0, 112(%rsp)
	movw	$256, 120(%rsp)
.Ltmp8:
	leaq	176(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 144(%rsp)
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17h237f1c5b0c6ccc0dE@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 248(%rsp)
	je	.LBB22_21
.Ltmp10:
	leaq	176(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17h53a58fd1aae750e3E@GOTPCREL(%rip)
.Ltmp11:
.LBB22_21:
	leaq	536(%r15), %rdi
	movq	256(%rsp), %rax
	movq	%rax, 128(%rsp)
	movups	240(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	movdqu	224(%rsp), %xmm3
	movdqa	%xmm3, 96(%rsp)
	movdqa	%xmm2, 80(%rsp)
	movdqa	%xmm1, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB22_24
.Ltmp13:
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h288828dcababed4bE
.Ltmp14:
	movq	552(%r15), %rax
.LBB22_24:
	movq	544(%r15), %rcx
	imulq	$88, %rax, %rdx
	movq	128(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	48(%rsp), %xmm0
	movdqa	64(%rsp), %xmm1
	movdqa	80(%rsp), %xmm2
	movdqa	96(%rsp), %xmm3
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
	jne	.LBB22_27
	movl	$16, %edi
.LBB22_26:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB22_26
.LBB22_27:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB22_29
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB22_29:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$50, (%rax,%rsi)
	movb	$50, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r15)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r12, -16(%rax,%rsi)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r15)
	jmp	.LBB22_32
.LBB22_120:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rdx
	movq	%rax, %rdi
.LBB22_110:
	movq	%r11, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_66:
.Ltmp27:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.42(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
.Ltmp28:
	ud2
.LBB22_156:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.50(%rip), %rdx
	movq	%rcx, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_95:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_129:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.46(%rip), %rdx
	jmp	.LBB22_130
.LBB22_134:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.48(%rip), %rdx
	movq	%rax, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_135:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.49(%rip), %rdx
.LBB22_130:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_157:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_158:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB22_153:
	leaq	272(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	_ZN61_$LT$bevy_ecs..entity..Entity$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e53a468aaa256aE@GOTPCREL(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$2, 72(%rsp)
	movq	$0, 48(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	$1, 88(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.40(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*_ZN4core9panicking9panic_fmt17h9843c6e24b48e253E@GOTPCREL(%rip)
	ud2
.LBB22_45:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rdx
	jmp	.LBB22_46
.LBB22_155:
	movq	%rcx, %rsi
	callq	*_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove13assert_failed17h7ab0567bd975a732E@GOTPCREL(%rip)
	ud2
.LBB22_117:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %rdx
	jmp	.LBB22_46
.LBB22_101:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	jmp	.LBB22_46
.LBB22_103:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rdx
	jmp	.LBB22_46
.LBB22_106:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	jmp	.LBB22_46
.LBB22_143:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rdx
.LBB22_46:
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB22_131:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.45(%rip), %rdx
	jmp	.LBB22_132
.LBB22_133:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %rdx
.LBB22_132:
	movl	$35, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB22_154:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	movl	$34, %esi
	callq	*_ZN4core6option13expect_failed17haf3b1256d16103a3E@GOTPCREL(%rip)
	ud2
.LBB22_48:
.Ltmp15:
	movq	%rax, %rbx
	jmp	.LBB22_50
.LBB22_49:
.Ltmp12:
	movq	%rax, %rbx
	leaq	176(%rsp), %rax
	movq	%rax, 144(%rsp)
.LBB22_50:
	movq	144(%rsp), %rdi
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h698152f00cc4e481E
	jmp	.LBB22_54
.LBB22_51:
.Ltmp24:
	movq	%rax, %rbx
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h67c4312f46adc432E
	jmp	.LBB22_52
.LBB22_53:
.Ltmp18:
	movq	%rax, %rbx
.LBB22_54:
.Ltmp19:
	leaq	272(%rsp), %rdi
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17ha7a67fec84c5c96dE
.Ltmp20:
	jmp	.LBB22_52
.LBB22_55:
.Ltmp21:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.LBB22_85:
.Ltmp37:
	movq	%rax, %rbx
.Ltmp38:
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E
.Ltmp39:
	jmp	.LBB22_52
.LBB22_86:
.Ltmp40:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.LBB22_87:
.Ltmp31:
	movq	%rax, %rbx
.Ltmp32:
	leaq	176(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17he157b5d5042b5568E
.Ltmp33:
.LBB22_52:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB22_88:
.Ltmp34:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end22:
	.size	entity_remove, .Lfunc_end22-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2
GCC_except_table22:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1
	.uleb128 .Ltmp25-.Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin1
	.uleb128 .Ltmp30-.Ltmp25
	.uleb128 .Ltmp31-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp35-.Lfunc_begin1
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp37-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin1
	.uleb128 .Ltmp16-.Ltmp36
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
	.uleb128 .Ltmp27-.Ltmp14
	.byte	0
	.byte	0
	.uleb128 .Ltmp27-.Lfunc_begin1
	.uleb128 .Ltmp28-.Ltmp27
	.uleb128 .Ltmp31-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin1
	.uleb128 .Ltmp19-.Ltmp28
	.byte	0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin1
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin1
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp40-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin1
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin1
	.uleb128 .Lfunc_end22-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.0,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"bevy_ecs::removal_detection::RemovedComponentEntity"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 51

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.ascii	"invalid args"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 12

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"\f\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"a",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.ascii	"/rustc/8a73f50d875840b8077b8ec080fa41881d7ce40d/library/core/src/fmt/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 75

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.5
	.asciz	"K\000\000\000\000\000\000\000\223\001\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.ascii	"/rustc/8a73f50d875840b8077b8ec080fa41881d7ce40d/library/core/src/str/pattern.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 79

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.7
	.asciz	"O\000\000\000\000\000\000\000\247\005\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.7
	.asciz	"O\000\000\000\000\000\000\000\263\005\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.7
	.asciz	"O\000\000\000\000\000\000\000\263\005\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.11,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"event<"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 6

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.ascii	">#"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 2

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"\006\000\000\000\000\000\000"
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.12
	.asciz	"\002\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.zero	2,58
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 2

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.15,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 43

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/7dbe7d8/crates/bevy_ecs/src/event.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 91

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.7
	.asciz	"O\000\000\000\000\000\000\0007\004\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.ascii	"FieldSet corrupted (this is a bug)"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 34

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.ascii	"Events::send() -> id: "
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 22

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"\026\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17hb111afde12ecf743E
	.asciz	"0\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN67_$LT$core..fmt..Arguments$u20$as$u20$tracing_core..field..Value$GT$6record17h1d6a7584ccdd64bbE
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"[\000\000\000\000\000\000\000\004\002\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/7dbe7d8/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 102

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000>\003\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000<\003\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000/\003\000\000\036\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.27,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\0000\003\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.28,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000t\001\000\000\"\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000\206\001\000\000\"\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.30,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000\246\001\000\000\021\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/7dbe7d8/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.31
	.asciz	"_\000\000\000\000\000\000\000\255\001\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000\233\001\000\000E\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.34,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000x\001\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.35,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"f\000\000\000\000\000\000\000@\001\000\000=\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.36,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.ascii	"Entity "
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 7

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.ascii	" does not exist"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 15

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.36
	.asciz	"\007\000\000\000\000\000\000"
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.37
	.asciz	"\017\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/7dbe7d8/crates/bevy_ecs/src/world/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"_\000\000\000\000\000\000\000\022\001\000\000 \000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.41,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/7dbe7d8/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.42,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.41
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.43,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.43,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.43:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.43, 35

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.44,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.44,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.44:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/7dbe7d8/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.44, 99

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.45,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.45,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.45:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.44
	.asciz	"c\000\000\000\000\000\000\000J\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.45, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.46,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.46,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.46:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.44
	.asciz	"c\000\000\000\000\000\000\000K\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.46, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.47,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.47,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.47:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.44
	.asciz	"c\000\000\000\000\000\000\000M\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.47, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.48,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.48,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.48:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.44
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.48, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.49,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.49,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.49:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.44
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.49, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.50,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.50,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.50:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.31
	.asciz	"_\000\000\000\000\000\000\000\330\001\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.50, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

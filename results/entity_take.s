	.text
	.file	"entity_take.48b2292d-cgu.0"
	.section	".text._ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66e3500b3a4ddd09E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66e3500b3a4ddd09E,@function
_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66e3500b3a4ddd09E:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h5c0a1faf22d9a81eE@GOTPCREL(%rip)
.Lfunc_end0:
	.size	_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66e3500b3a4ddd09E, .Lfunc_end0-_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66e3500b3a4ddd09E
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

	.section	".text._ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE,@function
_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE:
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
	.size	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE, .Lfunc_end2-_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE
	.cfi_endproc

	.section	".text._ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hddf86e9b6eaf8ddeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hddf86e9b6eaf8ddeE,@function
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hddf86e9b6eaf8ddeE:
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
	.size	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hddf86e9b6eaf8ddeE, .Lfunc_end3-_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hddf86e9b6eaf8ddeE
	.cfi_endproc

	.section	".text._ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17h3a350dbf86e16d9fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17h3a350dbf86e16d9fE,@function
_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17h3a350dbf86e16d9fE:
	.cfi_startproc
	retq
.Lfunc_end4:
	.size	_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17h3a350dbf86e16d9fE, .Lfunc_end4-_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17h3a350dbf86e16d9fE
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h7311b6d2155e902cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h7311b6d2155e902cE,@function
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h7311b6d2155e902cE:
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
	.size	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h7311b6d2155e902cE, .Lfunc_end5-_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h7311b6d2155e902cE
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hdf08962ef9a9f9bbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hdf08962ef9a9f9bbE,@function
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hdf08962ef9a9f9bbE:
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
	.size	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hdf08962ef9a9f9bbE, .Lfunc_end6-_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hdf08962ef9a9f9bbE
	.cfi_endproc

	.section	".text._ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hd1618062bb9138c7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hd1618062bb9138c7E,@function
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hd1618062bb9138c7E:
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
	.size	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hd1618062bb9138c7E, .Lfunc_end7-_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hd1618062bb9138c7E
	.cfi_endproc

	.section	.text._ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E,@function
_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E:
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
	.size	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E, .Lfunc_end8-_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h005a19e5dbb45503E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h005a19e5dbb45503E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h005a19e5dbb45503E:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h005a19e5dbb45503E, .Lfunc_end9-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h005a19e5dbb45503E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h1d5fd9deec72f946E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h1d5fd9deec72f946E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h1d5fd9deec72f946E:
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
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$58, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$5, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB10_3
	movq	8(%r14), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB10_4
.LBB10_3:
	movq	$0, 24(%rsp)
.LBB10_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h1d5fd9deec72f946E, .Lfunc_end10-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h1d5fd9deec72f946E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E:
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
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB11_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB11_4
.LBB11_3:
	movq	$0, 24(%rsp)
.LBB11_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E, .Lfunc_end11-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc21810ada2b57af5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc21810ada2b57af5E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc21810ada2b57af5E:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc21810ada2b57af5E, .Lfunc_end12-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc21810ada2b57af5E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf839f7002fcc42e7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf839f7002fcc42e7E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf839f7002fcc42e7E:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf839f7002fcc42e7E, .Lfunc_end13-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf839f7002fcc42e7E
	.cfi_endproc

	.section	".text.unlikely._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h3c65422a30e4d140E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h3c65422a30e4d140E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h3c65422a30e4d140E:
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
	jb	.LBB14_10
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
	je	.LBB14_3
	movq	8(%r14), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB14_4
.LBB14_3:
	movq	$0, 24(%rsp)
.LBB14_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h06d720fe0a076ec8E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h3c65422a30e4d140E, .Lfunc_end14-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h3c65422a30e4d140E
	.cfi_endproc

	.section	".text._ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ec015d047489376E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ec015d047489376E,@function
_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ec015d047489376E:
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rsi
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
	je	.LBB15_38
	movq	120(%rsp), %rsi
	movq	168(%rsp), %r8
	leaq	(%r8,%rsi), %rax
	decq	%rax
	cmpq	%r13, %rax
	jae	.LBB15_59
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
	jmp	.LBB15_5
	.p2align	4, 0x90
.LBB15_3:
	xorl	%r14d, %r14d
.LBB15_4:
	addq	%rsi, %r8
	leaq	(%r8,%r12), %rax
	movq	%r8, 8(%rsp)
	cmpq	%r13, %rax
	jae	.LBB15_62
.LBB15_5:
	cmpq	$-1, %r14
	jne	.LBB15_6
	jmp	.LBB15_23
	.p2align	4, 0x90
.LBB15_12:
	addq	%rsi, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jae	.LBB15_61
.LBB15_6:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB15_12
	cmpq	%r14, %rdx
	movq	%r14, %rax
	cmovaq	%rdx, %rax
	leaq	(%rdi,%r8), %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB15_8:
	cmpq	%rsi, %rcx
	jae	.LBB15_14
	leaq	(%r8,%rcx), %rbp
	cmpq	%r13, %rbp
	jae	.LBB15_65
	leaq	1(%rcx), %rbp
	movzbl	(%r10,%rcx), %r9d
	cmpb	(%rbx,%rcx), %r9b
	movq	%rbp, %rcx
	je	.LBB15_8
	addq	48(%rsp), %r8
	addq	%rbp, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB15_6
	jmp	.LBB15_61
	.p2align	4, 0x90
.LBB15_14:
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB15_15:
	cmpq	%rax, %r14
	jae	.LBB15_3
	decq	%rax
	cmpq	%rsi, %rax
	jae	.LBB15_37
	leaq	(%rax,%r8), %rbx
	cmpq	%r13, %rbx
	jae	.LBB15_63
	movzbl	(%r10,%rax), %ecx
	cmpb	(%rdi,%rbx), %cl
	je	.LBB15_15
	addq	24(%rsp), %r8
	movq	32(%rsp), %r14
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB15_6
	jmp	.LBB15_61
	.p2align	4, 0x90
.LBB15_20:
	addq	%rsi, %r8
.LBB15_21:
	movq	%r8, %rcx
.LBB15_22:
	leaq	(%rcx,%r12), %rax
	movq	%rcx, %r8
	cmpq	%r13, %rax
	jae	.LBB15_61
.LBB15_23:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB15_20
	xorl	%eax, %eax
	movq	%r8, %rbp
	movq	72(%rsp), %rbx
	.p2align	4, 0x90
.LBB15_25:
	leaq	(%rdx,%rax), %rcx
	cmpq	%rsi, %rcx
	jae	.LBB15_28
	leaq	(%rdx,%rbp), %rcx
	cmpq	%r13, %rcx
	jae	.LBB15_64
	movzbl	(%rbx), %r14d
	incq	%rbx
	leaq	1(%rbp), %rcx
	incq	%rax
	cmpb	(%r15,%rbp), %r14b
	movq	%rcx, %rbp
	je	.LBB15_25
	jmp	.LBB15_22
	.p2align	4, 0x90
.LBB15_28:
	testb	$1, 7(%rsp)
	je	.LBB15_35
	movq	16(%rsp), %rax
	leaq	(%rax,%r8), %rbx
	movq	40(%rsp), %rax
	movq	%rdx, %rbp
	.p2align	4, 0x90
.LBB15_30:
	subq	$1, %rbp
	jb	.LBB15_34
	cmpq	%r13, %rbx
	jae	.LBB15_63
	movzbl	(%rax), %r14d
	decq	%rax
	leaq	-1(%rbx), %rcx
	cmpb	(%rdi,%rbx), %r14b
	movq	%rcx, %rbx
	je	.LBB15_30
	addq	24(%rsp), %r8
	jmp	.LBB15_21
	.p2align	4, 0x90
.LBB15_34:
	movq	$-1, %r14
	jmp	.LBB15_4
.LBB15_35:
	movq	$-1, %r14
	testq	%rdx, %rdx
	je	.LBB15_4
	movq	16(%rsp), %rax
.LBB15_37:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB15_38:
	xorl	%r8d, %r8d
	testl	$16711680, %ebx
	jne	.LBB15_62
	jmp	.LBB15_40
	.p2align	4, 0x90
.LBB15_39:
	addq	%rcx, %rdx
	movb	$1, %bl
.LBB15_40:
	testq	%rdx, %rdx
	je	.LBB15_44
.LBB15_41:
	cmpq	%rdx, %r13
	jbe	.LBB15_43
	cmpb	$-64, (%rdi,%rdx)
	jge	.LBB15_44
	jmp	.LBB15_67
	.p2align	4, 0x90
.LBB15_43:
	jne	.LBB15_67
.LBB15_44:
	cmpq	%r13, %rdx
	je	.LBB15_57
	movzbl	(%rdi,%rdx), %ecx
	testb	%cl, %cl
	js	.LBB15_47
	movl	%ecx, %eax
	testb	%bl, %bl
	jne	.LBB15_56
.LBB15_51:
	cmpl	$1114112, %eax
	je	.LBB15_62
	movl	$1, %ecx
	cmpl	$128, %eax
	jb	.LBB15_39
	movl	$2, %ecx
	cmpl	$2048, %eax
	jb	.LBB15_39
	cmpl	$65536, %eax
	movl	$4, %ecx
	sbbq	$0, %rcx
	jmp	.LBB15_39
	.p2align	4, 0x90
.LBB15_47:
	movl	%ecx, %eax
	andl	$31, %eax
	movzbl	1(%rdi,%rdx), %esi
	andl	$63, %esi
	cmpb	$-32, %cl
	jb	.LBB15_50
	movzbl	2(%rdi,%rdx), %ebp
	shll	$6, %esi
	andl	$63, %ebp
	orl	%esi, %ebp
	cmpb	$-16, %cl
	jb	.LBB15_55
	movzbl	3(%rdi,%rdx), %ecx
	andl	$7, %eax
	shll	$18, %eax
	shll	$6, %ebp
	andl	$63, %ecx
	orl	%ebp, %ecx
	orl	%ecx, %eax
	testb	%bl, %bl
	je	.LBB15_51
	jmp	.LBB15_56
.LBB15_50:
	shll	$6, %eax
	orl	%esi, %eax
	testb	%bl, %bl
	je	.LBB15_51
.LBB15_56:
	movq	%rbx, %rax
	jmp	.LBB15_58
.LBB15_55:
	shll	$12, %eax
	orl	%ebp, %eax
	testb	%bl, %bl
	je	.LBB15_51
	jmp	.LBB15_56
.LBB15_57:
	movq	%r13, %rdx
	movq	%rbx, %rax
	testb	%bl, %bl
	je	.LBB15_62
.LBB15_58:
	movq	%rax, %rbx
	xorb	$1, %bl
	movq	%rdx, %r8
	testq	%rdx, %rdx
	jne	.LBB15_41
	jmp	.LBB15_44
.LBB15_59:
	xorl	%r8d, %r8d
	jmp	.LBB15_62
.LBB15_61:
	movq	8(%rsp), %r8
.LBB15_62:
	addq	%r8, %rdi
	movl	$51, %eax
	subq	%r8, %rax
	movq	%rdi, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66e3500b3a4ddd09E(%rip), %rax
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
.LBB15_63:
	.cfi_def_cfa_offset 288
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rdx
	movq	%rbx, %rdi
	jmp	.LBB15_66
.LBB15_64:
	movq	%rdx, %rax
.LBB15_65:
	addq	%rax, %r8
	cmpq	%r8, %r13
	cmovaq	%r13, %r8
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rdx
	movq	%r8, %rdi
.LBB15_66:
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB15_67:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %r8
	movq	%r13, %rsi
	movq	%r13, %rcx
	callq	*_ZN4core3str16slice_error_fail17hf7d1bbf489898afdE@GOTPCREL(%rip)
	ud2
.Lfunc_end15:
	.size	_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ec015d047489376E, .Lfunc_end15-_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ec015d047489376E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5108b74af41fcb9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5108b74af41fcb9E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5108b74af41fcb9E:
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
	jne	.LBB16_2
.LBB16_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB16_29
.LBB16_2:
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
	jbe	.LBB16_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB16_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB16_8
.LBB16_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h103444952862af17E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E
.LBB16_29:
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
.LBB16_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB16_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB16_29
	jmp	.LBB16_8
.LBB16_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB16_8
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
.LBB16_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB16_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB16_1
	je	.LBB16_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB16_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB16_29
.LBB16_11:
	movl	$16, %eax
.LBB16_12:
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
	je	.LBB16_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB16_18
	.p2align	4, 0x90
.LBB16_24:
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
.LBB16_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB16_26
.LBB16_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB16_25
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
	jne	.LBB16_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB16_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB16_21
.LBB16_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB16_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB16_24
.LBB16_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB16_27
	jmp	.LBB16_29
.LBB16_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB16_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB16_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB16_29
.Lfunc_end16:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5108b74af41fcb9E, .Lfunc_end16-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5108b74af41fcb9E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5e0f4e8f3715e09E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5e0f4e8f3715e09E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5e0f4e8f3715e09E:
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
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc16f3637809f73e8E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E
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
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5e0f4e8f3715e09E, .Lfunc_end17-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5e0f4e8f3715e09E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h103444952862af17E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h103444952862af17E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h103444952862af17E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end18:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h103444952862af17E, .Lfunc_end18-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h103444952862af17E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc16f3637809f73e8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc16f3637809f73e8E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc16f3637809f73e8E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end19:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc16f3637809f73e8E, .Lfunc_end19-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc16f3637809f73e8E
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI20_0:
	.zero	16,128
	.section	".text._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E,@function
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E:
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
	movdqa	.LCPI20_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB20_7
.LBB20_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB20_1:
	testb	$1, %dil
	je	.LBB20_6
	addq	$15, %rax
	jb	.LBB20_7
	cmpq	%rdx, %rax
	jae	.LBB20_7
	leaq	1(%rax), %rcx
	jmp	.LBB20_5
.LBB20_7:
	cmpq	$16, %rdx
	jae	.LBB20_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB20_10
.LBB20_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB20_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB20_11
	xorl	%r13d, %r13d
	jmp	.LBB20_15
	.p2align	4, 0x90
.LBB20_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB20_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB20_12
.LBB20_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB20_28
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %rbp
	addq	$-16, %rbp
	.p2align	4, 0x90
.LBB20_17:
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
	jne	.LBB20_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB20_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB20_20
.LBB20_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB20_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB20_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB20_24
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
	je	.LBB20_27
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
	jmp	.LBB20_17
	.p2align	4, 0x90
.LBB20_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB20_28
.LBB20_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB20_13
.LBB20_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB20_13:
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
.LBB20_29:
	.cfi_def_cfa_offset 96
.Ltmp2:
	movq	%rax, %rbx
.Ltmp3:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hddf86e9b6eaf8ddeE
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB20_31:
.Ltmp5:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end20:
	.size	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E, .Lfunc_end20-_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E
	.cfi_endproc
	.section	".gcc_except_table._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h1b946c6da20c0e37E","a",@progbits
	.p2align	2
GCC_except_table20:
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
	.uleb128 .Lfunc_end20-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI21_0:
	.zero	16,119
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
	movabsq	$-9082233880362909, %r14
	movabsq	$-1224071258925803617, %r15
	movq	%rdi, 144(%rsp)
	movq	24(%rdi), %r12
	leaq	64(%r12), %rax
	movq	%rax, 24(%rsp)
	leaq	160(%r12), %rax
	movq	%rax, 128(%rsp)
	leaq	472(%r12), %r13
	leaq	616(%r12), %rax
	movq	%rax, 8(%rsp)
	movq	560(%r12), %rax
	movq	584(%r12), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI21_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %rsi
.LBB21_1:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebp
	.p2align	4, 0x90
.LBB21_2:
	testw	%bp, %bp
	je	.LBB21_3
	bsfw	%bp, %di
	movzwl	%di, %ebx
	leal	-1(%rbp), %edx
	andl	%ebp, %edx
	addq	%rsi, %rbx
	andq	%rax, %rbx
	shlq	$4, %rbx
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	%edx, %ebp
	cmpq	%r14, -16(%rdi)
	jne	.LBB21_2
	jmp	.LBB21_13
	.p2align	4, 0x90
.LBB21_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB21_5
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB21_1
.LBB21_13:
	movq	%r13, %rdx
	addq	$-8, %rdi
.LBB21_39:
	movq	144(%rsp), %rbp
	movq	600(%r12), %r15
	movq	(%rdi), %rbx
	shlq	$5, %rbx
	leaq	(%r15,%rbx), %r8
	movl	(%rbp), %r13d
	movl	4(%rbp), %eax
	movl	%eax, 16(%rsp)
	movl	8(%rbp), %eax
	movq	%rax, 136(%rsp)
	movl	12(%rbp), %eax
	movq	%rax, 320(%rsp)
	xorl	%r14d, %r14d
	movq	24(%rsp), %rdi
	movq	128(%rsp), %rsi
	movl	%r13d, %ecx
	xorl	%r9d, %r9d
	callq	*_ZN8bevy_ecs5world10entity_ref28remove_bundle_from_archetype17h10ead60c12071e22E@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.LBB21_139
	cmpl	%r13d, %edx
	je	.LBB21_139
	movq	%r13, 312(%rsp)
	movl	%edx, 172(%rsp)
	cmpq	$0, 24(%r15,%rbx)
	je	.LBB21_42
	movq	16(%r15,%rbx), %rax
	movl	16(%rbp), %ecx
	movl	%ecx, 24(%rsp)
	movl	20(%rbp), %ebx
	movq	(%rax), %r13
	movq	544(%r12), %r15
	movq	680(%r12), %rbp
	cmpq	%r13, %rbp
	movq	%r15, 368(%rsp)
	jbe	.LBB21_61
	movq	672(%r12), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	cmpq	$0, (%rax,%rcx)
	je	.LBB21_61
	movq	8(%rax,%rcx), %rax
	leaq	(%rax,%rax,8), %r15
	shlq	$3, %r15
	addq	624(%r12), %r15
	jmp	.LBB21_56
.LBB21_61:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 176(%rsp)
	movq	$8, 192(%rsp)
	movdqu	%xmm0, 200(%rsp)
	movq	$0, 216(%rsp)
	movq	$8, 224(%rsp)
	movdqu	%xmm0, 232(%rsp)
	movq	632(%r12), %r14
	cmpq	%r13, %rbp
	ja	.LBB21_62
	leaq	1(%r13), %rax
	movq	%rax, %rdx
	subq	%rbp, %rdx
	jbe	.LBB21_74
	leaq	664(%r12), %rdi
	movq	(%rdi), %rax
	subq	%rbp, %rax
	cmpq	%rdx, %rax
	jae	.LBB21_72
.Ltmp25:
	movq	%rbp, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h3c65422a30e4d140E
.Ltmp26:
	movq	680(%r12), %rax
	jmp	.LBB21_69
.LBB21_72:
	movq	%rbp, %rax
	testq	%rdx, %rdx
	je	.LBB21_73
.LBB21_69:
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	672(%r12), %rcx
	movq	%r13, %rdx
	notq	%rdx
	addq	%rbp, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB21_70:
	movq	$0, (%rcx)
	decq	%rsi
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jne	.LBB21_70
	subq	%rsi, %rax
.LBB21_74:
	movq	%rax, 680(%r12)
	movq	%rax, %rbp
.LBB21_62:
	cmpq	%r13, %rbp
	jbe	.LBB21_63
	movq	672(%r12), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	$1, (%rax,%rcx)
	movq	%r14, 8(%rax,%rcx)
	movq	656(%r12), %rsi
	cmpq	640(%r12), %rsi
	jne	.LBB21_78
.Ltmp29:
	leaq	640(%r12), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E
.Ltmp30:
	movq	656(%r12), %rsi
.LBB21_78:
	movq	648(%r12), %rax
	movq	%r13, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 656(%r12)
	movq	240(%rsp), %rax
	movq	%rax, 96(%rsp)
	movdqa	176(%rsp), %xmm0
	movdqa	192(%rsp), %xmm1
	movdqa	208(%rsp), %xmm2
	movdqa	224(%rsp), %xmm3
	movdqa	%xmm3, 80(%rsp)
	movdqa	%xmm2, 64(%rsp)
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	632(%r12), %rsi
	cmpq	616(%r12), %rsi
	jne	.LBB21_81
.Ltmp35:
	movq	8(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf839f7002fcc42e7E
.Ltmp36:
	movq	632(%r12), %rsi
.LBB21_81:
	movq	624(%r12), %rax
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
	movq	%rsi, 632(%r12)
	leaq	(%r14,%r14,8), %rcx
	leaq	(%rax,%rcx,8), %r15
.LBB21_56:
	movq	64(%r15), %rbp
	movq	%rbp, 328(%rsp)
	movq	_ZN12tracing_core8metadata9MAX_LEVEL17h8d3e53ff7a70666aE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	decq	%rax
	movq	%rbp, %r14
	cmpq	$5, %rax
	movl	%ebx, 8(%rsp)
	jb	.LBB21_88
	movq	_ZN8bevy_ecs5event15Events$LT$E$GT$4send8CALLSITE17ha727a9b26948551aE@GOTPCREL(%rip), %rdx
	movzbl	16(%rdx), %eax
	movq	%rbp, %r14
	testb	%al, %al
	je	.LBB21_88
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	je	.LBB21_87
	cmpl	$2, %ecx
	jne	.LBB21_86
	movb	$2, %al
.LBB21_87:
	movq	8(%rdx), %rdi
	movzbl	%al, %esi
	movl	%ebx, %r14d
	movq	%rdx, %rbx
	callq	*_ZN7tracing15__macro_support12__is_enabled17h5320f88931eb1b27E@GOTPCREL(%rip)
	movq	%rbx, %rcx
	movl	%r14d, %ebx
	movq	%rbp, %r14
	testb	%al, %al
	je	.LBB21_88
	movq	8(%rcx), %rdi
	movq	_ZN12tracing_core8metadata8Metadata6fields17hdd1499e20ab2e58eE@GOTPCREL(%rip), %r14
	movq	%rcx, %rbx
	callq	*%r14
	leaq	176(%rsp), %rdi
	movq	%rax, %rsi
	callq	*_ZN12tracing_core5field8FieldSet4iter17hedb7f6c5d488fc77E@GOTPCREL(%rip)
	movq	8(%rbx), %rdi
	callq	*%r14
	movq	%rax, %r14
	leaq	32(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	*_ZN84_$LT$tracing_core..field..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he5a4758f9fd49b38E@GOTPCREL(%rip)
	cmpq	$0, 32(%rsp)
	je	.LBB21_140
	movq	64(%rsp), %rax
	movq	%rax, 304(%rsp)
	movups	32(%rsp), %xmm0
	movdqu	48(%rsp), %xmm1
	movdqa	%xmm1, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	leaq	328(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	_ZN72_$LT$bevy_ecs..event..EventId$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9ec015d047489376E(%rip), %rax
	movq	%rax, 160(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$0, 32(%rsp)
	leaq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 344(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rax
	movq	%rax, 352(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	$1, 184(%rsp)
	movq	%r14, 192(%rsp)
	movq	8(%rbx), %rdi
	leaq	176(%rsp), %rsi
	callq	*_ZN12tracing_core5event5Event8dispatch17h0e68ab1004e4f264E@GOTPCREL(%rip)
	movq	328(%rsp), %r14
	movl	8(%rsp), %ebx
.LBB21_88:
	movq	56(%r15), %rsi
	cmpq	40(%r15), %rsi
	jne	.LBB21_90
	leaq	40(%r15), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc21810ada2b57af5E
	movq	56(%r15), %rsi
	movq	64(%r15), %rbp
.LBB21_90:
	movq	48(%r15), %rax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	%r14, (%rax,%rcx)
	movl	24(%rsp), %edx
	movl	%edx, 8(%rax,%rcx)
	movl	%ebx, 12(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 56(%r15)
	incq	%rbp
	movq	%rbp, 64(%r15)
	imulq	$88, %r13, %rax
	movq	368(%rsp), %rcx
	cmpb	$0, 72(%rcx,%rax)
	je	.LBB21_91
	movq	128(%rsp), %rdi
	movq	%r13, %rsi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets7get_mut17h20839cfc52e1489dE@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB21_100
	movq	%rax, %rdi
	movl	24(%rsp), %esi
	movl	%ebx, %edx
	callq	*_ZN8bevy_ecs7storage10sparse_set18ComponentSparseSet17remove_and_forget17hfe4ac799ee4a968aE@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB21_103
	movq	304(%r12), %r14
	movq	312(%r12), %rsi
	movq	312(%rsp), %rdi
	movq	152(%r12), %r13
	cmpq	%rdi, %r13
	jbe	.LBB21_106
.LBB21_108:
	movq	%rsi, 136(%rsp)
	movss	(%rax), %xmm0
	movss	%xmm0, 128(%rsp)
	movq	144(%r12), %r15
	imulq	$152, %rdi, %rbx
	leaq	(%r15,%rbx), %rsi
	leaq	152(%rsp), %rdi
	movl	16(%rsp), %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h48d0b04d06725db9E@GOTPCREL(%rip)
	cmpl	$1, 156(%rsp)
	jne	.LBB21_112
	movl	160(%rsp), %edx
	movl	164(%rsp), %ebp
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	movl	%ebp, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17hb7da5c77bc66bcb4E@GOTPCREL(%rip)
	cmpl	$0, 32(%rsp)
	je	.LBB21_110
	movl	36(%rsp), %eax
	movq	44(%rsp), %rcx
	movl	%eax, 32(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 36(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
.LBB21_112:
	movl	172(%rsp), %eax
	cmpq	%rax, %r13
	jbe	.LBB21_113
	movq	%r13, 16(%rsp)
	movl	152(%rsp), %r13d
	movl	148(%r15,%rbx), %edi
	imulq	$152, %rax, %rax
	leaq	(%r15,%rax), %rbp
	movl	148(%r15,%rax), %esi
	cmpl	%esi, %edi
	jne	.LBB21_115
	leaq	336(%rsp), %rdi
	movq	%rbp, %rsi
	movl	24(%rsp), %edx
	movl	8(%rsp), %ebx
	movl	%ebx, %ecx
	movl	%r13d, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17h5c92eb6c7a1b02d4E@GOTPCREL(%rip)
	jmp	.LBB21_138
.LBB21_115:
	cmpl	%esi, %edi
	movl	8(%rsp), %ebx
	jbe	.LBB21_116
	cmpq	%rdi, 136(%rsp)
	jb	.LBB21_124
	je	.LBB21_122
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%r14,%rax,8), %rax
	leaq	(%rsi,%rsi,8), %rcx
	leaq	(%r14,%rcx,8), %rcx
	jmp	.LBB21_130
.LBB21_91:
	movq	312(%r12), %rsi
	movq	136(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB21_92
	movq	304(%r12), %r14
	leaq	(%rdi,%rdi,8), %rax
	cmpq	%r13, 40(%r14,%rax,8)
	jbe	.LBB21_98
	movq	32(%r14,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB21_98
	shlq	$4, %r13
	cmpq	$0, (%rcx,%r13)
	je	.LBB21_98
	leaq	(%r14,%rax,8), %rax
	movq	(%rax), %rdx
	movq	8(%rcx,%r13), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rax
	imulq	320(%rsp), %rax
	addq	40(%rdx,%rcx), %rax
	movq	312(%rsp), %rdi
	movq	152(%r12), %r13
	cmpq	%rdi, %r13
	ja	.LBB21_108
.LBB21_106:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.28(%rip), %rdx
	jmp	.LBB21_107
.LBB21_116:
	movl	%r13d, %edx
	movq	136(%rsp), %r13
	cmpq	%rsi, %r13
	jb	.LBB21_126
	cmpl	%edi, %esi
	jbe	.LBB21_127
	cmpq	%rsi, %r13
	je	.LBB21_128
	leaq	(%rsi,%rsi,8), %rax
	leaq	(%r14,%rax,8), %rcx
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%r14,%rax,8), %rax
	movl	%edx, %r13d
.LBB21_130:
	leaq	272(%rsp), %rdi
	movq	%rax, %rsi
	movl	%r13d, %edx
	callq	*_ZN8bevy_ecs7storage5table5Table36move_to_and_forget_missing_unchecked17h2bd643611fd70a7fE@GOTPCREL(%rip)
	movl	272(%rsp), %r8d
	leaq	176(%rsp), %rdi
	movq	%rbp, %rsi
	movl	24(%rsp), %edx
	movl	%ebx, %ecx
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17h5c92eb6c7a1b02d4E@GOTPCREL(%rip)
	cmpl	$1, 276(%rsp)
	jne	.LBB21_136
	movl	280(%rsp), %edx
	movl	284(%rsp), %ebx
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	movl	%ebx, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17hb7da5c77bc66bcb4E@GOTPCREL(%rip)
	cmpl	$0, 32(%rsp)
	je	.LBB21_132
	movl	36(%rsp), %r14d
	movl	40(%rsp), %ebp
	movl	44(%rsp), %eax
	movl	%r14d, 32(%rsp)
	movl	%ebp, 36(%rsp)
	movl	%eax, 40(%rsp)
	movq	320(%rsp), %rax
	movl	%eax, 44(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	movq	16(%rsp), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB21_141
	imulq	$152, %r14, %rax
	movq	136(%r15,%rax), %rsi
	cmpq	%rbp, %rsi
	movl	8(%rsp), %ebx
	jbe	.LBB21_142
	addq	%r15, %rax
	addq	$120, %rax
	movq	8(%rax), %rax
	leaq	(,%rbp,2), %rcx
	addq	%rbp, %rcx
	movl	%r13d, 8(%rax,%rcx,4)
.LBB21_136:
	movups	176(%rsp), %xmm0
	movaps	%xmm0, 336(%rsp)
.LBB21_138:
	movaps	336(%rsp), %xmm0
	movq	144(%rsp), %rax
	movups	%xmm0, (%rax)
	movaps	336(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h980fb62450cb6001E@GOTPCREL(%rip)
	movl	$1, %r14d
	movss	128(%rsp), %xmm0
.LBB21_139:
	movl	%r14d, 32(%rsp)
	movss	%xmm0, 36(%rsp)
	leaq	32(%rsp), %rax
	#APP
	#NO_APP
	movl	32(%rsp), %eax
	movss	36(%rsp), %xmm0
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
.LBB21_5:
	.cfi_def_cfa_offset 432
	cmpq	$0, 568(%r12)
	je	.LBB21_6
.LBB21_7:
	leaq	592(%r12), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 272(%rsp)
	movq	$8, 280(%rsp)
	movq	$0, 288(%rsp)
	movq	472(%r12), %rax
	movq	496(%r12), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %rsi
.LBB21_8:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebp
	.p2align	4, 0x90
.LBB21_9:
	testw	%bp, %bp
	je	.LBB21_10
	bsfw	%bp, %di
	movzwl	%di, %ebx
	leal	-1(%rbp), %edx
	andl	%ebp, %edx
	addq	%rsi, %rbx
	andq	%rax, %rbx
	shlq	$4, %rbx
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	%edx, %ebp
	cmpq	%r14, -16(%rdi)
	jne	.LBB21_9
	jmp	.LBB21_28
.LBB21_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB21_14
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB21_8
.LBB21_28:
	addq	$-8, %rdi
.LBB21_29:
	movq	(%rdi), %rbx
.Ltmp16:
	leaq	272(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h998097ea495a4388E
.Ltmp17:
	movq	280(%rsp), %rax
	movq	288(%rsp), %rcx
	movq	%rbx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 288(%rsp)
	movq	608(%r12), %rbx
	movq	%rcx, 48(%rsp)
	movups	272(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rsi
	leaq	176(%rsp), %rdi
	leaq	32(%rsp), %r8
	movl	$14, %edx
	movq	%r13, %rcx
	movq	%rbx, %r9
	callq	*_ZN8bevy_ecs6bundle17initialize_bundle17h62ffe30a1c230c72E@GOTPCREL(%rip)
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	608(%r12), %rsi
	cmpq	592(%r12), %rsi
	jne	.LBB21_33
.Ltmp22:
	movq	16(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h1d5fd9deec72f946E
.Ltmp23:
	movq	608(%r12), %rsi
.LBB21_33:
	movq	600(%r12), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 608(%r12)
	movq	560(%r12), %rcx
	movq	584(%r12), %rax
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB21_36
	movl	$16, %esi
	.p2align	4, 0x90
.LBB21_35:
	addq	%rsi, %r15
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB21_35
.LBB21_36:
	movq	%rbx, %r8
	bsfw	%dx, %dx
	movzwl	%dx, %ebp
	addq	%r15, %rbp
	andq	%rcx, %rbp
	movzbl	(%rax,%rbp), %ebx
	testb	%bl, %bl
	js	.LBB21_38
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebp
	movzbl	(%rax,%rbp), %ebx
.LBB21_38:
	movq	%r13, %rdx
	leaq	-16(%rbp), %rsi
	andq	%rcx, %rsi
	movb	$119, (%rax,%rbp)
	movb	$119, 16(%rsi,%rax)
	shlq	$4, %rbp
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	subq	%rcx, 568(%r12)
	subq	%rbp, %rdi
	negq	%rbp
	movq	%r14, -16(%rax,%rbp)
	movq	%r8, -8(%rdi)
	addq	$-8, %rdi
	incq	576(%r12)
	jmp	.LBB21_39
.LBB21_73:
	movq	%rbp, %rax
	jmp	.LBB21_74
.LBB21_86:
	movq	_ZN8bevy_ecs5event15Events$LT$E$GT$4send8CALLSITE17ha727a9b26948551aE@GOTPCREL(%rip), %rdi
	movq	%rdx, %r14
	callq	*_ZN12tracing_core8callsite15DefaultCallsite8register17hbf498403702f2c39E@GOTPCREL(%rip)
	movq	%r14, %rdx
	movq	%rbp, %r14
	testb	%al, %al
	jne	.LBB21_87
	jmp	.LBB21_88
.LBB21_6:
	leaq	560(%r12), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5108b74af41fcb9E
	movdqa	.LCPI21_0(%rip), %xmm3
	jmp	.LBB21_7
.LBB21_14:
	cmpq	$0, 480(%r12)
	jne	.LBB21_16
.Ltmp6:
	movq	%r13, %rdi
	movq	%r13, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5e0f4e8f3715e09E
.Ltmp7:
.LBB21_16:
	movq	552(%r12), %rbx
	movq	$0, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$14, 48(%rsp)
	movq	$4, 64(%rsp)
	movq	$4, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	%r14, 88(%rsp)
	movq	$0, 96(%rsp)
	movw	$256, 104(%rsp)
.Ltmp8:
	leaq	176(%rsp), %rdi
	leaq	32(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17h11d31e40fdda5eb1E@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 248(%rsp)
	je	.LBB21_18
.Ltmp10:
	leaq	176(%rsp), %rsi
	movq	128(%rsp), %rdi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17ha317b927f1d4eb83E@GOTPCREL(%rip)
.Ltmp11:
.LBB21_18:
	leaq	536(%r12), %rdi
	movq	256(%rsp), %rax
	movq	%rax, 112(%rsp)
	movups	240(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	movdqu	224(%rsp), %xmm3
	movdqa	%xmm3, 80(%rsp)
	movdqa	%xmm2, 64(%rsp)
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB21_21
.Ltmp13:
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h005a19e5dbb45503E
.Ltmp14:
	movq	552(%r12), %rax
.LBB21_21:
	movq	544(%r12), %rcx
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
	movq	%rax, 552(%r12)
	movq	472(%r12), %rcx
	movq	496(%r12), %rax
	movq	%rcx, %rdx
	andq	%r15, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB21_24
	movl	$16, %edi
.LBB21_23:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB21_23
.LBB21_24:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB21_26
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB21_26:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$119, (%rax,%rsi)
	movb	$119, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r12)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r14, -16(%rax,%rsi)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r12)
	jmp	.LBB21_29
.LBB21_113:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rdx
	movq	%rax, %rdi
.LBB21_107:
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB21_63:
.Ltmp27:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
.Ltmp28:
	ud2
.LBB21_92:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB21_122:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rdx
	jmp	.LBB21_123
.LBB21_127:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB21_128:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.44(%rip), %rdx
.LBB21_123:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB21_141:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rdx
	movq	%r14, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB21_142:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rdx
	movq	%rbp, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB21_42:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rdx
	jmp	.LBB21_43
.LBB21_98:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	jmp	.LBB21_43
.LBB21_100:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rdx
	jmp	.LBB21_43
.LBB21_103:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	jmp	.LBB21_43
.LBB21_110:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %rdx
	jmp	.LBB21_43
.LBB21_124:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.40(%rip), %rdx
	jmp	.LBB21_125
.LBB21_126:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.42(%rip), %rdx
.LBB21_125:
	movl	$35, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB21_132:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rdx
.LBB21_43:
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB21_140:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	movl	$34, %esi
	callq	*_ZN4core6option13expect_failed17haf3b1256d16103a3E@GOTPCREL(%rip)
	ud2
.LBB21_45:
.Ltmp15:
	movq	%rax, %rbx
	jmp	.LBB21_47
.LBB21_46:
.Ltmp12:
	movq	%rax, %rbx
	leaq	176(%rsp), %rbp
.LBB21_47:
	movq	%rbp, %rdi
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17hdf08962ef9a9f9bbE
	jmp	.LBB21_51
.LBB21_48:
.Ltmp24:
	movq	%rax, %rbx
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h7311b6d2155e902cE
	jmp	.LBB21_49
.LBB21_50:
.Ltmp18:
	movq	%rax, %rbx
.LBB21_51:
.Ltmp19:
	leaq	272(%rsp), %rdi
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hd1618062bb9138c7E
.Ltmp20:
	jmp	.LBB21_49
.LBB21_52:
.Ltmp21:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.LBB21_82:
.Ltmp37:
	movq	%rax, %rbx
.Ltmp38:
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE
.Ltmp39:
	jmp	.LBB21_49
.LBB21_83:
.Ltmp40:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.LBB21_84:
.Ltmp31:
	movq	%rax, %rbx
.Ltmp32:
	leaq	176(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$bevy_ecs..event..Events$LT$bevy_ecs..removal_detection..RemovedComponentEntity$GT$$GT$17h88ce1da1041e58abE
.Ltmp33:
.LBB21_49:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB21_85:
.Ltmp34:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end21:
	.size	entity_remove, .Lfunc_end21-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2
GCC_except_table21:
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
	.uleb128 .Lfunc_end21-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.0,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"bevy_ecs::removal_detection::RemovedComponentEntity"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 51

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 14

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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/78aa6df/crates/bevy_ecs/src/event.rs"
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
	.quad	_ZN4core3ptr41drop_in_place$LT$core..fmt..Arguments$GT$17h3a350dbf86e16d9fE
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/78aa6df/crates/bevy_ecs/src/world/entity_ref.rs"
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/78aa6df/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.31
	.asciz	"_\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/78aa6df/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.36
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 35

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/78aa6df/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 99

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"c\000\000\000\000\000\000\000J\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.41,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"c\000\000\000\000\000\000\000K\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.42,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"c\000\000\000\000\000\000\000M\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.43,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.43,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.43:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.43, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.44,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.44,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.44:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.44, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

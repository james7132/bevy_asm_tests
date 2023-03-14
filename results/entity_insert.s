	.text
	.file	"entity_insert.842cf7a2-cgu.0"
	.section	".text._ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h500311a15c3dd299E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h500311a15c3dd299E,@function
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h500311a15c3dd299E:
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
	.size	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h500311a15c3dd299E, .Lfunc_end0-_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h500311a15c3dd299E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17ha6b479cbe6232caeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17ha6b479cbe6232caeE,@function
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17ha6b479cbe6232caeE:
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
	.size	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17ha6b479cbe6232caeE, .Lfunc_end1-_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17ha6b479cbe6232caeE
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h0a34b291c6f3e935E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h0a34b291c6f3e935E,@function
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h0a34b291c6f3e935E:
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
	.size	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h0a34b291c6f3e935E, .Lfunc_end2-_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h0a34b291c6f3e935E
	.cfi_endproc

	.section	".text._ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h1262955942744f0cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h1262955942744f0cE,@function
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h1262955942744f0cE:
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
	.size	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h1262955942744f0cE, .Lfunc_end3-_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h1262955942744f0cE
	.cfi_endproc

	.section	.text._ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E,@function
_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E:
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
	.size	_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E, .Lfunc_end4-_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17ha35e2746f859731bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17ha35e2746f859731bE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17ha35e2746f859731bE:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17ha35e2746f859731bE, .Lfunc_end5-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17ha35e2746f859731bE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc86b75720d93e7bbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc86b75720d93e7bbE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc86b75720d93e7bbE:
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
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB6_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB6_4
.LBB6_3:
	movq	$0, 24(%rsp)
.LBB6_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc86b75720d93e7bbE, .Lfunc_end6-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc86b75720d93e7bbE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd8716a5902eb80aeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd8716a5902eb80aeE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd8716a5902eb80aeE:
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
	movabsq	$104811045873349726, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setb	%dl
	imulq	$88, %rbx, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB7_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 24(%rsp)
.LBB7_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h0ff81a68b67a3889E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd8716a5902eb80aeE, .Lfunc_end7-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd8716a5902eb80aeE
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e3027ef8139613dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e3027ef8139613dE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e3027ef8139613dE:
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
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he15166ac2097744eE(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE
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
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e3027ef8139613dE, .Lfunc_end8-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e3027ef8139613dE
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc35ca858139c5a70E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc35ca858139c5a70E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc35ca858139c5a70E:
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
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8dbfbeb69ac411ccE(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE
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
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc35ca858139c5a70E, .Lfunc_end9-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc35ca858139c5a70E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8dbfbeb69ac411ccE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8dbfbeb69ac411ccE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8dbfbeb69ac411ccE:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end10:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8dbfbeb69ac411ccE, .Lfunc_end10-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h8dbfbeb69ac411ccE
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he15166ac2097744eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he15166ac2097744eE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he15166ac2097744eE:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end11:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he15166ac2097744eE, .Lfunc_end11-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17he15166ac2097744eE
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI12_0:
	.zero	16,128
	.section	".text._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE,@function
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE:
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
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h500311a15c3dd299E
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB12_31:
.Ltmp5:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE, .Lfunc_end12-_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE
	.cfi_endproc
	.section	".gcc_except_table._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h50aff8e7f9c1146fE","a",@progbits
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
	.zero	16,40
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
	movabsq	$5785573030624101213, %r15
	movabsq	$1590782448016698281, %r14
	movq	%rdi, 264(%rsp)
	movq	24(%rdi), %r13
	movl	760(%r13), %edi
	.cfi_escape 0x2e, 0x00
	callq	*_ZN8bevy_ecs9component4Tick3new17h4d4fa6fa107f5c4dE@GOTPCREL(%rip)
	movl	%eax, %r12d
	leaq	472(%r13), %rax
	movq	%rax, 8(%rsp)
	leaq	160(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	560(%r13), %rax
	movq	584(%r13), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI13_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %rsi
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
.LBB13_39:
	movq	264(%rsp), %rbp
	movq	(%rdi), %rsi
	shlq	$5, %rsi
	addq	600(%r13), %rsi
	leaq	64(%r13), %rcx
	movl	(%rbp), %ebx
	.cfi_escape 0x2e, 0x10
	leaq	176(%rsp), %rdi
	movq	%r13, %rdx
	movq	8(%rsp), %r8
	movq	56(%rsp), %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	*_ZN8bevy_ecs6bundle10BundleInfo19get_bundle_inserter17hbd4813f6de2e2c1cE@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	4(%rbp), %r14d
	movq	224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB13_55
	movl	16(%rbp), %ebx
	movl	20(%rbp), %r12d
	cmpl	$1, %eax
	jne	.LBB13_58
	movq	184(%rsp), %r15
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17hf14ad5116fe861ceE@GOTPCREL(%rip)
	cmpl	$1, 68(%rsp)
	jne	.LBB13_42
	movl	72(%rsp), %edx
	movl	76(%rsp), %r13d
	movq	192(%rsp), %rbp
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r13d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h1d6cfce9ad70fb8cE@GOTPCREL(%rip)
	cmpl	$0, 80(%rsp)
	je	.LBB13_84
	movl	84(%rsp), %eax
	movq	92(%rsp), %rcx
	movl	%eax, 80(%rsp)
	movl	%r14d, 84(%rsp)
	movq	%rcx, 88(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17hc3021b7be68d77b7E@GOTPCREL(%rip)
	jmp	.LBB13_43
.LBB13_55:
	movq	184(%rsp), %rcx
	movq	200(%rsp), %rdx
	movq	(%rdx), %rax
	cmpq	64(%rcx), %rax
	jae	.LBB13_57
	movq	56(%rcx), %rcx
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_57
	movl	8(%rbp), %r15d
	movl	12(%rbp), %ebp
	movq	208(%rsp), %rcx
	movl	248(%rsp), %edi
	movss	20(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	16(%rdx), %rdx
	movq	(%rdx), %rdx
	cmpq	%rdx, 40(%rcx)
	jbe	.LBB13_98
	movq	32(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_98
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB13_98
	movl	%edi, 8(%rsp)
	movq	(%rcx), %r13
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	leaq	(%r12,%r13), %rdi
	cmpb	$0, (%rax)
	je	.LBB13_100
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h47a13cbaf2649629E@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB13_102
.LBB13_58:
	movq	184(%rsp), %rbp
	.cfi_escape 0x2e, 0x00
	leaq	272(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17hf14ad5116fe861ceE@GOTPCREL(%rip)
	cmpl	$1, 276(%rsp)
	movq	%rbp, 8(%rsp)
	jne	.LBB13_59
	movl	280(%rsp), %edx
	movl	284(%rsp), %r13d
	movq	192(%rsp), %rbp
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r13d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h1d6cfce9ad70fb8cE@GOTPCREL(%rip)
	cmpl	$0, 80(%rsp)
	je	.LBB13_63
	movl	84(%rsp), %eax
	movq	92(%rsp), %rcx
	movl	%eax, 80(%rsp)
	movl	%r14d, 84(%rsp)
	movq	%rcx, 88(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17hc3021b7be68d77b7E@GOTPCREL(%rip)
	jmp	.LBB13_60
.LBB13_42:
	movq	192(%rsp), %rbp
.LBB13_43:
	movq	232(%rsp), %rsi
	movl	64(%rsp), %r13d
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movl	%r13d, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17h788268afada45036E@GOTPCREL(%rip)
	movups	24(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17hc3021b7be68d77b7E@GOTPCREL(%rip)
	movq	200(%rsp), %rdx
	movq	(%rdx), %rax
	cmpq	64(%r15), %rax
	jae	.LBB13_45
	movq	56(%r15), %rcx
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_45
	movq	208(%rsp), %rcx
	movl	248(%rsp), %r14d
	movss	20(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
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
	movq	(%rcx), %rbp
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %rdi
	cmpb	$0, (%rax)
	je	.LBB13_92
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%r13, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h47a13cbaf2649629E@GOTPCREL(%rip)
	jmp	.LBB13_94
.LBB13_59:
	movq	192(%rsp), %rbp
.LBB13_60:
	movl	272(%rsp), %edx
	movq	208(%rsp), %rsi
	movq	240(%rsp), %r13
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rdi
	movl	%edx, 48(%rsp)
	movq	%r13, %rcx
	callq	*_ZN8bevy_ecs7storage5table5Table26move_to_superset_unchecked17h60b4501758eabc2eE@GOTPCREL(%rip)
	movq	232(%rsp), %r14
	movl	64(%rsp), %r8d
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movq	%r8, 56(%rsp)
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17h788268afada45036E@GOTPCREL(%rip)
	movups	24(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17hc3021b7be68d77b7E@GOTPCREL(%rip)
	cmpl	$1, 68(%rsp)
	movq	8(%rsp), %rbx
	jne	.LBB13_67
	movl	72(%rsp), %edx
	movl	76(%rsp), %ecx
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdi
	movq	%rbp, 288(%rsp)
	movq	%rbp, %rsi
	movl	%ecx, %r15d
	callq	*_ZN8bevy_ecs6entity8Entities3get17h1d6cfce9ad70fb8cE@GOTPCREL(%rip)
	cmpl	$0, 80(%rsp)
	je	.LBB13_62
	movl	84(%rsp), %eax
	movl	88(%rsp), %r12d
	movl	92(%rsp), %ecx
	movq	%rbx, %rbp
	cmpl	%eax, 144(%rbx)
	je	.LBB13_72
	imulq	$152, %rax, %rbp
	addq	176(%rsp), %rbp
	cmpl	%eax, 144(%r14)
	cmoveq	%r14, %rbp
.LBB13_72:
	movl	%eax, 80(%rsp)
	movl	%r12d, 84(%rsp)
	movl	%ecx, 88(%rsp)
	movl	48(%rsp), %r14d
	movl	%r14d, 92(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	288(%rsp), %rdi
	movl	%r15d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17hc3021b7be68d77b7E@GOTPCREL(%rip)
	movq	136(%rbp), %rsi
	cmpq	%r12, %rsi
	jbe	.LBB13_104
	movq	128(%rbp), %rax
	leaq	(%r12,%r12,2), %rcx
	movl	%r14d, 8(%rax,%rcx,4)
.LBB13_67:
	movq	200(%rsp), %rcx
	movq	(%rcx), %rax
	cmpq	64(%rbx), %rax
	jae	.LBB13_69
	movq	56(%rbx), %rdx
	shlq	$5, %rax
	movq	8(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.LBB13_69
	movl	248(%rsp), %r14d
	movss	20(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%r13)
	jbe	.LBB13_77
	movq	32(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB13_77
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB13_77
	movq	(%r13), %r15
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$5, %rbp
	leaq	(%r15,%rbp), %rdi
	cmpb	$0, (%rax)
	movq	56(%rsp), %rbx
	je	.LBB13_80
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h47a13cbaf2649629E@GOTPCREL(%rip)
	jmp	.LBB13_82
.LBB13_100:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%rbp, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13,%r12), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%rbp,4)
.LBB13_102:
	movq	80(%r13,%r12), %rax
	movl	%ecx, (%rax,%rbp,4)
	jmp	.LBB13_103
.LBB13_92:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r13, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
.LBB13_94:
	movq	80(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
	jmp	.LBB13_83
.LBB13_80:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%rbx, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%rbp), %rax
	movl	%r14d, (%rax,%rbx,4)
.LBB13_82:
	movq	80(%r15,%rbp), %rax
	movl	%r14d, (%rax,%rbx,4)
.LBB13_83:
	movl	24(%rsp), %ebx
	movl	28(%rsp), %r14d
	movl	32(%rsp), %r15d
	movl	36(%rsp), %ebp
.LBB13_103:
	movq	264(%rsp), %rax
	movl	%ebx, (%rax)
	movl	%r14d, 4(%rax)
	movl	%r15d, 8(%rax)
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
	cmpq	$0, 568(%r13)
	je	.LBB13_6
.LBB13_7:
	leaq	592(%r13), %r9
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	472(%r13), %rax
	movq	496(%r13), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %rsi
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
	jmp	.LBB13_28
.LBB13_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB13_14
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB13_8
.LBB13_28:
	movq	%r9, %rbp
	addq	$-8, %rdi
.LBB13_29:
	movq	(%rdi), %rbx
.Ltmp16:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc86b75720d93e7bbE
.Ltmp17:
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rbx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	movq	608(%r13), %rbx
	movq	%rcx, 192(%rsp)
	movups	24(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rsi
	leaq	80(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$16, %edx
	movq	8(%rsp), %rcx
	movq	%rbx, %r9
	callq	*_ZN8bevy_ecs6bundle17initialize_bundle17h7ad67b5858a45913E@GOTPCREL(%rip)
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqa	%xmm1, 192(%rsp)
	movdqa	%xmm0, 176(%rsp)
	movq	608(%r13), %rsi
	cmpq	592(%r13), %rsi
	jne	.LBB13_33
.Ltmp22:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17ha35e2746f859731bE
.Ltmp23:
	movq	608(%r13), %rsi
.LBB13_33:
	movq	600(%r13), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 608(%r13)
	movq	560(%r13), %rcx
	movq	584(%r13), %rax
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB13_36
	movl	$16, %esi
	.p2align	4, 0x90
.LBB13_35:
	addq	%rsi, %r15
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB13_35
.LBB13_36:
	movq	%rbx, %rbp
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r15, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB13_38
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB13_38:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$40, (%rax,%rdx)
	movb	$40, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	subq	%rcx, 568(%r13)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	576(%r13)
	jmp	.LBB13_39
.LBB13_6:
	leaq	560(%r13), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hc35ca858139c5a70E
	movdqa	.LCPI13_0(%rip), %xmm3
	jmp	.LBB13_7
.LBB13_14:
	movq	%r9, %rbp
	cmpq	$0, 480(%r13)
	jne	.LBB13_16
.Ltmp6:
	.cfi_escape 0x2e, 0x00
	movq	8(%rsp), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e3027ef8139613dE
.Ltmp7:
.LBB13_16:
	movq	552(%r13), %rbx
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
	movq	%rdx, 48(%rsp)
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17hde5e6654331a86a0E@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 152(%rsp)
	je	.LBB13_18
.Ltmp10:
	.cfi_escape 0x2e, 0x00
	leaq	80(%rsp), %rsi
	movq	56(%rsp), %rdi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17h5dbe20c04e76b564E@GOTPCREL(%rip)
.Ltmp11:
.LBB13_18:
	leaq	536(%r13), %rdi
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
	jne	.LBB13_21
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd8716a5902eb80aeE
.Ltmp14:
	movq	552(%r13), %rax
.LBB13_21:
	movq	544(%r13), %rcx
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
	movq	%rax, 552(%r13)
	movq	472(%r13), %rcx
	movq	496(%r13), %rax
	movq	%rcx, %rdx
	andq	%r15, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB13_24
	movl	$16, %edi
.LBB13_23:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB13_23
.LBB13_24:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB13_26
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB13_26:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$40, (%rax,%rsi)
	movb	$40, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r13)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r14, -16(%rax,%rsi)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r13)
	jmp	.LBB13_29
.LBB13_104:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%r12, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB13_57:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.11(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_98:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB13_78
.LBB13_45:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_90:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB13_78
.LBB13_69:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_77:
	.cfi_escape 0x2e, 0x00
.LBB13_78:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_84:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_63:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_62:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB13_47:
.Ltmp15:
	movq	%rax, %rbx
	jmp	.LBB13_49
.LBB13_48:
.Ltmp12:
	movq	%rax, %rbx
	leaq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
.LBB13_49:
	.cfi_escape 0x2e, 0x00
	movq	48(%rsp), %rdi
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h0a34b291c6f3e935E
	jmp	.LBB13_53
.LBB13_50:
.Ltmp24:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17ha6b479cbe6232caeE
	jmp	.LBB13_51
.LBB13_52:
.Ltmp18:
	movq	%rax, %rbx
.LBB13_53:
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17h1262955942744f0cE
.Ltmp20:
.LBB13_51:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB13_54:
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
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 43

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.2,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/e77eb00/crates/bevy_ecs/src/bundle.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 92

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000\214\001\000\000E\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.4,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/e77eb00/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"_\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.6,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000\207\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.7,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000h\002\000\000N\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000S\002\000\000N\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.9,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000A\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.10,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000.\002\000\000N\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.11,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"\\\000\000\000\000\000\000\000\037\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

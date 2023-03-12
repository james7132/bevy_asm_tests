	.text
	.file	"world_insert_or_spawn_batch.9a39e4e2-cgu.0"
	.section	".text._ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE,@function
_ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_1
	movq	24(%rdi), %rdi
	shlq	$4, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_1:
	retq
.Lfunc_end0:
	.size	_ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE, .Lfunc_end0-_ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE
	.cfi_endproc

	.section	".text._ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h60f615da8f0997a5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h60f615da8f0997a5E,@function
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h60f615da8f0997a5E:
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
	je	.LBB1_5
	movq	(%r13), %r15
	cmpq	$-1, %r15
	je	.LBB1_5
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	negq	%rbx
	negq	%r15
	movq	$-16, %rbp
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_4:
	subq	%r12, %rbx
	leaq	(%r15,%rbp), %rax
	incq	%rax
	incq	%rbp
	cmpq	$-15, %rax
	je	.LBB1_5
.LBB1_3:
	movq	24(%r13), %rax
	cmpb	$-128, 16(%rax,%rbp)
	jne	.LBB1_4
	movq	(%r13), %rcx
	andq	%rbp, %rcx
	movb	$-1, 16(%rax,%rbp)
	movb	$-1, 16(%rcx,%rax)
	movq	24(%r13), %rdi
	addq	%rbx, %rdi
	callq	*%r14
	decq	16(%r13)
	jmp	.LBB1_4
.LBB1_5:
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
.Lfunc_end1:
	.size	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h60f615da8f0997a5E, .Lfunc_end1-_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h60f615da8f0997a5E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h81c9583f18ce917dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h81c9583f18ce917dE,@function
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h81c9583f18ce917dE:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_1
	movq	16(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_1:
	retq
.Lfunc_end2:
	.size	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h81c9583f18ce917dE, .Lfunc_end2-_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h81c9583f18ce917dE
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2ec1e3c18ea5b25bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2ec1e3c18ea5b25bE,@function
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2ec1e3c18ea5b25bE:
	.cfi_startproc
	cmpq	$0, (%rdi)
	je	.LBB3_2
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_2
	movq	16(%rdi), %rdi
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_2:
	retq
.Lfunc_end3:
	.size	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2ec1e3c18ea5b25bE, .Lfunc_end3-_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2ec1e3c18ea5b25bE
	.cfi_endproc

	.section	".text._ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hf6a232c06349ced1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hf6a232c06349ced1E,@function
_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hf6a232c06349ced1E:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_1
	movq	8(%rdi), %rdi
	shlq	$3, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB4_1:
	retq
.Lfunc_end4:
	.size	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hf6a232c06349ced1E, .Lfunc_end4-_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hf6a232c06349ced1E
	.cfi_endproc

	.section	".text._ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb949d5fa91328960E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb949d5fa91328960E,@function
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb949d5fa91328960E:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB5_1
	movq	8(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_1:
	retq
.Lfunc_end5:
	.size	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb949d5fa91328960E, .Lfunc_end5-_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb949d5fa91328960E
	.cfi_endproc

	.section	.text._ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E,@function
_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E:
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
	je	.LBB6_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB6_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB6_11
.LBB6_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB6_6
.LBB6_7:
	testq	%r14, %r14
	je	.LBB6_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB6_4
.LBB6_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB6_12
.LBB6_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB6_6:
	movl	$1, %eax
.LBB6_12:
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB6_11
	jmp	.LBB6_4
.Lfunc_end6:
	.size	_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E, .Lfunc_end6-_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0718feae317c3daeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0718feae317c3daeE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0718feae317c3daeE:
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
	shlq	$2, %rdx
	testq	%rax, %rax
	je	.LBB7_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 24(%rsp)
.LBB7_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0718feae317c3daeE, .Lfunc_end7-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0718feae317c3daeE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE:
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
	je	.LBB8_10
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
	je	.LBB8_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB8_4
.LBB8_3:
	movq	$0, 24(%rsp)
.LBB8_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB8_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB8_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_5:
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
.LBB8_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB8_9
.LBB8_10:
	callq	*_ZN5alloc7raw_vec17capacity_overflow17h9ca165cb5cc612acE@GOTPCREL(%rip)
	ud2
.LBB8_9:
	callq	*_ZN5alloc5alloc18handle_alloc_error17h90b67e0f2dc01338E@GOTPCREL(%rip)
	ud2
.Lfunc_end8:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE, .Lfunc_end8-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E:
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
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB9_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	$0, 24(%rsp)
.LBB9_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E, .Lfunc_end9-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf037a1bf712ab0c9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf037a1bf712ab0c9E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf037a1bf712ab0c9E:
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
	callq	_ZN5alloc7raw_vec11finish_grow17h6439e778ab281ec0E
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
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf037a1bf712ab0c9E, .Lfunc_end10-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf037a1bf712ab0c9E
	.cfi_endproc

	.section	.text._ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E,@function
_ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E:
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm1, 12(%rsp)
	movss	%xmm0, 4(%rsp)
	movl	%ecx, %ebp
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	24(%rsi), %r14
	movq	%r14, %rdi
	movl	%edx, %esi
	movl	%ecx, %edx
	callq	*_ZN8bevy_ecs7storage5table5Table8allocate17hbeca91f1515a30c4E@GOTPCREL(%rip)
	movl	%eax, %r15d
	movq	(%rbx), %rsi
	movq	%r13, 48(%rsp)
	movq	%r13, %rdi
	movl	%r12d, %edx
	movl	%ebp, 8(%rsp)
	movl	%ebp, %ecx
	movl	%eax, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17hc7d98d67535ac875E@GOTPCREL(%rip)
	movq	16(%rbx), %rbp
	movq	%rbx, 40(%rsp)
	movl	40(%rbx), %edi
	movss	4(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, 40(%r14)
	jbe	.LBB11_7
	movq	32(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB11_7
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_7
	movq	(%r14), %r12
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	movl	%edi, 4(%rsp)
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %ebx
	movl	%r15d, %r15d
	movq	(%r12,%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	40(%r12,%r13), %rdi
	leaq	16(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%r13), %rax
	movl	%ebx, (%rax,%r15,4)
	movq	80(%r12,%r13), %rax
	movl	%ebx, (%rax,%r15,4)
	movss	12(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%r14)
	jbe	.LBB11_7
	movq	32(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB11_7
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_7
	movq	(%r14), %rbp
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movl	4(%rsp), %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %r14d
	movq	(%rbp,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	40(%rbp,%rbx), %rdi
	leaq	16(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movq	80(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movq	40(%rsp), %rax
	movq	8(%rax), %rdi
	movq	48(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdx
	movl	8(%rsp), %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	addq	$56, %rsp
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
.LBB11_7:
	.cfi_def_cfa_offset 112
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	_ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E, .Lfunc_end11-_ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E
	.cfi_endproc

	.section	.text._ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E,@function
_ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E:
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	48(%rsi), %rax
	testq	%rax, %rax
	movq	%rdi, 88(%rsp)
	movss	%xmm1, 52(%rsp)
	je	.LBB12_7
	movl	%ecx, %r13d
	movl	%edx, %ebp
	movss	%xmm0, 32(%rsp)
	cmpl	$1, %eax
	jne	.LBB12_10
	movl	%ebp, 24(%rsp)
	movq	8(%rbx), %r12
	movl	4(%r8), %ebp
	leaq	72(%rsp), %rdi
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h04ceb012628527fbE@GOTPCREL(%rip)
	cmpl	$1, 76(%rsp)
	jne	.LBB12_3
	movl	80(%rsp), %edx
	movl	84(%rsp), %r15d
	movq	16(%rbx), %r14
	movq	%rsp, %rdi
	movq	%r14, %rsi
	movl	%r15d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB12_42
	movl	4(%rsp), %eax
	movq	12(%rsp), %rcx
	movl	%eax, (%rsp)
	movl	%ebp, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsp, %rdx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	jmp	.LBB12_4
.LBB12_7:
	movq	8(%rbx), %rax
	movq	24(%rbx), %rbp
	movq	(%rbp), %rcx
	cmpq	64(%rax), %rcx
	jae	.LBB12_9
	movq	56(%rax), %rsi
	shlq	$5, %rcx
	movq	8(%rsi,%rcx), %rax
	testq	%rax, %rax
	je	.LBB12_9
	movq	%rcx, 64(%rsp)
	movq	32(%rbx), %r14
	movl	12(%r8), %r15d
	movl	72(%rbx), %ebx
	movss	%xmm0, (%rsp)
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%r14)
	jbe	.LBB12_29
	movq	32(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB12_29
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB12_29
	movq	%rbp, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%r8, 40(%rsp)
	movq	(%r14), %r13
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	leaq	(%r12,%r13), %rbp
	cmpb	$0, (%rax)
	movl	%ebx, 56(%rsp)
	je	.LBB12_62
	movq	%rsp, %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	jmp	.LBB12_64
.LBB12_10:
	movl	%r13d, 24(%rsp)
	movq	8(%rbx), %r14
	movl	4(%r8), %r15d
	leaq	112(%rsp), %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	*_ZN8bevy_ecs9archetype9Archetype11swap_remove17h04ceb012628527fbE@GOTPCREL(%rip)
	cmpl	$1, 116(%rsp)
	jne	.LBB12_11
	movl	%ebp, %r12d
	movq	%r14, %rbp
	movl	120(%rsp), %edx
	movl	124(%rsp), %r14d
	movq	16(%rbx), %r13
	movq	%rsp, %rdi
	movq	%r13, %rsi
	movl	%r14d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB12_15
	movl	4(%rsp), %eax
	movq	12(%rsp), %rcx
	movl	%eax, (%rsp)
	movl	%r15d, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsp, %rdx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	movq	%rbp, %r14
	movl	%r12d, %ebp
	jmp	.LBB12_12
.LBB12_3:
	movq	16(%rbx), %r14
.LBB12_4:
	movq	56(%rbx), %rsi
	movl	72(%rsp), %r15d
	leaq	96(%rsp), %rdi
	movl	24(%rsp), %edx
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17hc7d98d67535ac875E@GOTPCREL(%rip)
	movups	96(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdx
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	movq	24(%rbx), %rdi
	movq	(%rdi), %rcx
	cmpq	64(%r12), %rcx
	jae	.LBB12_6
	movq	56(%r12), %rsi
	shlq	$5, %rcx
	movq	8(%rsi,%rcx), %rax
	testq	%rax, %rax
	je	.LBB12_6
	movq	%rcx, 24(%rsp)
	movq	32(%rbx), %r12
	movl	72(%rbx), %ebp
	movss	32(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%rdi), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%r12)
	jbe	.LBB12_29
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB12_29
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB12_29
	movq	%rdi, 64(%rsp)
	movq	%rsi, 32(%rsp)
	movq	(%r12), %r13
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r14
	shlq	$5, %r14
	leaq	(%r14,%r13), %rbx
	cmpb	$0, (%rax)
	movl	%ebp, 40(%rsp)
	je	.LBB12_49
	movq	%rsp, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	jmp	.LBB12_51
.LBB12_11:
	movq	16(%rbx), %r13
.LBB12_12:
	movl	112(%rsp), %edx
	movq	32(%rbx), %rsi
	movq	64(%rbx), %r12
	leaq	72(%rsp), %rdi
	movl	%edx, 40(%rsp)
	movq	%r12, %rcx
	callq	*_ZN8bevy_ecs7storage5table5Table26move_to_superset_unchecked17h2f1a8886f4101602E@GOTPCREL(%rip)
	movq	56(%rbx), %r15
	movl	72(%rsp), %r8d
	leaq	96(%rsp), %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	movl	24(%rsp), %ebp
	movl	%ebp, %ecx
	movq	%r8, 64(%rsp)
	callq	*_ZN8bevy_ecs9archetype9Archetype8allocate17hc7d98d67535ac875E@GOTPCREL(%rip)
	movups	96(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	cmpl	$1, 76(%rsp)
	jne	.LBB12_19
	movl	80(%rsp), %edx
	movl	84(%rsp), %ecx
	movq	%rsp, %rdi
	movq	%r13, 24(%rsp)
	movq	%r13, %rsi
	movl	%ecx, 56(%rsp)
	callq	*_ZN8bevy_ecs6entity8Entities3get17h45270d353afa6d06E@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB12_14
	movl	4(%rsp), %eax
	movl	8(%rsp), %r13d
	movl	12(%rsp), %ecx
	movq	%r14, %rbp
	movq	%r14, 128(%rsp)
	cmpl	%eax, 144(%r14)
	je	.LBB12_24
	imulq	$152, %rax, %r14
	addq	(%rbx), %r14
	cmpl	%eax, 144(%r15)
	cmoveq	%r15, %r14
.LBB12_24:
	movl	%eax, (%rsp)
	movl	%r13d, 4(%rsp)
	movl	%ecx, 8(%rsp)
	movl	40(%rsp), %ebp
	movl	%ebp, 12(%rsp)
	movq	%rsp, %rdx
	movq	24(%rsp), %rdi
	movl	56(%rsp), %esi
	callq	*_ZN8bevy_ecs6entity8Entities3set17h7eb8378bc27766afE@GOTPCREL(%rip)
	movq	136(%r14), %rsi
	cmpq	%r13, %rsi
	jbe	.LBB12_71
	movq	128(%r14), %rax
	leaq	(,%r13,2), %rcx
	addq	%r13, %rcx
	movl	%ebp, 8(%rax,%rcx,4)
	movq	128(%rsp), %r14
.LBB12_19:
	movq	24(%rbx), %rbp
	movq	(%rbp), %r15
	cmpq	64(%r14), %r15
	jae	.LBB12_21
	movq	56(%r14), %rdi
	shlq	$5, %r15
	movq	8(%rdi,%r15), %rax
	testq	%rax, %rax
	je	.LBB12_21
	movl	72(%rbx), %esi
	movss	32(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%r12)
	jbe	.LBB12_29
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB12_29
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB12_29
	movq	%rbp, 40(%rsp)
	movq	%rdi, 56(%rsp)
	movq	%r12, 24(%rsp)
	movq	(%r12), %r12
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r13
	shlq	$5, %r13
	leaq	(%r12,%r13), %rbx
	cmpb	$0, (%rax)
	movl	%esi, 32(%rsp)
	je	.LBB12_31
	movq	%rsp, %rdx
	movq	%rbx, %rdi
	movq	64(%rsp), %r14
	movq	%r14, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	movl	32(%rsp), %edi
	movl	%edi, %ebp
	jmp	.LBB12_33
.LBB12_62:
	movl	%ebx, %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %ebx
	movq	(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	40(%rbp), %rdi
	movq	%rsp, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13,%r12), %rax
	movl	%ebx, (%rax,%r15,4)
.LBB12_64:
	movq	80(%r13,%r12), %rax
	movl	%ebx, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%r14)
	movq	32(%rsp), %rdx
	jbe	.LBB12_29
	movq	32(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB12_29
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB12_29
	movq	64(%rsp), %rsi
	addq	%rsi, %rdx
	addq	$8, %rdx
	movq	(%r14), %r14
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%r14,%rbp), %rbx
	movq	(%rdx), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_68
	movq	%rsp, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	movl	56(%rsp), %ebx
	jmp	.LBB12_70
.LBB12_49:
	movl	%ebp, %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %ebp
	movq	(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	40(%rbx), %rdi
	movq	%rsp, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13,%r14), %rax
	movl	%ebp, (%rax,%r15,4)
.LBB12_51:
	movq	80(%r13,%r14), %rax
	movl	%ebp, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%r12)
	movq	32(%rsp), %rsi
	jbe	.LBB12_29
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB12_29
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB12_29
	movq	24(%rsp), %rdx
	addq	%rsi, %rdx
	addq	$8, %rdx
	movq	(%r12), %r14
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%r14,%rbx), %rbp
	movq	(%rdx), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_55
	movq	%rsp, %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	movl	40(%rsp), %ebp
	jmp	.LBB12_57
.LBB12_68:
	movl	56(%rsp), %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movq	(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	40(%rbx), %rdi
	movl	%eax, %ebx
	movq	%rsp, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14,%rbp), %rax
	movl	%ebx, (%rax,%r15,4)
.LBB12_70:
	movq	80(%r14,%rbp), %rax
	movl	%ebx, (%rax,%r15,4)
	movq	40(%rsp), %rax
	movups	(%rax), %xmm0
	jmp	.LBB12_41
.LBB12_55:
	movl	40(%rsp), %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movq	(%rbp), %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	addq	40(%rbp), %rdi
	movl	%eax, %ebp
	movq	%rsp, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14,%rbx), %rax
	movl	%ebp, (%rax,%r15,4)
.LBB12_57:
	movq	80(%r14,%rbx), %rax
	movl	%ebp, (%rax,%r15,4)
	jmp	.LBB12_40
.LBB12_31:
	movl	32(%rsp), %edi
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %ebp
	movq	(%rbx), %rdx
	movq	%rdx, %rdi
	movq	64(%rsp), %r14
	imulq	%r14, %rdi
	addq	40(%rbx), %rdi
	movq	%rsp, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movl	32(%rsp), %edi
	movq	56(%r12,%r13), %rax
	movl	%ebp, (%rax,%r14,4)
.LBB12_33:
	movq	80(%r12,%r13), %rax
	movl	%ebp, (%rax,%r14,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	40(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rsp), %rsi
	cmpq	%rax, 40(%rsi)
	jbe	.LBB12_29
	movq	32(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB12_29
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB12_29
	movq	56(%rsp), %rdx
	addq	%r15, %rdx
	addq	$8, %rdx
	movq	(%rsi), %r15
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%r15,%rbx), %rbp
	movq	(%rdx), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_37
	movq	%rsp, %rdx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*_ZN8bevy_ecs7storage8blob_vec7BlobVec17replace_unchecked17h05783eccdd739c62E@GOTPCREL(%rip)
	movl	32(%rsp), %r12d
	jmp	.LBB12_39
.LBB12_37:
	callq	*_ZN8bevy_ecs9component4Tick3new17hfbc50b018c861338E@GOTPCREL(%rip)
	movl	%eax, %r12d
	movq	(%rbp), %rdx
	movq	%r14, %rdi
	imulq	%rdx, %rdi
	addq	40(%rbp), %rdi
	movq	%rsp, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%rbx), %rax
	movl	%r12d, (%rax,%r14,4)
.LBB12_39:
	movq	80(%r15,%rbx), %rax
	movl	%r12d, (%rax,%r14,4)
.LBB12_40:
	movups	96(%rsp), %xmm0
.LBB12_41:
	movq	88(%rsp), %rax
	movups	%xmm0, (%rax)
	addq	$136, %rsp
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
.LBB12_71:
	.cfi_def_cfa_offset 192
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %rdx
	movq	%r13, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.LBB12_29:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB12_9:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB12_6:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB12_21:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB12_42:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB12_15:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.LBB12_14:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h23218d8841fc41bfE@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	_ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E, .Lfunc_end12-_ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E:
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
	jne	.LBB13_2
.LBB13_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB13_29
.LBB13_2:
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
	jbe	.LBB13_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB13_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB13_8
.LBB13_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc80068bbf36fd0eeE(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E
.LBB13_29:
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
.LBB13_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB13_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB13_29
	jmp	.LBB13_8
.LBB13_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB13_8
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
.LBB13_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB13_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB13_1
	je	.LBB13_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB13_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB13_29
.LBB13_11:
	movl	$16, %eax
.LBB13_12:
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
	je	.LBB13_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB13_18
	.p2align	4, 0x90
.LBB13_24:
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
.LBB13_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB13_26
.LBB13_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB13_25
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
	jne	.LBB13_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB13_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB13_21
.LBB13_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB13_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB13_24
.LBB13_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB13_27
	jmp	.LBB13_29
.LBB13_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB13_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB13_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB13_29
.Lfunc_end13:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E, .Lfunc_end13-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E
	.cfi_endproc

	.section	".text.unlikely._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf68977fb350d328E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf68977fb350d328E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf68977fb350d328E:
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
	jne	.LBB14_2
.LBB14_1:
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB14_29
.LBB14_2:
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
	jbe	.LBB14_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB14_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB14_8
.LBB14_16:
	movabsq	$-9223372036854775807, %r12
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h603566a5400f2bf1E(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E
.LBB14_29:
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
.LBB14_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB14_5
	movl	$1, %edi
	callq	*_ZN9hashbrown3raw11Fallibility17capacity_overflow17h521bc1fab550650bE@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB14_29
	jmp	.LBB14_8
.LBB14_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB14_8
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
.LBB14_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB14_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB14_1
	je	.LBB14_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB14_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*_ZN9hashbrown3raw11Fallibility9alloc_err17h90404b65f0a33043E@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB14_29
.LBB14_11:
	movl	$16, %eax
.LBB14_12:
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
	je	.LBB14_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB14_18
	.p2align	4, 0x90
.LBB14_24:
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
.LBB14_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB14_26
.LBB14_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB14_25
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
	jne	.LBB14_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB14_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB14_21
.LBB14_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB14_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB14_24
.LBB14_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB14_27
	jmp	.LBB14_29
.LBB14_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB14_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB14_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB14_29
.Lfunc_end14:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf68977fb350d328E, .Lfunc_end14-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf68977fb350d328E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h603566a5400f2bf1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h603566a5400f2bf1E,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h603566a5400f2bf1E:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end15:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h603566a5400f2bf1E, .Lfunc_end15-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h603566a5400f2bf1E
	.cfi_endproc

	.section	".text._ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc80068bbf36fd0eeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc80068bbf36fd0eeE,@function
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc80068bbf36fd0eeE:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end16:
	.size	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc80068bbf36fd0eeE, .Lfunc_end16-_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc80068bbf36fd0eeE
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI17_0:
	.zero	16,128
	.section	".text._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E,@function
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E:
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
	movdqa	.LCPI17_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB17_1
	.p2align	4, 0x90
.LBB17_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB17_7
.LBB17_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB17_1:
	testb	$1, %dil
	je	.LBB17_6
	addq	$15, %rax
	jb	.LBB17_7
	cmpq	%rdx, %rax
	jae	.LBB17_7
	leaq	1(%rax), %rcx
	jmp	.LBB17_5
.LBB17_7:
	cmpq	$16, %rdx
	jae	.LBB17_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB17_10
.LBB17_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB17_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB17_11
	xorl	%r13d, %r13d
	jmp	.LBB17_15
	.p2align	4, 0x90
.LBB17_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB17_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB17_12
.LBB17_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB17_28
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %rbp
	addq	$-16, %rbp
	.p2align	4, 0x90
.LBB17_17:
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
	jne	.LBB17_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB17_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB17_20
.LBB17_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB17_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB17_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB17_24
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
	je	.LBB17_27
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
	jmp	.LBB17_17
	.p2align	4, 0x90
.LBB17_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB17_28
.LBB17_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB17_13
.LBB17_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB17_13:
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
.LBB17_29:
	.cfi_def_cfa_offset 96
.Ltmp2:
	movq	%rax, %rbx
.Ltmp3:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h60f615da8f0997a5E
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB17_31:
.Ltmp5:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end17:
	.size	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E, .Lfunc_end17-_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E
	.cfi_endproc
	.section	".gcc_except_table._ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17h9323b2c6cac12479E","a",@progbits
	.p2align	2
GCC_except_table17:
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
	.uleb128 .Lfunc_end17-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI18_0:
	.zero	16,76
.LCPI18_1:
	.zero	16,32
.LCPI18_2:
	.zero	16,87
	.section	.text.world_insert_or_spawn_batch,"ax",@progbits
	.globl	world_insert_or_spawn_batch
	.p2align	4, 0x90
	.type	world_insert_or_spawn_batch,@function
world_insert_or_spawn_batch:
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
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	shlq	$4, %rdx
	addq	%rcx, %rdx
	movq	%rcx, 432(%rsp)
	movq	%rax, 408(%rsp)
	movq	%rcx, 416(%rsp)
	movq	%rdx, 424(%rsp)
.Ltmp6:
	callq	*_ZN8bevy_ecs5world5World5flush17h4af338bf5efb9f52E@GOTPCREL(%rip)
.Ltmp7:
	movabsq	$-7421876850357018864, %r15
	movabsq	$6901137645843984080, %r12
	movups	408(%rsp), %xmm0
	movdqu	424(%rsp), %xmm1
	movdqa	%xmm1, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	movl	760(%r14), %eax
	movl	%eax, 28(%rsp)
	leaq	560(%r14), %rdi
	leaq	472(%r14), %rax
	movq	%rax, 32(%rsp)
	leaq	160(%r14), %rax
	movq	%rax, 152(%rsp)
	movq	560(%r14), %r9
	movq	584(%r14), %rbx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rsi
.LBB18_2:
	andq	%r9, %rsi
	movdqu	(%rbx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB18_3:
	testw	%bp, %bp
	je	.LBB18_4
	bsfw	%bp, %cx
	movzwl	%cx, %edx
	leal	-1(%rbp), %eax
	andl	%ebp, %eax
	addq	%rsi, %rdx
	andq	%r9, %rdx
	shlq	$4, %rdx
	movq	%rbx, %rcx
	subq	%rdx, %rcx
	movl	%eax, %ebp
	cmpq	%r12, -16(%rcx)
	jne	.LBB18_3
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_4:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB18_6
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_2
.LBB18_14:
	addq	$-8, %rcx
.LBB18_15:
	movq	(%rcx), %rsi
	shlq	$5, %rsi
	addq	600(%r14), %rsi
	leaq	64(%r14), %rcx
.Ltmp44:
	movl	28(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	224(%rsp), %rdi
	movq	%rsi, 320(%rsp)
	movq	%r14, %rdx
	movq	%rcx, 312(%rsp)
	movq	32(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*_ZN8bevy_ecs6bundle10BundleInfo18get_bundle_spawner17h5d0e64ac34c5237bE@GOTPCREL(%rip)
.Ltmp45:
	movups	224(%rsp), %xmm0
	movups	240(%rsp), %xmm1
	movdqu	256(%rsp), %xmm2
	movdqa	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$3, 112(%rsp)
	movq	$0, 200(%rsp)
	movq	$4, 208(%rsp)
	movq	$0, 216(%rsp)
	movdqa	368(%rsp), %xmm0
	movdqa	384(%rsp), %xmm1
	movdqa	%xmm1, 176(%rsp)
	movdqa	%xmm0, 160(%rsp)
	movq	176(%rsp), %rax
	movq	168(%rsp), %r13
	movq	%rax, 40(%rsp)
	cmpq	%rax, %r13
	je	.LBB18_17
	movq	%r14, 16(%rsp)
	addq	$16, %r13
	movl	$4, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB18_84
.LBB18_98:
	movq	208(%rsp), %rbx
	movq	216(%rsp), %rbp
.LBB18_99:
	movl	%r14d, (%rbx,%rbp,8)
	movl	%r12d, 4(%rbx,%rbp,8)
	incq	%rbp
	movq	%rbp, 216(%rsp)
.LBB18_100:
	leaq	-16(%r13), %rax
	addq	$16, %r13
	addq	$16, %rax
	cmpq	40(%rsp), %rax
	je	.LBB18_18
.LBB18_84:
	movl	-16(%r13), %r14d
	movl	-12(%r13), %r12d
	movss	-8(%r13), %xmm0
	movss	%xmm0, 48(%rsp)
	movd	-4(%r13), %xmm0
	movd	%xmm0, 56(%rsp)
.Ltmp47:
	leaq	64(%rsp), %rdi
	callq	*_ZN8bevy_ecs5world5World21insert_or_spawn_batch13SpawnOrInsert8entities17h37004e736a5b4824E@GOTPCREL(%rip)
.Ltmp48:
.Ltmp49:
	leaq	344(%rsp), %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities28alloc_at_without_replacement17h744a46b8aba7fcefE@GOTPCREL(%rip)
.Ltmp50:
	movl	344(%rsp), %eax
	testq	%rax, %rax
	je	.LBB18_91
	cmpl	$1, %eax
	jne	.LBB18_96
	cmpl	$3, 112(%rsp)
	jne	.LBB18_101
.Ltmp57:
	leaq	224(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	_ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E
.Ltmp58:
	jmp	.LBB18_100
	.p2align	4, 0x90
.LBB18_91:
	movl	348(%rsp), %r15d
	cmpl	$3, 112(%rsp)
	je	.LBB18_93
	cmpl	144(%rsp), %r15d
	jne	.LBB18_93
	movl	%r15d, 224(%rsp)
	leaq	352(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	228(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp63:
	leaq	328(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	leaq	224(%rsp), %r8
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	_ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E
.Ltmp64:
	jmp	.LBB18_100
	.p2align	4, 0x90
.LBB18_96:
	cmpq	200(%rsp), %rbp
	jne	.LBB18_99
.Ltmp51:
	leaq	200(%rsp), %rdi
	movq	%rbp, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h0718feae317c3daeE
.Ltmp52:
	jmp	.LBB18_98
.LBB18_101:
.Ltmp53:
	movl	28(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	224(%rsp), %rdi
	movq	320(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	312(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*_ZN8bevy_ecs6bundle10BundleInfo18get_bundle_spawner17h5d0e64ac34c5237bE@GOTPCREL(%rip)
.Ltmp54:
.Ltmp55:
	leaq	328(%rsp), %rdi
	leaq	224(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	_ZN8bevy_ecs6bundle13BundleSpawner18spawn_non_existent17ha5c24c2f60d349e5E
.Ltmp56:
	movdqu	224(%rsp), %xmm0
	movdqu	240(%rsp), %xmm1
	movdqu	256(%rsp), %xmm2
	movdqa	%xmm0, 64(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movq	$3, 112(%rsp)
	jmp	.LBB18_100
.LBB18_93:
.Ltmp59:
	movl	28(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	leaq	224(%rsp), %rdi
	movq	320(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	312(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*_ZN8bevy_ecs6bundle10BundleInfo19get_bundle_inserter17hb537ff4afe48151aE@GOTPCREL(%rip)
.Ltmp60:
	movl	%r15d, 328(%rsp)
	leaq	352(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	332(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp61:
	leaq	440(%rsp), %rdi
	leaq	224(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	leaq	328(%rsp), %r8
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	_ZN8bevy_ecs6bundle14BundleInserter6insert17hb537d9e56b73ee24E
.Ltmp62:
	movups	224(%rsp), %xmm0
	movdqu	240(%rsp), %xmm1
	movdqu	256(%rsp), %xmm2
	movdqu	272(%rsp), %xmm3
	movaps	%xmm0, 64(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movdqa	%xmm3, 112(%rsp)
	movdqu	288(%rsp), %xmm0
	movdqa	%xmm0, 128(%rsp)
	movl	%r15d, 144(%rsp)
	jmp	.LBB18_100
.LBB18_17:
	xorl	%ebp, %ebp
.LBB18_18:
	movq	160(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB18_20
	movq	184(%rsp), %rdi
	shlq	$4, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_20:
	movq	200(%rsp), %rsi
	testq	%rbp, %rbp
	je	.LBB18_21
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB18_114
	testq	%rsi, %rsi
	jne	.LBB18_113
	jmp	.LBB18_114
.LBB18_21:
	testq	%rsi, %rsi
	je	.LBB18_114
	movq	208(%rsp), %rdi
.LBB18_113:
	shlq	$3, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_114:
	addq	$456, %rsp
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
.LBB18_6:
	.cfi_def_cfa_offset 512
	cmpq	$0, 568(%r14)
	jne	.LBB18_8
.Ltmp9:
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf68977fb350d328E
.Ltmp10:
.LBB18_8:
	movabsq	$4712843379359938633, %r13
	movq	%r14, %rcx
	movabsq	$924686997703114213, %r14
	leaq	592(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	$0, 160(%rsp)
	movq	$8, 168(%rsp)
	movq	$0, 176(%rsp)
	movq	472(%rcx), %rax
	movq	%rcx, 16(%rsp)
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_1(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r13, %rsi
.LBB18_9:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB18_10:
	testw	%bp, %bp
	je	.LBB18_11
	bsfw	%bp, %di
	movzwl	%di, %edx
	leal	-1(%rbp), %ebx
	andl	%ebp, %ebx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	movl	%ebx, %ebp
	cmpq	%r14, -16(%rdi)
	jne	.LBB18_10
	jmp	.LBB18_37
.LBB18_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB18_23
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_9
.LBB18_37:
	addq	$-8, %rdi
.LBB18_38:
	movq	(%rdi), %rbp
.Ltmp21:
	leaq	160(%rsp), %rdi
	xorl	%esi, %esi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E
.Ltmp22:
	movabsq	$-5771568367405680920, %rsi
	movabsq	$-5953106420434925240, %r13
	movq	168(%rsp), %rax
	movq	176(%rsp), %r14
	movq	%rax, 56(%rsp)
	movq	%rbp, (%rax,%r14,8)
	incq	%r14
	movq	%r14, 176(%rsp)
	movq	16(%rsp), %rcx
	movq	472(%rcx), %rax
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB18_40:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB18_41:
	testw	%bp, %bp
	je	.LBB18_42
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
	cmpq	%r13, -16(%rdi)
	jne	.LBB18_41
	jmp	.LBB18_63
.LBB18_42:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB18_49
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_40
.LBB18_63:
	addq	$-8, %rdi
	movq	(%rdi), %rbx
	cmpq	160(%rsp), %r14
	movq	56(%rsp), %rcx
	jne	.LBB18_67
.LBB18_65:
.Ltmp33:
	leaq	160(%rsp), %rdi
	movq	%r14, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf884d91a360ebf7E
.Ltmp34:
	movq	168(%rsp), %rcx
	movq	176(%rsp), %r14
.LBB18_67:
	movq	%rbx, (%rcx,%r14,8)
	incq	%r14
	movq	%r14, 176(%rsp)
	movq	16(%rsp), %rax
	movq	608(%rax), %rbp
	movq	%r14, 80(%rsp)
	movq	%rax, %r14
	movdqu	160(%rsp), %xmm0
	movdqa	%xmm0, 64(%rsp)
.Ltmp39:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rsi
	leaq	224(%rsp), %rdi
	leaq	64(%rsp), %r8
	movl	$64, %edx
	movq	32(%rsp), %rcx
	movq	%rbp, %r9
	callq	*_ZN8bevy_ecs6bundle17initialize_bundle17h0de6d6327bb9c626E@GOTPCREL(%rip)
.Ltmp40:
	movdqu	224(%rsp), %xmm0
	movdqu	240(%rsp), %xmm1
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	608(%r14), %rsi
	cmpq	592(%r14), %rsi
	jne	.LBB18_71
.Ltmp41:
	movq	48(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hf037a1bf712ab0c9E
.Ltmp42:
	movq	608(%r14), %rsi
.LBB18_71:
	movq	600(%r14), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	224(%rsp), %xmm0
	movdqu	240(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 608(%r14)
	movq	560(%r14), %rcx
	movq	584(%r14), %rax
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_74
	movl	$16, %esi
	.p2align	4, 0x90
.LBB18_73:
	addq	%rsi, %r15
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_73
.LBB18_74:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r15, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB18_76
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB18_76:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$76, (%rax,%rdx)
	movb	$76, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rcx
	andb	$1, %bl
	movzbl	%bl, %esi
	subq	%rsi, 568(%r14)
	subq	%rdx, %rcx
	negq	%rdx
	movq	%r12, -16(%rax,%rdx)
	movq	%rbp, -8(%rcx)
	addq	$-8, %rcx
	incq	576(%r14)
	jmp	.LBB18_15
.LBB18_23:
	movq	16(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB18_25
.Ltmp11:
	movq	32(%rsp), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E
.Ltmp12:
.LBB18_25:
	movq	16(%rsp), %rax
	movq	552(%rax), %rbx
	movq	$0, 64(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$30, 80(%rsp)
	movq	$4, 96(%rsp)
	movq	$4, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%r14, 120(%rsp)
	movq	$0, 128(%rsp)
	movw	$256, 136(%rsp)
.Ltmp13:
	leaq	224(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 40(%rsp)
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17h2102aa91793d6704E@GOTPCREL(%rip)
.Ltmp14:
	cmpb	$0, 296(%rsp)
	je	.LBB18_27
.Ltmp15:
	leaq	224(%rsp), %rbp
	movq	152(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17he474721607fae770E@GOTPCREL(%rip)
.Ltmp16:
.LBB18_27:
	movq	16(%rsp), %rbp
	leaq	536(%rbp), %rdi
	movq	304(%rsp), %rax
	movq	%rax, 144(%rsp)
	movups	288(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqu	224(%rsp), %xmm0
	movdqu	240(%rsp), %xmm1
	movdqu	256(%rsp), %xmm2
	movdqu	272(%rsp), %xmm3
	movdqa	%xmm3, 112(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB18_30
.Ltmp18:
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE
.Ltmp19:
	movq	16(%rsp), %rbp
	movq	552(%rbp), %rax
.LBB18_30:
	movq	544(%rbp), %rcx
	imulq	$88, %rax, %rdx
	movq	144(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%rbp)
	movq	472(%rbp), %rcx
	movq	496(%rbp), %rax
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_33
	movl	$16, %esi
.LBB18_32:
	addq	%rsi, %r13
	andq	%rcx, %r13
	movdqu	(%rax,%r13), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_32
.LBB18_33:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r13, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB18_35
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB18_35:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$32, (%rax,%rdx)
	movb	$32, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	jmp	.LBB18_38
.LBB18_49:
	movq	16(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB18_51
.Ltmp23:
	movq	32(%rsp), %rdi
	movq	%rdi, %rsi
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7ae02206052397b6E
.Ltmp24:
.LBB18_51:
	movq	16(%rsp), %rax
	movq	552(%rax), %rbx
	movq	$0, 64(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$30, 80(%rsp)
	movq	$4, 96(%rsp)
	movq	$4, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%r13, 120(%rsp)
	movq	$0, 128(%rsp)
	movw	$256, 136(%rsp)
.Ltmp25:
	leaq	224(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 40(%rsp)
	callq	*_ZN8bevy_ecs9component13ComponentInfo3new17h2102aa91793d6704E@GOTPCREL(%rip)
.Ltmp26:
	cmpb	$0, 296(%rsp)
	je	.LBB18_53
.Ltmp27:
	leaq	224(%rsp), %rbp
	movq	152(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17he474721607fae770E@GOTPCREL(%rip)
.Ltmp28:
.LBB18_53:
	movq	16(%rsp), %rbp
	leaq	536(%rbp), %rdi
	movq	304(%rsp), %rax
	movq	%rax, 144(%rsp)
	movups	288(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqu	224(%rsp), %xmm0
	movdqu	240(%rsp), %xmm1
	movdqu	256(%rsp), %xmm2
	movdqu	272(%rsp), %xmm3
	movdqa	%xmm3, 112(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB18_56
.Ltmp30:
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h3e579ffce2d1be3dE
.Ltmp31:
	movq	16(%rsp), %rbp
	movq	552(%rbp), %rax
.LBB18_56:
	movq	544(%rbp), %rcx
	imulq	$88, %rax, %rdx
	movq	144(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%rbp)
	movq	472(%rbp), %rcx
	movq	496(%rbp), %rax
	movabsq	$-5771568367405680920, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_59
	movl	$16, %esi
.LBB18_58:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_58
.LBB18_59:
	movq	%rbx, %rbp
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB18_61
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB18_61:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$87, (%rax,%rdx)
	movb	$87, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r13, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	movq	(%rdi), %rbx
	cmpq	160(%rsp), %r14
	movq	56(%rsp), %rcx
	je	.LBB18_65
	jmp	.LBB18_67
.LBB18_78:
.Ltmp32:
	movq	%rax, %rbx
	jmp	.LBB18_48
.LBB18_45:
.Ltmp20:
	movq	%rax, %rbx
	jmp	.LBB18_48
.LBB18_79:
.Ltmp29:
	jmp	.LBB18_47
.LBB18_46:
.Ltmp17:
.LBB18_47:
	movq	%rax, %rbx
	movq	%rbp, 40(%rsp)
.LBB18_48:
	movq	40(%rsp), %rdi
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h2ec1e3c18ea5b25bE
	jmp	.LBB18_81
.LBB18_106:
.Ltmp43:
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17h81c9583f18ce917dE
	jmp	.LBB18_107
.LBB18_80:
.Ltmp35:
	movq	%rax, %rbx
.LBB18_81:
.Ltmp36:
	leaq	160(%rsp), %rdi
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hb949d5fa91328960E
.Ltmp37:
	jmp	.LBB18_107
.LBB18_82:
.Ltmp38:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.LBB18_110:
.Ltmp8:
	movq	%rax, %rbx
	leaq	408(%rsp), %rdi
	jmp	.LBB18_108
.LBB18_115:
.Ltmp46:
	movq	%rax, %rbx
.LBB18_107:
	leaq	368(%rsp), %rdi
.LBB18_108:
	callq	_ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE
	jmp	.LBB18_109
.LBB18_90:
.Ltmp65:
	movq	%rax, %rbx
	movq	%r13, 168(%rsp)
	leaq	160(%rsp), %rdi
	callq	_ZN4core3ptr166drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$bevy_ecs..entity..Entity$C$$LP$world_insert_or_spawn_batch..A$C$world_insert_or_spawn_batch..B$RP$$RP$$GT$$GT$17h5e72a44777975b7dE
.Ltmp66:
	leaq	200(%rsp), %rdi
	callq	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hf6a232c06349ced1E
.Ltmp67:
.LBB18_109:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB18_105:
.Ltmp68:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h8d68982a8f79bff3E@GOTPCREL(%rip)
	ud2
.Lfunc_end18:
	.size	world_insert_or_spawn_batch, .Lfunc_end18-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2
GCC_except_table18:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp44-.Lfunc_begin1
	.uleb128 .Ltmp45-.Ltmp44
	.uleb128 .Ltmp46-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp47-.Lfunc_begin1
	.uleb128 .Ltmp62-.Ltmp47
	.uleb128 .Ltmp65-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin1
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp46-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin1
	.uleb128 .Ltmp34-.Ltmp21
	.uleb128 .Ltmp35-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp39-.Lfunc_begin1
	.uleb128 .Ltmp40-.Ltmp39
	.uleb128 .Ltmp46-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp41-.Lfunc_begin1
	.uleb128 .Ltmp42-.Ltmp41
	.uleb128 .Ltmp43-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin1
	.uleb128 .Ltmp14-.Ltmp11
	.uleb128 .Ltmp35-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin1
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp17-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp18-.Lfunc_begin1
	.uleb128 .Ltmp19-.Ltmp18
	.uleb128 .Ltmp20-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp26-.Ltmp23
	.uleb128 .Ltmp35-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp27-.Lfunc_begin1
	.uleb128 .Ltmp28-.Ltmp27
	.uleb128 .Ltmp29-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp30-.Lfunc_begin1
	.uleb128 .Ltmp31-.Ltmp30
	.uleb128 .Ltmp32-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin1
	.uleb128 .Ltmp37-.Ltmp36
	.uleb128 .Ltmp38-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp66-.Lfunc_begin1
	.uleb128 .Ltmp67-.Ltmp66
	.uleb128 .Ltmp68-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp67-.Lfunc_begin1
	.uleb128 .Lfunc_end18-.Ltmp67
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 43

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.10.0/src/bundle.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 94

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000\214\001\000\000E\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.6,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.6:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.10.0/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6, 97

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.7,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.7:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6
	.asciz	"a\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.8,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.8:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000\207\002\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.9,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.9:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000h\002\000\000N\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.10,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.10:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000S\002\000\000N\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.11,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.11:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000A\002\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.12,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.12:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000.\002\000\000N\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.13,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.13:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"^\000\000\000\000\000\000\000\037\002\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"entity_remove_intersection.baac4691-cgu.0"
	.def	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h88753c4966663328E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h88753c4966663328E
	.p2align	4, 0x90
_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h88753c4966663328E:
.seh_proc _ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h88753c4966663328E
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

	.def	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17haa5370754512bcb5E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17haa5370754512bcb5E
	.p2align	4, 0x90
_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17haa5370754512bcb5E:
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_1
	movq	8(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB1_1:
	retq

	.def	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h47c7616c76d349aeE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h47c7616c76d349aeE
	.p2align	4, 0x90
_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h47c7616c76d349aeE:
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

	.def	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hbee7ce60b7dd6efdE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hbee7ce60b7dd6efdE
	.p2align	4, 0x90
_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hbee7ce60b7dd6efdE:
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_1
	movq	(%rcx), %rcx
	shlq	$3, %rdx
	movl	$4, %r8d
	jmp	__rust_dealloc
.LBB3_1:
	retq

	.def	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hed996450e6e5f2e1E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hed996450e6e5f2e1E
	.p2align	4, 0x90
_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hed996450e6e5f2e1E:
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB4_1
	movq	(%rcx), %rcx
	shlq	$3, %rdx
	movl	$8, %r8d
	jmp	__rust_dealloc
.LBB4_1:
	retq

	.def	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
	.p2align	4, 0x90
_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E:
.seh_proc _ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h770254da3b17a219E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h770254da3b17a219E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h770254da3b17a219E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h770254da3b17a219E
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ef87e5260829c6bE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ef87e5260829c6bE
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ef87e5260829c6bE:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ef87e5260829c6bE
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbb07bab88e6f92a4E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbb07bab88e6f92a4E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbb07bab88e6f92a4E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbb07bab88e6f92a4E
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
	movabsq	$384307168202282326, %rcx
	xorl	%r8d, %r8d
	cmpq	%rcx, %rdi
	setb	%r8b
	leaq	(,%rdi,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB8_3
	movq	(%rsi), %rcx
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB8_4
.LBB8_3:
	movq	$0, 56(%rsp)
.LBB8_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc63fdc3e244c764aE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc63fdc3e244c764aE
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc63fdc3e244c764aE:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc63fdc3e244c764aE
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
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	shrq	$58, %rcx
	sete	%r8b
	movq	%rdi, %rdx
	shlq	$5, %rdx
	shlq	$3, %r8
	testq	%rax, %rax
	je	.LBB9_3
	movq	(%rsi), %rcx
	shlq	$5, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$8, 56(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	$0, 56(%rsp)
.LBB9_4:
	leaq	64(%rsp), %rcx
	leaq	40(%rsp), %r9
	callq	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd2563c12ef9bcb97E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd2563c12ef9bcb97E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd2563c12ef9bcb97E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd2563c12ef9bcb97E
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h24651a50ff6d3686E;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h24651a50ff6d3686E
	.p2align	4, 0x90
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h24651a50ff6d3686E:
.seh_proc _ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h24651a50ff6d3686E
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
	callq	_ZN5alloc7raw_vec11finish_grow17h0816c34289993121E
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

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0158718fda8a6fe1E;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0158718fda8a6fe1E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0158718fda8a6fe1E:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0158718fda8a6fe1E
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
	jne	.LBB12_2
.LBB12_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB12_29
.LBB12_2:
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
	jbe	.LBB12_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB12_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rbp
	jmp	.LBB12_7
.LBB12_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h5724e5665eba90edE(%rip), %r8
	leaq	48(%rsp), %rdx
	movq	%r15, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
.LBB12_28:
	movabsq	$-9223372036854775807, %rbx
.LBB12_29:
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
.LBB12_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB12_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rbp
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB12_29
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
	movq	$-1, %rbp
	shrq	%cl, %rbp
	incq	%rbp
.LBB12_7:
	movl	$16, %ecx
	movq	%rbp, %rax
	mulq	%rcx
	jo	.LBB12_1
	movq	%rax, %r13
	leaq	16(%rbp), %rbx
	movq	%rax, %rsi
	addq	%rbx, %rsi
	jb	.LBB12_1
	je	.LBB12_10
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB12_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%rsi, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB12_29
.LBB12_10:
	movl	$16, %eax
.LBB12_11:
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
	je	.LBB12_12
	movq	%rbp, 32(%rsp)
	movq	8(%r15), %rcx
	leaq	-16(%rcx), %r8
	xorl	%r11d, %r11d
	movabsq	$5871781006564002453, %r9
	jmp	.LBB12_19
	.p2align	4, 0x90
.LBB12_25:
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
.LBB12_26:
	leaq	1(%r11), %rdx
	cmpq	%r14, %r11
	movq	%rdx, %r11
	je	.LBB12_27
.LBB12_19:
	cmpb	$0, (%rcx,%r11)
	js	.LBB12_26
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
	jne	.LBB12_23
	movl	$16, %esi
	.p2align	4, 0x90
.LBB12_22:
	addq	%rsi, %rbp
	andq	%rbx, %rbp
	movdqu	(%r13,%rbp), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rsi
	testl	%edi, %edi
	je	.LBB12_22
.LBB12_23:
	bsfw	%di, %dx
	movzwl	%dx, %edi
	addq	%rbp, %rdi
	andq	%rbx, %rdi
	cmpb	$0, (%r13,%rdi)
	js	.LBB12_25
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edi
	jmp	.LBB12_25
.LBB12_27:
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%r15)
	movq	%r12, 24(%r15)
	testq	%r14, %r14
	jne	.LBB12_13
	jmp	.LBB12_28
.LBB12_12:
	movq	8(%r15), %rcx
	movq	%rbx, (%r15)
	movq	%r13, 8(%r15)
	movq	%rbp, 16(%r15)
	movq	%r12, 24(%r15)
.LBB12_13:
	movl	$16, %edx
	mulq	%rdx
	addq	%rax, %r14
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r14
	je	.LBB12_29
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r14, %rdx
	callq	__rust_dealloc
	jmp	.LBB12_29
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6f9e09dca37904b5E;
	.scl	3;
	.type	32;
	.endef
	.section	.text$unlikely,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6f9e09dca37904b5E
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6f9e09dca37904b5E:
.seh_proc _ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6f9e09dca37904b5E
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
	jne	.LBB13_2
.LBB13_1:
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rdx, %rbx
	jmp	.LBB13_30
.LBB13_2:
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
	jbe	.LBB13_17
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB13_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %rsi
	jmp	.LBB13_7
.LBB13_17:
	leaq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hb89973a8301a43acE(%rip), %r8
	leaq	80(%rsp), %rdx
	movq	%r14, %rcx
	callq	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
.LBB13_29:
	movabsq	$-9223372036854775807, %rbx
.LBB13_30:
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
.LBB13_4:
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB13_5
	movb	$1, %cl
	callq	_ZN9hashbrown3raw11Fallibility17capacity_overflow17hd29a4b6a43e63041E
	movq	%rax, %rsi
	movq	%rdx, %rbx
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB13_30
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
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.LBB13_7:
	movl	$16, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB13_1
	movq	%rax, %rbx
	leaq	16(%rsi), %r12
	movq	%rax, %r15
	addq	%r12, %r15
	jb	.LBB13_1
	je	.LBB13_10
	movl	$16, %edx
	movq	%r15, %rcx
	callq	__rust_alloc
	testq	%rax, %rax
	jne	.LBB13_11
	movl	$16, %r8d
	movb	$1, %cl
	movq	%r15, %rdx
	callq	_ZN9hashbrown3raw11Fallibility9alloc_err17h4744eea000cd437bE
	movq	%rdx, %rbx
	jmp	.LBB13_30
.LBB13_10:
	movl	$16, %eax
.LBB13_11:
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
	je	.LBB13_12
	movq	%rsi, 48(%rsp)
	movq	%rbp, 56(%rsp)
	movq	%rdi, 64(%rsp)
	movq	8(%r14), %rcx
	leaq	-16(%rcx), %rdi
	movq	40(%rsp), %rdx
	movq	%rdx, 72(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB13_19
	.p2align	4, 0x90
.LBB13_26:
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
.LBB13_27:
	leaq	1(%r15), %rdx
	cmpq	%r13, %r15
	movq	%rdx, %r15
	je	.LBB13_28
.LBB13_19:
	cmpb	$0, (%rcx,%r15)
	js	.LBB13_27
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
	jne	.LBB13_24
	movq	%rdi, %rdx
	movl	$16, %edi
	.p2align	4, 0x90
.LBB13_22:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rbx,%rsi), %xmm0
	pmovmskb	%xmm0, %ebp
	addq	$16, %rdi
	testl	%ebp, %ebp
	je	.LBB13_22
	movq	%rdx, %rdi
.LBB13_24:
	bsfw	%bp, %dx
	movzwl	%dx, %ebp
	addq	%rsi, %rbp
	andq	%rax, %rbp
	cmpb	$0, (%rbx,%rbp)
	js	.LBB13_26
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebp
	jmp	.LBB13_26
.LBB13_28:
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	48(%rsp), %rax
	movq	%rax, 16(%r14)
	movq	56(%rsp), %rax
	movq	%rax, 24(%r14)
	testq	%r13, %r13
	movq	64(%rsp), %rdi
	jne	.LBB13_13
	jmp	.LBB13_29
.LBB13_12:
	movq	8(%r14), %rcx
	movq	%rax, (%r14)
	movq	%rbx, 8(%r14)
	movq	%rsi, 16(%r14)
	movq	%rbp, 24(%r14)
.LBB13_13:
	movl	$16, %edx
	movq	%rdi, %rax
	mulq	%rdx
	addq	%rax, %r13
	movabsq	$-9223372036854775807, %rbx
	addq	$17, %r13
	je	.LBB13_30
	subq	%rax, %rcx
	movl	$16, %r8d
	movq	%r13, %rdx
	callq	__rust_dealloc
	jmp	.LBB13_30
	.seh_endproc

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h5724e5665eba90edE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h5724e5665eba90edE
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h5724e5665eba90edE:
	movq	8(%rdx), %rcx
	shlq	$4, %r8
	subq	%r8, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq

	.def	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hb89973a8301a43acE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hb89973a8301a43acE
	.p2align	4, 0x90
_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hb89973a8301a43acE:
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

	.def	_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E;
	.scl	3;
	.type	32;
	.endef
	.globl	__xmm@80808080808080808080808080808080
	.section	.rdata,"dr",discard,__xmm@80808080808080808080808080808080
	.p2align	4
__xmm@80808080808080808080808080808080:
	.zero	16,128
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
	.p2align	4, 0x90
_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E:
.Lfunc_begin0:
.seh_proc _ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
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
	.long	($cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E)@IMGREL
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
	.seh_endproc
	.def	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E@4HA":
.seh_proc "?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E@4HA"
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
	callq	_ZN4core3ptr237drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$$C$hashbrown..raw..RawTableInner$LT$alloc..alloc..Global$GT$..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h88753c4966663328E
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
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E
	.p2align	2
$cppxdata$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E:
	.long	429065506
	.long	1
	.long	($stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E)@IMGREL
	.long	80
	.long	0
	.long	1
$stateUnwindMap$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E:
	.long	-1
	.long	"?dtor$12@?0?_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E@4HA"@IMGREL
$ip2state$_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E:
	.long	.Lfunc_begin0@IMGREL
	.long	-1
	.long	.Ltmp0@IMGREL+1
	.long	0
	.long	.Ltmp1@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN9hashbrown3raw22RawTableInner$LT$A$GT$15rehash_in_place17ha0ab7d2fd5d79021E

	.def	entity_remove;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@68686868686868686868686868686868
	.section	.rdata,"dr",discard,__xmm@68686868686868686868686868686868
	.p2align	4
__xmm@68686868686868686868686868686868:
	.zero	16,104
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
	subq	$424, %rsp
	.seh_stackalloc 424
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	movaps	%xmm6, 272(%rbp)
	.seh_savexmm %xmm6, 400
	.seh_endprologue
	movq	$-2, 264(%rbp)
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movq	%rcx, %rsi
	movl	%edx, 200(%rbp)
	movl	%r9d, 204(%rbp)
	leaq	8(%rcx), %rdx
	leaq	112(%rbp), %rcx
	movq	%rdx, -32(%rbp)
	movl	%r8d, 244(%rbp)
	movl	%r9d, 240(%rbp)
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, 112(%rbp)
	je	.LBB17_129
	movq	496(%rsi), %rdx
	movq	504(%rsi), %rbx
	movabsq	$8317987319222330741, %rcx
	xorq	%rdx, %rcx
	movabsq	$7237128888997146477, %r15
	xorq	%rbx, %r15
	movabsq	$7816392313619706465, %rax
	xorq	%rdx, %rax
	movabsq	$-6381426311166572827, %rdx
	addq	%r15, %rcx
	rolq	$13, %r15
	xorq	%rbx, %rdx
	xorq	%rcx, %r15
	rolq	$32, %rcx
	addq	%rdx, %rax
	rolq	$16, %rdx
	xorq	%rax, %rdx
	addq	%rdx, %rcx
	rolq	$21, %rdx
	xorq	%rcx, %rdx
	addq	%r15, %rax
	rolq	$17, %r15
	xorq	%rax, %r15
	rolq	$32, %rax
	movabsq	$-3236404818635283562, %r12
	xorq	%r12, %rcx
	movabsq	$576460752303423488, %rdi
	addq	%r15, %rcx
	rolq	$13, %r15
	movq	%rdx, %rbx
	xorq	%rcx, %r15
	rolq	$32, %rcx
	xorq	%rdi, %rbx
	addq	%rbx, %rax
	shrdq	$48, %rdx, %rbx
	xorq	%rax, %rbx
	addq	%rbx, %rcx
	rolq	$21, %rbx
	movl	116(%rbp), %edx
	movq	%rdx, 80(%rbp)
	addq	%r15, %rax
	rolq	$17, %r15
	xorq	%rcx, %rbx
	xorq	%rax, %r15
	rolq	$32, %rax
	xorq	%rdi, %rcx
	addq	%r15, %rcx
	rolq	$13, %r15
	movl	120(%rbp), %edx
	movl	%edx, 96(%rbp)
	xorq	%rcx, %r15
	rolq	$32, %rcx
	xorq	$255, %rax
	addq	%rbx, %rax
	rolq	$16, %rbx
	xorq	%rax, %rbx
	addq	%rbx, %rcx
	rolq	$21, %rbx
	movq	124(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	addq	%r15, %rax
	rolq	$17, %r15
	leaq	160(%rsi), %rdx
	movq	%rdx, 224(%rbp)
	xorq	%rax, %r15
	rolq	$32, %rax
	xorq	%rcx, %rbx
	addq	%r15, %rcx
	rolq	$13, %r15
	leaq	240(%rsi), %rdx
	movq	%rdx, 104(%rbp)
	xorq	%rcx, %r15
	rolq	$32, %rcx
	leaq	72(%rsi), %rdx
	movq	%rdx, 232(%rbp)
	addq	%rbx, %rax
	rolq	$16, %rbx
	xorq	%rax, %rbx
	addq	%rbx, %rcx
	rolq	$21, %rbx
	leaq	544(%rsi), %rdx
	movq	%rdx, 72(%rbp)
	addq	%r15, %rax
	rolq	$17, %r15
	leaq	472(%rsi), %r14
	xorq	%rax, %r15
	rolq	$32, %rax
	xorq	%rcx, %rbx
	addq	%r15, %rcx
	rolq	$13, %r15
	xorq	%rcx, %r15
	addq	%rbx, %rax
	rolq	$16, %rbx
	leaq	496(%rsi), %rdx
	xorq	%rax, %rbx
	rolq	$21, %rbx
	addq	%r15, %rax
	rolq	$17, %r15
	xorq	%rax, %r15
	rolq	$32, %rax
	xorq	%rbx, %r15
	xorq	%rax, %r15
	movq	512(%rsi), %r9
	movq	%r15, %r13
	shrq	$57, %r13
	movd	%r13d, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rsi, 248(%rbp)
	movq	520(%rsi), %r10
	xorl	%r8d, %r8d
	movq	%r15, %rbx
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
	leal	-1(%rdi), %ecx
	andl	%edi, %ecx
	addq	%rbx, %rax
	andq	%r9, %rax
	shlq	$4, %rax
	movq	%r10, %rsi
	subq	%rax, %rsi
	movl	%ecx, %edi
	cmpq	%r12, -16(%rsi)
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
	addq	$-8, %rsi
.LBB17_42:
	movq	224(%rbp), %rcx
	movq	(%r14), %r14
	movq	(%rsi), %rdi
	shlq	$5, %rdi
	leaq	(%r14,%rdi), %rax
	movq	%rax, 32(%rsp)
	movb	$1, 40(%rsp)
	movq	104(%rbp), %rdx
	movq	232(%rbp), %r8
	movq	80(%rbp), %rsi
	movl	%esi, %r9d
	callq	_ZN8bevy_ecs5world10entity_ref28remove_bundle_from_archetype17h2d0c34a2e033951fE
	testl	%eax, %eax
	je	.LBB17_130
	movl	%edx, %ecx
	cmpl	%esi, %edx
	je	.LBB17_90
	movq	248(%rbp), %rax
	movq	176(%rax), %rdx
	cmpq	%rsi, %rdx
	jbe	.LBB17_131
	movl	%ecx, 100(%rbp)
	movq	160(%rax), %rdx
	movq	8(%r14,%rdi), %r13
	movq	24(%r14,%rdi), %rcx
	leaq	(,%rcx,8), %r14
	addq	%r13, %r14
	imulq	$152, %rsi, %rcx
	movq	%rcx, 88(%rbp)
	leaq	(%rdx,%rcx), %rbx
	addq	$128, %rbx
	leaq	592(%rax), %rcx
	movq	%rcx, 232(%rbp)
	leaq	568(%rax), %rcx
	movq	%rcx, -40(%rbp)
	xorps	%xmm6, %xmm6
	movq	%rax, %rdi
	movq	%r14, 224(%rbp)
	movq	%rbx, 64(%rbp)
	.p2align	4, 0x90
.LBB17_46:
	cmpq	%r14, %r13
	je	.LBB17_47
	movq	(%r13), %r15
	addq	$8, %r13
	cmpq	8(%rbx), %r15
	jae	.LBB17_46
	movq	(%rbx), %rax
	movq	%r15, %r12
	shlq	$4, %r12
	cmpq	$0, (%rax,%r12)
	je	.LBB17_46
	movq	608(%rdi), %r14
	cmpq	%r15, %r14
	jbe	.LBB17_99
	movq	232(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax,%r12)
	je	.LBB17_95
	movq	8(%rax,%r12), %rax
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	movq	72(%rbp), %rax
	addq	(%rax), %rsi
	movq	224(%rbp), %r14
	movq	64(%rbp), %rbx
	movq	16(%rsi), %rdx
	cmpq	8(%rsi), %rdx
	je	.LBB17_122
	jmp	.LBB17_123
.LBB17_99:
	movq	$4, -16(%rbp)
	leaq	-8(%rbp), %rax
	movups	%xmm6, (%rax)
	movq	560(%rdi), %rbx
	movq	600(%rdi), %rcx
	leaq	1(%r15), %rdi
	movq	%rdi, %rsi
	subq	%r14, %rsi
	subq	%r14, %rcx
	movq	%r14, %rax
	cmpq	%rsi, %rcx
	jae	.LBB17_102
	movb	$1, 262(%rbp)
.Ltmp16:
	movq	232(%rbp), %rcx
	movq	%r14, %rdx
	movq	%rsi, %r8
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h24651a50ff6d3686E
.Ltmp17:
	movq	248(%rbp), %rax
	movq	608(%rax), %rax
.LBB17_102:
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	232(%rbp), %rdx
	addq	(%rdx), %rcx
	cmpq	$2, %rsi
	jb	.LBB17_106
	movq	%r15, %rdx
	subq	%r14, %rdx
	.p2align	4, 0x90
.LBB17_104:
	movq	$0, (%rcx)
	addq	$16, %rcx
	decq	%rdx
	jne	.LBB17_104
	addq	%rsi, %rax
	decq	%rax
.LBB17_106:
	cmpq	%r14, %rdi
	je	.LBB17_108
	movq	$0, (%rcx)
	incq	%rax
.LBB17_108:
	movq	248(%rbp), %rdi
	movq	%rax, 608(%rdi)
	movq	%rax, %r14
	cmpq	%r15, %r14
	ja	.LBB17_109
	jmp	.LBB17_97
.LBB17_95:
	movq	$4, -16(%rbp)
	leaq	-8(%rbp), %rax
	movups	%xmm6, (%rax)
	movq	560(%rdi), %rbx
	cmpq	%r15, %r14
	jbe	.LBB17_97
.LBB17_109:
	movq	592(%rdi), %rax
	movq	$1, (%rax,%r12)
	movq	%rbx, 8(%rax,%r12)
	movq	584(%rdi), %rdx
	cmpq	576(%rdi), %rdx
	jne	.LBB17_110
	movb	$1, 262(%rbp)
.Ltmp20:
	movq	-40(%rbp), %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd2563c12ef9bcb97E
.Ltmp21:
	movq	%rbx, %rsi
	movq	248(%rbp), %rdi
	movq	584(%rdi), %rdx
	jmp	.LBB17_113
.LBB17_110:
	movq	%rbx, %rsi
.LBB17_113:
	movq	568(%rdi), %rax
	movq	%r15, (%rax,%rdx,8)
	incq	%rdx
	movq	%rdx, 584(%rdi)
	movq	(%rbp), %rax
	movq	%rax, 128(%rbp)
	movdqu	-16(%rbp), %xmm0
	movdqa	%xmm0, 112(%rbp)
	movq	560(%rdi), %rdx
	cmpq	552(%rdi), %rdx
	movq	224(%rbp), %r14
	movq	64(%rbp), %rbx
	jne	.LBB17_116
.Ltmp22:
	movq	72(%rbp), %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbb07bab88e6f92a4E
.Ltmp23:
	movq	560(%rdi), %rdx
.LBB17_116:
	movq	544(%rdi), %rax
	leaq	(%rdx,%rdx,2), %rcx
	movq	(%rbp), %rdi
	movq	%rdi, 16(%rax,%rcx,8)
	movq	248(%rbp), %rdi
	movdqu	-16(%rbp), %xmm0
	movdqu	%xmm0, (%rax,%rcx,8)
	incq	%rdx
	movq	%rdx, 560(%rdi)
	leaq	(%rsi,%rsi,2), %rcx
	leaq	(%rax,%rcx,8), %rsi
	movq	16(%rsi), %rdx
	cmpq	8(%rsi), %rdx
	jne	.LBB17_123
.LBB17_122:
	movq	%rsi, %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h7ef87e5260829c6bE
	movq	16(%rsi), %rdx
.LBB17_123:
	movq	(%rsi), %rax
	movl	244(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,8)
	movl	240(%rbp), %ecx
	movl	%ecx, 4(%rax,%rdx,8)
	incq	%rdx
	movq	%rdx, 16(%rsi)
	cmpq	%r15, 8(%rbx)
	jbe	.LBB17_46
	movq	(%rbx), %rax
	cmpq	$0, (%rax,%r12)
	je	.LBB17_46
	movq	-32(%rbx), %rcx
	movq	8(%rax,%r12), %rax
	shlq	$4, %rax
	cmpb	$0, 8(%rcx,%rax)
	je	.LBB17_46
	movq	104(%rbp), %rcx
	movq	%r15, %rdx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets7get_mut17h838a491adda3cc3aE
	testq	%rax, %rax
	je	.LBB17_127
	movq	%rax, %rcx
	movl	244(%rbp), %edx
	movl	240(%rbp), %r8d
	callq	_ZN8bevy_ecs7storage10sparse_set18ComponentSparseSet6remove17h7ba3c1fe4e58addeE
	jmp	.LBB17_46
.LBB17_47:
	movq	176(%rdi), %r14
	movq	80(%rbp), %rsi
	cmpq	%rsi, %r14
	jbe	.LBB17_48
	movq	160(%rdi), %r12
	movq	312(%rdi), %r15
	movq	328(%rdi), %r13
	movq	88(%rbp), %rax
	leaq	(%r12,%rax), %rdx
	leaq	-56(%rbp), %rcx
	movl	96(%rbp), %edi
	movl	%edi, %r8d
	callq	_ZN8bevy_ecs9archetype9Archetype11swap_remove17hb5f1db66ca977e2cE
	cmpl	$1, -56(%rbp)
	movq	-32(%rbp), %rbx
	jne	.LBB17_60
	movl	-48(%rbp), %edx
	movl	%esi, 112(%rbp)
	movl	%edi, 116(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, 120(%rbp)
	leaq	112(%rbp), %r8
	movq	%rbx, %rcx
	callq	_ZN8bevy_ecs6entity8Entities3set17h7e39204e233345f9E
.LBB17_60:
	movl	100(%rbp), %eax
	cmpq	%rax, %r14
	jbe	.LBB17_61
	movq	%rbx, %rdi
	movl	-44(%rbp), %ebx
	movq	88(%rbp), %rcx
	movl	148(%r12,%rcx), %ecx
	imulq	$152, %rax, %rax
	leaq	(%r12,%rax), %rsi
	movl	148(%r12,%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB17_65
	movl	%ebx, 32(%rsp)
	leaq	-80(%rbp), %rcx
	movq	%rsi, %rdx
	movl	244(%rbp), %r8d
	movl	240(%rbp), %esi
	movl	%esi, %r9d
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h44c86e5b2dbd5e15E
	jmp	.LBB17_89
.LBB17_65:
	jbe	.LBB17_66
	cmpq	%rcx, %r13
	jb	.LBB17_70
	je	.LBB17_72
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%r15,%rax,8), %rax
	leaq	(%rdx,%rdx,8), %rcx
	leaq	(%r15,%rcx,8), %r9
	jmp	.LBB17_79
.LBB17_66:
	cmpq	%rdx, %r13
	jb	.LBB17_67
	cmpl	%ecx, %edx
	jbe	.LBB17_132
	cmpq	%rdx, %r13
	je	.LBB17_77
	leaq	(%rdx,%rdx,8), %rax
	leaq	(%r15,%rax,8), %r9
	leaq	(%rcx,%rcx,8), %rax
	leaq	(%r15,%rax,8), %rax
.LBB17_79:
	leaq	200(%rbp), %rcx
	movq	%rax, %rdx
	movl	%ebx, %r8d
	callq	_ZN8bevy_ecs7storage5table5Table34move_to_and_drop_missing_unchecked17h0a7192eae2693870E
	movl	212(%rbp), %eax
	movl	%eax, 32(%rsp)
	leaq	-16(%rbp), %rcx
	movq	%rsi, %rdx
	movl	244(%rbp), %r8d
	movl	240(%rbp), %esi
	movl	%esi, %r9d
	callq	_ZN8bevy_ecs9archetype9Archetype8allocate17h44c86e5b2dbd5e15E
	cmpl	$1, 200(%rbp)
	jne	.LBB17_87
	movl	204(%rbp), %r8d
	movl	208(%rbp), %r9d
	leaq	112(%rbp), %rcx
	movq	%rdi, %rdx
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, 112(%rbp)
	je	.LBB17_81
	movl	116(%rbp), %eax
	cmpq	%rax, %r14
	jbe	.LBB17_84
	movl	120(%rbp), %ecx
	imulq	$152, %rax, %rax
	movq	88(%r12,%rax), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB17_133
	addq	%r12, %rax
	addq	$72, %rax
	movq	(%rax), %rax
	leaq	(%rcx,%rcx,2), %rcx
	movl	%ebx, 8(%rax,%rcx,4)
.LBB17_87:
	movdqu	-16(%rbp), %xmm0
	movdqa	%xmm0, -80(%rbp)
.LBB17_89:
	movdqa	-80(%rbp), %xmm0
	movdqa	%xmm0, 112(%rbp)
	leaq	112(%rbp), %r8
	movq	%rdi, %rcx
	movl	%esi, %edx
	callq	_ZN8bevy_ecs6entity8Entities3set17h7e39204e233345f9E
.LBB17_90:
	#APP
	#NO_APP
	movaps	272(%rbp), %xmm6
	addq	$424, %rsp
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
	movq	248(%rbp), %rsi
	cmpq	$0, 528(%rsi)
	je	.LBB17_7
.LBB17_8:
	movq	$8, 200(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 208(%rbp)
	leaq	96(%rsi), %rcx
	movq	96(%rsi), %r9
	movq	104(%rsi), %r10
	movabsq	$-3398949567987445170, %rdi
	xorl	%r8d, %r8d
	movdqa	__xmm@68686868686868686868686868686868(%rip), %xmm0
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
	cmpq	%r12, -16(%rdx)
	jne	.LBB17_10
	jmp	.LBB17_30
.LBB17_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB17_15
	addq	%r8, %rdi
	addq	$16, %rdi
	addq	$16, %r8
	jmp	.LBB17_9
.LBB17_30:
	addq	$-8, %rdx
	movq	248(%rbp), %rdi
.LBB17_31:
	movq	(%rdx), %rsi
	movb	$1, 263(%rbp)
.Ltmp10:
	leaq	200(%rbp), %rcx
	xorl	%edx, %edx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hd2563c12ef9bcb97E
.Ltmp11:
	movq	200(%rbp), %rax
	movq	216(%rbp), %rcx
	movq	%rsi, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 216(%rbp)
	movq	488(%rdi), %rsi
	movq	%rcx, 128(%rbp)
	movdqu	200(%rbp), %xmm0
	movdqa	%xmm0, 112(%rbp)
	movb	$0, 263(%rbp)
.Ltmp12:
	movq	%rsi, 32(%rsp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdx
	leaq	-16(%rbp), %rcx
	leaq	112(%rbp), %r9
	movl	$29, %r8d
	callq	_ZN8bevy_ecs6bundle17initialize_bundle17hd51b22b92e16b6e1E
.Ltmp13:
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqa	%xmm1, 128(%rbp)
	movdqa	%xmm0, 112(%rbp)
	movq	488(%rdi), %rdx
	cmpq	480(%rdi), %rdx
	jne	.LBB17_36
.Ltmp14:
	movq	%r14, %rcx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hc63fdc3e244c764aE
.Ltmp15:
	movq	488(%rdi), %rdx
.LBB17_36:
	movq	472(%rdi), %rax
	movq	%rdx, %rcx
	shlq	$5, %rcx
	movups	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rdx
	movq	%rdx, 488(%rdi)
	movq	512(%rdi), %rcx
	movq	520(%rdi), %rax
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB17_39
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB17_38:
	addq	%rbx, %r15
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB17_38
.LBB17_39:
	movq	%rsi, %r8
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r15, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB17_41
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB17_41:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	%r13b, (%rax,%rdx)
	movb	%r13b, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rsi
	andb	$1, %bl
	movzbl	%bl, %ebx
	movq	248(%rbp), %rdi
	subq	%rbx, 528(%rdi)
	subq	%rdx, %rsi
	negq	%rdx
	movq	%r12, -16(%rax,%rdx)
	movq	%r8, -8(%rsi)
	addq	$-8, %rsi
	incq	536(%rdi)
	jmp	.LBB17_42
.LBB17_7:
	leaq	512(%rsi), %rcx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6f9e09dca37904b5E
	jmp	.LBB17_8
.LBB17_97:
	movb	$1, 262(%rbp)
.Ltmp18:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %r8
	movq	%r15, %rcx
	movq	%r14, %rdx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
.Ltmp19:
	ud2
.LBB17_15:
	movq	248(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	jne	.LBB17_17
	movb	$1, 263(%rbp)
.Ltmp2:
	movq	%rcx, %rdx
	callq	_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0158718fda8a6fe1E
.Ltmp3:
.LBB17_17:
	movq	88(%rdi), %rsi
	movq	$0, 112(%rbp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rax
	movq	%rax, 120(%rbp)
	movq	$29, 128(%rbp)
	movq	$1, 136(%rbp)
	movq	%r12, 144(%rbp)
	movq	$4, 152(%rbp)
	movq	$4, 160(%rbp)
	movq	$0, 168(%rbp)
	movw	$256, 176(%rbp)
	movb	$1, 263(%rbp)
.Ltmp4:
	leaq	-16(%rbp), %rcx
	leaq	112(%rbp), %r8
	movq	%rsi, %rdx
	callq	_ZN8bevy_ecs9component13ComponentInfo3new17h8f9a07a30d7191e0E
.Ltmp5:
	cmpb	$0, 56(%rbp)
	je	.LBB17_19
	movb	$1, 261(%rbp)
.Ltmp6:
	leaq	-16(%rbp), %rdx
	movq	104(%rbp), %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets13get_or_insert17haca435252b118073E
.Ltmp7:
.LBB17_19:
	movups	48(%rbp), %xmm0
	movaps	%xmm0, 176(%rbp)
	movdqu	-16(%rbp), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	16(%rbp), %xmm2
	movdqu	32(%rbp), %xmm3
	movdqa	%xmm3, 160(%rbp)
	movdqa	%xmm2, 144(%rbp)
	movdqa	%xmm1, 128(%rbp)
	movdqa	%xmm0, 112(%rbp)
	movq	%rsi, %rax
	cmpq	80(%rdi), %rsi
	jne	.LBB17_22
.Ltmp8:
	movq	232(%rbp), %rcx
	movq	%rsi, %rdx
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h770254da3b17a219E
.Ltmp9:
	movq	88(%rdi), %rax
.LBB17_22:
	movq	72(%rdi), %rcx
	leaq	(%rax,%rax,4), %rdx
	shlq	$4, %rdx
	movaps	176(%rbp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	112(%rbp), %xmm0
	movdqa	128(%rbp), %xmm1
	movdqa	144(%rbp), %xmm2
	movdqa	160(%rbp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rdi)
	movq	96(%rdi), %rcx
	movq	104(%rdi), %rax
	movabsq	$-3398949567987445170, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB17_26
	movl	$16, %edi
.LBB17_24:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rdi
	testl	%ebx, %ebx
	je	.LBB17_24
	movq	248(%rbp), %rdi
.LBB17_26:
	bsfw	%bx, %bx
	movzwl	%bx, %ebx
	addq	%rdx, %rbx
	andq	%rcx, %rbx
	movzbl	(%rax,%rbx), %r8d
	testb	%r8b, %r8b
	js	.LBB17_28
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	movzbl	(%rax,%rbx), %r8d
.LBB17_28:
	leaq	-16(%rbx), %rdx
	andq	%rcx, %rdx
	movb	$104, (%rax,%rbx)
	movb	$104, 16(%rdx,%rax)
	shlq	$4, %rbx
	movq	%rax, %rdx
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subq	%rcx, 112(%rdi)
	subq	%rbx, %rdx
	negq	%rbx
	movq	%r12, -16(%rax,%rbx)
	movq	%rsi, -8(%rdx)
	addq	$-8, %rdx
	incq	120(%rdi)
	jmp	.LBB17_31
.LBB17_131:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %r8
	movq	%rsi, %rcx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_48:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %r8
	movq	%rsi, %rcx
	jmp	.LBB17_63
.LBB17_61:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %r8
.LBB17_62:
	movq	%rax, %rcx
.LBB17_63:
	movq	%r14, %rdx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_72:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %r8
	jmp	.LBB17_73
.LBB17_132:
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
	jmp	.LBB17_62
.LBB17_133:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB17_129:
	leaq	200(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	_ZN61_$LT$bevy_ecs..entity..Entity$u20$as$u20$core..fmt..Debug$GT$3fmt17hea96f6de38d352d8E(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rax
	movq	%rax, 112(%rbp)
	movq	$2, 120(%rbp)
	movq	$0, 128(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, 144(%rbp)
	movq	$1, 152(%rbp)
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdx
	leaq	112(%rbp), %rcx
	callq	_ZN4core9panicking9panic_fmt17h94563f1a4f8281d4E
	ud2
.LBB17_130:
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rcx
	leaq	anon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %r8
	movl	$43, %edx
	callq	_ZN4core6option13expect_failed17h724690bab8ec1ebbE
	ud2
.LBB17_127:
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
	.def	"?dtor$49@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$49@?0?entity_remove@4HA":
.seh_proc "?dtor$49@?0?entity_remove@4HA"
.LBB17_49:
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
	leaq	112(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h47c7616c76d349aeE
	movb	$0, 261(%rbp)
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
	.def	"?dtor$51@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$51@?0?entity_remove@4HA":
.seh_proc "?dtor$51@?0?entity_remove@4HA"
.LBB17_51:
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
	cmpb	$0, 261(%rbp)
	je	.LBB17_52
	leaq	-16(%rbp), %rcx
	callq	_ZN4core3ptr55drop_in_place$LT$bevy_ecs..component..ComponentInfo$GT$17h47c7616c76d349aeE
	movb	$1, 263(%rbp)
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
.LBB17_52:
	movb	$1, 263(%rbp)
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
	.def	"?dtor$54@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$54@?0?entity_remove@4HA":
.seh_proc "?dtor$54@?0?entity_remove@4HA"
.LBB17_54:
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
	leaq	112(%rbp), %rcx
	callq	_ZN4core3ptr49drop_in_place$LT$bevy_ecs..bundle..BundleInfo$GT$17haa5370754512bcb5E
	movb	$0, 263(%rbp)
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
	cmpb	$0, 263(%rbp)
	je	.LBB17_57
	leaq	200(%rbp), %rcx
	callq	_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..component..ComponentId$GT$$GT$17hed996450e6e5f2e1E
.LBB17_57:
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
	.def	"?dtor$117@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$117@?0?entity_remove@4HA":
.seh_proc "?dtor$117@?0?entity_remove@4HA"
.LBB17_117:
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
	cmpb	$0, 262(%rbp)
	je	.LBB17_119
	leaq	-16(%rbp), %rcx
	callq	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hbee7ce60b7dd6efdE
.LBB17_119:
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
	.def	"?dtor$134@?0?entity_remove@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$134@?0?entity_remove@4HA":
.seh_proc "?dtor$134@?0?entity_remove@4HA"
.LBB17_134:
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
	movb	$0, 262(%rbp)
	leaq	112(%rbp), %rcx
	callq	_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$bevy_ecs..entity..Entity$GT$$GT$17hbee7ce60b7dd6efdE
	movb	$0, 262(%rbp)
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
	.long	392
	.long	0
	.long	1
$stateUnwindMap$entity_remove:
	.long	-1
	.long	"?dtor$55@?0?entity_remove@4HA"@IMGREL
	.long	0
	.long	"?dtor$54@?0?entity_remove@4HA"@IMGREL
	.long	0
	.long	"?dtor$51@?0?entity_remove@4HA"@IMGREL
	.long	2
	.long	"?dtor$49@?0?entity_remove@4HA"@IMGREL
	.long	-1
	.long	"?dtor$117@?0?entity_remove@4HA"@IMGREL
	.long	4
	.long	"?dtor$134@?0?entity_remove@4HA"@IMGREL
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
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\world\\entity_ref.rs"

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
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\archetype.rs"

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
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\world\\mod.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.18
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.18:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.17
	.asciz	"b\000\000\000\000\000\000\000\370\000\000\000 \000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.19
anon.ddd9cd1641521d33379e20f985469fcb.19:
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\storage\\sparse_set.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.20
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"k\000\000\000\000\000\000\000E\000\000\000\t\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.21
anon.ddd9cd1641521d33379e20f985469fcb.21:
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\storage\\table.rs"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.22
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\237\002\000\0002\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.23
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\240\002\000\000\023\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.24
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\242\002\000\0002\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.25
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\243\002\000\000\023\000\000"

	.section	.rdata,"dr",one_only,anon.ddd9cd1641521d33379e20f985469fcb.26
	.p2align	3
anon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	anon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"f\000\000\000\000\000\000\000\243\002\000\000,\000\000"


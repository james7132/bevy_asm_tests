	.file	"entity_take.39284c4303cee7d8-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,1
	.section	.text.core::ops::function::FnOnce::call_once,"ax",@progbits
	.p2align	4
	.type	core::ops::function::FnOnce::call_once,@function
core::ops::function::FnOnce::call_once:
	.cfi_startproc
	addq	$4, (%rdx)
	testq	%rsi, %rsi
	je	.LBB0_27
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movabsq	$167411420395417202, %rax
	movl	(%rdi), %ecx
	movl	%ecx, 12(%rsp)
	leaq	56(%rsi), %rdi
	leaq	1440(%rsi), %rcx
	movq	%rdi, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movq	$0, 16(%rsp)
	movq	$8, 24(%rsp)
	movq	$0, 32(%rsp)
	cmpq	$0, 104(%rsi)
	movabsq	$-8962557695724031055, %rcx
	je	.LBB0_9
	movq	80(%rbx), %rdx
	movq	88(%rbx), %rsi
	leaq	-24(%rdx), %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$167411420395417202, %r10
	movq	%rax, %r11
.LBB0_3:
	andq	%rsi, %r11
	movdqu	(%rdx,%r11), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r14d
	testl	%r14d, %r14d
	je	.LBB0_6
.LBB0_4:
	rep		bsfl	%r14d, %r15d
	addq	%r11, %r15
	andq	%rsi, %r15
	negq	%r15
	leaq	(%r15,%r15,2), %r15
	movq	8(%r8,%r15,8), %r12
	xorq	%r10, %r12
	movq	(%r8,%r15,8), %r13
	xorq	%rcx, %r13
	orq	%r12, %r13
	je	.LBB0_8
	leal	-1(%r14), %ebp
	andw	%r14w, %bp
	movl	%ebp, %r14d
	jne	.LBB0_4
.LBB0_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_9
	addq	%r9, %r11
	addq	$16, %r11
	addq	$16, %r9
	jmp	.LBB0_3
.LBB0_9:
	movzbl	152(%rbx), %edx
	movq	184(%rbx), %rdx
	movq	192(%rbx), %rsi
	leaq	-128(%rdx), %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$167411420395417202, %r10
.LBB0_10:
	andq	%rsi, %rax
	movdqu	(%rdx,%rax), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r14d
	testl	%r14d, %r14d
	je	.LBB0_13
.LBB0_11:
	rep		bsfl	%r14d, %r11d
	addq	%rax, %r11
	andq	%rsi, %r11
	movq	%r11, %r15
	shlq	$7, %r15
	movq	%r8, %r12
	subq	%r15, %r12
	movq	8(%r12), %r15
	xorq	%r10, %r15
	movq	(%r12), %r12
	xorq	%rcx, %r12
	orq	%r15, %r12
	je	.LBB0_15
	leal	-1(%r14), %r11d
	andw	%r14w, %r11w
	movl	%r11d, %r14d
	jne	.LBB0_11
.LBB0_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB0_19
	addq	%r9, %rax
	addq	$16, %rax
	addq	$16, %r9
	jmp	.LBB0_10
.LBB0_8:
	movq	-8(%rdx,%r15,8), %r14
	movl	$8, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB0_23
	jmp	.LBB0_24
.LBB0_15:
	movq	%r11, %rax
	negq	%rax
	shlq	$7, %rax
	addq	%rdx, %rax
	leaq	-16(%r11), %rcx
	andq	%rsi, %rcx
	movdqu	(%rdx,%rcx), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %esi
	movdqu	(%rdx,%r11), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r8d
	movw	$31, %r9w
	bsrw	%si, %r9w
	xorl	$15, %r9d
	orl	$65536, %r8d
	rep		bsfl	%r8d, %r8d
	addl	%r9d, %r8d
	movb	$-128, %sil
	cmpw	$15, %r8w
	ja	.LBB0_17
	incq	200(%rbx)
	movb	$-1, %sil
.LBB0_17:
	movb	%sil, (%rdx,%r11)
	movb	%sil, 16(%rdx,%rcx)
	decq	208(%rbx)
	movq	-112(%rax), %rcx
	cmpq	$2, %rcx
	jne	.LBB0_18
.LBB0_19:
	movq	1440(%rbx), %r14
	leaq	1(%r14), %rax
	movq	%rax, 1440(%rbx)
	movw	$256, 136(%rsp)
	movq	$1, 56(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %xmm0
	movups	%xmm0, 64(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %r15
	movq	$1, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 128(%rsp)
	movb	$1, 138(%rsp)
	movq	$0, 80(%rsp)
	movb	$2, 112(%rsp)
	leaq	56(%rsp), %rdx
	movq	%r14, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	16(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	24(%rsp), %rax
	movq	%r14, (%rax)
	movq	$1, 32(%rsp)
	movq	$0, 56(%rsp)
	movq	$8, 64(%rsp)
	movq	$0, 72(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.36(%rip), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.36+16(%rip), %xmm1
	movups	%xmm1, 96(%rsp)
	movq	$0, 112(%rsp)
	movq	$8, 120(%rsp)
	movq	$0, 128(%rsp)
	movups	%xmm0, 136(%rsp)
	movups	%xmm1, 152(%rsp)
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_21
	decq	%rax
	movq	%rax, 32(%rsp)
.LBB0_21:
	movq	40(%rsp), %rax
	movq	8(%rax), %r15
	imulq	$304, %r14, %r12
	leaq	(%r15,%r12), %rdi
	addq	$88, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	56(%rsp), %xmm0
	movdqu	72(%rsp), %xmm1
	movdqu	88(%rsp), %xmm2
	movdqu	104(%rsp), %xmm3
	movups	120(%rsp), %xmm4
	movups	136(%rsp), %xmm5
	movups	152(%rsp), %xmm6
	movups	%xmm6, 184(%r15,%r12)
	movups	%xmm5, 168(%r15,%r12)
	movups	%xmm4, 152(%r15,%r12)
	movdqu	%xmm3, 136(%r15,%r12)
	movdqu	%xmm2, 120(%r15,%r12)
	movdqu	%xmm1, 104(%r15,%r12)
	movdqu	%xmm0, 88(%r15,%r12)
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_24
.LBB0_23:
	movq	24(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB0_24:
	leaq	896(%rbx), %rdi
	movq	%r14, %rsi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_26
	movq	%r14, 56(%rsp)
	leaq	16(%rsp), %rdi
	leaq	56(%rsp), %rcx
	leaq	12(%rsp), %r8
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::GlobalTrigger::trigger_internal@GOTPCREL(%rip)
.LBB0_26:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rsi
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	addq	$168, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB0_27:
	retq
.LBB0_18:
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	-8(%rax), %rdx
	movq	%rdx, 160(%rsp)
	movups	-24(%rax), %xmm0
	movups	%xmm0, 144(%rsp)
	movups	-40(%rax), %xmm0
	movups	%xmm0, 128(%rsp)
	movdqu	-104(%rax), %xmm0
	movdqu	-88(%rax), %xmm1
	movdqu	-72(%rax), %xmm2
	movdqu	-56(%rax), %xmm3
	movdqu	%xmm3, 112(%rsp)
	movdqu	%xmm2, 96(%rsp)
	movdqu	%xmm1, 80(%rsp)
	movdqu	%xmm0, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	56(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r14
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB0_23
	jmp	.LBB0_24
.Lfunc_end0:
	.size	core::ops::function::FnOnce::call_once, .Lfunc_end0-core::ops::function::FnOnce::call_once
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>,@function
core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_2:
	movq	8(%rbx), %r14
	movq	16(%rbx), %r12
	testq	%r12, %r12
	je	.LBB1_7
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r13
	movq	%r14, %r15
	jmp	.LBB1_4
	.p2align	4
.LBB1_6:
	addq	$32, %r15
	decq	%r12
	je	.LBB1_7
.LBB1_4:
	movq	(%r15), %rax
	lock		decq	(%rax)
	jne	.LBB1_6
	#MEMBARRIER
	movq	%r15, %rdi
	callq	*%r13
	jmp	.LBB1_6
.LBB1_7:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_9
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_9:
	movq	88(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_11
	movq	80(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_11:
	movq	64(%rbx), %r14
	movq	72(%rbx), %r12
	testq	%r12, %r12
	je	.LBB1_16
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r13
	movq	%r14, %r15
	jmp	.LBB1_13
	.p2align	4
.LBB1_15:
	addq	$32, %r15
	decq	%r12
	je	.LBB1_16
.LBB1_13:
	movq	(%r15), %rax
	lock		decq	(%rax)
	jne	.LBB1_15
	#MEMBARRIER
	movq	%r15, %rdi
	callq	*%r13
	jmp	.LBB1_15
.LBB1_16:
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_17
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_17:
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	.cfi_endproc

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::finish_grow","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::finish_grow,@function
alloc::raw_vec::RawVecInner<A>::finish_grow:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r15
	movq	%rdx, %r8
	movq	%rdi, %rbx
	leaq	(%r15,%r9), %rdx
	decq	%rdx
	movq	%r15, %rax
	negq	%rax
	andq	%rdx, %rax
	mulq	%rcx
	movq	%rax, %r14
	seto	%al
	movabsq	$-9223372036854775808, %rcx
	subq	%r15, %rcx
	cmpq	%rcx, %r14
	seta	%cl
	orb	%al, %cl
	movl	$1, %r12d
	je	.LBB2_2
	movl	$8, %eax
	xorl	%r14d, %r14d
	jmp	.LBB2_10
.LBB2_2:
	testq	%rsi, %rsi
	je	.LBB2_4
	imulq	%rsi, %r9
	movq	%r8, %rdi
	movq	%r9, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB2_6
	jmp	.LBB2_9
.LBB2_4:
	testq	%r14, %r14
	je	.LBB2_5
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB2_6
.LBB2_9:
	movq	%r15, 8(%rbx)
	movl	$16, %eax
	jmp	.LBB2_10
.LBB2_5:
	movq	%r15, %rax
.LBB2_6:
	movq	%rax, 8(%rbx)
	movl	$16, %eax
	xorl	%r12d, %r12d
.LBB2_10:
	movq	%r14, (%rbx,%rax)
	movq	%r12, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	alloc::raw_vec::RawVecInner<A>::finish_grow, .Lfunc_end2-alloc::raw_vec::RawVecInner<A>::finish_grow
	.cfi_endproc

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle,@function
alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB3_1
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %r14
	cmpq	%r14, %rsi
	cmovaq	%rsi, %r14
	xorl	%ecx, %ecx
	cmpq	$1, %r9
	sete	%cl
	leaq	4(,%rcx,4), %rcx
	cmpq	%rcx, %r14
	cmovbeq	%rcx, %r14
	movq	8(%rdi), %rdx
	movq	%rsp, %rdi
	movq	%rax, %rsi
	movq	%r14, %rcx
	callq	alloc::raw_vec::RawVecInner<A>::finish_grow
	cmpl	$1, (%rsp)
	je	.LBB3_3
	movq	8(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:
	.cfi_def_cfa_offset 48
	xorl	%edi, %edi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB3_3:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end3:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end3-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.text.bevy_ecs::component::info::Components::register_component_inner,"ax",@progbits
	.p2align	4
	.type	bevy_ecs::component::info::Components::register_component_inner,@function
bevy_ecs::component::info::Components::register_component_inner:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$304, %rsp
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsp, %rdi
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
	leaq	1(%rbx), %rdx
	movq	16(%r14), %r15
	subq	%r15, %rdx
	jbe	.LBB4_1
	movq	(%r14), %rax
	subq	%r15, %rax
	movq	%r15, %rcx
	cmpq	%rax, %rdx
	ja	.LBB4_3
.LBB4_4:
	movq	8(%r14), %rax
	imulq	$304, %rcx, %rdx
	addq	%rax, %rdx
	movq	%rbx, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB4_5:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$304, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB4_5
	subq	%rdi, %rcx
	movq	%rcx, 16(%r14)
	imulq	$304, %rbx, %rcx
	leaq	(%rax,%rcx), %rbx
	cmpl	$2, (%rax,%rcx)
	jne	.LBB4_8
	jmp	.LBB4_12
.LBB4_1:
	movq	8(%r14), %rax
	imulq	$304, %rbx, %rcx
	leaq	(%rax,%rcx), %rbx
	cmpl	$2, (%rax,%rcx)
	je	.LBB4_12
.LBB4_8:
	leaq	88(%rbx), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movq	232(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_10
	movq	224(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_10:
	movq	200(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_12
	movq	208(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_12:
	movq	%rsp, %rsi
	movl	$304, %edx
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	addq	$304, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_3:
	.cfi_def_cfa_offset 336
	movl	$8, %ecx
	movl	$304, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%r14), %rcx
	jmp	.LBB4_4
.Lfunc_end4:
	.size	bevy_ecs::component::info::Components::register_component_inner, .Lfunc_end4-bevy_ecs::component::info::Components::register_component_inner
	.cfi_endproc

	.section	".text.<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter","ax",@progbits
	.p2align	4
	.type	<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter,@function
<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rsi), %r15
	movq	8(%rsi), %r12
	cmpq	%r12, %r15
	je	.LBB5_5
	movq	16(%rsi), %r13
	movq	(%r13), %rax
	movq	136(%rax), %rcx
	jmp	.LBB5_2
	.p2align	4
.LBB5_4:
	addq	$8, %r15
	cmpq	%r12, %r15
	je	.LBB5_5
.LBB5_2:
	movq	(%r15), %rbx
	cmpq	%rcx, %rbx
	jae	.LBB5_4
	movq	128(%rax), %rdx
	cmpq	$0, (%rdx,%rbx,8)
	je	.LBB5_4
	movq	%rdi, %rbp
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$32, %edi
	movl	$8, %esi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB5_18
	addq	$8, %r15
	movq	%rbx, (%rax)
	movq	$4, (%rsp)
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	cmpq	%r12, %r15
	movq	%rbp, %rcx
	je	.LBB5_16
	movl	$1, %ebx
	movq	%rsp, %rdi
.LBB5_9:
	movq	(%r13), %rdx
	movq	136(%rdx), %rsi
	jmp	.LBB5_10
	.p2align	4
.LBB5_12:
	addq	$8, %r15
	cmpq	%r12, %r15
	je	.LBB5_16
.LBB5_10:
	movq	(%r15), %r14
	cmpq	%rsi, %r14
	jae	.LBB5_12
	movq	128(%rdx), %r8
	cmpq	$0, (%r8,%r14,8)
	je	.LBB5_12
	cmpq	(%rsp), %rbx
	je	.LBB5_14
.LBB5_15:
	addq	$8, %r15
	movq	%r14, (%rax,%rbx,8)
	incq	%rbx
	movq	%rbx, 16(%rsp)
	cmpq	%r12, %r15
	jne	.LBB5_9
	jmp	.LBB5_16
.LBB5_14:
	movl	$1, %edx
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	%rsp, %rdi
	movq	%rbp, %rcx
	movq	8(%rsp), %rax
	jmp	.LBB5_15
.LBB5_5:
	movq	$0, (%rdi)
	movq	$8, 8(%rdi)
	movq	$0, 16(%rdi)
	jmp	.LBB5_17
.LBB5_16:
	movq	16(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	(%rsp), %rax
	movq	%rax, (%rcx)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rcx)
.LBB5_17:
	addq	$24, %rsp
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
.LBB5_18:
	.cfi_def_cfa_offset 80
	movl	$8, %edi
	movl	$32, %esi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end5:
	.size	<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter, .Lfunc_end5-<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter
	.cfi_endproc

	.section	".text.hashbrown::map::HashMap<K,V,S,A>::insert","ax",@progbits
	.p2align	4
	.type	hashbrown::map::HashMap<K,V,S,A>::insert,@function
hashbrown::map::HashMap<K,V,S,A>::insert:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	8(%rsi), %r14
	cmpq	$0, 16(%rdi)
	je	.LBB6_1
.LBB6_2:
	movq	(%rdi), %rax
	movq	8(%rdi), %r8
	movq	%r14, %rsi
	shrq	$57, %rsi
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$68, %xmm0, %xmm0
	leaq	-24(%rax), %r10
	movq	16(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %r11
	xorl	%ecx, %ecx
	pcmpeqd	%xmm1, %xmm1
	xorl	%r15d, %r15d
.LBB6_3:
	andq	%r8, %r14
	movdqu	(%rax,%r14), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r13d
	testl	%r13d, %r13d
	je	.LBB6_6
.LBB6_4:
	movq	%r15, %rbx
	rep		bsfl	%r13d, %ebp
	addq	%r14, %rbp
	andq	%r8, %rbp
	negq	%rbp
	leaq	(%rbp,%rbp,2), %rbp
	movq	8(%r10,%rbp,8), %r15
	xorq	%r11, %r15
	movq	%r11, %r12
	movq	(%r10,%rbp,8), %r11
	xorq	%rdx, %r11
	orq	%r15, %r11
	je	.LBB6_16
	leal	-1(%r13), %r11d
	andw	%r13w, %r11w
	movl	%r11d, %r13d
	movq	%rbx, %r15
	movq	%r12, %r11
	jne	.LBB6_4
	.p2align	4
.LBB6_6:
	cmpq	$1, %rcx
	je	.LBB6_10
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB6_8
	rep		bsfl	%r9d, %r9d
	addq	%r14, %r9
	andq	%r8, %r9
.LBB6_10:
	movq	%r11, %rbx
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB6_13
	movl	$1, %ecx
	movq	%rbx, %r11
	jmp	.LBB6_12
.LBB6_8:
	xorl	%ecx, %ecx
.LBB6_12:
	addq	%r15, %r14
	addq	$16, %r14
	addq	$16, %r15
	jmp	.LBB6_3
.LBB6_16:
	movq	8(%rsp), %rcx
	movq	%rcx, -8(%rax,%rbp,8)
	jmp	.LBB6_17
.LBB6_13:
	movzbl	(%rax,%r9), %r10d
	testb	%r10b, %r10b
	jns	.LBB6_14
.LBB6_15:
	andb	$1, %r10b
	movzbl	%r10b, %edx
	subq	%rdx, 16(%rdi)
	leaq	-16(%r9), %rdx
	andq	%r8, %rdx
	movb	%sil, (%rax,%r9)
	movb	%sil, 16(%rax,%rdx)
	incq	24(%rdi)
	negq	%r9
	leaq	(%r9,%r9,2), %rdx
	movq	16(%rsp), %rcx
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, -24(%rax,%rdx,8)
	movq	8(%rsp), %rcx
	movq	%rcx, -8(%rax,%rdx,8)
.LBB6_17:
	addq	$24, %rsp
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
.LBB6_1:
	.cfi_def_cfa_offset 80
	leaq	32(%rdi), %rdx
	movl	$1, %esi
	movq	%rdi, %rbx
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%rbx, %rdi
	jmp	.LBB6_2
.LBB6_14:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %r9d
	movzbl	(%rax,%r9), %r10d
	jmp	.LBB6_15
.Lfunc_end6:
	.size	hashbrown::map::HashMap<K,V,S,A>::insert, .Lfunc_end6-hashbrown::map::HashMap<K,V,S,A>::insert
	.cfi_endproc

	.section	.text.hashbrown::raw::RawTableInner::find_insert_slot,"ax",@progbits
	.p2align	4
	.type	hashbrown::raw::RawTableInner::find_insert_slot,@function
hashbrown::raw::RawTableInner::find_insert_slot:
	.cfi_startproc
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	je	.LBB7_1
.LBB7_3:
	rep		bsfl	%eax, %eax
	addq	%rdx, %rax
	andq	%rsi, %rax
	cmpb	$0, (%rdi,%rax)
	jns	.LBB7_4
	retq
.LBB7_1:
	movl	$16, %ecx
.LBB7_2:
	addq	%rcx, %rdx
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	jne	.LBB7_3
	jmp	.LBB7_2
.LBB7_4:
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	retq
.Lfunc_end7:
	.size	hashbrown::raw::RawTableInner::find_insert_slot, .Lfunc_end7-hashbrown::raw::RawTableInner::find_insert_slot
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
	.zero	16,64
	.section	.text.entity_remove,"ax",@progbits
	.globl	entity_remove
	.p2align	4
	.type	entity_remove,@function
entity_remove:
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
	subq	$328, %rsp
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %eax
	testl	%eax, %eax
	je	.LBB8_75
	movl	%eax, 228(%rsp)
	movabsq	$-9201308783928382931, %r15
	movl	20(%rdi), %eax
	movl	%eax, 20(%rsp)
	movl	24(%rdi), %r12d
	movq	8(%rdi), %rax
	movq	%rax, 32(%rsp)
	movq	%rdi, 320(%rsp)
	movq	(%rdi), %rbp
	leaq	56(%rbp), %r13
	leaq	1440(%rbp), %rax
	movq	%r13, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$0, 48(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
	leaq	608(%rbp), %rax
	movq	%rax, 88(%rsp)
	leaq	336(%rbp), %r14
	movq	632(%rbp), %rax
	movq	640(%rbp), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI8_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-6119538281253298280, %rbx
	movq	%r15, %rdi
	movq	%rbp, 8(%rsp)
.LBB8_2:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB8_5
.LBB8_3:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	movq	8(%rdx,%r9,8), %r10
	xorq	%r15, %r10
	movq	(%rdx,%r9,8), %r11
	xorq	%rbx, %r11
	orq	%r10, %r11
	je	.LBB8_39
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB8_3
	.p2align	4
.LBB8_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB8_7
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB8_2
.LBB8_39:
	movq	-8(%rax,%r9,8), %rbx
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_41
	jmp	.LBB8_42
.LBB8_7:
	movq	$0, 232(%rsp)
	movq	$8, 240(%rsp)
	movq	$0, 248(%rsp)
	cmpq	$0, 104(%rbp)
	je	.LBB8_16
	movq	80(%rbp), %rax
	movq	88(%rbp), %rcx
	leaq	-24(%rax), %r11
	xorl	%edx, %edx
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-9201308783928382931, %rdi
	movq	%r15, %r8
.LBB8_9:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB8_13
	movq	%r12, 24(%rsp)
.LBB8_11:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	%r11, %r12
	movq	8(%r11,%r10,8), %r11
	xorq	%rdi, %r11
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	movq	(%r12,%r10,8), %rbx
	xorq	%rdi, %rbx
	orq	%r11, %rbx
	je	.LBB8_15
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movabsq	$-6119538281253298280, %rbx
	movq	%rsi, %rdi
	movq	%r12, %r11
	movq	24(%rsp), %r12
	jne	.LBB8_11
.LBB8_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB8_16
	addq	%rdx, %r8
	addq	$16, %r8
	addq	$16, %rdx
	jmp	.LBB8_9
.LBB8_16:
	movzbl	152(%rbp), %eax
	movq	184(%rbp), %rax
	movq	192(%rbp), %rcx
	leaq	-128(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-9201308783928382931, %rdi
	movq	%r15, %r9
.LBB8_17:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB8_20
.LBB8_18:
	rep		bsfl	%r10d, %r8d
	addq	%r9, %r8
	andq	%rcx, %r8
	movq	%r8, %r11
	shlq	$7, %r11
	movq	%rbx, %r15
	movq	%rdx, %rbx
	subq	%r11, %rbx
	movq	8(%rbx), %r11
	xorq	%rdi, %r11
	movq	(%rbx), %rbx
	xorq	%r15, %rbx
	orq	%r11, %rbx
	je	.LBB8_22
	leal	-1(%r10), %r8d
	andw	%r10w, %r8w
	movl	%r8d, %r10d
	movabsq	$-6119538281253298280, %rbx
	jne	.LBB8_18
.LBB8_20:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB8_26
	addq	%rsi, %r9
	addq	$16, %r9
	addq	$16, %rsi
	movabsq	$-6119538281253298280, %rbx
	jmp	.LBB8_17
.LBB8_15:
	movq	-8(%rax,%r10,8), %r15
	movl	$8, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	24(%rsp), %r12
	jmp	.LBB8_29
.LBB8_22:
	movq	%r8, %rdx
	negq	%rdx
	shlq	$7, %rdx
	addq	%rax, %rdx
	leaq	-16(%r8), %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movdqu	(%rax,%r8), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %edi
	movw	$31, %r9w
	bsrw	%cx, %r9w
	xorl	$15, %r9d
	orl	$65536, %edi
	rep		bsfl	%edi, %edi
	addl	%r9d, %edi
	movb	$-128, %cl
	cmpw	$15, %di
	ja	.LBB8_24
	incq	200(%rbp)
	movb	$-1, %cl
.LBB8_24:
	movb	%cl, (%rax,%r8)
	movb	%cl, 16(%rax,%rsi)
	decq	208(%rbp)
	movq	-112(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB8_25
.LBB8_26:
	movq	%r14, 40(%rsp)
	movq	1440(%rbp), %r15
	leaq	1(%r15), %rax
	movq	%rax, 1440(%rbp)
	movw	$256, 176(%rsp)
	movq	$1, 96(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %xmm0
	movups	%xmm0, 104(%rsp)
	movq	%rbp, %rbx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rbp
	movq	$4, 136(%rsp)
	movq	$4, 144(%rsp)
	movq	$0, 168(%rsp)
	movb	$1, 178(%rsp)
	movq	$0, 120(%rsp)
	movb	$2, 152(%rsp)
	leaq	96(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	48(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	56(%rsp), %rax
	movq	%r15, (%rax)
	movq	$1, 64(%rsp)
	movq	$0, 96(%rsp)
	movq	$8, 104(%rsp)
	movq	$0, 112(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.36(%rip), %xmm0
	movups	%xmm0, 120(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.36+16(%rip), %xmm1
	movups	%xmm1, 136(%rsp)
	movq	$0, 152(%rsp)
	movq	$8, 160(%rsp)
	movq	$0, 168(%rsp)
	movups	%xmm0, 176(%rsp)
	movups	%xmm1, 192(%rsp)
	movq	72(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	64(%rsp), %rax
	testq	%rax, %rax
	je	.LBB8_28
	decq	%rax
	movq	%rax, 64(%rsp)
.LBB8_28:
	movq	72(%rsp), %rax
	movq	8(%rax), %rbx
	imulq	$304, %r15, %r14
	leaq	(%rbx,%r14), %rdi
	addq	$88, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	128(%rsp), %xmm2
	movdqu	144(%rsp), %xmm3
	movups	160(%rsp), %xmm4
	movups	176(%rsp), %xmm5
	movups	192(%rsp), %xmm6
	movups	%xmm6, 184(%rbx,%r14)
	movups	%xmm5, 168(%rbx,%r14)
	movups	%xmm4, 152(%rbx,%r14)
	movdqu	%xmm3, 136(%rbx,%r14)
	movdqu	%xmm2, 120(%rbx,%r14)
	movdqu	%xmm1, 104(%rbx,%r14)
	movdqu	%xmm0, 88(%rbx,%r14)
	movq	8(%rsp), %rbp
	movq	40(%rsp), %r14
	jmp	.LBB8_29
.LBB8_25:
	movq	-8(%rdx), %rcx
	movq	%rcx, 200(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 184(%rsp)
	movups	-40(%rdx), %xmm0
	movups	%xmm0, 168(%rsp)
	movdqu	-104(%rdx), %xmm0
	movdqu	-88(%rdx), %xmm1
	movdqu	-72(%rdx), %xmm2
	movdqu	-56(%rdx), %xmm3
	movdqu	%xmm3, 152(%rsp)
	movdqu	%xmm2, 136(%rsp)
	movdqu	%xmm1, 120(%rsp)
	movdqu	%xmm0, 104(%rsp)
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r15
.LBB8_29:
	leaq	232(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	240(%rsp), %rax
	movq	%r15, (%rax)
	movq	$1, 248(%rsp)
	movq	624(%rbp), %rbx
	movq	72(%rsp), %r8
	movups	232(%rsp), %xmm0
	movaps	%xmm0, 256(%rsp)
	movq	$1, 272(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rsi
	leaq	104(%rsp), %rdi
	leaq	264(%rsp), %r9
	movl	$14, %edx
	movq	%r14, %rcx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpq	608(%rbp), %rbx
	jne	.LBB8_31
	movq	88(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_31:
	movq	616(%rbp), %rax
	leaq	(%rbx,%rbx,4), %rcx
	movq	128(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbx), %rax
	movq	%rax, 624(%rbp)
	movq	632(%rbp), %rax
	movq	640(%rbp), %rcx
	movq	%rcx, %rsi
	movabsq	$-9201308783928382931, %r15
	andq	%r15, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB8_32
.LBB8_34:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB8_35
.LBB8_36:
	movq	648(%rbp), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB8_38
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%rbp)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$64, (%rax,%rdx)
	movb	$64, 16(%rax,%rsi)
	incq	656(%rbp)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$-6119538281253298280, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r15, -16(%rax,%rcx,8)
	movq	%rbx, -8(%rax,%rcx,8)
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_42
.LBB8_41:
	movq	56(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_42:
	leaq	(%rbx,%rbx,4), %r15
	shlq	$3, %r15
	addq	616(%rbp), %r15
	leaq	248(%rbp), %rdx
	leaq	896(%rbp), %rbx
	leaq	96(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	100(%rsp), %r14d
	cmpl	%r12d, %r14d
	setne	%al
	andb	96(%rsp), %al
	cmpb	$1, %al
	jne	.LBB8_43
	movl	%r14d, %esi
	movzbl	104(%rsp), %eax
	movq	256(%rbp), %rcx
	movq	264(%rbp), %rdx
	cmpl	%r14d, %r12d
	movq	%rbx, 88(%rsp)
	jbe	.LBB8_45
	cmpq	%r12, %rdx
	jb	.LBB8_50
	jne	.LBB8_54
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_43:
	xorl	%eax, %eax
	jmp	.LBB8_145
.LBB8_45:
	cmpq	%rsi, %rdx
	jb	.LBB8_173
	cmpl	%r12d, %r14d
	jbe	.LBB8_174
	cmpq	%rsi, %rdx
	je	.LBB8_48
.LBB8_54:
	leaq	(%r12,%r12,4), %rbx
	shlq	$5, %rbx
	leaq	(%rsi,%rsi,4), %rbp
	shlq	$5, %rbp
	movl	148(%rcx,%rbx), %edi
	movl	148(%rcx,%rbp), %esi
	cmpl	%esi, %edi
	jne	.LBB8_56
	xorl	%edi, %edi
	addq	%rcx, %rbx
	addq	%rcx, %rbp
	testb	%al, %al
	jne	.LBB8_67
	jmp	.LBB8_71
.LBB8_56:
	movq	8(%rsp), %r8
	movq	416(%r8), %rdx
	movq	424(%r8), %r8
	cmpl	%esi, %edi
	jbe	.LBB8_57
	cmpq	%rdi, %r8
	jb	.LBB8_61
	jne	.LBB8_65
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_57:
	cmpq	%rsi, %r8
	jb	.LBB8_175
	cmpl	%edi, %esi
	jbe	.LBB8_176
	cmpq	%rsi, %r8
	je	.LBB8_60
.LBB8_65:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rdx,%rdi,8), %rdi
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rdx,%rsi,8), %rdx
	addq	%rcx, %rbx
	addq	%rcx, %rbp
	testb	%al, %al
	je	.LBB8_71
.LBB8_67:
	movq	8(%rsp), %rax
	movq	1408(%rax), %r12
	testq	%r12, %r12
	jne	.LBB8_68
	movq	1416(%rax), %r12
.LBB8_68:
	movq	(%r12), %rax
	movq	16(%r12), %r13
	subq	%r13, %rax
	cmpq	$11, %rax
	jbe	.LBB8_69
.LBB8_70:
	movq	8(%r12), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r13)
	movl	%r14d, 8(%rax,%r13)
	addq	$12, %r13
	movq	%r13, 16(%r12)
.LBB8_71:
	movq	%r15, 96(%rsp)
	leaq	104(%rsp), %r14
	movq	%rbx, 104(%rsp)
	movq	%rbp, 112(%rsp)
	movq	8(%rsp), %r12
	movq	%r12, 120(%rsp)
	movq	%rdi, 128(%rsp)
	movq	%rdx, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	32(%rsp), %r13
	movq	%r13, %rbp
	shrq	$32, %rbp
	testb	$-128, 152(%rbx)
	je	.LBB8_81
	movq	8(%r15), %rdx
	movq	%rdx, %rsi
	subq	24(%r15), %rsi
	jb	.LBB8_73
	movq	(%r15), %rax
	leaq	(%rax,%rsi,8), %rcx
	movq	%rax, 232(%rsp)
	movq	%rcx, 240(%rsp)
	movq	%r14, 248(%rsp)
	leaq	48(%rsp), %rdi
	leaq	232(%rsp), %rsi
	callq	<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter
	movl	%r13d, 208(%rsp)
	movl	%ebp, 212(%rsp)
	movq	56(%rsp), %r15
	movq	64(%rsp), %rax
	movq	%r15, 256(%rsp)
	movq	%rax, 264(%rsp)
	movl	$2, %esi
	movq	88(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_78
	movq	$2, 288(%rsp)
	movq	208(%rsp), %r8
	leaq	256(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	288(%rsp), %r9
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_78:
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_80
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_80:
	movq	96(%rsp), %r15
	movq	104(%rsp), %rbx
.LBB8_81:
	movq	8(%r15), %rdx
	movq	24(%r15), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	jb	.LBB8_73
	je	.LBB8_94
	movl	152(%rbx), %eax
	andl	$4, %eax
	je	.LBB8_94
	movq	(%r15), %r12
	leaq	(%r12,%rsi,8), %r13
	movzbl	144(%rsp), %r15d
	leaq	48(%rsp), %rsi
.LBB8_85:
	movq	104(%rsp), %rbx
	movq	136(%rbx), %rax
	jmp	.LBB8_86
	.p2align	4
.LBB8_88:
	addq	$8, %r12
	cmpq	%r13, %r12
	je	.LBB8_93
.LBB8_86:
	movq	(%r12), %rcx
	cmpq	%rax, %rcx
	jae	.LBB8_88
	movq	128(%rbx), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	je	.LBB8_88
	movq	8(%rsp), %rdi
	movq	64(%rdi), %rax
	imulq	$304, %rcx, %rdx
	movq	280(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_91
	movq	32(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movb	%r15b, 64(%rsp)
	movq	%rsi, %rbx
	callq	*%rax
	movq	%rbx, %rsi
.LBB8_91:
	addq	$8, %r12
	cmpq	%r13, %r12
	jne	.LBB8_85
	movq	104(%rsp), %rbx
.LBB8_93:
	movq	8(%rsp), %r12
	movq	32(%rsp), %r13
.LBB8_94:
	testb	$1, 153(%rbx)
	movq	96(%rsp), %rax
	je	.LBB8_101
	movq	8(%rax), %rdx
	movq	%rdx, %rsi
	subq	24(%rax), %rsi
	jb	.LBB8_73
	movq	(%rax), %rax
	leaq	(%rax,%rsi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%r14, 272(%rsp)
	leaq	48(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	<alloc::vec::Vec<T> as alloc::vec::spec_from_iter::SpecFromIter<T,I>>::from_iter
	movl	%r13d, 216(%rsp)
	movl	%ebp, 220(%rsp)
	movq	56(%rsp), %r15
	movq	64(%rsp), %rax
	movq	%r15, 288(%rsp)
	movq	%rax, 296(%rsp)
	movl	$3, %esi
	movq	88(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_98
	movq	$3, 208(%rsp)
	movq	216(%rsp), %r8
	leaq	288(%rsp), %rdi
	leaq	216(%rsp), %rcx
	leaq	208(%rsp), %r9
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_98:
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_100
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_100:
	movq	96(%rsp), %rax
	movq	104(%rsp), %rbx
.LBB8_101:
	movq	8(%rax), %rdx
	movq	24(%rax), %rcx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	jb	.LBB8_73
	je	.LBB8_112
	movl	152(%rbx), %ecx
	andl	$8, %ecx
	je	.LBB8_112
	movq	(%rax), %rbx
	leaq	(%rbx,%rsi,8), %r14
	leaq	48(%rsp), %r15
.LBB8_105:
	movq	104(%rsp), %rax
	movq	136(%rax), %rcx
	jmp	.LBB8_106
	.p2align	4
.LBB8_108:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB8_112
.LBB8_106:
	movq	(%rbx), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB8_108
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.LBB8_108
	movq	64(%r12), %rax
	imulq	$304, %rdx, %rcx
	movq	288(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB8_111
	movq	%r13, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*%rax
.LBB8_111:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	.LBB8_105
.LBB8_112:
	movq	96(%rsp), %rax
	movq	120(%rsp), %rbx
	leaq	336(%rbx), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, %rsi
	subq	24(%rax), %rsi
	jb	.LBB8_73
	je	.LBB8_177
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	64(%rbx), %rax
	imulq	$304, %rsi, %rcx
	cmpb	$0, 80(%rax,%rcx)
	je	.LBB8_118
	movq	24(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_178
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB8_119
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_118:
	movq	128(%rsp), %rdi
	movl	20(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::take_component@GOTPCREL(%rip)
.LBB8_119:
	movq	96(%rsp), %rcx
	movq	8(%rcx), %rdx
	movq	24(%rcx), %rsi
	movq	%rdx, %r15
	subq	%rsi, %r15
	jb	.LBB8_179
	movq	%rbp, 280(%rsp)
	movd	(%rax), %xmm0
	movd	%xmm0, 224(%rsp)
	jne	.LBB8_121
.LBB8_125:
	movq	104(%rsp), %rcx
	movl	228(%rsp), %r9d
	movl	%r9d, %edi
	notl	%edi
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB8_180
	decq	%rsi
	movq	80(%rcx), %rax
	movq	%rdi, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r8
	shlq	$4, %r8
	movups	(%rax,%r8), %xmm0
	movups	%xmm0, (%rax,%rdx)
	movq	%rsi, 88(%rcx)
	cmpq	%rdi, %rsi
	movq	8(%rsp), %r12
	je	.LBB8_133
	jbe	.LBB8_181
	addq	%rdx, %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB8_133
	notl	%ecx
	cmpq	%rcx, 16(%rbx)
	jbe	.LBB8_182
	movl	4(%rax), %edx
	leaq	(%rcx,%rcx,2), %rax
	shlq	$3, %rax
	addq	8(%rbx), %rax
	cmpl	%edx, 16(%rax)
	jne	.LBB8_182
	cmpl	$0, (%rax)
	je	.LBB8_182
	movl	%r9d, (%rax)
.LBB8_133:
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_146
	movq	136(%rsp), %rcx
	leaq	48(%rsp), %rdi
	movl	20(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movq	112(%rsp), %r15
	movl	56(%rsp), %ebp
	movq	88(%r15), %r14
	cmpq	72(%r15), %r14
	jne	.LBB8_136
	leaq	72(%r15), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_136:
	movq	80(%r15), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movq	280(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%r14), %rax
	movq	%rax, 88(%r15)
	movl	144(%r15), %ecx
	movl	148(%r15), %edx
	movl	48(%rsp), %eax
	testl	%eax, %eax
	je	.LBB8_143
	notl	%eax
	cmpq	%rax, 16(%rbx)
	jbe	.LBB8_149
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	8(%rbx), %rsi
	movl	16(%rsi), %eax
	cmpl	52(%rsp), %eax
	jne	.LBB8_149
	movl	(%rsi), %edi
	testl	%edi, %edi
	je	.LBB8_149
	movl	8(%rsi), %eax
	movl	20(%rsp), %r8d
	movl	%r8d, 4(%rsi)
	movq	264(%rbx), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB8_150
	movq	256(%rbx), %r8
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	88(%r8,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB8_151
	addq	%r8, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
	shlq	$4, %rdi
	movl	20(%rsp), %esi
	movl	%esi, 8(%rax,%rdi)
.LBB8_143:
	movq	8(%rsp), %r12
	movq	32(%rsp), %rsi
	jmp	.LBB8_144
.LBB8_121:
	movq	(%rcx), %r12
	shlq	$3, %r15
	leaq	824(%rbx), %rax
	movq	%rax, 312(%rsp)
	leaq	848(%rbx), %rax
	movq	%rax, 304(%rsp)
	xorl	%r14d, %r14d
	movq	%r15, 88(%rsp)
	movq	%r12, 40(%rsp)
	jmp	.LBB8_122
.LBB8_171:
	movq	%rax, %rdi
	movq	32(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	.p2align	4
.LBB8_124:
	addq	$8, %r14
	cmpq	%r14, %r15
	je	.LBB8_125
.LBB8_122:
	movq	(%r12,%r14), %rbp
	movq	104(%rsp), %rax
	cmpq	136(%rax), %rbp
	jae	.LBB8_124
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rbp,8)
	je	.LBB8_124
	movq	888(%rbx), %r13
	movq	%rbp, %r12
	subq	%r13, %r12
	jae	.LBB8_156
	movq	880(%rbx), %rax
	movq	(%rax,%rbp,8), %rax
	testq	%rax, %rax
	je	.LBB8_154
	notq	%rax
	leaq	(%rax,%rax,8), %r15
	jmp	.LBB8_165
.LBB8_156:
	movq	840(%rbx), %r15
	movq	872(%rbx), %rax
	incq	%r12
	subq	%r13, %rax
	cmpq	%rax, %r12
	ja	.LBB8_157
.LBB8_158:
	leaq	(,%r13,8), %rdi
	addq	880(%rbx), %rdi
	leaq	(,%r12,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%r12, %r13
	movq	%r13, 888(%rbx)
	cmpq	%r13, %rbp
	jb	.LBB8_160
	jmp	.LBB8_183
.LBB8_154:
	movq	840(%rbx), %r15
	cmpq	%r13, %rbp
	jae	.LBB8_183
.LBB8_160:
	movq	%r15, %rax
	notq	%rax
	movq	880(%rbx), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	864(%rbx), %r12
	cmpq	848(%rbx), %r12
	jne	.LBB8_162
	movq	304(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_162:
	movq	856(%rbx), %rax
	movq	%rbp, (%rax,%r12,8)
	incq	%r12
	movq	%r12, 864(%rbx)
	movq	840(%rbx), %r12
	cmpq	824(%rbx), %r12
	jne	.LBB8_164
	movq	312(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_164:
	movq	832(%rbx), %rax
	leaq	(%r12,%r12,8), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	$8, 8(%rax,%rcx,8)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%rax,%rcx,8)
	movq	$0, 32(%rax,%rcx,8)
	movq	$8, 40(%rax,%rcx,8)
	movdqu	%xmm0, 48(%rax,%rcx,8)
	movq	$0, 64(%rax,%rcx,8)
	incq	%r12
	movq	%r12, 840(%rbx)
	leaq	(%r15,%r15,8), %r15
.LBB8_165:
	shlq	$3, %r15
	addq	832(%rbx), %r15
	movq	48(%r15), %r12
	movq	64(%r15), %r13
	cmpq	32(%r15), %r12
	jne	.LBB8_167
	leaq	32(%r15), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_167:
	movq	40(%r15), %rax
	movq	%r12, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%r13, 8(%rax,%rcx)
	incq	%r12
	movq	%r12, 48(%r15)
	incq	64(%r15)
	movq	104(%rsp), %rax
	cmpq	136(%rax), %rbp
	movq	88(%rsp), %r15
	movq	40(%rsp), %r12
	jae	.LBB8_124
	movq	128(%rax), %rcx
	movq	(%rcx,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.LBB8_124
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB8_124
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB8_171
	jmp	.LBB8_172
.LBB8_157:
	leaq	872(%rbx), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	888(%rbx), %r13
	jmp	.LBB8_158
.LBB8_146:
	movq	112(%rsp), %r15
	movq	88(%r15), %r14
	cmpq	72(%r15), %r14
	jne	.LBB8_148
	leaq	72(%r15), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_148:
	movq	80(%r15), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movq	280(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	20(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%r14, %rax
	incq	%rax
	movq	%rax, 88(%r15)
	movl	144(%r15), %ecx
	movl	148(%r15), %edx
.LBB8_144:
	notl	%r14d
	movq	8(%rbx), %rax
	notl	%esi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%r14d, (%rax,%rsi,8)
	movl	%ebp, 4(%rax,%rsi,8)
	movl	%ecx, 8(%rax,%rsi,8)
	movl	%edx, 12(%rax,%rsi,8)
	movq	320(%rsp), %rbx
	movl	%r14d, 16(%rbx)
	movl	%ebp, 20(%rbx)
	movl	%ecx, 24(%rbx)
	movl	%edx, 28(%rbx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rsi
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::entity_access::world_mut::EntityWorldMut::update_location@GOTPCREL(%rip)
	movl	$1, %eax
	movss	224(%rsp), %xmm0
.LBB8_145:
	movl	%eax, 96(%rsp)
	movss	%xmm0, 100(%rsp)
	leaq	96(%rsp), %rax
	#APP
	#NO_APP
	movl	96(%rsp), %eax
	movss	100(%rsp), %xmm0
	addq	$328, %rsp
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
.LBB8_73:
	.cfi_def_cfa_offset 384
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rcx
	xorl	%edi, %edi
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.LBB8_75:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rsi
	callq	*bevy_ecs::world::entity_access::world_mut::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB8_179:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rcx
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.LBB8_177:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_180:
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB8_172:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_32:
	movl	$16, %edi
.LBB8_33:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB8_34
	jmp	.LBB8_33
.LBB8_35:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB8_36
.LBB8_50:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_173:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.28(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_69:
	movq	%rdx, 24(%rsp)
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rdi, 40(%rsp)
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rdi
	jmp	.LBB8_70
.LBB8_178:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_38:
	leaq	632(%rbp), %rdi
	leaq	664(%rbp), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%r15, %rdx
	movq	632(%rbp), %r15
	movq	8(%rsp), %rax
	movq	640(%rax), %rbp
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%r15,%rax), %ecx
	andl	$1, %ecx
	movq	8(%rsp), %rdx
	subq	%rcx, 648(%rdx)
	leaq	-16(%rax), %rcx
	andq	%rbp, %rcx
	movq	8(%rsp), %rbp
	movb	$64, (%r15,%rax)
	movb	$64, 16(%r15,%rcx)
	incq	656(%rbp)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-6119538281253298280, %rcx
	movq	%rcx, -24(%r15,%rax,8)
	movabsq	$-9201308783928382931, %rcx
	movq	%rcx, -16(%r15,%rax,8)
	movq	%rbx, -8(%r15,%rax,8)
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_41
	jmp	.LBB8_42
.LBB8_61:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_175:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_183:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_149:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_182:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_174:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_48:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_181:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_150:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_151:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_176:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_60:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end8:
	.size	entity_remove, .Lfunc_end8-entity_remove
	.cfi_endproc

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"i\000\000\000\000\000\000\000\300\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/world/entity_access/world_mut.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 116

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"s\000\000\000\000\000\000\000\255\000\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"s\000\000\000\000\000\000\000T\004\000\000&\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"s\000\000\000\000\000\000\000V\004\000\000&\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"s\000\000\000\000\000\000\000F\004\000\000I\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.7
	.asciz	"a\000\000\000\000\000\000\000\256\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	-6119538281253298280
	.quad	-9201308783928382931
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/bundle/remove.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 100

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"c\000\000\000\000\000\000\000\347\000\000\000G\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"c\000\000\000\000\000\000\000\020\001\000\000K\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"c\000\000\000\000\000\000\000\033\001\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000S\002\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"c\000\000\000\000\000\000\000\331\000\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"h\000\000\000\000\000\000\000R\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.ascii	"mid > len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 9

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.22
	.asciz	"g\000\000\000\000\000\000\000\020\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.22
	.asciz	"g\000\000\000\000\000\000\000\021\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.22
	.asciz	"g\000\000\000\000\000\000\000\021\003\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.22
	.asciz	"g\000\000\000\000\000\000\000\r\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.22
	.asciz	"g\000\000\000\000\000\000\000\016\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000q\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000n\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000o\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"_\000\000\000\000\000\000\000\177\002\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.quad	-8962557695724031055
	.quad	167411420395417202
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.36,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.35
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.asciz	"examples/entity_take.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.37
	.asciz	"\027\000\000\000\000\000\000\000\f\000\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 24

	.ident	"rustc version 1.93.0-nightly (82ae0ee64 2025-10-31)"
	.section	".note.GNU-stack","",@progbits

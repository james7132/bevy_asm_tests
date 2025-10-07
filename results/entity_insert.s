	.file	"entity_insert.751030cc89090919-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,15
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
	movabsq	$2171715549804139775, %rax
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
	movabsq	$3563989512513453390, %rcx
	je	.LBB0_9
	movq	80(%rbx), %rdx
	movq	88(%rbx), %rsi
	leaq	-24(%rdx), %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$2171715549804139775, %r10
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
	leaq	-112(%rdx), %r9
	xorl	%r10d, %r10d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$2171715549804139775, %r11
.LBB0_10:
	andq	%rsi, %rax
	movdqu	(%rdx,%rax), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r14d
	testl	%r14d, %r14d
	je	.LBB0_13
.LBB0_11:
	rep		bsfl	%r14d, %r15d
	addq	%rax, %r15
	andq	%rsi, %r15
	movq	%r15, %r8
	negq	%r8
	imulq	$112, %r8, %r8
	movq	8(%r9,%r8), %r12
	xorq	%r11, %r12
	movq	(%r9,%r8), %r13
	xorq	%rcx, %r13
	orq	%r12, %r13
	je	.LBB0_15
	leal	-1(%r14), %r8d
	andw	%r14w, %r8w
	movl	%r8d, %r14d
	jne	.LBB0_11
.LBB0_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB0_19
	addq	%r10, %rax
	addq	$16, %rax
	addq	$16, %r10
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
	addq	%rdx, %r8
	imulq	$112, %r15, %rcx
	sarq	$4, %rcx
	movabsq	$7905747460161236407, %rax
	imulq	%rcx, %rax
	leaq	-16(%rax), %rcx
	andq	%rsi, %rcx
	movdqu	(%rdx,%rcx), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %esi
	movdqu	(%rdx,%rax), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r9d
	movw	$31, %r10w
	bsrw	%si, %r10w
	xorl	$15, %r10d
	orl	$65536, %r9d
	rep		bsfl	%r9d, %r9d
	addl	%r10d, %r9d
	movb	$-128, %sil
	cmpw	$15, %r9w
	ja	.LBB0_17
	incq	200(%rbx)
	movb	$-1, %sil
.LBB0_17:
	movb	%sil, (%rdx,%rax)
	movb	%sil, 16(%rdx,%rcx)
	decq	208(%rbx)
	movq	-96(%r8), %rax
	cmpq	$2, %rax
	jne	.LBB0_18
.LBB0_19:
	movq	1440(%rbx), %r14
	leaq	1(%r14), %rax
	movq	%rax, 1440(%rbx)
	movw	$256, 120(%rsp)
	movq	$1, 56(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %xmm0
	movups	%xmm0, 64(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %r15
	movq	$1, 96(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 104(%rsp)
	movb	$1, 122(%rsp)
	movq	$0, 80(%rsp)
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
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9+16(%rip), %xmm1
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
	leaq	(%r14,%r14,8), %r12
	shlq	$5, %r12
	leaq	(%r15,%r12), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	56(%rsp), %xmm0
	movdqu	72(%rsp), %xmm1
	movdqu	88(%rsp), %xmm2
	movdqu	104(%rsp), %xmm3
	movups	120(%rsp), %xmm4
	movups	136(%rsp), %xmm5
	movups	152(%rsp), %xmm6
	movups	%xmm6, 168(%r15,%r12)
	movups	%xmm5, 152(%r15,%r12)
	movups	%xmm4, 136(%r15,%r12)
	movdqu	%xmm3, 120(%r15,%r12)
	movdqu	%xmm2, 104(%r15,%r12)
	movdqu	%xmm1, 88(%r15,%r12)
	movdqu	%xmm0, 72(%r15,%r12)
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rsi
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
	movq	-8(%r8), %rcx
	movq	%rcx, 144(%rsp)
	movups	-24(%r8), %xmm0
	movups	%xmm0, 128(%rsp)
	movdqu	-88(%r8), %xmm0
	movdqu	-72(%r8), %xmm1
	movdqu	-56(%r8), %xmm2
	movdqu	-40(%r8), %xmm3
	movdqu	%xmm3, 112(%rsp)
	movdqu	%xmm2, 96(%rsp)
	movdqu	%xmm1, 80(%rsp)
	movdqu	%xmm0, 64(%rsp)
	movq	%rax, 56(%rsp)
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

	.section	.text.unlikely.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::finish_grow,@function
alloc::raw_vec::finish_grow:
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
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$0, 8(%rcx)
	je	.LBB2_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB2_7
.LBB2_3:
	testq	%rbx, %rbx
	je	.LBB2_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB2_7
.LBB2_4:
	movq	%r15, %rax
.LBB2_7:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmovneq	%rax, %r15
	sete	%cl
	movq	%r15, 8(%r14)
	movq	%rbx, 16(%r14)
	movq	%rcx, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end2-alloc::raw_vec::finish_grow
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB3_1
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	leaq	(%rdi,%rdi), %r14
	cmpq	%r14, %rsi
	cmovaq	%rsi, %r14
	xorl	%eax, %eax
	cmpq	$1, %r8
	sete	%al
	leaq	4(,%rax,4), %rax
	cmpq	%rax, %r14
	cmovbeq	%rax, %r14
	leaq	(%rcx,%r8), %rdx
	decq	%rdx
	movq	%rcx, %rax
	negq	%rax
	andq	%rdx, %rax
	mulq	%r14
	seto	%dl
	movabsq	$-9223372036854775808, %rsi
	subq	%rcx, %rsi
	cmpq	%rsi, %rax
	seta	%sil
	orb	%dl, %sil
	je	.LBB3_3
.LBB3_1:
	xorl	%edi, %edi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB3_3:
	testq	%rdi, %rdi
	jne	.LBB3_5
	xorl	%edx, %edx
	jmp	.LBB3_6
.LBB3_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %rdi
	movq	%rdx, 32(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rcx, %rdx
.LBB3_6:
	movq	%rdx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB3_7
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_7:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
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
	subq	$288, %rsp
	.cfi_def_cfa_offset 320
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
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%rbx, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB4_5:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB4_5
	subq	%rdi, %rcx
	movq	%rcx, 16(%r14)
	jmp	.LBB4_7
.LBB4_1:
	movq	8(%r14), %rax
.LBB4_7:
	leaq	(%rbx,%rbx,8), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbx
	cmpl	$2, (%rax,%rcx)
	je	.LBB4_12
	leaq	72(%rbx), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_10
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_10:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_12
	movq	192(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_12:
	movq	%rsp, %rsi
	movl	$288, %edx
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	addq	$288, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_3:
	.cfi_def_cfa_offset 320
	movl	$8, %ecx
	movl	$288, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%r14), %rcx
	jmp	.LBB4_4
.Lfunc_end4:
	.size	bevy_ecs::component::info::Components::register_component_inner, .Lfunc_end4-bevy_ecs::component::info::Components::register_component_inner
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
	je	.LBB5_1
.LBB5_2:
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
.LBB5_3:
	andq	%r8, %r14
	movdqu	(%rax,%r14), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r13d
	testl	%r13d, %r13d
	je	.LBB5_6
.LBB5_4:
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
	je	.LBB5_16
	leal	-1(%r13), %r11d
	andw	%r13w, %r11w
	movl	%r11d, %r13d
	movq	%rbx, %r15
	movq	%r12, %r11
	jne	.LBB5_4
	.p2align	4
.LBB5_6:
	cmpq	$1, %rcx
	je	.LBB5_10
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB5_8
	rep		bsfl	%r9d, %r9d
	addq	%r14, %r9
	andq	%r8, %r9
.LBB5_10:
	movq	%r11, %rbx
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB5_13
	movl	$1, %ecx
	movq	%rbx, %r11
	jmp	.LBB5_12
.LBB5_8:
	xorl	%ecx, %ecx
.LBB5_12:
	addq	%r15, %r14
	addq	$16, %r14
	addq	$16, %r15
	jmp	.LBB5_3
.LBB5_16:
	movq	8(%rsp), %rcx
	movq	%rcx, -8(%rax,%rbp,8)
	jmp	.LBB5_17
.LBB5_13:
	movzbl	(%rax,%r9), %r10d
	testb	%r10b, %r10b
	jns	.LBB5_14
.LBB5_15:
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
.LBB5_1:
	.cfi_def_cfa_offset 80
	leaq	32(%rdi), %rdx
	movl	$1, %esi
	movq	%rdi, %rbx
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%rbx, %rdi
	jmp	.LBB5_2
.LBB5_14:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %r9d
	movzbl	(%rax,%r9), %r10d
	jmp	.LBB5_15
.Lfunc_end5:
	.size	hashbrown::map::HashMap<K,V,S,A>::insert, .Lfunc_end5-hashbrown::map::HashMap<K,V,S,A>::insert
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
	je	.LBB6_1
.LBB6_3:
	rep		bsfl	%eax, %eax
	addq	%rdx, %rax
	andq	%rsi, %rax
	cmpb	$0, (%rdi,%rax)
	jns	.LBB6_4
	retq
.LBB6_1:
	movl	$16, %ecx
.LBB6_2:
	addq	%rcx, %rdx
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	jne	.LBB6_3
	jmp	.LBB6_2
.LBB6_4:
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	retq
.Lfunc_end6:
	.size	hashbrown::raw::RawTableInner::find_insert_slot, .Lfunc_end6-hashbrown::raw::RawTableInner::find_insert_slot
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.zero	16,54
	.section	.text.entity_insert,"ax",@progbits
	.globl	entity_insert
	.p2align	4
	.type	entity_insert,@function
entity_insert:
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
	subq	$360, %rsp
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movss	%xmm0, 44(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 60(%rsp)
	testl	%eax, %eax
	je	.LBB7_149
	movabsq	$7906754238182838260, %r14
	movl	20(%r13), %ebp
	movl	24(%r13), %eax
	movq	%rax, 136(%rsp)
	movl	28(%r13), %eax
	movl	%eax, 76(%rsp)
	movq	(%r13), %rcx
	movl	1448(%rcx), %eax
	movl	%eax, 40(%rsp)
	leaq	56(%rcx), %r15
	leaq	1440(%rcx), %rax
	movq	%r15, 280(%rsp)
	movq	%rax, 288(%rsp)
	movq	$0, 256(%rsp)
	movq	$8, 264(%rsp)
	movq	$0, 272(%rsp)
	leaq	608(%rcx), %rax
	movq	%rax, 32(%rsp)
	leaq	336(%rcx), %r12
	movq	632(%rcx), %rax
	movq	%rcx, 24(%rsp)
	movq	640(%rcx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-5978922166113598399, %rbx
	movq	%r14, %rdi
	movq	%r12, 96(%rsp)
	movl	%ebp, 20(%rsp)
.LBB7_2:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB7_5
.LBB7_3:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	movq	8(%rdx,%r9,8), %r10
	xorq	%r14, %r10
	movq	(%rdx,%r9,8), %r11
	xorq	%rbx, %r11
	orq	%r10, %r11
	je	.LBB7_7
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB7_3
	.p2align	4
.LBB7_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_8
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB7_2
.LBB7_7:
	movq	-8(%rax,%r9,8), %rbp
	movq	256(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_36
.LBB7_35:
	movq	264(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_36:
	movq	24(%rsp), %r14
	movq	616(%r14), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rbx
	leaq	248(%r14), %rsi
	leaq	896(%r14), %r8
	movq	%rdi, 304(%rsp)
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r8, 312(%rsp)
	movq	136(%rsp), %r15
	movl	%r15d, %r9d
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
	cmpl	%r15d, %eax
	jne	.LBB7_39
	movq	256(%r14), %rcx
	leaq	(%r15,%r15,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %rbp
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB7_41
	movq	8(%rbp), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %r14
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r14
	jmp	.LBB7_42
.LBB7_39:
	movq	256(%r14), %rcx
	movl	%eax, %esi
	leaq	(%rsi,%rsi,4), %rsi
	shlq	$5, %rsi
	addq	%rcx, %rsi
	movq	%rsi, 32(%rsp)
	leaq	(%r15,%r15,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %rbp
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB7_43
	movq	8(%rbp), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %r14
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r14
	jmp	.LBB7_44
.LBB7_8:
	movq	$0, 320(%rsp)
	movq	$8, 328(%rsp)
	movq	$0, 336(%rsp)
	movq	24(%rsp), %r9
	cmpq	$0, 104(%r9)
	je	.LBB7_15
	movq	80(%r9), %rax
	movq	88(%r9), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$7906754238182838260, %rdi
	movq	%r14, %r8
.LBB7_10:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB7_13
.LBB7_11:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	8(%rdx,%r10,8), %r11
	xorq	%rdi, %r11
	movq	(%rdx,%r10,8), %r12
	xorq	%rbx, %r12
	orq	%r11, %r12
	je	.LBB7_21
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB7_11
.LBB7_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	movq	24(%rsp), %r9
	jne	.LBB7_15
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB7_10
.LBB7_41:
	xorl	%r14d, %r14d
.LBB7_42:
	movl	148(%rbp), %ecx
	leaq	(%rcx,%rcx,8), %rdi
	shlq	$3, %rdi
	movq	24(%rsp), %rcx
	addq	416(%rcx), %rdi
	movq	$0, 88(%rsp)
	movq	%rdi, 64(%rsp)
	testb	$1, %dl
	jne	.LBB7_48
	jmp	.LBB7_52
.LBB7_43:
	xorl	%r14d, %r14d
.LBB7_44:
	movl	148(%rbp), %esi
	movq	32(%rsp), %rcx
	movl	148(%rcx), %ecx
	leaq	(%rsi,%rsi,8), %rdi
	cmpl	%ecx, %esi
	jne	.LBB7_47
	shlq	$3, %rdi
	movq	24(%rsp), %rcx
	addq	416(%rcx), %rdi
	movl	$1, %ecx
	movq	%rcx, 88(%rsp)
	movq	%rdi, 64(%rsp)
	testb	$1, %dl
	jne	.LBB7_48
	jmp	.LBB7_52
.LBB7_47:
	movq	24(%rsp), %rsi
	movq	416(%rsi), %rsi
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rsi,%rcx,8), %rcx
	movq	%rcx, 296(%rsp)
	leaq	(%rsi,%rdi,8), %rdi
	movl	$2, %ecx
	movq	%rcx, 88(%rsp)
	movq	%rdi, 64(%rsp)
	testb	$1, %dl
	je	.LBB7_52
.LBB7_48:
	movq	24(%rsp), %rcx
	movq	1408(%rcx), %r15
	testq	%r15, %r15
	jne	.LBB7_50
	movq	1416(%rcx), %r15
.LBB7_50:
	movq	(%r15), %rcx
	movq	16(%r15), %r12
	subq	%r12, %rcx
	cmpq	$11, %rcx
	jbe	.LBB7_150
.LBB7_51:
	movq	8(%r15), %rcx
	leaq	core::ops::function::FnOnce::call_once(%rip), %rdx
	movq	%rdx, (%rcx,%r12)
	movl	%eax, 8(%rcx,%r12)
	addq	$12, %r12
	movq	%r12, 16(%r15)
.LBB7_52:
	movq	8(%r13), %r15
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 104(%rsp)
	movl	152(%rbp), %eax
	testb	%al, %al
	jns	.LBB7_56
	movl	%r15d, 112(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 116(%rsp)
	movq	40(%r14), %rax
	movq	48(%r14), %rcx
	subq	%rcx, %rax
	shlq	$3, %rcx
	addq	32(%r14), %rcx
	movq	%rcx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movl	$2, %esi
	movq	312(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_55
	movq	$2, 256(%rsp)
	movq	112(%rsp), %r8
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rcx
	leaq	256(%rsp), %r9
	movq	24(%rsp), %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_55:
	movl	152(%rbp), %eax
.LBB7_56:
	movq	%rbp, 80(%rsp)
	movq	%r13, 352(%rsp)
	testb	$4, %al
	je	.LBB7_62
	movq	40(%r14), %r13
	movq	48(%r14), %rbp
	cmpq	%r13, %rbp
	je	.LBB7_62
	movq	32(%r14), %rbx
	shlq	$3, %rbp
	shlq	$3, %r13
	leaq	144(%rsp), %r12
	jmp	.LBB7_60
	.p2align	4
.LBB7_59:
	addq	$8, %rbp
	cmpq	%rbp, %r13
	je	.LBB7_62
.LBB7_60:
	movq	(%rbx,%rbp), %rax
	movq	24(%rsp), %rdi
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_59
	movq	%r15, 144(%rsp)
	movq	%rax, 152(%rsp)
	movb	$0, 160(%rsp)
	movq	%r12, %rsi
	callq	*%rcx
	jmp	.LBB7_59
.LBB7_62:
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%r14, 48(%rsp)
	je	.LBB7_66
	movl	60(%rsp), %edi
	movl	%edi, %eax
	notl	%eax
	cmpl	$1, %ecx
	movq	80(%rsp), %r9
	jne	.LBB7_69
	movl	$4294967295, %r12d
	movq	80(%r9), %rcx
	movq	88(%r9), %rdx
	decq	%rdx
	cmpq	%rax, %rdx
	jne	.LBB7_71
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	8(%rcx,%rdx), %ecx
	movl	%ecx, 20(%rsp)
	movq	%rax, 88(%r9)
	jmp	.LBB7_73
.LBB7_66:
	movq	(%r14), %rax
	movq	304(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	64(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	jae	.LBB7_89
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_89
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	24(%rsi), %rbp
	jmp	.LBB7_90
.LBB7_69:
	movl	$4294967295, %r10d
	movq	24(%rsp), %rcx
	movq	256(%rcx), %rcx
	movq	%rcx, 88(%rsp)
	movq	80(%r9), %rcx
	movq	88(%r9), %r8
	decq	%r8
	cmpq	%rax, %r8
	jne	.LBB7_80
	movl	$4294967295, %r12d
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	8(%rcx,%rdx), %edx
	movq	%rax, 88(%r9)
	jmp	.LBB7_98
.LBB7_89:
	xorl	%ebp, %ebp
.LBB7_90:
	movq	24(%r14), %r13
	movq	16(%r14), %rcx
	movq	%rcx, 32(%rsp)
	movq	%r15, %rbx
	testb	%al, %al
	je	.LBB7_95
	movl	20(%rsp), %eax
	movl	%eax, %r12d
	notl	%r12d
	leaq	44(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	40(%rsp), %ecx
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	je	.LBB7_96
.LBB7_92:
	shlq	$4, %r13
	movq	32(%rsp), %rdi
	movl	20(%rsp), %ebp
	movq	96(%rsp), %r14
	movq	64(%rsp), %r15
	.p2align	4
.LBB7_93:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	40(%rsp), %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_93
	movq	80(%rsp), %rdx
	movq	48(%rsp), %r14
	jmp	.LBB7_124
.LBB7_15:
	movq	%r15, 48(%rsp)
	movzbl	152(%r9), %eax
	movq	184(%r9), %rax
	movq	192(%r9), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$7906754238182838260, %r8
	movq	%r14, %r9
.LBB7_16:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB7_19
.LBB7_17:
	movq	%rdi, %r15
	movq	%r13, %rbx
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rcx, %r11
	movq	%r11, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	movq	8(%rsi,%rdx), %r12
	xorq	%r8, %r12
	movq	(%rsi,%rdx), %r13
	movq	%r8, %rdi
	movabsq	$-5978922166113598399, %r8
	xorq	%r8, %r13
	orq	%r12, %r13
	je	.LBB7_22
	leal	-1(%r10), %edx
	andw	%r10w, %dx
	movl	%edx, %r10d
	movq	%rbx, %r13
	movq	%rdi, %r8
	movq	%r15, %rdi
	jne	.LBB7_17
.LBB7_19:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	movq	48(%rsp), %r15
	jne	.LBB7_25
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	jmp	.LBB7_16
.LBB7_71:
	shlq	$4, %rax
	movl	8(%rcx,%rax), %r8d
	movq	%rdx, %rsi
	shlq	$4, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	%xmm0, (%rcx,%rax)
	movl	(%rcx,%rax), %eax
	movq	%rdx, 88(%r9)
	testq	%rax, %rax
	movl	%r8d, 20(%rsp)
	je	.LBB7_73
	movq	24(%rsp), %rcx
	movq	8(%rcx), %rcx
	xorq	%r12, %rax
	leaq	(%rax,%rax,2), %rax
	movl	%edi, (%rcx,%rax,8)
.LBB7_73:
	movq	32(%rsp), %rdx
	movq	88(%rdx), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%rdx), %rbx
	jne	.LBB7_75
	leaq	72(%rdx), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	32(%rsp), %rdx
.LBB7_75:
	movq	80(%rdx), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	104(%rsp), %rsi
	movl	%esi, 4(%rax,%rcx)
	movq	%rdx, %rdi
	movl	20(%rsp), %edx
	movl	%edx, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%rdi)
	movl	144(%rdi), %esi
	movl	148(%rdi), %edi
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movl	%r15d, %ecx
	xorq	%r12, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%ebp, (%rax,%rcx,8)
	movl	%edx, 4(%rax,%rcx,8)
	movq	%rsi, 136(%rsp)
	movl	%esi, 8(%rax,%rcx,8)
	movl	%edi, 76(%rsp)
	movl	%edi, 12(%rax,%rcx,8)
	movq	(%r14), %rax
	movq	304(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	64(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	movl	%ebp, 60(%rsp)
	jae	.LBB7_82
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_82
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	24(%rsi), %rbp
	jmp	.LBB7_83
.LBB7_82:
	xorl	%ebp, %ebp
.LBB7_83:
	movq	24(%r14), %r13
	movq	16(%r14), %rcx
	movq	%rcx, 80(%rsp)
	movq	%r15, %rbx
	testb	%al, %al
	je	.LBB7_87
	movl	20(%rsp), %eax
	movl	%eax, %r12d
	notl	%r12d
	leaq	44(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	40(%rsp), %ecx
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	je	.LBB7_88
.LBB7_85:
	shlq	$4, %r13
	movq	80(%rsp), %rdi
	movl	20(%rsp), %ebp
	movq	96(%rsp), %r14
	movq	64(%rsp), %r15
	.p2align	4
.LBB7_86:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	40(%rsp), %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_86
	jmp	.LBB7_122
.LBB7_87:
	movl	20(%rsp), %eax
	movl	%eax, %r12d
	notl	%r12d
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	44(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	40(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	jne	.LBB7_85
.LBB7_88:
	movl	20(%rsp), %ebp
	jmp	.LBB7_123
.LBB7_95:
	movl	20(%rsp), %eax
	movl	%eax, %r12d
	notl	%r12d
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	44(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	40(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	jne	.LBB7_92
.LBB7_96:
	movq	80(%rsp), %rdx
	movl	20(%rsp), %ebp
	jmp	.LBB7_124
.LBB7_80:
	shlq	$4, %rax
	movl	8(%rcx,%rax), %edx
	movq	%r8, %rsi
	shlq	$4, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	%xmm0, (%rcx,%rax)
	movl	(%rcx,%rax), %eax
	movq	%r8, 88(%r9)
	testq	%rax, %rax
	je	.LBB7_97
	movq	24(%rsp), %rcx
	movq	8(%rcx), %rcx
	movl	$4294967295, %r12d
	xorq	%r10, %rax
	leaq	(%rax,%rax,2), %rax
	movl	%edi, (%rcx,%rax,8)
	jmp	.LBB7_98
.LBB7_21:
	movq	-8(%rax,%r10,8), %rbp
	movl	$8, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB7_29
.LBB7_22:
	addq	%rax, %rdx
	imulq	$112, %r11, %rdi
	sarq	$4, %rdi
	movabsq	$7905747460161236407, %rsi
	imulq	%rdi, %rsi
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movdqu	(%rax,%rsi), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r8d
	movw	$31, %r9w
	bsrw	%cx, %r9w
	xorl	$15, %r9d
	orl	$65536, %r8d
	rep		bsfl	%r8d, %r8d
	addl	%r9d, %r8d
	movb	$-128, %cl
	cmpw	$15, %r8w
	movq	48(%rsp), %r15
	ja	.LBB7_24
	movq	24(%rsp), %rcx
	incq	200(%rcx)
	movb	$-1, %cl
.LBB7_24:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	movq	24(%rsp), %rax
	decq	208(%rax)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	movq	%rbx, %r13
	jne	.LBB7_28
.LBB7_25:
	movq	%r13, %rbx
	movq	24(%rsp), %r14
	movq	1440(%r14), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%r14)
	movw	$256, 208(%rsp)
	movq	$1, 144(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %xmm0
	movups	%xmm0, 152(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %r12
	movq	$4, 184(%rsp)
	movq	$4, 192(%rsp)
	movq	$0, 200(%rsp)
	movb	$1, 210(%rsp)
	movq	$0, 168(%rsp)
	leaq	144(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	256(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	264(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 272(%rsp)
	movq	$0, 144(%rsp)
	movq	$8, 152(%rsp)
	movq	$0, 160(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %xmm0
	movups	%xmm0, 168(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9+16(%rip), %xmm1
	movups	%xmm1, 184(%rsp)
	movq	$0, 200(%rsp)
	movq	$8, 208(%rsp)
	movq	$0, 216(%rsp)
	movups	%xmm0, 224(%rsp)
	movups	%xmm1, 240(%rsp)
	movq	280(%rsp), %rdi
	leaq	144(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	272(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_27
	decq	%rax
	movq	%rax, 272(%rsp)
.LBB7_27:
	movq	280(%rsp), %rax
	movq	8(%rax), %r12
	leaq	(,%rbp,8), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
	leaq	(%r12,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	144(%rsp), %xmm0
	movdqu	160(%rsp), %xmm1
	movdqu	176(%rsp), %xmm2
	movdqu	192(%rsp), %xmm3
	movups	208(%rsp), %xmm4
	movups	224(%rsp), %xmm5
	movups	240(%rsp), %xmm6
	movups	%xmm6, 168(%r12,%r13)
	movups	%xmm5, 152(%r12,%r13)
	movups	%xmm4, 136(%r12,%r13)
	movdqu	%xmm3, 120(%r12,%r13)
	movdqu	%xmm2, 104(%r12,%r13)
	movdqu	%xmm1, 88(%r12,%r13)
	movdqu	%xmm0, 72(%r12,%r13)
	movq	%rbx, %r13
	movabsq	$7906754238182838260, %r14
	jmp	.LBB7_29
.LBB7_28:
	movq	-8(%rdx), %rcx
	movq	%rcx, 232(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 216(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 200(%rsp)
	movdqu	%xmm2, 184(%rsp)
	movdqu	%xmm1, 168(%rsp)
	movdqu	%xmm0, 152(%rsp)
	movq	%rax, 144(%rsp)
	leaq	144(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB7_29:
	leaq	320(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	328(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 336(%rsp)
	movq	24(%rsp), %rbx
	movq	624(%rbx), %rbp
	movq	280(%rsp), %r8
	movups	320(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	$1, 128(%rsp)
	movq	%rbp, (%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rsi
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %r9
	movl	$16, %edx
	movq	96(%rsp), %r12
	movq	%r12, %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	cmpq	608(%rbx), %rbp
	jne	.LBB7_31
	movq	32(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB7_31:
	movq	24(%rsp), %rsi
	movq	616(%rsi), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	movq	176(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	144(%rsp), %xmm0
	movdqu	160(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%rsi)
	movq	632(%rsi), %rax
	movq	640(%rsi), %rcx
	movq	%rcx, %rsi
	andq	%r14, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB7_151
.LBB7_32:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB7_153
.LBB7_33:
	movq	24(%rsp), %rbx
	movq	648(%rbx), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB7_154
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$54, (%rax,%rdx)
	movb	$54, 16(%rax,%rsi)
	incq	656(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$-5978922166113598399, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r14, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	movq	256(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_35
	jmp	.LBB7_36
.LBB7_97:
	movl	$4294967295, %r12d
.LBB7_98:
	leaq	144(%rsp), %rdi
	movq	64(%rsp), %rsi
	movl	%edx, %r13d
	movq	296(%rsp), %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	152(%rsp), %eax
	movl	%eax, 20(%rsp)
	movq	32(%rsp), %rdx
	movq	88(%rdx), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%rdx), %rbx
	jne	.LBB7_100
	leaq	72(%rdx), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	32(%rsp), %rdx
.LBB7_100:
	movq	80(%rdx), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	104(%rsp), %rsi
	movl	%esi, 4(%rax,%rcx)
	movq	%rdx, %rdi
	movl	20(%rsp), %edx
	movl	%edx, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%rdi)
	movl	144(%rdi), %esi
	movl	148(%rdi), %edi
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movl	%r15d, %ecx
	xorq	%r12, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%ebp, (%rax,%rcx,8)
	movl	%edx, 4(%rax,%rcx,8)
	movq	%rsi, 136(%rsp)
	movl	%esi, 8(%rax,%rcx,8)
	movl	%edi, 76(%rsp)
	movl	%edi, 12(%rax,%rcx,8)
	movl	144(%rsp), %edx
	testl	%edx, %edx
	je	.LBB7_111
	notl	%edx
	leaq	(%rdx,%rdx,2), %rcx
	shlq	$3, %rcx
	movq	24(%rsp), %rsi
	addq	8(%rsi), %rcx
	xorl	%eax, %eax
	cmpq	%rdx, 16(%rsi)
	jbe	.LBB7_104
	movl	16(%rcx), %edi
	cmpl	148(%rsp), %edi
	jne	.LBB7_105
	movl	(%rcx), %eax
	movl	8(%rcx), %edx
	movl	12(%rcx), %esi
	jmp	.LBB7_105
.LBB7_104:
.LBB7_105:
	movl	%eax, (%rcx)
	movl	%r13d, 4(%rcx)
	movl	%edx, 8(%rcx)
	movl	%esi, 12(%rcx)
	movq	80(%rsp), %rcx
	cmpl	%edx, 144(%rcx)
	jne	.LBB7_107
	addq	$80, %rcx
	jmp	.LBB7_110
.LBB7_107:
	movq	32(%rsp), %rcx
	cmpl	%edx, 144(%rcx)
	jne	.LBB7_109
	addq	$80, %rcx
	jmp	.LBB7_110
.LBB7_109:
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$5, %rcx
	movq	88(%rsp), %rdx
	addq	%rdx, %rcx
	addq	$80, %rcx
.LBB7_110:
	movq	(%rcx), %rcx
	notl	%eax
	shlq	$4, %rax
	movl	%r13d, 8(%rcx,%rax)
.LBB7_111:
	movq	(%r14), %rax
	movq	304(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	296(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	movl	%ebp, 60(%rsp)
	jae	.LBB7_115
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_115
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$4, %rbx
	addq	24(%rsi), %rbx
	jmp	.LBB7_116
.LBB7_115:
	xorl	%ebx, %ebx
.LBB7_116:
	movq	24(%r14), %r13
	movq	16(%r14), %rcx
	movq	%rcx, 64(%rsp)
	testb	%al, %al
	movl	20(%rsp), %ebp
	movq	%r15, 344(%rsp)
	movl	%ebp, %r12d
	notl	%r12d
	je	.LBB7_118
	leaq	44(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	40(%rsp), %ecx
	jmp	.LBB7_119
.LBB7_118:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbx), %rdi
	leaq	44(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbx), %rax
	movl	40(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_119:
	movq	40(%rbx), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	movq	64(%rsp), %rdi
	movq	96(%rsp), %r14
	movq	296(%rsp), %r15
	movq	344(%rsp), %rbx
	je	.LBB7_122
	shlq	$4, %r13
	.p2align	4
.LBB7_121:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	40(%rsp), %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_121
.LBB7_122:
	movq	48(%rsp), %r14
.LBB7_123:
	movq	32(%rsp), %rdx
.LBB7_124:
	movq	%rbx, %r15
	movl	%ebp, 20(%rsp)
	movq	40(%r14), %r12
	movq	48(%r14), %r13
	movl	152(%rdx), %eax
	testq	%r13, %r13
	movq	24(%rsp), %r14
	movq	%rdx, 32(%rsp)
	je	.LBB7_131
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB7_131
	movq	48(%rsp), %rax
	movq	32(%rax), %r12
	shlq	$3, %r13
	xorl	%ebp, %ebp
	leaq	144(%rsp), %rbx
	jmp	.LBB7_128
	.p2align	4
.LBB7_127:
	addq	$8, %rbp
	cmpq	%rbp, %r13
	je	.LBB7_130
.LBB7_128:
	movq	(%r12,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_127
	movq	%r15, 144(%rsp)
	movq	%rax, 152(%rsp)
	movb	$0, 160(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_127
.LBB7_130:
	movq	32(%rsp), %rdx
	movl	152(%rdx), %eax
	movq	48(%rsp), %rcx
	movq	40(%rcx), %r12
.LBB7_131:
	testb	$32, %al
	je	.LBB7_138
	movl	%r15d, 112(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 116(%rsp)
	movq	48(%rsp), %rcx
	movq	48(%rcx), %rax
	movq	%rdx, %rbx
	cmpq	%r12, %rax
	jbe	.LBB7_134
	xorl	%ecx, %ecx
	jmp	.LBB7_135
.LBB7_134:
	movq	32(%rcx), %rcx
.LBB7_135:
	movq	%rcx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movq	312(%rsp), %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_137
	movq	$0, 256(%rsp)
	movq	112(%rsp), %r8
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rcx
	leaq	256(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_137:
	movq	48(%rsp), %rax
	movq	40(%rax), %r12
	movl	152(%rbx), %eax
.LBB7_138:
	testq	%r12, %r12
	je	.LBB7_145
	movl	%eax, %ecx
	andl	$2, %ecx
	je	.LBB7_145
	movq	48(%rsp), %rax
	movq	32(%rax), %r13
	shlq	$3, %r12
	xorl	%ebp, %ebp
	leaq	144(%rsp), %rbx
	jmp	.LBB7_142
	.p2align	4
.LBB7_141:
	addq	$8, %rbp
	cmpq	%rbp, %r12
	je	.LBB7_144
.LBB7_142:
	movq	(%r13,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	256(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_141
	movq	%r15, 144(%rsp)
	movq	%rax, 152(%rsp)
	movb	$0, 160(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_141
.LBB7_144:
	movq	32(%rsp), %rax
	movl	152(%rax), %eax
.LBB7_145:
	testb	$64, %al
	movq	352(%rsp), %rbx
	movl	60(%rsp), %ebp
	je	.LBB7_148
	movl	%r15d, 112(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 116(%rsp)
	movq	48(%rsp), %rax
	movdqu	32(%rax), %xmm0
	movdqu	%xmm0, 144(%rsp)
	movl	$1, %esi
	movq	312(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_148
	movq	$1, 256(%rsp)
	movq	112(%rsp), %r8
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rcx
	leaq	256(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_148:
	movl	%ebp, 16(%rbx)
	movl	20(%rsp), %eax
	movl	%eax, 20(%rbx)
	movq	136(%rsp), %rax
	movl	%eax, 24(%rbx)
	movl	76(%rsp), %eax
	movl	%eax, 28(%rbx)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rsi
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
	addq	$360, %rsp
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
.LBB7_149:
	.cfi_def_cfa_offset 416
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB7_150:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %ebx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movl	%ebx, %eax
	jmp	.LBB7_51
.LBB7_151:
	movl	$16, %edi
.LBB7_152:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB7_32
	jmp	.LBB7_152
.LBB7_153:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB7_33
.LBB7_154:
	leaq	632(%rbx), %rdi
	leaq	664(%rbx), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	632(%rbx), %r12
	movq	640(%rbx), %rsi
	movq	%rsi, 32(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movq	%r12, %rdx
	movzbl	(%r12,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%rbx)
	leaq	-16(%rax), %rcx
	andq	32(%rsp), %rcx
	movq	96(%rsp), %r12
	movb	$54, (%rdx,%rax)
	movb	$54, 16(%rdx,%rcx)
	incq	656(%rbx)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-5978922166113598399, %rcx
	movq	%rcx, -24(%rdx,%rax,8)
	movq	%r14, -16(%rdx,%rax,8)
	movq	%rbp, -8(%rdx,%rax,8)
	movq	256(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_35
	jmp	.LBB7_36
.Lfunc_end7:
	.size	entity_insert, .Lfunc_end7-entity_insert
	.cfi_endproc

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 103

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"f\000\000\000\000\000\000\000)\005\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"f\000\000\000\000\000\000\000\"\b\000\000\024\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 106

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.3
	.asciz	"i\000\000\000\000\000\000\000\300\000\000\000\037\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	-5978922166113598399
	.quad	7906754238182838260
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.quad	3563989512513453390
	.quad	2171715549804139775
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.p2align	4, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.zero	16,255
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.8
	.zero	24
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 32

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

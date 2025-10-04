	.file	"entity_insert.e259656db64679e8-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,18
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
	subq	$280, %rsp
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movabsq	$2676898050392348163, %rax
	movl	(%rdi), %ecx
	movl	%ecx, 4(%rsp)
	leaq	56(%rsi), %rdi
	leaq	1440(%rsi), %rcx
	movq	%rdi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	$0, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	$0, 24(%rsp)
	cmpq	$0, 104(%rsi)
	movabsq	$9122328831043287557, %rcx
	je	.LBB0_9
	movq	80(%rbx), %rdx
	movq	88(%rbx), %rsi
	leaq	-24(%rdx), %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$2676898050392348163, %r10
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
	movabsq	$2676898050392348163, %r11
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
	movq	8(%rsp), %rsi
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
	movw	$256, 112(%rsp)
	movq	$1, 48(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %xmm0
	movups	%xmm0, 56(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %r15
	movq	$1, 88(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rsp)
	movb	$1, 114(%rsp)
	movq	$0, 72(%rsp)
	leaq	48(%rsp), %rdx
	movq	%r14, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.37(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	%r14, (%rax)
	movq	$1, 24(%rsp)
	movq	$0, 168(%rsp)
	movq	$8, 176(%rsp)
	movq	$0, 184(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.39(%rip), %xmm0
	movups	%xmm0, 192(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.39+16(%rip), %xmm1
	movups	%xmm1, 208(%rsp)
	movq	$0, 224(%rsp)
	movq	$8, 232(%rsp)
	movq	$0, 240(%rsp)
	movups	%xmm0, 248(%rsp)
	movups	%xmm1, 264(%rsp)
	movq	32(%rsp), %rdi
	leaq	168(%rsp), %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_21
	decq	%rax
	movq	%rax, 24(%rsp)
.LBB0_21:
	movq	32(%rsp), %rax
	movq	8(%rax), %r15
	leaq	(%r14,%r14,8), %r12
	shlq	$5, %r12
	movups	264(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	248(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	232(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	168(%rsp), %xmm0
	movups	184(%rsp), %xmm1
	movups	200(%rsp), %xmm2
	movups	216(%rsp), %xmm3
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	leaq	(%r15,%r12), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 168(%r15,%r12)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 152(%r15,%r12)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 136(%r15,%r12)
	movdqa	48(%rsp), %xmm0
	movdqa	64(%rsp), %xmm1
	movdqa	80(%rsp), %xmm2
	movdqa	96(%rsp), %xmm3
	movdqu	%xmm3, 120(%r15,%r12)
	movdqu	%xmm2, 104(%r15,%r12)
	movdqu	%xmm1, 88(%r15,%r12)
	movdqu	%xmm0, 72(%r15,%r12)
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_24
.LBB0_23:
	movq	16(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB0_24:
	leaq	896(%rbx), %rdi
	movq	%r14, %rsi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_26
	movq	%r14, 48(%rsp)
	leaq	168(%rsp), %rdi
	leaq	48(%rsp), %rcx
	leaq	4(%rsp), %r8
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::GlobalTrigger::trigger_internal@GOTPCREL(%rip)
.LBB0_26:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rsi
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	addq	$280, %rsp
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
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	-8(%r8), %rcx
	movq	%rcx, 136(%rsp)
	movups	-24(%r8), %xmm0
	movups	%xmm0, 120(%rsp)
	movdqu	-88(%r8), %xmm0
	movdqu	-72(%r8), %xmm1
	movdqu	-56(%r8), %xmm2
	movdqu	-40(%r8), %xmm3
	movdqu	%xmm3, 104(%rsp)
	movdqu	%xmm2, 88(%rsp)
	movdqu	%xmm1, 72(%rsp)
	movdqu	%xmm0, 56(%rsp)
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r14
	movq	8(%rsp), %rsi
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
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
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_17:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>

	.section	.text.unlikely.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::finish_grow,@function
alloc::raw_vec::finish_grow:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
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
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end2-alloc::raw_vec::finish_grow

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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
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
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
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
	pshufd	$0, %xmm0, %xmm0
	leaq	-24(%rax), %r10
	movq	16(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %r11
	xorl	%r15d, %r15d
	pcmpeqd	%xmm1, %xmm1
	xorl	%ecx, %ecx
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
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_1:
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

	.section	.text.hashbrown::raw::RawTableInner::find_insert_slot,"ax",@progbits
	.p2align	4
	.type	hashbrown::raw::RawTableInner::find_insert_slot,@function
hashbrown::raw::RawTableInner::find_insert_slot:
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.zero	16,37
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
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movss	%xmm0, 48(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 52(%rsp)
	testl	%eax, %eax
	je	.LBB7_169
	movabsq	$5424870379677179821, %r11
	movl	20(%r13), %ebp
	movl	24(%r13), %r12d
	movl	28(%r13), %eax
	movl	%eax, 76(%rsp)
	movq	(%r13), %r14
	movl	1448(%r14), %eax
	movl	%eax, 20(%rsp)
	leaq	56(%r14), %r15
	leaq	1440(%r14), %rax
	movq	%r15, 248(%rsp)
	movq	%rax, 256(%rsp)
	movq	$0, 224(%rsp)
	movq	$8, 232(%rsp)
	movq	$0, 240(%rsp)
	leaq	608(%r14), %rax
	movq	%rax, 40(%rsp)
	leaq	336(%r14), %rax
	movq	%rax, 96(%rsp)
	movq	632(%r14), %rax
	movq	640(%r14), %rdx
	leaq	-24(%rax), %rbx
	xorl	%esi, %esi
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r11, %rdi
	movq	%r12, 64(%rsp)
	movq	%r13, 288(%rsp)
	movl	%ebp, 32(%rsp)
.LBB7_2:
	andq	%rdx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB7_6
	movq	%rsi, 24(%rsp)
.LBB7_4:
	movq	%r13, %rsi
	movq	%r15, %r13
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rdx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	movq	8(%rbx,%r9,8), %r10
	xorq	%r11, %r10
	movq	%r11, %rcx
	movq	(%rbx,%r9,8), %r11
	movabsq	$-718767884761547574, %r15
	xorq	%r15, %r11
	orq	%r10, %r11
	je	.LBB7_8
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	movq	%rcx, %r11
	movq	%r13, %r15
	movq	%rsi, %r13
	movq	24(%rsp), %rsi
	jne	.LBB7_4
	.p2align	4
.LBB7_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_9
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB7_2
.LBB7_8:
	movq	-8(%rax,%r9,8), %rbp
	movq	%r13, %r15
	movq	%rsi, %r13
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_38
.LBB7_37:
	movq	232(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_38:
	movq	616(%r14), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rbx
	leaq	248(%r14), %rsi
	leaq	896(%r14), %r8
	movq	%rdi, 280(%rsp)
	movq	96(%rsp), %rdx
	movq	%r15, %rcx
	movq	%r8, 296(%rsp)
	movl	%r12d, %r9d
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
	cmpl	%r12d, %eax
	jne	.LBB7_42
	movq	264(%r14), %rsi
	cmpq	%r12, %rsi
	jbe	.LBB7_180
	movq	256(%r14), %rcx
	leaq	(%r12,%r12,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %rbp
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB7_51
	movq	8(%rbp), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %r9
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r9
	jmp	.LBB7_52
.LBB7_42:
	movq	256(%r14), %rcx
	movq	264(%r14), %rdi
	movl	%eax, %esi
	jae	.LBB7_46
	cmpq	%r12, %rdi
	jb	.LBB7_175
	jne	.LBB7_49
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.33(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_9:
	movq	$0, 304(%rsp)
	movq	$8, 312(%rsp)
	movq	$0, 320(%rsp)
	cmpq	$0, 104(%r14)
	je	.LBB7_16
	movq	80(%r14), %rax
	movq	88(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%ebx, %ebx
	pcmpeqd	%xmm1, %xmm1
	movabsq	$5424870379677179821, %rdi
	movq	%r11, %r8
.LBB7_11:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB7_14
.LBB7_12:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	8(%rdx,%r10,8), %r11
	xorq	%rdi, %r11
	movq	(%rdx,%r10,8), %r12
	movq	%rdi, %rsi
	movabsq	$-718767884761547574, %rdi
	xorq	%rdi, %r12
	orq	%r11, %r12
	je	.LBB7_22
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movabsq	$5424870379677179821, %r11
	movq	%rsi, %rdi
	jne	.LBB7_12
.LBB7_14:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB7_16
	addq	%rbx, %r8
	addq	$16, %r8
	addq	$16, %rbx
	jmp	.LBB7_11
.LBB7_46:
	cmpq	%rsi, %rdi
	jb	.LBB7_176
	cmpl	%r12d, %eax
	jbe	.LBB7_183
	cmpq	%rsi, %rdi
	je	.LBB7_184
.LBB7_49:
	leaq	(%r12,%r12,4), %rdi
	shlq	$5, %rdi
	leaq	(%rcx,%rdi), %rbp
	leaq	(%rsi,%rsi,4), %rsi
	shlq	$5, %rsi
	addq	%rcx, %rsi
	movq	%rsi, 24(%rsp)
	cmpq	16(%rcx,%rdi), %rbx
	jae	.LBB7_54
	movq	8(%rbp), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %r9
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r9
	jmp	.LBB7_55
.LBB7_51:
	xorl	%r9d, %r9d
.LBB7_52:
	movl	148(%rbp), %edi
	movq	424(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_181
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	addq	416(%r14), %rcx
	movq	%rcx, 56(%rsp)
	movq	$0, 272(%rsp)
	testb	$1, %dl
	movq	%r9, 40(%rsp)
	jne	.LBB7_67
	jmp	.LBB7_71
.LBB7_54:
	xorl	%r9d, %r9d
.LBB7_55:
	movl	148(%rbp), %edi
	movq	24(%rsp), %rcx
	movl	148(%rcx), %esi
	cmpl	%esi, %edi
	jne	.LBB7_59
	movq	424(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_185
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	addq	416(%r14), %rcx
	movq	%rcx, 56(%rsp)
	movl	$1, %ecx
	movq	%rcx, 272(%rsp)
	testb	$1, %dl
	movq	%r9, 40(%rsp)
	jne	.LBB7_67
	jmp	.LBB7_71
.LBB7_59:
	movq	416(%r14), %rcx
	movq	424(%r14), %r8
	cmpl	%esi, %edi
	jbe	.LBB7_63
	cmpq	%rdi, %r8
	jb	.LBB7_178
	jne	.LBB7_66
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.28(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_16:
	movzbl	152(%r14), %eax
	movq	184(%r14), %rax
	movq	192(%r14), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$5424870379677179821, %rbx
	movq	%r11, %r9
	movabsq	$-718767884761547574, %r8
.LBB7_17:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB7_20
.LBB7_18:
	movq	%r13, %rbp
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rcx, %r11
	movq	%r11, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	movq	8(%rsi,%rdx), %r12
	xorq	%rbx, %r12
	movq	(%rsi,%rdx), %r13
	xorq	%r8, %r13
	orq	%r12, %r13
	je	.LBB7_23
	leal	-1(%r10), %edx
	andw	%r10w, %dx
	movl	%edx, %r10d
	movq	%rbp, %r13
	jne	.LBB7_18
.LBB7_20:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB7_26
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	jmp	.LBB7_17
.LBB7_22:
	movq	-8(%rax,%r10,8), %rbp
	movl	$8, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB7_30
.LBB7_23:
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
	ja	.LBB7_25
	incq	200(%r14)
	movb	$-1, %cl
.LBB7_25:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%r14)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB7_29
.LBB7_26:
	movq	1440(%r14), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%r14)
	movw	$256, 176(%rsp)
	movq	$1, 112(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %xmm0
	movups	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %r12
	movq	$4, 152(%rsp)
	movq	$4, 160(%rsp)
	movq	$0, 168(%rsp)
	movb	$1, 178(%rsp)
	movq	$0, 136(%rsp)
	leaq	112(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.37(%rip), %rsi
	leaq	224(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	232(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 240(%rsp)
	movq	$0, 336(%rsp)
	movq	$8, 344(%rsp)
	movq	$0, 352(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.39(%rip), %xmm0
	movups	%xmm0, 360(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.39+16(%rip), %xmm1
	movups	%xmm1, 376(%rsp)
	movq	$0, 392(%rsp)
	movq	$8, 400(%rsp)
	movq	$0, 408(%rsp)
	movups	%xmm0, 416(%rsp)
	movups	%xmm1, 432(%rsp)
	movq	248(%rsp), %rdi
	leaq	336(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	240(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_28
	decq	%rax
	movq	%rax, 240(%rsp)
.LBB7_28:
	movq	248(%rsp), %rax
	movq	8(%rax), %r12
	leaq	(,%rbp,8), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
	movups	432(%rsp), %xmm0
	movaps	%xmm0, 208(%rsp)
	movups	416(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
	movups	400(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	movups	336(%rsp), %xmm0
	movups	352(%rsp), %xmm1
	movups	368(%rsp), %xmm2
	movups	384(%rsp), %xmm3
	movaps	%xmm3, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	leaq	(%r12,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	208(%rsp), %xmm0
	movups	%xmm0, 168(%r12,%r13)
	movaps	192(%rsp), %xmm0
	movups	%xmm0, 152(%r12,%r13)
	movaps	176(%rsp), %xmm0
	movups	%xmm0, 136(%r12,%r13)
	movdqa	112(%rsp), %xmm0
	movdqa	128(%rsp), %xmm1
	movdqa	144(%rsp), %xmm2
	movdqa	160(%rsp), %xmm3
	movdqu	%xmm3, 120(%r12,%r13)
	movdqu	%xmm2, 104(%r12,%r13)
	movdqu	%xmm1, 88(%r12,%r13)
	movdqu	%xmm0, 72(%r12,%r13)
	movq	288(%rsp), %r13
	jmp	.LBB7_30
.LBB7_63:
	cmpq	%rsi, %r8
	jb	.LBB7_179
	cmpl	%edi, %esi
	jbe	.LBB7_187
	cmpq	%rsi, %r8
	je	.LBB7_188
.LBB7_66:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	movq	%rdi, 56(%rsp)
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 264(%rsp)
	movl	$2, %ecx
	movq	%rcx, 272(%rsp)
	testb	$1, %dl
	movq	%r9, 40(%rsp)
	je	.LBB7_71
.LBB7_67:
	movq	1408(%r14), %r15
	testq	%r15, %r15
	jne	.LBB7_69
	movq	1416(%r14), %r15
.LBB7_69:
	movq	(%r15), %rcx
	movq	16(%r15), %r12
	subq	%r12, %rcx
	cmpq	$11, %rcx
	jbe	.LBB7_171
.LBB7_70:
	movq	8(%r15), %rcx
	leaq	core::ops::function::FnOnce::call_once(%rip), %rdx
	movq	%rdx, (%rcx,%r12)
	movl	%eax, 8(%rcx,%r12)
	addq	$12, %r12
	movq	%r12, 16(%r15)
.LBB7_71:
	movq	8(%r13), %r15
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 104(%rsp)
	movl	152(%rbp), %eax
	testb	%al, %al
	jns	.LBB7_75
	movl	%r15d, 224(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 228(%rsp)
	movq	40(%r9), %rax
	movq	48(%r9), %rcx
	subq	%rcx, %rax
	shlq	$3, %rcx
	addq	32(%r9), %rcx
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movl	$2, %esi
	movq	296(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_74
	movq	$2, 336(%rsp)
	movq	224(%rsp), %r8
	leaq	112(%rsp), %rdi
	leaq	224(%rsp), %rcx
	leaq	336(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_74:
	movl	152(%rbp), %eax
.LBB7_75:
	movq	%rbp, 80(%rsp)
	testb	$4, %al
	je	.LBB7_81
	movq	40(%rsp), %rax
	movq	40(%rax), %r13
	movq	48(%rax), %rbp
	cmpq	%r13, %rbp
	je	.LBB7_81
	movq	40(%rsp), %rax
	movq	32(%rax), %rbx
	shlq	$3, %rbp
	shlq	$3, %r13
	leaq	112(%rsp), %r12
	jmp	.LBB7_79
	.p2align	4
.LBB7_78:
	addq	$8, %rbp
	cmpq	%rbp, %r13
	je	.LBB7_81
.LBB7_79:
	movq	(%rbx,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_78
	movq	%r15, 112(%rsp)
	movq	%rax, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*%rcx
	jmp	.LBB7_78
.LBB7_81:
	movq	272(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_93
	movq	%r15, %r12
	movl	52(%rsp), %r8d
	movl	%r8d, %edi
	notl	%edi
	cmpl	$1, %eax
	movq	80(%rsp), %r10
	movq	56(%rsp), %r15
	jne	.LBB7_96
	movq	88(%r10), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_170
	decq	%rsi
	movq	80(%r10), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r9d
	movdqu	(%rax,%rdx), %xmm0
	movdqu	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r10)
	cmpq	%rdi, %rsi
	movq	24(%rsp), %rdx
	je	.LBB7_88
	jbe	.LBB7_182
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB7_88
	movq	8(%r14), %rcx
	notl	%eax
	leaq	(%rax,%rax,2), %rax
	movl	%r8d, (%rcx,%rax,8)
.LBB7_88:
	movl	%r9d, 32(%rsp)
	movq	88(%rdx), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%rdx), %rbx
	jne	.LBB7_90
	leaq	72(%rdx), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.19(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	24(%rsp), %rdx
.LBB7_90:
	movq	80(%rdx), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	%r12, %r9
	movl	%r9d, (%rax,%rcx)
	movq	104(%rsp), %rsi
	movl	%esi, 4(%rax,%rcx)
	movl	32(%rsp), %esi
	movl	%esi, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%rdx)
	movl	144(%rdx), %edi
	movl	148(%rdx), %r8d
	movq	8(%r14), %rax
	movl	%r9d, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	%ebp, (%rax,%rcx,8)
	movl	%esi, 4(%rax,%rcx,8)
	movl	%edi, 8(%rax,%rcx,8)
	movl	%r8d, 76(%rsp)
	movl	%r8d, 12(%rax,%rcx,8)
	movq	40(%rsp), %rbx
	movq	(%rbx), %rax
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	cmpq	64(%r15), %rcx
	movl	%ebp, 52(%rsp)
	jae	.LBB7_107
	movq	56(%r15), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_107
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	24(%r15), %rbp
	jmp	.LBB7_108
.LBB7_93:
	movq	40(%rsp), %rbx
	movq	(%rbx), %rax
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	56(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	jae	.LBB7_120
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_120
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	24(%rsi), %rbp
	jmp	.LBB7_121
.LBB7_96:
	movq	88(%r10), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_170
	movq	%r12, %r15
	movq	256(%r14), %rax
	movq	%rax, 32(%rsp)
	decq	%rsi
	movq	80(%r10), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %r9
	shlq	$4, %r9
	movl	8(%rax,%rcx), %edx
	movdqu	(%rax,%r9), %xmm0
	movdqu	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r10)
	cmpq	%rdi, %rsi
	je	.LBB7_101
	jbe	.LBB7_182
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB7_101
	movq	8(%r14), %rcx
	notl	%eax
	leaq	(%rax,%rax,2), %rax
	movl	%r8d, (%rcx,%rax,8)
.LBB7_101:
	leaq	112(%rsp), %rdi
	movq	56(%rsp), %rsi
	movl	%edx, %r13d
	movq	264(%rsp), %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	120(%rsp), %r12d
	movq	24(%rsp), %rdx
	movq	88(%rdx), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%rdx), %rbx
	jne	.LBB7_103
	leaq	72(%rdx), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.19(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	24(%rsp), %rdx
.LBB7_103:
	movq	80(%rdx), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	104(%rsp), %rsi
	movl	%esi, 4(%rax,%rcx)
	movl	%r12d, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%rdx)
	movl	144(%rdx), %edi
	movl	148(%rdx), %r8d
	movq	8(%r14), %rax
	movl	%r15d, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	%ebp, (%rax,%rcx,8)
	movl	%r12d, 4(%rax,%rcx,8)
	movq	%rdi, 64(%rsp)
	movl	%edi, 8(%rax,%rcx,8)
	movl	%r8d, 76(%rsp)
	movl	%r8d, 12(%rax,%rcx,8)
	movl	112(%rsp), %ecx
	testl	%ecx, %ecx
	movq	40(%rsp), %r8
	je	.LBB7_131
	notl	%ecx
	leaq	(%rcx,%rcx,2), %rax
	shlq	$3, %rax
	addq	8(%r14), %rax
	xorl	%edi, %edi
	cmpq	%rcx, 16(%r14)
	jbe	.LBB7_115
	movl	16(%rax), %esi
	cmpl	116(%rsp), %esi
	jne	.LBB7_116
	movl	(%rax), %edi
	movl	8(%rax), %ecx
	movl	12(%rax), %edx
	jmp	.LBB7_116
.LBB7_120:
	xorl	%ebp, %ebp
.LBB7_121:
	movq	16(%rbx), %rcx
	movq	%rcx, 24(%rsp)
	movq	24(%rbx), %r13
	testb	%al, %al
	je	.LBB7_126
	movl	32(%rsp), %r12d
	notl	%r12d
	leaq	48(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	20(%rsp), %ecx
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	je	.LBB7_127
.LBB7_123:
	movq	%r14, 88(%rsp)
	shlq	$4, %r13
	movq	24(%rsp), %rdi
	movl	32(%rsp), %ebp
	movq	96(%rsp), %r14
	movq	%r15, %rbx
	movq	56(%rsp), %r15
	.p2align	4
.LBB7_124:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	20(%rsp), %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_124
	movq	80(%rsp), %rdx
	movq	88(%rsp), %r14
	movq	40(%rsp), %rax
	jmp	.LBB7_143
.LBB7_107:
	xorl	%ebp, %ebp
.LBB7_108:
	movq	%r12, %r15
	movq	%rdi, 64(%rsp)
	movq	16(%rbx), %rcx
	movq	%rcx, 80(%rsp)
	movq	24(%rbx), %r13
	testb	%al, %al
	je	.LBB7_113
	movl	32(%rsp), %r12d
	notl	%r12d
	leaq	48(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	20(%rsp), %ecx
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	je	.LBB7_114
.LBB7_110:
	movq	%r14, 88(%rsp)
	shlq	$4, %r13
	movq	80(%rsp), %rdi
	movl	32(%rsp), %ebp
	movq	96(%rsp), %r14
	movq	%r15, %rbx
	movq	56(%rsp), %r15
	.p2align	4
.LBB7_111:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	20(%rsp), %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_111
	jmp	.LBB7_142
.LBB7_126:
	movl	32(%rsp), %r12d
	notl	%r12d
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	48(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	jne	.LBB7_123
.LBB7_127:
	movq	80(%rsp), %rdx
	movl	32(%rsp), %ebp
	jmp	.LBB7_144
.LBB7_113:
	movl	32(%rsp), %r12d
	notl	%r12d
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	48(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	jne	.LBB7_110
.LBB7_114:
	movl	32(%rsp), %ebp
	movq	24(%rsp), %rdx
	jmp	.LBB7_144
.LBB7_115:
.LBB7_116:
	movl	%edi, (%rax)
	movl	%r13d, 4(%rax)
	movl	%ecx, 8(%rax)
	movl	%edx, 12(%rax)
	movq	80(%rsp), %rax
	cmpl	%ecx, 144(%rax)
	je	.LBB7_118
	movq	24(%rsp), %rax
	cmpl	%ecx, 144(%rax)
	jne	.LBB7_128
.LBB7_118:
	notl	%edi
	movq	88(%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_186
	movq	80(%rax), %rax
	jmp	.LBB7_130
.LBB7_29:
	movq	%rbp, %r13
	movq	-8(%rdx), %rcx
	movq	%rcx, 200(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 184(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 168(%rsp)
	movdqu	%xmm2, 152(%rsp)
	movdqu	%xmm1, 136(%rsp)
	movdqu	%xmm0, 120(%rsp)
	movq	%rax, 112(%rsp)
	leaq	112(%rsp), %rdi
	leaq	224(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB7_30:
	movq	64(%rsp), %r12
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.13(%rip), %rsi
	leaq	304(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	312(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 320(%rsp)
	movq	624(%r14), %rbp
	movq	248(%rsp), %r8
	movups	304(%rsp), %xmm0
	movaps	%xmm0, 336(%rsp)
	movq	$1, 352(%rsp)
	movq	%rbp, (%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rsi
	leaq	112(%rsp), %rdi
	leaq	336(%rsp), %r9
	movl	$16, %edx
	movq	96(%rsp), %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	cmpq	608(%r14), %rbp
	jne	.LBB7_32
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.12(%rip), %rsi
	movq	40(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB7_32:
	movq	616(%r14), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	movq	144(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	112(%rsp), %xmm0
	movdqu	128(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%r14)
	movq	632(%r14), %rax
	movq	640(%r14), %rcx
	movq	%rcx, %rsi
	movabsq	$5424870379677179821, %r10
	andq	%r10, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB7_172
	movabsq	$-718767884761547574, %r9
.LBB7_34:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB7_174
.LBB7_35:
	movq	648(%r14), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB7_177
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$37, (%rax,%rdx)
	movb	$37, 16(%rax,%rsi)
	incq	656(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r9, -24(%rax,%rcx,8)
	movq	%r10, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_37
	jmp	.LBB7_38
.LBB7_128:
	movl	%ecx, %eax
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	32(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_186
	addq	%rcx, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
.LBB7_130:
	shlq	$4, %rdi
	movl	%r13d, 8(%rax,%rdi)
.LBB7_131:
	movq	(%r8), %rax
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	264(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	movl	%ebp, 52(%rsp)
	jae	.LBB7_135
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_135
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$4, %rbx
	addq	24(%rsi), %rbx
	jmp	.LBB7_136
.LBB7_135:
	xorl	%ebx, %ebx
.LBB7_136:
	movq	40(%rsp), %rdx
	movq	16(%rdx), %rcx
	movq	%rcx, 32(%rsp)
	movq	24(%rdx), %r13
	testb	%al, %al
	movl	%r12d, %ebp
	movq	%r14, 88(%rsp)
	movq	%r15, 328(%rsp)
	notl	%r12d
	je	.LBB7_138
	leaq	48(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	20(%rsp), %ecx
	jmp	.LBB7_139
.LBB7_138:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbx), %rdi
	leaq	48(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbx), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_139:
	movq	40(%rbx), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	movq	32(%rsp), %rdi
	movq	96(%rsp), %r14
	movq	264(%rsp), %r15
	movq	328(%rsp), %rbx
	je	.LBB7_142
	shlq	$4, %r13
	.p2align	4
.LBB7_141:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	20(%rsp), %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_141
.LBB7_142:
	movq	88(%rsp), %r14
	movq	40(%rsp), %rax
	movq	24(%rsp), %rdx
.LBB7_143:
	movq	%rbx, %r15
	movq	%rax, %rbx
.LBB7_144:
	movl	%ebp, 32(%rsp)
	movq	40(%rbx), %r12
	movq	48(%rbx), %r13
	movl	152(%rdx), %eax
	testq	%r13, %r13
	movq	%rdx, 24(%rsp)
	je	.LBB7_151
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB7_151
	movq	32(%rbx), %r12
	shlq	$3, %r13
	xorl	%ebp, %ebp
	leaq	112(%rsp), %rbx
	jmp	.LBB7_148
	.p2align	4
.LBB7_147:
	addq	$8, %rbp
	cmpq	%rbp, %r13
	je	.LBB7_150
.LBB7_148:
	movq	(%r12,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_147
	movq	%r15, 112(%rsp)
	movq	%rax, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_147
.LBB7_150:
	movq	24(%rsp), %rdx
	movl	152(%rdx), %eax
	movq	40(%rsp), %rbx
	movq	40(%rbx), %r12
.LBB7_151:
	testb	$32, %al
	je	.LBB7_158
	movl	%r15d, 224(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 228(%rsp)
	movq	48(%rbx), %rax
	movq	%rdx, %r13
	cmpq	%r12, %rax
	jbe	.LBB7_154
	xorl	%ecx, %ecx
	jmp	.LBB7_155
.LBB7_154:
	movq	32(%rbx), %rcx
.LBB7_155:
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movq	296(%rsp), %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_157
	movq	$0, 336(%rsp)
	movq	224(%rsp), %r8
	leaq	112(%rsp), %rdi
	leaq	224(%rsp), %rcx
	leaq	336(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_157:
	movq	40(%rbx), %r12
	movl	152(%r13), %eax
.LBB7_158:
	testq	%r12, %r12
	je	.LBB7_165
	movl	%eax, %ecx
	andl	$2, %ecx
	je	.LBB7_165
	movq	40(%rsp), %rax
	movq	32(%rax), %r13
	shlq	$3, %r12
	xorl	%ebp, %ebp
	leaq	112(%rsp), %rbx
	jmp	.LBB7_162
	.p2align	4
.LBB7_161:
	addq	$8, %rbp
	cmpq	%rbp, %r12
	je	.LBB7_164
.LBB7_162:
	movq	(%r13,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	256(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_161
	movq	%r15, 112(%rsp)
	movq	%rax, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_161
.LBB7_164:
	movq	24(%rsp), %rax
	movl	152(%rax), %eax
.LBB7_165:
	testb	$64, %al
	movq	288(%rsp), %rbx
	movl	52(%rsp), %ebp
	movq	64(%rsp), %r12
	je	.LBB7_168
	movl	%r15d, 224(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 228(%rsp)
	movq	40(%rsp), %rax
	movdqu	32(%rax), %xmm0
	movdqu	%xmm0, 112(%rsp)
	movl	$1, %esi
	movq	296(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_168
	movq	$1, 336(%rsp)
	movq	224(%rsp), %r8
	leaq	112(%rsp), %rdi
	leaq	224(%rsp), %rcx
	leaq	336(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_168:
	movl	%ebp, 16(%rbx)
	movl	32(%rsp), %eax
	movl	%eax, 20(%rbx)
	movl	%r12d, 24(%rbx)
	movl	76(%rsp), %eax
	movl	%eax, 28(%rbx)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rsi
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
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
.LBB7_169:
	.cfi_def_cfa_offset 512
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB7_170:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_171:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %ebx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movl	%ebx, %eax
	movq	40(%rsp), %r9
	jmp	.LBB7_70
.LBB7_172:
	movl	$16, %edi
	movabsq	$-718767884761547574, %r9
.LBB7_173:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB7_34
	jmp	.LBB7_173
.LBB7_174:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB7_35
.LBB7_175:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	$1, 120(%rsp)
	movq	$8, 128(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 136(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rsi
	leaq	112(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_176:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	$1, 120(%rsp)
	movq	$8, 128(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 136(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.29(%rip), %rsi
	leaq	112(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_177:
	leaq	632(%r14), %rdi
	leaq	664(%r14), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	movq	%r15, %r13
	movq	%r9, %r15
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	632(%r14), %rbx
	movq	640(%r14), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movabsq	$5424870379677179821, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%r14)
	leaq	-16(%rax), %rcx
	andq	%r12, %rcx
	movq	64(%rsp), %r12
	movb	$37, (%rbx,%rax)
	movb	$37, 16(%rbx,%rcx)
	incq	656(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	%r15, -24(%rbx,%rax,8)
	movq	%r13, %r15
	movq	288(%rsp), %r13
	movabsq	$5424870379677179821, %rcx
	movq	%rcx, -16(%rbx,%rax,8)
	movq	%rbp, -8(%rbx,%rax,8)
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_37
	jmp	.LBB7_38
.LBB7_178:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	$1, 120(%rsp)
	movq	$8, 128(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 136(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.27(%rip), %rsi
	leaq	112(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_179:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	$1, 120(%rsp)
	movq	$8, 128(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 136(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.24(%rip), %rsi
	leaq	112(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_180:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.16(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_181:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.17(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_182:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.34(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_183:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.30(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_184:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.31(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_185:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.15(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_186:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.20(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_187:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_188:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.26(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end7:
	.size	entity_insert, .Lfunc_end7-entity_insert
	.cfi_endproc

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.asciz	"/home/james/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 113

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"p\000\000\000\000\000\000\000\331\007\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.asciz	"/home/james/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 117

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"t\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 103

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"f\000\000\000\000\000\000\000\035\005\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"f\000\000\000\000\000\000\000\020\b\000\000\024\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 106

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"i\000\000\000\000\000\000\000\306\000\000\000\037\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.quad	-718767884761547574
	.quad	5424870379677179821
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 98

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.12,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.12:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"a\000\000\000\000\000\000\000\300\001\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.12, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.13,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.13:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"a\000\000\000\000\000\000\000\270\001\000\000B\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.13, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.14,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.14:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/bundle/insert.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.14, 100

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.15,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.15:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.14
	.asciz	"c\000\000\000\000\000\000\000f\000\000\0007\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.15, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.16,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.16:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.14
	.asciz	"c\000\000\000\000\000\000\000F\000\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.16, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.17,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.17:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.14
	.asciz	"c\000\000\000\000\000\000\000O\000\000\0003\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.17, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.18,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.18:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.18, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.19,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.19:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000c\002\000\000\027\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.19, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.20,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.20:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000S\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.20, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.21,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.21,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.21:
	.ascii	"mid > len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.21, 9

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.22,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.22:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.21
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.22, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.23,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.23:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.23, 104

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.24,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.24:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"g\000\000\000\000\000\000\000\377\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.24, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.25,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.25:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.25, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.26,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.26:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000/\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.26, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.27,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.27:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"g\000\000\000\000\000\000\000\374\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.27, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.28,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.28:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"g\000\000\000\000\000\000\000\375\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.28, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.29,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.29:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000q\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.29, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.30,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.30:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.30, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.31,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.31:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000,\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.31, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.32,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.32:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000n\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.32, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.33,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.33:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000o\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.33, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.34,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.34:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.18
	.asciz	"_\000\000\000\000\000\000\000\177\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.34, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.35,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.35:
	.quad	9122328831043287557
	.quad	2676898050392348163
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.35, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.36,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.36:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.36, 105

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.37,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.37:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"h\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.37, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.38,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.38:
	.zero	16,255
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.38, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.39,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.39:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.38
	.zero	24
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.39, 32

	.ident	"rustc version 1.90.0 (1159e78c4 2025-09-14)"
	.section	".note.GNU-stack","",@progbits

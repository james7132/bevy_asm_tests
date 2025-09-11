	.file	"entity_insert.ce80aa672af8b03b-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,91
	.section	.text.core::ops::function::FnOnce::call_once,"ax",@progbits
	.p2align	4
	.type	core::ops::function::FnOnce::call_once,@function
core::ops::function::FnOnce::call_once:
	.cfi_startproc
	addq	$4, (%rdx)
	testq	%rsi, %rsi
	je	.LBB0_29
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$280, %rsp
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movabsq	$-5232917436151097155, %r14
	movabsq	$1463809386090719959, %r15
	movl	(%rdi), %eax
	movl	%eax, 4(%rsp)
	leaq	56(%rsi), %rdi
	leaq	1440(%rsi), %rax
	movq	%rdi, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	$0, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	$0, 24(%rsp)
	cmpq	$0, 104(%rsi)
	je	.LBB0_10
	movq	80(%rbx), %rax
	movq	88(%rbx), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r14, %rsi
.LBB0_3:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB0_7
.LBB0_4:
	rep		bsfl	%r8d, %r9d
	addq	%rsi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%r15, -24(%rax,%r9,8)
	jne	.LBB0_6
	cmpq	%r14, -16(%rax,%r9,8)
	je	.LBB0_9
.LBB0_6:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB0_4
.LBB0_7:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB0_10
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB0_3
.LBB0_10:
	movzbl	152(%rbx), %eax
	movq	184(%rbx), %rax
	movq	192(%rbx), %rcx
	xorl	%esi, %esi
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r14, %r8
.LBB0_11:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB0_15
.LBB0_12:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rcx, %r10
	movq	%r10, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	cmpq	%r15, -112(%rax,%rdx)
	jne	.LBB0_14
	cmpq	%r14, -104(%rax,%rdx)
	je	.LBB0_17
.LBB0_14:
	leal	-1(%r9), %edx
	andw	%r9w, %dx
	movl	%edx, %r9d
	jne	.LBB0_12
.LBB0_15:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB0_21
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB0_11
.LBB0_9:
	leaq	(%rax,%r9,8), %rax
	movq	-8(%rax), %r12
	movl	$8, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB0_25
	jmp	.LBB0_26
.LBB0_17:
	addq	%rax, %rdx
	imulq	$112, %r10, %r8
	sarq	$4, %r8
	movabsq	$7905747460161236407, %rsi
	imulq	%r8, %rsi
	leaq	-16(%rsi), %r8
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movdqu	(%rax,%rsi), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r9d
	movw	$31, %r10w
	bsrw	%cx, %r10w
	xorl	$15, %r10d
	orl	$65536, %r9d
	rep		bsfl	%r9d, %r9d
	addl	%r10d, %r9d
	movb	$-128, %cl
	cmpw	$15, %r9w
	ja	.LBB0_19
	incq	200(%rbx)
	movb	$-1, %cl
.LBB0_19:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%r8)
	decq	208(%rbx)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB0_20
.LBB0_21:
	movq	1440(%rbx), %r12
	leaq	1(%r12), %rax
	movq	%rax, 1440(%rbx)
	movw	$256, 112(%rsp)
	movq	$1, 48(%rsp)
	movq	%r15, 56(%rsp)
	movq	%r14, 64(%rsp)
	movq	$1, 88(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 96(%rsp)
	movb	$1, 114(%rsp)
	movq	$0, 72(%rsp)
	leaq	48(%rsp), %rdx
	movq	%r12, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.37(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	%r12, (%rax)
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
	movq	%r12, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_23
	decq	%rax
	movq	%rax, 24(%rsp)
.LBB0_23:
	movq	32(%rsp), %rax
	movq	8(%rax), %r14
	leaq	(%r12,%r12,8), %r15
	shlq	$5, %r15
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
	leaq	(%r14,%r15), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 168(%r14,%r15)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 152(%r14,%r15)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 136(%r14,%r15)
	movdqa	48(%rsp), %xmm0
	movdqa	64(%rsp), %xmm1
	movdqa	80(%rsp), %xmm2
	movdqa	96(%rsp), %xmm3
	movdqu	%xmm3, 120(%r14,%r15)
	movdqu	%xmm2, 104(%r14,%r15)
	movdqu	%xmm1, 88(%r14,%r15)
	movdqu	%xmm0, 72(%r14,%r15)
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_26
.LBB0_25:
	movq	16(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB0_26:
	leaq	896(%rbx), %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_28
	movq	%r12, 48(%rsp)
	leaq	168(%rsp), %rdi
	leaq	48(%rsp), %rcx
	leaq	4(%rsp), %r8
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::GlobalTrigger::trigger_internal@GOTPCREL(%rip)
.LBB0_28:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rsi
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	addq	$280, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB0_29:
	retq
.LBB0_20:
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movups	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 104(%rsp)
	movdqu	%xmm2, 88(%rsp)
	movdqu	%xmm1, 72(%rsp)
	movups	%xmm0, 56(%rsp)
	movdqu	-24(%rdx), %xmm0
	movq	-8(%rdx), %rcx
	movq	%rax, 48(%rsp)
	movdqu	%xmm0, 120(%rsp)
	movq	%rcx, 136(%rsp)
	leaq	48(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r12
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB0_25
	jmp	.LBB0_26
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
	jb	.LBB3_8
	movq	%rdi, %rbx
	movq	(%rdi), %r9
	leaq	(%r9,%r9), %r14
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
	xorl	%edi, %edi
	mulq	%r14
	jo	.LBB3_9
	movabsq	$-9223372036854775808, %rdx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	ja	.LBB3_11
	testq	%r9, %r9
	jne	.LBB3_5
	xorl	%edx, %edx
	jmp	.LBB3_6
.LBB3_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %r9
	movq	%rdx, 32(%rsp)
	movq	%r9, 48(%rsp)
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
	je	.LBB3_10
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
.LBB3_8:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
.LBB3_9:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB3_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB3_11:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
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
	pushq	%r12
	pushq	%rbx
	cmpq	$0, 16(%rdi)
	je	.LBB5_1
.LBB5_2:
	movq	(%rdi), %rax
	movq	8(%rdi), %r9
	movq	%rdx, %r8
	shrq	$57, %r8
	movd	%r8d, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	xorl	%r11d, %r11d
	pcmpeqd	%xmm1, %xmm1
	movq	%rdx, %rbx
	xorl	%r14d, %r14d
.LBB5_3:
	andq	%r9, %rbx
	movdqu	(%rax,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r15d
	testl	%r15d, %r15d
	je	.LBB5_7
.LBB5_4:
	rep		bsfl	%r15d, %r12d
	addq	%rbx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,2), %r12
	cmpq	-24(%rax,%r12,8), %rsi
	jne	.LBB5_6
	cmpq	-16(%rax,%r12,8), %rdx
	je	.LBB5_17
.LBB5_6:
	leal	-1(%r15), %ebp
	andw	%r15w, %bp
	movl	%ebp, %r15d
	jne	.LBB5_4
	.p2align	4
.LBB5_7:
	cmpq	$1, %r14
	je	.LBB5_11
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	je	.LBB5_9
	rep		bsfl	%r10d, %r10d
	addq	%rbx, %r10
	andq	%r9, %r10
.LBB5_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_14
	movl	$1, %r14d
	jmp	.LBB5_13
.LBB5_9:
	xorl	%r14d, %r14d
.LBB5_13:
	addq	%r11, %rbx
	addq	$16, %rbx
	addq	$16, %r11
	jmp	.LBB5_3
.LBB5_17:
	leaq	(%rax,%r12,8), %rax
	movq	%rcx, -8(%rax)
	jmp	.LBB5_18
.LBB5_14:
	movzbl	(%rax,%r10), %r11d
	testb	%r11b, %r11b
	jns	.LBB5_15
.LBB5_16:
	andb	$1, %r11b
	movzbl	%r11b, %r11d
	subq	%r11, 16(%rdi)
	leaq	-16(%r10), %r11
	andq	%r9, %r11
	movb	%r8b, (%rax,%r10)
	movb	%r8b, 16(%rax,%r11)
	incq	24(%rdi)
	negq	%r10
	leaq	(%r10,%r10,2), %rdi
	movq	%rsi, -24(%rax,%rdi,8)
	movq	%rdx, -16(%rax,%rdi,8)
	movq	%rcx, -8(%rax,%rdi,8)
.LBB5_18:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_1:
	leaq	32(%rdi), %rax
	movq	%rsi, %r14
	movl	$1, %esi
	movq	%rdi, %rbx
	movq	%rdx, %r15
	movq	%rax, %rdx
	movq	%rcx, %r12
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	jmp	.LBB5_2
.LBB5_15:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
	movzbl	(%rax,%r10), %r11d
	jmp	.LBB5_16
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
	.zero	16,32
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
	subq	$440, %rsp
	.cfi_def_cfa_offset 496
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm0, 32(%rsp)
	movq	%rdi, %r14
	movl	16(%rdi), %eax
	movl	%eax, 28(%rsp)
	testl	%eax, %eax
	je	.LBB7_204
	movabsq	$-3932132446836431822, %r12
	movabsq	$4660242116304403819, %r15
	movl	20(%r14), %r11d
	movl	24(%r14), %eax
	movq	%rax, 256(%rsp)
	movl	28(%r14), %eax
	movl	%eax, 184(%rsp)
	movq	(%r14), %r10
	movl	1448(%r10), %eax
	movl	%eax, 52(%rsp)
	leaq	56(%r10), %rbx
	leaq	1440(%r10), %rax
	movq	%rbx, 232(%rsp)
	movq	%rax, 240(%rsp)
	movq	$0, 208(%rsp)
	movq	$8, 216(%rsp)
	movq	$0, 224(%rsp)
	leaq	608(%r10), %rbp
	leaq	336(%r10), %r13
	movq	632(%r10), %rax
	movq	640(%r10), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rsi
	movq	%r10, 16(%rsp)
	movl	%r11d, 12(%rsp)
	movq	%r13, 248(%rsp)
.LBB7_2:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %edi
	testl	%edi, %edi
	je	.LBB7_6
.LBB7_3:
	rep		bsfl	%edi, %r8d
	addq	%rsi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r8
	cmpq	%r12, -24(%rax,%r8,8)
	jne	.LBB7_5
	cmpq	%r15, -16(%rax,%r8,8)
	je	.LBB7_8
.LBB7_5:
	leal	-1(%rdi), %r8d
	andw	%di, %r8w
	movl	%r8d, %edi
	jne	.LBB7_3
	.p2align	4
.LBB7_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB7_9
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB7_2
.LBB7_8:
	leaq	(%rax,%r8,8), %rax
	movq	-8(%rax), %rbp
	movq	208(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_39
.LBB7_38:
	movq	216(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %r10
.LBB7_39:
	movq	616(%r10), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %r15
	leaq	248(%r10), %rsi
	leaq	896(%r10), %r8
	movq	%rdi, 280(%rsp)
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%r8, 288(%rsp)
	movq	256(%rsp), %r12
	movl	%r12d, %r9d
	movq	%r10, %rbx
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
	cmpl	%r12d, %eax
	jne	.LBB7_43
	movq	264(%rbx), %rsi
	cmpq	%r12, %rsi
	jbe	.LBB7_216
	movq	256(%rbx), %rcx
	leaq	(%r12,%r12,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %rbp
	cmpq	16(%rcx,%rsi), %r15
	jae	.LBB7_56
	movq	%rbx, %r8
	movq	8(%rbp), %rcx
	leaq	(%r15,%r15,8), %rsi
	leaq	(%rcx,%rsi,8), %r15
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r15
	jmp	.LBB7_57
.LBB7_43:
	movq	256(%rbx), %rcx
	movq	264(%rbx), %rdi
	movl	%eax, %esi
	movq	%rbx, %r9
	jae	.LBB7_47
	cmpq	%r12, %rdi
	jb	.LBB7_210
	jne	.LBB7_50
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.34(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_9:
	movq	$0, 416(%rsp)
	movq	$8, 424(%rsp)
	movq	$0, 432(%rsp)
	cmpq	$0, 104(%r10)
	movq	%rbp, 40(%rsp)
	je	.LBB7_17
	movq	80(%r10), %rax
	movq	88(%r10), %rcx
	xorl	%edx, %edx
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rsi
.LBB7_11:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %edi
	testl	%edi, %edi
	je	.LBB7_15
.LBB7_12:
	rep		bsfl	%edi, %r8d
	addq	%rsi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r8
	cmpq	%r12, -24(%rax,%r8,8)
	jne	.LBB7_14
	cmpq	%r15, -16(%rax,%r8,8)
	je	.LBB7_24
.LBB7_14:
	leal	-1(%rdi), %r8d
	andw	%di, %r8w
	movl	%r8d, %edi
	jne	.LBB7_12
.LBB7_15:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB7_17
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB7_11
.LBB7_47:
	cmpq	%rsi, %rdi
	jb	.LBB7_211
	cmpl	%r12d, %eax
	jbe	.LBB7_219
	cmpq	%rsi, %rdi
	je	.LBB7_220
.LBB7_50:
	leaq	(%r12,%r12,4), %rdi
	shlq	$5, %rdi
	leaq	(%rcx,%rdi), %rbp
	leaq	(%rsi,%rsi,4), %r10
	shlq	$5, %r10
	addq	%rcx, %r10
	cmpq	16(%rcx,%rdi), %r15
	jae	.LBB7_59
	movq	8(%rbp), %rcx
	leaq	(%r15,%r15,8), %rsi
	leaq	(%rcx,%rsi,8), %r15
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r15
	movl	148(%rbp), %edi
	movl	148(%r10), %esi
	cmpl	%esi, %edi
	je	.LBB7_60
.LBB7_52:
	movq	416(%r9), %rcx
	movq	424(%r9), %r8
	cmpl	%esi, %edi
	jbe	.LBB7_63
	cmpq	%rdi, %r8
	jb	.LBB7_213
	jne	.LBB7_66
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.29(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_56:
	movq	%rbx, %r8
	xorl	%r15d, %r15d
.LBB7_57:
	movl	148(%rbp), %edi
	movq	424(%r8), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_217
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	movq	%r8, %rdi
	addq	416(%r8), %rcx
	movq	%rcx, 176(%rsp)
	movq	$0, 272(%rsp)
	jmp	.LBB7_62
.LBB7_59:
	xorl	%r15d, %r15d
	movl	148(%rbp), %edi
	movl	148(%r10), %esi
	cmpl	%esi, %edi
	jne	.LBB7_52
.LBB7_60:
	movq	424(%r9), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_221
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	movq	%r9, %rdi
	addq	416(%r9), %rcx
	movq	%rcx, 176(%rsp)
	movl	$1, %ecx
	movq	%rcx, 272(%rsp)
.LBB7_62:
	movq	%r10, 40(%rsp)
	testb	$1, %dl
	movq	%rbp, 56(%rsp)
	jne	.LBB7_67
	jmp	.LBB7_71
.LBB7_17:
	movzbl	152(%r10), %eax
	movq	184(%r10), %rax
	movq	192(%r10), %rcx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rdi
.LBB7_18:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB7_22
.LBB7_19:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rcx, %r9
	movq	%r9, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	cmpq	%r12, -112(%rax,%rdx)
	jne	.LBB7_21
	cmpq	%r15, -104(%rax,%rdx)
	je	.LBB7_25
.LBB7_21:
	leal	-1(%r8), %edx
	andw	%r8w, %dx
	movl	%edx, %r8d
	jne	.LBB7_19
.LBB7_22:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB7_28
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	movabsq	$-3932132446836431822, %r12
	jmp	.LBB7_18
.LBB7_24:
	leaq	(%rax,%r8,8), %rax
	movq	-8(%rax), %rbp
	movl	$8, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB7_32
.LBB7_25:
	addq	%rax, %rdx
	imulq	$112, %r9, %rdi
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
	ja	.LBB7_27
	incq	200(%r10)
	movb	$-1, %cl
.LBB7_27:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%r10)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB7_31
.LBB7_28:
	movq	1440(%r10), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%r10)
	movw	$256, 128(%rsp)
	movq	$1, 64(%rsp)
	movabsq	$-3932132446836431822, %r13
	movq	%r13, 72(%rsp)
	movq	%r15, 80(%rsp)
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
	leaq	64(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r10, %r12
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r12), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.37(%rip), %rsi
	leaq	208(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	216(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 224(%rsp)
	movq	$0, 304(%rsp)
	movq	$8, 312(%rsp)
	movq	$0, 320(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.39(%rip), %xmm0
	movups	%xmm0, 328(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.39+16(%rip), %xmm1
	movups	%xmm1, 344(%rsp)
	movq	$0, 360(%rsp)
	movq	$8, 368(%rsp)
	movq	$0, 376(%rsp)
	movups	%xmm0, 384(%rsp)
	movups	%xmm1, 400(%rsp)
	movq	232(%rsp), %rdi
	leaq	304(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_30
	decq	%rax
	movq	%rax, 224(%rsp)
.LBB7_30:
	movq	232(%rsp), %rax
	movq	8(%rax), %r12
	leaq	(,%rbp,8), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
	movups	400(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	384(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	368(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	304(%rsp), %xmm0
	movups	320(%rsp), %xmm1
	movups	336(%rsp), %xmm2
	movups	352(%rsp), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	(%r12,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	160(%rsp), %xmm0
	movups	%xmm0, 168(%r12,%r13)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 152(%r12,%r13)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 136(%r12,%r13)
	movdqa	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
	movdqu	%xmm3, 120(%r12,%r13)
	movdqu	%xmm2, 104(%r12,%r13)
	movdqu	%xmm1, 88(%r12,%r13)
	movdqu	%xmm0, 72(%r12,%r13)
	movq	248(%rsp), %r13
	jmp	.LBB7_32
.LBB7_63:
	cmpq	%rsi, %r8
	jb	.LBB7_214
	cmpl	%edi, %esi
	jbe	.LBB7_223
	cmpq	%rsi, %r8
	je	.LBB7_224
.LBB7_66:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	movq	%rdi, 176(%rsp)
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 264(%rsp)
	movl	$2, %ecx
	movq	%rcx, 272(%rsp)
	movq	%r9, %rdi
	movq	%r10, 40(%rsp)
	testb	$1, %dl
	movq	%rbp, 56(%rsp)
	je	.LBB7_71
.LBB7_67:
	movq	1408(%rdi), %rbx
	testq	%rbx, %rbx
	jne	.LBB7_69
	movq	1416(%rdi), %rbx
.LBB7_69:
	movq	(%rbx), %rcx
	movq	16(%rbx), %r12
	subq	%r12, %rcx
	cmpq	$11, %rcx
	jbe	.LBB7_206
.LBB7_70:
	movq	8(%rbx), %rcx
	leaq	core::ops::function::FnOnce::call_once(%rip), %rdx
	movq	%rdx, (%rcx,%r12)
	movl	%eax, 8(%rcx,%r12)
	addq	$12, %r12
	movq	%r12, 16(%rbx)
.LBB7_71:
	movq	8(%r14), %rbx
	movq	%rbx, %rax
	shrq	$32, %rax
	movq	%rax, 200(%rsp)
	movl	152(%rbp), %eax
	testb	%al, %al
	jns	.LBB7_75
	movl	%ebx, 208(%rsp)
	movq	200(%rsp), %rax
	movl	%eax, 212(%rsp)
	movdqu	48(%r15), %xmm0
	movdqu	%xmm0, 64(%rsp)
	movl	$2, %esi
	movq	288(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_74
	movq	$2, 304(%rsp)
	movq	208(%rsp), %r8
	leaq	64(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	304(%rsp), %r9
	movq	16(%rsp), %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_74:
	movl	152(%rbp), %eax
	movq	16(%rsp), %rdi
.LBB7_75:
	movq	%r14, 296(%rsp)
	testb	$4, %al
	je	.LBB7_81
	movq	56(%r15), %r13
	testq	%r13, %r13
	je	.LBB7_81
	movq	48(%r15), %rbp
	shlq	$3, %r13
	xorl	%r14d, %r14d
	leaq	64(%rsp), %r12
	jmp	.LBB7_79
	.p2align	4
.LBB7_78:
	addq	$8, %r14
	cmpq	%r14, %r13
	je	.LBB7_81
.LBB7_79:
	movq	(%rbp,%r14), %rax
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_78
	movq	%rbx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	%r12, %rsi
	callq	*%rcx
	movq	16(%rsp), %rdi
	jmp	.LBB7_78
.LBB7_81:
	movq	272(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%r15, 192(%rsp)
	je	.LBB7_93
	movq	%rdi, %r8
	movl	28(%rsp), %edi
	notl	%edi
	cmpl	$1, %ecx
	movq	56(%rsp), %rbp
	movq	176(%rsp), %r9
	jne	.LBB7_96
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_205
	decq	%rsi
	movq	80(%rbp), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%rbp, %r9
	movl	8(%rax,%rcx), %ebp
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r9)
	cmpq	%rdi, %rsi
	je	.LBB7_88
	jbe	.LBB7_218
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB7_88
	notl	%eax
	movq	8(%r8), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	28(%rsp), %edx
	movl	%edx, (%rcx,%rax,8)
.LBB7_88:
	movq	40(%rsp), %r12
	movq	88(%r12), %r14
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 28(%rsp)
	cmpq	72(%r12), %r14
	jne	.LBB7_90
	leaq	72(%r12), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.20(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %r8
.LBB7_90:
	movq	80(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movl	%ebx, (%rax,%rcx)
	movq	200(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	incq	%r14
	movq	%r14, 88(%r12)
	movl	144(%r12), %esi
	movl	148(%r12), %edi
	movq	8(%r8), %rax
	movl	%ebx, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	28(%rsp), %edx
	movl	%edx, (%rax,%rcx,8)
	movl	%ebp, 4(%rax,%rcx,8)
	movq	%rsi, 256(%rsp)
	movl	%esi, 8(%rax,%rcx,8)
	movl	%edi, 12(%rax,%rcx,8)
	movq	16(%r15), %rax
	movq	24(%r15), %r13
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	movd	32(%rsp), %xmm0
	movd	%xmm0, 64(%rsp)
	movq	(%rcx), %rdx
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	movq	176(%rsp), %r14
	cmpq	64(%r14), %rdx
	movl	%ebp, 12(%rsp)
	jae	.LBB7_124
	movq	56(%r14), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB7_124
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rbp
	shlq	$4, %rbp
	addq	24(%r14), %rbp
	jmp	.LBB7_125
.LBB7_93:
	movq	16(%r15), %rax
	movq	24(%r15), %r13
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	movd	32(%rsp), %xmm0
	movd	%xmm0, 64(%rsp)
	movq	(%rcx), %rdx
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	movq	176(%rsp), %r14
	cmpq	64(%r14), %rdx
	jae	.LBB7_107
	movq	56(%r14), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB7_107
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rbp
	shlq	$4, %rbp
	addq	24(%r14), %rbp
	movq	%rax, 40(%rsp)
	testb	%cl, %cl
	jne	.LBB7_108
.LBB7_118:
	movl	12(%rsp), %r12d
	notl	%r12d
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	64(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	52(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	jmp	.LBB7_119
.LBB7_96:
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_205
	movq	256(%r8), %rax
	movq	%rax, 184(%rsp)
	decq	%rsi
	movq	80(%rbp), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r10d
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%rbp)
	cmpq	%rdi, %rsi
	movq	40(%rsp), %r13
	je	.LBB7_101
	jbe	.LBB7_218
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB7_101
	notl	%eax
	movq	8(%r8), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	28(%rsp), %edx
	movl	%edx, (%rcx,%rax,8)
.LBB7_101:
	leaq	64(%rsp), %rdi
	movq	%r9, %rsi
	movl	%r10d, %r12d
	movl	%r10d, %edx
	movq	264(%rsp), %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	72(%rsp), %eax
	movl	%eax, 12(%rsp)
	movq	88(%r13), %r14
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 28(%rsp)
	cmpq	72(%r13), %r14
	jne	.LBB7_103
	leaq	72(%r13), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.20(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB7_103:
	movq	80(%r13), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movl	%ebx, (%rax,%rcx)
	movq	200(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	12(%rsp), %r8d
	movl	%r8d, 8(%rax,%rcx)
	incq	%r14
	movq	%r14, 88(%r13)
	movl	144(%r13), %edi
	movl	148(%r13), %r9d
	movq	16(%rsp), %rsi
	movq	8(%rsi), %rax
	movl	%ebx, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	28(%rsp), %edx
	movl	%edx, (%rax,%rcx,8)
	movl	%r8d, 4(%rax,%rcx,8)
	movq	%rdi, 256(%rsp)
	movl	%edi, 8(%rax,%rcx,8)
	movl	%r9d, 12(%rax,%rcx,8)
	movl	64(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB7_136
	movq	8(%rsi), %rax
	notl	%ecx
	xorl	%edi, %edi
	leaq	(%rcx,%rcx,2), %rdx
	cmpq	%rcx, 16(%rsi)
	jbe	.LBB7_110
	movl	16(%rax,%rdx,8), %r8d
	cmpl	68(%rsp), %r8d
	jne	.LBB7_111
	leaq	(%rax,%rdx,8), %rsi
	movl	(%rsi), %edi
	movl	8(%rsi), %ecx
	movl	12(%rsi), %esi
	jmp	.LBB7_111
.LBB7_107:
	xorl	%ebp, %ebp
	movq	%rax, 40(%rsp)
	testb	%cl, %cl
	je	.LBB7_118
.LBB7_108:
	movl	12(%rsp), %r12d
	notl	%r12d
	leaq	64(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	52(%rsp), %ecx
.LBB7_119:
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	movq	40(%rsp), %rdi
	je	.LBB7_123
	shlq	$4, %r13
	movq	%rbx, 32(%rsp)
	movl	12(%rsp), %ebx
	movl	%ecx, %r15d
	movq	248(%rsp), %rbp
	.p2align	4
.LBB7_121:
	leaq	16(%rdi), %r12
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movq	32(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_121
	movq	56(%rsp), %rbp
	movq	192(%rsp), %r15
	movq	32(%rsp), %rbx
	jmp	.LBB7_148
.LBB7_124:
	xorl	%ebp, %ebp
.LBB7_125:
	movl	%edi, 184(%rsp)
	movq	%rax, 56(%rsp)
	movl	12(%rsp), %r12d
	notl	%r12d
	testb	%cl, %cl
	je	.LBB7_127
	leaq	64(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	52(%rsp), %ecx
	jmp	.LBB7_128
.LBB7_127:
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	64(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	52(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_128:
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	movq	56(%rsp), %rdi
	je	.LBB7_132
	shlq	$4, %r13
	movq	%rbx, 32(%rsp)
	movl	12(%rsp), %ebx
	movl	%ecx, %r15d
	movq	248(%rsp), %rbp
	.p2align	4
.LBB7_130:
	leaq	16(%rdi), %r12
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movq	32(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB7_130
	movq	192(%rsp), %r15
	movq	40(%rsp), %rbp
	movq	32(%rsp), %rbx
	jmp	.LBB7_148
.LBB7_123:
	movq	56(%rsp), %rbp
	jmp	.LBB7_148
.LBB7_132:
	movq	40(%rsp), %rbp
	jmp	.LBB7_148
.LBB7_110:
.LBB7_111:
	movl	%edi, (%rax,%rdx,8)
	movl	%r12d, 4(%rax,%rdx,8)
	movl	%ecx, 8(%rax,%rdx,8)
	movl	%esi, 12(%rax,%rdx,8)
	notl	%edi
	cmpl	%ecx, 144(%rbp)
	jne	.LBB7_114
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_222
	movq	80(%rbp), %rax
	jmp	.LBB7_135
.LBB7_114:
	cmpl	%ecx, 144(%r13)
	jne	.LBB7_133
	movq	88(%r13), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_222
	movq	80(%r13), %rax
	jmp	.LBB7_135
.LBB7_31:
	movups	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 120(%rsp)
	movdqu	%xmm2, 104(%rsp)
	movdqu	%xmm1, 88(%rsp)
	movups	%xmm0, 72(%rsp)
	movdqu	-24(%rdx), %xmm0
	movq	-8(%rdx), %rcx
	movq	%rax, 64(%rsp)
	movdqu	%xmm0, 136(%rsp)
	movq	%rcx, 152(%rsp)
	leaq	64(%rsp), %rdi
	leaq	208(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB7_32:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rsi
	leaq	416(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	424(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 432(%rsp)
	movq	16(%rsp), %r12
	movq	624(%r12), %rbp
	movq	232(%rsp), %r8
	movups	416(%rsp), %xmm0
	movaps	%xmm0, 304(%rsp)
	movq	$1, 320(%rsp)
	movq	%rbp, (%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.11(%rip), %rsi
	leaq	64(%rsp), %rdi
	leaq	304(%rsp), %r9
	movl	$16, %edx
	movq	%r13, %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	movq	%r12, %r10
	cmpq	608(%r12), %rbp
	jne	.LBB7_34
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.13(%rip), %rsi
	movq	40(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %r10
.LBB7_34:
	movq	616(%r10), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	64(%rsp), %xmm0
	movdqu	80(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%r10)
	movq	632(%r10), %rax
	movq	640(%r10), %rcx
	movq	%rcx, %rsi
	andq	%r15, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB7_207
.LBB7_35:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB7_209
.LBB7_36:
	movq	648(%r10), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB7_212
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r10)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$32, (%rax,%rdx)
	movb	$32, 16(%rax,%rsi)
	incq	656(%r10)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$-3932132446836431822, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r15, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	movq	208(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_38
	jmp	.LBB7_39
.LBB7_133:
	movl	%ecx, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	184(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_222
	addq	%rcx, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
.LBB7_135:
	shlq	$4, %rdi
	movl	%r12d, 8(%rax,%rdi)
.LBB7_136:
	movq	16(%r15), %rax
	movq	24(%r15), %r13
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	movd	32(%rsp), %xmm0
	movd	%xmm0, 304(%rsp)
	movq	(%rcx), %rdx
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	movq	264(%rsp), %rdi
	cmpq	64(%rdi), %rdx
	jae	.LBB7_139
	movq	56(%rdi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	movl	12(%rsp), %esi
	je	.LBB7_140
	notq	%rdx
	leaq	(%rdx,%rdx,2), %r15
	shlq	$4, %r15
	addq	24(%rdi), %r15
	jmp	.LBB7_141
.LBB7_139:
	xorl	%r15d, %r15d
	movl	12(%rsp), %esi
	jmp	.LBB7_141
.LBB7_140:
	xorl	%r15d, %r15d
.LBB7_141:
	movl	%r9d, 184(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rbx, %r14
	movl	%esi, %r12d
	notl	%r12d
	testb	%cl, %cl
	je	.LBB7_143
	leaq	304(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	52(%rsp), %ebp
	jmp	.LBB7_144
.LBB7_143:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r15), %rdi
	leaq	304(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%r15), %rax
	movl	52(%rsp), %ebp
	movl	%ebp, (%rax,%r12,4)
.LBB7_144:
	movq	40(%r15), %rax
	movl	%ebp, (%rax,%r12,4)
	movq	%r13, %r15
	testq	%r13, %r13
	movq	32(%rsp), %rdi
	movq	248(%rsp), %rbx
	movl	12(%rsp), %eax
	movq	%r14, %r12
	movq	264(%rsp), %r13
	je	.LBB7_147
	shlq	$4, %r15
	.p2align	4
.LBB7_146:
	leaq	16(%rdi), %rcx
	movq	%rcx, 32(%rsp)
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	movl	%eax, %r14d
	movl	%eax, %r8d
	movq	%r12, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movl	%r14d, %eax
	movq	32(%rsp), %rdi
	addq	$-16, %r15
	jne	.LBB7_146
.LBB7_147:
	movq	192(%rsp), %r15
	movq	40(%rsp), %rbp
	movq	%r12, %rbx
.LBB7_148:
	movq	40(%r15), %r12
	movl	152(%rbp), %eax
	testq	%r12, %r12
	movq	16(%rsp), %rdi
	je	.LBB7_155
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB7_155
	movq	32(%r15), %r13
	shlq	$3, %r12
	xorl	%r14d, %r14d
	leaq	64(%rsp), %r15
	jmp	.LBB7_152
	.p2align	4
.LBB7_151:
	addq	$8, %r14
	cmpq	%r14, %r12
	je	.LBB7_154
.LBB7_152:
	movq	(%r13,%r14), %rax
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_151
	movq	%rbx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	%r15, %rsi
	callq	*%rcx
	movq	16(%rsp), %rdi
	jmp	.LBB7_151
.LBB7_154:
	movl	152(%rbp), %eax
	movq	192(%rsp), %r15
.LBB7_155:
	testb	$32, %al
	movq	296(%rsp), %r14
	je	.LBB7_158
	movl	%ebx, 208(%rsp)
	movq	200(%rsp), %rax
	movl	%eax, 212(%rsp)
	movdqu	32(%r15), %xmm0
	movdqu	%xmm0, 64(%rsp)
	movq	288(%rsp), %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_158
	movq	$0, 304(%rsp)
	movq	208(%rsp), %r8
	leaq	64(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	304(%rsp), %r9
	movq	16(%rsp), %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_158:
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::archetype::ArchetypeAfterBundleInsert::iter_inserted@GOTPCREL(%rip)
	movl	152(%rbp), %eax
	testb	$2, %al
	movq	16(%rsp), %rdi
	je	.LBB7_169
	movq	%rbp, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	72(%rsp), %r12
	movq	80(%rsp), %rax
	movq	88(%rsp), %r13
	leaq	304(%rsp), %r15
	.p2align	4
.LBB7_160:
	testq	%rcx, %rcx
	je	.LBB7_163
	cmpq	%r12, %rcx
	je	.LBB7_163
	leaq	8(%rcx), %r14
	movq	%rax, %rbp
	jmp	.LBB7_166
	.p2align	4
.LBB7_163:
	testq	%rax, %rax
	je	.LBB7_168
	cmpq	%r13, %rax
	je	.LBB7_168
	leaq	8(%rax), %rbp
	xorl	%r14d, %r14d
	movq	%rax, %rcx
	movq	%rbp, %rax
.LBB7_166:
	movq	(%rcx), %rdx
	movq	64(%rdi), %rcx
	leaq	(%rdx,%rdx,8), %rsi
	shlq	$5, %rsi
	movq	256(%rcx,%rsi), %r8
	movq	%r14, %rcx
	testq	%r8, %r8
	je	.LBB7_160
	movq	%rbx, 304(%rsp)
	movq	%rdx, 312(%rsp)
	movb	$0, 320(%rsp)
	movq	%r15, %rsi
	callq	*%r8
	movq	16(%rsp), %rdi
	movq	%rbp, %rax
	movq	%r14, %rcx
	jmp	.LBB7_160
.LBB7_168:
	movq	40(%rsp), %rax
	movl	152(%rax), %eax
	movq	296(%rsp), %r14
	movq	192(%rsp), %r15
.LBB7_169:
	testb	$64, %al
	movl	12(%rsp), %ebp
	je	.LBB7_203
	movl	%ebx, 208(%rsp)
	movq	200(%rsp), %rax
	movl	%eax, 212(%rsp)
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::archetype::ArchetypeAfterBundleInsert::iter_inserted@GOTPCREL(%rip)
	movq	64(%rsp), %r12
	movq	72(%rsp), %r15
	movq	80(%rsp), %r13
	movq	88(%rsp), %r8
	testq	%r12, %r12
	je	.LBB7_173
	movq	%r15, %rbp
	subq	%r12, %rbp
	shrq	$3, %rbp
	testq	%r13, %r13
	je	.LBB7_176
	movq	%r8, %rax
	subq	%r13, %rax
	shrq	$3, %rax
	addq	%rax, %rbp
	jmp	.LBB7_176
.LBB7_173:
	testq	%r13, %r13
	je	.LBB7_175
	movq	%r8, %rbp
	subq	%r13, %rbp
	shrq	$3, %rbp
	jmp	.LBB7_176
.LBB7_175:
	xorl	%ebp, %ebp
.LBB7_176:
	leaq	(,%rbp,8), %rsi
	xorl	%edi, %edi
	movq	%rbp, %rax
	shrq	$61, %rax
	jne	.LBB7_215
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rsi
	ja	.LBB7_215
	testq	%rsi, %rsi
	je	.LBB7_181
	movq	%r8, 32(%rsp)
	movq	%r14, %rbx
	movq	%rsi, %r14
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	movl	$8, %edi
	movq	%r14, %rsi
	movq	32(%rsp), %r8
	testq	%rax, %rax
	je	.LBB7_215
	movq	%rbx, %r14
	movq	%rax, %rbx
	jmp	.LBB7_182
.LBB7_181:
	movl	$8, %ebx
	xorl	%ebp, %ebp
.LBB7_182:
	movq	%rbp, 304(%rsp)
	movq	%rbx, 312(%rsp)
	movq	$0, 320(%rsp)
	testq	%r12, %r12
	je	.LBB7_195
	movq	%r15, %rdx
	subq	%r12, %rdx
	shrq	$3, %rdx
	testq	%r13, %r13
	je	.LBB7_185
	movq	%r8, %rax
	subq	%r13, %rax
	shrq	$3, %rax
	addq	%rax, %rdx
.LBB7_185:
	cmpq	%rbp, %rdx
	ja	.LBB7_197
.LBB7_186:
	xorl	%eax, %eax
	movl	12(%rsp), %ebp
	testq	%r12, %r12
	je	.LBB7_191
.LBB7_187:
	cmpq	%r15, %r12
	je	.LBB7_191
	subq	%r12, %r15
	shrq	$3, %r15
	leaq	(%rbx,%rax,8), %rdx
	xorl	%ecx, %ecx
	.p2align	4
.LBB7_189:
	movq	(%r12,%rcx,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %r15
	jne	.LBB7_189
	addq	%rcx, %rax
.LBB7_191:
	testq	%r13, %r13
	je	.LBB7_199
	cmpq	%r8, %r13
	je	.LBB7_199
	subq	%r13, %r8
	shrq	$3, %r8
	xorl	%ecx, %ecx
	.p2align	4
.LBB7_194:
	movq	(%r13,%rcx,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	incq	%rax
	incq	%rcx
	cmpq	%rcx, %r8
	jne	.LBB7_194
	jmp	.LBB7_199
.LBB7_195:
	testq	%r13, %r13
	je	.LBB7_198
	movq	%r8, %rdx
	subq	%r13, %rdx
	shrq	$3, %rdx
	cmpq	%rbp, %rdx
	jbe	.LBB7_186
.LBB7_197:
	movq	%r8, %rbx
	leaq	304(%rsp), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	%rbx, %r8
	movq	312(%rsp), %rbx
	movq	320(%rsp), %rax
	movl	12(%rsp), %ebp
	testq	%r12, %r12
	jne	.LBB7_187
	jmp	.LBB7_191
.LBB7_198:
	xorl	%eax, %eax
	movl	12(%rsp), %ebp
.LBB7_199:
	movq	304(%rsp), %r15
	movq	%rbx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movl	$1, %esi
	movq	288(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_201
	movq	$1, 304(%rsp)
	movq	208(%rsp), %r8
	leaq	64(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	304(%rsp), %r9
	movq	16(%rsp), %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_201:
	testq	%r15, %r15
	je	.LBB7_203
	shlq	$3, %r15
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_203:
	movl	28(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	%ebp, 20(%r14)
	movq	256(%rsp), %rax
	movl	%eax, 24(%r14)
	movl	184(%rsp), %eax
	movl	%eax, 28(%r14)
	movq	(%r14), %rbx
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rsi
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
	addq	$440, %rsp
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
.LBB7_204:
	.cfi_def_cfa_offset 496
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rsi
	movq	%r14, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB7_205:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_206:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %ebp
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%rsp), %rdi
	movl	%ebp, %eax
	movq	56(%rsp), %rbp
	jmp	.LBB7_70
.LBB7_207:
	movl	$16, %edi
.LBB7_208:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB7_35
	jmp	.LBB7_208
.LBB7_209:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB7_36
.LBB7_210:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.33(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_211:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.30(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_212:
	leaq	632(%r10), %rdi
	leaq	664(%r10), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	632(%rax), %r12
	movq	16(%rsp), %rax
	movq	640(%rax), %rsi
	movq	%rsi, 40(%rsp)
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movq	16(%rsp), %r10
	movzbl	(%r12,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%r10)
	leaq	-16(%rax), %rcx
	andq	40(%rsp), %rcx
	movb	$32, (%r12,%rax)
	movb	$32, 16(%r12,%rcx)
	incq	656(%r10)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-3932132446836431822, %rcx
	movq	%rcx, -24(%r12,%rax,8)
	movq	%r15, -16(%r12,%rax,8)
	movq	%rbp, -8(%r12,%rax,8)
	movq	208(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_38
	jmp	.LBB7_39
.LBB7_213:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.28(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_214:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_215:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB7_216:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.17(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_217:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.18(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_218:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_219:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.31(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_220:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_221:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.16(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_222:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.21(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_223:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.26(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_224:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.27(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end7:
	.size	entity_insert, .Lfunc_end7-entity_insert
	.cfi_endproc

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/core/src/iter/traits/iterator.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 89

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"Y\000\000\000\000\000\000\000\353\007\000\000\t\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 77

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"M\000\000\000\000\000\000\000\313\007\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 81

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 103

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.6
	.asciz	"g\000\000\000\000\000\000\000\031\005\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.6
	.asciz	"g\000\000\000\000\000\000\000\003\b\000\000\024\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 106

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.9
	.asciz	"j\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.12,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.12:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.12, 98

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.13,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.13:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.12
	.asciz	"b\000\000\000\000\000\000\000\274\001\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.13, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.14,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.14:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.12
	.asciz	"b\000\000\000\000\000\000\000\264\001\000\000B\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.14, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.15,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.15:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/bundle/insert.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.15, 100

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.16,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.16:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"d\000\000\000\000\000\000\000f\000\000\0007\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.16, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.17,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.17:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"d\000\000\000\000\000\000\000F\000\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.17, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.18,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.18:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"d\000\000\000\000\000\000\000O\000\000\0003\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.18, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.19,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.19:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.19, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.20,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.20:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000[\002\000\000\027\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.20, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.21,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.21:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000K\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.21, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.22,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.22,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.22:
	.ascii	"mid > len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.22, 9

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.23,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.23:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.22
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.23, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.24,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.24:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.24, 104

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.25,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.25:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"h\000\000\000\000\000\000\000\377\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.25, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.26,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.26:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"h\000\000\000\000\000\000\000\000\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.26, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.27,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.27:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"h\000\000\000\000\000\000\000\000\003\000\000/\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.27, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.28,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.28:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"h\000\000\000\000\000\000\000\374\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.28, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.29,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.29:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"h\000\000\000\000\000\000\000\375\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.29, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.30,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.30:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000i\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.30, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.31,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.31:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000j\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.31, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.32,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.32:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000j\003\000\000,\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.32, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.33,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.33:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000f\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.33, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.34,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.34:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000g\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.34, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.35,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.35:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.19
	.asciz	"`\000\000\000\000\000\000\000w\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.35, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.36,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.36:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.36, 105

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.37,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.37:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"i\000\000\000\000\000\000\000\342\000\000\000$\000\000"
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

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

	.file	"entity_insert_sparse.a45cf386fd6c5ebc-cgu.0"
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
	.zero	16,122
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
	movss	%xmm0, 92(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 60(%rsp)
	testl	%eax, %eax
	je	.LBB7_136
	movabsq	$-724751064606747708, %rbx
	movl	20(%r13), %ebp
	movl	24(%r13), %eax
	movq	%rax, 144(%rsp)
	movl	28(%r13), %eax
	movl	%eax, 88(%rsp)
	movq	(%r13), %r14
	movl	1448(%r14), %r10d
	leaq	56(%r14), %rcx
	leaq	1440(%r14), %rax
	movq	%rcx, 32(%rsp)
	movq	%rcx, 288(%rsp)
	movq	%rax, 296(%rsp)
	movq	$0, 264(%rsp)
	movq	$8, 272(%rsp)
	movq	$0, 280(%rsp)
	leaq	608(%r14), %rax
	movq	%rax, 16(%rsp)
	leaq	336(%r14), %r12
	movq	632(%r14), %rax
	movq	640(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbx, %rdi
	movq	%r12, 64(%rsp)
	movl	%ebp, 28(%rsp)
	movl	%r10d, 44(%rsp)
	movabsq	$5663211681776630895, %r15
.LBB7_2:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB7_6
	movq	%rsi, 48(%rsp)
.LBB7_4:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	movq	8(%rdx,%r9,8), %r10
	xorq	%rbx, %r10
	movq	(%rdx,%r9,8), %r11
	xorq	%r15, %r11
	orq	%r10, %r11
	je	.LBB7_41
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	movq	48(%rsp), %rsi
	jne	.LBB7_4
	.p2align	4
.LBB7_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_8
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB7_2
.LBB7_41:
	movq	-8(%rax,%r9,8), %rbp
	movq	264(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_43
	jmp	.LBB7_44
.LBB7_8:
	movq	$0, 328(%rsp)
	movq	$8, 336(%rsp)
	movq	$0, 344(%rsp)
	cmpq	$0, 104(%r14)
	je	.LBB7_16
	movq	80(%r14), %rax
	movq	88(%r14), %r15
	leaq	-24(%rax), %r12
	xorl	%edx, %edx
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-724751064606747708, %rdi
	movq	%rbx, %r8
.LBB7_10:
	andq	%r15, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB7_13
.LBB7_11:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%r15, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	8(%r12,%r10,8), %r11
	xorq	%rdi, %r11
	movq	%r12, %rcx
	movq	(%r12,%r10,8), %r12
	movq	%rdi, %rsi
	movabsq	$5663211681776630895, %rdi
	xorq	%rdi, %r12
	orq	%r11, %r12
	je	.LBB7_15
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movq	%rsi, %rdi
	movq	%rcx, %r12
	jne	.LBB7_11
.LBB7_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB7_16
	addq	%rdx, %r8
	addq	$16, %r8
	addq	$16, %rdx
	jmp	.LBB7_10
.LBB7_16:
	movzbl	152(%r14), %eax
	movq	184(%r14), %rax
	movq	192(%r14), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-724751064606747708, %r15
	movq	%rbx, %r9
	movabsq	$5663211681776630895, %r8
.LBB7_17:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB7_20
.LBB7_18:
	movq	%r13, %rbx
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rcx, %r11
	movq	%r11, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	movq	8(%rsi,%rdx), %r12
	xorq	%r15, %r12
	movq	(%rsi,%rdx), %r13
	xorq	%r8, %r13
	orq	%r12, %r13
	je	.LBB7_22
	leal	-1(%r10), %edx
	andw	%r10w, %dx
	movl	%edx, %r10d
	movq	%rbx, %r13
	jne	.LBB7_18
.LBB7_20:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB7_26
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	movl	28(%rsp), %ebp
	jmp	.LBB7_17
.LBB7_15:
	movq	-8(%rax,%r10,8), %rbp
	movl	$8, %esi
	movq	32(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB7_30
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
	ja	.LBB7_24
	incq	200(%r14)
	movb	$-1, %cl
.LBB7_24:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%r14)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	movq	%rbx, %r13
	jne	.LBB7_25
.LBB7_26:
	movq	%r13, %rbx
	movq	1440(%r14), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%r14)
	movw	$257, 216(%rsp)
	movq	$1, 152(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %xmm0
	movups	%xmm0, 160(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %r12
	movq	$4, 192(%rsp)
	movq	$4, 200(%rsp)
	movq	$0, 208(%rsp)
	movb	$1, 218(%rsp)
	movq	$0, 176(%rsp)
	leaq	152(%rsp), %rdx
	movq	32(%rsp), %rdi
	movq	%rbp, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	264(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	272(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 280(%rsp)
	movq	$0, 152(%rsp)
	movq	$8, 160(%rsp)
	movq	$0, 168(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %xmm0
	movups	%xmm0, 176(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.9+16(%rip), %xmm1
	movups	%xmm1, 192(%rsp)
	movq	$0, 208(%rsp)
	movq	$8, 216(%rsp)
	movq	$0, 224(%rsp)
	movups	%xmm0, 232(%rsp)
	movups	%xmm1, 248(%rsp)
	movq	288(%rsp), %rdi
	leaq	152(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	280(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_28
	decq	%rax
	movq	%rax, 280(%rsp)
.LBB7_28:
	movq	288(%rsp), %rax
	movq	8(%rax), %r12
	leaq	(,%rbp,8), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
	leaq	(%r12,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	152(%rsp), %xmm0
	movdqu	168(%rsp), %xmm1
	movdqu	184(%rsp), %xmm2
	movdqu	200(%rsp), %xmm3
	movups	216(%rsp), %xmm4
	movups	232(%rsp), %xmm5
	movups	248(%rsp), %xmm6
	movups	%xmm6, 168(%r12,%r13)
	movups	%xmm5, 152(%r12,%r13)
	movups	%xmm4, 136(%r12,%r13)
	movdqu	%xmm3, 120(%r12,%r13)
	movdqu	%xmm2, 104(%r12,%r13)
	movdqu	%xmm1, 88(%r12,%r13)
	movdqu	%xmm0, 72(%r12,%r13)
	movq	%rbx, %r13
	jmp	.LBB7_29
.LBB7_25:
	movq	-8(%rdx), %rcx
	movq	%rcx, 240(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 224(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 208(%rsp)
	movdqu	%xmm2, 192(%rsp)
	movdqu	%xmm1, 176(%rsp)
	movdqu	%xmm0, 160(%rsp)
	movq	%rax, 152(%rsp)
	leaq	152(%rsp), %rdi
	leaq	264(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB7_29:
	movabsq	$-724751064606747708, %rbx
.LBB7_30:
	leaq	328(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	336(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 344(%rsp)
	movq	624(%r14), %rbp
	movq	288(%rsp), %r8
	movups	328(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	$1, 128(%rsp)
	movq	%rbp, (%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rsi
	leaq	152(%rsp), %rdi
	leaq	112(%rsp), %r9
	movl	$23, %edx
	movq	64(%rsp), %r12
	movq	%r12, %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	cmpq	608(%r14), %rbp
	jne	.LBB7_32
	movq	16(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB7_32:
	movq	616(%r14), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	movq	184(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	152(%rsp), %xmm0
	movdqu	168(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%r14)
	movq	632(%r14), %rax
	movq	640(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB7_34
	movabsq	$5663211681776630895, %r9
.LBB7_36:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB7_37
.LBB7_38:
	movq	648(%r14), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB7_40
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$122, (%rax,%rdx)
	movb	$122, 16(%rax,%rsi)
	incq	656(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r9, -24(%rax,%rcx,8)
	movq	%rbx, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	movq	264(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_44
.LBB7_43:
	movq	272(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_44:
	movq	616(%r14), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rbx
	leaq	248(%r14), %rsi
	leaq	896(%r14), %r8
	movq	%rdi, 304(%rsp)
	movq	%r12, %rdx
	movq	32(%rsp), %rcx
	movq	%r8, 312(%rsp)
	movq	144(%rsp), %r15
	movl	%r15d, %r9d
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
	cmpl	%r15d, %eax
	jne	.LBB7_45
	movq	256(%r14), %rcx
	leaq	(%r15,%r15,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %r12
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB7_48
	movq	8(%r12), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %rsi
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %rsi
	movq	%rsi, 16(%rsp)
	jmp	.LBB7_74
.LBB7_45:
	movq	256(%r14), %rcx
	movl	%eax, %esi
	leaq	(%rsi,%rsi,4), %rbp
	shlq	$5, %rbp
	addq	%rcx, %rbp
	leaq	(%r15,%r15,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %r12
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB7_46
	movq	8(%r12), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %rsi
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %rsi
	movq	%rsi, 16(%rsp)
	jmp	.LBB7_50
.LBB7_48:
	movq	$0, 16(%rsp)
.LBB7_74:
	movl	148(%r12), %ecx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$3, %rcx
	addq	416(%r14), %rcx
	movq	%rcx, 96(%rsp)
	movq	$0, 32(%rsp)
	testb	$1, %dl
	movq	%r12, 80(%rsp)
	jne	.LBB7_54
	jmp	.LBB7_59
.LBB7_46:
	movq	$0, 16(%rsp)
.LBB7_50:
	movl	148(%r12), %esi
	movl	148(%rbp), %ecx
	leaq	(%rsi,%rsi,8), %rdi
	cmpl	%ecx, %esi
	jne	.LBB7_51
	shlq	$3, %rdi
	addq	416(%r14), %rdi
	movq	%rdi, 96(%rsp)
	movl	$1, %ecx
	movq	%rcx, 32(%rsp)
	testb	$1, %dl
	movq	%r12, 80(%rsp)
	jne	.LBB7_54
	jmp	.LBB7_59
.LBB7_51:
	movq	416(%r14), %rsi
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rsi,%rcx,8), %rcx
	movq	%rcx, 320(%rsp)
	leaq	(%rsi,%rdi,8), %rdi
	movq	%rdi, 96(%rsp)
	movl	$2, %ecx
	movq	%rcx, 32(%rsp)
	testb	$1, %dl
	movq	%r12, 80(%rsp)
	je	.LBB7_59
.LBB7_54:
	movq	1408(%r14), %r15
	testq	%r15, %r15
	jne	.LBB7_56
	movq	1416(%r14), %r15
.LBB7_56:
	movq	(%r15), %rcx
	movq	16(%r15), %r12
	subq	%r12, %rcx
	cmpq	$11, %rcx
	jbe	.LBB7_57
.LBB7_58:
	movq	8(%r15), %rcx
	leaq	core::ops::function::FnOnce::call_once(%rip), %rdx
	movq	%rdx, (%rcx,%r12)
	movl	%eax, 8(%rcx,%r12)
	addq	$12, %r12
	movq	%r12, 16(%r15)
	movq	80(%rsp), %r12
.LBB7_59:
	movq	8(%r13), %r15
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 104(%rsp)
	movl	152(%r12), %eax
	testb	%al, %al
	jns	.LBB7_63
	movl	%r15d, 112(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 116(%rsp)
	movq	16(%rsp), %rdx
	movq	40(%rdx), %rax
	movq	48(%rdx), %rcx
	subq	%rcx, %rax
	shlq	$3, %rcx
	addq	32(%rdx), %rcx
	movq	%rcx, 152(%rsp)
	movq	%rax, 160(%rsp)
	movl	$2, %esi
	movq	312(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_62
	movq	$2, 264(%rsp)
	movq	112(%rsp), %r8
	leaq	152(%rsp), %rdi
	leaq	112(%rsp), %rcx
	leaq	264(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_62:
	movl	152(%r12), %eax
.LBB7_63:
	movq	%rbp, 48(%rsp)
	movq	%r13, 352(%rsp)
	testb	$4, %al
	je	.LBB7_69
	movq	16(%rsp), %rax
	movq	40(%rax), %rbp
	movq	48(%rax), %r13
	cmpq	%rbp, %r13
	je	.LBB7_69
	movq	16(%rsp), %rax
	movq	32(%rax), %rbx
	shlq	$3, %r13
	shlq	$3, %rbp
	leaq	152(%rsp), %r12
	jmp	.LBB7_66
	.p2align	4
.LBB7_68:
	addq	$8, %r13
	cmpq	%r13, %rbp
	je	.LBB7_69
.LBB7_66:
	movq	(%rbx,%r13), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_68
	movq	%r15, 152(%rsp)
	movq	%rax, 160(%rsp)
	movb	$0, 168(%rsp)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*%rcx
	jmp	.LBB7_68
.LBB7_69:
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB7_75
	movl	60(%rsp), %edi
	movl	%edi, %eax
	notl	%eax
	movl	$4294967295, %r10d
	cmpl	$1, %ecx
	jne	.LBB7_96
	movq	80(%rsp), %r9
	movq	80(%r9), %rcx
	movq	88(%r9), %rdx
	decq	%rdx
	cmpq	%rax, %rdx
	movq	48(%rsp), %r12
	jne	.LBB7_90
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	8(%rcx,%rdx), %r13d
	movq	%rax, 88(%r9)
	jmp	.LBB7_92
.LBB7_75:
	movq	16(%rsp), %rax
	movq	16(%rax), %rbx
	movq	24(%rax), %r12
	movq	304(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	64(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	leaq	92(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	44(%rsp), %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB7_76
	movq	%r14, 72(%rsp)
	shlq	$4, %r12
	movq	%rbx, %rdi
	movl	28(%rsp), %r8d
	movl	44(%rsp), %r14d
	movq	64(%rsp), %r13
	movq	%r15, 32(%rsp)
	movq	96(%rsp), %r15
	.p2align	4
.LBB7_88:
	leaq	16(%rdi), %rbx
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	movl	%r8d, %ebp
	movq	32(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movl	%ebp, %r8d
	movq	%rbx, %rdi
	addq	$-16, %r12
	jne	.LBB7_88
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %r14
	movq	16(%rsp), %rdx
	movq	32(%rsp), %r15
	jmp	.LBB7_77
.LBB7_96:
	movq	256(%r14), %rcx
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %r8
	movq	80(%r8), %rcx
	movq	88(%r8), %r9
	decq	%r9
	cmpq	%rax, %r9
	movq	48(%rsp), %rbp
	jne	.LBB7_98
	movl	$4294967295, %r13d
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	8(%rcx,%rdx), %edx
	movq	%rax, 88(%r8)
	jmp	.LBB7_104
.LBB7_90:
	shlq	$4, %rax
	movl	8(%rcx,%rax), %r13d
	movq	%rdx, %rsi
	shlq	$4, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	%xmm0, (%rcx,%rax)
	movl	(%rcx,%rax), %eax
	movq	%rdx, 88(%r9)
	testq	%rax, %rax
	je	.LBB7_92
	movq	8(%r14), %rcx
	xorq	%r10, %rax
	leaq	(%rax,%rax,2), %rax
	movl	%edi, (%rcx,%rax,8)
.LBB7_92:
	movq	88(%r12), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%r12), %rbx
	jne	.LBB7_94
	leaq	72(%r12), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movl	$4294967295, %r10d
.LBB7_94:
	movq	80(%r12), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	104(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%r13d, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%r12)
	movl	144(%r12), %edx
	movl	148(%r12), %esi
	movq	8(%r14), %rax
	movl	%r15d, %ecx
	xorq	%r10, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%ebp, 60(%rsp)
	movl	%ebp, (%rax,%rcx,8)
	movl	%r13d, %ebp
	movl	%r13d, 4(%rax,%rcx,8)
	movq	%rdx, 144(%rsp)
	movl	%edx, 8(%rax,%rcx,8)
	movl	%esi, 88(%rsp)
	movl	%esi, 12(%rax,%rcx,8)
	movq	16(%rsp), %rax
	movq	16(%rax), %rbx
	movq	24(%rax), %r12
	movq	304(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	64(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	leaq	92(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	44(%rsp), %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB7_95
	movq	%r14, 72(%rsp)
	shlq	$4, %r12
	movq	%rbx, %rdi
	movl	44(%rsp), %r14d
	movq	64(%rsp), %r13
	movq	%r15, 32(%rsp)
	movq	96(%rsp), %r15
	.p2align	4
.LBB7_101:
	leaq	16(%rdi), %rbx
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	movq	32(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%rbx, %rdi
	addq	$-16, %r12
	jne	.LBB7_101
	movq	72(%rsp), %r14
	movq	16(%rsp), %rdx
	movq	32(%rsp), %r15
	movl	%ebp, %r8d
	jmp	.LBB7_77
.LBB7_98:
	shlq	$4, %rax
	movl	8(%rcx,%rax), %edx
	movq	%r9, %rsi
	shlq	$4, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	%xmm0, (%rcx,%rax)
	movl	(%rcx,%rax), %eax
	movq	%r9, 88(%r8)
	testq	%rax, %rax
	je	.LBB7_99
	movq	8(%r14), %rcx
	movl	$4294967295, %r13d
	xorq	%r10, %rax
	leaq	(%rax,%rax,2), %rax
	movl	%edi, (%rcx,%rax,8)
	jmp	.LBB7_104
.LBB7_95:
	movq	16(%rsp), %rdx
	movl	%ebp, %r8d
	jmp	.LBB7_77
.LBB7_76:
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	28(%rsp), %r8d
	movq	16(%rsp), %rdx
	jmp	.LBB7_77
.LBB7_99:
	movl	$4294967295, %r13d
.LBB7_104:
	leaq	152(%rsp), %rdi
	movq	96(%rsp), %rsi
	movl	%edx, 32(%rsp)
	movq	320(%rsp), %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	160(%rsp), %eax
	movl	%eax, 28(%rsp)
	movq	88(%rbp), %rbx
	movl	%ebx, %r12d
	notl	%r12d
	cmpq	72(%rbp), %rbx
	jne	.LBB7_106
	leaq	72(%rbp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB7_106:
	movq	80(%rbp), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	104(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	28(%rsp), %edx
	movl	%edx, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%rbp)
	movl	144(%rbp), %esi
	movl	148(%rbp), %edi
	movq	8(%r14), %rax
	movl	%r15d, %ecx
	xorq	%r13, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%r12d, (%rax,%rcx,8)
	movl	%edx, 4(%rax,%rcx,8)
	movq	%rsi, 144(%rsp)
	movl	%esi, 8(%rax,%rcx,8)
	movl	%edi, 88(%rsp)
	movl	%edi, 12(%rax,%rcx,8)
	movl	152(%rsp), %edx
	testl	%edx, %edx
	je	.LBB7_114
	notl	%edx
	leaq	(%rdx,%rdx,2), %rcx
	shlq	$3, %rcx
	addq	8(%r14), %rcx
	xorl	%eax, %eax
	cmpq	%rdx, 16(%r14)
	jbe	.LBB7_108
	movl	16(%rcx), %edi
	cmpl	156(%rsp), %edi
	movl	32(%rsp), %edi
	jne	.LBB7_111
	movl	(%rcx), %eax
	movl	8(%rcx), %edx
	movl	12(%rcx), %esi
	jmp	.LBB7_111
.LBB7_108:
	movl	32(%rsp), %edi
.LBB7_111:
	movl	%eax, (%rcx)
	movl	%edi, 4(%rcx)
	movl	%edx, 8(%rcx)
	movl	%esi, 12(%rcx)
	movq	80(%rsp), %rcx
	cmpl	%edx, 144(%rcx)
	jne	.LBB7_118
	addq	$80, %rcx
	jmp	.LBB7_113
.LBB7_118:
	movq	48(%rsp), %rcx
	cmpl	%edx, 144(%rcx)
	jne	.LBB7_120
	addq	$80, %rcx
	jmp	.LBB7_113
.LBB7_120:
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$5, %rcx
	movq	72(%rsp), %rdx
	addq	%rdx, %rcx
	addq	$80, %rcx
.LBB7_113:
	movq	(%rcx), %rcx
	notl	%eax
	shlq	$4, %rax
	movl	%edi, 8(%rcx,%rax)
.LBB7_114:
	movq	%r14, 72(%rsp)
	movl	%r12d, 60(%rsp)
	movq	16(%rsp), %rax
	movq	16(%rax), %rbp
	movq	24(%rax), %rbx
	movq	304(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	64(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	leaq	92(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	44(%rsp), %r14d
	movl	%r14d, %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	movq	%rbp, %rdi
	testq	%rbx, %rbx
	movl	28(%rsp), %r8d
	movq	320(%rsp), %rbp
	movq	%r15, %r12
	je	.LBB7_117
	shlq	$4, %rbx
	.p2align	4
.LBB7_116:
	leaq	16(%rdi), %r13
	movq	%rbp, %rsi
	movq	64(%rsp), %rdx
	movl	%r14d, %ecx
	movl	%r8d, %r15d
	movq	%r12, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movl	%r15d, %r8d
	movq	%r13, %rdi
	addq	$-16, %rbx
	jne	.LBB7_116
.LBB7_117:
	movq	72(%rsp), %r14
	movq	16(%rsp), %rdx
	movq	%r12, %r15
.LBB7_77:
	movl	%r8d, 28(%rsp)
	movq	40(%rdx), %r12
	movq	48(%rdx), %r13
	movq	48(%rsp), %rbx
	movl	152(%rbx), %eax
	testq	%r13, %r13
	je	.LBB7_84
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB7_84
	movq	32(%rdx), %r12
	shlq	$3, %r13
	xorl	%ebp, %ebp
	leaq	152(%rsp), %rbx
	jmp	.LBB7_80
	.p2align	4
.LBB7_82:
	addq	$8, %rbp
	cmpq	%rbp, %r13
	je	.LBB7_83
.LBB7_80:
	movq	(%r12,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_82
	movq	%r15, 152(%rsp)
	movq	%rax, 160(%rsp)
	movb	$0, 168(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_82
.LBB7_83:
	movq	48(%rsp), %rbx
	movl	152(%rbx), %eax
	movq	16(%rsp), %rdx
	movq	40(%rdx), %r12
.LBB7_84:
	testb	$32, %al
	je	.LBB7_125
	movl	%r15d, 112(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 116(%rsp)
	movq	48(%rdx), %rax
	cmpq	%r12, %rax
	jbe	.LBB7_121
	xorl	%ecx, %ecx
	jmp	.LBB7_122
.LBB7_121:
	movq	32(%rdx), %rcx
.LBB7_122:
	movq	%rcx, 152(%rsp)
	movq	%rax, 160(%rsp)
	movq	312(%rsp), %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_124
	movq	$0, 264(%rsp)
	movq	112(%rsp), %r8
	leaq	152(%rsp), %rdi
	leaq	112(%rsp), %rcx
	leaq	264(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_124:
	movq	16(%rsp), %rdx
	movq	40(%rdx), %r12
	movl	152(%rbx), %eax
.LBB7_125:
	testq	%r12, %r12
	je	.LBB7_132
	movl	%eax, %ecx
	andl	$2, %ecx
	je	.LBB7_132
	movq	32(%rdx), %r13
	shlq	$3, %r12
	xorl	%ebp, %ebp
	leaq	152(%rsp), %rbx
	jmp	.LBB7_128
	.p2align	4
.LBB7_130:
	addq	$8, %rbp
	cmpq	%rbp, %r12
	je	.LBB7_131
.LBB7_128:
	movq	(%r13,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	256(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_130
	movq	%r15, 152(%rsp)
	movq	%rax, 160(%rsp)
	movb	$0, 168(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_130
.LBB7_131:
	movq	48(%rsp), %rax
	movl	152(%rax), %eax
	movq	16(%rsp), %rdx
.LBB7_132:
	testb	$64, %al
	movq	352(%rsp), %rbx
	movl	60(%rsp), %ebp
	je	.LBB7_135
	movl	%r15d, 112(%rsp)
	movq	104(%rsp), %rax
	movl	%eax, 116(%rsp)
	movdqu	32(%rdx), %xmm0
	movdqu	%xmm0, 152(%rsp)
	movl	$1, %esi
	movq	312(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_135
	movq	$1, 264(%rsp)
	movq	112(%rsp), %r8
	leaq	152(%rsp), %rdi
	leaq	112(%rsp), %rcx
	leaq	264(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_135:
	movl	%ebp, 16(%rbx)
	movl	28(%rsp), %eax
	movl	%eax, 20(%rbx)
	movq	144(%rsp), %rax
	movl	%eax, 24(%rbx)
	movl	88(%rsp), %eax
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
.LBB7_136:
	.cfi_def_cfa_offset 416
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB7_57:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %ebx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movl	%ebx, %eax
	jmp	.LBB7_58
.LBB7_34:
	movl	$16, %edi
	movabsq	$5663211681776630895, %r9
.LBB7_35:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB7_36
	jmp	.LBB7_35
.LBB7_37:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB7_38
.LBB7_40:
	leaq	632(%r14), %rdi
	leaq	664(%r14), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%rbx, %r15
	movq	632(%r14), %rbx
	movq	640(%r14), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%r14)
	leaq	-16(%rax), %rcx
	andq	%r12, %rcx
	movq	64(%rsp), %r12
	movb	$122, (%rbx,%rax)
	movb	$122, 16(%rbx,%rcx)
	incq	656(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$5663211681776630895, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movq	%r15, -16(%rbx,%rax,8)
	movq	%rbp, -8(%rbx,%rax,8)
	movq	264(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_43
	jmp	.LBB7_44
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
	.quad	5663211681776630895
	.quad	-724751064606747708
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.6,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"entity_insert_sparse::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 23

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.rodata.cst16,"aM",@progbits,16
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

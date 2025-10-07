	.file	"entity_insert_sparse.701ff46707ebc990-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,111
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
	movabsq	$-2374344898827409475, %rax
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
	movabsq	$6753398404468007899, %rcx
	je	.LBB0_9
	movq	80(%rbx), %rdx
	movq	88(%rbx), %rsi
	leaq	-24(%rdx), %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-2374344898827409475, %r10
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
	movabsq	$-2374344898827409475, %r11
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
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.27(%rip), %xmm0
	movups	%xmm0, 64(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.27(%rip), %r15
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
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.29(%rip), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.29+16(%rip), %xmm1
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
	.zero	16,115
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
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movss	%xmm0, 76(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 52(%rsp)
	testl	%eax, %eax
	je	.LBB7_148
	movabsq	$-1787295643662986807, %rbx
	movl	20(%r13), %ebp
	movl	24(%r13), %eax
	movq	%rax, 232(%rsp)
	movl	28(%r13), %eax
	movl	%eax, 72(%rsp)
	movq	(%r13), %rcx
	movl	1448(%rcx), %r14d
	leaq	56(%rcx), %r15
	leaq	1440(%rcx), %rax
	movq	%r15, 264(%rsp)
	movq	%rax, 272(%rsp)
	movq	$0, 240(%rsp)
	movq	$8, 248(%rsp)
	movq	$0, 256(%rsp)
	leaq	608(%rcx), %rax
	movq	%rax, 8(%rsp)
	leaq	336(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	632(%rcx), %rax
	movq	%rcx, 40(%rsp)
	movq	640(%rcx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$7460986804549383796, %r12
	movq	%rbx, %rdi
	movq	%r13, 312(%rsp)
	movl	%ebp, 32(%rsp)
	movl	%r14d, 28(%rsp)
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
	xorq	%rbx, %r10
	movq	(%rdx,%r9,8), %r11
	xorq	%r12, %r11
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
	movq	-8(%rax,%r9,8), %r12
	movq	40(%rsp), %r14
	movq	240(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_36
.LBB7_35:
	movq	248(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_36:
	movq	616(%r14), %rax
	leaq	(%r12,%r12,4), %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rbx
	leaq	248(%r14), %rsi
	leaq	896(%r14), %r8
	movq	%rdi, 288(%rsp)
	movq	56(%rsp), %rdx
	movq	%r15, %rcx
	movq	%r8, 296(%rsp)
	movq	232(%rsp), %r15
	movl	%r15d, %r9d
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
	cmpl	%r15d, %eax
	jne	.LBB7_40
	movq	264(%r14), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB7_159
	movq	256(%r14), %rcx
	leaq	(%r15,%r15,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %r12
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB7_49
	movq	8(%r12), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %rsi
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %rsi
	movq	%rsi, 8(%rsp)
	jmp	.LBB7_50
.LBB7_40:
	movq	256(%r14), %rcx
	movq	264(%r14), %rdi
	movl	%eax, %esi
	jae	.LBB7_44
	cmpq	%r15, %rdi
	jb	.LBB7_154
	jne	.LBB7_47
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_8:
	movq	$0, 320(%rsp)
	movq	$8, 328(%rsp)
	movq	$0, 336(%rsp)
	movq	40(%rsp), %r9
	cmpq	$0, 104(%r9)
	je	.LBB7_15
	movq	80(%r9), %rax
	movq	88(%r9), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-1787295643662986807, %rdi
	movq	%rbx, %r8
.LBB7_10:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB7_13
.LBB7_11:
	movq	%rbx, %rbp
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	8(%rdx,%r10,8), %r11
	xorq	%rdi, %r11
	movq	(%rdx,%r10,8), %rbx
	xorq	%r12, %rbx
	orq	%r11, %rbx
	je	.LBB7_21
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movq	%rbp, %rbx
	jne	.LBB7_11
.LBB7_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	movq	40(%rsp), %r9
	jne	.LBB7_15
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB7_10
.LBB7_44:
	cmpq	%rsi, %rdi
	jb	.LBB7_155
	cmpl	%r15d, %eax
	jbe	.LBB7_162
	cmpq	%rsi, %rdi
	je	.LBB7_163
.LBB7_47:
	leaq	(%r15,%r15,4), %rdi
	shlq	$5, %rdi
	leaq	(%rcx,%rdi), %r12
	leaq	(%rsi,%rsi,4), %rsi
	shlq	$5, %rsi
	addq	%rcx, %rsi
	movq	%rsi, 16(%rsp)
	cmpq	16(%rcx,%rdi), %rbx
	jae	.LBB7_52
	movq	8(%r12), %rcx
	shlq	$6, %rbx
	leaq	(%rcx,%rbx), %rsi
	movq	(%rcx,%rbx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %rsi
	movq	%rsi, 8(%rsp)
	jmp	.LBB7_53
.LBB7_49:
	movq	$0, 8(%rsp)
.LBB7_50:
	movl	148(%r12), %edi
	movq	424(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_160
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	addq	416(%r14), %rcx
	movq	%rcx, 80(%rsp)
	movq	$0, 280(%rsp)
	testb	$1, %dl
	movq	%r12, 64(%rsp)
	jne	.LBB7_65
	jmp	.LBB7_69
.LBB7_52:
	movq	$0, 8(%rsp)
.LBB7_53:
	movl	148(%r12), %edi
	movq	16(%rsp), %rcx
	movl	148(%rcx), %esi
	cmpl	%esi, %edi
	jne	.LBB7_57
	movq	424(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_164
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	addq	416(%r14), %rcx
	movq	%rcx, 80(%rsp)
	movl	$1, %ecx
	movq	%rcx, 280(%rsp)
	testb	$1, %dl
	movq	%r12, 64(%rsp)
	jne	.LBB7_65
	jmp	.LBB7_69
.LBB7_57:
	movq	416(%r14), %rcx
	movq	424(%r14), %r8
	cmpl	%esi, %edi
	jbe	.LBB7_61
	cmpq	%rdi, %r8
	jb	.LBB7_157
	jne	.LBB7_64
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.20(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_15:
	movzbl	152(%r9), %eax
	movq	184(%r9), %rax
	movq	192(%r9), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-1787295643662986807, %r8
	movq	%rbx, %r9
.LBB7_16:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB7_19
.LBB7_17:
	movq	%rbx, %rbp
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rcx, %r11
	movq	%r11, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	movq	8(%rsi,%rdx), %rbx
	xorq	%r8, %rbx
	movq	(%rsi,%rdx), %r12
	movabsq	$7460986804549383796, %r14
	xorq	%r14, %r12
	orq	%rbx, %r12
	je	.LBB7_22
	leal	-1(%r10), %edx
	andw	%r10w, %dx
	movl	%edx, %r10d
	movq	%rbp, %rbx
	jne	.LBB7_17
.LBB7_19:
	movq	%rbx, %rbp
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	movq	40(%rsp), %r14
	jne	.LBB7_25
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	movq	%rbp, %rbx
	jmp	.LBB7_16
.LBB7_21:
	movq	-8(%rax,%r10,8), %rbx
	movl	$8, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	40(%rsp), %r14
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
	movq	40(%rsp), %r14
	ja	.LBB7_24
	incq	200(%r14)
	movb	$-1, %cl
.LBB7_24:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%r14)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB7_28
.LBB7_25:
	movq	1440(%r14), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, 1440(%r14)
	movw	$257, 160(%rsp)
	movq	$1, 96(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %xmm0
	movups	%xmm0, 104(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %r12
	movq	$4, 136(%rsp)
	movq	$4, 144(%rsp)
	movq	$0, 152(%rsp)
	movb	$1, 162(%rsp)
	movq	$0, 120(%rsp)
	leaq	96(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	240(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	248(%rsp), %rax
	movq	%rbx, (%rax)
	movq	$1, 256(%rsp)
	movq	$0, 96(%rsp)
	movq	$8, 104(%rsp)
	movq	$0, 112(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.29(%rip), %xmm0
	movups	%xmm0, 120(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.29+16(%rip), %xmm1
	movups	%xmm1, 136(%rsp)
	movq	$0, 152(%rsp)
	movq	$8, 160(%rsp)
	movq	$0, 168(%rsp)
	movups	%xmm0, 176(%rsp)
	movups	%xmm1, 192(%rsp)
	movq	264(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	256(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_27
	decq	%rax
	movq	%rax, 256(%rsp)
.LBB7_27:
	movq	264(%rsp), %rax
	movq	8(%rax), %r12
	leaq	(%rbx,%rbx,8), %r13
	shlq	$5, %r13
	leaq	(%r12,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	128(%rsp), %xmm2
	movdqu	144(%rsp), %xmm3
	movups	160(%rsp), %xmm4
	movups	176(%rsp), %xmm5
	movups	192(%rsp), %xmm6
	movups	%xmm6, 168(%r12,%r13)
	movups	%xmm5, 152(%r12,%r13)
	movups	%xmm4, 136(%r12,%r13)
	movdqu	%xmm3, 120(%r12,%r13)
	movdqu	%xmm2, 104(%r12,%r13)
	movdqu	%xmm1, 88(%r12,%r13)
	movdqu	%xmm0, 72(%r12,%r13)
	movq	312(%rsp), %r13
	jmp	.LBB7_29
.LBB7_61:
	cmpq	%rsi, %r8
	jb	.LBB7_158
	cmpl	%edi, %esi
	jbe	.LBB7_166
	cmpq	%rsi, %r8
	je	.LBB7_167
.LBB7_64:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	movq	%rdi, 80(%rsp)
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 304(%rsp)
	movl	$2, %ecx
	movq	%rcx, 280(%rsp)
	testb	$1, %dl
	movq	%r12, 64(%rsp)
	je	.LBB7_69
.LBB7_65:
	movq	1408(%r14), %r15
	testq	%r15, %r15
	jne	.LBB7_67
	movq	1416(%r14), %r15
.LBB7_67:
	movq	(%r15), %rcx
	movq	16(%r15), %r12
	subq	%r12, %rcx
	cmpq	$11, %rcx
	jbe	.LBB7_150
.LBB7_68:
	movq	8(%r15), %rcx
	leaq	core::ops::function::FnOnce::call_once(%rip), %rdx
	movq	%rdx, (%rcx,%r12)
	movl	%eax, 8(%rcx,%r12)
	addq	$12, %r12
	movq	%r12, 16(%r15)
	movq	64(%rsp), %r12
.LBB7_69:
	movq	8(%r13), %r15
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 88(%rsp)
	movl	152(%r12), %eax
	testb	%al, %al
	jns	.LBB7_73
	movl	%r15d, 208(%rsp)
	movq	88(%rsp), %rax
	movl	%eax, 212(%rsp)
	movq	8(%rsp), %rdx
	movq	40(%rdx), %rax
	movq	48(%rdx), %rcx
	subq	%rcx, %rax
	shlq	$3, %rcx
	addq	32(%rdx), %rcx
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movl	$2, %esi
	movq	296(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_72
	movq	$2, 240(%rsp)
	movq	208(%rsp), %r8
	leaq	96(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	240(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_72:
	movl	152(%r12), %eax
.LBB7_73:
	testb	$4, %al
	je	.LBB7_79
	movq	8(%rsp), %rax
	movq	40(%rax), %rbx
	movq	48(%rax), %r13
	cmpq	%rbx, %r13
	je	.LBB7_79
	movq	8(%rsp), %rax
	movq	32(%rax), %rbp
	shlq	$3, %r13
	shlq	$3, %rbx
	leaq	96(%rsp), %r12
	jmp	.LBB7_77
	.p2align	4
.LBB7_76:
	addq	$8, %r13
	cmpq	%r13, %rbx
	je	.LBB7_79
.LBB7_77:
	movq	(%rbp,%r13), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_76
	movq	%r15, 96(%rsp)
	movq	%rax, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*%rcx
	jmp	.LBB7_76
.LBB7_79:
	movq	280(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_92
	movl	52(%rsp), %r8d
	movl	%r8d, %edi
	notl	%edi
	cmpl	$1, %eax
	jne	.LBB7_97
	movq	64(%rsp), %r10
	movq	88(%r10), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_149
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
	je	.LBB7_86
	jbe	.LBB7_161
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB7_86
	movq	8(%r14), %rcx
	notl	%eax
	leaq	(%rax,%rax,2), %rax
	movl	%r8d, (%rcx,%rax,8)
.LBB7_86:
	movl	%r9d, %r12d
	movq	16(%rsp), %rax
	movq	88(%rax), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%rax), %rbx
	jne	.LBB7_88
	leaq	72(%rax), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %rax
.LBB7_88:
	movq	%rax, %rdx
	movq	80(%rax), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	88(%rsp), %rsi
	movl	%esi, 4(%rax,%rcx)
	movl	%r12d, 8(%rax,%rcx)
	incq	%rbx
	movq	%rbx, 88(%rdx)
	movl	144(%rdx), %esi
	movl	148(%rdx), %edi
	movq	8(%r14), %rax
	movl	%r15d, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	%ebp, 52(%rsp)
	movl	%ebp, (%rax,%rcx,8)
	movl	%r12d, %ebp
	movl	%r12d, 4(%rax,%rcx,8)
	movq	%rsi, 232(%rsp)
	movl	%esi, 8(%rax,%rcx,8)
	movl	%edi, 72(%rsp)
	movl	%edi, 12(%rax,%rcx,8)
	movq	8(%rsp), %rax
	movq	16(%rax), %r12
	movq	24(%rax), %rbx
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	56(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	leaq	76(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	28(%rsp), %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.LBB7_109
	shlq	$4, %rbx
	movq	%r12, %rdi
	movl	28(%rsp), %r14d
	movq	56(%rsp), %r13
	movl	%ebp, 32(%rsp)
	movq	%r15, %rbp
	movq	80(%rsp), %r15
	.p2align	4
.LBB7_90:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	movl	32(%rsp), %r8d
	movq	%rbp, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %rbx
	jne	.LBB7_90
	movq	40(%rsp), %r14
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rax
	jmp	.LBB7_96
.LBB7_92:
	movq	8(%rsp), %rax
	movq	16(%rax), %r12
	movq	24(%rax), %rbx
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	56(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	leaq	76(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	28(%rsp), %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.LBB7_108
	shlq	$4, %rbx
	movq	%r12, %rdi
	movl	28(%rsp), %r14d
	movq	56(%rsp), %r13
	movq	%r15, %rbp
	movq	80(%rsp), %r15
	.p2align	4
.LBB7_94:
	leaq	16(%rdi), %r12
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%r14d, %ecx
	movl	32(%rsp), %r8d
	movq	%rbp, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %rbx
	jne	.LBB7_94
	movq	64(%rsp), %rax
	movq	40(%rsp), %r14
	movq	8(%rsp), %rdx
.LBB7_96:
	movq	%rbp, %r15
	movl	32(%rsp), %ebp
	jmp	.LBB7_123
.LBB7_97:
	movq	64(%rsp), %rax
	movq	88(%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_149
	movq	%rax, %r9
	movq	256(%r14), %rax
	movq	%rax, 32(%rsp)
	decq	%rsi
	movq	80(%r9), %rax
	movq	%rdi, %r10
	shlq	$4, %r10
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movl	8(%rax,%r10), %edx
	movdqu	(%rax,%rcx), %xmm0
	movdqu	%xmm0, (%rax,%r10)
	movq	%rsi, 88(%r9)
	cmpq	%rdi, %rsi
	movq	304(%rsp), %rcx
	movq	80(%rsp), %r9
	je	.LBB7_102
	jbe	.LBB7_161
	addq	%r10, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB7_102
	movq	8(%r14), %rsi
	notl	%eax
	leaq	(%rax,%rax,2), %rax
	movl	%r8d, (%rsi,%rax,8)
	movq	80(%rsp), %r9
.LBB7_102:
	leaq	96(%rsp), %rdi
	movq	%r9, %rsi
	movl	%edx, %r12d
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	104(%rsp), %r13d
	movq	16(%rsp), %rax
	movq	88(%rax), %rbx
	movl	%ebx, %ebp
	notl	%ebp
	cmpq	72(%rax), %rbx
	jne	.LBB7_104
	leaq	72(%rax), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %rax
.LBB7_104:
	movq	%rax, %rdx
	movq	80(%rax), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%r15d, (%rax,%rcx)
	movq	88(%rsp), %rsi
	movl	%esi, 4(%rax,%rcx)
	movl	%r13d, 8(%rax,%rcx)
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
	movl	%r13d, 4(%rax,%rcx,8)
	movq	%rdi, 232(%rsp)
	movl	%edi, 8(%rax,%rcx,8)
	movl	%r8d, 72(%rsp)
	movl	%r8d, 12(%rax,%rcx,8)
	movl	96(%rsp), %ecx
	testl	%ecx, %ecx
	movq	8(%rsp), %rdx
	je	.LBB7_119
	notl	%ecx
	leaq	(%rcx,%rcx,2), %rax
	shlq	$3, %rax
	addq	8(%r14), %rax
	xorl	%edi, %edi
	cmpq	%rcx, 16(%r14)
	jbe	.LBB7_110
	movl	16(%rax), %esi
	cmpl	100(%rsp), %esi
	jne	.LBB7_111
	movl	(%rax), %edi
	movl	8(%rax), %ecx
	movl	12(%rax), %edx
	jmp	.LBB7_111
.LBB7_108:
	movq	64(%rsp), %rax
	movl	32(%rsp), %ebp
	movq	8(%rsp), %rdx
	jmp	.LBB7_123
.LBB7_109:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rax
	jmp	.LBB7_123
.LBB7_110:
.LBB7_111:
	movl	%edi, (%rax)
	movl	%r12d, 4(%rax)
	movl	%ecx, 8(%rax)
	movl	%edx, 12(%rax)
	movq	64(%rsp), %rax
	cmpl	%ecx, 144(%rax)
	jne	.LBB7_113
	notl	%edi
	movq	88(%rax), %rsi
	cmpq	%rdi, %rsi
	movq	8(%rsp), %rdx
	ja	.LBB7_115
	jmp	.LBB7_165
.LBB7_113:
	movq	16(%rsp), %rax
	cmpl	%ecx, 144(%rax)
	movq	8(%rsp), %rdx
	jne	.LBB7_116
	notl	%edi
	movq	88(%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_165
.LBB7_115:
	movq	80(%rax), %rax
	jmp	.LBB7_118
.LBB7_28:
	movq	-8(%rdx), %rcx
	movq	%rcx, 184(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 168(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 152(%rsp)
	movdqu	%xmm2, 136(%rsp)
	movdqu	%xmm1, 120(%rsp)
	movdqu	%xmm0, 104(%rsp)
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rdi
	leaq	240(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbx
.LBB7_29:
	leaq	320(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	328(%rsp), %rax
	movq	%rbx, (%rax)
	movq	$1, 336(%rsp)
	movq	624(%r14), %r12
	movq	264(%rsp), %r8
	movups	320(%rsp), %xmm0
	movaps	%xmm0, 208(%rsp)
	movq	$1, 224(%rsp)
	movq	%r12, (%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rsi
	leaq	96(%rsp), %rdi
	leaq	208(%rsp), %r9
	movl	$23, %edx
	movq	56(%rsp), %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	cmpq	608(%r14), %r12
	jne	.LBB7_31
	movq	8(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB7_31:
	movq	616(%r14), %rax
	leaq	(%r12,%r12,4), %rcx
	movq	128(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%r12), %rax
	movq	%rax, 624(%r14)
	movq	632(%r14), %rax
	movq	640(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbp, %rsi
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
	movq	648(%r14), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB7_156
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$115, (%rax,%rdx)
	movb	$115, 16(%rax,%rsi)
	incq	656(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$7460986804549383796, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%rbp, -16(%rax,%rcx,8)
	movq	%r12, -8(%rax,%rcx,8)
	movq	240(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_35
	jmp	.LBB7_36
.LBB7_116:
	movl	%ecx, %eax
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	32(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_165
	addq	%rcx, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
.LBB7_118:
	shlq	$4, %rdi
	movl	%r12d, 8(%rax,%rdi)
.LBB7_119:
	movl	%ebp, 52(%rsp)
	movq	16(%rdx), %rbx
	movq	24(%rdx), %r12
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	56(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	leaq	76(%rsp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	28(%rsp), %r14d
	movl	%r14d, %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	movq	%rbx, %rdi
	testq	%r12, %r12
	movl	%r13d, %ebp
	movq	%r15, %rbx
	movq	304(%rsp), %r15
	je	.LBB7_122
	shlq	$4, %r12
	.p2align	4
.LBB7_121:
	leaq	16(%rdi), %r13
	movq	%r15, %rsi
	movq	56(%rsp), %rdx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r13, %rdi
	addq	$-16, %r12
	jne	.LBB7_121
.LBB7_122:
	movq	40(%rsp), %r14
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rax
	movq	%rbx, %r15
.LBB7_123:
	movl	%ebp, 32(%rsp)
	movq	40(%rdx), %r12
	movq	48(%rdx), %r13
	movq	%rax, 16(%rsp)
	movl	152(%rax), %eax
	testq	%r13, %r13
	je	.LBB7_130
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB7_130
	movq	32(%rdx), %r12
	shlq	$3, %r13
	xorl	%ebp, %ebp
	leaq	96(%rsp), %rbx
	jmp	.LBB7_127
	.p2align	4
.LBB7_126:
	addq	$8, %rbp
	cmpq	%rbp, %r13
	je	.LBB7_129
.LBB7_127:
	movq	(%r12,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_126
	movq	%r15, 96(%rsp)
	movq	%rax, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_126
.LBB7_129:
	movq	16(%rsp), %rax
	movl	152(%rax), %eax
	movq	8(%rsp), %rdx
	movq	40(%rdx), %r12
.LBB7_130:
	testb	$32, %al
	je	.LBB7_137
	movl	%r15d, 208(%rsp)
	movq	88(%rsp), %rax
	movl	%eax, 212(%rsp)
	movq	48(%rdx), %rax
	cmpq	%r12, %rax
	jbe	.LBB7_133
	xorl	%ecx, %ecx
	jmp	.LBB7_134
.LBB7_133:
	movq	32(%rdx), %rcx
.LBB7_134:
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movq	296(%rsp), %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_136
	movq	$0, 240(%rsp)
	movq	208(%rsp), %r8
	leaq	96(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	240(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_136:
	movq	8(%rsp), %rdx
	movq	40(%rdx), %r12
	movq	16(%rsp), %rax
	movl	152(%rax), %eax
.LBB7_137:
	testq	%r12, %r12
	je	.LBB7_144
	movl	%eax, %ecx
	andl	$2, %ecx
	je	.LBB7_144
	movq	32(%rdx), %r13
	shlq	$3, %r12
	xorl	%ebp, %ebp
	leaq	96(%rsp), %rbx
	jmp	.LBB7_141
	.p2align	4
.LBB7_140:
	addq	$8, %rbp
	cmpq	%rbp, %r12
	je	.LBB7_143
.LBB7_141:
	movq	(%r13,%rbp), %rax
	movq	64(%r14), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	256(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_140
	movq	%r15, 96(%rsp)
	movq	%rax, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB7_140
.LBB7_143:
	movq	16(%rsp), %rax
	movl	152(%rax), %eax
	movq	8(%rsp), %rdx
.LBB7_144:
	testb	$64, %al
	movq	312(%rsp), %rbx
	movl	52(%rsp), %ebp
	je	.LBB7_147
	movl	%r15d, 208(%rsp)
	movq	88(%rsp), %rax
	movl	%eax, 212(%rsp)
	movdqu	32(%rdx), %xmm0
	movdqu	%xmm0, 96(%rsp)
	movl	$1, %esi
	movq	296(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_147
	movq	$1, 240(%rsp)
	movq	208(%rsp), %r8
	leaq	96(%rsp), %rdi
	leaq	208(%rsp), %rcx
	leaq	240(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB7_147:
	movl	%ebp, 16(%rbx)
	movl	32(%rsp), %eax
	movl	%eax, 20(%rbx)
	movq	232(%rsp), %rax
	movl	%eax, 24(%rbx)
	movl	72(%rsp), %eax
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
	addq	$344, %rsp
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
.LBB7_148:
	.cfi_def_cfa_offset 400
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB7_149:
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_150:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %ebx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movl	%ebx, %eax
	jmp	.LBB7_68
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.24(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_155:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.21(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_156:
	leaq	632(%r14), %rdi
	leaq	664(%r14), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	632(%r14), %rbx
	movq	640(%r14), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%r14)
	leaq	-16(%rax), %rcx
	andq	8(%rsp), %rcx
	movb	$115, (%rbx,%rax)
	movb	$115, 16(%rbx,%rcx)
	incq	656(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$7460986804549383796, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movq	%rbp, -16(%rbx,%rax,8)
	movq	%r12, -8(%rbx,%rax,8)
	movq	240(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_35
	jmp	.LBB7_36
.LBB7_157:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.19(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_158:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.16(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB7_159:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_160:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_161:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.26(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_162:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_163:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_164:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_165:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.12(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_166:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.17(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_167:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.18(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end7:
	.size	entity_insert, .Lfunc_end7-entity_insert
	.cfi_endproc

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/1610aa9/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 103

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"f\000\000\000\000\000\000\000\035\005\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"f\000\000\000\000\000\000\000\020\b\000\000\024\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/1610aa9/crates/bevy_ecs/src/world/command_queue.rs"
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
	.quad	7460986804549383796
	.quad	-1787295643662986807
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.6,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"entity_insert_sparse::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 23

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/1610aa9/crates/bevy_ecs/src/bundle/insert.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 100

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"c\000\000\000\000\000\000\000f\000\000\0007\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"c\000\000\000\000\000\000\000F\000\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"c\000\000\000\000\000\000\000O\000\000\0003\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/1610aa9/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.12,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.12:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000S\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.12, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.13,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.13,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.13:
	.ascii	"mid > len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.13, 9

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.14,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.14:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.13
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.14, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.15,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.15:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/1610aa9/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.15, 104

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.16,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.16:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"g\000\000\000\000\000\000\000\020\003\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.16, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.17,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.17:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"g\000\000\000\000\000\000\000\021\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.17, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.18,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.18:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"g\000\000\000\000\000\000\000\021\003\000\000/\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.18, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.19,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.19:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"g\000\000\000\000\000\000\000\r\003\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.19, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.20,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.20:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.15
	.asciz	"g\000\000\000\000\000\000\000\016\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.20, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.21,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.21:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000q\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.21, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.22,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.22:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.22, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.23,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.23:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000,\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.23, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.24,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.24:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000n\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.24, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.25,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.25:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000o\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.25, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.26,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.26:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.11
	.asciz	"_\000\000\000\000\000\000\000\177\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.26, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.27,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.27:
	.quad	6753398404468007899
	.quad	-2374344898827409475
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.27, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.28,@object
	.p2align	4, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.28:
	.zero	16,255
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.28, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.29,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.29:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.28
	.zero	24
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.29, 32

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

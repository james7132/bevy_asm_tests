	.file	"entity_take.315b20ad9fee7b93-cgu.0"
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
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %xmm0
	movups	%xmm0, 64(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %r15
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
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.12+16(%rip), %xmm1
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rsi
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

	.section	.text.core::iter::traits::iterator::Iterator::collect,"ax",@progbits
	.p2align	4
	.type	core::iter::traits::iterator::Iterator::collect,@function
core::iter::traits::iterator::Iterator::collect:
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
	je	.LBB2_5
	movq	16(%rsi), %r13
	movq	(%r13), %rax
	movq	136(%rax), %rcx
	jmp	.LBB2_2
	.p2align	4
.LBB2_4:
	addq	$8, %r15
	cmpq	%r12, %r15
	je	.LBB2_5
.LBB2_2:
	movq	(%r15), %rbx
	cmpq	%rcx, %rbx
	jae	.LBB2_4
	movq	128(%rax), %rdx
	cmpq	$0, (%rdx,%rbx,8)
	je	.LBB2_4
	movq	%rdi, %rbp
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$32, %edi
	movl	$8, %esi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB2_18
	addq	$8, %r15
	movq	%rbx, (%rax)
	movq	$4, (%rsp)
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	cmpq	%r12, %r15
	movq	%rbp, %rcx
	je	.LBB2_16
	movl	$1, %ebx
	movq	%rsp, %rdi
.LBB2_9:
	movq	(%r13), %rdx
	movq	136(%rdx), %rsi
	jmp	.LBB2_10
	.p2align	4
.LBB2_12:
	addq	$8, %r15
	cmpq	%r12, %r15
	je	.LBB2_16
.LBB2_10:
	movq	(%r15), %r14
	cmpq	%rsi, %r14
	jae	.LBB2_12
	movq	128(%rdx), %r8
	cmpq	$0, (%r8,%r14,8)
	je	.LBB2_12
	cmpq	(%rsp), %rbx
	je	.LBB2_14
.LBB2_15:
	addq	$8, %r15
	movq	%r14, (%rax,%rbx,8)
	incq	%rbx
	movq	%rbx, 16(%rsp)
	cmpq	%r12, %r15
	jne	.LBB2_9
	jmp	.LBB2_16
.LBB2_14:
	movl	$1, %edx
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	%rsp, %rdi
	movq	%rbp, %rcx
	movq	8(%rsp), %rax
	jmp	.LBB2_15
.LBB2_5:
	movq	$0, (%rdi)
	movq	$8, 8(%rdi)
	movq	$0, 16(%rdi)
	jmp	.LBB2_17
.LBB2_16:
	movq	16(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	(%rsp), %rax
	movq	%rax, (%rcx)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rcx)
.LBB2_17:
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
.LBB2_18:
	.cfi_def_cfa_offset 80
	movl	$8, %edi
	movl	$32, %esi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end2:
	.size	core::iter::traits::iterator::Iterator::collect, .Lfunc_end2-core::iter::traits::iterator::Iterator::collect
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
	je	.LBB3_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB3_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB3_7
.LBB3_3:
	testq	%rbx, %rbx
	je	.LBB3_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB3_7
.LBB3_4:
	movq	%r15, %rax
.LBB3_7:
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
.Lfunc_end3:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end3-alloc::raw_vec::finish_grow
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
	jb	.LBB4_1
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
	je	.LBB4_3
.LBB4_1:
	xorl	%edi, %edi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB4_3:
	testq	%rdi, %rdi
	jne	.LBB4_5
	xorl	%edx, %edx
	jmp	.LBB4_6
.LBB4_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %rdi
	movq	%rdx, 32(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rcx, %rdx
.LBB4_6:
	movq	%rdx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB4_7
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
.LBB4_7:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end4:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end4-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
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
	jbe	.LBB5_1
	movq	(%r14), %rax
	subq	%r15, %rax
	movq	%r15, %rcx
	cmpq	%rax, %rdx
	ja	.LBB5_3
.LBB5_4:
	movq	8(%r14), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%rbx, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB5_5:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB5_5
	subq	%rdi, %rcx
	movq	%rcx, 16(%r14)
	jmp	.LBB5_7
.LBB5_1:
	movq	8(%r14), %rax
.LBB5_7:
	leaq	(%rbx,%rbx,8), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbx
	cmpl	$2, (%rax,%rcx)
	je	.LBB5_12
	leaq	72(%rbx), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB5_10
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB5_10:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_12
	movq	192(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB5_12:
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
.LBB5_3:
	.cfi_def_cfa_offset 320
	movl	$8, %ecx
	movl	$288, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%r14), %rcx
	jmp	.LBB5_4
.Lfunc_end5:
	.size	bevy_ecs::component::info::Components::register_component_inner, .Lfunc_end5-bevy_ecs::component::info::Components::register_component_inner
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
	.zero	16,53
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
	subq	$312, %rsp
	.cfi_def_cfa_offset 368
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %eax
	testl	%eax, %eax
	je	.LBB8_52
	movl	%eax, 220(%rsp)
	movabsq	$7757016566419879558, %r15
	movl	20(%rdi), %eax
	movl	%eax, 36(%rsp)
	movl	24(%rdi), %r13d
	movq	8(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdi, 304(%rsp)
	movq	(%rdi), %r14
	leaq	56(%r14), %r12
	leaq	1440(%r14), %rax
	movq	%r12, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$0, 48(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
	leaq	608(%r14), %rax
	movq	%rax, 96(%rsp)
	leaq	336(%r14), %rbp
	movq	632(%r14), %rax
	movq	640(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI8_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$4315309890161943287, %rbx
	movq	%r15, %rdi
	movq	%r14, 8(%rsp)
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
	movq	$0, 256(%rsp)
	movq	$8, 264(%rsp)
	movq	$0, 272(%rsp)
	cmpq	$0, 104(%r14)
	je	.LBB8_16
	movq	80(%r14), %rax
	movq	88(%r14), %rdx
	leaq	-24(%rax), %r11
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$7757016566419879558, %rdi
	movq	%r15, %r8
.LBB8_9:
	andq	%rdx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB8_13
	movq	%rsi, 16(%rsp)
.LBB8_11:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	%r11, %rcx
	movq	8(%r11,%r10,8), %r11
	xorq	%rdi, %r11
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	movq	(%rcx,%r10,8), %rbx
	xorq	%rdi, %rbx
	orq	%r11, %rbx
	je	.LBB8_15
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movabsq	$4315309890161943287, %rbx
	movq	%rsi, %rdi
	movq	16(%rsp), %rsi
	movq	%rcx, %r11
	jne	.LBB8_11
.LBB8_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB8_16
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB8_9
.LBB8_16:
	movzbl	152(%r14), %eax
	movq	184(%r14), %rax
	movq	192(%r14), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$7757016566419879558, %r8
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
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rcx, %r11
	movq	%r11, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	movq	%rbx, %r15
	movq	8(%rsi,%rdx), %rbx
	xorq	%r8, %rbx
	movq	(%rsi,%rdx), %r14
	xorq	%r15, %r14
	orq	%rbx, %r14
	je	.LBB8_22
	leal	-1(%r10), %edx
	andw	%r10w, %dx
	movl	%edx, %r10d
	movq	8(%rsp), %r14
	movabsq	$4315309890161943287, %rbx
	jne	.LBB8_18
.LBB8_20:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB8_26
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	jmp	.LBB8_17
.LBB8_15:
	movq	-8(%rax,%r10,8), %r15
	movl	$8, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB8_29
.LBB8_22:
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
	movq	8(%rsp), %r14
	ja	.LBB8_24
	incq	200(%r14)
	movb	$-1, %cl
.LBB8_24:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%r14)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB8_25
.LBB8_26:
	movq	%rbp, 16(%rsp)
	movq	1440(%r14), %r15
	leaq	1(%r15), %rax
	movq	%rax, 1440(%r14)
	movw	$256, 168(%rsp)
	movq	$1, 104(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %xmm0
	movups	%xmm0, 112(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rbp
	movq	$4, 144(%rsp)
	movq	$4, 152(%rsp)
	movq	$0, 160(%rsp)
	movb	$1, 170(%rsp)
	movq	$0, 128(%rsp)
	leaq	104(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r14), %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	48(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	56(%rsp), %rax
	movq	%r15, (%rax)
	movq	$1, 64(%rsp)
	movq	$0, 104(%rsp)
	movq	$8, 112(%rsp)
	movq	$0, 120(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %xmm0
	movups	%xmm0, 128(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.12+16(%rip), %xmm1
	movups	%xmm1, 144(%rsp)
	movq	$0, 160(%rsp)
	movq	$8, 168(%rsp)
	movq	$0, 176(%rsp)
	movups	%xmm0, 184(%rsp)
	movups	%xmm1, 200(%rsp)
	movq	72(%rsp), %rdi
	leaq	104(%rsp), %rdx
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
	leaq	(%r15,%r15,8), %r14
	shlq	$5, %r14
	leaq	(%rbx,%r14), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movdqu	104(%rsp), %xmm0
	movdqu	120(%rsp), %xmm1
	movdqu	136(%rsp), %xmm2
	movdqu	152(%rsp), %xmm3
	movups	168(%rsp), %xmm4
	movups	184(%rsp), %xmm5
	movups	200(%rsp), %xmm6
	movups	%xmm6, 168(%rbx,%r14)
	movups	%xmm5, 152(%rbx,%r14)
	movups	%xmm4, 136(%rbx,%r14)
	movdqu	%xmm3, 120(%rbx,%r14)
	movdqu	%xmm2, 104(%rbx,%r14)
	movdqu	%xmm1, 88(%rbx,%r14)
	movdqu	%xmm0, 72(%rbx,%r14)
	movq	8(%rsp), %r14
	movq	16(%rsp), %rbp
	jmp	.LBB8_29
.LBB8_25:
	movq	-8(%rdx), %rcx
	movq	%rcx, 192(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 176(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 160(%rsp)
	movdqu	%xmm2, 144(%rsp)
	movdqu	%xmm1, 128(%rsp)
	movdqu	%xmm0, 112(%rsp)
	movq	%rax, 104(%rsp)
	leaq	104(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r15
.LBB8_29:
	leaq	256(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	264(%rsp), %rax
	movq	%r15, (%rax)
	movq	$1, 272(%rsp)
	movq	624(%r14), %rbx
	movq	72(%rsp), %r8
	movups	256(%rsp), %xmm0
	movaps	%xmm0, 224(%rsp)
	movq	$1, 240(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rsi
	leaq	112(%rsp), %rdi
	leaq	232(%rsp), %r9
	movl	$14, %edx
	movq	%rbp, %rcx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpq	608(%r14), %rbx
	jne	.LBB8_31
	movq	96(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_31:
	movq	616(%r14), %rax
	leaq	(%rbx,%rbx,4), %rcx
	movq	136(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	104(%rsp), %xmm0
	movdqu	120(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbx), %rax
	movq	%rax, 624(%r14)
	movq	632(%r14), %rax
	movq	640(%r14), %rcx
	movq	%rcx, %rsi
	movabsq	$7757016566419879558, %r15
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
	movq	648(%r14), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB8_38
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$53, (%rax,%rdx)
	movb	$53, 16(%rax,%rsi)
	incq	656(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$4315309890161943287, %rdx
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
	addq	616(%r14), %r15
	leaq	248(%r14), %rdx
	leaq	896(%r14), %r9
	leaq	104(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	movq	%r12, %r8
	movq	%r9, 96(%rsp)
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	108(%rsp), %ebx
	cmpl	%r13d, %ebx
	setne	%al
	andb	104(%rsp), %al
	cmpb	$1, %al
	jne	.LBB8_43
	movl	%ebx, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	256(%r14), %rcx
	movq	416(%r14), %rdx
	leaq	(%rcx,%rax), %r8
	leaq	(,%r13,4), %rsi
	addq	%r13, %rsi
	shlq	$5, %rsi
	movq	%r14, %rdi
	leaq	(%rcx,%rsi), %r14
	movl	148(%rcx,%rsi), %esi
	movl	148(%rcx,%rax), %eax
	xorl	%ebp, %ebp
	cmpl	%eax, %esi
	leaq	(%rax,%rax,8), %rax
	leaq	(%rdx,%rax,8), %r9
	leaq	(%rsi,%rsi,8), %rax
	leaq	(%rdx,%rax,8), %rax
	cmovneq	%rax, %rbp
	cmpb	$0, 112(%rsp)
	je	.LBB8_49
	movq	1408(%rdi), %r12
	testq	%r12, %r12
	jne	.LBB8_46
	movq	1416(%rdi), %r12
.LBB8_46:
	movq	(%r12), %rax
	movq	16(%r12), %r13
	subq	%r13, %rax
	cmpq	$11, %rax
	jbe	.LBB8_47
.LBB8_48:
	movq	8(%r12), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r13)
	movl	%ebx, 8(%rax,%r13)
	addq	$12, %r13
	movq	%r13, 16(%r12)
	movq	8(%rsp), %rdi
.LBB8_49:
	movq	%r15, 104(%rsp)
	leaq	112(%rsp), %rbx
	movq	%r14, 112(%rsp)
	movq	%r8, 120(%rsp)
	movq	%rdi, 128(%rsp)
	movq	%rbp, 136(%rsp)
	movq	%r9, 144(%rsp)
	movb	$0, 152(%rsp)
	movq	24(%rsp), %r12
	movq	%r12, %rax
	shrq	$32, %rax
	movq	%rax, 40(%rsp)
	testb	$-128, 152(%r14)
	jne	.LBB8_53
	movq	8(%rsp), %r14
	jmp	.LBB8_59
.LBB8_43:
	xorl	%eax, %eax
	jmp	.LBB8_120
.LBB8_53:
	movq	8(%r15), %rdx
	movq	%rdx, %rsi
	subq	24(%r15), %rsi
	jb	.LBB8_140
	movq	(%r15), %rax
	leaq	(%rax,%rsi,8), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rbx, 64(%rsp)
	leaq	224(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	core::iter::traits::iterator::Iterator::collect
	movl	%r12d, 88(%rsp)
	movq	40(%rsp), %rax
	movl	%eax, 92(%rsp)
	movq	232(%rsp), %r15
	movq	240(%rsp), %rax
	movq	%r15, 48(%rsp)
	movq	%rax, 56(%rsp)
	movl	$2, %esi
	movq	96(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	movq	8(%rsp), %r14
	je	.LBB8_56
	movq	$2, 256(%rsp)
	movq	88(%rsp), %r8
	leaq	48(%rsp), %rdi
	leaq	88(%rsp), %rcx
	leaq	256(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_56:
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_58
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_58:
	movq	104(%rsp), %r15
.LBB8_59:
	movq	8(%r15), %rdx
	movq	24(%r15), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	jb	.LBB8_140
	movq	112(%rsp), %rax
	je	.LBB8_72
	movl	152(%rax), %ecx
	andl	$4, %ecx
	je	.LBB8_72
	movq	(%r15), %r14
	leaq	(%r14,%rsi,8), %r12
	movzbl	152(%rsp), %ebp
	leaq	48(%rsp), %r15
.LBB8_63:
	movq	112(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB8_64
	.p2align	4
.LBB8_66:
	addq	$8, %r14
	cmpq	%r12, %r14
	je	.LBB8_71
.LBB8_64:
	movq	(%r14), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB8_66
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB8_66
	movq	8(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	264(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_69
	movq	24(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movb	%bpl, 64(%rsp)
	movq	%r15, %rsi
	callq	*%rax
.LBB8_69:
	addq	$8, %r14
	cmpq	%r12, %r14
	jne	.LBB8_63
	movq	112(%rsp), %rax
.LBB8_71:
	movq	8(%rsp), %r14
	movq	24(%rsp), %r12
.LBB8_72:
	testb	$1, 153(%rax)
	movq	104(%rsp), %rax
	je	.LBB8_79
	movq	8(%rax), %rdx
	movq	%rdx, %rsi
	subq	24(%rax), %rsi
	jb	.LBB8_140
	movq	(%rax), %rax
	leaq	(%rax,%rsi,8), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rbx, 64(%rsp)
	leaq	224(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	core::iter::traits::iterator::Iterator::collect
	movl	%r12d, 88(%rsp)
	movq	40(%rsp), %rax
	movl	%eax, 92(%rsp)
	movq	232(%rsp), %r15
	movq	240(%rsp), %rax
	movq	%r15, 48(%rsp)
	movq	%rax, 56(%rsp)
	movl	$3, %esi
	movq	96(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_76
	movq	$3, 256(%rsp)
	movq	88(%rsp), %r8
	leaq	48(%rsp), %rdi
	leaq	88(%rsp), %rcx
	leaq	256(%rsp), %r9
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_76:
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_78
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_78:
	movq	104(%rsp), %rax
.LBB8_79:
	movq	8(%rax), %rdx
	movq	24(%rax), %rcx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	jb	.LBB8_140
	je	.LBB8_90
	movq	112(%rsp), %rcx
	movl	152(%rcx), %ecx
	andl	$8, %ecx
	je	.LBB8_90
	movq	(%rax), %rbx
	leaq	(%rbx,%rsi,8), %r14
	leaq	48(%rsp), %r15
.LBB8_83:
	movq	112(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB8_84
	.p2align	4
.LBB8_86:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB8_90
.LBB8_84:
	movq	(%rbx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB8_86
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB8_86
	movq	8(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	272(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_89
	movq	%r12, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	%r15, %rsi
	callq	*%rax
.LBB8_89:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	.LBB8_83
.LBB8_90:
	movq	104(%rsp), %rax
	movq	128(%rsp), %rbx
	leaq	336(%rbx), %rcx
	movq	%rcx, 280(%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, %rsi
	subq	24(%rax), %rsi
	jb	.LBB8_140
	je	.LBB8_93
	movq	(%rax), %rax
	movq	(%rax), %rsi
.LBB8_93:
	movq	64(%rbx), %rax
	leaq	(%rsi,%rsi,8), %rcx
	shlq	$5, %rcx
	cmpb	$1, 64(%rax,%rcx)
	jne	.LBB8_95
	movq	280(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	jmp	.LBB8_96
.LBB8_95:
	movq	136(%rsp), %rdi
	movl	36(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::take_component@GOTPCREL(%rip)
.LBB8_96:
	movq	104(%rsp), %rcx
	movq	8(%rcx), %rdx
	movq	24(%rcx), %rsi
	movq	%rdx, %r15
	subq	%rsi, %r15
	jb	.LBB8_141
	movd	(%rax), %xmm0
	movd	%xmm0, 216(%rsp)
	jne	.LBB8_98
.LBB8_102:
	movl	$4294967295, %r14d
	movq	112(%rsp), %rax
	movl	220(%rsp), %r8d
	movl	%r8d, %ecx
	notl	%ecx
	movq	88(%rax), %rdx
	decq	%rdx
	cmpq	%rcx, %rdx
	jne	.LBB8_104
	movq	%rcx, 88(%rax)
	jmp	.LBB8_106
.LBB8_98:
	movq	(%rcx), %r13
	shlq	$3, %r15
	leaq	824(%rbx), %rax
	movq	%rax, 296(%rsp)
	leaq	848(%rbx), %rax
	movq	%rax, 288(%rsp)
	xorl	%r14d, %r14d
	movq	%r15, 96(%rsp)
	movq	%r13, 16(%rsp)
	jmp	.LBB8_99
	.p2align	4
.LBB8_101:
	addq	$8, %r14
	cmpq	%r14, %r15
	je	.LBB8_102
.LBB8_99:
	movq	(%r13,%r14), %r12
	movq	112(%rsp), %rax
	cmpq	136(%rax), %r12
	jae	.LBB8_101
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%r12,8)
	je	.LBB8_101
	movq	888(%rbx), %rbp
	movq	%r12, %r15
	subq	%rbp, %r15
	jae	.LBB8_125
	movq	880(%rbx), %rax
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.LBB8_123
	notq	%rax
	leaq	(%rax,%rax,8), %r15
	jmp	.LBB8_134
.LBB8_125:
	movq	840(%rbx), %r13
	movq	872(%rbx), %rax
	incq	%r15
	subq	%rbp, %rax
	cmpq	%rax, %r15
	ja	.LBB8_126
.LBB8_127:
	leaq	(,%rbp,8), %rdi
	addq	880(%rbx), %rdi
	leaq	(,%r15,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%r15, %rbp
	movq	%rbp, 888(%rbx)
	cmpq	%rbp, %r12
	jb	.LBB8_129
	jmp	.LBB8_142
.LBB8_123:
	movq	840(%rbx), %r13
	cmpq	%rbp, %r12
	jae	.LBB8_142
.LBB8_129:
	movq	%r13, %rax
	notq	%rax
	movq	880(%rbx), %rcx
	movq	%rax, (%rcx,%r12,8)
	movq	864(%rbx), %r15
	cmpq	848(%rbx), %r15
	jne	.LBB8_131
	movq	288(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_131:
	movq	856(%rbx), %rax
	movq	%r12, (%rax,%r15,8)
	incq	%r15
	movq	%r15, 864(%rbx)
	movq	840(%rbx), %r15
	cmpq	824(%rbx), %r15
	jne	.LBB8_133
	movq	296(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_133:
	movq	832(%rbx), %rax
	leaq	(%r15,%r15,8), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	$8, 8(%rax,%rcx,8)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%rax,%rcx,8)
	movq	$0, 32(%rax,%rcx,8)
	movq	$8, 40(%rax,%rcx,8)
	movdqu	%xmm0, 48(%rax,%rcx,8)
	movq	$0, 64(%rax,%rcx,8)
	incq	%r15
	movq	%r15, 840(%rbx)
	leaq	(,%r13,8), %r15
	addq	%r13, %r15
.LBB8_134:
	shlq	$3, %r15
	addq	832(%rbx), %r15
	movq	48(%r15), %r13
	movq	64(%r15), %rbp
	cmpq	32(%r15), %r13
	jne	.LBB8_136
	leaq	32(%r15), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_136:
	movq	40(%r15), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%rbp, 8(%rax,%rcx)
	incq	%r13
	movq	%r13, 48(%r15)
	incq	64(%r15)
	movq	112(%rsp), %rax
	cmpq	136(%rax), %r12
	movq	96(%rsp), %r15
	movq	16(%rsp), %r13
	jae	.LBB8_101
	movq	128(%rax), %rcx
	movq	(%rcx,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.LBB8_101
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB8_101
	movq	280(%rsp), %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	jmp	.LBB8_101
.LBB8_126:
	leaq	872(%rbx), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	888(%rbx), %rbp
	jmp	.LBB8_127
.LBB8_104:
	movq	80(%rax), %rsi
	shlq	$4, %rcx
	movq	%rdx, %rdi
	shlq	$4, %rdi
	movdqu	(%rsi,%rdi), %xmm0
	movdqu	%xmm0, (%rsi,%rcx)
	movl	(%rsi,%rcx), %ecx
	movq	%rdx, 88(%rax)
	testq	%rcx, %rcx
	je	.LBB8_106
	movq	8(%rbx), %rax
	xorq	%r14, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%r8d, (%rax,%rcx,8)
.LBB8_106:
	movq	136(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_112
	movq	144(%rsp), %rcx
	leaq	48(%rsp), %rdi
	movl	36(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movq	120(%rsp), %r12
	movl	56(%rsp), %ebp
	movq	88(%r12), %r15
	cmpq	72(%r12), %r15
	jne	.LBB8_109
	leaq	72(%r12), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_109:
	movq	80(%r12), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movq	40(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%r15), %rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %eax
	movl	148(%r12), %ecx
	movl	48(%rsp), %edi
	testl	%edi, %edi
	je	.LBB8_118
	notl	%edi
	leaq	(%rdi,%rdi,2), %rsi
	shlq	$3, %rsi
	addq	8(%rbx), %rsi
	xorl	%edx, %edx
	cmpq	%rdi, 16(%rbx)
	jbe	.LBB8_111
	movl	16(%rsi), %r9d
	cmpl	52(%rsp), %r9d
	jne	.LBB8_117
	movl	(%rsi), %edx
	movl	8(%rsi), %edi
	movl	12(%rsi), %r8d
	jmp	.LBB8_117
.LBB8_112:
	movq	120(%rsp), %r12
	movq	88(%r12), %r15
	cmpq	72(%r12), %r15
	jne	.LBB8_114
	leaq	72(%r12), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_114:
	movq	80(%r12), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movq	40(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	36(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%r15, %rax
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %eax
	movl	148(%r12), %ecx
	jmp	.LBB8_119
.LBB8_111:
.LBB8_117:
	movl	%edx, (%rsi)
	movl	36(%rsp), %r9d
	movl	%r9d, 4(%rsi)
	movl	%edi, 8(%rsi)
	movl	%r8d, 12(%rsi)
	movl	%edi, %esi
	movq	256(%rbx), %rdi
	leaq	(%rsi,%rsi,4), %rsi
	shlq	$5, %rsi
	movq	80(%rdi,%rsi), %rsi
	notl	%edx
	shlq	$4, %rdx
	movl	%r9d, 8(%rsi,%rdx)
.LBB8_118:
	movq	24(%rsp), %rsi
.LBB8_119:
	notl	%r15d
	movq	8(%rbx), %rdx
	movl	%esi, %esi
	xorq	%r14, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%r15d, (%rdx,%rsi,8)
	movl	%ebp, 4(%rdx,%rsi,8)
	movl	%eax, 8(%rdx,%rsi,8)
	movl	%ecx, 12(%rdx,%rsi,8)
	movq	304(%rsp), %rbx
	movl	%r15d, 16(%rbx)
	movl	%ebp, 20(%rbx)
	movl	%eax, 24(%rbx)
	movl	%ecx, 28(%rbx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rsi
	movq	8(%rsp), %r14
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
	movl	$1, %eax
	movss	216(%rsp), %xmm0
.LBB8_120:
	movl	%eax, 104(%rsp)
	movss	%xmm0, 108(%rsp)
	leaq	104(%rsp), %rax
	#APP
	#NO_APP
	movl	104(%rsp), %eax
	movss	108(%rsp), %xmm0
	addq	$312, %rsp
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
.LBB8_140:
	.cfi_def_cfa_offset 368
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rcx
	xorl	%edi, %edi
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.LBB8_52:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB8_141:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rcx
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
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
.LBB8_47:
	movl	$12, %edx
	movl	$1, %ecx
	movq	%r8, 16(%rsp)
	movl	$1, %r8d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r9, 40(%rsp)
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	40(%rsp), %r9
	movq	16(%rsp), %r8
	jmp	.LBB8_48
.LBB8_38:
	leaq	632(%r14), %rdi
	leaq	664(%r14), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%r15, %rdx
	movq	632(%r14), %r15
	movq	%rbp, 16(%rsp)
	movq	640(%r14), %rbp
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%r15,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%r14)
	leaq	-16(%rax), %rcx
	andq	%rbp, %rcx
	movq	16(%rsp), %rbp
	movb	$53, (%r15,%rax)
	movb	$53, 16(%r15,%rcx)
	incq	656(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$4315309890161943287, %rcx
	movq	%rcx, -24(%r15,%rax,8)
	movabsq	$7757016566419879558, %rcx
	movq	%rcx, -16(%r15,%rax,8)
	movq	%rbx, -8(%r15,%rax,8)
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_41
	jmp	.LBB8_42
.LBB8_142:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end8:
	.size	entity_remove, .Lfunc_end8-entity_remove
	.cfi_endproc

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"f\000\000\000\000\000\000\000)\005\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"i\000\000\000\000\000\000\000\300\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	4315309890161943287
	.quad	7757016566419879558
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"a\000\000\000\000\000\000\000\257\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.8
	.asciz	"h\000\000\000\000\000\000\000R\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	3563989512513453390
	.quad	2171715549804139775
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.asciz	"examples/entity_take.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.13
	.asciz	"\027\000\000\000\000\000\000\000\f\000\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

	.file	"entity_take.2846388c9127564a-cgu.0"
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
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.45(%rip), %xmm0
	movups	%xmm0, 56(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.45(%rip), %r15
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	%r14, (%rax)
	movq	$1, 24(%rsp)
	movq	$0, 168(%rsp)
	movq	$8, 176(%rsp)
	movq	$0, 184(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.51(%rip), %xmm0
	movups	%xmm0, 192(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.51+16(%rip), %xmm1
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rsi
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rdx
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
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
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end3-alloc::raw_vec::finish_grow

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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
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
	je	.LBB6_1
.LBB6_2:
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
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_1:
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

	.section	.text.hashbrown::raw::RawTableInner::find_insert_slot,"ax",@progbits
	.p2align	4
	.type	hashbrown::raw::RawTableInner::find_insert_slot,@function
hashbrown::raw::RawTableInner::find_insert_slot:
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
	.zero	16,14
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
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %eax
	testl	%eax, %eax
	je	.LBB8_74
	movl	%eax, 228(%rsp)
	movabsq	$2027734286086351909, %r15
	movl	20(%rdi), %eax
	movl	%eax, 20(%rsp)
	movl	24(%rdi), %r12d
	movq	8(%rdi), %rax
	movq	%rax, 32(%rsp)
	movq	%rdi, 400(%rsp)
	movq	(%rdi), %rbp
	leaq	56(%rbp), %r13
	leaq	1440(%rbp), %rax
	movq	%r13, 208(%rsp)
	movq	%rax, 216(%rsp)
	movq	$0, 184(%rsp)
	movq	$8, 192(%rsp)
	movq	$0, 200(%rsp)
	leaq	608(%rbp), %rax
	movq	%rax, 56(%rsp)
	leaq	336(%rbp), %r14
	movq	632(%rbp), %rax
	movq	640(%rbp), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI8_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-7361950673224158078, %rbx
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
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_41
	jmp	.LBB8_42
.LBB8_7:
	movq	$0, 232(%rsp)
	movq	$8, 240(%rsp)
	movq	$0, 248(%rsp)
	cmpq	$0, 104(%rbp)
	movq	%r14, 24(%rsp)
	je	.LBB8_15
	movq	80(%rbp), %rax
	movq	88(%rbp), %rcx
	leaq	-24(%rax), %r11
	xorl	%edx, %edx
	pcmpeqd	%xmm1, %xmm1
	movabsq	$2027734286086351909, %rdi
	movq	%r15, %r8
.LBB8_9:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB8_12
.LBB8_10:
	movq	%r12, %r14
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
	je	.LBB8_14
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movabsq	$-7361950673224158078, %rbx
	movq	%rsi, %rdi
	movq	%r12, %r11
	movq	%r14, %r12
	jne	.LBB8_10
.LBB8_12:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB8_15
	addq	%rdx, %r8
	addq	$16, %r8
	addq	$16, %rdx
	jmp	.LBB8_9
.LBB8_15:
	movzbl	152(%rbp), %eax
	movq	184(%rbp), %rax
	movq	192(%rbp), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$2027734286086351909, %r8
	movq	%r15, %r9
.LBB8_16:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB8_19
.LBB8_17:
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
	je	.LBB8_21
	leal	-1(%r10), %edx
	andw	%r10w, %dx
	movl	%edx, %r10d
	movabsq	$-7361950673224158078, %rbx
	jne	.LBB8_17
.LBB8_19:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB8_25
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	movabsq	$-7361950673224158078, %rbx
	jmp	.LBB8_16
.LBB8_14:
	movq	-8(%rax,%r10,8), %r15
	movl	$8, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	%r14, %r12
	jmp	.LBB8_28
.LBB8_21:
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
	movq	24(%rsp), %r14
	ja	.LBB8_23
	incq	200(%rbp)
	movb	$-1, %cl
.LBB8_23:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%rbp)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB8_24
.LBB8_25:
	movq	1440(%rbp), %r15
	leaq	1(%r15), %rax
	movq	%rax, 1440(%rbp)
	movw	$256, 128(%rsp)
	movq	$1, 64(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %xmm0
	movups	%xmm0, 72(%rsp)
	movq	%rbp, %rbx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rbp
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
	leaq	64(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %rsi
	leaq	184(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	192(%rsp), %rax
	movq	%r15, (%rax)
	movq	$1, 200(%rsp)
	movq	$0, 256(%rsp)
	movq	$8, 264(%rsp)
	movq	$0, 272(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.51(%rip), %xmm0
	movups	%xmm0, 280(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.51+16(%rip), %xmm1
	movups	%xmm1, 296(%rsp)
	movq	$0, 312(%rsp)
	movq	$8, 320(%rsp)
	movq	$0, 328(%rsp)
	movups	%xmm0, 336(%rsp)
	movups	%xmm1, 352(%rsp)
	movq	208(%rsp), %rdi
	leaq	256(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	200(%rsp), %rax
	testq	%rax, %rax
	je	.LBB8_27
	decq	%rax
	movq	%rax, 200(%rsp)
.LBB8_27:
	movq	208(%rsp), %rax
	movq	8(%rax), %rbx
	leaq	(%r15,%r15,8), %r14
	shlq	$5, %r14
	movups	352(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	336(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	320(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	256(%rsp), %xmm0
	movups	272(%rsp), %xmm1
	movups	288(%rsp), %xmm2
	movups	304(%rsp), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	(%rbx,%r14), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	160(%rsp), %xmm0
	movups	%xmm0, 168(%rbx,%r14)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 152(%rbx,%r14)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 136(%rbx,%r14)
	movdqa	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
	movdqu	%xmm3, 120(%rbx,%r14)
	movdqu	%xmm2, 104(%rbx,%r14)
	movdqu	%xmm1, 88(%rbx,%r14)
	movdqu	%xmm0, 72(%rbx,%r14)
	movq	8(%rsp), %rbp
.LBB8_28:
	movq	24(%rsp), %r14
.LBB8_29:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rsi
	leaq	232(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	240(%rsp), %rax
	movq	%r15, (%rax)
	movq	$1, 248(%rsp)
	movq	624(%rbp), %rbx
	movq	208(%rsp), %r8
	movups	232(%rsp), %xmm0
	movaps	%xmm0, 256(%rsp)
	movq	$1, 272(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rsi
	leaq	72(%rsp), %rdi
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rsi
	movq	56(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_31:
	movq	616(%rbp), %rax
	leaq	(%rbx,%rbx,4), %rcx
	movq	96(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	64(%rsp), %xmm0
	movdqu	80(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbx), %rax
	movq	%rax, 624(%rbp)
	movq	632(%rbp), %rax
	movq	640(%rbp), %rcx
	movq	%rcx, %rsi
	movabsq	$2027734286086351909, %r15
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
	movb	$14, (%rax,%rdx)
	movb	$14, 16(%rax,%rsi)
	incq	656(%rbp)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$-7361950673224158078, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r15, -16(%rax,%rcx,8)
	movq	%rbx, -8(%rax,%rcx,8)
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_42
.LBB8_41:
	movq	192(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_42:
	leaq	(%rbx,%rbx,4), %r15
	shlq	$3, %r15
	addq	616(%rbp), %r15
	leaq	248(%rbp), %rdx
	leaq	896(%rbp), %r9
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r13, %r8
	movq	%r9, 56(%rsp)
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	68(%rsp), %ebx
	cmpl	%r12d, %ebx
	setne	%al
	andb	64(%rsp), %al
	cmpb	$1, %al
	jne	.LBB8_171
	movl	%ebx, %esi
	movzbl	72(%rsp), %eax
	movq	256(%rbp), %rcx
	movq	264(%rbp), %rdx
	cmpl	%ebx, %r12d
	jbe	.LBB8_44
	cmpq	%r12, %rdx
	jb	.LBB8_49
	jne	.LBB8_53
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_171:
	xorl	%eax, %eax
	jmp	.LBB8_172
.LBB8_44:
	cmpq	%rsi, %rdx
	jb	.LBB8_173
	cmpl	%r12d, %ebx
	jbe	.LBB8_174
	cmpq	%rsi, %rdx
	je	.LBB8_47
.LBB8_53:
	leaq	(%r12,%r12,4), %r14
	shlq	$5, %r14
	leaq	(%rsi,%rsi,4), %rbp
	shlq	$5, %rbp
	movl	148(%rcx,%r14), %edi
	movl	148(%rcx,%rbp), %esi
	cmpl	%esi, %edi
	jne	.LBB8_55
	xorl	%edi, %edi
	addq	%rcx, %r14
	addq	%rcx, %rbp
	testb	%al, %al
	jne	.LBB8_66
	jmp	.LBB8_70
.LBB8_55:
	movq	8(%rsp), %r8
	movq	416(%r8), %rdx
	movq	424(%r8), %r8
	cmpl	%esi, %edi
	jbe	.LBB8_56
	cmpq	%rdi, %r8
	jb	.LBB8_60
	jne	.LBB8_64
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_56:
	cmpq	%rsi, %r8
	jb	.LBB8_175
	cmpl	%edi, %esi
	jbe	.LBB8_176
	cmpq	%rsi, %r8
	je	.LBB8_59
.LBB8_64:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rdx,%rdi,8), %rdi
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rdx,%rsi,8), %rdx
	addq	%rcx, %r14
	addq	%rcx, %rbp
	testb	%al, %al
	je	.LBB8_70
.LBB8_66:
	movq	8(%rsp), %rax
	movq	1408(%rax), %r12
	testq	%r12, %r12
	jne	.LBB8_67
	movq	1416(%rax), %r12
.LBB8_67:
	movq	(%r12), %rax
	movq	16(%r12), %r13
	subq	%r13, %rax
	cmpq	$11, %rax
	jbe	.LBB8_68
.LBB8_69:
	movq	8(%r12), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r13)
	movl	%ebx, 8(%rax,%r13)
	addq	$12, %r13
	movq	%r13, 16(%r12)
.LBB8_70:
	movl	40(%rsp), %eax
	movl	43(%rsp), %ecx
	movl	%ecx, 116(%rsp)
	movl	%eax, 113(%rsp)
	movq	%r15, 64(%rsp)
	leaq	72(%rsp), %rbx
	movq	%r14, 72(%rsp)
	movq	%rbp, 80(%rsp)
	movq	8(%rsp), %r12
	movq	%r12, 88(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%rdx, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	32(%rsp), %r13
	movq	%r13, %rbp
	shrq	$32, %rbp
	testb	$-128, 152(%r14)
	je	.LBB8_80
	movq	8(%r15), %rsi
	movq	%rsi, %rdi
	subq	24(%r15), %rdi
	jb	.LBB8_72
	movq	(%r15), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rbx, 272(%rsp)
	leaq	184(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	core::iter::traits::iterator::Iterator::collect
	movl	%r13d, 40(%rsp)
	movl	%ebp, 44(%rsp)
	movq	192(%rsp), %r15
	movq	200(%rsp), %rax
	movq	%r15, 256(%rsp)
	movq	%rax, 264(%rsp)
	movl	$2, %esi
	movq	56(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_77
	movq	$2, 232(%rsp)
	movq	40(%rsp), %r8
	leaq	256(%rsp), %rdi
	leaq	40(%rsp), %rcx
	leaq	232(%rsp), %r9
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_77:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_79
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_79:
	movq	64(%rsp), %r15
.LBB8_80:
	movq	8(%r15), %rsi
	movq	24(%r15), %rax
	movq	%rsi, %rdi
	subq	%rax, %rdi
	jb	.LBB8_72
	movq	72(%rsp), %rax
	je	.LBB8_93
	movl	152(%rax), %ecx
	andl	$4, %ecx
	je	.LBB8_93
	movq	(%r15), %r14
	leaq	(%r14,%rdi,8), %r12
	movzbl	112(%rsp), %r13d
	leaq	256(%rsp), %r15
.LBB8_84:
	movq	72(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB8_85
	.p2align	4
.LBB8_87:
	addq	$8, %r14
	cmpq	%r12, %r14
	je	.LBB8_92
.LBB8_85:
	movq	(%r14), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB8_87
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB8_87
	movq	8(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	264(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_90
	movq	32(%rsp), %rdx
	movq	%rdx, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movb	%r13b, 272(%rsp)
	movq	%r15, %rsi
	callq	*%rax
.LBB8_90:
	addq	$8, %r14
	cmpq	%r12, %r14
	jne	.LBB8_84
	movq	72(%rsp), %rax
.LBB8_92:
	movq	8(%rsp), %r12
	movq	32(%rsp), %r13
.LBB8_93:
	testb	$1, 153(%rax)
	movq	64(%rsp), %rax
	je	.LBB8_100
	movq	8(%rax), %rsi
	movq	%rsi, %rdi
	subq	24(%rax), %rdi
	jb	.LBB8_72
	movq	(%rax), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rbx, 272(%rsp)
	leaq	184(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	core::iter::traits::iterator::Iterator::collect
	movl	%r13d, 40(%rsp)
	movl	%ebp, 44(%rsp)
	movq	192(%rsp), %r15
	movq	200(%rsp), %rax
	movq	%r15, 256(%rsp)
	movq	%rax, 264(%rsp)
	movl	$3, %esi
	movq	56(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_97
	movq	$3, 232(%rsp)
	movq	40(%rsp), %r8
	leaq	256(%rsp), %rdi
	leaq	40(%rsp), %rcx
	leaq	232(%rsp), %r9
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_97:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_99
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_99:
	movq	64(%rsp), %rax
.LBB8_100:
	movq	8(%rax), %rsi
	movq	24(%rax), %rcx
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	jb	.LBB8_72
	je	.LBB8_111
	movq	72(%rsp), %rcx
	movl	152(%rcx), %ecx
	andl	$8, %ecx
	je	.LBB8_111
	movq	(%rax), %rbx
	leaq	(%rbx,%rdi,8), %r14
	leaq	256(%rsp), %r15
.LBB8_104:
	movq	72(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB8_105
	.p2align	4
.LBB8_107:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB8_111
.LBB8_105:
	movq	(%rbx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB8_107
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB8_107
	movq	64(%r12), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	272(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_110
	movq	%r13, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*%rax
.LBB8_110:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	.LBB8_104
.LBB8_111:
	movq	64(%rsp), %rax
	movq	88(%rsp), %rbx
	leaq	336(%rbx), %rcx
	movq	%rcx, 48(%rsp)
	movq	8(%rax), %rsi
	movq	%rsi, %rdi
	subq	24(%rax), %rdi
	jb	.LBB8_72
	je	.LBB8_177
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	64(%rbx), %rax
	leaq	(%rsi,%rsi,8), %rcx
	shlq	$5, %rcx
	cmpb	$0, 64(%rax,%rcx)
	je	.LBB8_117
	movq	48(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_178
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB8_118
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_117:
	movq	96(%rsp), %rdi
	movl	20(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::take_component@GOTPCREL(%rip)
.LBB8_118:
	movq	64(%rsp), %rdx
	movq	8(%rdx), %r15
	movq	24(%rdx), %rcx
	movq	%r15, %rdi
	subq	%rcx, %rdi
	jb	.LBB8_179
	movq	%rbp, 376(%rsp)
	movd	(%rax), %xmm0
	movd	%xmm0, 224(%rsp)
	jne	.LBB8_120
.LBB8_124:
	movq	72(%rsp), %rcx
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
	je	.LBB8_132
	jbe	.LBB8_181
	addq	%rdx, %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB8_132
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
.LBB8_132:
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_144
	movq	104(%rsp), %rcx
	leaq	256(%rsp), %rdi
	movl	20(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movq	80(%rsp), %r15
	movl	264(%rsp), %ebp
	movq	88(%r15), %r14
	cmpq	72(%r15), %r14
	jne	.LBB8_135
	leaq	72(%r15), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_135:
	movq	80(%r15), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movq	376(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%r14), %rax
	movq	%rax, 88(%r15)
	movl	144(%r15), %ecx
	movl	148(%r15), %edx
	movl	256(%rsp), %eax
	testl	%eax, %eax
	je	.LBB8_142
	notl	%eax
	cmpq	%rax, 16(%rbx)
	jbe	.LBB8_147
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	8(%rbx), %rsi
	movl	16(%rsi), %eax
	cmpl	260(%rsp), %eax
	jne	.LBB8_147
	movl	(%rsi), %edi
	testl	%edi, %edi
	je	.LBB8_147
	movl	8(%rsi), %eax
	movl	20(%rsp), %r8d
	movl	%r8d, 4(%rsi)
	movq	264(%rbx), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB8_148
	movq	256(%rbx), %r8
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	88(%r8,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB8_149
	addq	%r8, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
	shlq	$4, %rdi
	movl	20(%rsp), %esi
	movl	%esi, 8(%rax,%rdi)
.LBB8_142:
	movq	8(%rsp), %r12
	movq	32(%rsp), %rsi
	jmp	.LBB8_143
.LBB8_120:
	movq	(%rdx), %r12
	leaq	824(%rbx), %rax
	movq	%rax, 392(%rsp)
	leaq	848(%rbx), %rax
	movq	%rax, 384(%rsp)
	shlq	$3, %r15
	shlq	$3, %rcx
	subq	%rcx, %r15
	xorl	%r14d, %r14d
	movq	%r15, 56(%rsp)
	movq	%r12, 24(%rsp)
	jmp	.LBB8_121
	.p2align	4
.LBB8_123:
	addq	$8, %r14
	cmpq	%r14, %r15
	je	.LBB8_124
.LBB8_121:
	movq	(%r12,%r14), %rbp
	movq	72(%rsp), %rax
	cmpq	136(%rax), %rbp
	jae	.LBB8_123
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rbp,8)
	je	.LBB8_123
	movq	888(%rbx), %r15
	movq	%rbp, %r12
	subq	%r15, %r12
	jae	.LBB8_154
	movq	880(%rbx), %rax
	movq	(%rax,%rbp,8), %rax
	testq	%rax, %rax
	je	.LBB8_152
	notq	%rax
	leaq	(%rax,%rax,8), %r15
	jmp	.LBB8_163
.LBB8_154:
	movq	840(%rbx), %r13
	movq	872(%rbx), %rax
	incq	%r12
	subq	%r15, %rax
	cmpq	%rax, %r12
	ja	.LBB8_155
.LBB8_156:
	leaq	(,%r15,8), %rdi
	addq	880(%rbx), %rdi
	leaq	(,%r12,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%r12, %r15
	movq	%r15, 888(%rbx)
	cmpq	%r15, %rbp
	jb	.LBB8_158
	jmp	.LBB8_183
.LBB8_152:
	movq	840(%rbx), %r13
	cmpq	%r15, %rbp
	jae	.LBB8_183
.LBB8_158:
	movq	%r13, %rax
	notq	%rax
	movq	880(%rbx), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	864(%rbx), %r15
	cmpq	848(%rbx), %r15
	jne	.LBB8_160
	movq	384(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.28(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_160:
	movq	856(%rbx), %rax
	movq	%rbp, (%rax,%r15,8)
	incq	%r15
	movq	%r15, 864(%rbx)
	movq	840(%rbx), %r15
	cmpq	824(%rbx), %r15
	jne	.LBB8_162
	movq	392(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_162:
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
.LBB8_163:
	shlq	$3, %r15
	addq	832(%rbx), %r15
	movq	48(%r15), %r12
	movq	64(%r15), %r13
	cmpq	32(%r15), %r12
	jne	.LBB8_165
	leaq	32(%r15), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.49(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_165:
	movq	40(%r15), %rax
	movq	%r12, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%r13, 8(%rax,%rcx)
	incq	%r12
	movq	%r12, 48(%r15)
	incq	64(%r15)
	movq	72(%rsp), %rax
	cmpq	136(%rax), %rbp
	movq	56(%rsp), %r15
	movq	24(%rsp), %r12
	jae	.LBB8_123
	movq	128(%rax), %rcx
	movq	(%rcx,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.LBB8_123
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB8_123
	movq	48(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_170
	movq	%rax, %rdi
	movq	32(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	jmp	.LBB8_123
.LBB8_155:
	leaq	872(%rbx), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	888(%rbx), %r15
	jmp	.LBB8_156
.LBB8_144:
	movq	80(%rsp), %r15
	movq	88(%r15), %r14
	cmpq	72(%r15), %r14
	jne	.LBB8_146
	leaq	72(%r15), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_146:
	movq	80(%r15), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movq	376(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	20(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%r14, %rax
	incq	%rax
	movq	%rax, 88(%r15)
	movl	144(%r15), %ecx
	movl	148(%r15), %edx
.LBB8_143:
	notl	%r14d
	movq	8(%rbx), %rax
	notl	%esi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%r14d, (%rax,%rsi,8)
	movl	%ebp, 4(%rax,%rsi,8)
	movl	%ecx, 8(%rax,%rsi,8)
	movl	%edx, 12(%rax,%rsi,8)
	movq	400(%rsp), %rbx
	movl	%r14d, 16(%rbx)
	movl	%ebp, 20(%rbx)
	movl	%ecx, 24(%rbx)
	movl	%edx, 28(%rbx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.53(%rip), %rsi
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
	movl	$1, %eax
	movss	224(%rsp), %xmm0
.LBB8_172:
	movl	%eax, 64(%rsp)
	movss	%xmm0, 68(%rsp)
	leaq	64(%rsp), %rax
	#APP
	#NO_APP
	movl	64(%rsp), %eax
	movss	68(%rsp), %xmm0
	addq	$408, %rsp
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
.LBB8_24:
	.cfi_def_cfa_offset 464
	movq	-8(%rdx), %rcx
	movq	%rcx, 152(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 136(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 120(%rsp)
	movdqu	%xmm2, 104(%rsp)
	movdqu	%xmm1, 88(%rsp)
	movdqu	%xmm0, 72(%rsp)
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	184(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r15
	jmp	.LBB8_29
.LBB8_72:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdx
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB8_74:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB8_177:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_179:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdx
	movq	%r15, %rsi
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB8_180:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB8_170:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdi
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
.LBB8_49:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.42(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_173:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.39(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_68:
	movq	%rdx, 48(%rsp)
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rdi, 24(%rsp)
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	48(%rsp), %rdx
	movq	24(%rsp), %rdi
	jmp	.LBB8_69
.LBB8_178:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rdi
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
	movb	$14, (%r15,%rax)
	movb	$14, 16(%r15,%rcx)
	incq	656(%rbp)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-7361950673224158078, %rcx
	movq	%rcx, -24(%r15,%rax,8)
	movabsq	$2027734286086351909, %rcx
	movq	%rcx, -16(%r15,%rax,8)
	movq	%rbx, -8(%r15,%rax,8)
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_41
	jmp	.LBB8_42
.LBB8_60:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_175:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$8, 80(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %rsi
	leaq	64(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_183:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_147:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_182:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_174:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.40(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_47:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_181:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.44(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_148:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_149:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_176:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_59:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.36(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end8:
	.size	entity_remove, .Lfunc_end8-entity_remove
	.cfi_endproc

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.asciz	"/home/james/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/iter/traits/iterator.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 125

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"|\000\000\000\000\000\000\000\353\007\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.asciz	"/home/james/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 113

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"p\000\000\000\000\000\000\000\331\007\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.asciz	"/home/james/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 117

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"t\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"f\000\000\000\000\000\000\000\035\005\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"f\000\000\000\000\000\000\000\304\b\000\000&\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"f\000\000\000\000\000\000\000\306\b\000\000&\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"f\000\000\000\000\000\000\000\266\b\000\000I\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"i\000\000\000\000\000\000\000\306\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	-7361950673224158078
	.quad	2027734286086351909
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"a\000\000\000\000\000\000\000\300\001\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"a\000\000\000\000\000\000\000\270\001\000\000B\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"a\000\000\000\000\000\000\000\257\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/bundle/remove.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 100

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"c\000\000\000\000\000\000\000\347\000\000\000G\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000c\002\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"c\000\000\000\000\000\000\000\020\001\000\000K\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"c\000\000\000\000\000\000\000\033\001\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000S\002\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.19
	.asciz	"c\000\000\000\000\000\000\000\331\000\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"h\000\000\000\000\000\000\000\003\002\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"h\000\000\000\000\000\000\000\004\002\000\000\030\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"h\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.ascii	"mid > len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 9

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.31
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.33
	.asciz	"g\000\000\000\000\000\000\000\377\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.33
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.36,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.33
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.33
	.asciz	"g\000\000\000\000\000\000\000\374\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.33
	.asciz	"g\000\000\000\000\000\000\000\375\002\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000q\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.41,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000r\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.42,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000n\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.43,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.43,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.43:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000o\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.43, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.44,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.44,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.44:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"_\000\000\000\000\000\000\000\177\002\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.44, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.45,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.45:
	.quad	9122328831043287557
	.quad	2676898050392348163
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.45, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.46,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.46:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.46, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.47,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.47,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.47:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.46
	.asciz	"h\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.47, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.48,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.48:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/6adae04/crates/bevy_ecs/src/message/messages.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.48, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.49,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.49,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.49:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.48
	.asciz	"f\000\000\000\000\000\000\000\217\000\000\000\031\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.49, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.50,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.50:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.50, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.51,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.51,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.51:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.50
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.51, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.52,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.52:
	.asciz	"examples/entity_take.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.52, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.53,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.53,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.53:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.52
	.asciz	"\027\000\000\000\000\000\000\000\f\000\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.53, 24

	.ident	"rustc version 1.90.0 (1159e78c4 2025-09-14)"
	.section	".note.GNU-stack","",@progbits

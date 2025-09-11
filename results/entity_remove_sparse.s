	.file	"entity_remove_sparse.526d00d18e736ea5-cgu.0"
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	%r12, (%rax)
	movq	$1, 24(%rsp)
	movq	$0, 168(%rsp)
	movq	$8, 176(%rsp)
	movq	$0, 184(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %xmm0
	movups	%xmm0, 192(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.47+16(%rip), %xmm1
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rsi
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
	jb	.LBB4_8
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
	jo	.LBB4_9
	movabsq	$-9223372036854775808, %rdx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	ja	.LBB4_11
	testq	%r9, %r9
	jne	.LBB4_5
	xorl	%edx, %edx
	jmp	.LBB4_6
.LBB4_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %r9
	movq	%rdx, 32(%rsp)
	movq	%r9, 48(%rsp)
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
	je	.LBB4_10
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
.LBB4_8:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
.LBB4_9:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB4_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB4_11:
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
	pushq	%r12
	pushq	%rbx
	cmpq	$0, 16(%rdi)
	je	.LBB6_1
.LBB6_2:
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
.LBB6_3:
	andq	%r9, %rbx
	movdqu	(%rax,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r15d
	testl	%r15d, %r15d
	je	.LBB6_7
.LBB6_4:
	rep		bsfl	%r15d, %r12d
	addq	%rbx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,2), %r12
	cmpq	-24(%rax,%r12,8), %rsi
	jne	.LBB6_6
	cmpq	-16(%rax,%r12,8), %rdx
	je	.LBB6_17
.LBB6_6:
	leal	-1(%r15), %ebp
	andw	%r15w, %bp
	movl	%ebp, %r15d
	jne	.LBB6_4
	.p2align	4
.LBB6_7:
	cmpq	$1, %r14
	je	.LBB6_11
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	je	.LBB6_9
	rep		bsfl	%r10d, %r10d
	addq	%rbx, %r10
	andq	%r9, %r10
.LBB6_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB6_14
	movl	$1, %r14d
	jmp	.LBB6_13
.LBB6_9:
	xorl	%r14d, %r14d
.LBB6_13:
	addq	%r11, %rbx
	addq	$16, %rbx
	addq	$16, %r11
	jmp	.LBB6_3
.LBB6_17:
	leaq	(%rax,%r12,8), %rax
	movq	%rcx, -8(%rax)
	jmp	.LBB6_18
.LBB6_14:
	movzbl	(%rax,%r10), %r11d
	testb	%r11b, %r11b
	jns	.LBB6_15
.LBB6_16:
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
.LBB6_18:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_1:
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
	jmp	.LBB6_2
.LBB6_15:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
	movzbl	(%rax,%r10), %r11d
	jmp	.LBB6_16
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
	.zero	16,2
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
	subq	$392, %rsp
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %r11d
	testl	%r11d, %r11d
	je	.LBB8_75
	movabsq	$6910734672564163215, %r14
	movabsq	$398911597002359203, %rbp
	movl	20(%rdi), %eax
	movl	%eax, 36(%rsp)
	movl	24(%rdi), %r15d
	movq	(%rdi), %rbx
	leaq	56(%rbx), %r12
	leaq	1440(%rbx), %rax
	movq	%r12, 208(%rsp)
	movq	%rax, 216(%rsp)
	movq	$0, 184(%rsp)
	movq	$8, 192(%rsp)
	movq	$0, 200(%rsp)
	leaq	608(%rbx), %r10
	leaq	336(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	632(%rbx), %rax
	movq	640(%rbx), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI8_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rsi
	movq	%rbx, 8(%rsp)
	movq	%rdi, 176(%rsp)
	movl	%r11d, 228(%rsp)
.LBB8_2:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB8_6
.LBB8_3:
	rep		bsfl	%r9d, %r8d
	addq	%rsi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r8
	cmpq	%r14, -24(%rax,%r8,8)
	jne	.LBB8_5
	cmpq	%rbp, -16(%rax,%r8,8)
	je	.LBB8_41
.LBB8_5:
	leal	-1(%r9), %r8d
	andw	%r9w, %r8w
	movl	%r8d, %r9d
	jne	.LBB8_3
	.p2align	4
.LBB8_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB8_8
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB8_2
.LBB8_41:
	leaq	(%rax,%r8,8), %rax
	movq	-8(%rax), %r14
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_43
	jmp	.LBB8_44
.LBB8_8:
	movq	$0, 232(%rsp)
	movq	$8, 240(%rsp)
	movq	$0, 248(%rsp)
	cmpq	$0, 104(%rbx)
	movq	%r10, 40(%rsp)
	je	.LBB8_17
	movq	80(%rbx), %rax
	movq	88(%rbx), %rcx
	xorl	%edx, %edx
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rsi
.LBB8_10:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB8_14
.LBB8_11:
	rep		bsfl	%r9d, %r8d
	addq	%rsi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r8
	cmpq	%r14, -24(%rax,%r8,8)
	jne	.LBB8_13
	cmpq	%rbp, -16(%rax,%r8,8)
	je	.LBB8_16
.LBB8_13:
	leal	-1(%r9), %r8d
	andw	%r9w, %r8w
	movl	%r8d, %r9d
	jne	.LBB8_11
.LBB8_14:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB8_17
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB8_10
.LBB8_17:
	movzbl	152(%rbx), %eax
	movq	184(%rbx), %rax
	movq	192(%rbx), %rcx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %r10
.LBB8_18:
	andq	%rcx, %r10
	movdqu	(%rax,%r10), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB8_22
.LBB8_19:
	rep		bsfl	%r8d, %r9d
	addq	%r10, %r9
	andq	%rcx, %r9
	movq	%r9, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	cmpq	%r14, -112(%rax,%rdx)
	jne	.LBB8_21
	cmpq	%rbp, -104(%rax,%rdx)
	je	.LBB8_24
.LBB8_21:
	leal	-1(%r8), %edx
	andw	%r8w, %dx
	movl	%edx, %r8d
	jne	.LBB8_19
.LBB8_22:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB8_28
	addq	%rsi, %r10
	addq	$16, %r10
	addq	$16, %rsi
	jmp	.LBB8_18
.LBB8_16:
	leaq	(%rax,%r8,8), %rax
	movq	-8(%rax), %r13
	movl	$8, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	movq	%r13, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB8_31
.LBB8_24:
	addq	%rax, %rdx
	imulq	$112, %r9, %r8
	sarq	$4, %r8
	movabsq	$7905747460161236407, %rsi
	imulq	%r8, %rsi
	leaq	-16(%rsi), %r10
	andq	%rcx, %r10
	movdqu	(%rax,%r10), %xmm0
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
	ja	.LBB8_26
	incq	200(%rbx)
	movb	$-1, %cl
.LBB8_26:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%r10)
	decq	208(%rbx)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB8_27
.LBB8_28:
	movq	1440(%rbx), %r13
	leaq	1(%r13), %rax
	movq	%rax, 1440(%rbx)
	movw	$257, 112(%rsp)
	movq	$1, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	$4, 88(%rsp)
	movq	$4, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$1, 114(%rsp)
	movq	$0, 72(%rsp)
	leaq	48(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbx), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rsi
	leaq	184(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	192(%rsp), %rax
	movq	%r13, (%rax)
	movq	$1, 200(%rsp)
	movq	$0, 256(%rsp)
	movq	$8, 264(%rsp)
	movq	$0, 272(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %xmm0
	movups	%xmm0, 280(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.47+16(%rip), %xmm1
	movups	%xmm1, 296(%rsp)
	movq	$0, 312(%rsp)
	movq	$8, 320(%rsp)
	movq	$0, 328(%rsp)
	movups	%xmm0, 336(%rsp)
	movups	%xmm1, 352(%rsp)
	movq	208(%rsp), %rdi
	leaq	256(%rsp), %rdx
	movq	%r13, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	200(%rsp), %rax
	testq	%rax, %rax
	je	.LBB8_30
	decq	%rax
	movq	%rax, 200(%rsp)
.LBB8_30:
	movq	208(%rsp), %rax
	movq	8(%rax), %rbx
	leaq	(,%r13,8), %r14
	addq	%r13, %r14
	shlq	$5, %r14
	movups	352(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	336(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	320(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	256(%rsp), %xmm0
	movups	272(%rsp), %xmm1
	movups	288(%rsp), %xmm2
	movups	304(%rsp), %xmm3
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	leaq	(%rbx,%r14), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 168(%rbx,%r14)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 152(%rbx,%r14)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 136(%rbx,%r14)
	movdqa	48(%rsp), %xmm0
	movdqa	64(%rsp), %xmm1
	movdqa	80(%rsp), %xmm2
	movdqa	96(%rsp), %xmm3
	movdqu	%xmm3, 120(%rbx,%r14)
	movdqu	%xmm2, 104(%rbx,%r14)
	movdqu	%xmm1, 88(%rbx,%r14)
	movdqu	%xmm0, 72(%rbx,%r14)
	movq	8(%rsp), %rbx
	jmp	.LBB8_31
.LBB8_27:
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
	leaq	184(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r13
.LBB8_31:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rsi
	leaq	232(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	240(%rsp), %rax
	movq	%r13, (%rax)
	movq	$1, 248(%rsp)
	movq	624(%rbx), %r14
	movq	208(%rsp), %r8
	movups	232(%rsp), %xmm0
	movaps	%xmm0, 256(%rsp)
	movq	$1, 272(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.11(%rip), %rsi
	leaq	56(%rsp), %rdi
	leaq	264(%rsp), %r9
	movl	$23, %edx
	movq	24(%rsp), %rcx
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpq	608(%rbx), %r14
	jne	.LBB8_33
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rsi
	movq	40(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_33:
	movq	616(%rbx), %rax
	leaq	(%r14,%r14,4), %rcx
	movq	80(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	48(%rsp), %xmm0
	movdqu	64(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%r14), %rax
	movq	%rax, 624(%rbx)
	movq	632(%rbx), %rax
	movq	640(%rbx), %rcx
	movq	%rcx, %rsi
	andq	%rbp, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB8_34
.LBB8_36:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB8_37
.LBB8_38:
	movq	648(%rbx), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB8_40
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$2, (%rax,%rdx)
	movb	$2, 16(%rax,%rsi)
	incq	656(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$6910734672564163215, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%rbp, -16(%rax,%rcx,8)
	movq	%r14, -8(%rax,%rcx,8)
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_44
.LBB8_43:
	movq	192(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_44:
	leaq	(%r14,%r14,4), %r13
	shlq	$3, %r13
	addq	616(%rbx), %r13
	leaq	248(%rbx), %rdx
	leaq	896(%rbx), %rbp
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	movq	16(%rsp), %rcx
	movq	%r12, %r8
	movq	%rbp, %r9
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	52(%rsp), %r14d
	cmpl	%r15d, %r14d
	setne	%al
	andb	48(%rsp), %al
	cmpb	$1, %al
	jne	.LBB8_166
	movl	%r14d, %esi
	movzbl	56(%rsp), %eax
	movq	256(%rbx), %rcx
	movq	264(%rbx), %rdx
	cmpl	%r14d, %r15d
	movq	%rbp, 40(%rsp)
	jbe	.LBB8_46
	cmpq	%r15, %rdx
	jb	.LBB8_51
	jne	.LBB8_55
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.40(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_166:
	movq	176(%rsp), %r14
	jmp	.LBB8_167
.LBB8_46:
	cmpq	%rsi, %rdx
	jb	.LBB8_168
	cmpl	%r15d, %r14d
	jbe	.LBB8_169
	cmpq	%rsi, %rdx
	je	.LBB8_49
.LBB8_55:
	leaq	(%r15,%r15,4), %r12
	shlq	$5, %r12
	leaq	(%rsi,%rsi,4), %rbp
	shlq	$5, %rbp
	movl	148(%rcx,%r12), %edi
	movl	148(%rcx,%rbp), %esi
	cmpl	%esi, %edi
	jne	.LBB8_57
	xorl	%edi, %edi
	addq	%rcx, %r12
	addq	%rcx, %rbp
	testb	%al, %al
	jne	.LBB8_68
	jmp	.LBB8_72
.LBB8_57:
	movq	416(%rbx), %rdx
	movq	424(%rbx), %r8
	cmpl	%esi, %edi
	jbe	.LBB8_58
	cmpq	%rdi, %r8
	jb	.LBB8_62
	jne	.LBB8_66
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_58:
	cmpq	%rsi, %r8
	jb	.LBB8_170
	cmpl	%edi, %esi
	jbe	.LBB8_171
	cmpq	%rsi, %r8
	je	.LBB8_61
.LBB8_66:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rdx,%rdi,8), %rdi
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rdx,%rsi,8), %rdx
	addq	%rcx, %r12
	addq	%rcx, %rbp
	testb	%al, %al
	je	.LBB8_72
.LBB8_68:
	movq	%rbx, %rax
	movq	1408(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_69
	movq	1416(%rax), %rbx
.LBB8_69:
	movq	(%rbx), %rax
	movq	16(%rbx), %r15
	subq	%r15, %rax
	cmpq	$11, %rax
	jbe	.LBB8_70
.LBB8_71:
	movq	8(%rbx), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r15)
	movl	%r14d, 8(%rax,%r15)
	addq	$12, %r15
	movq	%r15, 16(%rbx)
	movq	8(%rsp), %rbx
.LBB8_72:
	movq	%r13, 48(%rsp)
	leaq	56(%rsp), %r14
	movq	%r12, 56(%rsp)
	movq	%rbp, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rdx, 88(%rsp)
	movb	$0, 96(%rsp)
	movl	24(%rsp), %eax
	movl	27(%rsp), %ecx
	movl	%eax, 97(%rsp)
	movl	%ecx, 100(%rsp)
	movq	176(%rsp), %rax
	movq	8(%rax), %r15
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 168(%rsp)
	testb	$-128, 152(%r12)
	jne	.LBB8_76
	movq	40(%rsp), %r12
	jmp	.LBB8_82
.LBB8_76:
	movq	8(%r13), %rsi
	movq	%rsi, %rdi
	subq	24(%r13), %rdi
	movq	40(%rsp), %r12
	jb	.LBB8_172
	movq	(%r13), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%r14, 272(%rsp)
	leaq	184(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	core::iter::traits::iterator::Iterator::collect
	movl	%r15d, 24(%rsp)
	movq	168(%rsp), %rax
	movl	%eax, 28(%rsp)
	movq	192(%rsp), %rbx
	movq	200(%rsp), %rax
	movq	%rbx, 256(%rsp)
	movq	%rax, 264(%rsp)
	movl	$2, %esi
	movq	%r12, %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_79
	movq	$2, 232(%rsp)
	movq	24(%rsp), %r8
	leaq	256(%rsp), %rdi
	leaq	24(%rsp), %rcx
	leaq	232(%rsp), %r9
	movq	8(%rsp), %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_79:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_81
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_81:
	movq	48(%rsp), %r13
.LBB8_82:
	movq	8(%r13), %rsi
	movq	24(%r13), %rax
	movq	%rsi, %rdi
	subq	%rax, %rdi
	jb	.LBB8_172
	movq	56(%rsp), %rax
	je	.LBB8_95
	movl	152(%rax), %ecx
	andl	$4, %ecx
	je	.LBB8_95
	movq	%r12, %r14
	movq	%r15, %r12
	movq	(%r13), %rbx
	leaq	(%rbx,%rdi,8), %r15
	movzbl	96(%rsp), %ebp
	leaq	256(%rsp), %r13
.LBB8_86:
	movq	56(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB8_87
	.p2align	4
.LBB8_89:
	addq	$8, %rbx
	cmpq	%r15, %rbx
	je	.LBB8_94
.LBB8_87:
	movq	(%rbx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB8_89
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB8_89
	movq	8(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	264(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_92
	movq	%r12, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movb	%bpl, 272(%rsp)
	movq	%r13, %rsi
	callq	*%rax
.LBB8_92:
	addq	$8, %rbx
	cmpq	%r15, %rbx
	jne	.LBB8_86
	movq	56(%rsp), %rax
.LBB8_94:
	movq	%r12, %r15
	movq	%r14, %r12
	leaq	56(%rsp), %r14
.LBB8_95:
	testb	$1, 153(%rax)
	movq	48(%rsp), %rax
	je	.LBB8_102
	movq	8(%rax), %rsi
	movq	%rsi, %rdi
	subq	24(%rax), %rdi
	jb	.LBB8_172
	movq	(%rax), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%r14, 272(%rsp)
	leaq	184(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	core::iter::traits::iterator::Iterator::collect
	movl	%r15d, 24(%rsp)
	movq	168(%rsp), %rax
	movl	%eax, 28(%rsp)
	movq	192(%rsp), %rbx
	movq	200(%rsp), %rax
	movq	%rbx, 256(%rsp)
	movq	%rax, 264(%rsp)
	movl	$3, %esi
	movq	%r12, %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_99
	movq	$3, 232(%rsp)
	movq	24(%rsp), %r8
	leaq	256(%rsp), %rdi
	leaq	24(%rsp), %rcx
	leaq	232(%rsp), %r9
	movq	8(%rsp), %rsi
	movq	%rax, %rdx
	callq	*bevy_ecs::event::trigger::EntityComponentsTrigger::trigger_internal@GOTPCREL(%rip)
.LBB8_99:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_101
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_101:
	movq	48(%rsp), %rax
.LBB8_102:
	movq	8(%rax), %rsi
	movq	24(%rax), %rcx
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	jb	.LBB8_172
	je	.LBB8_113
	movq	56(%rsp), %rcx
	movl	152(%rcx), %ecx
	andl	$8, %ecx
	je	.LBB8_113
	movq	(%rax), %rbx
	leaq	(%rbx,%rdi,8), %r14
	leaq	256(%rsp), %r12
.LBB8_106:
	movq	56(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB8_107
	.p2align	4
.LBB8_109:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB8_113
.LBB8_107:
	movq	(%rbx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB8_109
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB8_109
	movq	8(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	272(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB8_112
	movq	%r15, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	%r12, %rsi
	callq	*%rax
.LBB8_112:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	.LBB8_106
.LBB8_113:
	movq	%r15, 16(%rsp)
	movq	48(%rsp), %rcx
	movq	72(%rsp), %r15
	leaq	336(%r15), %rax
	movq	%rax, 368(%rsp)
	movq	8(%rcx), %r12
	movq	24(%rcx), %rax
	movq	%r12, %rdi
	subq	%rax, %rdi
	jb	.LBB8_173
	jne	.LBB8_115
.LBB8_119:
	movq	56(%rsp), %rcx
	movl	228(%rsp), %r9d
	movl	%r9d, %edi
	notl	%edi
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB8_174
	decq	%rsi
	movq	80(%rcx), %rax
	movq	%rdi, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r8
	shlq	$4, %r8
	movdqu	(%rax,%r8), %xmm0
	movdqu	%xmm0, (%rax,%rdx)
	movq	%rsi, 88(%rcx)
	cmpq	%rdi, %rsi
	je	.LBB8_127
	jbe	.LBB8_175
	addq	%rdx, %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB8_127
	notl	%ecx
	cmpq	%rcx, 16(%r15)
	jbe	.LBB8_176
	movl	4(%rax), %edx
	movq	8(%r15), %rax
	leaq	(%rcx,%rcx,2), %rcx
	cmpl	%edx, 16(%rax,%rcx,8)
	jne	.LBB8_176
	leaq	(%rax,%rcx,8), %rax
	cmpl	$0, (%rax)
	je	.LBB8_176
	movl	%r9d, (%rax)
.LBB8_127:
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_139
	movq	88(%rsp), %rcx
	leaq	256(%rsp), %rdi
	movl	36(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_drop_missing_unchecked@GOTPCREL(%rip)
	movq	64(%rsp), %r14
	movl	264(%rsp), %ebp
	movq	88(%r14), %rbx
	cmpq	72(%r14), %rbx
	jne	.LBB8_130
	leaq	72(%r14), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_130:
	movq	80(%r14), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	16(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movq	168(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%rbx), %rax
	movq	%rax, 88(%r14)
	movl	144(%r14), %ecx
	movl	148(%r14), %edx
	movl	256(%rsp), %eax
	testl	%eax, %eax
	movq	176(%rsp), %r14
	je	.LBB8_137
	notl	%eax
	cmpq	%rax, 16(%r15)
	jbe	.LBB8_142
	movq	8(%r15), %rsi
	leaq	(%rax,%rax,2), %rax
	movl	16(%rsi,%rax,8), %edi
	cmpl	260(%rsp), %edi
	jne	.LBB8_142
	leaq	(%rsi,%rax,8), %rsi
	movl	(%rsi), %edi
	testl	%edi, %edi
	je	.LBB8_142
	movl	8(%rsi), %eax
	movl	36(%rsp), %r8d
	movl	%r8d, 4(%rsi)
	movq	264(%r15), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB8_143
	movq	256(%r15), %r8
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	88(%r8,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB8_144
	addq	%r8, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
	shlq	$4, %rdi
	movl	36(%rsp), %esi
	movl	%esi, 8(%rax,%rdi)
.LBB8_137:
	movq	16(%rsp), %rsi
	jmp	.LBB8_138
.LBB8_115:
	movq	(%rcx), %r13
	leaq	824(%r15), %rcx
	movq	%rcx, 384(%rsp)
	leaq	848(%r15), %rcx
	movq	%rcx, 376(%rsp)
	shlq	$3, %r12
	shlq	$3, %rax
	subq	%rax, %r12
	xorl	%r14d, %r14d
	movq	%r12, 40(%rsp)
	movq	%r13, 160(%rsp)
	jmp	.LBB8_116
	.p2align	4
.LBB8_118:
	addq	$8, %r14
	cmpq	%r14, %r12
	je	.LBB8_119
.LBB8_116:
	movq	(%r13,%r14), %rbx
	movq	56(%rsp), %rax
	cmpq	136(%rax), %rbx
	jae	.LBB8_118
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rbx,8)
	je	.LBB8_118
	movq	888(%r15), %r13
	movq	%rbx, %rbp
	subq	%r13, %rbp
	jae	.LBB8_149
	movq	880(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB8_147
	notq	%rax
	leaq	(%rax,%rax,8), %r12
	jmp	.LBB8_158
.LBB8_149:
	movq	840(%r15), %r12
	movq	872(%r15), %rax
	incq	%rbp
	subq	%r13, %rax
	cmpq	%rax, %rbp
	ja	.LBB8_150
.LBB8_151:
	leaq	(,%r13,8), %rdi
	addq	880(%r15), %rdi
	leaq	(,%rbp,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%rbp, %r13
	movq	%r13, 888(%r15)
	cmpq	%r13, %rbx
	jb	.LBB8_153
	jmp	.LBB8_177
.LBB8_147:
	movq	840(%r15), %r12
	cmpq	%r13, %rbx
	jae	.LBB8_177
.LBB8_153:
	movq	%r12, %rax
	notq	%rax
	movq	880(%r15), %rcx
	movq	%rax, (%rcx,%rbx,8)
	movq	864(%r15), %r13
	cmpq	848(%r15), %r13
	jne	.LBB8_155
	movq	376(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_155:
	movq	856(%r15), %rax
	movq	%rbx, (%rax,%r13,8)
	incq	%r13
	movq	%r13, 864(%r15)
	movq	840(%r15), %r13
	cmpq	824(%r15), %r13
	jne	.LBB8_157
	movq	384(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_157:
	movq	832(%r15), %rax
	leaq	(,%r13,8), %rcx
	addq	%r13, %rcx
	movq	$0, (%rax,%rcx,8)
	movq	$8, 8(%rax,%rcx,8)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%rax,%rcx,8)
	movq	$0, 32(%rax,%rcx,8)
	movq	$8, 40(%rax,%rcx,8)
	movdqu	%xmm0, 48(%rax,%rcx,8)
	movq	$0, 64(%rax,%rcx,8)
	incq	%r13
	movq	%r13, 840(%r15)
	leaq	(%r12,%r12,8), %r12
.LBB8_158:
	shlq	$3, %r12
	addq	832(%r15), %r12
	movq	48(%r12), %r13
	movq	64(%r12), %rbp
	cmpq	32(%r12), %r13
	jne	.LBB8_160
	leaq	32(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.45(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_160:
	movq	40(%r12), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	16(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%rbp, 8(%rax,%rcx)
	incq	%r13
	movq	%r13, 48(%r12)
	incq	64(%r12)
	movq	56(%rsp), %rax
	cmpq	136(%rax), %rbx
	movq	40(%rsp), %r12
	movq	160(%rsp), %r13
	jae	.LBB8_118
	movq	128(%rax), %rcx
	movq	(%rcx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB8_118
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB8_118
	movq	368(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_165
	movq	%rax, %rdi
	movq	16(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	jmp	.LBB8_118
.LBB8_150:
	leaq	872(%r15), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	888(%r15), %r13
	jmp	.LBB8_151
.LBB8_139:
	movq	64(%rsp), %r14
	movq	88(%r14), %rbx
	cmpq	72(%r14), %rbx
	jne	.LBB8_141
	leaq	72(%r14), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB8_141:
	movq	80(%r14), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	16(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movq	168(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	36(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%rbx, %rax
	incq	%rax
	movq	%rax, 88(%r14)
	movl	144(%r14), %ecx
	movl	148(%r14), %edx
	movq	176(%rsp), %r14
.LBB8_138:
	notl	%ebx
	movq	8(%r15), %rax
	notl	%esi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%ebx, (%rax,%rsi,8)
	movl	%ebp, 4(%rax,%rsi,8)
	movl	%ecx, 8(%rax,%rsi,8)
	movl	%edx, 12(%rax,%rsi,8)
	movl	%ebx, 16(%r14)
	movl	%ebp, 20(%r14)
	movl	%ecx, 24(%r14)
	movl	%edx, 28(%r14)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rsi
	movq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
.LBB8_167:
	movq	%r14, 48(%rsp)
	leaq	48(%rsp), %rax
	#APP
	#NO_APP
	addq	$392, %rsp
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
.LBB8_172:
	.cfi_def_cfa_offset 448
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdx
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB8_75:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB8_173:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdx
	movq	%r12, %rsi
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB8_174:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB8_165:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_34:
	movl	$16, %edi
.LBB8_35:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB8_36
	jmp	.LBB8_35
.LBB8_37:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB8_38
.LBB8_51:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.39(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_168:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.36(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_70:
	movq	%rdx, 160(%rsp)
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rdi, 16(%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	160(%rsp), %rdx
	movq	16(%rsp), %rdi
	jmp	.LBB8_71
.LBB8_40:
	leaq	632(%rbx), %rdi
	leaq	664(%rbx), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	8(%rsp), %rax
	movq	632(%rax), %rbx
	movq	8(%rsp), %rax
	movq	640(%rax), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	movq	8(%rsp), %rdx
	subq	%rcx, 648(%rdx)
	leaq	-16(%rax), %rcx
	andq	%r13, %rcx
	movb	$2, (%rbx,%rax)
	movb	$2, 16(%rbx,%rcx)
	movq	8(%rsp), %rcx
	incq	656(%rcx)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$6910734672564163215, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movq	%rbp, -16(%rbx,%rax,8)
	movq	%r14, -8(%rbx,%rax,8)
	movq	8(%rsp), %rbx
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB8_43
	jmp	.LBB8_44
.LBB8_62:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_170:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB8_177:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_142:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_176:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB8_169:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_49:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_175:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_143:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_144:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_171:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB8_61:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end8:
	.size	entity_remove, .Lfunc_end8-entity_remove
	.cfi_endproc

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/core/src/iter/traits/iterator.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 89

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"Y\000\000\000\000\000\000\000\353\007\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 77

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"M\000\000\000\000\000\000\000\313\007\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 81

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"g\000\000\000\000\000\000\000\031\005\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"g\000\000\000\000\000\000\000\346\b\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.9
	.asciz	"j\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.11,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"entity_remove_sparse::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 23

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.12
	.asciz	"b\000\000\000\000\000\000\000\274\001\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.12
	.asciz	"b\000\000\000\000\000\000\000\264\001\000\000B\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.12
	.asciz	"b\000\000\000\000\000\000\000\257\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/bundle/remove.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 100

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"d\000\000\000\000\000\000\000\347\000\000\000G\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000[\002\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"d\000\000\000\000\000\000\000\020\001\000\000K\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"d\000\000\000\000\000\000\000\033\001\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000K\002\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"d\000\000\000\000\000\000\000\331\000\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.24
	.asciz	"i\000\000\000\000\000\000\000\003\002\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.24
	.asciz	"i\000\000\000\000\000\000\000\004\002\000\000\030\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.24
	.asciz	"i\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.28,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.ascii	"mid > len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 9

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"h\000\000\000\000\000\000\000\377\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"h\000\000\000\000\000\000\000\000\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"h\000\000\000\000\000\000\000\000\003\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"h\000\000\000\000\000\000\000\374\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"h\000\000\000\000\000\000\000\375\002\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.36,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000i\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000j\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000j\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000f\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000g\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.41,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"`\000\000\000\000\000\000\000w\002\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.43,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.43,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.43:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.42
	.asciz	"i\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.43, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.44,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.44:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/message/messages.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.44, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.45,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.45,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.45:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.44
	.asciz	"g\000\000\000\000\000\000\000\217\000\000\000\031\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.45, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.46,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.46:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.46, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.47,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.47,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.47:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.46
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.47, 32

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

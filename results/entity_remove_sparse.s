	.file	"entity_remove_sparse.e89a55098a3fdf12-cgu.0"
	.section	".text.<&T as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<&T as core::fmt::Debug>::fmt,@function
<&T as core::fmt::Debug>::fmt:
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	movq	(%rdi), %r9
	movq	%r9, (%rsp)
	addq	$8, %r9
	subq	$8, %rsp
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %r10
	leaq	8(%rsp), %r11
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rbx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %r14
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rcx
	movl	$6, %edx
	movl	$4, %r8d
	movq	%rax, %rdi
	pushq	%r10
	pushq	%r11
	pushq	$5
	pushq	%rbx
	pushq	%r14
	callq	*core::fmt::Formatter::debug_struct_field2_finish@GOTPCREL(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	<&T as core::fmt::Debug>::fmt, .Lfunc_end0-<&T as core::fmt::Debug>::fmt

	.section	".text.<&T as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<&T as core::fmt::Debug>::fmt,@function
<&T as core::fmt::Debug>::fmt:
	movq	(%rdi), %rdi
	jmpq	*<core::ptr::alignment::Alignment as core::fmt::Debug>::fmt@GOTPCREL(%rip)
.Lfunc_end1:
	.size	<&T as core::fmt::Debug>::fmt, .Lfunc_end1-<&T as core::fmt::Debug>::fmt

	.section	".text.core::fmt::num::<impl core::fmt::Debug for usize>::fmt","ax",@progbits
	.p2align	4
	.type	core::fmt::num::<impl core::fmt::Debug for usize>::fmt,@function
core::fmt::num::<impl core::fmt::Debug for usize>::fmt:
	movl	16(%rsi), %eax
	testl	$33554432, %eax
	jne	.LBB2_3
	testl	$67108864, %eax
	jne	.LBB2_2
	jmpq	*core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip)
.LBB2_3:
	jmpq	*core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt@GOTPCREL(%rip)
.LBB2_2:
	jmpq	*core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt@GOTPCREL(%rip)
.Lfunc_end2:
	.size	core::fmt::num::<impl core::fmt::Debug for usize>::fmt, .Lfunc_end2-core::fmt::num::<impl core::fmt::Debug for usize>::fmt

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
	.zero	16,114
.LCPI3_1:
	.zero	16
	.section	.text.core::ops::function::FnOnce::call_once,"ax",@progbits
	.p2align	4
	.type	core::ops::function::FnOnce::call_once,@function
core::ops::function::FnOnce::call_once:
	.cfi_startproc
	addq	$4, (%rdx)
	testq	%rsi, %rsi
	je	.LBB3_34
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
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movabsq	$-1964937323593780333, %r15
	movabsq	$-7739221260687288168, %r12
	movl	(%rdi), %eax
	movl	%eax, 20(%rsp)
	leaq	56(%rsi), %rdi
	leaq	1440(%rsi), %rax
	movq	%rdi, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	cmpq	$0, 104(%rsi)
	je	.LBB3_10
	movq	80(%rbp), %rax
	movq	88(%rbp), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI3_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rsi
.LBB3_3:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB3_7
.LBB3_4:
	rep		bsfl	%r8d, %r9d
	addq	%rsi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%r12, -24(%rax,%r9,8)
	jne	.LBB3_6
	cmpq	%r15, -16(%rax,%r9,8)
	je	.LBB3_9
.LBB3_6:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB3_4
.LBB3_7:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB3_10
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB3_3
.LBB3_10:
	movzbl	152(%rbp), %eax
	movq	184(%rbp), %rax
	movq	192(%rbp), %rcx
	xorl	%esi, %esi
	movdqa	.LCPI3_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %r8
.LBB3_11:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB3_15
.LBB3_12:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rcx, %r10
	movq	%r10, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	cmpq	%r12, -112(%rax,%rdx)
	jne	.LBB3_14
	cmpq	%r15, -104(%rax,%rdx)
	je	.LBB3_17
.LBB3_14:
	leal	-1(%r9), %edx
	andw	%r9w, %dx
	movl	%edx, %r9d
	jne	.LBB3_12
.LBB3_15:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB3_21
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB3_11
.LBB3_9:
	leaq	(%rax,%r9,8), %rax
	movq	-8(%rax), %rcx
	movl	$8, %esi
	xorl	%edx, %edx
	movq	%rcx, 8(%rsp)
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_25
	jmp	.LBB3_26
.LBB3_17:
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
	ja	.LBB3_19
	incq	200(%rbp)
	movb	$-1, %cl
.LBB3_19:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%r8)
	decq	208(%rbp)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB3_20
.LBB3_21:
	movq	1440(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, 1440(%rbp)
	movw	$256, 128(%rsp)
	movq	$1, 64(%rsp)
	movq	%r12, 72(%rsp)
	movq	%r15, 80(%rsp)
	movq	$1, 104(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 112(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
	leaq	64(%rsp), %rdx
	movq	%rbx, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rsi
	leaq	24(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	32(%rsp), %rax
	movq	%rbx, (%rax)
	movq	$1, 40(%rsp)
	movq	$0, 184(%rsp)
	movq	$8, 192(%rsp)
	movq	$0, 200(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %xmm0
	movups	%xmm0, 208(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.37+16(%rip), %xmm1
	movups	%xmm1, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$8, 248(%rsp)
	movq	$0, 256(%rsp)
	movups	%xmm0, 264(%rsp)
	movups	%xmm1, 280(%rsp)
	movq	48(%rsp), %rdi
	leaq	184(%rsp), %rdx
	movq	%rbx, 8(%rsp)
	movq	%rbx, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_23
	decq	%rax
	movq	%rax, 40(%rsp)
.LBB3_23:
	movq	48(%rsp), %rax
	movq	8(%rax), %rbx
	movq	8(%rsp), %rax
	leaq	(%rax,%rax,8), %r14
	shlq	$5, %r14
	movups	280(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	264(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	248(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	184(%rsp), %xmm0
	movups	200(%rsp), %xmm1
	movups	216(%rsp), %xmm2
	movups	232(%rsp), %xmm3
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
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_26
.LBB3_25:
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB3_26:
	movb	$0, 184(%rsp)
	incl	1460(%rbp)
	movq	%rbp, %r13
	leaq	896(%rbp), %rdi
	movq	8(%rsp), %rsi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB3_33
	movq	(%rax), %rbp
	movq	24(%rax), %rbx
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	leaq	16(%rbp), %r14
	leaq	96(%rsp), %r15
	jmp	.LBB3_28
	.p2align	4
.LBB3_32:
	leal	-1(%rax), %r12d
	rep		bsfl	%eax, %ecx
	andl	%eax, %r12d
	shll	$4, %ecx
	movq	%rbp, %rax
	subq	%rcx, %rax
	movq	-16(%rax), %rcx
	movq	-8(%rax), %rax
	movq	%rcx, 64(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movq	%r13, %rdi
	leaq	64(%rsp), %rsi
	leaq	20(%rsp), %rdx
	leaq	184(%rsp), %rcx
	callq	*%rax
	decq	%rbx
	movl	%r12d, %eax
.LBB3_28:
	testw	%ax, %ax
	jne	.LBB3_32
	testq	%rbx, %rbx
	je	.LBB3_33
	.p2align	4
.LBB3_30:
	movdqa	(%r14), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$-256, %rbp
	addq	$16, %r14
	cmpl	$65535, %eax
	je	.LBB3_30
	notl	%eax
	jmp	.LBB3_32
.LBB3_33:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	addq	$296, %rsp
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
.LBB3_34:
	retq
.LBB3_20:
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
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
	leaq	24(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_25
	jmp	.LBB3_26
.Lfunc_end3:
	.size	core::ops::function::FnOnce::call_once, .Lfunc_end3-core::ops::function::FnOnce::call_once
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
	je	.LBB4_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_2:
	movq	8(%rbx), %r14
	movq	16(%rbx), %r12
	testq	%r12, %r12
	je	.LBB4_7
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r13
	movq	%r14, %r15
	jmp	.LBB4_4
	.p2align	4
.LBB4_6:
	addq	$32, %r15
	decq	%r12
	je	.LBB4_7
.LBB4_4:
	movq	(%r15), %rax
	lock		decq	(%rax)
	jne	.LBB4_6
	#MEMBARRIER
	movq	%r15, %rdi
	callq	*%r13
	jmp	.LBB4_6
.LBB4_7:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_9
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_9:
	movq	88(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_11
	movq	80(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_11:
	movq	64(%rbx), %r14
	movq	72(%rbx), %r12
	testq	%r12, %r12
	je	.LBB4_16
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r13
	movq	%r14, %r15
	jmp	.LBB4_13
	.p2align	4
.LBB4_15:
	addq	$32, %r15
	decq	%r12
	je	.LBB4_16
.LBB4_13:
	movq	(%r15), %rax
	lock		decq	(%rax)
	jne	.LBB4_15
	#MEMBARRIER
	movq	%r15, %rdi
	callq	*%r13
	jmp	.LBB4_15
.LBB4_16:
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_17
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_17:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>, .Lfunc_end4-core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>

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
	je	.LBB5_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB5_7
.LBB5_3:
	testq	%rbx, %rbx
	je	.LBB5_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB5_7
.LBB5_4:
	movq	%r15, %rax
.LBB5_7:
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
.Lfunc_end5:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end5-alloc::raw_vec::finish_grow

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
	jb	.LBB6_8
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
	jo	.LBB6_9
	movabsq	$-9223372036854775808, %rdx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	ja	.LBB6_11
	testq	%r9, %r9
	jne	.LBB6_5
	xorl	%edx, %edx
	jmp	.LBB6_6
.LBB6_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %r9
	movq	%rdx, 32(%rsp)
	movq	%r9, 48(%rsp)
	movq	%rcx, %rdx
.LBB6_6:
	movq	%rdx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB6_10
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
.LBB6_8:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
.LBB6_9:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB6_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB6_11:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end6:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end6-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	".text.<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt,@function
<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt:
	movq	%rsi, %rax
	cmpq	$0, (%rdi)
	je	.LBB7_2
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rcx
	movq	%rcx, (%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rcx
	leaq	16(%rsp), %r9
	movl	$8, %edx
	movl	$6, %r8d
	movq	%rax, %rdi
	callq	*core::fmt::Formatter::debug_struct_field1_finish@GOTPCREL(%rip)
	addq	$24, %rsp
	retq
.LBB7_2:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.11(%rip), %rsi
	movl	$16, %edx
	movq	%rax, %rdi
	jmpq	*core::fmt::Formatter::write_str@GOTPCREL(%rip)
.Lfunc_end7:
	.size	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt, .Lfunc_end7-<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
	.zero	16,255
	.section	.text.bevy_ecs::observer::centralized_storage::Observers::invoke,"ax",@progbits
	.p2align	4
	.type	bevy_ecs::observer::centralized_storage::Observers::invoke,@function
bevy_ecs::observer::centralized_storage::Observers::invoke:
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rdi, %r12
	movq	%rsi, 64(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 72(%rsp)
	incl	1460(%rdi)
	addq	$896, %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB8_31
	movq	%rax, %rbx
	movq	208(%rsp), %rax
	movq	%r12, 80(%rsp)
	movq	(%r15), %r12
	movq	8(%r15), %rbp
	movq	16(%r15), %rcx
	movq	%rcx, 56(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	leaq	64(%rsp), %rcx
	movq	%rcx, 96(%rsp)
	movq	%r15, 104(%rsp)
	leaq	16(%rsp), %rcx
	movq	%rcx, 112(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	leaq	15(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%r14, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax,%rcx), %rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	24(%rbx), %rsi
	leaq	88(%rsp), %rdi
	movq	%rdi, (%rsp)
	movq	%rax, 24(%rsp)
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movw	%dx, 48(%rsp)
	leaq	24(%rsp), %rdi
	movq	%rsp, %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	cmpl	$0, 16(%rsp)
	je	.LBB8_10
	cmpq	$0, 88(%rbx)
	je	.LBB8_10
	movq	16(%rsp), %rcx
	movq	%rcx, %rdx
	movabsq	$-7046029256521940991, %rax
	imulq	%rax, %rdx
	movq	%rdx, %rdi
	shrq	$57, %rdi
	movq	64(%rbx), %rax
	movq	72(%rbx), %rsi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	leaq	-40(%rax), %rdi
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
.LBB8_4:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB8_7
.LBB8_5:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB8_9
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB8_5
.LBB8_7:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB8_10
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB8_4
.LBB8_9:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	notl	%edi
	movq	-8(%rax,%r10,8), %rsi
	leaq	88(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rcx, 24(%rsp)
	addq	$16, %rcx
	movq	%rcx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movw	%di, 48(%rsp)
	leaq	24(%rsp), %rdi
	movq	%rsp, %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
.LBB8_10:
	cmpq	%rbp, %r12
	movq	56(%rsp), %r11
	je	.LBB8_31
	subq	%r12, %rbp
	shrq	$3, %rbp
	xorl	%r14d, %r14d
	jmp	.LBB8_12
	.p2align	4
.LBB8_16:
	andq	%rax, %rdx
	movdqu	(%r15,%rdx), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	je	.LBB8_19
.LBB8_17:
	rep		bsfl	%r8d, %r9d
	addq	%rdx, %r9
	andq	%rax, %r9
	negq	%r9
	leaq	(%r9,%r9,8), %r13
	cmpq	(%rsi,%r13,8), %rcx
	je	.LBB8_21
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB8_17
	.p2align	4
.LBB8_19:
	pcmpeqb	.LCPI8_0(%rip), %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB8_30
	addq	%rdi, %rdx
	addq	$16, %rdx
	addq	$16, %rdi
	jmp	.LBB8_16
.LBB8_21:
	movq	-64(%r15,%r13,8), %rax
	movq	-56(%r15,%r13,8), %rcx
	addq	%rax, %rcx
	incq	%rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	-40(%r15,%r13,8), %rsi
	leaq	88(%rsp), %rdi
	movq	%rdi, (%rsp)
	movq	%rax, 24(%rsp)
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movw	%dx, 48(%rsp)
	leaq	24(%rsp), %rdi
	movq	%rsp, %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	movq	56(%rsp), %r11
	cmpl	$0, 16(%rsp)
	je	.LBB8_30
	leaq	(%r15,%r13,8), %rsi
	cmpq	$0, -8(%rsi)
	je	.LBB8_30
	movq	16(%rsp), %rcx
	movq	%rcx, %rdx
	movabsq	$-7046029256521940991, %rax
	imulq	%rax, %rdx
	movq	%rdx, %rdi
	shrq	$57, %rdi
	movq	-32(%rsi), %rax
	movq	-24(%rsi), %rsi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	leaq	-40(%rax), %rdi
	xorl	%r8d, %r8d
.LBB8_24:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB8_27
.LBB8_25:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB8_29
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB8_25
	.p2align	4
.LBB8_27:
	pcmpeqb	.LCPI8_0(%rip), %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB8_30
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB8_24
.LBB8_29:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	notl	%edi
	movq	-8(%rax,%r10,8), %rsi
	leaq	88(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rcx, 24(%rsp)
	addq	$16, %rcx
	movq	%rcx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movw	%di, 48(%rsp)
	leaq	24(%rsp), %rdi
	movq	%rsp, %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	movq	56(%rsp), %r11
	jmp	.LBB8_30
	.p2align	4
.LBB8_12:
	movq	(%r12,%r14,8), %rcx
	movq	(%r11), %rax
	cmpq	136(%rax), %rcx
	jae	.LBB8_30
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB8_30
	cmpq	$0, 56(%rbx)
	je	.LBB8_30
	movq	%rcx, %rax
	movabsq	$-7079378939119345935, %rdx
	xorq	%rdx, %rax
	movabsq	$4983270260364809079, %rdx
	mulq	%rdx
	xorq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$57, %rsi
	movq	32(%rbx), %r15
	movq	40(%rbx), %rax
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	leaq	-72(%r15), %rsi
	xorl	%edi, %edi
	jmp	.LBB8_16
	.p2align	4
.LBB8_30:
	incq	%r14
	cmpq	%rbp, %r14
	jne	.LBB8_12
.LBB8_31:
	addq	$152, %rsp
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
.Lfunc_end8:
	.size	bevy_ecs::observer::centralized_storage::Observers::invoke, .Lfunc_end8-bevy_ecs::observer::centralized_storage::Observers::invoke
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
	jbe	.LBB9_1
	movq	(%r14), %rax
	subq	%r15, %rax
	movq	%r15, %rcx
	cmpq	%rax, %rdx
	ja	.LBB9_3
.LBB9_4:
	movq	8(%r14), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%rbx, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB9_5:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB9_5
	subq	%rdi, %rcx
	movq	%rcx, 16(%r14)
	jmp	.LBB9_7
.LBB9_1:
	movq	8(%r14), %rax
.LBB9_7:
	leaq	(%rbx,%rbx,8), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbx
	cmpl	$2, (%rax,%rcx)
	je	.LBB9_12
	leaq	72(%rbx), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB9_10
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB9_10:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB9_12
	movq	192(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB9_12:
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
.LBB9_3:
	.cfi_def_cfa_offset 320
	movl	$8, %ecx
	movl	$288, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%r14), %rcx
	jmp	.LBB9_4
.Lfunc_end9:
	.size	bevy_ecs::component::info::Components::register_component_inner, .Lfunc_end9-bevy_ecs::component::info::Components::register_component_inner
	.cfi_endproc

	.section	".text.unlikely.smallvec::SmallVec<A>::reserve_one_unchecked","ax",@progbits
	.p2align	4
	.type	smallvec::SmallVec<A>::reserve_one_unchecked,@function
smallvec::SmallVec<A>::reserve_one_unchecked:
	pushq	%rax
	movq	16(%rdi), %rsi
	cmpq	$3, %rsi
	jb	.LBB10_2
	movq	8(%rdi), %rsi
.LBB10_2:
	testq	%rsi, %rsi
	je	.LBB10_5
	cmpq	$-1, %rsi
	je	.LBB10_9
	bsrq	%rsi, %rcx
	xorq	$63, %rcx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	testq	%rcx, %rcx
	je	.LBB10_9
.LBB10_5:
	incq	%rsi
	callq	smallvec::SmallVec<A>::try_grow
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_6
	popq	%rax
	retq
.LBB10_9:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.40(%rip), %rdx
	movl	$17, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
.LBB10_6:
	testq	%rax, %rax
	jne	.LBB10_10
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.39(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_10:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end10:
	.size	smallvec::SmallVec<A>::reserve_one_unchecked, .Lfunc_end10-smallvec::SmallVec<A>::reserve_one_unchecked

	.section	".text.smallvec::SmallVec<A>::try_grow","ax",@progbits
	.p2align	4
	.type	smallvec::SmallVec<A>::try_grow,@function
smallvec::SmallVec<A>::try_grow:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	16(%rdi), %r12
	cmpq	$3, %r12
	movq	8(%rdi), %rbp
	movl	$2, %ebx
	cmovaeq	%r12, %rbx
	movq	%r12, %r13
	cmovaeq	%rbp, %r13
	cmpq	%r13, %rsi
	jb	.LBB11_20
	movq	(%rdi), %r15
	movabsq	$-9223372036854775807, %rcx
	cmpq	$3, %rsi
	jae	.LBB11_6
	cmpq	$3, %r12
	jb	.LBB11_7
	movq	%rcx, %r13
	leaq	(,%rbp,8), %rdx
	movq	%rdi, %r14
	movq	%r15, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, 16(%r14)
	shlq	$3, %rbx
	shrq	$61, %r12
	jne	.LBB11_21
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB11_21
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	%r13, %rax
	jmp	.LBB11_8
.LBB11_6:
	cmpq	%rsi, %r12
	jne	.LBB11_9
.LBB11_7:
	movq	%rcx, %rax
	jmp	.LBB11_8
.LBB11_9:
	leaq	(,%rsi,8), %r14
	movq	%rsi, %rax
	shrq	$61, %rax
	jne	.LBB11_22
	movq	%rcx, %rbp
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB11_22
	cmpq	$3, %r12
	jae	.LBB11_15
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	movq	%rax, %rbx
	movl	$8, %eax
	testq	%rbx, %rbx
	je	.LBB11_8
	shlq	$3, %r12
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB11_18
.LBB11_22:
	xorl	%eax, %eax
	jmp	.LBB11_8
.LBB11_15:
	movabsq	$2305843009213693951, %rax
	shlq	$3, %rbx
	cmpq	%rax, %r12
	ja	.LBB11_19
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB11_19
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	movl	$8, %eax
	je	.LBB11_8
.LBB11_18:
	movq	8(%rsp), %rcx
	movq	%rbx, (%rcx)
	movq	%r13, 8(%rcx)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	%rbp, %rax
	jmp	.LBB11_8
.LBB11_19:
	xorl	%eax, %eax
	movq	%rbx, %r14
.LBB11_8:
	movq	%r14, %rdx
	addq	$40, %rsp
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
.LBB11_20:
	.cfi_def_cfa_offset 96
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.42(%rip), %rdx
	movl	$32, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB11_21:
	movq	$0, 24(%rsp)
	movq	%rbx, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rcx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %r8
	leaq	24(%rsp), %rdx
	movl	$43, %esi
	callq	*core::result::unwrap_failed@GOTPCREL(%rip)
.Lfunc_end11:
	.size	smallvec::SmallVec<A>::try_grow, .Lfunc_end11-smallvec::SmallVec<A>::try_grow
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
	je	.LBB12_1
.LBB12_2:
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
.LBB12_3:
	andq	%r9, %rbx
	movdqu	(%rax,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r15d
	testl	%r15d, %r15d
	je	.LBB12_7
.LBB12_4:
	rep		bsfl	%r15d, %r12d
	addq	%rbx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,2), %r12
	cmpq	-24(%rax,%r12,8), %rsi
	jne	.LBB12_6
	cmpq	-16(%rax,%r12,8), %rdx
	je	.LBB12_17
.LBB12_6:
	leal	-1(%r15), %ebp
	andw	%r15w, %bp
	movl	%ebp, %r15d
	jne	.LBB12_4
	.p2align	4
.LBB12_7:
	cmpq	$1, %r14
	je	.LBB12_11
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	je	.LBB12_9
	rep		bsfl	%r10d, %r10d
	addq	%rbx, %r10
	andq	%r9, %r10
.LBB12_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB12_14
	movl	$1, %r14d
	jmp	.LBB12_13
.LBB12_9:
	xorl	%r14d, %r14d
.LBB12_13:
	addq	%r11, %rbx
	addq	$16, %rbx
	addq	$16, %r11
	jmp	.LBB12_3
.LBB12_17:
	leaq	(%rax,%r12,8), %rax
	movq	%rcx, -8(%rax)
	jmp	.LBB12_18
.LBB12_14:
	movzbl	(%rax,%r10), %r11d
	testb	%r11b, %r11b
	jns	.LBB12_15
.LBB12_16:
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
.LBB12_18:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_1:
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
	jmp	.LBB12_2
.LBB12_15:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
	movzbl	(%rax,%r10), %r11d
	jmp	.LBB12_16
.Lfunc_end12:
	.size	hashbrown::map::HashMap<K,V,S,A>::insert, .Lfunc_end12-hashbrown::map::HashMap<K,V,S,A>::insert

	.section	.text.hashbrown::raw::RawTableInner::find_insert_slot,"ax",@progbits
	.p2align	4
	.type	hashbrown::raw::RawTableInner::find_insert_slot,@function
hashbrown::raw::RawTableInner::find_insert_slot:
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	je	.LBB13_1
.LBB13_3:
	rep		bsfl	%eax, %eax
	addq	%rdx, %rax
	andq	%rsi, %rax
	cmpb	$0, (%rdi,%rax)
	jns	.LBB13_4
	retq
.LBB13_1:
	movl	$16, %ecx
.LBB13_2:
	addq	%rcx, %rdx
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	jne	.LBB13_3
	jmp	.LBB13_2
.LBB13_4:
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	retq
.Lfunc_end13:
	.size	hashbrown::raw::RawTableInner::find_insert_slot, .Lfunc_end13-hashbrown::raw::RawTableInner::find_insert_slot

	.section	".text.hashbrown::raw::RawIterRange<T>::fold_impl","ax",@progbits
	.p2align	4
	.type	hashbrown::raw::RawIterRange<T>::fold_impl,@function
hashbrown::raw::RawIterRange<T>::fold_impl:
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movzwl	24(%rdi), %r15d
	movq	(%rdi), %r13
	movq	8(%rdi), %rbp
	movq	(%rdx), %rbx
	movq	%rdi, 88(%rsp)
	movq	%rbx, 80(%rsp)
	jmp	.LBB14_1
	.p2align	4
.LBB14_6:
	xorl	%ecx, %ecx
.LBB14_7:
	movq	%rcx, 24(%rsp)
.LBB14_24:
	movq	80(%rsp), %rbx
	movq	24(%rbx), %rax
	movq	32(%rbx), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	%r10, 96(%rsp)
	movq	%r11, 104(%rsp)
	movq	24(%rsp), %rdx
	leaq	112(%rsp), %rsi
	movq	%rdx, 16(%rsi)
	movq	8(%rsp), %rdx
	movq	%rdx, (%rsi)
	movq	16(%rsp), %rdx
	movq	%rdx, 8(%rsi)
	movq	%rax, 136(%rsp)
	movq	%rcx, 144(%rsp)
	movq	48(%rbx), %rdx
	movq	56(%rbx), %rcx
	leaq	96(%rsp), %rsi
	callq	*%r9
	decq	%r12
	movq	88(%rsp), %rdi
.LBB14_1:
	testw	%r15w, %r15w
	jne	.LBB14_5
	testq	%r12, %r12
	je	.LBB14_26
	.p2align	4
.LBB14_3:
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$-256, %r13
	addq	$16, %rbp
	cmpl	$65535, %r15d
	je	.LBB14_3
	notl	%r15d
	movq	%r13, (%rdi)
	movq	%rbp, 8(%rdi)
.LBB14_5:
	leal	-1(%r15), %eax
	rep		bsfl	%r15d, %ecx
	andl	%r15d, %eax
	movl	%eax, %r15d
	movw	%ax, 24(%rdi)
	shll	$4, %ecx
	movq	%r13, %rax
	subq	%rcx, %rax
	movq	-16(%rax), %r10
	movq	-8(%rax), %r9
	movq	(%rbx), %rax
	movq	(%rax), %rdi
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rax
	movq	(%rcx), %r11
	movq	(%rax), %rbx
	movq	8(%rax), %r14
	cmpq	%r14, %rbx
	je	.LBB14_6
	movq	16(%rax), %r8
	movq	(%r8), %rcx
	movq	136(%rcx), %rax
	jmp	.LBB14_9
	.p2align	4
.LBB14_11:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB14_6
.LBB14_9:
	movq	(%rbx), %rsi
	cmpq	%rax, %rsi
	jae	.LBB14_11
	movq	128(%rcx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.LBB14_11
	movq	%rsi, 8(%rsp)
	addq	$8, %rbx
	movl	$1, %ecx
	jmp	.LBB14_20
	.p2align	4
.LBB14_25:
	addq	$8, %rbx
.LBB14_20:
	cmpq	%r14, %rbx
	je	.LBB14_7
	movq	(%rbx), %rsi
	cmpq	%rax, %rsi
	jae	.LBB14_25
	cmpq	$0, (%rdx,%rsi,8)
	je	.LBB14_25
	movq	%rsi, 16(%rsp)
	movq	$2, 24(%rsp)
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB14_24
.LBB14_12:
	movq	(%r8), %rax
	movq	136(%rax), %rcx
	movq	%r12, 32(%rsp)
	jmp	.LBB14_13
	.p2align	4
.LBB14_15:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	movq	32(%rsp), %r12
	je	.LBB14_24
.LBB14_13:
	movq	(%rbx), %r12
	cmpq	%rcx, %r12
	jae	.LBB14_15
	movq	128(%rax), %rdx
	cmpq	$0, (%rdx,%r12,8)
	je	.LBB14_15
	movq	%r8, 72(%rsp)
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	$3, %rsi
	movq	8(%rsp), %rax
	leaq	8(%rsp), %rcx
	cmovbq	%rcx, %rax
	setb	%dl
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %r8
	cmovaeq	%r8, %rcx
	movl	$2, %r8d
	cmovbq	%r8, %rsi
	movq	16(%rsp,%rdx,8), %rdx
	cmpq	%rsi, %rdx
	je	.LBB14_17
.LBB14_18:
	addq	$8, %rbx
	movq	%r12, (%rax,%rdx,8)
	incq	(%rcx)
	cmpq	%r14, %rbx
	movq	32(%rsp), %r12
	movq	72(%rsp), %r8
	jne	.LBB14_12
	jmp	.LBB14_24
.LBB14_17:
	movq	%rdi, 64(%rsp)
	leaq	8(%rsp), %rdi
	movq	%r9, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r11, 40(%rsp)
	callq	smallvec::SmallVec<A>::reserve_one_unchecked
	movq	40(%rsp), %r11
	movq	48(%rsp), %r10
	movq	56(%rsp), %r9
	movq	64(%rsp), %rdi
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	leaq	16(%rsp), %rcx
	jmp	.LBB14_18
.LBB14_26:
	addq	$152, %rsp
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
.Lfunc_end14:
	.size	hashbrown::raw::RawIterRange<T>::fold_impl, .Lfunc_end14-hashbrown::raw::RawIterRange<T>::fold_impl
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI15_0:
	.zero	16,49
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
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %eax
	movl	%eax, 60(%rsp)
	testl	%eax, %eax
	je	.LBB15_125
	movabsq	$-390043071828001062, %r14
	movabsq	$7144670987322081947, %r12
	movl	20(%rdi), %eax
	movl	%eax, 44(%rsp)
	movl	24(%rdi), %ebx
	movq	%rdi, 184(%rsp)
	movq	(%rdi), %r13
	leaq	56(%r13), %r8
	leaq	1440(%r13), %rax
	movq	%r8, 248(%rsp)
	movq	%rax, 256(%rsp)
	movq	$0, 224(%rsp)
	movq	$8, 232(%rsp)
	movq	$0, 240(%rsp)
	leaq	608(%r13), %r11
	leaq	336(%r13), %r15
	movq	632(%r13), %rax
	movq	640(%r13), %rcx
	xorl	%edx, %edx
	movdqa	.LCPI15_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %rsi
	movq	%r13, 32(%rsp)
.LBB15_2:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %edi
	testl	%edi, %edi
	je	.LBB15_6
.LBB15_3:
	rep		bsfl	%edi, %r9d
	addq	%rsi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%r14, -24(%rax,%r9,8)
	jne	.LBB15_5
	cmpq	%r12, -16(%rax,%r9,8)
	je	.LBB15_8
.LBB15_5:
	leal	-1(%rdi), %r9d
	andw	%di, %r9w
	movl	%r9d, %edi
	jne	.LBB15_3
	.p2align	4
.LBB15_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB15_9
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB15_2
.LBB15_8:
	leaq	(%rax,%r9,8), %rax
	movq	-8(%rax), %rbp
	jmp	.LBB15_39
.LBB15_9:
	movq	$0, 200(%rsp)
	movq	$8, 208(%rsp)
	movq	$0, 216(%rsp)
	cmpq	$0, 104(%r13)
	movq	%r8, 24(%rsp)
	movq	%r11, 48(%rsp)
	je	.LBB15_17
	movq	80(%r13), %rax
	movq	88(%r13), %rcx
	xorl	%edx, %edx
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %rsi
.LBB15_11:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %edi
	testl	%edi, %edi
	je	.LBB15_15
.LBB15_12:
	rep		bsfl	%edi, %r9d
	addq	%rsi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%r14, -24(%rax,%r9,8)
	jne	.LBB15_14
	cmpq	%r12, -16(%rax,%r9,8)
	je	.LBB15_24
.LBB15_14:
	leal	-1(%rdi), %r9d
	andw	%di, %r9w
	movl	%r9d, %edi
	jne	.LBB15_12
.LBB15_15:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB15_17
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB15_11
.LBB15_17:
	movzbl	152(%r13), %eax
	movq	184(%r13), %rax
	movq	192(%r13), %rcx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %rdi
.LBB15_18:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB15_22
.LBB15_19:
	rep		bsfl	%r9d, %r10d
	addq	%rdi, %r10
	andq	%rcx, %r10
	movq	%r10, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	cmpq	%r14, -112(%rax,%rdx)
	jne	.LBB15_21
	cmpq	%r12, -104(%rax,%rdx)
	je	.LBB15_25
.LBB15_21:
	leal	-1(%r9), %edx
	andw	%r9w, %dx
	movl	%edx, %r9d
	jne	.LBB15_19
.LBB15_22:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB15_28
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB15_18
.LBB15_24:
	leaq	(%rax,%r9,8), %rax
	movq	-8(%rax), %rbp
	movl	$8, %esi
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB15_32
.LBB15_25:
	addq	%rax, %rdx
	imulq	$112, %r10, %rdi
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
	pmovmskb	%xmm0, %r9d
	movw	$31, %r10w
	bsrw	%cx, %r10w
	xorl	$15, %r10d
	orl	$65536, %r9d
	rep		bsfl	%r9d, %r9d
	addl	%r10d, %r9d
	movb	$-128, %cl
	cmpw	$15, %r9w
	ja	.LBB15_27
	incq	200(%r13)
	movb	$-1, %cl
.LBB15_27:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%r13)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB15_31
.LBB15_28:
	movq	1440(%r13), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%r13)
	movw	$257, 128(%rsp)
	movq	$1, 64(%rsp)
	movq	%r14, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
	leaq	64(%rsp), %rdx
	movq	%r8, %rdi
	movq	%rbp, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r13), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rsi
	leaq	224(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	232(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 240(%rsp)
	movq	$0, 272(%rsp)
	movq	$8, 280(%rsp)
	movq	$0, 288(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %xmm0
	movups	%xmm0, 296(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.37+16(%rip), %xmm1
	movups	%xmm1, 312(%rsp)
	movq	$0, 328(%rsp)
	movq	$8, 336(%rsp)
	movq	$0, 344(%rsp)
	movups	%xmm0, 352(%rsp)
	movups	%xmm1, 368(%rsp)
	movq	248(%rsp), %rdi
	leaq	272(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	240(%rsp), %rax
	testq	%rax, %rax
	je	.LBB15_30
	decq	%rax
	movq	%rax, 240(%rsp)
.LBB15_30:
	movq	248(%rsp), %rax
	movq	8(%rax), %r13
	leaq	(,%rbp,8), %r14
	addq	%rbp, %r14
	shlq	$5, %r14
	movups	368(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	352(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	336(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	272(%rsp), %xmm0
	movups	288(%rsp), %xmm1
	movups	304(%rsp), %xmm2
	movups	320(%rsp), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	(%r14,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	160(%rsp), %xmm0
	movups	%xmm0, 168(%r13,%r14)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 152(%r13,%r14)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 136(%r13,%r14)
	movdqa	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
	movdqu	%xmm3, 120(%r13,%r14)
	movdqu	%xmm2, 104(%r13,%r14)
	movdqu	%xmm1, 88(%r13,%r14)
	movdqu	%xmm0, 72(%r13,%r14)
	movq	32(%rsp), %r13
	movabsq	$-390043071828001062, %r14
	jmp	.LBB15_32
.LBB15_31:
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
	leaq	224(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB15_32:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rsi
	leaq	200(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	208(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 216(%rsp)
	movq	624(%r13), %rbp
	movq	248(%rsp), %r8
	movups	200(%rsp), %xmm0
	movaps	%xmm0, 272(%rsp)
	movq	$1, 288(%rsp)
	movq	%rbp, (%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rsi
	leaq	64(%rsp), %rdi
	leaq	272(%rsp), %r9
	movl	$23, %edx
	movq	%r15, %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	cmpq	608(%r13), %rbp
	jne	.LBB15_34
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rsi
	movq	48(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_34:
	movq	616(%r13), %rax
	imulq	$56, %rbp, %rcx
	movq	112(%rsp), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movups	64(%rsp), %xmm0
	movdqu	80(%rsp), %xmm1
	movdqu	96(%rsp), %xmm2
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%r13)
	movq	632(%r13), %rax
	movq	640(%r13), %rcx
	movq	%rcx, %rsi
	andq	%r12, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB15_127
	movq	24(%rsp), %r8
.LBB15_36:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB15_129
.LBB15_37:
	movq	648(%r13), %rdi
	testq	%rdi, %rdi
	sete	%r9b
	andb	$1, %sil
	testb	%r9b, %sil
	jne	.LBB15_131
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r13)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$49, (%rax,%rdx)
	movb	$49, 16(%rax,%rsi)
	incq	656(%r13)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r14, -24(%rax,%rcx,8)
	movq	%r12, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
.LBB15_39:
	imulq	$56, %rbp, %r12
	addq	616(%r13), %r12
	leaq	248(%r13), %rdx
	leaq	896(%r13), %r9
	movl	%ebx, (%rsp)
	movl	$1, 8(%rsp)
	leaq	64(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
	movl	68(%rsp), %r14d
	cmpl	%ebx, %r14d
	setne	%bpl
	andb	64(%rsp), %bpl
	cmpb	$1, %bpl
	jne	.LBB15_46
	movl	%r14d, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	256(%r13), %rcx
	movq	416(%r13), %rdx
	leaq	(%rcx,%rax), %rsi
	movq	%rsi, 24(%rsp)
	leaq	(%rbx,%rbx,4), %rsi
	shlq	$5, %rsi
	movq	%r13, %rdi
	leaq	(%rcx,%rsi), %r13
	movl	148(%rcx,%rsi), %esi
	movl	148(%rcx,%rax), %eax
	xorl	%r15d, %r15d
	cmpl	%eax, %esi
	leaq	(%rax,%rax,8), %rax
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 48(%rsp)
	leaq	(%rsi,%rsi,8), %rax
	leaq	(%rdx,%rax,8), %rax
	movl	$0, %ecx
	cmovneq	%rax, %rcx
	cmpb	$0, 72(%rsp)
	movq	%rcx, 192(%rsp)
	je	.LBB15_45
	movq	1408(%rdi), %rbx
	testq	%rbx, %rbx
	jne	.LBB15_43
	movq	1416(%rdi), %rbx
.LBB15_43:
	movq	(%rbx), %rax
	movq	16(%rbx), %r15
	subq	%r15, %rax
	cmpq	$11, %rax
	jbe	.LBB15_130
.LBB15_44:
	movq	8(%rbx), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r15)
	movl	%r14d, 8(%rax,%r15)
	addq	$12, %r15
	movq	%r15, 16(%rbx)
	xorl	%r15d, %r15d
.LBB15_45:
	movq	24(%rsp), %r14
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB15_47
	jmp	.LBB15_48
.LBB15_46:
	movb	$3, %r15b
	movq	224(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB15_48
.LBB15_47:
	movq	232(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB15_48:
	testb	%bpl, %bpl
	je	.LBB15_91
	movq	%r12, 64(%rsp)
	leaq	72(%rsp), %rbx
	movq	%r13, 72(%rsp)
	movq	%r14, 80(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 104(%rsp)
	movb	%r15b, 112(%rsp)
	movl	393(%rsp), %eax
	movl	396(%rsp), %ecx
	movl	%eax, 113(%rsp)
	movl	%ecx, 116(%rsp)
	movq	184(%rsp), %rax
	movq	8(%rax), %r15
	testb	$-128, 152(%r13)
	je	.LBB15_52
	movq	16(%r12), %rsi
	movq	%rsi, %rdi
	subq	40(%r12), %rdi
	jb	.LBB15_124
	movq	8(%r12), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%rbx, 288(%rsp)
	movb	$0, 200(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	272(%rsp), %r8
	leaq	224(%rsp), %r9
	movl	$2, %esi
	movq	32(%rsp), %rdi
	movq	%r15, %rdx
	movq	%r15, %rcx
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	64(%rsp), %r12
	movq	72(%rsp), %r13
.LBB15_52:
	movq	16(%r12), %rsi
	movq	40(%r12), %rax
	movq	%rsi, %rdi
	subq	%rax, %rdi
	jb	.LBB15_124
	je	.LBB15_65
	movl	152(%r13), %eax
	andl	$4, %eax
	je	.LBB15_65
	movq	%r15, %rbx
	movq	8(%r12), %r14
	leaq	(%r14,%rdi,8), %r15
	movzbl	112(%rsp), %ebp
	leaq	272(%rsp), %r12
.LBB15_56:
	movq	72(%rsp), %r13
	movq	136(%r13), %rcx
	jmp	.LBB15_58
	.p2align	4
.LBB15_57:
	addq	$8, %r14
	cmpq	%r15, %r14
	je	.LBB15_64
.LBB15_58:
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jae	.LBB15_57
	movq	128(%r13), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB15_57
	movq	32(%rsp), %rdi
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB15_62
	movq	%rbx, 272(%rsp)
	movq	%rax, 280(%rsp)
	movb	%bpl, 288(%rsp)
	movq	%r12, %rsi
	callq	*%rcx
.LBB15_62:
	addq	$8, %r14
	cmpq	%r15, %r14
	jne	.LBB15_56
	movq	72(%rsp), %r13
.LBB15_64:
	movq	%rbx, %r15
	leaq	72(%rsp), %rbx
.LBB15_65:
	testb	$1, 153(%r13)
	movq	64(%rsp), %rax
	je	.LBB15_68
	movq	16(%rax), %rsi
	movq	%rsi, %rdi
	subq	40(%rax), %rdi
	jb	.LBB15_124
	movq	8(%rax), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movq	%rbx, 288(%rsp)
	movb	$0, 200(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	272(%rsp), %r8
	leaq	224(%rsp), %r9
	movl	$3, %esi
	movq	32(%rsp), %rdi
	movq	%r15, %rdx
	movq	%r15, %rcx
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	64(%rsp), %rax
	movq	72(%rsp), %r13
.LBB15_68:
	movq	16(%rax), %rsi
	movq	40(%rax), %rcx
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	jb	.LBB15_124
	je	.LBB15_79
	movl	152(%r13), %ecx
	andl	$8, %ecx
	je	.LBB15_79
	movq	8(%rax), %rbx
	leaq	(%rbx,%rdi,8), %r14
	leaq	272(%rsp), %r12
.LBB15_72:
	movq	72(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB15_74
	.p2align	4
.LBB15_73:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB15_79
.LBB15_74:
	movq	(%rbx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB15_73
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB15_73
	movq	32(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	272(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB15_78
	movq	%r15, 272(%rsp)
	movq	%rcx, 280(%rsp)
	movb	$0, 288(%rsp)
	movq	%r12, %rsi
	callq	*%rax
.LBB15_78:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	.LBB15_72
.LBB15_79:
	movq	%r15, 24(%rsp)
	movq	%r15, %rdx
	shrq	$32, %rdx
	movq	64(%rsp), %rcx
	movq	88(%rsp), %r15
	leaq	336(%r15), %rax
	movq	%rax, 400(%rsp)
	movq	16(%rcx), %r12
	movq	40(%rcx), %rax
	movq	%r12, %rdi
	subq	%rax, %rdi
	jb	.LBB15_126
	movq	%rdx, 264(%rsp)
	jne	.LBB15_92
.LBB15_81:
	movl	$4294967295, %ebx
	movq	72(%rsp), %rdx
	movl	60(%rsp), %esi
	notl	%esi
	movq	80(%rdx), %rax
	movq	88(%rdx), %rdi
	decq	%rdi
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	%rdi, %r8
	shlq	$4, %r8
	movdqu	(%rax,%r8), %xmm0
	movdqu	%xmm0, (%rax,%rcx)
	movq	%rdi, 88(%rdx)
	cmpq	%rsi, %rdi
	je	.LBB15_84
	addq	%rcx, %rax
	movl	(%rax), %eax
	testq	%rax, %rax
	je	.LBB15_84
	xorq	%rbx, %rax
	movq	8(%r15), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	60(%rsp), %edx
	movl	%edx, (%rcx,%rax,8)
.LBB15_84:
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	movq	32(%rsp), %r13
	je	.LBB15_114
	movq	104(%rsp), %rcx
	leaq	272(%rsp), %rdi
	movl	44(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_drop_missing_unchecked@GOTPCREL(%rip)
	movq	80(%rsp), %r12
	movl	280(%rsp), %ebp
	movq	88(%r12), %r14
	cmpq	72(%r12), %r14
	jne	.LBB15_87
	leaq	72(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_87:
	movq	80(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movq	264(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%r14), %rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %eax
	movl	148(%r12), %ecx
	movl	272(%rsp), %esi
	testl	%esi, %esi
	je	.LBB15_121
	notl	%esi
	leaq	(%rsi,%rsi,2), %rdx
	cmpq	%rsi, 16(%r15)
	jbe	.LBB15_117
	movq	8(%r15), %rsi
	movl	16(%rsi,%rdx,8), %edi
	cmpl	276(%rsp), %edi
	jne	.LBB15_118
	leaq	(%rsi,%rdx,8), %r9
	movl	(%r9), %edi
	movl	8(%r9), %r8d
	movl	12(%r9), %r9d
	jmp	.LBB15_119
.LBB15_91:
	movq	184(%rsp), %rbx
	jmp	.LBB15_123
.LBB15_92:
	movq	8(%rcx), %r13
	leaq	824(%r15), %rcx
	movq	%rcx, 416(%rsp)
	leaq	848(%r15), %rcx
	movq	%rcx, 408(%rsp)
	shlq	$3, %r12
	shlq	$3, %rax
	subq	%rax, %r12
	xorl	%r14d, %r14d
	movq	%r12, 48(%rsp)
	movq	%r13, 192(%rsp)
	jmp	.LBB15_94
	.p2align	4
.LBB15_93:
	addq	$8, %r14
	cmpq	%r14, %r12
	je	.LBB15_81
.LBB15_94:
	movq	(%r13,%r14), %rbx
	movq	72(%rsp), %rax
	cmpq	136(%rax), %rbx
	jae	.LBB15_93
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rbx,8)
	je	.LBB15_93
	movq	888(%r15), %r13
	movq	%rbx, %rbp
	subq	%r13, %rbp
	jae	.LBB15_99
	movq	880(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB15_101
	notq	%rax
	leaq	(%rax,%rax,8), %r12
	jmp	.LBB15_107
.LBB15_99:
	movq	840(%r15), %r12
	movq	872(%r15), %rax
	incq	%rbp
	subq	%r13, %rax
	cmpq	%rax, %rbp
	ja	.LBB15_113
.LBB15_100:
	leaq	(,%r13,8), %rdi
	addq	880(%r15), %rdi
	leaq	(,%rbp,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%rbp, %r13
	movq	%r13, 888(%r15)
	cmpq	%r13, %rbx
	jb	.LBB15_102
	jmp	.LBB15_132
.LBB15_101:
	movq	840(%r15), %r12
	cmpq	%r13, %rbx
	jae	.LBB15_132
.LBB15_102:
	movq	%r12, %rax
	notq	%rax
	movq	880(%r15), %rcx
	movq	%rax, (%rcx,%rbx,8)
	movq	864(%r15), %r13
	cmpq	848(%r15), %r13
	jne	.LBB15_104
	movq	408(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_104:
	movq	856(%r15), %rax
	movq	%rbx, (%rax,%r13,8)
	incq	%r13
	movq	%r13, 864(%r15)
	movq	840(%r15), %r13
	cmpq	824(%r15), %r13
	jne	.LBB15_106
	movq	416(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_106:
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
.LBB15_107:
	shlq	$3, %r12
	addq	832(%r15), %r12
	movq	48(%r12), %r13
	movq	64(%r12), %rbp
	cmpq	32(%r12), %r13
	jne	.LBB15_109
	leaq	32(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_109:
	movq	40(%r12), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%rbp, 8(%rax,%rcx)
	incq	%r13
	movq	%r13, 48(%r12)
	incq	64(%r12)
	movq	72(%rsp), %rax
	cmpq	136(%rax), %rbx
	movq	48(%rsp), %r12
	movq	192(%rsp), %r13
	jae	.LBB15_93
	movq	128(%rax), %rcx
	movq	(%rcx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB15_93
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB15_93
	movq	400(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	jmp	.LBB15_93
.LBB15_113:
	leaq	872(%r15), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	888(%r15), %r13
	jmp	.LBB15_100
.LBB15_114:
	movq	80(%rsp), %r12
	movq	88(%r12), %r14
	cmpq	72(%r12), %r14
	jne	.LBB15_116
	leaq	72(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_116:
	movq	80(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movq	264(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	44(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%r14, %rax
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %eax
	movl	148(%r12), %ecx
	jmp	.LBB15_122
.LBB15_117:
	movq	8(%r15), %rsi
.LBB15_118:
	xorl	%edi, %edi
.LBB15_119:
	movl	%edi, (%rsi,%rdx,8)
	movl	44(%rsp), %r10d
	movl	%r10d, 4(%rsi,%rdx,8)
	movl	%r8d, 8(%rsi,%rdx,8)
	movl	%r9d, 12(%rsi,%rdx,8)
	movl	%r8d, %esi
	movq	256(%r15), %rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$5, %r8
	notl	%edi
	movq	88(%rdx,%r8), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB15_133
	addq	%r8, %rdx
	movq	80(%rdx), %rdx
	shlq	$4, %rdi
	movl	%r10d, 8(%rdx,%rdi)
.LBB15_121:
	movq	24(%rsp), %rsi
.LBB15_122:
	notl	%r14d
	movq	8(%r15), %rdx
	movl	%esi, %esi
	xorq	%rbx, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%r14d, (%rdx,%rsi,8)
	movl	%ebp, 4(%rdx,%rsi,8)
	movl	%eax, 8(%rdx,%rsi,8)
	movl	%ecx, 12(%rdx,%rsi,8)
	movq	184(%rsp), %rbx
	movl	%r14d, 16(%rbx)
	movl	%ebp, 20(%rbx)
	movl	%eax, 24(%rbx)
	movl	%ecx, 28(%rbx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
.LBB15_123:
	movq	%rbx, 64(%rsp)
	leaq	64(%rsp), %rax
	#APP
	#NO_APP
	addq	$424, %rsp
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
.LBB15_124:
	.cfi_def_cfa_offset 480
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB15_125:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB15_126:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	movq	%r12, %rsi
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB15_127:
	movl	$16, %edi
	movq	24(%rsp), %r8
.LBB15_128:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB15_36
	jmp	.LBB15_128
.LBB15_129:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB15_37
.LBB15_130:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	jmp	.LBB15_44
.LBB15_131:
	leaq	632(%r13), %rdi
	leaq	664(%r13), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	632(%r13), %r14
	movq	32(%rsp), %rax
	movq	640(%rax), %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movq	24(%rsp), %r8
	movzbl	(%r14,%rax), %ecx
	andl	$1, %ecx
	movq	32(%rsp), %rdx
	subq	%rcx, 648(%rdx)
	leaq	-16(%rax), %rcx
	andq	%r13, %rcx
	movq	32(%rsp), %r13
	movb	$49, (%r14,%rax)
	movb	$49, 16(%r14,%rcx)
	incq	656(%r13)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-390043071828001062, %rcx
	movq	%rcx, -24(%r14,%rax,8)
	movq	%r12, -16(%r14,%rax,8)
	movq	%rbp, -8(%r14,%rax,8)
	jmp	.LBB15_39
.LBB15_132:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_133:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end15:
	.size	entity_remove, .Lfunc_end15-entity_remove
	.cfi_endproc

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smallvec-1.15.1/src/lib.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 92

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.asciz	"\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.ascii	"called `Result::unwrap()` on an `Err` value"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 43

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.ascii	"capacity overflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 17

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
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	core::fmt::num::<impl core::fmt::Debug for usize>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<&T as core::fmt::Debug>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.ascii	"Layout"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 6

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.rodata.cst4,"aM",@progbits,4
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.ascii	"size"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 4

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.ascii	"align"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 5

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"CapacityOverflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<&T as core::fmt::Debug>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.rodata.cst8,"aM",@progbits,8
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.ascii	"AllocErr"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 8

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.ascii	"layout"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 6

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"g\000\000\000\000\000\000\000(\005\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.15
	.asciz	"g\000\000\000\000\000\000\000\000\t\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"j\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.ascii	"entity_remove_sparse::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 23

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"b\000\000\000\000\000\000\000\265\001\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"b\000\000\000\000\000\000\000\255\001\000\000B\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.21
	.asciz	"b\000\000\000\000\000\000\000\257\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.25
	.asciz	"`\000\000\000\000\000\000\000T\002\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.25
	.asciz	"`\000\000\000\000\000\000\000D\002\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"i\000\000\000\000\000\000\000\f\002\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"i\000\000\000\000\000\000\000\r\002\000\000\030\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"i\000\000\000\000\000\000\000N\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.32
	.asciz	"i\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/0a19ebc/crates/bevy_ecs/src/event/collections.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.34
	.asciz	"h\000\000\000\000\000\000\000\214\000\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.36
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000V\001\000\000.\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000E\001\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000\322\004\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.rodata.cst32,"aM",@progbits,32
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.ascii	"assertion failed: new_cap >= len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.42,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000\235\004\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

	.file	"entity_remove_sparse.57f7690745ef2c0f-cgu.0"
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %r10
	leaq	8(%rsp), %r11
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rbx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %r14
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.11(%rip), %rcx
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
	.zero	16,78
	.section	.text.core::ops::function::FnOnce::call_once,"ax",@progbits
	.p2align	4
	.type	core::ops::function::FnOnce::call_once,@function
core::ops::function::FnOnce::call_once:
	.cfi_startproc
	addq	$4, (%rdx)
	testq	%rsi, %rsi
	je	.LBB3_32
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
	movabsq	$-7168260330011623011, %rax
	movl	(%rdi), %ecx
	movl	%ecx, 20(%rsp)
	leaq	56(%rsi), %rdi
	leaq	1440(%rsi), %rcx
	movq	%rdi, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	cmpq	$0, 104(%rsi)
	movabsq	$-3736638910109704955, %rcx
	je	.LBB3_9
	movq	80(%rbp), %rdx
	movq	88(%rbp), %rsi
	leaq	-24(%rdx), %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI3_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-7168260330011623011, %r10
	movq	%rax, %r11
.LBB3_3:
	andq	%rsi, %r11
	movdqu	(%rdx,%r11), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	testl	%ebx, %ebx
	je	.LBB3_6
.LBB3_4:
	rep		bsfl	%ebx, %r14d
	addq	%r11, %r14
	andq	%rsi, %r14
	negq	%r14
	leaq	(%r14,%r14,2), %r14
	movq	8(%r8,%r14,8), %r15
	xorq	%r10, %r15
	movq	(%r8,%r14,8), %r12
	xorq	%rcx, %r12
	orq	%r15, %r12
	je	.LBB3_8
	movq	%rbp, %r14
	leal	-1(%rbx), %ebp
	andw	%bx, %bp
	movl	%ebp, %ebx
	movq	%r14, %rbp
	jne	.LBB3_4
.LBB3_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebx
	testl	%ebx, %ebx
	jne	.LBB3_9
	addq	%r9, %r11
	addq	$16, %r11
	addq	$16, %r9
	jmp	.LBB3_3
.LBB3_9:
	movzbl	152(%rbp), %edx
	movq	184(%rbp), %rdx
	movq	192(%rbp), %rsi
	leaq	-112(%rdx), %r9
	xorl	%r10d, %r10d
	movdqa	.LCPI3_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-7168260330011623011, %r11
.LBB3_10:
	andq	%rsi, %rax
	movdqu	(%rdx,%rax), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	testl	%ebx, %ebx
	je	.LBB3_13
.LBB3_11:
	rep		bsfl	%ebx, %r14d
	addq	%rax, %r14
	andq	%rsi, %r14
	movq	%r14, %r8
	negq	%r8
	imulq	$112, %r8, %r8
	movq	8(%r9,%r8), %r15
	xorq	%r11, %r15
	movq	(%r9,%r8), %r12
	xorq	%rcx, %r12
	orq	%r15, %r12
	je	.LBB3_15
	leal	-1(%rbx), %r8d
	andw	%bx, %r8w
	movl	%r8d, %ebx
	jne	.LBB3_11
.LBB3_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB3_19
	addq	%r10, %rax
	addq	$16, %rax
	addq	$16, %r10
	jmp	.LBB3_10
.LBB3_8:
	movq	-8(%rdx,%r14,8), %rcx
	movl	$8, %esi
	xorl	%edx, %edx
	movq	%rcx, 8(%rsp)
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_23
	jmp	.LBB3_24
.LBB3_15:
	addq	%rdx, %r8
	imulq	$112, %r14, %rcx
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
	ja	.LBB3_17
	incq	200(%rbp)
	movb	$-1, %sil
.LBB3_17:
	movb	%sil, (%rdx,%rax)
	movb	%sil, 16(%rdx,%rcx)
	decq	208(%rbp)
	movq	-96(%r8), %rax
	cmpq	$2, %rax
	jne	.LBB3_18
.LBB3_19:
	movq	1440(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, 1440(%rbp)
	movw	$256, 128(%rsp)
	movq	$1, 64(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.54(%rip), %xmm0
	movups	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.54(%rip), %r15
	movq	$1, 104(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
	leaq	64(%rsp), %rdx
	movq	%rbx, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%rbp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.56(%rip), %rsi
	leaq	24(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	32(%rsp), %rax
	movq	%rbx, (%rax)
	movq	$1, 40(%rsp)
	movq	$0, 184(%rsp)
	movq	$8, 192(%rsp)
	movq	$0, 200(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.60(%rip), %xmm0
	movups	%xmm0, 208(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.60+16(%rip), %xmm1
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
	je	.LBB3_21
	decq	%rax
	movq	%rax, 40(%rsp)
.LBB3_21:
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
	je	.LBB3_24
.LBB3_23:
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB3_24:
	movb	$0, 184(%rsp)
	incl	1460(%rbp)
	movq	%rbp, %r13
	leaq	896(%rbp), %rdi
	movq	8(%rsp), %rsi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB3_31
	movq	(%rax), %rbp
	movq	24(%rax), %rbx
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	leaq	16(%rbp), %r14
	leaq	96(%rsp), %r15
	jmp	.LBB3_26
	.p2align	4
.LBB3_30:
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
.LBB3_26:
	testw	%ax, %ax
	jne	.LBB3_30
	testq	%rbx, %rbx
	je	.LBB3_31
	.p2align	4
.LBB3_28:
	movdqa	(%r14), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$-256, %rbp
	addq	$16, %r14
	cmpl	$65535, %eax
	je	.LBB3_28
	notl	%eax
	jmp	.LBB3_30
.LBB3_31:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rsi
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
.LBB3_32:
	retq
.LBB3_18:
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	-8(%r8), %rcx
	movq	%rcx, 152(%rsp)
	movups	-24(%r8), %xmm0
	movups	%xmm0, 136(%rsp)
	movdqu	-88(%r8), %xmm0
	movdqu	-72(%r8), %xmm1
	movdqu	-56(%r8), %xmm2
	movdqu	-40(%r8), %xmm3
	movdqu	%xmm3, 120(%rsp)
	movdqu	%xmm2, 104(%rsp)
	movdqu	%xmm1, 88(%rsp)
	movdqu	%xmm0, 72(%rsp)
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_23
	jmp	.LBB3_24
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
	jb	.LBB6_1
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
	je	.LBB6_3
.LBB6_1:
	xorl	%edi, %edi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB6_3:
	testq	%rdi, %rdi
	jne	.LBB6_5
	xorl	%edx, %edx
	jmp	.LBB6_6
.LBB6_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %rdi
	movq	%rdx, 32(%rsp)
	movq	%rdi, 48(%rsp)
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
	je	.LBB6_7
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
.LBB6_7:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rcx
	movq	%rcx, (%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rsi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rcx
	leaq	16(%rsp), %r9
	movl	$8, %edx
	movl	$6, %r8d
	movq	%rax, %rdi
	callq	*core::fmt::Formatter::debug_struct_field1_finish@GOTPCREL(%rip)
	addq	$24, %rsp
	retq
.LBB7_2:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rsi
	movl	$16, %edx
	movq	%rax, %rdi
	jmpq	*core::fmt::Formatter::write_str@GOTPCREL(%rip)
.Lfunc_end7:
	.size	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt, .Lfunc_end7-<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt

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
	pshufd	$68, %xmm0, %xmm0
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
	pcmpeqd	%xmm2, %xmm2
	pcmpeqb	%xmm2, %xmm1
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
	pshufd	$68, %xmm0, %xmm0
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
	pcmpeqd	%xmm2, %xmm2
	pcmpeqb	%xmm2, %xmm1
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
	pshufd	$68, %xmm0, %xmm0
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
	movq	16(%rdi), %rax
	cmpq	$3, %rax
	jb	.LBB10_2
	movq	8(%rdi), %rax
.LBB10_2:
	cmpq	$-1, %rax
	je	.LBB10_8
	bsrq	%rax, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	testq	%rax, %rax
	cmoveq	%rax, %rsi
	cmpq	$-1, %rsi
	je	.LBB10_8
	incq	%rsi
	callq	smallvec::SmallVec<A>::try_grow
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_5
	popq	%rax
	retq
.LBB10_8:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.63(%rip), %rdx
	movl	$17, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
.LBB10_5:
	testq	%rax, %rax
	jne	.LBB10_9
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.62(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_9:
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.64(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.65(%rip), %rdx
	movl	$32, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB11_21:
	movq	$0, 24(%rsp)
	movq	%rbx, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rcx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.61(%rip), %r8
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	8(%rsi), %r14
	cmpq	$0, 16(%rdi)
	je	.LBB12_1
.LBB12_2:
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
	xorl	%r15d, %r15d
	pcmpeqd	%xmm1, %xmm1
	xorl	%ecx, %ecx
.LBB12_3:
	andq	%r8, %r14
	movdqu	(%rax,%r14), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r13d
	testl	%r13d, %r13d
	je	.LBB12_6
.LBB12_4:
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
	je	.LBB12_16
	leal	-1(%r13), %r11d
	andw	%r13w, %r11w
	movl	%r11d, %r13d
	movq	%rbx, %r15
	movq	%r12, %r11
	jne	.LBB12_4
	.p2align	4
.LBB12_6:
	cmpq	$1, %rcx
	je	.LBB12_10
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB12_8
	rep		bsfl	%r9d, %r9d
	addq	%r14, %r9
	andq	%r8, %r9
.LBB12_10:
	movq	%r11, %rbx
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB12_13
	movl	$1, %ecx
	movq	%rbx, %r11
	jmp	.LBB12_12
.LBB12_8:
	xorl	%ecx, %ecx
.LBB12_12:
	addq	%r15, %r14
	addq	$16, %r14
	addq	$16, %r15
	jmp	.LBB12_3
.LBB12_16:
	movq	8(%rsp), %rcx
	movq	%rcx, -8(%rax,%rbp,8)
	jmp	.LBB12_17
.LBB12_13:
	movzbl	(%rax,%r9), %r10d
	testb	%r10b, %r10b
	jns	.LBB12_14
.LBB12_15:
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
.LBB12_17:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_1:
	leaq	32(%rdi), %rdx
	movl	$1, %esi
	movq	%rdi, %rbx
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%rbx, %rdi
	jmp	.LBB12_2
.LBB12_14:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %r9d
	movzbl	(%rax,%r9), %r10d
	jmp	.LBB12_15
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
	.zero	16,97
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
	movl	16(%rdi), %eax
	testl	%eax, %eax
	je	.LBB15_164
	movl	%eax, 188(%rsp)
	movabsq	$-4367749331100584418, %r13
	movl	20(%rdi), %eax
	movl	%eax, 36(%rsp)
	movl	24(%rdi), %r15d
	movq	%rdi, 168(%rsp)
	movq	(%rdi), %rbx
	leaq	56(%rbx), %r8
	leaq	1440(%rbx), %rax
	movq	%r8, 240(%rsp)
	movq	%rax, 248(%rsp)
	movq	$0, 216(%rsp)
	movq	$8, 224(%rsp)
	movq	$0, 232(%rsp)
	leaq	608(%rbx), %r14
	leaq	336(%rbx), %r12
	movq	632(%rbx), %rax
	movq	640(%rbx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI15_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$8999555677310627675, %rbp
	movq	%r13, %rdi
	movq	%rbx, 16(%rsp)
.LBB15_2:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB15_5
.LBB15_3:
	rep		bsfl	%r9d, %r10d
	addq	%rdi, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	8(%rdx,%r10,8), %r11
	xorq	%r13, %r11
	movq	(%rdx,%r10,8), %rbx
	xorq	%rbp, %rbx
	orq	%r11, %rbx
	je	.LBB15_40
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movq	16(%rsp), %rbx
	jne	.LBB15_3
	.p2align	4
.LBB15_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB15_7
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB15_2
.LBB15_40:
	movq	-8(%rax,%r10,8), %rbp
.LBB15_41:
	movq	16(%rsp), %rbx
	jmp	.LBB15_42
.LBB15_7:
	movq	$0, 192(%rsp)
	movq	$8, 200(%rsp)
	movq	$0, 208(%rsp)
	cmpq	$0, 104(%rbx)
	movq	%r14, 24(%rsp)
	je	.LBB15_15
	movq	80(%rbx), %rax
	movq	88(%rbx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-4367749331100584418, %rdi
	movq	%r13, %r9
.LBB15_9:
	andq	%rcx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB15_12
.LBB15_10:
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rcx, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r11
	movq	8(%rdx,%r11,8), %rbx
	xorq	%rdi, %rbx
	movq	(%rdx,%r11,8), %r14
	xorq	%rbp, %r14
	orq	%rbx, %r14
	je	.LBB15_14
	leal	-1(%r10), %r11d
	andw	%r10w, %r11w
	movl	%r11d, %r10d
	movq	16(%rsp), %rbx
	jne	.LBB15_10
.LBB15_12:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB15_15
	addq	%rsi, %r9
	addq	$16, %r9
	addq	$16, %rsi
	jmp	.LBB15_9
.LBB15_15:
	movq	%r12, 40(%rsp)
	movzbl	152(%rbx), %eax
	movq	184(%rbx), %rax
	movq	192(%rbx), %rcx
	leaq	-112(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-4367749331100584418, %r9
	movq	%r13, %r10
.LBB15_16:
	andq	%rcx, %r10
	movdqu	(%rax,%r10), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB15_19
.LBB15_17:
	movq	%r13, %r12
	rep		bsfl	%r11d, %ebx
	addq	%r10, %rbx
	andq	%rcx, %rbx
	movq	%rbx, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	movq	8(%rsi,%rdx), %r14
	xorq	%r9, %r14
	movq	(%rsi,%rdx), %r13
	xorq	%rbp, %r13
	orq	%r14, %r13
	je	.LBB15_21
	leal	-1(%r11), %edx
	andw	%r11w, %dx
	movl	%edx, %r11d
	movq	16(%rsp), %rbx
	movq	%r12, %r13
	jne	.LBB15_17
.LBB15_19:
	movq	%r13, %r12
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB15_25
	addq	%rdi, %r10
	addq	$16, %r10
	addq	$16, %rdi
	movq	%r12, %r13
	movabsq	$8999555677310627675, %rbp
	jmp	.LBB15_16
.LBB15_14:
	movq	-8(%rax,%r11,8), %rbp
	movl	$8, %esi
	movq	%r8, %r14
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	movq	16(%rsp), %rbx
	jmp	.LBB15_29
.LBB15_21:
	addq	%rax, %rdx
	imulq	$112, %rbx, %rdi
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
	movq	16(%rsp), %rbx
	ja	.LBB15_23
	incq	200(%rbx)
	movb	$-1, %cl
.LBB15_23:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	208(%rbx)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB15_24
.LBB15_25:
	movq	1440(%rbx), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%rbx)
	movw	$257, 112(%rsp)
	movq	$1, 48(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %xmm0
	movups	%xmm0, 56(%rsp)
	movq	%rbx, %r13
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rbx
	movq	$4, 88(%rsp)
	movq	$4, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$1, 114(%rsp)
	movq	$0, 72(%rsp)
	leaq	48(%rsp), %rdx
	movq	%r8, %r14
	movq	%r8, %rdi
	movq	%rbp, %rsi
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.56(%rip), %rsi
	leaq	216(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	224(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 232(%rsp)
	movq	$0, 256(%rsp)
	movq	$8, 264(%rsp)
	movq	$0, 272(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.60(%rip), %xmm0
	movups	%xmm0, 280(%rsp)
	movups	.Lanon.ddd9cd1641521d33379e20f985469fcb.60+16(%rip), %xmm1
	movups	%xmm1, 296(%rsp)
	movq	$0, 312(%rsp)
	movq	$8, 320(%rsp)
	movq	$0, 328(%rsp)
	movups	%xmm0, 336(%rsp)
	movups	%xmm1, 352(%rsp)
	movq	240(%rsp), %rdi
	leaq	256(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	232(%rsp), %rax
	testq	%rax, %rax
	je	.LBB15_27
	decq	%rax
	movq	%rax, 232(%rsp)
.LBB15_27:
	movq	240(%rsp), %rax
	movq	8(%rax), %rbx
	leaq	(,%rbp,8), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
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
	leaq	(%rbx,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 168(%rbx,%r13)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 152(%rbx,%r13)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 136(%rbx,%r13)
	movdqa	48(%rsp), %xmm0
	movdqa	64(%rsp), %xmm1
	movdqa	80(%rsp), %xmm2
	movdqa	96(%rsp), %xmm3
	movdqu	%xmm3, 120(%rbx,%r13)
	movdqu	%xmm2, 104(%rbx,%r13)
	movdqu	%xmm1, 88(%rbx,%r13)
	movdqu	%xmm0, 72(%rbx,%r13)
	movq	16(%rsp), %rbx
	jmp	.LBB15_28
.LBB15_24:
	movq	%r8, %r14
	movq	-8(%rdx), %rcx
	movq	%rcx, 136(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 120(%rsp)
	movdqu	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 104(%rsp)
	movdqu	%xmm2, 88(%rsp)
	movdqu	%xmm1, 72(%rsp)
	movdqu	%xmm0, 56(%rsp)
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rdi
	leaq	216(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB15_28:
	movq	%r12, %r13
	movq	40(%rsp), %r12
.LBB15_29:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rsi
	leaq	192(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	200(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 208(%rsp)
	movq	624(%rbx), %rbp
	movq	240(%rsp), %r8
	movups	192(%rsp), %xmm0
	movaps	%xmm0, 256(%rsp)
	movq	$1, 272(%rsp)
	movq	%rbp, (%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rsi
	leaq	48(%rsp), %rdi
	leaq	256(%rsp), %r9
	movl	$23, %edx
	movq	%r12, %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	cmpq	608(%rbx), %rbp
	jne	.LBB15_31
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rsi
	movq	24(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_31:
	movq	616(%rbx), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	movq	80(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	48(%rsp), %xmm0
	movdqu	64(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%rbx)
	movq	632(%rbx), %rax
	movq	640(%rbx), %rcx
	movq	%rcx, %rsi
	andq	%r13, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB15_33
	movq	%r14, %r8
.LBB15_35:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB15_36
.LBB15_37:
	movq	648(%rbx), %rdi
	testq	%rdi, %rdi
	sete	%r9b
	andb	$1, %sil
	testb	%r9b, %sil
	jne	.LBB15_39
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$97, (%rax,%rdx)
	movb	$97, 16(%rax,%rsi)
	incq	656(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$8999555677310627675, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r13, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
.LBB15_42:
	leaq	(,%rbp,4), %r13
	addq	%rbp, %r13
	shlq	$3, %r13
	addq	616(%rbx), %r13
	leaq	248(%rbx), %rdx
	leaq	896(%rbx), %r9
	movl	%r15d, (%rsp)
	movl	$1, 8(%rsp)
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
	movl	52(%rsp), %r12d
	cmpl	%r15d, %r12d
	setne	%bpl
	andb	48(%rsp), %bpl
	cmpb	$1, %bpl
	jne	.LBB15_43
	movl	%r12d, %esi
	movzbl	56(%rsp), %eax
	movq	256(%rbx), %rcx
	movq	264(%rbx), %rdx
	cmpl	%r12d, %r15d
	jbe	.LBB15_45
	cmpq	%r15, %rdx
	jb	.LBB15_50
	jne	.LBB15_54
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.52(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_43:
	movb	$3, %r15b
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	movq	168(%rsp), %r12
	jne	.LBB15_74
	jmp	.LBB15_75
.LBB15_45:
	cmpq	%rsi, %rdx
	jb	.LBB15_160
	cmpl	%r15d, %r12d
	jbe	.LBB15_161
	cmpq	%rsi, %rdx
	je	.LBB15_48
.LBB15_54:
	leaq	(%r15,%r15,4), %r14
	shlq	$5, %r14
	leaq	(%rsi,%rsi,4), %r9
	shlq	$5, %r9
	movl	148(%rcx,%r14), %edi
	movl	148(%rcx,%r9), %esi
	cmpl	%esi, %edi
	jne	.LBB15_56
	xorl	%edx, %edx
	jmp	.LBB15_66
.LBB15_56:
	movq	416(%rbx), %rdx
	movq	424(%rbx), %r8
	cmpl	%esi, %edi
	jbe	.LBB15_57
	cmpq	%rdi, %r8
	jb	.LBB15_61
	jne	.LBB15_65
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_57:
	cmpq	%rsi, %r8
	jb	.LBB15_162
	cmpl	%edi, %esi
	jbe	.LBB15_163
	cmpq	%rsi, %r8
	je	.LBB15_60
.LBB15_65:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rdx,%rdi,8), %rdi
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rdx,%rsi,8), %rsi
	movq	%rdi, %rdx
.LBB15_66:
	addq	%rcx, %r14
	addq	%rcx, %r9
	testb	%al, %al
	movq	%r9, 24(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rsi, 176(%rsp)
	je	.LBB15_67
	movq	%rbx, %rax
	movq	1408(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB15_70
	movq	1416(%rax), %rbx
.LBB15_70:
	movq	(%rbx), %rax
	movq	16(%rbx), %r15
	subq	%r15, %rax
	cmpq	$11, %rax
	jbe	.LBB15_71
.LBB15_72:
	movq	8(%rbx), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r15)
	movl	%r12d, 8(%rax,%r15)
	addq	$12, %r15
	movq	%r15, 16(%rbx)
	xorl	%r15d, %r15d
	movq	16(%rsp), %rbx
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	movq	168(%rsp), %r12
	jne	.LBB15_74
	jmp	.LBB15_75
.LBB15_67:
	xorl	%r15d, %r15d
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	movq	168(%rsp), %r12
	je	.LBB15_75
.LBB15_74:
	movq	224(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB15_75:
	testb	%bpl, %bpl
	je	.LBB15_132
	movq	%r13, 48(%rsp)
	movq	%rbx, %rax
	leaq	56(%rsp), %rbx
	movq	%r14, 56(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 88(%rsp)
	movb	%r15b, 96(%rsp)
	movq	8(%r12), %r15
	testb	$-128, 152(%r14)
	je	.LBB15_79
	movq	8(%r13), %rsi
	movq	%rsi, %rdi
	subq	24(%r13), %rdi
	jb	.LBB15_165
	movq	(%r13), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rbx, 272(%rsp)
	movb	$0, 192(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	256(%rsp), %r8
	leaq	216(%rsp), %r9
	movl	$2, %esi
	movq	16(%rsp), %rdi
	movq	%r15, %rdx
	movq	%r15, %rcx
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	48(%rsp), %r13
.LBB15_79:
	movq	8(%r13), %rsi
	movq	24(%r13), %rax
	movq	%rsi, %rdi
	subq	%rax, %rdi
	jb	.LBB15_165
	movq	56(%rsp), %rax
	je	.LBB15_92
	movl	152(%rax), %ecx
	andl	$4, %ecx
	je	.LBB15_92
	movq	%r15, %r12
	movq	(%r13), %r14
	leaq	(%r14,%rdi,8), %r15
	movzbl	96(%rsp), %ebp
	leaq	256(%rsp), %r13
.LBB15_83:
	movq	56(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB15_84
	.p2align	4
.LBB15_86:
	addq	$8, %r14
	cmpq	%r15, %r14
	je	.LBB15_91
.LBB15_84:
	movq	(%r14), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB15_86
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB15_86
	movq	16(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	264(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB15_89
	movq	%r12, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movb	%bpl, 272(%rsp)
	movq	%r13, %rsi
	callq	*%rax
.LBB15_89:
	addq	$8, %r14
	cmpq	%r15, %r14
	jne	.LBB15_83
	movq	56(%rsp), %rax
.LBB15_91:
	movq	%r12, %r15
.LBB15_92:
	testb	$1, 153(%rax)
	movq	48(%rsp), %rax
	je	.LBB15_95
	movq	8(%rax), %rsi
	movq	%rsi, %rdi
	subq	24(%rax), %rdi
	jb	.LBB15_165
	movq	(%rax), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rbx, 272(%rsp)
	movb	$0, 192(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	256(%rsp), %r8
	leaq	216(%rsp), %r9
	movl	$3, %esi
	movq	16(%rsp), %rdi
	movq	%r15, %rdx
	movq	%r15, %rcx
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	48(%rsp), %rax
.LBB15_95:
	movq	8(%rax), %rsi
	movq	24(%rax), %rcx
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	jb	.LBB15_165
	je	.LBB15_106
	movq	56(%rsp), %rcx
	movl	152(%rcx), %ecx
	andl	$8, %ecx
	je	.LBB15_106
	movq	(%rax), %rbx
	leaq	(%rbx,%rdi,8), %r14
	leaq	256(%rsp), %r12
.LBB15_99:
	movq	56(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB15_100
	.p2align	4
.LBB15_102:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	je	.LBB15_106
.LBB15_100:
	movq	(%rbx), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB15_102
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB15_102
	movq	16(%rsp), %rdi
	movq	64(%rdi), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	272(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB15_105
	movq	%r15, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movb	$0, 272(%rsp)
	movq	%r12, %rsi
	callq	*%rax
.LBB15_105:
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jne	.LBB15_99
.LBB15_106:
	movq	48(%rsp), %rax
	movq	8(%rax), %rsi
	movq	24(%rax), %rcx
	movq	%rsi, %r12
	subq	%rcx, %r12
	jb	.LBB15_166
	movq	%r15, 24(%rsp)
	movq	72(%rsp), %r15
	jne	.LBB15_108
.LBB15_112:
	movq	56(%rsp), %rcx
	movl	188(%rsp), %r9d
	movl	%r9d, %edi
	notl	%edi
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB15_167
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
	je	.LBB15_120
	jbe	.LBB15_168
	addq	%rdx, %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB15_120
	notl	%ecx
	cmpq	%rcx, 16(%r15)
	jbe	.LBB15_169
	movl	4(%rax), %edx
	leaq	(%rcx,%rcx,2), %rax
	shlq	$3, %rax
	addq	8(%r15), %rax
	cmpl	%edx, 16(%rax)
	jne	.LBB15_169
	cmpl	$0, (%rax)
	je	.LBB15_169
	movl	%r9d, (%rax)
.LBB15_120:
	movq	24(%rsp), %r14
	shrq	$32, %r14
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB15_133
	movq	88(%rsp), %rcx
	leaq	256(%rsp), %rdi
	movl	36(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_drop_missing_unchecked@GOTPCREL(%rip)
	movq	64(%rsp), %r12
	movl	264(%rsp), %ebp
	movq	88(%r12), %rbx
	cmpq	72(%r12), %rbx
	jne	.LBB15_123
	leaq	72(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_123:
	movq	80(%r12), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movl	%r14d, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%rbx), %rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %ecx
	movl	148(%r12), %edx
	movl	256(%rsp), %eax
	testl	%eax, %eax
	movq	168(%rsp), %r12
	je	.LBB15_130
	notl	%eax
	cmpq	%rax, 16(%r15)
	jbe	.LBB15_136
	leaq	(%rax,%rax,2), %rsi
	shlq	$3, %rsi
	addq	8(%r15), %rsi
	movl	16(%rsi), %eax
	cmpl	260(%rsp), %eax
	jne	.LBB15_136
	movl	(%rsi), %edi
	testl	%edi, %edi
	je	.LBB15_136
	movl	8(%rsi), %eax
	movl	36(%rsp), %r8d
	movl	%r8d, 4(%rsi)
	movq	264(%r15), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB15_137
	movq	256(%r15), %r8
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	88(%r8,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB15_138
	addq	%r8, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
	shlq	$4, %rdi
	movl	36(%rsp), %esi
	movl	%esi, 8(%rax,%rdi)
.LBB15_130:
	movq	24(%rsp), %rsi
	jmp	.LBB15_131
.LBB15_108:
	leaq	336(%r15), %rcx
	movq	%rcx, 368(%rsp)
	movq	(%rax), %r13
	shlq	$3, %r12
	leaq	824(%r15), %rax
	movq	%rax, 384(%rsp)
	leaq	848(%r15), %rax
	movq	%rax, 376(%rsp)
	xorl	%r14d, %r14d
	movq	%r12, 40(%rsp)
	movq	%r13, 176(%rsp)
	jmp	.LBB15_109
	.p2align	4
.LBB15_111:
	addq	$8, %r14
	cmpq	%r14, %r12
	je	.LBB15_112
.LBB15_109:
	movq	(%r13,%r14), %rbx
	movq	56(%rsp), %rax
	cmpq	136(%rax), %rbx
	jae	.LBB15_111
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rbx,8)
	je	.LBB15_111
	movq	888(%r15), %r13
	movq	%rbx, %rbp
	subq	%r13, %rbp
	jae	.LBB15_143
	movq	880(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB15_141
	notq	%rax
	leaq	(%rax,%rax,8), %r12
	jmp	.LBB15_152
.LBB15_143:
	movq	840(%r15), %r12
	movq	872(%r15), %rax
	incq	%rbp
	subq	%r13, %rax
	cmpq	%rax, %rbp
	ja	.LBB15_144
.LBB15_145:
	leaq	(,%r13,8), %rdi
	addq	880(%r15), %rdi
	leaq	(,%rbp,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%rbp, %r13
	movq	%r13, 888(%r15)
	cmpq	%r13, %rbx
	jb	.LBB15_147
	jmp	.LBB15_170
.LBB15_141:
	movq	840(%r15), %r12
	cmpq	%r13, %rbx
	jae	.LBB15_170
.LBB15_147:
	movq	%r12, %rax
	notq	%rax
	movq	880(%r15), %rcx
	movq	%rax, (%rcx,%rbx,8)
	movq	864(%r15), %r13
	cmpq	848(%r15), %r13
	jne	.LBB15_149
	movq	376(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_149:
	movq	856(%r15), %rax
	movq	%rbx, (%rax,%r13,8)
	incq	%r13
	movq	%r13, 864(%r15)
	movq	840(%r15), %r13
	cmpq	824(%r15), %r13
	jne	.LBB15_151
	movq	384(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_151:
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
.LBB15_152:
	shlq	$3, %r12
	addq	832(%r15), %r12
	movq	48(%r12), %r13
	movq	64(%r12), %rbp
	cmpq	32(%r12), %r13
	jne	.LBB15_154
	leaq	32(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.58(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_154:
	movq	40(%r12), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%rbp, 8(%rax,%rcx)
	incq	%r13
	movq	%r13, 48(%r12)
	incq	64(%r12)
	movq	56(%rsp), %rax
	cmpq	136(%rax), %rbx
	movq	40(%rsp), %r12
	movq	176(%rsp), %r13
	jae	.LBB15_111
	movq	128(%rax), %rcx
	movq	(%rcx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB15_111
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB15_111
	movq	368(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB15_159
	movq	%rax, %rdi
	movq	24(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	jmp	.LBB15_111
.LBB15_144:
	leaq	872(%r15), %rdi
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	888(%r15), %r13
	jmp	.LBB15_145
.LBB15_133:
	movq	64(%rsp), %r12
	movq	88(%r12), %rbx
	cmpq	72(%r12), %rbx
	jne	.LBB15_135
	leaq	72(%r12), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB15_135:
	movq	80(%r12), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movl	%r14d, 4(%rax,%rcx)
	movl	36(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%rbx, %rax
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %ecx
	movl	148(%r12), %edx
	movq	168(%rsp), %r12
.LBB15_131:
	notl	%ebx
	movq	8(%r15), %rax
	notl	%esi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%ebx, (%rax,%rsi,8)
	movl	%ebp, 4(%rax,%rsi,8)
	movl	%ecx, 8(%rax,%rsi,8)
	movl	%edx, 12(%rax,%rsi,8)
	movl	%ebx, 16(%r12)
	movl	%ebp, 20(%r12)
	movl	%ecx, 24(%r12)
	movl	%edx, 28(%r12)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rsi
	movq	16(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%r12, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
.LBB15_132:
	movq	%r12, 48(%rsp)
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
.LBB15_165:
	.cfi_def_cfa_offset 448
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB15_164:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB15_166:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB15_167:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB15_159:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB15_33:
	movl	$16, %edi
	movq	%r14, %r8
.LBB15_34:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB15_35
	jmp	.LBB15_34
.LBB15_36:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB15_37
.LBB15_50:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.51(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB15_160:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.48(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB15_71:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	jmp	.LBB15_72
.LBB15_39:
	leaq	632(%rbx), %rdi
	leaq	664(%rbx), %rdx
	movl	$1, %esi
	movl	$1, %ecx
	movq	%r8, 24(%rsp)
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	632(%rax), %rbx
	movq	16(%rsp), %rax
	movq	640(%rax), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movq	24(%rsp), %r8
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	movq	16(%rsp), %rdx
	subq	%rcx, 648(%rdx)
	leaq	-16(%rax), %rcx
	andq	%r14, %rcx
	movb	$97, (%rbx,%rax)
	movb	$97, 16(%rbx,%rcx)
	movq	16(%rsp), %rcx
	incq	656(%rcx)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$8999555677310627675, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movq	%r13, -16(%rbx,%rax,8)
	movq	%rbp, -8(%rbx,%rax,8)
	jmp	.LBB15_41
.LBB15_61:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.46(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB15_162:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.41(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB15_170:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.39(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_136:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB15_169:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB15_161:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.49(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_48:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.50(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_168:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.53(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_137:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_138:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_163:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.44(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB15_60:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.45(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.asciz	"/home/james/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 114

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"q\000\000\000\000\000\000\000\013\b\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.ascii	"capacity overflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 17

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.asciz	"/home/james/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 118

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"u\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	core::fmt::num::<impl core::fmt::Debug for usize>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<&T as core::fmt::Debug>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.ascii	"Layout"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 6

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata.cst4,"aM",@progbits,4
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"size"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 4

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.ascii	"align"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 5

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.ascii	"CapacityOverflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<&T as core::fmt::Debug>::fmt
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.rodata.cst8,"aM",@progbits,8
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.ascii	"AllocErr"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 8

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.ascii	"layout"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 6

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.17
	.asciz	"f\000\000\000\000\000\000\000\033\005\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.17
	.asciz	"f\000\000\000\000\000\000\000\020\t\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"i\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	8999555677310627675
	.quad	-4367749331100584418
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.ascii	"entity_remove_sparse::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 23

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.24
	.asciz	"a\000\000\000\000\000\000\000\270\001\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.24
	.asciz	"a\000\000\000\000\000\000\000\260\001\000\000B\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.24
	.asciz	"a\000\000\000\000\000\000\000\257\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/bundle/remove.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 100

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"c\000\000\000\000\000\000\000\341\000\000\000G\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000S\002\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"c\000\000\000\000\000\000\000\n\001\000\000K\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"c\000\000\000\000\000\000\000\025\001\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000C\002\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.28
	.asciz	"c\000\000\000\000\000\000\000\323\000\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.36
	.asciz	"h\000\000\000\000\000\000\000\003\002\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.36
	.asciz	"h\000\000\000\000\000\000\000\004\002\000\000\030\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.36
	.asciz	"h\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.ascii	"mid > len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 9

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.41,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.40
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.43,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.43,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.43:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.42
	.asciz	"g\000\000\000\000\000\000\000\377\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.43, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.44,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.44,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.44:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.42
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.44, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.45,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.45,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.45:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.42
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.45, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.46,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.46,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.46:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.42
	.asciz	"g\000\000\000\000\000\000\000\374\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.46, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.47,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.47,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.47:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.42
	.asciz	"g\000\000\000\000\000\000\000\375\002\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.47, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.48,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.48,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.48:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000a\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.48, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.49,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.49,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.49:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000b\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.49, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.50,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.50,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.50:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000b\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.50, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.51,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.51,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.51:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000^\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.51, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.52,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.52,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.52:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000_\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.52, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.53,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.53,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.53:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000o\002\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.53, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.54,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.54:
	.quad	-3736638910109704955
	.quad	-7168260330011623011
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.54, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.55,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.55:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.55, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.56,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.56,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.56:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.55
	.asciz	"h\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.56, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.57,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.57:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/event/collections.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.57, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.58,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.58,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.58:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.57
	.asciz	"g\000\000\000\000\000\000\000\214\000\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.58, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.59,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.59:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.59, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.60,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.60,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.60:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.59
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.60, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.61,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.61,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.61:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"[\000\000\000\000\000\000\000V\001\000\000.\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.61, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.62,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.62,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.62:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"[\000\000\000\000\000\000\000E\001\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.62, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.63,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.63,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.63:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"[\000\000\000\000\000\000\000\322\004\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.63, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.64,@object
	.section	.rodata.cst32,"aM",@progbits,32
.Lanon.ddd9cd1641521d33379e20f985469fcb.64:
	.ascii	"assertion failed: new_cap >= len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.64, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.65,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.65,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.65:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"[\000\000\000\000\000\000\000\235\004\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.65, 24

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

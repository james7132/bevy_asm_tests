	.file	"entity_insert.525abdb4fb48a57f-cgu.0"
	.section	".text.<&T as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<&T as core::fmt::Debug>::fmt,@function
<&T as core::fmt::Debug>::fmt:
	movq	(%rdi), %rdi
	jmpq	*<core::ptr::alignment::Alignment as core::fmt::Debug>::fmt@GOTPCREL(%rip)
.Lfunc_end0:
	.size	<&T as core::fmt::Debug>::fmt, .Lfunc_end0-<&T as core::fmt::Debug>::fmt

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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %r10
	leaq	8(%rsp), %r11
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.12(%rip), %rbx
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %r14
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rsi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.11(%rip), %rcx
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
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.48(%rip), %xmm0
	movups	%xmm0, 72(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.48(%rip), %r15
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.50(%rip), %rsi
	leaq	24(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	32(%rsp), %rax
	movq	%rbx, (%rax)
	movq	$1, 40(%rsp)
	movq	$0, 184(%rsp)
	movq	$8, 192(%rsp)
	movq	$0, 200(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.52(%rip), %xmm0
	movups	%xmm0, 208(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.52+16(%rip), %xmm1
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.21(%rip), %rsi
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

	.section	".text.core::iter::adapters::copied::copy_fold::{{closure}}","ax",@progbits
	.p2align	4
	.type	core::iter::adapters::copied::copy_fold::{{closure}},@function
core::iter::adapters::copied::copy_fold::{{closure}}:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	(%rdi), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB5_16
	movabsq	$-7079378939119345935, %rax
	xorq	%rsi, %rax
	movabsq	$4983270260364809079, %rdx
	mulq	%rdx
	xorq	%rax, %rdx
	movq	%rdx, %r8
	shrq	$57, %r8
	movq	32(%rcx), %r14
	movq	40(%rcx), %rax
	movd	%r8d, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$68, %xmm0, %xmm0
	leaq	-72(%r14), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
.LBB5_2:
	andq	%rax, %rdx
	movdqu	(%r14,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB5_5
.LBB5_3:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rax, %r10
	negq	%r10
	leaq	(%r10,%r10,8), %r15
	cmpq	(%rcx,%r15,8), %rsi
	je	.LBB5_7
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB5_3
	.p2align	4
.LBB5_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB5_16
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB5_2
.LBB5_7:
	movq	-64(%r14,%r15,8), %rax
	movq	-56(%r14,%r15,8), %rcx
	addq	%rax, %rcx
	incq	%rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	-40(%r14,%r15,8), %rsi
	movq	8(%rdi), %rbx
	movq	%rbx, (%rsp)
	movq	%rax, 8(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movw	%dx, 32(%rsp)
	leaq	8(%rsp), %rax
	movq	%rsp, %rdx
	movq	%rdi, %r12
	movq	%rax, %rdi
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	movq	16(%r12), %rax
	cmpl	$0, (%rax)
	je	.LBB5_16
	leaq	(%r14,%r15,8), %rsi
	cmpq	$0, -8(%rsi)
	je	.LBB5_16
	movq	(%rax), %rcx
	movabsq	$-7046029256521940991, %rdx
	imulq	%rcx, %rdx
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
	pcmpeqd	%xmm1, %xmm1
.LBB5_10:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB5_13
.LBB5_11:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB5_15
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB5_11
.LBB5_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB5_16
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB5_10
.LBB5_15:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	notl	%edi
	movq	-8(%rax,%r10,8), %rsi
	movq	%rbx, (%rsp)
	movq	%rcx, 8(%rsp)
	addq	$16, %rcx
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movw	%di, 32(%rsp)
	leaq	8(%rsp), %rdi
	movq	%rsp, %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
.LBB5_16:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	core::iter::adapters::copied::copy_fold::{{closure}}, .Lfunc_end5-core::iter::adapters::copied::copy_fold::{{closure}}

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
	je	.LBB6_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB6_7
.LBB6_3:
	testq	%rbx, %rbx
	je	.LBB6_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB6_7
.LBB6_4:
	movq	%r15, %rax
.LBB6_7:
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
.Lfunc_end6:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end6-alloc::raw_vec::finish_grow

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
	jb	.LBB7_1
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
	je	.LBB7_3
.LBB7_1:
	xorl	%edi, %edi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB7_3:
	testq	%rdi, %rdi
	jne	.LBB7_5
	xorl	%edx, %edx
	jmp	.LBB7_6
.LBB7_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %rdi
	movq	%rdx, 32(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rcx, %rdx
.LBB7_6:
	movq	%rdx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB7_7
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
.LBB7_7:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end7:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end7-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	".text.<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt,@function
<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt:
	movq	%rsi, %rax
	cmpq	$0, (%rdi)
	je	.LBB8_2
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rcx
	movq	%rcx, (%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.15(%rip), %rsi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.16(%rip), %rcx
	leaq	16(%rsp), %r9
	movl	$8, %edx
	movl	$6, %r8d
	movq	%rax, %rdi
	callq	*core::fmt::Formatter::debug_struct_field1_finish@GOTPCREL(%rip)
	addq	$24, %rsp
	retq
.LBB8_2:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.13(%rip), %rsi
	movl	$16, %edx
	movq	%rax, %rdi
	jmpq	*core::fmt::Formatter::write_str@GOTPCREL(%rip)
.Lfunc_end8:
	.size	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt, .Lfunc_end8-<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt

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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rdi, %r12
	movq	%rsi, 64(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 88(%rsp)
	movq	%r9, 96(%rsp)
	incl	1460(%rdi)
	addq	$896, %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB9_31
	movq	%rax, %r15
	movq	232(%rsp), %rax
	movq	224(%rsp), %rcx
	movq	%r12, 80(%rsp)
	leaq	80(%rsp), %rdx
	movq	%rdx, 104(%rsp)
	leaq	64(%rsp), %rdx
	movq	%rdx, 112(%rsp)
	leaq	88(%rsp), %rdx
	movq	%rdx, 120(%rsp)
	leaq	24(%rsp), %rdx
	movq	%rdx, 128(%rsp)
	leaq	72(%rsp), %rdx
	movq	%rdx, 136(%rsp)
	leaq	23(%rsp), %rdx
	movq	%rdx, 144(%rsp)
	movq	%rcx, 152(%rsp)
	movq	%rax, 160(%rsp)
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax,%rcx), %rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	24(%r15), %rsi
	leaq	104(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movq	%rax, 32(%rsp)
	addq	$16, %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movw	%dx, 56(%rsp)
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	cmpl	$0, 24(%rsp)
	je	.LBB9_10
	cmpq	$0, 88(%r15)
	je	.LBB9_10
	movq	24(%rsp), %rcx
	movabsq	$-7046029256521940991, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$57, %rdi
	movq	64(%r15), %rax
	movq	72(%r15), %rsi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$68, %xmm0, %xmm0
	leaq	-40(%rax), %rdi
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
.LBB9_4:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB9_7
.LBB9_5:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB9_9
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB9_5
.LBB9_7:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB9_10
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB9_4
.LBB9_9:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	notl	%edi
	movq	-8(%rax,%r10,8), %rsi
	leaq	104(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 32(%rsp)
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movw	%di, 56(%rsp)
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
.LBB9_10:
	cmpq	%rbx, %r14
	je	.LBB9_31
	cmpq	$0, 56(%r15)
	je	.LBB9_31
	subq	%r14, %rbx
	shrq	$3, %rbx
	movl	$1, %eax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB9_30
	.p2align	4
.LBB9_15:
	movq	(%r14,%rbp,8), %rcx
	movq	%rcx, %rax
	movabsq	$-7079378939119345935, %rdx
	xorq	%rdx, %rax
	movabsq	$4983270260364809079, %rdx
	mulq	%rdx
	xorq	%rax, %rdx
	movq	%rdx, %rsi
	shrq	$57, %rsi
	movq	32(%r15), %r12
	movq	40(%r15), %rax
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$68, %xmm0, %xmm0
	leaq	-72(%r12), %rsi
	xorl	%edi, %edi
.LBB9_16:
	andq	%rax, %rdx
	movdqu	(%r12,%rdx), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	je	.LBB9_19
.LBB9_17:
	rep		bsfl	%r8d, %r9d
	addq	%rdx, %r9
	andq	%rax, %r9
	negq	%r9
	leaq	(%r9,%r9,8), %r13
	cmpq	(%rsi,%r13,8), %rcx
	je	.LBB9_21
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB9_17
	.p2align	4
.LBB9_19:
	pcmpeqd	%xmm2, %xmm2
	pcmpeqb	%xmm2, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB9_30
	addq	%rdi, %rdx
	addq	$16, %rdx
	addq	$16, %rdi
	jmp	.LBB9_16
	.p2align	4
.LBB9_21:
	movq	-64(%r12,%r13,8), %rax
	movq	-56(%r12,%r13,8), %rcx
	addq	%rax, %rcx
	incq	%rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	-40(%r12,%r13,8), %rsi
	leaq	104(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movq	%rax, 32(%rsp)
	addq	$16, %rax
	movq	%rax, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movw	%dx, 56(%rsp)
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	cmpl	$0, 24(%rsp)
	je	.LBB9_30
	leaq	(%r12,%r13,8), %rsi
	cmpq	$0, -8(%rsi)
	je	.LBB9_30
	movq	24(%rsp), %rcx
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
.LBB9_24:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB9_27
.LBB9_25:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB9_29
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB9_25
	.p2align	4
.LBB9_27:
	pcmpeqd	%xmm2, %xmm2
	pcmpeqb	%xmm2, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB9_30
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB9_24
.LBB9_29:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	notl	%edi
	movq	-8(%rax,%r10,8), %rsi
	leaq	104(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 32(%rsp)
	addq	$16, %rcx
	movq	%rcx, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movw	%di, 56(%rsp)
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	.p2align	4
.LBB9_30:
	incq	%rbp
	cmpq	%rbx, %rbp
	je	.LBB9_31
	movq	56(%r15), %rax
	testq	%rax, %rax
	jne	.LBB9_15
	jmp	.LBB9_30
.LBB9_31:
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
	retq
.Lfunc_end9:
	.size	bevy_ecs::observer::centralized_storage::Observers::invoke, .Lfunc_end9-bevy_ecs::observer::centralized_storage::Observers::invoke
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
	jbe	.LBB10_1
	movq	(%r14), %rax
	subq	%r15, %rax
	movq	%r15, %rcx
	cmpq	%rax, %rdx
	ja	.LBB10_3
.LBB10_4:
	movq	8(%r14), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%rbx, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB10_5:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB10_5
	subq	%rdi, %rcx
	movq	%rcx, 16(%r14)
	jmp	.LBB10_7
.LBB10_1:
	movq	8(%r14), %rax
.LBB10_7:
	leaq	(%rbx,%rbx,8), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbx
	cmpl	$2, (%rax,%rcx)
	je	.LBB10_12
	leaq	72(%rbx), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB10_10
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB10_10:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_12
	movq	192(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB10_12:
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
.LBB10_3:
	.cfi_def_cfa_offset 320
	movl	$8, %ecx
	movl	$288, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%r14), %rcx
	jmp	.LBB10_4
.Lfunc_end10:
	.size	bevy_ecs::component::info::Components::register_component_inner, .Lfunc_end10-bevy_ecs::component::info::Components::register_component_inner
	.cfi_endproc

	.section	".text.unlikely.smallvec::SmallVec<A>::reserve_one_unchecked","ax",@progbits
	.p2align	4
	.type	smallvec::SmallVec<A>::reserve_one_unchecked,@function
smallvec::SmallVec<A>::reserve_one_unchecked:
	pushq	%rax
	movq	16(%rdi), %rax
	cmpq	$3, %rax
	jb	.LBB11_2
	movq	8(%rdi), %rax
.LBB11_2:
	cmpq	$-1, %rax
	je	.LBB11_8
	bsrq	%rax, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	testq	%rax, %rax
	cmoveq	%rax, %rsi
	cmpq	$-1, %rsi
	je	.LBB11_8
	incq	%rsi
	callq	smallvec::SmallVec<A>::try_grow
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_5
	popq	%rax
	retq
.LBB11_8:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.55(%rip), %rdx
	movl	$17, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
.LBB11_5:
	testq	%rax, %rax
	jne	.LBB11_9
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.54(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB11_9:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end11:
	.size	smallvec::SmallVec<A>::reserve_one_unchecked, .Lfunc_end11-smallvec::SmallVec<A>::reserve_one_unchecked

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
	jb	.LBB12_20
	movq	(%rdi), %r15
	movabsq	$-9223372036854775807, %rcx
	cmpq	$3, %rsi
	jae	.LBB12_6
	cmpq	$3, %r12
	jb	.LBB12_7
	movq	%rcx, %r13
	leaq	(,%rbp,8), %rdx
	movq	%rdi, %r14
	movq	%r15, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, 16(%r14)
	shlq	$3, %rbx
	shrq	$61, %r12
	jne	.LBB12_21
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB12_21
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	%r13, %rax
	jmp	.LBB12_8
.LBB12_6:
	cmpq	%rsi, %r12
	jne	.LBB12_9
.LBB12_7:
	movq	%rcx, %rax
	jmp	.LBB12_8
.LBB12_9:
	leaq	(,%rsi,8), %r14
	movq	%rsi, %rax
	shrq	$61, %rax
	jne	.LBB12_22
	movq	%rcx, %rbp
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB12_22
	cmpq	$3, %r12
	jae	.LBB12_15
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	movq	%rax, %rbx
	movl	$8, %eax
	testq	%rbx, %rbx
	je	.LBB12_8
	shlq	$3, %r12
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB12_18
.LBB12_22:
	xorl	%eax, %eax
	jmp	.LBB12_8
.LBB12_15:
	movabsq	$2305843009213693951, %rax
	shlq	$3, %rbx
	cmpq	%rax, %r12
	ja	.LBB12_19
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB12_19
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	movl	$8, %eax
	je	.LBB12_8
.LBB12_18:
	movq	8(%rsp), %rcx
	movq	%rbx, (%rcx)
	movq	%r13, 8(%rcx)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	%rbp, %rax
	jmp	.LBB12_8
.LBB12_19:
	xorl	%eax, %eax
	movq	%rbx, %r14
.LBB12_8:
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
.LBB12_20:
	.cfi_def_cfa_offset 96
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.56(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.57(%rip), %rdx
	movl	$32, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB12_21:
	movq	$0, 24(%rsp)
	movq	%rbx, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rcx
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.53(%rip), %r8
	leaq	24(%rsp), %rdx
	movl	$43, %esi
	callq	*core::result::unwrap_failed@GOTPCREL(%rip)
.Lfunc_end12:
	.size	smallvec::SmallVec<A>::try_grow, .Lfunc_end12-smallvec::SmallVec<A>::try_grow
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
	je	.LBB13_1
.LBB13_2:
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
.LBB13_3:
	andq	%r8, %r14
	movdqu	(%rax,%r14), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r13d
	testl	%r13d, %r13d
	je	.LBB13_6
.LBB13_4:
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
	je	.LBB13_16
	leal	-1(%r13), %r11d
	andw	%r13w, %r11w
	movl	%r11d, %r13d
	movq	%rbx, %r15
	movq	%r12, %r11
	jne	.LBB13_4
	.p2align	4
.LBB13_6:
	cmpq	$1, %rcx
	je	.LBB13_10
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB13_8
	rep		bsfl	%r9d, %r9d
	addq	%r14, %r9
	andq	%r8, %r9
.LBB13_10:
	movq	%r11, %rbx
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB13_13
	movl	$1, %ecx
	movq	%rbx, %r11
	jmp	.LBB13_12
.LBB13_8:
	xorl	%ecx, %ecx
.LBB13_12:
	addq	%r15, %r14
	addq	$16, %r14
	addq	$16, %r15
	jmp	.LBB13_3
.LBB13_16:
	movq	8(%rsp), %rcx
	movq	%rcx, -8(%rax,%rbp,8)
	jmp	.LBB13_17
.LBB13_13:
	movzbl	(%rax,%r9), %r10d
	testb	%r10b, %r10b
	jns	.LBB13_14
.LBB13_15:
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
.LBB13_17:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_1:
	leaq	32(%rdi), %rdx
	movl	$1, %esi
	movq	%rdi, %rbx
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	%rbx, %rdi
	jmp	.LBB13_2
.LBB13_14:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %r9d
	movzbl	(%rax,%r9), %r10d
	jmp	.LBB13_15
.Lfunc_end13:
	.size	hashbrown::map::HashMap<K,V,S,A>::insert, .Lfunc_end13-hashbrown::map::HashMap<K,V,S,A>::insert

	.section	.text.hashbrown::raw::RawTableInner::find_insert_slot,"ax",@progbits
	.p2align	4
	.type	hashbrown::raw::RawTableInner::find_insert_slot,@function
hashbrown::raw::RawTableInner::find_insert_slot:
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	je	.LBB14_1
.LBB14_3:
	rep		bsfl	%eax, %eax
	addq	%rdx, %rax
	andq	%rsi, %rax
	cmpb	$0, (%rdi,%rax)
	jns	.LBB14_4
	retq
.LBB14_1:
	movl	$16, %ecx
.LBB14_2:
	addq	%rcx, %rdx
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	jne	.LBB14_3
	jmp	.LBB14_2
.LBB14_4:
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	retq
.Lfunc_end14:
	.size	hashbrown::raw::RawTableInner::find_insert_slot, .Lfunc_end14-hashbrown::raw::RawTableInner::find_insert_slot

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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, 48(%rsp)
	movq	%rsi, %r14
	leaq	16(%rsp), %r13
	leaq	8(%rsp), %r8
	movq	%rsp, %r11
	movl	$2, %r9d
	movq	%rdi, 40(%rsp)
	jmp	.LBB15_1
	.p2align	4
.LBB15_21:
	movq	%rsi, (%rcx)
.LBB15_22:
	movq	16(%rsp), %rax
	leaq	96(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movdqu	(%rsp), %xmm0
	movdqu	%xmm0, (%rcx)
	movq	24(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	64(%rsp), %rdx
	movq	%rdx, 80(%rsp)
	movq	56(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rax, 120(%rsp)
	movq	%rcx, 128(%rsp)
	movq	48(%rbp), %rdx
	movq	56(%rbp), %rcx
	movq	%r12, %rdi
	leaq	80(%rsp), %rsi
	callq	*%r10
	movq	%rsp, %r11
	movl	$2, %r9d
	leaq	8(%rsp), %r8
	movq	72(%rsp), %r14
	decq	%r14
	movq	40(%rsp), %rdi
.LBB15_1:
	movzwl	24(%rdi), %ecx
	testw	%cx, %cx
	je	.LBB15_3
	movq	(%rdi), %rax
	jmp	.LBB15_7
	.p2align	4
.LBB15_3:
	testq	%r14, %r14
	je	.LBB15_23
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	.p2align	4
.LBB15_5:
	movdqa	(%rdx), %xmm0
	pmovmskb	%xmm0, %ecx
	addq	$-256, %rax
	addq	$16, %rdx
	cmpl	$65535, %ecx
	je	.LBB15_5
	notl	%ecx
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
.LBB15_7:
	leal	-1(%rcx), %edx
	rep		bsfl	%ecx, %esi
	andl	%ecx, %edx
	movw	%dx, 24(%rdi)
	shll	$4, %esi
	subq	%rsi, %rax
	movq	-16(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	-8(%rax), %r10
	movq	48(%rsp), %rax
	movq	(%rax), %rbp
	movq	(%rbp), %rax
	movq	(%rax), %r12
	movq	8(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	(%rcx), %r15
	movq	8(%rcx), %rbx
	movq	$0, 16(%rsp)
	movq	%rbx, %rax
	subq	%r15, %rax
	cmpq	$17, %rax
	movq	%r14, 72(%rsp)
	jb	.LBB15_8
	movq	%r12, 24(%rsp)
	movq	%r10, 32(%rsp)
	shrq	$3, %rax
	decq	%rax
	bsrq	%rax, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
	movq	%r11, %rdi
	movq	%r11, %r12
	callq	smallvec::SmallVec<A>::try_grow
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB15_12
	movq	16(%rsp), %rax
	xorl	%esi, %esi
	cmpq	$3, %rax
	movl	$2, %r9d
	cmovbq	%r9, %rax
	setb	%sil
	movq	(%rsp), %rdx
	cmovbq	%r12, %rdx
	movq	%r13, %rcx
	leaq	8(%rsp), %r8
	cmovaeq	%r8, %rcx
	movq	8(%rsp,%rsi,8), %rsi
	cmpq	%rax, %rsi
	movq	32(%rsp), %r10
	movq	%r12, %r11
	movq	24(%rsp), %r12
	jb	.LBB15_9
	movq	%rsi, %rax
	movq	%rax, (%rcx)
	cmpq	%rbx, %r15
	jne	.LBB15_18
	jmp	.LBB15_22
	.p2align	4
.LBB15_8:
	movl	$2, %eax
	movq	%r13, %rcx
	movq	%r11, %rdx
	xorl	%esi, %esi
	.p2align	4
.LBB15_9:
	cmpq	%rbx, %r15
	je	.LBB15_21
	movq	(%r15), %rdi
	addq	$8, %r15
	movq	%rdi, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB15_9
	movq	%rax, (%rcx)
	cmpq	%rbx, %r15
	je	.LBB15_22
	.p2align	4
.LBB15_18:
	movq	(%r15), %r14
	movq	16(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	$3, %rsi
	movq	(%rsp), %rax
	cmovbq	%r11, %rax
	setb	%dl
	movq	%r13, %rcx
	cmovaeq	%r8, %rcx
	cmovbq	%r9, %rsi
	movq	8(%rsp,%rdx,8), %rdx
	cmpq	%rsi, %rdx
	je	.LBB15_19
.LBB15_20:
	addq	$8, %r15
	movq	%r14, (%rax,%rdx,8)
	incq	(%rcx)
	cmpq	%rbx, %r15
	jne	.LBB15_18
	jmp	.LBB15_22
.LBB15_19:
	movq	%r11, %rdi
	movq	%r12, 24(%rsp)
	movq	%r13, %r12
	movq	%r10, %r13
	callq	smallvec::SmallVec<A>::reserve_one_unchecked
	movq	%rsp, %r11
	movq	%r13, %r10
	movq	%r12, %r13
	movq	24(%rsp), %r12
	movl	$2, %r9d
	leaq	8(%rsp), %r8
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%r8, %rcx
	jmp	.LBB15_20
.LBB15_23:
	addq	$136, %rsp
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
.LBB15_12:
	.cfi_def_cfa_offset 192
	testq	%rax, %rax
	je	.LBB15_13
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB15_13:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.54(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.Lfunc_end15:
	.size	hashbrown::raw::RawIterRange<T>::fold_impl, .Lfunc_end15-hashbrown::raw::RawIterRange<T>::fold_impl
	.cfi_endproc

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
	movq	%rdx, 40(%rsp)
	leaq	24(%rsp), %r10
	leaq	16(%rsp), %r11
	leaq	8(%rsp), %r12
	movq	%rdi, 32(%rsp)
	jmp	.LBB16_1
	.p2align	4
.LBB16_36:
	movq	%rsi, (%rcx)
.LBB16_37:
	movq	24(%rsp), %rax
	leaq	112(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movdqu	8(%rsp), %xmm0
	movdqu	%xmm0, (%rcx)
	movq	72(%rsp), %rsi
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	56(%rsp), %rdx
	movq	%rdx, 96(%rsp)
	movq	48(%rsp), %rdx
	movq	%rdx, 104(%rsp)
	movq	%rax, 136(%rsp)
	movq	%rcx, 144(%rsp)
	movq	48(%rsi), %rdx
	movq	56(%rsi), %rcx
	movq	64(%rsp), %rdi
	leaq	96(%rsp), %rsi
	callq	*80(%rsp)
	leaq	16(%rsp), %r11
	leaq	24(%rsp), %r10
	movq	88(%rsp), %rsi
	decq	%rsi
	movq	32(%rsp), %rdi
.LBB16_1:
	movzwl	24(%rdi), %ecx
	testw	%cx, %cx
	je	.LBB16_3
	movq	(%rdi), %rax
	jmp	.LBB16_7
	.p2align	4
.LBB16_3:
	testq	%rsi, %rsi
	je	.LBB16_38
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	.p2align	4
.LBB16_5:
	movdqa	(%rdx), %xmm0
	pmovmskb	%xmm0, %ecx
	addq	$-256, %rax
	addq	$16, %rdx
	cmpl	$65535, %ecx
	je	.LBB16_5
	notl	%ecx
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
.LBB16_7:
	leal	-1(%rcx), %edx
	rep		bsfl	%ecx, %r8d
	andl	%ecx, %edx
	movw	%dx, 24(%rdi)
	shll	$4, %r8d
	subq	%r8, %rax
	movq	-16(%rax), %r9
	movq	-8(%rax), %rdx
	movq	40(%rsp), %rax
	movq	(%rax), %rdi
	movq	(%rdi), %rax
	movq	(%rax), %r8
	movq	8(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rbx
	movq	8(%rcx), %r15
	movq	16(%rcx), %r14
	movq	24(%rcx), %rbp
	movq	$0, 24(%rsp)
	testq	%rbx, %rbx
	movq	%rsi, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 56(%rsp)
	movq	%rax, 48(%rsp)
	je	.LBB16_10
	movq	%r15, %rax
	subq	%rbx, %rax
	shrq	$3, %rax
	testq	%r14, %r14
	je	.LBB16_16
	movq	%rbp, %rcx
	subq	%r14, %rcx
	shrq	$3, %rcx
	addq	%rcx, %rax
.LBB16_16:
	cmpq	$3, %rax
	jae	.LBB16_17
	jmp	.LBB16_11
	.p2align	4
.LBB16_10:
	testq	%r14, %r14
	je	.LBB16_11
	movq	%rbp, %rax
	subq	%r14, %rax
	shrq	$3, %rax
	cmpq	$3, %rax
	jb	.LBB16_11
.LBB16_17:
	decq	%rax
	bsrq	%rax, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
	movq	%r12, %rdi
	callq	smallvec::SmallVec<A>::try_grow
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB16_18
	movq	24(%rsp), %rax
	xorl	%esi, %esi
	cmpq	$3, %rax
	movl	$2, %r9d
	cmovbq	%r9, %rax
	setb	%sil
	movq	8(%rsp), %rdx
	cmovbq	%r12, %rdx
	leaq	24(%rsp), %r10
	movq	%r10, %rcx
	leaq	16(%rsp), %r11
	cmovaeq	%r11, %rcx
	movq	16(%rsp,%rsi,8), %rsi
	cmpq	%rax, %rsi
	jb	.LBB16_12
	movq	%r14, %rdi
	movq	%rbx, %r8
	movq	%rsi, %rax
.LBB16_22:
	movq	%rax, (%rcx)
	testq	%r8, %r8
	je	.LBB16_30
	.p2align	4
.LBB16_24:
	cmpq	%r15, %r8
	je	.LBB16_30
	leaq	8(%r8), %r14
	movq	%rdi, %rbx
	jmp	.LBB16_33
	.p2align	4
.LBB16_30:
	testq	%rdi, %rdi
	je	.LBB16_37
	cmpq	%rbp, %rdi
	je	.LBB16_37
	leaq	8(%rdi), %rbx
	xorl	%r14d, %r14d
	movq	%rdi, %r8
.LBB16_33:
	movq	(%r8), %r13
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	$3, %rsi
	movq	8(%rsp), %rax
	cmovbq	%r12, %rax
	setb	%dl
	movq	%r10, %rcx
	cmovaeq	%r11, %rcx
	cmovbq	%r9, %rsi
	movq	16(%rsp,%rdx,8), %rdx
	cmpq	%rsi, %rdx
	je	.LBB16_34
.LBB16_35:
	movq	%r13, (%rax,%rdx,8)
	incq	(%rcx)
	movq	%r14, %r8
	movq	%rbx, %rdi
	testq	%r8, %r8
	jne	.LBB16_24
	jmp	.LBB16_30
.LBB16_34:
	movq	%r12, %rdi
	callq	smallvec::SmallVec<A>::reserve_one_unchecked
	movl	$2, %r9d
	leaq	16(%rsp), %r11
	leaq	24(%rsp), %r10
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%r11, %rcx
	jmp	.LBB16_35
	.p2align	4
.LBB16_11:
	movl	$2, %eax
	movq	%r10, %rcx
	movq	%r12, %rdx
	xorl	%esi, %esi
	jmp	.LBB16_12
	.p2align	4
.LBB16_14:
	leaq	8(%rbx), %r8
	movq	%r14, %rdi
.LBB16_29:
	movq	(%rbx), %r9
	movq	%r9, (%rdx,%rsi,8)
	incq	%rsi
	movq	%r8, %rbx
	cmpq	%rsi, %rax
	movl	$2, %r9d
	je	.LBB16_22
.LBB16_12:
	testq	%rbx, %rbx
	je	.LBB16_26
	cmpq	%r15, %rbx
	jne	.LBB16_14
.LBB16_26:
	testq	%r14, %r14
	je	.LBB16_36
	cmpq	%rbp, %r14
	je	.LBB16_36
	leaq	8(%r14), %rdi
	xorl	%r8d, %r8d
	movq	%r14, %rbx
	movq	%rdi, %r14
	jmp	.LBB16_29
.LBB16_38:
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
.LBB16_18:
	.cfi_def_cfa_offset 208
	testq	%rax, %rax
	je	.LBB16_19
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB16_19:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.54(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.Lfunc_end16:
	.size	hashbrown::raw::RawIterRange<T>::fold_impl, .Lfunc_end16-hashbrown::raw::RawIterRange<T>::fold_impl
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_0:
	.zero	16,84
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
	subq	$488, %rsp
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movss	%xmm0, 52(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 32(%rsp)
	testl	%eax, %eax
	je	.LBB17_187
	movabsq	$-6209422631762690009, %r14
	movl	20(%r13), %ebp
	movl	24(%r13), %eax
	movq	%rax, 232(%rsp)
	movl	28(%r13), %eax
	movl	%eax, 76(%rsp)
	movq	(%r13), %r11
	movl	1448(%r11), %eax
	movl	%eax, 48(%rsp)
	leaq	56(%r11), %rcx
	leaq	1440(%r11), %rax
	movq	%rcx, 272(%rsp)
	movq	%rax, 280(%rsp)
	movq	$0, 248(%rsp)
	movq	$8, 256(%rsp)
	movq	$0, 264(%rsp)
	leaq	608(%r11), %rax
	movq	%rax, 64(%rsp)
	leaq	336(%r11), %r12
	movq	632(%r11), %rax
	movq	640(%r11), %rdx
	leaq	-24(%rax), %rsi
	xorl	%edi, %edi
	movdqa	.LCPI17_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$7683019710262740564, %rbx
	movq	%r14, %r8
	movq	%r11, 16(%rsp)
	movq	%r12, 80(%rsp)
	movl	%ebp, 12(%rsp)
.LBB17_2:
	andq	%rdx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB17_5
.LBB17_3:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	8(%rsi,%r10,8), %r11
	xorq	%r14, %r11
	movq	%r14, %r15
	movq	(%rsi,%r10,8), %r14
	xorq	%rbx, %r14
	orq	%r11, %r14
	je	.LBB17_7
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	movq	16(%rsp), %r11
	movq	%r15, %r14
	jne	.LBB17_3
	.p2align	4
.LBB17_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB17_8
	addq	%rdi, %r8
	addq	$16, %r8
	addq	$16, %rdi
	jmp	.LBB17_2
.LBB17_7:
	movq	-8(%rax,%r10,8), %rbp
	movq	16(%rsp), %r10
	jmp	.LBB17_37
.LBB17_8:
	movq	$0, 312(%rsp)
	movq	$8, 320(%rsp)
	movq	$0, 328(%rsp)
	cmpq	$0, 104(%r11)
	je	.LBB17_15
	movq	80(%r11), %rax
	movq	88(%r11), %rdx
	leaq	-24(%rax), %rsi
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-6209422631762690009, %r8
	movq	%r14, %r9
.LBB17_10:
	andq	%rdx, %r9
	movdqu	(%rax,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB17_13
.LBB17_11:
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rdx, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r11
	movq	8(%rsi,%r11,8), %r14
	xorq	%r8, %r14
	movq	(%rsi,%r11,8), %r15
	xorq	%rbx, %r15
	orq	%r14, %r15
	je	.LBB17_21
	leal	-1(%r10), %r11d
	andw	%r10w, %r11w
	movl	%r11d, %r10d
	movq	16(%rsp), %r11
	movabsq	$7683019710262740564, %rbx
	movabsq	$-6209422631762690009, %r14
	jne	.LBB17_11
.LBB17_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB17_15
	addq	%rdi, %r9
	addq	$16, %r9
	addq	$16, %rdi
	jmp	.LBB17_10
.LBB17_15:
	movzbl	152(%r11), %eax
	movq	184(%r11), %rax
	movq	192(%r11), %rdx
	leaq	-112(%rax), %rdi
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-6209422631762690009, %r9
	movq	%r14, %r10
.LBB17_16:
	andq	%rdx, %r10
	movdqu	(%rax,%r10), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB17_19
.LBB17_17:
	rep		bsfl	%r11d, %r14d
	addq	%r10, %r14
	andq	%rdx, %r14
	movq	%r14, %rsi
	negq	%rsi
	imulq	$112, %rsi, %rsi
	movq	8(%rdi,%rsi), %r15
	xorq	%r9, %r15
	movq	(%rdi,%rsi), %r12
	xorq	%rbx, %r12
	orq	%r15, %r12
	je	.LBB17_22
	leal	-1(%r11), %esi
	andw	%r11w, %si
	movl	%esi, %r11d
	movabsq	$7683019710262740564, %rbx
	jne	.LBB17_17
.LBB17_19:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	movq	16(%rsp), %r11
	jne	.LBB17_25
	addq	%r8, %r10
	addq	$16, %r10
	addq	$16, %r8
	movabsq	$7683019710262740564, %rbx
	jmp	.LBB17_16
.LBB17_21:
	movq	-8(%rax,%r11,8), %rbp
	movl	$8, %esi
	movq	%rcx, %r15
	movq	%rcx, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
	jmp	.LBB17_30
.LBB17_22:
	addq	%rax, %rsi
	imulq	$112, %r14, %r8
	sarq	$4, %r8
	movabsq	$7905747460161236407, %rdi
	imulq	%r8, %rdi
	leaq	-16(%rdi), %r8
	andq	%rdx, %r8
	movdqu	(%rax,%r8), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %edx
	movdqu	(%rax,%rdi), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r9d
	movw	$31, %r10w
	bsrw	%dx, %r10w
	xorl	$15, %r10d
	orl	$65536, %r9d
	rep		bsfl	%r9d, %r9d
	addl	%r10d, %r9d
	movb	$-128, %dl
	cmpw	$15, %r9w
	movq	16(%rsp), %r11
	ja	.LBB17_24
	incq	200(%r11)
	movb	$-1, %dl
.LBB17_24:
	movb	%dl, (%rax,%rdi)
	movb	%dl, 16(%rax,%r8)
	decq	208(%r11)
	movq	-96(%rsi), %rax
	cmpq	$2, %rax
	jne	.LBB17_28
.LBB17_25:
	movq	%r13, %r14
	movq	1440(%r11), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 1440(%r11)
	movw	$256, 160(%rsp)
	movq	$1, 96(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %xmm0
	movups	%xmm0, 104(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %r12
	movq	$4, 136(%rsp)
	movq	$4, 144(%rsp)
	movq	$0, 152(%rsp)
	movb	$1, 162(%rsp)
	movq	$0, 120(%rsp)
	leaq	96(%rsp), %rdx
	movq	%rcx, %r15
	movq	%rcx, %rdi
	movq	%rbp, %rsi
	movq	%r11, %r13
	callq	bevy_ecs::component::info::Components::register_component_inner
	leaq	80(%r13), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.50(%rip), %rsi
	leaq	248(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	256(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 264(%rsp)
	movq	$0, 336(%rsp)
	movq	$8, 344(%rsp)
	movq	$0, 352(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.52(%rip), %xmm0
	movups	%xmm0, 360(%rsp)
	movups	.Lanon.83959b72e5b8236df4a28836bf490603.52+16(%rip), %xmm1
	movups	%xmm1, 376(%rsp)
	movq	$0, 392(%rsp)
	movq	$8, 400(%rsp)
	movq	$0, 408(%rsp)
	movups	%xmm0, 416(%rsp)
	movups	%xmm1, 432(%rsp)
	movq	272(%rsp), %rdi
	leaq	336(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
	movq	264(%rsp), %rax
	testq	%rax, %rax
	je	.LBB17_27
	decq	%rax
	movq	%rax, 264(%rsp)
.LBB17_27:
	movq	272(%rsp), %rax
	movq	8(%rax), %r12
	leaq	(,%rbp,8), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
	movups	432(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
	movups	416(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	movups	400(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	336(%rsp), %xmm0
	movups	352(%rsp), %xmm1
	movups	368(%rsp), %xmm2
	movups	384(%rsp), %xmm3
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	leaq	(%r12,%r13), %rdi
	addq	$72, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	movaps	192(%rsp), %xmm0
	movups	%xmm0, 168(%r12,%r13)
	movaps	176(%rsp), %xmm0
	movups	%xmm0, 152(%r12,%r13)
	movaps	160(%rsp), %xmm0
	movups	%xmm0, 136(%r12,%r13)
	movdqa	96(%rsp), %xmm0
	movdqa	112(%rsp), %xmm1
	movdqa	128(%rsp), %xmm2
	movdqa	144(%rsp), %xmm3
	movdqu	%xmm3, 120(%r12,%r13)
	movdqu	%xmm2, 104(%r12,%r13)
	movdqu	%xmm1, 88(%r12,%r13)
	movdqu	%xmm0, 72(%r12,%r13)
	movq	%r14, %r13
	jmp	.LBB17_29
.LBB17_28:
	movq	%rcx, %r15
	movq	-8(%rsi), %rcx
	movq	%rcx, 184(%rsp)
	movups	-24(%rsi), %xmm0
	movups	%xmm0, 168(%rsp)
	movdqu	-88(%rsi), %xmm0
	movdqu	-72(%rsi), %xmm1
	movdqu	-56(%rsi), %xmm2
	movdqu	-40(%rsi), %xmm3
	movdqu	%xmm3, 152(%rsp)
	movdqu	%xmm2, 136(%rsp)
	movdqu	%xmm1, 120(%rsp)
	movdqu	%xmm0, 104(%rsp)
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rdi
	leaq	248(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %rbp
.LBB17_29:
	movq	80(%rsp), %r12
.LBB17_30:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.26(%rip), %rsi
	leaq	312(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	320(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 328(%rsp)
	movq	16(%rsp), %r14
	movq	624(%r14), %rbp
	movq	272(%rsp), %r8
	movups	312(%rsp), %xmm0
	movaps	%xmm0, 336(%rsp)
	movq	$1, 352(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rsi
	leaq	104(%rsp), %rdi
	leaq	344(%rsp), %r9
	movl	$16, %edx
	movq	%r12, %rcx
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	movq	%r14, %r10
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpq	608(%r14), %rbp
	jne	.LBB17_32
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rsi
	movq	64(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %r10
.LBB17_32:
	movq	616(%r10), %rax
	leaq	(,%rbp,4), %rcx
	addq	%rbp, %rcx
	movq	128(%rsp), %rdx
	movq	%rdx, 32(%rax,%rcx,8)
	movups	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%r10)
	movq	632(%r10), %rax
	movq	640(%r10), %rdx
	movq	%rdx, %rdi
	movabsq	$-6209422631762690009, %r11
	andq	%r11, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	je	.LBB17_190
	movq	%r15, %rcx
.LBB17_34:
	rep		bsfl	%esi, %esi
	addq	%rdi, %rsi
	andq	%rdx, %rsi
	movzbl	(%rax,%rsi), %edi
	testb	%dil, %dil
	movabsq	$7683019710262740564, %rbx
	jns	.LBB17_192
.LBB17_35:
	movq	648(%r10), %r8
	testq	%r8, %r8
	sete	%r9b
	andb	$1, %dil
	testb	%r9b, %dil
	jne	.LBB17_195
	movzbl	%dil, %edi
	subq	%rdi, %r8
	movq	%r8, 648(%r10)
	leaq	-16(%rsi), %rdi
	andq	%rdx, %rdi
	movb	$84, (%rax,%rsi)
	movb	$84, 16(%rax,%rdi)
	incq	656(%r10)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	movq	%rbx, -24(%rax,%rdx,8)
	movq	%r11, -16(%rax,%rdx,8)
	movq	%rbp, -8(%rax,%rdx,8)
.LBB17_37:
	movq	616(%r10), %rax
	leaq	(,%rbp,4), %rdx
	addq	%rbp, %rdx
	leaq	(%rax,%rdx,8), %rdi
	movq	32(%rax,%rdx,8), %rbx
	leaq	248(%r10), %rsi
	leaq	896(%r10), %r8
	movq	%rdi, 224(%rsp)
	movq	%r12, %rdx
	movq	%r8, 456(%rsp)
	movq	232(%rsp), %r15
	movl	%r15d, %r9d
	movq	%r10, %r14
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
	cmpl	%r15d, %eax
	jne	.LBB17_41
	movq	264(%r14), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB17_198
	movq	256(%r14), %rcx
	leaq	(%r15,%r15,4), %rsi
	shlq	$5, %rsi
	leaq	(%rcx,%rsi), %rbp
	cmpq	16(%rcx,%rsi), %rbx
	jae	.LBB17_54
	movq	%r14, %r8
	movq	8(%rbp), %rcx
	leaq	(%rbx,%rbx,8), %rsi
	leaq	(%rcx,%rsi,8), %r15
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r15
	jmp	.LBB17_55
.LBB17_41:
	movq	256(%r14), %rcx
	movq	264(%r14), %rdi
	movl	%eax, %esi
	movq	%r14, %r9
	jae	.LBB17_45
	cmpq	%r15, %rdi
	jb	.LBB17_193
	jne	.LBB17_48
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.46(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_45:
	cmpq	%rsi, %rdi
	jb	.LBB17_194
	cmpl	%r15d, %eax
	jbe	.LBB17_201
	cmpq	%rsi, %rdi
	je	.LBB17_202
.LBB17_48:
	leaq	(%r15,%r15,4), %rdi
	shlq	$5, %rdi
	leaq	(%rcx,%rdi), %rbp
	leaq	(%rsi,%rsi,4), %r10
	shlq	$5, %r10
	addq	%rcx, %r10
	cmpq	16(%rcx,%rdi), %rbx
	jae	.LBB17_57
	movq	8(%rbp), %rcx
	leaq	(%rbx,%rbx,8), %rsi
	leaq	(%rcx,%rsi,8), %r15
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	cmoveq	%rcx, %r15
	movl	148(%rbp), %edi
	movl	148(%r10), %esi
	cmpl	%esi, %edi
	je	.LBB17_58
.LBB17_50:
	movq	416(%r9), %rcx
	movq	424(%r9), %r8
	cmpl	%esi, %edi
	jbe	.LBB17_61
	cmpq	%rdi, %r8
	jb	.LBB17_196
	jne	.LBB17_64
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.41(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_54:
	movq	%r14, %r8
	xorl	%r15d, %r15d
.LBB17_55:
	movl	148(%rbp), %edi
	movq	424(%r8), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_199
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	movq	%r8, %rdi
	addq	416(%r8), %rcx
	movq	%rcx, 40(%rsp)
	movq	$0, 216(%rsp)
	movq	%r10, 56(%rsp)
	testb	$1, %dl
	jne	.LBB17_65
	jmp	.LBB17_69
.LBB17_57:
	xorl	%r15d, %r15d
	movl	148(%rbp), %edi
	movl	148(%r10), %esi
	cmpl	%esi, %edi
	jne	.LBB17_50
.LBB17_58:
	movq	424(%r9), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_203
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	movq	%r9, %rdi
	addq	416(%r9), %rcx
	movq	%rcx, 40(%rsp)
	movl	$1, %ecx
	movq	%rcx, 216(%rsp)
	movq	%r10, 56(%rsp)
	testb	$1, %dl
	jne	.LBB17_65
	jmp	.LBB17_69
.LBB17_61:
	cmpq	%rsi, %r8
	jb	.LBB17_197
	cmpl	%edi, %esi
	jbe	.LBB17_205
	cmpq	%rsi, %r8
	je	.LBB17_206
.LBB17_64:
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	movq	%rdi, 40(%rsp)
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 288(%rsp)
	movl	$2, %ecx
	movq	%rcx, 216(%rsp)
	movq	%r9, %rdi
	movq	%r10, 56(%rsp)
	testb	$1, %dl
	je	.LBB17_69
.LBB17_65:
	movq	1408(%rdi), %rbx
	testq	%rbx, %rbx
	jne	.LBB17_67
	movq	1416(%rdi), %rbx
.LBB17_67:
	movq	(%rbx), %rcx
	movq	16(%rbx), %r12
	subq	%r12, %rcx
	cmpq	$11, %rcx
	jbe	.LBB17_189
.LBB17_68:
	movq	8(%rbx), %rcx
	leaq	core::ops::function::FnOnce::call_once(%rip), %rdx
	movq	%rdx, (%rcx,%r12)
	movl	%eax, 8(%rcx,%r12)
	addq	$12, %r12
	movq	%r12, 16(%rbx)
.LBB17_69:
	movq	248(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB17_71
	movq	256(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %rdi
.LBB17_71:
	movq	%r13, 304(%rsp)
	movq	8(%r13), %rbx
	movl	152(%rbp), %eax
	testb	%al, %al
	jns	.LBB17_73
	movq	48(%r15), %r8
	movq	56(%r15), %rax
	leaq	(%r8,%rax,8), %r9
	movb	$0, 96(%rsp)
	leaq	96(%rsp), %rax
	leaq	31(%rsp), %r10
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	32(%rsp), %rdi
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	152(%rbp), %eax
.LBB17_73:
	movq	%rbp, 296(%rsp)
	testb	$4, %al
	je	.LBB17_79
	movq	56(%r15), %r13
	testq	%r13, %r13
	je	.LBB17_79
	movq	48(%r15), %rbp
	shlq	$3, %r13
	xorl	%r14d, %r14d
	leaq	96(%rsp), %r12
	jmp	.LBB17_77
	.p2align	4
.LBB17_76:
	addq	$8, %r14
	cmpq	%r14, %r13
	je	.LBB17_79
.LBB17_77:
	movq	(%rbp,%r14), %rax
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB17_76
	movq	%rbx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	%r12, %rsi
	callq	*%rcx
	movq	16(%rsp), %rdi
	jmp	.LBB17_76
.LBB17_79:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%r15, 88(%rsp)
	je	.LBB17_91
	movq	%rdi, %r8
	movq	%rbx, %r12
	shrq	$32, %r12
	movl	32(%rsp), %eax
	movl	%eax, %edi
	notl	%edi
	cmpl	$1, %ecx
	movq	296(%rsp), %rbp
	jne	.LBB17_94
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_188
	decq	%rsi
	movq	80(%rbp), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%rbp, %r9
	movl	8(%rax,%rcx), %ebp
	movdqu	(%rax,%rdx), %xmm0
	movdqu	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r9)
	cmpq	%rdi, %rsi
	je	.LBB17_86
	jbe	.LBB17_200
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB17_86
	movq	8(%r8), %rcx
	notl	%eax
	leaq	(%rax,%rax,2), %rax
	movl	32(%rsp), %edx
	movl	%edx, (%rcx,%rax,8)
.LBB17_86:
	movq	56(%rsp), %r13
	movq	88(%r13), %r14
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 32(%rsp)
	cmpq	72(%r13), %r14
	jne	.LBB17_88
	leaq	72(%r13), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	16(%rsp), %r8
.LBB17_88:
	movq	80(%r13), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movl	%ebx, (%rax,%rcx)
	movl	%r12d, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	incq	%r14
	movq	%r14, 88(%r13)
	movl	144(%r13), %esi
	movl	148(%r13), %edi
	movq	8(%r8), %rax
	movl	%ebx, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	32(%rsp), %edx
	movl	%edx, (%rax,%rcx,8)
	movl	%ebp, 4(%rax,%rcx,8)
	movq	%rsi, 232(%rsp)
	movl	%esi, 8(%rax,%rcx,8)
	movl	%edi, 76(%rsp)
	movl	%edi, 12(%rax,%rcx,8)
	movq	(%r15), %rax
	movq	224(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	40(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	movl	%ebp, 12(%rsp)
	jae	.LBB17_122
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB17_122
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	24(%rsi), %rbp
	jmp	.LBB17_123
.LBB17_91:
	movq	(%r15), %rax
	movq	224(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	40(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	jae	.LBB17_114
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB17_114
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$4, %rbp
	addq	24(%rsi), %rbp
	jmp	.LBB17_115
.LBB17_94:
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_188
	movq	256(%r8), %rax
	movq	%rax, 216(%rsp)
	decq	%rsi
	movq	80(%rbp), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r9d
	movdqu	(%rax,%rdx), %xmm0
	movdqu	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%rbp)
	cmpq	%rdi, %rsi
	movq	56(%rsp), %r13
	je	.LBB17_99
	jbe	.LBB17_200
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB17_99
	movq	8(%r8), %rcx
	notl	%eax
	leaq	(%rax,%rax,2), %rax
	movl	32(%rsp), %edx
	movl	%edx, (%rcx,%rax,8)
.LBB17_99:
	leaq	96(%rsp), %rdi
	movq	40(%rsp), %rsi
	movl	%r9d, 40(%rsp)
	movl	%r9d, %edx
	movq	288(%rsp), %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	104(%rsp), %eax
	movl	%eax, 12(%rsp)
	movq	88(%r13), %r14
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 32(%rsp)
	cmpq	72(%r13), %r14
	jne	.LBB17_101
	leaq	72(%r13), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB17_101:
	movq	80(%r13), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movl	%ebx, (%rax,%rcx)
	movl	%r12d, 4(%rax,%rcx)
	movl	12(%rsp), %r9d
	movl	%r9d, 8(%rax,%rcx)
	incq	%r14
	movq	%r14, 88(%r13)
	movl	144(%r13), %edi
	movl	148(%r13), %r8d
	movq	16(%rsp), %rsi
	movq	8(%rsi), %rax
	movl	%ebx, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	32(%rsp), %edx
	movl	%edx, (%rax,%rcx,8)
	movl	%r9d, 4(%rax,%rcx,8)
	movq	%rdi, 232(%rsp)
	movl	%edi, 8(%rax,%rcx,8)
	movl	%r8d, 76(%rsp)
	movl	%r8d, 12(%rax,%rcx,8)
	movl	96(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB17_133
	notl	%ecx
	leaq	(%rcx,%rcx,2), %rax
	shlq	$3, %rax
	addq	8(%rsi), %rax
	xorl	%edi, %edi
	cmpq	%rcx, 16(%rsi)
	jbe	.LBB17_107
	movl	16(%rax), %esi
	cmpl	100(%rsp), %esi
	movl	40(%rsp), %r8d
	jne	.LBB17_108
	movl	(%rax), %edi
	movl	8(%rax), %ecx
	movl	12(%rax), %edx
	jmp	.LBB17_108
.LBB17_114:
	xorl	%ebp, %ebp
.LBB17_115:
	movq	24(%r15), %r13
	movq	16(%r15), %rcx
	movq	%rcx, 56(%rsp)
	testb	%al, %al
	je	.LBB17_120
	movl	12(%rsp), %eax
	movl	%eax, %r12d
	notl	%r12d
	leaq	52(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	48(%rsp), %ecx
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	je	.LBB17_121
.LBB17_117:
	shlq	$4, %r13
	movq	56(%rsp), %rdi
	movl	12(%rsp), %r14d
	movl	%ecx, %r15d
	movq	80(%rsp), %rbp
	movq	%rbx, 64(%rsp)
	movq	40(%rsp), %rbx
	.p2align	4
.LBB17_118:
	leaq	16(%rdi), %r12
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	64(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB17_118
	movq	296(%rsp), %rbp
	movq	88(%rsp), %r15
	movq	64(%rsp), %rbx
	jmp	.LBB17_145
.LBB17_122:
	xorl	%ebp, %ebp
.LBB17_123:
	movq	24(%r15), %r13
	movq	16(%r15), %rcx
	movq	%rcx, 224(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, %r12d
	notl	%r12d
	testb	%al, %al
	movq	%rbx, 64(%rsp)
	je	.LBB17_125
	leaq	52(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	48(%rsp), %ecx
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	jne	.LBB17_126
	jmp	.LBB17_129
.LBB17_120:
	movl	12(%rsp), %eax
	movl	%eax, %r12d
	notl	%r12d
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	52(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	48(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	jne	.LBB17_117
.LBB17_121:
	movq	296(%rsp), %rbp
	jmp	.LBB17_145
.LBB17_125:
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	52(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%rbp), %rax
	movl	48(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	40(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	testq	%r13, %r13
	je	.LBB17_129
.LBB17_126:
	shlq	$4, %r13
	movq	224(%rsp), %rdi
	movl	12(%rsp), %r14d
	movl	%ecx, %r15d
	movq	80(%rsp), %rbp
	movq	40(%rsp), %rbx
	.p2align	4
.LBB17_127:
	leaq	16(%rdi), %r12
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	64(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r13
	jne	.LBB17_127
	movq	88(%rsp), %r15
.LBB17_129:
	movq	56(%rsp), %rbp
	movq	64(%rsp), %rbx
	jmp	.LBB17_145
.LBB17_107:
	movl	40(%rsp), %r8d
.LBB17_108:
	movl	%edi, (%rax)
	movl	%r8d, 4(%rax)
	movl	%ecx, 8(%rax)
	movl	%edx, 12(%rax)
	notl	%edi
	cmpl	%ecx, 144(%rbp)
	jne	.LBB17_111
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_204
	movq	80(%rbp), %rax
	jmp	.LBB17_132
.LBB17_111:
	cmpl	%ecx, 144(%r13)
	jne	.LBB17_130
	movq	88(%r13), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_204
	movq	80(%r13), %rax
	jmp	.LBB17_132
.LBB17_130:
	movl	%ecx, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	216(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_204
	addq	%rcx, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
.LBB17_132:
	shlq	$4, %rdi
	movl	%r8d, 8(%rax,%rdi)
.LBB17_133:
	movq	(%r15), %rax
	movq	224(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rax), %eax
	movq	288(%rsp), %rsi
	cmpq	64(%rsi), %rcx
	jae	.LBB17_137
	movq	56(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB17_137
	notq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	shlq	$4, %r15
	addq	24(%rsi), %r15
	jmp	.LBB17_138
.LBB17_137:
	xorl	%r15d, %r15d
.LBB17_138:
	movq	88(%rsp), %rcx
	movq	24(%rcx), %r13
	movq	16(%rcx), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rbx, %r14
	movl	%r9d, %r12d
	notl	%r12d
	testb	%al, %al
	je	.LBB17_140
	leaq	52(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
	movl	48(%rsp), %ebp
	jmp	.LBB17_141
.LBB17_140:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r15), %rdi
	leaq	52(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movq	32(%r15), %rax
	movl	48(%rsp), %ebp
	movl	%ebp, (%rax,%r12,4)
.LBB17_141:
	movq	40(%r15), %rax
	movl	%ebp, (%rax,%r12,4)
	testq	%r13, %r13
	movq	40(%rsp), %rdi
	movq	80(%rsp), %rbx
	movq	288(%rsp), %rax
	movq	%r14, %r12
	movl	12(%rsp), %r15d
	je	.LBB17_144
	shlq	$4, %r13
	.p2align	4
.LBB17_143:
	leaq	16(%rdi), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, %r14
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	movq	%r12, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r14, %rax
	movq	40(%rsp), %rdi
	addq	$-16, %r13
	jne	.LBB17_143
.LBB17_144:
	movq	88(%rsp), %r15
	movq	56(%rsp), %rbp
	movq	%r12, %rbx
.LBB17_145:
	movq	40(%r15), %r12
	movl	152(%rbp), %eax
	testq	%r12, %r12
	movq	16(%rsp), %rdi
	je	.LBB17_152
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB17_152
	movq	32(%r15), %r13
	shlq	$3, %r12
	xorl	%r14d, %r14d
	leaq	96(%rsp), %r15
	jmp	.LBB17_149
	.p2align	4
.LBB17_148:
	addq	$8, %r14
	cmpq	%r14, %r12
	je	.LBB17_151
.LBB17_149:
	movq	(%r13,%r14), %rax
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB17_148
	movq	%rbx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	%r15, %rsi
	callq	*%rcx
	movq	16(%rsp), %rdi
	jmp	.LBB17_148
.LBB17_151:
	movl	152(%rbp), %eax
	movq	88(%rsp), %r15
.LBB17_152:
	testb	$32, %al
	movq	304(%rsp), %r14
	je	.LBB17_154
	movq	32(%r15), %r8
	movq	40(%r15), %rax
	leaq	(%r8,%rax,8), %r9
	movb	$0, 96(%rsp)
	leaq	96(%rsp), %rax
	leaq	31(%rsp), %r10
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB17_154:
	leaq	96(%rsp), %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::archetype::ArchetypeAfterBundleInsert::iter_inserted@GOTPCREL(%rip)
	movl	152(%rbp), %eax
	testb	$2, %al
	movq	16(%rsp), %rdi
	movl	12(%rsp), %r12d
	je	.LBB17_165
	movq	%rbp, 56(%rsp)
	movq	96(%rsp), %rcx
	movq	104(%rsp), %r15
	movq	112(%rsp), %rax
	movq	120(%rsp), %r13
	leaq	336(%rsp), %r12
	.p2align	4
.LBB17_156:
	testq	%rcx, %rcx
	je	.LBB17_159
	cmpq	%r15, %rcx
	je	.LBB17_159
	leaq	8(%rcx), %r14
	movq	%rax, %rbp
	jmp	.LBB17_162
	.p2align	4
.LBB17_159:
	testq	%rax, %rax
	je	.LBB17_164
	cmpq	%r13, %rax
	je	.LBB17_164
	leaq	8(%rax), %rbp
	xorl	%r14d, %r14d
	movq	%rax, %rcx
	movq	%rbp, %rax
.LBB17_162:
	movq	(%rcx), %rdx
	movq	64(%rdi), %rcx
	leaq	(%rdx,%rdx,8), %rsi
	shlq	$5, %rsi
	movq	256(%rcx,%rsi), %r8
	movq	%r14, %rcx
	testq	%r8, %r8
	je	.LBB17_156
	movq	%rbx, 336(%rsp)
	movq	%rdx, 344(%rsp)
	movb	$0, 352(%rsp)
	movq	%r12, %rsi
	callq	*%r8
	movq	16(%rsp), %rdi
	movq	%rbp, %rax
	movq	%r14, %rcx
	jmp	.LBB17_156
.LBB17_164:
	movq	56(%rsp), %rax
	movl	152(%rax), %eax
	movq	304(%rsp), %r14
	movl	12(%rsp), %r12d
	movq	88(%rsp), %r15
.LBB17_165:
	testb	$64, %al
	je	.LBB17_186
	leaq	248(%rsp), %r13
	movq	%rdi, %rax
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rax, %r15
	callq	*bevy_ecs::archetype::ArchetypeAfterBundleInsert::iter_inserted@GOTPCREL(%rip)
	movb	$0, 39(%rsp)
	movq	$1, 464(%rsp)
	movq	%rbx, 240(%rsp)
	movq	%rbx, 472(%rsp)
	incl	1460(%r15)
	movl	$1, %esi
	movq	456(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB17_185
	movq	%rax, %rbx
	movl	%r12d, 12(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 480(%rsp)
	movq	248(%rsp), %r15
	movq	256(%rsp), %r12
	movq	%r13, %rcx
	movq	264(%rsp), %r13
	movq	272(%rsp), %rbp
	leaq	480(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	464(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rcx, 112(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	472(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	31(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	%rax, 144(%rsp)
	leaq	39(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax,%rcx), %rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	24(%rbx), %rsi
	leaq	96(%rsp), %r14
	movq	%r14, 312(%rsp)
	movq	%rax, 336(%rsp)
	addq	$16, %rax
	movq	%rax, 344(%rsp)
	movq	%rcx, 352(%rsp)
	movw	%dx, 360(%rsp)
	leaq	336(%rsp), %rdi
	leaq	312(%rsp), %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
	cmpl	$0, 240(%rsp)
	je	.LBB17_176
	cmpq	$0, 88(%rbx)
	je	.LBB17_176
	movq	240(%rsp), %rcx
	movabsq	$-7046029256521940991, %rdx
	imulq	%rcx, %rdx
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
.LBB17_170:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB17_173
.LBB17_171:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB17_175
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB17_171
.LBB17_173:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB17_176
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB17_170
.LBB17_175:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	notl	%edi
	movq	-8(%rax,%r10,8), %rsi
	movq	%r14, 312(%rsp)
	movq	%rcx, 336(%rsp)
	addq	$16, %rcx
	movq	%rcx, 344(%rsp)
	movq	%rdx, 352(%rsp)
	movw	%di, 360(%rsp)
	leaq	336(%rsp), %rdi
	leaq	312(%rsp), %rdx
	callq	hashbrown::raw::RawIterRange<T>::fold_impl
.LBB17_176:
	movq	%rbx, 336(%rsp)
	movq	%r14, 344(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 352(%rsp)
	testq	%r15, %r15
	je	.LBB17_180
	cmpq	%r12, %r15
	je	.LBB17_180
	subq	%r15, %r12
	shrq	$3, %r12
	xorl	%r14d, %r14d
	leaq	336(%rsp), %rbx
	.p2align	4
.LBB17_179:
	movq	(%r15,%r14,8), %rsi
	movq	%rbx, %rdi
	callq	core::iter::adapters::copied::copy_fold::{{closure}}
	incq	%r14
	cmpq	%r14, %r12
	jne	.LBB17_179
.LBB17_180:
	testq	%r13, %r13
	je	.LBB17_184
	cmpq	%rbp, %r13
	je	.LBB17_184
	subq	%r13, %rbp
	shrq	$3, %rbp
	xorl	%r14d, %r14d
	leaq	336(%rsp), %rbx
	.p2align	4
.LBB17_183:
	movq	(%r13,%r14,8), %rsi
	movq	%rbx, %rdi
	callq	core::iter::adapters::copied::copy_fold::{{closure}}
	incq	%r14
	cmpq	%r14, %rbp
	jne	.LBB17_183
.LBB17_184:
	movq	304(%rsp), %r14
	movl	12(%rsp), %r12d
.LBB17_185:
	movq	16(%rsp), %rdi
.LBB17_186:
	movl	32(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	%r12d, 20(%r14)
	movq	232(%rsp), %rax
	movl	%eax, 24(%r14)
	movl	76(%rsp), %eax
	movl	%eax, 28(%r14)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.19(%rip), %rsi
	movq	%rdi, %rbx
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
	addq	$488, %rsp
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
.LBB17_187:
	.cfi_def_cfa_offset 544
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.18(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB17_188:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB17_189:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %r14
	movl	%eax, %ebp
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	16(%rsp), %rdi
	movl	%ebp, %eax
	movq	%r14, %rbp
	jmp	.LBB17_68
.LBB17_190:
	movl	$16, %r8d
	movq	%r15, %rcx
.LBB17_191:
	addq	%r8, %rdi
	andq	%rdx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %r8
	testl	%esi, %esi
	jne	.LBB17_34
	jmp	.LBB17_191
.LBB17_192:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rax,%rsi), %edi
	jmp	.LBB17_35
.LBB17_193:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.45(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB17_194:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.42(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB17_195:
	leaq	632(%r10), %rdi
	leaq	664(%r10), %rdx
	movl	$1, %esi
	movq	%rcx, %r14
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	632(%rax), %r15
	movq	16(%rsp), %rax
	movq	640(%rax), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	movabsq	$-6209422631762690009, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movq	16(%rsp), %r10
	movq	%r14, %rcx
	movzbl	(%r15,%rax), %edx
	andl	$1, %edx
	subq	%rdx, 648(%r10)
	leaq	-16(%rax), %rdx
	andq	%r12, %rdx
	movq	80(%rsp), %r12
	movb	$84, (%r15,%rax)
	movb	$84, 16(%r15,%rdx)
	incq	656(%r10)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	%rbx, -24(%r15,%rax,8)
	movabsq	$-6209422631762690009, %rdx
	movq	%rdx, -16(%r15,%rax,8)
	movq	%rbp, -8(%r15,%rax,8)
	jmp	.LBB17_37
.LBB17_196:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.40(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB17_197:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.35(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	$8, 112(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 120(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.37(%rip), %rsi
	leaq	96(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB17_198:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.29(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_199:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.30(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_200:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.47(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_201:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.43(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_202:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.44(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_203:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.28(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_204:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.33(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_205:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.38(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB17_206:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.39(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end17:
	.size	entity_insert, .Lfunc_end17-entity_insert
	.cfi_endproc

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smallvec-1.15.1/src/lib.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 92

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.asciz	"\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.2,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	"called `Result::unwrap()` on an `Err` value"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 43

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.asciz	"/home/james/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 114

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.3
	.asciz	"q\000\000\000\000\000\000\000\013\b\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.5,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.ascii	"capacity overflow"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 17

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.asciz	"/home/james/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 118

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.6
	.asciz	"u\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	core::fmt::num::<impl core::fmt::Debug for usize>::fmt
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<&T as core::fmt::Debug>::fmt
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.10,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.ascii	"Layout"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 6

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.rodata.cst4,"aM",@progbits,4
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.ascii	"size"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 4

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.12,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.12,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.12:
	.ascii	"align"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.12, 5

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.13,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.13:
	.ascii	"CapacityOverflow"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.13, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.14,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.14:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<&T as core::fmt::Debug>::fmt
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.14, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.15,@object
	.section	.rodata.cst8,"aM",@progbits,8
.Lanon.83959b72e5b8236df4a28836bf490603.15:
	.ascii	"AllocErr"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.15, 8

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.16,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.16,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.16:
	.ascii	"layout"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.16, 6

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.17,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.17:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.17, 103

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.18,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.18:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.17
	.asciz	"f\000\000\000\000\000\000\000\033\005\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.18, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.19,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.19:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.17
	.asciz	"f\000\000\000\000\000\000\000)\b\000\000\024\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.19, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.20,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.20:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.20, 106

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.21,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.21:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.20
	.asciz	"i\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.21, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.22,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.22:
	.quad	7683019710262740564
	.quad	-6209422631762690009
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.22, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.23,@object
.Lanon.83959b72e5b8236df4a28836bf490603.23:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.23, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.24,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.24:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.24, 98

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.25,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.25:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"a\000\000\000\000\000\000\000\270\001\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.25, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.26,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.26:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"a\000\000\000\000\000\000\000\260\001\000\000B\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.26, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.27,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.27:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/bundle/insert.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.27, 100

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.28,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.28:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.27
	.asciz	"c\000\000\000\000\000\000\000i\000\000\0007\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.28, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.29,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.29:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.27
	.asciz	"c\000\000\000\000\000\000\000I\000\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.29, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.30,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.30:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.27
	.asciz	"c\000\000\000\000\000\000\000R\000\000\0003\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.30, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.31,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.31:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.31, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.32,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.32:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000S\002\000\000\027\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.32, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.33,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.33:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000C\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.33, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.34,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.34,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.34:
	.ascii	"mid > len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.34, 9

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.35,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.35:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.34
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.35, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.36,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.36:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.36, 104

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.37,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.37:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"g\000\000\000\000\000\000\000\377\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.37, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.38,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.38:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.38, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.39,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.39:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"g\000\000\000\000\000\000\000\000\003\000\000/\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.39, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.40,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.40,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.40:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"g\000\000\000\000\000\000\000\374\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.40, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.41,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.41,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.41:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.36
	.asciz	"g\000\000\000\000\000\000\000\375\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.41, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.42,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.42,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.42:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000a\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.42, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.43,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.43,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.43:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000b\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.43, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.44,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.44,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.44:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000b\003\000\000,\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.44, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.45,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.45,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.45:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000^\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.45, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.46,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.46,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.46:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000_\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.46, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.47,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.47,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.47:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.31
	.asciz	"_\000\000\000\000\000\000\000o\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.47, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.48,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.48:
	.quad	-3736638910109704955
	.quad	-7168260330011623011
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.48, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.49,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.49:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.49, 105

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.50,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.50,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.50:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.49
	.asciz	"h\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.50, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.51,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.51:
	.zero	16,255
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.51, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.52,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.52,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.52:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.51
	.zero	24
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.52, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.53,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.53,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.53:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"[\000\000\000\000\000\000\000V\001\000\000.\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.53, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.54,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.54,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.54:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"[\000\000\000\000\000\000\000E\001\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.54, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.55,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.55,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.55:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"[\000\000\000\000\000\000\000\322\004\000\000\016\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.55, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.56,@object
	.section	.rodata.cst32,"aM",@progbits,32
.Lanon.83959b72e5b8236df4a28836bf490603.56:
	.ascii	"assertion failed: new_cap >= len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.56, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.57,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.57,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.57:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"[\000\000\000\000\000\000\000\235\004\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.57, 24

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

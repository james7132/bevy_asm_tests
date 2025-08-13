	.file	"entity_insert_sparse.6f6c396d37a1734e-cgu.0"
	.section	".text.<&T as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<&T as core::fmt::Debug>::fmt,@function
<&T as core::fmt::Debug>::fmt:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	(%rdi), %r9
	movq	%r9, (%rsp)
	addq	$8, %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
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
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	$5
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	*core::fmt::Formatter::debug_struct_field2_finish@GOTPCREL(%rip)
	addq	$56, %rsp
	.cfi_adjust_cfa_offset -56
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	<&T as core::fmt::Debug>::fmt, .Lfunc_end0-<&T as core::fmt::Debug>::fmt
	.cfi_endproc

	.section	".text.<&T as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<&T as core::fmt::Debug>::fmt,@function
<&T as core::fmt::Debug>::fmt:
	.cfi_startproc
	movq	(%rdi), %rdi
	jmpq	*<core::ptr::alignment::Alignment as core::fmt::Debug>::fmt@GOTPCREL(%rip)
.Lfunc_end1:
	.size	<&T as core::fmt::Debug>::fmt, .Lfunc_end1-<&T as core::fmt::Debug>::fmt
	.cfi_endproc

	.section	".text.core::fmt::num::<impl core::fmt::Debug for usize>::fmt","ax",@progbits
	.p2align	4
	.type	core::fmt::num::<impl core::fmt::Debug for usize>::fmt,@function
core::fmt::num::<impl core::fmt::Debug for usize>::fmt:
	.cfi_startproc
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
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
	.zero	16,58
.LCPI3_1:
	.zero	16
	.section	.text.core::ops::function::FnOnce::call_once,"ax",@progbits
	.p2align	4
	.type	core::ops::function::FnOnce::call_once,@function
core::ops::function::FnOnce::call_once:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
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
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	addq	$4, (%rdx)
	testq	%rsi, %rsi
	je	.LBB3_64
	movq	%rsi, %r14
	movabsq	$-2366884262109036024, %rax
	movabsq	$8471664629555459459, %rcx
	movl	(%rdi), %edx
	movl	%edx, 20(%rsp)
	leaq	56(%rsi), %r15
	leaq	1440(%rsi), %rdx
	movq	%r15, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	cmpq	$0, 104(%rsi)
	je	.LBB3_9
	movq	80(%r14), %rsi
	movq	88(%r14), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI3_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB3_3:
	andq	%rdi, %r9
	movdqu	(%rsi,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	je	.LBB3_7
.LBB3_4:
	rep		bsfl	%r10d, %r11d
	addq	%r9, %r11
	andq	%rdi, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r11
	cmpq	%rax, -24(%rsi,%r11,8)
	jne	.LBB3_6
	cmpq	%rcx, -16(%rsi,%r11,8)
	je	.LBB3_53
.LBB3_6:
	leal	-1(%r10), %r11d
	andw	%r10w, %r11w
	movl	%r11d, %r10d
	jne	.LBB3_4
.LBB3_7:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB3_9
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB3_3
.LBB3_9:
	movzbl	152(%r14), %esi
	movq	184(%r14), %rsi
	movq	192(%r14), %rdi
	xorl	%r9d, %r9d
	movdqa	.LCPI3_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r10
.LBB3_10:
	andq	%rdi, %r10
	movdqu	(%rsi,%r10), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB3_14
.LBB3_11:
	rep		bsfl	%r11d, %ebx
	addq	%r10, %rbx
	andq	%rdi, %rbx
	movq	%rbx, %r8
	negq	%r8
	imulq	$112, %r8, %r8
	cmpq	%rax, -112(%rsi,%r8)
	jne	.LBB3_13
	cmpq	%rcx, -104(%rsi,%r8)
	je	.LBB3_16
.LBB3_13:
	leal	-1(%r11), %r8d
	andw	%r11w, %r8w
	movl	%r8d, %r11d
	jne	.LBB3_11
.LBB3_14:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB3_20
	addq	%r9, %r10
	addq	$16, %r10
	addq	$16, %r9
	jmp	.LBB3_10
.LBB3_53:
	leaq	(%rsi,%r11,8), %rax
	movq	-8(%rax), %rcx
.Ltmp0:
	movl	$8, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movq	%rcx, 8(%rsp)
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
.Ltmp1:
.LBB3_54:
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_56
.LBB3_55:
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB3_56:
	movb	$0, 64(%rsp)
	incl	1460(%r14)
	movq	%r14, %r13
	leaq	896(%r14), %rdi
	movq	8(%rsp), %rsi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB3_63
	movq	(%rax), %rbp
	movq	24(%rax), %rbx
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	leaq	16(%rbp), %r14
	leaq	208(%rsp), %r15
	jmp	.LBB3_58
	.p2align	4
.LBB3_62:
	leal	-1(%rax), %r12d
	rep		bsfl	%eax, %ecx
	andl	%eax, %r12d
	shll	$4, %ecx
	movq	%rbp, %rax
	subq	%rcx, %rax
	movq	-16(%rax), %rcx
	movq	-8(%rax), %rax
	movq	%rcx, 176(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 184(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movq	%r13, %rdi
	leaq	176(%rsp), %rsi
	leaq	20(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	*%rax
	decq	%rbx
	movl	%r12d, %eax
.LBB3_58:
	testw	%ax, %ax
	jne	.LBB3_62
	testq	%rbx, %rbx
	je	.LBB3_63
	.p2align	4
.LBB3_60:
	movdqa	(%r14), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$-256, %rbp
	addq	$16, %r14
	cmpl	$65535, %eax
	je	.LBB3_60
	notl	%eax
	jmp	.LBB3_62
.LBB3_63:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.21(%rip), %rsi
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
.LBB3_64:
	addq	$472, %rsp
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
.LBB3_16:
	.cfi_def_cfa_offset 528
	addq	%rsi, %r8
	imulq	$112, %rbx, %r10
	sarq	$4, %r10
	movabsq	$7905747460161236407, %r9
	imulq	%r10, %r9
	leaq	-16(%r9), %r10
	andq	%rdi, %r10
	movdqu	(%rsi,%r10), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %edi
	movdqu	(%rsi,%r9), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r11d
	movw	$31, %bx
	bsrw	%di, %bx
	xorl	$15, %ebx
	orl	$65536, %r11d
	rep		bsfl	%r11d, %r11d
	addl	%ebx, %r11d
	movb	$-128, %dil
	cmpw	$15, %r11w
	ja	.LBB3_18
	incq	200(%r14)
	movb	$-1, %dil
.LBB3_18:
	movb	%dil, (%rsi,%r9)
	movb	%dil, 16(%rsi,%r10)
	decq	208(%r14)
	movq	-96(%r8), %rsi
	cmpq	$2, %rsi
	jne	.LBB3_19
.LBB3_20:
	movq	(%rdx), %rsi
	leaq	1(%rsi), %r12
	movq	%r12, (%rdx)
	movw	$256, 128(%rsp)
	movq	$1, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rcx, 80(%rsp)
	movq	$1, 104(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 112(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
.Ltmp4:
	leaq	176(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%rsi, 8(%rsp)
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp5:
	movq	72(%r14), %r13
	subq	%r13, %r12
	jbe	.LBB3_22
	movq	(%r15), %rax
	subq	%r13, %rax
	movq	%r13, %rcx
	cmpq	%rax, %r12
	ja	.LBB3_24
.LBB3_26:
	movq	64(%r14), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	8(%rsp), %rsi
	notq	%rsi
	addq	%r13, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB3_27:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB3_27
	subq	%rdi, %rcx
	movq	%rcx, 72(%r14)
	jmp	.LBB3_29
.LBB3_22:
	movq	64(%r14), %rax
.LBB3_29:
	movq	8(%rsp), %rcx
	leaq	(%rcx,%rcx,8), %r13
	shlq	$5, %r13
	leaq	(%rax,%r13), %r15
	cmpl	$2, (%rax,%r13)
	je	.LBB3_31
.Ltmp12:
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp13:
.LBB3_31:
	leaq	176(%rsp), %rsi
	movl	$288, %edx
	movq	%r15, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	leaq	80(%r14), %rdi
.Ltmp15:
	movabsq	$-2366884262109036024, %rsi
	movabsq	$8471664629555459459, %rdx
	movq	8(%rsp), %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
.Ltmp16:
	movq	40(%rsp), %rbx
	cmpq	24(%rsp), %rbx
	jne	.LBB3_34
.Ltmp17:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.48(%rip), %rsi
	leaq	24(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp18:
.LBB3_34:
	movq	32(%rsp), %rax
	movq	8(%rsp), %rsi
	movq	%rsi, (%rax,%rbx,8)
	incq	%rbx
	movq	%rbx, 40(%rsp)
	movq	$0, 64(%rsp)
	movq	$8, 72(%rsp)
	movq	$0, 80(%rsp)
	movdqu	.Lanon.83959b72e5b8236df4a28836bf490603.50(%rip), %xmm0
	movdqu	%xmm0, 88(%rsp)
	movdqu	.Lanon.83959b72e5b8236df4a28836bf490603.50+16(%rip), %xmm1
	movdqu	%xmm1, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$8, 128(%rsp)
	movq	$0, 136(%rsp)
	movdqu	%xmm0, 144(%rsp)
	movdqu	%xmm1, 160(%rsp)
	movq	48(%rsp), %rdi
.Ltmp20:
	leaq	64(%rsp), %rdx
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
.Ltmp21:
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_37
	decq	%rax
	movq	%rax, 40(%rsp)
.LBB3_37:
	movq	48(%rsp), %rax
	movq	8(%rax), %rax
	leaq	(%rax,%r13), %r12
	movups	160(%rsp), %xmm0
	movaps	%xmm0, 272(%rsp)
	movups	144(%rsp), %xmm0
	movaps	%xmm0, 256(%rsp)
	movups	128(%rsp), %xmm0
	movaps	%xmm0, 240(%rsp)
	movups	64(%rsp), %xmm0
	movups	80(%rsp), %xmm1
	movups	96(%rsp), %xmm2
	movups	112(%rsp), %xmm3
	movaps	%xmm3, 224(%rsp)
	movaps	%xmm2, 208(%rsp)
	movaps	%xmm1, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	leaq	(%rax,%r13), %r15
	addq	$72, %r15
.Ltmp26:
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp27:
	subq	$-128, %r12
.Ltmp32:
	movq	%r12, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp33:
	movaps	272(%rsp), %xmm0
	movups	%xmm0, 96(%r15)
	movaps	256(%rsp), %xmm0
	movups	%xmm0, 80(%r15)
	movaps	240(%rsp), %xmm0
	movups	%xmm0, 64(%r15)
	movdqa	176(%rsp), %xmm0
	movdqa	192(%rsp), %xmm1
	movdqa	208(%rsp), %xmm2
	movdqa	224(%rsp), %xmm3
	movdqu	%xmm3, 48(%r15)
	movdqu	%xmm2, 32(%r15)
	movdqu	%xmm1, 16(%r15)
	movdqu	%xmm0, (%r15)
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_55
	jmp	.LBB3_56
.LBB3_19:
	movups	-88(%r8), %xmm0
	movdqu	-72(%r8), %xmm1
	movdqu	-56(%r8), %xmm2
	movdqu	-40(%r8), %xmm3
	movdqu	%xmm3, 232(%rsp)
	movdqu	%xmm2, 216(%rsp)
	movdqu	%xmm1, 200(%rsp)
	movups	%xmm0, 184(%rsp)
	movdqu	-24(%r8), %xmm0
	movq	-8(%r8), %rax
	movq	%rsi, 176(%rsp)
	movdqu	%xmm0, 248(%rsp)
	movq	%rax, 264(%rsp)
.Ltmp2:
	leaq	176(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
.Ltmp3:
	jmp	.LBB3_54
.LBB3_24:
.Ltmp6:
	movl	$8, %ecx
	movl	$288, %r8d
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp7:
	movq	72(%r14), %rcx
	jmp	.LBB3_26
.LBB3_41:
.Ltmp8:
	movq	%rax, %rbx
.Ltmp9:
	leaq	176(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp10:
	jmp	.LBB3_50
.LBB3_42:
.Ltmp11:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB3_40:
.Ltmp14:
	movq	%rax, %rbx
	leaq	176(%rsp), %rsi
	movl	$288, %edx
	movq	%r15, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB3_50
.LBB3_45:
.Ltmp34:
	movq	%rax, %rbx
	jmp	.LBB3_46
.LBB3_43:
.Ltmp28:
	movq	%rax, %rbx
	subq	$-128, %r12
.Ltmp29:
	movq	%r12, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp30:
.LBB3_46:
	movaps	272(%rsp), %xmm0
	movups	%xmm0, 96(%r15)
	movaps	256(%rsp), %xmm0
	movups	%xmm0, 80(%r15)
	movaps	240(%rsp), %xmm0
	movups	%xmm0, 64(%r15)
	movdqa	176(%rsp), %xmm0
	movdqa	192(%rsp), %xmm1
	movdqa	208(%rsp), %xmm2
	movdqa	224(%rsp), %xmm3
	movdqu	%xmm3, 48(%r15)
	movdqu	%xmm2, 32(%r15)
	movdqu	%xmm1, 16(%r15)
	movdqu	%xmm0, (%r15)
	jmp	.LBB3_50
.LBB3_44:
.Ltmp31:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB3_47:
.Ltmp22:
	movq	%rax, %rbx
.Ltmp23:
	leaq	64(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
.Ltmp24:
	jmp	.LBB3_50
.LBB3_48:
.Ltmp25:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB3_49:
.Ltmp19:
	movq	%rax, %rbx
.LBB3_50:
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_52
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB3_52:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	core::ops::function::FnOnce::call_once, .Lfunc_end3-core::ops::function::FnOnce::call_once
	.cfi_endproc
	.section	.gcc_except_table.core::ops::function::FnOnce::call_once,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp1
	.byte	0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp4
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin0
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin0
	.uleb128 .Ltmp15-.Ltmp13
	.byte	0
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp15
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp20
	.uleb128 .Ltmp22-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin0
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp28-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin0
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin0
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp11-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp10-.Lfunc_begin0
	.uleb128 .Ltmp29-.Ltmp10
	.byte	0
	.byte	0
	.uleb128 .Ltmp29-.Lfunc_begin0
	.uleb128 .Ltmp30-.Ltmp29
	.uleb128 .Ltmp31-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp23-.Lfunc_begin0
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp24-.Lfunc_begin0
	.uleb128 .Lfunc_end3-.Ltmp24
	.byte	0
	.byte	0
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_5
	movl	$1, %r13d
	subq	%rax, %r13
	movq	$-16, %r15
	xorl	%r12d, %r12d
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %rbp
	jmp	.LBB4_2
	.p2align	4
.LBB4_4:
	addq	$-16, %r15
	incq	%r13
	addq	$16, %r12
	cmpq	$1, %r13
	je	.LBB4_5
.LBB4_2:
	movq	(%rbx,%r12), %rax
	lock		decq	(%rax)
	jne	.LBB4_4
	leaq	(%rbx,%r12), %rdi
	#MEMBARRIER
.Ltmp35:
	callq	*%rbp
.Ltmp36:
	jmp	.LBB4_4
.LBB4_5:
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_16
	shlq	$4, %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
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
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_16:
	.cfi_def_cfa_offset 64
	addq	$8, %rsp
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
.LBB4_7:
	.cfi_def_cfa_offset 64
.Ltmp37:
	movq	%rax, (%rsp)
	testq	%r13, %r13
	jne	.LBB4_8
.LBB4_12:
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_14
	shlq	$4, %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB4_14:
	movq	(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB4_8:
	movq	%rbx, %r12
	subq	%r15, %r12
	negq	%r13
	jmp	.LBB4_9
	.p2align	4
.LBB4_11:
	addq	$16, %r12
	decq	%r13
	je	.LBB4_12
.LBB4_9:
	movq	(%r12), %rax
	lock		decq	(%rax)
	jne	.LBB4_11
	#MEMBARRIER
.Ltmp38:
	movq	%r12, %rdi
	callq	*%rbp
.Ltmp39:
	jmp	.LBB4_11
.LBB4_15:
.Ltmp40:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end4:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>, .Lfunc_end4-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp35-.Lfunc_begin1
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp37-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin1
	.uleb128 .Ltmp38-.Ltmp36
	.byte	0
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin1
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp40-.Lfunc_begin1
	.byte	1
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>,@function
core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB5_2:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
	movq	8(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB5_3:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>, .Lfunc_end5-core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>,@function
core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB6_2:
	movq	8(%rbx), %r14
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB6_7
	movl	$1, %r13d
	subq	%rax, %r13
	movq	$-32, %r15
	xorl	%r12d, %r12d
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %rbp
	jmp	.LBB6_4
	.p2align	4
.LBB6_6:
	addq	$-32, %r15
	incq	%r13
	addq	$32, %r12
	cmpq	$1, %r13
	je	.LBB6_7
.LBB6_4:
	movq	(%r14,%r12), %rax
	lock		decq	(%rax)
	jne	.LBB6_6
	leaq	(%r14,%r12), %rdi
	#MEMBARRIER
.Ltmp41:
	callq	*%rbp
.Ltmp42:
	jmp	.LBB6_6
.LBB6_7:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_17
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
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
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB6_17:
	.cfi_def_cfa_offset 64
	addq	$8, %rsp
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
.LBB6_9:
	.cfi_def_cfa_offset 64
.Ltmp43:
	movq	%rax, (%rsp)
	testq	%r13, %r13
	jne	.LBB6_10
.LBB6_14:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_16
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB6_16:
	movq	(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_10:
	movq	%r14, %r12
	subq	%r15, %r12
	negq	%r13
	jmp	.LBB6_11
	.p2align	4
.LBB6_13:
	addq	$32, %r12
	decq	%r13
	je	.LBB6_14
.LBB6_11:
	movq	(%r12), %rax
	lock		decq	(%rax)
	jne	.LBB6_13
	#MEMBARRIER
.Ltmp44:
	movq	%r12, %rdi
	callq	*%rbp
.Ltmp45:
	jmp	.LBB6_13
.LBB6_18:
.Ltmp46:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end6:
	.size	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>, .Lfunc_end6-core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception2:
	.byte	255
	.byte	155
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp41-.Lfunc_begin2
	.uleb128 .Ltmp42-.Ltmp41
	.uleb128 .Ltmp43-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp42-.Lfunc_begin2
	.uleb128 .Ltmp44-.Ltmp42
	.byte	0
	.byte	0
	.uleb128 .Ltmp44-.Lfunc_begin2
	.uleb128 .Ltmp45-.Ltmp44
	.uleb128 .Ltmp46-.Lfunc_begin2
	.byte	1
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>,@function
core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB7_2
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	8(%rdi), %rax
	shlq	$3, %rsi
	movl	$8, %edx
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB7_2:
	addq	$24, %rdi
	jmp	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>
.Lfunc_end7:
	.size	core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>, .Lfunc_end7-core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>,@function
core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	addq	$72, %rdi
.Ltmp47:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp48:
	leaq	128(%rbx), %rdi
.Ltmp53:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp54:
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_4
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_4:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_10
	movq	192(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB8_10:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_8:
	.cfi_def_cfa_offset 32
.Ltmp55:
	movq	%rax, %r14
	jmp	.LBB8_9
.LBB8_6:
.Ltmp49:
	movq	%rax, %r14
	leaq	128(%rbx), %rdi
.Ltmp50:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp51:
.LBB8_9:
	addq	$184, %rbx
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB8_7:
.Ltmp52:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end8:
	.size	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>, .Lfunc_end8-core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>","a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255
	.byte	155
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp47-.Lfunc_begin3
	.uleb128 .Ltmp48-.Ltmp47
	.uleb128 .Ltmp49-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp53-.Lfunc_begin3
	.uleb128 .Ltmp54-.Ltmp53
	.uleb128 .Ltmp55-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp50-.Lfunc_begin3
	.uleb128 .Ltmp51-.Ltmp50
	.uleb128 .Ltmp52-.Lfunc_begin3
	.byte	1
	.uleb128 .Ltmp51-.Lfunc_begin3
	.uleb128 .Lfunc_end8-.Ltmp51
	.byte	0
	.byte	0
.Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>,@function
core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
.Ltmp56:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp57:
	addq	$56, %rbx
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.LBB9_3:
	.cfi_def_cfa_offset 32
.Ltmp58:
	movq	%rax, %r14
	addq	$56, %rbx
.Ltmp59:
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp60:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB9_2:
.Ltmp61:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end9:
	.size	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>, .Lfunc_end9-core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>","a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255
	.byte	155
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp56-.Lfunc_begin4
	.uleb128 .Ltmp57-.Ltmp56
	.uleb128 .Ltmp58-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp57-.Lfunc_begin4
	.uleb128 .Ltmp59-.Ltmp57
	.byte	0
	.byte	0
	.uleb128 .Ltmp59-.Lfunc_begin4
	.uleb128 .Ltmp60-.Ltmp59
	.uleb128 .Ltmp61-.Lfunc_begin4
	.byte	1
	.uleb128 .Ltmp60-.Lfunc_begin4
	.uleb128 .Lfunc_end9-.Ltmp60
	.byte	0
	.byte	0
.Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase4:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::iter::adapters::copied::copy_fold::{{closure}}","ax",@progbits
	.p2align	4
	.type	core::iter::adapters::copied::copy_fold::{{closure}},@function
core::iter::adapters::copied::copy_fold::{{closure}}:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB10_16
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
	pshufd	$0, %xmm0, %xmm0
	leaq	-72(%r14), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
.LBB10_2:
	andq	%rax, %rdx
	movdqu	(%r14,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB10_5
.LBB10_3:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rax, %r10
	negq	%r10
	leaq	(%r10,%r10,8), %r15
	cmpq	(%rcx,%r15,8), %rsi
	je	.LBB10_7
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB10_3
	.p2align	4
.LBB10_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB10_16
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB10_2
.LBB10_7:
	movq	-64(%r14,%r15,8), %rax
	movq	-56(%r14,%r15,8), %rcx
	addq	%rax, %rcx
	incq	%rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	-40(%r14,%r15,8), %rsi
	movq	%rax, (%rsp)
	addq	$16, %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movw	%dx, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	8(%rdi), %rbx
	movq	%rsp, %rax
	movq	%rdi, %r12
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	movq	16(%r12), %rax
	cmpl	$0, (%rax)
	je	.LBB10_16
	leaq	(%r14,%r15,8), %rsi
	cmpq	$0, -8(%rsi)
	je	.LBB10_16
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
	pshufd	$0, %xmm0, %xmm0
	leaq	-40(%rax), %rdi
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
.LBB10_10:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB10_13
.LBB10_11:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB10_15
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB10_11
.LBB10_13:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB10_16
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB10_10
.LBB10_15:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	notl	%esi
	movq	-8(%rax,%r10,8), %rax
	movq	%rcx, (%rsp)
	addq	$16, %rcx
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movw	%si, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
.LBB10_16:
	addq	$40, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	core::iter::adapters::copied::copy_fold::{{closure}}, .Lfunc_end10-core::iter::adapters::copied::copy_fold::{{closure}}
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
	je	.LBB11_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB11_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB11_7
.LBB11_3:
	testq	%rbx, %rbx
	je	.LBB11_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB11_7
.LBB11_4:
	movq	%r15, %rax
.LBB11_7:
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
.Lfunc_end11:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end11-alloc::raw_vec::finish_grow
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
	jb	.LBB12_8
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
	jo	.LBB12_9
	movabsq	$-9223372036854775808, %rdx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	ja	.LBB12_11
	testq	%r9, %r9
	jne	.LBB12_5
	xorl	%edx, %edx
	jmp	.LBB12_6
.LBB12_5:
	movq	8(%rbx), %rdx
	imulq	%r8, %r9
	movq	%rdx, 32(%rsp)
	movq	%r9, 48(%rsp)
	movq	%rcx, %rdx
.LBB12_6:
	movq	%rdx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB12_10
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
.LBB12_8:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
.LBB12_9:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB12_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB12_11:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end12:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end12-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	".text.<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt","ax",@progbits
	.p2align	4
	.type	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt,@function
<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt:
	.cfi_startproc
	movq	%rsi, %rax
	cmpq	$0, (%rdi)
	je	.LBB13_2
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
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
	.cfi_def_cfa_offset 8
	retq
.LBB13_2:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.13(%rip), %rsi
	movl	$16, %edx
	movq	%rax, %rdi
	jmpq	*core::fmt::Formatter::write_str@GOTPCREL(%rip)
.Lfunc_end13:
	.size	<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt, .Lfunc_end13-<smallvec::CollectionAllocErr as core::fmt::Debug>::fmt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI14_0:
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
	movq	%rdx, 16(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 88(%rsp)
	movq	%r9, 96(%rsp)
	incl	1460(%rdi)
	addq	$896, %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB14_31
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
	leaq	16(%rsp), %rdx
	movq	%rdx, 128(%rsp)
	leaq	72(%rsp), %rdx
	movq	%rdx, 136(%rsp)
	leaq	15(%rsp), %rdx
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
	movq	%rax, 24(%rsp)
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movw	%dx, 48(%rsp)
	movq	%rsi, 56(%rsp)
	leaq	24(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	cmpl	$0, 16(%rsp)
	je	.LBB14_10
	cmpq	$0, 88(%r15)
	je	.LBB14_10
	movq	16(%rsp), %rcx
	movabsq	$-7046029256521940991, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rdi
	shrq	$57, %rdi
	movq	64(%r15), %rax
	movq	72(%r15), %rsi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0
	pshuflw	$0, %xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	leaq	-40(%rax), %rdi
	xorl	%r8d, %r8d
	pcmpeqd	%xmm1, %xmm1
.LBB14_4:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB14_7
.LBB14_5:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB14_9
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB14_5
.LBB14_7:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB14_10
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB14_4
.LBB14_9:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	notl	%esi
	movq	-8(%rax,%r10,8), %rax
	movq	%rcx, 24(%rsp)
	addq	$16, %rcx
	movq	%rcx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movw	%si, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	24(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
.LBB14_10:
	cmpq	%rbx, %r14
	je	.LBB14_31
	cmpq	$0, 56(%r15)
	je	.LBB14_31
	subq	%r14, %rbx
	shrq	$3, %rbx
	movl	$1, %eax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB14_30
	.p2align	4
.LBB14_15:
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
	pshufd	$0, %xmm0, %xmm0
	leaq	-72(%r12), %rsi
	xorl	%edi, %edi
.LBB14_16:
	andq	%rax, %rdx
	movdqu	(%r12,%rdx), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	je	.LBB14_19
.LBB14_17:
	rep		bsfl	%r8d, %r9d
	addq	%rdx, %r9
	andq	%rax, %r9
	negq	%r9
	leaq	(%r9,%r9,8), %r13
	cmpq	(%rsi,%r13,8), %rcx
	je	.LBB14_21
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB14_17
	.p2align	4
.LBB14_19:
	pcmpeqb	.LCPI14_0(%rip), %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB14_30
	addq	%rdi, %rdx
	addq	$16, %rdx
	addq	$16, %rdi
	jmp	.LBB14_16
	.p2align	4
.LBB14_21:
	movq	-64(%r12,%r13,8), %rax
	movq	-56(%r12,%r13,8), %rcx
	addq	%rax, %rcx
	incq	%rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	-40(%r12,%r13,8), %rsi
	movq	%rax, 24(%rsp)
	addq	$16, %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movw	%dx, 48(%rsp)
	movq	%rsi, 56(%rsp)
	leaq	24(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	cmpl	$0, 16(%rsp)
	je	.LBB14_30
	leaq	(%r12,%r13,8), %rsi
	cmpq	$0, -8(%rsi)
	je	.LBB14_30
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
.LBB14_24:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB14_27
.LBB14_25:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB14_29
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB14_25
	.p2align	4
.LBB14_27:
	pcmpeqb	.LCPI14_0(%rip), %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB14_30
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB14_24
.LBB14_29:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	notl	%esi
	movq	-8(%rax,%r10,8), %rax
	movq	%rcx, 24(%rsp)
	addq	$16, %rcx
	movq	%rcx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movw	%si, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	24(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	.p2align	4
.LBB14_30:
	incq	%rbp
	cmpq	%rbx, %rbp
	je	.LBB14_31
	movq	56(%r15), %rax
	testq	%rax, %rax
	jne	.LBB14_15
	jmp	.LBB14_30
.LBB14_31:
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
.Lfunc_end14:
	.size	bevy_ecs::observer::centralized_storage::Observers::invoke, .Lfunc_end14-bevy_ecs::observer::centralized_storage::Observers::invoke
	.cfi_endproc

	.section	".text.unlikely.smallvec::SmallVec<A>::reserve_one_unchecked","ax",@progbits
	.p2align	4
	.type	smallvec::SmallVec<A>::reserve_one_unchecked,@function
smallvec::SmallVec<A>::reserve_one_unchecked:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	16(%rdi), %rsi
	cmpq	$3, %rsi
	jb	.LBB15_2
	movq	8(%rdi), %rsi
.LBB15_2:
	testq	%rsi, %rsi
	je	.LBB15_5
	cmpq	$-1, %rsi
	je	.LBB15_9
	bsrq	%rsi, %rcx
	xorq	$63, %rcx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	testq	%rcx, %rcx
	je	.LBB15_9
.LBB15_5:
	incq	%rsi
	callq	smallvec::SmallVec<A>::try_grow
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB15_6
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB15_9:
	.cfi_def_cfa_offset 16
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.53(%rip), %rdx
	movl	$17, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
.LBB15_6:
	testq	%rax, %rax
	jne	.LBB15_10
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.52(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB15_10:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end15:
	.size	smallvec::SmallVec<A>::reserve_one_unchecked, .Lfunc_end15-smallvec::SmallVec<A>::reserve_one_unchecked
	.cfi_endproc

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
	jb	.LBB16_20
	movq	(%rdi), %r15
	movabsq	$-9223372036854775807, %rcx
	cmpq	$3, %rsi
	jae	.LBB16_6
	cmpq	$3, %r12
	jb	.LBB16_7
	movq	%rcx, %r13
	leaq	(,%rbp,8), %rdx
	movq	%rdi, %r14
	movq	%r15, %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	%rbp, 16(%r14)
	shlq	$3, %rbx
	shrq	$61, %r12
	jne	.LBB16_21
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB16_21
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	%r13, %rax
	jmp	.LBB16_8
.LBB16_6:
	cmpq	%rsi, %r12
	jne	.LBB16_9
.LBB16_7:
	movq	%rcx, %rax
	jmp	.LBB16_8
.LBB16_9:
	leaq	(,%rsi,8), %r14
	movq	%rsi, %rax
	shrq	$61, %rax
	jne	.LBB16_22
	movq	%rcx, %rbp
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB16_22
	cmpq	$3, %r12
	jae	.LBB16_15
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	movq	%rax, %rbx
	movl	$8, %eax
	testq	%rbx, %rbx
	je	.LBB16_8
	shlq	$3, %r12
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi
	movq	%r12, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB16_18
.LBB16_22:
	xorl	%eax, %eax
	jmp	.LBB16_8
.LBB16_15:
	movabsq	$2305843009213693951, %rax
	shlq	$3, %rbx
	cmpq	%rax, %r12
	ja	.LBB16_19
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*core::alloc::layout::Layout::is_size_align_valid@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB16_19
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	movl	$8, %eax
	je	.LBB16_8
.LBB16_18:
	movq	8(%rsp), %rcx
	movq	%rbx, (%rcx)
	movq	%r13, 8(%rcx)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	%rbp, %rax
	jmp	.LBB16_8
.LBB16_19:
	xorl	%eax, %eax
	movq	%rbx, %r14
.LBB16_8:
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
.LBB16_20:
	.cfi_def_cfa_offset 96
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.54(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.55(%rip), %rdx
	movl	$32, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB16_21:
	movq	$0, 24(%rsp)
	movq	%rbx, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rcx
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.51(%rip), %r8
	leaq	24(%rsp), %rdx
	movl	$43, %esi
	callq	*core::result::unwrap_failed@GOTPCREL(%rip)
.Lfunc_end16:
	.size	smallvec::SmallVec<A>::try_grow, .Lfunc_end16-smallvec::SmallVec<A>::try_grow
	.cfi_endproc

	.section	".text.<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold","ax",@progbits
	.p2align	4
	.type	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold,@function
<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbp
	movq	8(%rdi), %r12
	movzwl	24(%rdi), %ebx
	movq	32(%rdi), %rax
	movq	(%rsi), %rcx
	movq	%rcx, 88(%rsp)
	movq	8(%rsi), %rcx
	movq	%rcx, 80(%rsp)
	movq	16(%rsi), %rcx
	movq	%rcx, 72(%rsp)
	movq	24(%rsi), %rcx
	movq	%rcx, 64(%rsp)
	movq	32(%rsi), %rcx
	movq	%rcx, 56(%rsp)
	movq	48(%rsi), %rcx
	movq	%rcx, 48(%rsp)
	movq	56(%rsi), %rcx
	movq	%rcx, 40(%rsp)
	leaq	8(%rsp), %r10
	jmp	.LBB17_1
	.p2align	4
.LBB17_44:
	movq	%rsi, (%rcx)
.LBB17_45:
	movq	96(%rsp), %rax
	leal	-1(%rax), %r14d
	andl	%eax, %r14d
	movq	24(%rsp), %rax
	leaq	160(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movdqu	8(%rsp), %xmm0
	movdqu	%xmm0, (%rcx)
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	56(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	112(%rsp), %rdx
	movq	%rdx, 144(%rsp)
	movq	104(%rsp), %rdx
	movq	%rdx, 152(%rsp)
	movq	%rax, 184(%rsp)
	movq	%rcx, 192(%rsp)
	movq	120(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	callq	*128(%rsp)
	leaq	8(%rsp), %r10
	movq	136(%rsp), %rax
	decq	%rax
	movl	%r14d, %ebx
.LBB17_1:
	testw	%bx, %bx
	movq	%rax, 136(%rsp)
	jne	.LBB17_5
	testq	%rax, %rax
	je	.LBB17_46
	.p2align	4
.LBB17_3:
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$-256, %rbp
	addq	$16, %r12
	cmpl	$65535, %ebx
	je	.LBB17_3
	notl	%ebx
.LBB17_5:
	rep		bsfl	%ebx, %eax
	shll	$4, %eax
	movq	%rbp, %rcx
	subq	%rax, %rcx
	movq	-16(%rcx), %rax
	movq	%rax, 112(%rsp)
	movq	-8(%rcx), %rax
	movq	%rax, 128(%rsp)
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 120(%rsp)
	movq	80(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)
	movq	72(%rsp), %rax
	movq	(%rax), %r15
	movq	8(%rax), %r14
	movq	16(%rax), %r13
	movq	24(%rax), %rax
	movq	%rax, 32(%rsp)
	movq	$0, 24(%rsp)
	testq	%r15, %r15
	movq	%rbx, 96(%rsp)
	je	.LBB17_8
	movq	%r14, %rax
	subq	%r15, %rax
	shrq	$3, %rax
	testq	%r13, %r13
	je	.LBB17_14
	movq	32(%rsp), %rcx
	subq	%r13, %rcx
	shrq	$3, %rcx
	addq	%rcx, %rax
.LBB17_14:
	cmpq	$3, %rax
	jae	.LBB17_15
	jmp	.LBB17_9
	.p2align	4
.LBB17_8:
	testq	%r13, %r13
	je	.LBB17_9
	movq	32(%rsp), %rax
	subq	%r13, %rax
	shrq	$3, %rax
	cmpq	$3, %rax
	jb	.LBB17_9
.LBB17_15:
	decq	%rax
	bsrq	%rax, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.Ltmp62:
	movq	%r10, %rdi
	callq	smallvec::SmallVec<A>::try_grow
.Ltmp63:
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB17_17
	movq	24(%rsp), %rax
	xorl	%esi, %esi
	cmpq	$3, %rax
	movl	$2, %ecx
	cmovbq	%rcx, %rax
	setb	%sil
	movq	8(%rsp), %rdx
	leaq	8(%rsp), %r10
	cmovbq	%r10, %rdx
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %rdi
	cmovaeq	%rdi, %rcx
	movq	16(%rsp,%rsi,8), %rsi
	cmpq	%rax, %rsi
	jb	.LBB17_10
	movq	%r13, %rdi
	movq	%r15, %r8
	movq	%rsi, %rax
.LBB17_23:
	movq	%rax, (%rcx)
	movq	%r14, %rbx
	testq	%r8, %r8
	je	.LBB17_31
	.p2align	4
.LBB17_25:
	cmpq	%r14, %r8
	je	.LBB17_31
	leaq	8(%r8), %r13
	movq	%rdi, %r15
	jmp	.LBB17_34
	.p2align	4
.LBB17_31:
	testq	%rdi, %rdi
	je	.LBB17_45
	cmpq	32(%rsp), %rdi
	je	.LBB17_45
	leaq	8(%rdi), %r15
	xorl	%r13d, %r13d
	movq	%rdi, %r8
.LBB17_34:
	movq	(%r8), %r14
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	$3, %rsi
	movq	8(%rsp), %rax
	cmovbq	%r10, %rax
	setb	%dl
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %rdi
	cmovaeq	%rdi, %rcx
	movl	$2, %edi
	cmovbq	%rdi, %rsi
	movq	16(%rsp,%rdx,8), %rdx
	cmpq	%rsi, %rdx
	je	.LBB17_35
.LBB17_37:
	movq	%r14, (%rax,%rdx,8)
	incq	(%rcx)
	movq	%r13, %r8
	movq	%r15, %rdi
	movq	%rbx, %r14
	testq	%r8, %r8
	jne	.LBB17_25
	jmp	.LBB17_31
.LBB17_35:
.Ltmp70:
	movq	%r10, %rdi
	callq	smallvec::SmallVec<A>::reserve_one_unchecked
.Ltmp71:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r10
	jmp	.LBB17_37
	.p2align	4
.LBB17_9:
	movl	$2, %eax
	leaq	24(%rsp), %rcx
	movq	%r10, %rdx
	xorl	%esi, %esi
	jmp	.LBB17_10
	.p2align	4
.LBB17_12:
	leaq	8(%r15), %r8
	movq	%r13, %rdi
.LBB17_30:
	movq	(%r15), %r9
	movq	%r9, (%rdx,%rsi,8)
	incq	%rsi
	movq	%r8, %r15
	cmpq	%rsi, %rax
	je	.LBB17_23
.LBB17_10:
	testq	%r15, %r15
	je	.LBB17_27
	cmpq	%r14, %r15
	jne	.LBB17_12
.LBB17_27:
	testq	%r13, %r13
	je	.LBB17_44
	cmpq	32(%rsp), %r13
	je	.LBB17_44
	leaq	8(%r13), %rdi
	xorl	%r8d, %r8d
	movq	%r13, %r15
	movq	%rdi, %r13
	jmp	.LBB17_30
.LBB17_46:
	addq	$200, %rsp
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
.LBB17_17:
	.cfi_def_cfa_offset 256
	testq	%rax, %rax
	je	.LBB17_20
.Ltmp67:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Ltmp68:
	jmp	.LBB17_19
.LBB17_20:
.Ltmp65:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.52(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.Ltmp66:
.LBB17_19:
	ud2
.LBB17_38:
.Ltmp72:
	jmp	.LBB17_41
.LBB17_39:
.Ltmp64:
	jmp	.LBB17_41
.LBB17_40:
.Ltmp69:
.LBB17_41:
	movq	%rax, %rbx
	movq	24(%rsp), %rsi
	cmpq	$3, %rsi
	jb	.LBB17_43
	movq	8(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB17_43:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end17:
	.size	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold, .Lfunc_end17-<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	.cfi_endproc
	.section	".gcc_except_table.<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold","a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception5:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5
	.uleb128 .Ltmp62-.Lfunc_begin5
	.byte	0
	.byte	0
	.uleb128 .Ltmp62-.Lfunc_begin5
	.uleb128 .Ltmp63-.Ltmp62
	.uleb128 .Ltmp64-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp70-.Lfunc_begin5
	.uleb128 .Ltmp71-.Ltmp70
	.uleb128 .Ltmp72-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp67-.Lfunc_begin5
	.uleb128 .Ltmp66-.Ltmp67
	.uleb128 .Ltmp69-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp66-.Lfunc_begin5
	.uleb128 .Lfunc_end17-.Ltmp66
	.byte	0
	.byte	0
.Lcst_end5:
	.p2align	2, 0x0

	.section	".text.<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold","ax",@progbits
	.p2align	4
	.type	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold,@function
<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rbp
	movq	8(%rdi), %r12
	movzwl	24(%rdi), %ebx
	movq	32(%rdi), %r15
	movq	(%rsi), %rax
	movq	%rax, 80(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 72(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 56(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsi), %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsi), %rax
	movq	%rax, 32(%rsp)
	leaq	8(%rsp), %r8
	jmp	.LBB18_1
	.p2align	4
.LBB18_29:
	movq	%rsi, (%rcx)
.LBB18_30:
	leal	-1(%rbx), %r14d
	andl	%ebx, %r14d
	movq	24(%rsp), %rax
	leaq	144(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movdqu	8(%rsp), %xmm0
	movdqu	%xmm0, (%rcx)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	96(%rsp), %rdx
	movq	%rdx, 128(%rsp)
	movq	88(%rsp), %rdx
	movq	%rdx, 136(%rsp)
	movq	%rax, 168(%rsp)
	movq	%rcx, 176(%rsp)
	movq	104(%rsp), %rdi
	leaq	128(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rcx
	callq	*112(%rsp)
	leaq	8(%rsp), %r8
	movq	120(%rsp), %r15
	decq	%r15
	movl	%r14d, %ebx
.LBB18_1:
	testw	%bx, %bx
	jne	.LBB18_5
	testq	%r15, %r15
	je	.LBB18_31
	.p2align	4
.LBB18_3:
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$-256, %rbp
	addq	$16, %r12
	cmpl	$65535, %ebx
	je	.LBB18_3
	notl	%ebx
.LBB18_5:
	rep		bsfl	%ebx, %eax
	shll	$4, %eax
	movq	%rbp, %rcx
	subq	%rax, %rcx
	movq	-16(%rcx), %rax
	movq	%rax, 96(%rsp)
	movq	-8(%rcx), %rax
	movq	%rax, 112(%rsp)
	movq	80(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 88(%rsp)
	movq	64(%rsp), %rax
	movq	(%rax), %r14
	movq	8(%rax), %r13
	movq	$0, 24(%rsp)
	movq	%r13, %rax
	subq	%r14, %rax
	cmpq	$17, %rax
	movq	%r15, 120(%rsp)
	jb	.LBB18_6
	shrq	$3, %rax
	decq	%rax
	bsrq	%rax, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.Ltmp73:
	movq	%r8, %rdi
	callq	smallvec::SmallVec<A>::try_grow
.Ltmp74:
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB18_11
	movq	24(%rsp), %rax
	xorl	%esi, %esi
	cmpq	$3, %rax
	movl	$2, %ecx
	cmovbq	%rcx, %rax
	setb	%sil
	movq	8(%rsp), %rdx
	leaq	8(%rsp), %r8
	cmovbq	%r8, %rdx
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %rdi
	cmovaeq	%rdi, %rcx
	movq	16(%rsp,%rsi,8), %rsi
	cmpq	%rax, %rsi
	jb	.LBB18_7
	movq	%rsi, %rax
	movq	%rax, (%rcx)
	cmpq	%r13, %r14
	jne	.LBB18_19
	jmp	.LBB18_30
	.p2align	4
.LBB18_6:
	movl	$2, %eax
	leaq	24(%rsp), %rcx
	movq	%r8, %rdx
	xorl	%esi, %esi
	.p2align	4
.LBB18_7:
	cmpq	%r13, %r14
	je	.LBB18_29
	movq	(%r14), %rdi
	addq	$8, %r14
	movq	%rdi, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB18_7
	movq	%rax, (%rcx)
	cmpq	%r13, %r14
	je	.LBB18_30
	.p2align	4
.LBB18_19:
	movq	(%r14), %r15
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	$3, %rsi
	movq	8(%rsp), %rax
	cmovbq	%r8, %rax
	setb	%dl
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %rdi
	cmovaeq	%rdi, %rcx
	movl	$2, %edi
	cmovbq	%rdi, %rsi
	movq	16(%rsp,%rdx,8), %rdx
	cmpq	%rsi, %rdx
	je	.LBB18_20
.LBB18_22:
	addq	$8, %r14
	movq	%r15, (%rax,%rdx,8)
	incq	(%rcx)
	cmpq	%r13, %r14
	jne	.LBB18_19
	jmp	.LBB18_30
.LBB18_20:
.Ltmp78:
	movq	%r8, %rdi
	callq	smallvec::SmallVec<A>::reserve_one_unchecked
.Ltmp79:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %r8
	jmp	.LBB18_22
.LBB18_31:
	addq	$184, %rsp
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
.LBB18_11:
	.cfi_def_cfa_offset 240
	testq	%rax, %rax
	je	.LBB18_14
.Ltmp81:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Ltmp82:
	jmp	.LBB18_13
.LBB18_14:
.Ltmp76:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.52(%rip), %rdx
	movl	$17, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.Ltmp77:
.LBB18_13:
	ud2
.LBB18_23:
.Ltmp80:
	jmp	.LBB18_26
.LBB18_24:
.Ltmp75:
	jmp	.LBB18_26
.LBB18_25:
.Ltmp83:
.LBB18_26:
	movq	%rax, %rbx
	movq	24(%rsp), %rsi
	cmpq	$3, %rsi
	jb	.LBB18_28
	movq	8(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB18_28:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end18:
	.size	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold, .Lfunc_end18-<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	.cfi_endproc
	.section	".gcc_except_table.<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold","a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception6:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6
	.uleb128 .Ltmp73-.Lfunc_begin6
	.byte	0
	.byte	0
	.uleb128 .Ltmp73-.Lfunc_begin6
	.uleb128 .Ltmp74-.Ltmp73
	.uleb128 .Ltmp75-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp78-.Lfunc_begin6
	.uleb128 .Ltmp79-.Ltmp78
	.uleb128 .Ltmp80-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp81-.Lfunc_begin6
	.uleb128 .Ltmp77-.Ltmp81
	.uleb128 .Ltmp83-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp77-.Lfunc_begin6
	.uleb128 .Lfunc_end18-.Ltmp77
	.byte	0
	.byte	0
.Lcst_end6:
	.p2align	2, 0x0

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
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpq	$0, 16(%rdi)
	je	.LBB19_1
.LBB19_2:
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
.LBB19_3:
	andq	%r9, %rbx
	movdqu	(%rax,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r15d
	testl	%r15d, %r15d
	je	.LBB19_7
.LBB19_4:
	rep		bsfl	%r15d, %r12d
	addq	%rbx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,2), %r12
	cmpq	-24(%rax,%r12,8), %rsi
	jne	.LBB19_6
	cmpq	-16(%rax,%r12,8), %rdx
	je	.LBB19_17
.LBB19_6:
	leal	-1(%r15), %ebp
	andw	%r15w, %bp
	movl	%ebp, %r15d
	jne	.LBB19_4
	.p2align	4
.LBB19_7:
	cmpq	$1, %r14
	je	.LBB19_11
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	je	.LBB19_9
	rep		bsfl	%r10d, %r10d
	addq	%rbx, %r10
	andq	%r9, %r10
.LBB19_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB19_14
	movl	$1, %r14d
	jmp	.LBB19_13
.LBB19_9:
	xorl	%r14d, %r14d
.LBB19_13:
	addq	%r11, %rbx
	addq	$16, %rbx
	addq	$16, %r11
	jmp	.LBB19_3
.LBB19_17:
	leaq	(%rax,%r12,8), %rax
	movq	%rcx, -8(%rax)
	jmp	.LBB19_18
.LBB19_14:
	movzbl	(%rax,%r10), %r11d
	testb	%r11b, %r11b
	jns	.LBB19_15
.LBB19_16:
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
.LBB19_18:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB19_1:
	.cfi_def_cfa_offset 48
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
	jmp	.LBB19_2
.LBB19_15:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
	movzbl	(%rax,%r10), %r11d
	jmp	.LBB19_16
.Lfunc_end19:
	.size	hashbrown::map::HashMap<K,V,S,A>::insert, .Lfunc_end19-hashbrown::map::HashMap<K,V,S,A>::insert
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
	je	.LBB20_1
.LBB20_3:
	rep		bsfl	%eax, %eax
	addq	%rdx, %rax
	andq	%rsi, %rax
	cmpb	$0, (%rdi,%rax)
	jns	.LBB20_4
	retq
.LBB20_1:
	movl	$16, %ecx
.LBB20_2:
	addq	%rcx, %rdx
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	jne	.LBB20_3
	jmp	.LBB20_2
.LBB20_4:
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	retq
.Lfunc_end20:
	.size	hashbrown::raw::RawTableInner::find_insert_slot, .Lfunc_end20-hashbrown::raw::RawTableInner::find_insert_slot
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI21_0:
	.zero	16,69
	.section	.text.entity_insert,"ax",@progbits
	.globl	entity_insert
	.p2align	4
	.type	entity_insert,@function
entity_insert:
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception7
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
	subq	$632, %rsp
	.cfi_def_cfa_offset 688
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm0, 72(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 12(%rsp)
	testl	%eax, %eax
	je	.LBB21_186
	movabsq	$-1676403772588836767, %r13
	movabsq	$-8437598756845454829, %rbp
	movl	20(%rdi), %eax
	movl	%eax, 40(%rsp)
	movl	24(%rdi), %r15d
	movl	28(%rdi), %eax
	movl	%eax, 76(%rsp)
	movq	%rdi, 96(%rsp)
	movq	(%rdi), %r11
	movl	1448(%r11), %ebx
	leaq	56(%r11), %rcx
	leaq	1440(%r11), %rax
	movq	%rcx, 24(%rsp)
	movq	%rcx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movq	$0, 104(%rsp)
	movq	$8, 112(%rsp)
	movq	$0, 120(%rsp)
	leaq	608(%r11), %rcx
	movq	%rcx, 16(%rsp)
	leaq	336(%r11), %r12
	leaq	632(%r11), %r10
	movq	632(%r11), %rcx
	movq	640(%r11), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI21_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rdi
	movq	%r11, (%rsp)
	movl	%ebx, 60(%rsp)
	movq	%r12, 88(%rsp)
.LBB21_2:
	andq	%rdx, %rdi
	movdqu	(%rcx,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB21_6
.LBB21_3:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rdx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%r13, -24(%rcx,%r9,8)
	jne	.LBB21_5
	cmpq	%rbp, -16(%rcx,%r9,8)
	je	.LBB21_8
.LBB21_5:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB21_3
	.p2align	4
.LBB21_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB21_9
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB21_2
.LBB21_8:
	leaq	(%rcx,%r9,8), %rax
	movq	%r11, %r12
	movq	-8(%rax), %rbp
	jmp	.LBB21_55
.LBB21_9:
	movq	$0, 296(%rsp)
	movq	$8, 304(%rsp)
	movq	$0, 312(%rsp)
	cmpq	$0, 104(%r11)
	movq	%r10, 64(%rsp)
	je	.LBB21_17
	movq	80(%r11), %rcx
	movq	88(%r11), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rdi
.LBB21_11:
	andq	%rdx, %rdi
	movdqu	(%rcx,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB21_15
.LBB21_12:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rdx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%r13, -24(%rcx,%r9,8)
	jne	.LBB21_14
	cmpq	%rbp, -16(%rcx,%r9,8)
	je	.LBB21_24
.LBB21_14:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB21_12
.LBB21_15:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB21_17
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB21_11
.LBB21_17:
	movzbl	152(%r11), %ecx
	movq	184(%r11), %rcx
	movq	192(%r11), %rdx
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %r8
.LBB21_18:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB21_22
.LBB21_19:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	movq	%r10, %rsi
	negq	%rsi
	imulq	$112, %rsi, %rsi
	cmpq	%r13, -112(%rcx,%rsi)
	jne	.LBB21_21
	cmpq	%rbp, -104(%rcx,%rsi)
	je	.LBB21_25
.LBB21_21:
	leal	-1(%r9), %esi
	andw	%r9w, %si
	movl	%esi, %r9d
	jne	.LBB21_19
.LBB21_22:
	movq	%rbp, %r13
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB21_28
	addq	%rdi, %r8
	addq	$16, %r8
	addq	$16, %rdi
	movq	(%rsp), %r11
	movq	%r13, %rbp
	movabsq	$-1676403772588836767, %r13
	jmp	.LBB21_18
.LBB21_24:
	movq	%rbp, %r13
	leaq	(%rcx,%r9,8), %rax
	movq	-8(%rax), %rbp
.Ltmp84:
	.cfi_escape 0x2e, 0x00
	movl	$8, %esi
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
.Ltmp85:
	jmp	.LBB21_47
.LBB21_25:
	addq	%rcx, %rsi
	imulq	$112, %r10, %r8
	sarq	$4, %r8
	movabsq	$7905747460161236407, %rdi
	imulq	%r8, %rdi
	leaq	-16(%rdi), %r8
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %edx
	movdqu	(%rcx,%rdi), %xmm0
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
	ja	.LBB21_27
	incq	200(%r11)
	movb	$-1, %dl
.LBB21_27:
	movq	%rbp, %r13
	movb	%dl, (%rcx,%rdi)
	movb	%dl, 16(%rcx,%r8)
	decq	208(%r11)
	movq	-96(%rsi), %rcx
	cmpq	$2, %rcx
	jne	.LBB21_45
.LBB21_28:
	movq	(%rax), %rbp
	leaq	1(%rbp), %rbx
	movq	%rbx, (%rax)
	movw	$257, 240(%rsp)
	movq	$1, 176(%rsp)
	movabsq	$-1676403772588836767, %rax
	movq	%rax, 184(%rsp)
	movq	%r13, 192(%rsp)
	movq	$4, 216(%rsp)
	movq	$4, 224(%rsp)
	movq	$0, 232(%rsp)
	movb	$1, 242(%rsp)
	movq	$0, 200(%rsp)
.Ltmp88:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp89:
	movq	%r15, 48(%rsp)
	movq	(%rsp), %rax
	movq	72(%rax), %r15
	subq	%r15, %rbx
	jbe	.LBB21_34
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	subq	%r15, %rax
	movq	%r15, %rcx
	cmpq	%rax, %rbx
	ja	.LBB21_200
.LBB21_31:
	movq	(%rsp), %rax
	movq	64(%rax), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%rbp, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB21_32:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB21_32
	subq	%rdi, %rcx
	movq	(%rsp), %rdx
	movq	%rcx, 72(%rdx)
	jmp	.LBB21_35
.LBB21_34:
	movq	64(%rax), %rax
.LBB21_35:
	leaq	(,%rbp,8), %r12
	addq	%rbp, %r12
	shlq	$5, %r12
	leaq	(%rax,%r12), %rbx
	cmpl	$2, (%rax,%r12)
	je	.LBB21_37
.Ltmp96:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp97:
.LBB21_37:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rsi
	movl	$288, %edx
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	(%rsp), %rax
	leaq	80(%rax), %rdi
.Ltmp99:
	.cfi_escape 0x2e, 0x00
	movabsq	$-1676403772588836767, %rsi
	movabsq	$-8437598756845454829, %rdx
	movq	%rbp, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
.Ltmp100:
.Ltmp101:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.48(%rip), %rsi
	leaq	104(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp102:
	movq	112(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 120(%rsp)
	movq	$0, 176(%rsp)
	movq	$8, 184(%rsp)
	movq	$0, 192(%rsp)
	movdqu	.Lanon.83959b72e5b8236df4a28836bf490603.50(%rip), %xmm0
	movdqu	%xmm0, 200(%rsp)
	movdqu	.Lanon.83959b72e5b8236df4a28836bf490603.50+16(%rip), %xmm1
	movdqu	%xmm1, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$8, 240(%rsp)
	movq	$0, 248(%rsp)
	movdqu	%xmm0, 256(%rsp)
	movdqu	%xmm1, 272(%rsp)
	movq	128(%rsp), %rdi
.Ltmp103:
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
.Ltmp104:
	movq	120(%rsp), %rax
	testq	%rax, %rax
	je	.LBB21_42
	decq	%rax
	movq	%rax, 120(%rsp)
.LBB21_42:
	movq	128(%rsp), %rax
	movq	8(%rax), %rax
	leaq	(%rax,%r12), %r15
	movups	272(%rsp), %xmm0
	movaps	%xmm0, 416(%rsp)
	movups	256(%rsp), %xmm0
	movaps	%xmm0, 400(%rsp)
	movups	240(%rsp), %xmm0
	movaps	%xmm0, 384(%rsp)
	movups	176(%rsp), %xmm0
	movups	192(%rsp), %xmm1
	movups	208(%rsp), %xmm2
	movups	224(%rsp), %xmm3
	movaps	%xmm3, 368(%rsp)
	movaps	%xmm2, 352(%rsp)
	movaps	%xmm1, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	leaq	72(%rax,%r12), %rbx
.Ltmp109:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp110:
	subq	$-128, %r15
.Ltmp115:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp116:
	movaps	416(%rsp), %xmm0
	movups	%xmm0, 96(%rbx)
	movaps	400(%rsp), %xmm0
	movups	%xmm0, 80(%rbx)
	movaps	384(%rsp), %xmm0
	movups	%xmm0, 64(%rbx)
	movdqa	320(%rsp), %xmm0
	movdqa	336(%rsp), %xmm1
	movdqa	352(%rsp), %xmm2
	movdqa	368(%rsp), %xmm3
	movdqu	%xmm3, 48(%rbx)
	movdqu	%xmm2, 32(%rbx)
	movdqu	%xmm1, 16(%rbx)
	movdqu	%xmm0, (%rbx)
	movq	48(%rsp), %r15
	jmp	.LBB21_47
.LBB21_45:
	movups	-88(%rsi), %xmm0
	movdqu	-72(%rsi), %xmm1
	movdqu	-56(%rsi), %xmm2
	movdqu	-40(%rsi), %xmm3
	movdqu	%xmm3, 376(%rsp)
	movdqu	%xmm2, 360(%rsp)
	movdqu	%xmm1, 344(%rsp)
	movups	%xmm0, 328(%rsp)
	movdqu	-24(%rsi), %xmm0
	movq	-8(%rsi), %rax
	movq	%rcx, 320(%rsp)
	movdqu	%xmm0, 392(%rsp)
	movq	%rax, 408(%rsp)
.Ltmp86:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
.Ltmp87:
	movq	%rax, %rbp
.LBB21_47:
.Ltmp118:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rsi
	leaq	296(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp119:
	movq	304(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 312(%rsp)
	movq	(%rsp), %rax
	movq	624(%rax), %rbp
	movq	128(%rsp), %r8
	movdqu	296(%rsp), %xmm0
	movdqa	%xmm0, 176(%rsp)
	movq	$1, 192(%rsp)
.Ltmp121:
	.cfi_escape 0x2e, 0x10
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.22(%rip), %rsi
	leaq	328(%rsp), %rdi
	leaq	184(%rsp), %r9
	movl	$23, %edx
	movq	96(%rsp), %rcx
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp122:
	movq	16(%rsp), %rdi
	cmpq	(%rdi), %rbp
	jne	.LBB21_51
.Ltmp123:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.24(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp124:
.LBB21_51:
	movq	(%rsp), %rsi
	movq	616(%rsi), %rax
	imulq	$56, %rbp, %rcx
	movq	368(%rsp), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movups	320(%rsp), %xmm0
	movdqu	336(%rsp), %xmm1
	movdqu	352(%rsp), %xmm2
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	leaq	1(%rbp), %rax
	movq	%rax, 624(%rsi)
	movq	632(%rsi), %rax
	movq	640(%rsi), %rcx
	movq	%rcx, %rsi
	andq	%r13, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB21_187
.LBB21_52:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB21_189
.LBB21_53:
	movq	(%rsp), %r12
	movq	648(%r12), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB21_194
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r12)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$69, (%rax,%rdx)
	movb	$69, 16(%rax,%rsi)
	incq	656(%r12)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$-1676403772588836767, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r13, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
.LBB21_55:
	movq	616(%r12), %rax
	imulq	$56, %rbp, %rcx
	leaq	(%rax,%rcx), %r13
	movq	48(%rax,%rcx), %rbx
	leaq	248(%r12), %rsi
	leaq	896(%r12), %r8
.Ltmp131:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	movq	88(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	%r8, 608(%rsp)
	movl	%r15d, %r9d
	callq	*bevy_ecs::bundle::insert::<impl bevy_ecs::bundle::info::BundleInfo>::insert_bundle_into_archetype@GOTPCREL(%rip)
.Ltmp132:
	cmpl	%r15d, %eax
	movl	%eax, %r8d
	jne	.LBB21_60
	movq	(%rsp), %r12
	movq	264(%r12), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB21_202
	movq	256(%r12), %rax
	leaq	(%r15,%r15,4), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbp
	cmpq	16(%rax,%rcx), %rbx
	jae	.LBB21_69
	movq	8(%rbp), %rax
	imulq	$104, %rbx, %rcx
	leaq	(%rax,%rcx), %rdi
	xorl	%esi, %esi
	cmpq	(%rax,%rcx), %rsi
	cmovoq	%rsi, %rdi
	movq	%rdi, 16(%rsp)
	jmp	.LBB21_70
.LBB21_60:
	movq	(%rsp), %r12
	movq	256(%r12), %rax
	movq	264(%r12), %rcx
	movl	%r8d, %esi
	cmpl	%r8d, %r15d
	jbe	.LBB21_64
	cmpq	%r15, %rcx
	jb	.LBB21_192
	jne	.LBB21_67
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.45(%rip), %rdx
	jmp	.LBB21_212
.LBB21_64:
	cmpq	%rsi, %rcx
	jb	.LBB21_193
	cmpl	%r15d, %r8d
	jbe	.LBB21_204
	cmpq	%rsi, %rcx
	je	.LBB21_205
.LBB21_67:
	leaq	(%r15,%r15,4), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbp
	leaq	(%rsi,%rsi,4), %rsi
	shlq	$5, %rsi
	addq	%rax, %rsi
	movq	%rsi, 64(%rsp)
	cmpq	16(%rax,%rcx), %rbx
	jae	.LBB21_72
	movq	8(%rbp), %rax
	imulq	$104, %rbx, %rcx
	leaq	(%rax,%rcx), %rdi
	xorl	%esi, %esi
	cmpq	(%rax,%rcx), %rsi
	cmovoq	%rsi, %rdi
	movq	%rdi, 16(%rsp)
	jmp	.LBB21_73
.LBB21_69:
	movq	$0, 16(%rsp)
.LBB21_70:
	movl	148(%rbp), %eax
	movq	424(%r12), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB21_203
	leaq	(%rax,%rax,8), %rdi
	shlq	$3, %rdi
	addq	416(%r12), %rdi
	movq	$0, 24(%rsp)
	movq	%rdi, 152(%rsp)
	testb	$1, %dl
	jne	.LBB21_85
	jmp	.LBB21_90
.LBB21_72:
	movq	$0, 16(%rsp)
.LBB21_73:
	movl	148(%rbp), %eax
	movq	64(%rsp), %rcx
	movl	148(%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB21_77
	movq	424(%r12), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB21_206
	leaq	(%rax,%rax,8), %rdi
	shlq	$3, %rdi
	addq	416(%r12), %rdi
	movl	$1, %eax
	movq	%rax, 24(%rsp)
	movq	%rdi, 152(%rsp)
	testb	$1, %dl
	jne	.LBB21_85
	jmp	.LBB21_90
.LBB21_77:
	movq	416(%r12), %rcx
	movq	424(%r12), %rdi
	cmpl	%esi, %eax
	jbe	.LBB21_81
	cmpq	%rax, %rdi
	jb	.LBB21_197
	jne	.LBB21_84
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.40(%rip), %rdx
	jmp	.LBB21_212
.LBB21_81:
	cmpq	%rsi, %rdi
	jb	.LBB21_198
	cmpl	%eax, %esi
	jbe	.LBB21_209
	cmpq	%rsi, %rdi
	je	.LBB21_211
.LBB21_84:
	leaq	(%rax,%rax,8), %rax
	leaq	(%rcx,%rax,8), %rdi
	leaq	(%rsi,%rsi,8), %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 144(%rsp)
	movl	$2, %eax
	movq	%rax, 24(%rsp)
	movq	%rdi, 152(%rsp)
	testb	$1, %dl
	je	.LBB21_90
.LBB21_85:
	movq	1408(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB21_88
	movq	(%rbx), %rax
	movq	16(%rbx), %r12
	subq	%r12, %rax
	cmpq	$11, %rax
	movl	%r8d, %r14d
	ja	.LBB21_89
.Ltmp137:
	.cfi_escape 0x2e, 0x00
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp138:
	jmp	.LBB21_89
.LBB21_88:
	movq	1416(%r12), %rbx
	movq	(%rbx), %rax
	movq	16(%rbx), %r12
	subq	%r12, %rax
	cmpq	$11, %rax
	movl	%r8d, %r14d
	jbe	.LBB21_196
.LBB21_89:
	movq	8(%rbx), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r12)
	movl	%r14d, 8(%rax,%r12)
	addq	$12, %r12
	movq	%r12, 16(%rbx)
	movq	(%rsp), %r12
.LBB21_90:
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB21_92
	movq	112(%rsp), %rdi
	shlq	$3, %rsi
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB21_92:
	movq	%r13, 160(%rsp)
	movq	96(%rsp), %rax
	movq	8(%rax), %rbx
	movl	152(%rbp), %eax
	testb	%al, %al
	jns	.LBB21_94
	movq	16(%rsp), %rax
	movq	80(%rax), %r8
	movq	88(%rax), %rax
	leaq	(%r8,%rax,8), %r9
	movb	$0, 320(%rsp)
	.cfi_escape 0x2e, 0x10
	leaq	320(%rsp), %rax
	leaq	11(%rsp), %r10
	movl	$2, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	152(%rbp), %eax
.LBB21_94:
	movq	%rbp, 80(%rsp)
	testb	$4, %al
	je	.LBB21_100
	movq	16(%rsp), %rax
	movq	88(%rax), %r13
	testq	%r13, %r13
	je	.LBB21_100
	movq	16(%rsp), %rax
	movq	80(%rax), %rbp
	shlq	$3, %r13
	xorl	%r14d, %r14d
	leaq	320(%rsp), %r12
	jmp	.LBB21_98
	.p2align	4
.LBB21_97:
	addq	$8, %r14
	cmpq	%r14, %r13
	je	.LBB21_100
.LBB21_98:
	movq	(%rbp,%r14), %rax
	movq	(%rsp), %rdi
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB21_97
	movq	%rbx, 320(%rsp)
	movq	%rax, 328(%rsp)
	movb	$0, 336(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rsi
	callq	*%rcx
	jmp	.LBB21_97
.LBB21_100:
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB21_113
	movq	%rbx, %r12
	shrq	$32, %r12
	movl	12(%rsp), %edi
	notl	%edi
	cmpl	$1, %ecx
	movq	(%rsp), %r8
	movq	88(%rsp), %rbp
	jne	.LBB21_117
	movq	%rbp, %r15
	movq	80(%rsp), %r9
	movq	88(%r9), %rsi
	cmpq	%rdi, %rsi
	movq	64(%rsp), %rbp
	jbe	.LBB21_190
	decq	%rsi
	movq	80(%r9), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r13d
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r9)
	cmpq	%rdi, %rsi
	je	.LBB21_107
	jbe	.LBB21_207
	addq	%rcx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB21_107
	notl	%eax
	movq	8(%r8), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	12(%rsp), %edx
	movl	%edx, (%rcx,%rax,8)
.LBB21_107:
	movq	88(%rbp), %r14
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 12(%rsp)
	cmpq	72(%rbp), %r14
	jne	.LBB21_109
	leaq	72(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.31(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	(%rsp), %r8
.LBB21_109:
	movq	80(%rbp), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movl	%ebx, (%rax,%rcx)
	movl	%r12d, 4(%rax,%rcx)
	movl	%r13d, 8(%rax,%rcx)
	incq	%r14
	movq	%r14, 88(%rbp)
	movl	144(%rbp), %r14d
	movl	148(%rbp), %esi
	movq	8(%r8), %rax
	movl	%ebx, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	12(%rsp), %edx
	movl	%edx, (%rax,%rcx,8)
	movl	%r13d, 4(%rax,%rcx,8)
	movl	%r14d, 8(%rax,%rcx,8)
	movl	%esi, 76(%rsp)
	movl	%esi, 12(%rax,%rcx,8)
	movq	16(%rsp), %rax
	movq	32(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	40(%rax), %r12
	movd	72(%rsp), %xmm0
	movd	%xmm0, 320(%rsp)
	movq	160(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	60(%rsp), %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB21_130
	movq	%r14, 48(%rsp)
	shlq	$4, %r12
	movl	%r13d, 40(%rsp)
	movq	24(%rsp), %rdi
	movq	%r15, %rbp
	movl	60(%rsp), %r15d
	movq	%rbx, %r13
	movq	152(%rsp), %rbx
	.p2align	4
.LBB21_111:
	leaq	16(%rdi), %r14
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	movl	40(%rsp), %r8d
	movq	%r13, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r14, %rdi
	addq	$-16, %r12
	jne	.LBB21_111
	movq	48(%rsp), %r15
	movq	64(%rsp), %rbp
	movq	%r13, %rbx
	jmp	.LBB21_129
.LBB21_113:
	movq	16(%rsp), %rax
	movq	32(%rax), %r14
	movq	40(%rax), %r12
	movd	72(%rsp), %xmm0
	movd	%xmm0, 320(%rsp)
	movq	160(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	.cfi_escape 0x2e, 0x00
	movq	88(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	60(%rsp), %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.LBB21_128
	movq	%r15, 48(%rsp)
	shlq	$4, %r12
	movq	%r14, %rdi
	movl	40(%rsp), %r13d
	movq	%rbp, %r15
	movl	60(%rsp), %ebp
	movq	%rbx, 24(%rsp)
	movq	152(%rsp), %rbx
	.p2align	4
.LBB21_115:
	leaq	16(%rdi), %r14
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	movl	%r13d, %r8d
	movq	24(%rsp), %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r14, %rdi
	addq	$-16, %r12
	jne	.LBB21_115
	movq	80(%rsp), %rbp
	movq	48(%rsp), %r15
	movq	24(%rsp), %rbx
	jmp	.LBB21_145
.LBB21_117:
	movq	80(%rsp), %r9
	movq	88(%r9), %rsi
	cmpq	%rdi, %rsi
	movq	64(%rsp), %r15
	jbe	.LBB21_191
	movq	256(%r8), %rax
	movq	%rax, 40(%rsp)
	decq	%rsi
	movq	80(%r9), %rax
	movq	%rdi, %r10
	shlq	$4, %r10
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%r10), %r11d
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%r10)
	movq	%rsi, 88(%r9)
	cmpq	%rdi, %rsi
	movq	144(%rsp), %rcx
	je	.LBB21_122
	jbe	.LBB21_208
	addq	%r10, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB21_122
	notl	%eax
	movq	8(%r8), %rsi
	leaq	(%rax,%rax,2), %rax
	movl	12(%rsp), %edx
	movl	%edx, (%rsi,%rax,8)
.LBB21_122:
	movq	%rbx, 24(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	movq	152(%rsp), %rsi
	movl	%r11d, %ebx
	movl	%r11d, %edx
	movq	%rcx, 144(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	328(%rsp), %r13d
	movq	88(%r15), %r14
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 12(%rsp)
	cmpq	72(%r15), %r14
	jne	.LBB21_124
	leaq	72(%r15), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.31(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB21_124:
	movq	80(%r15), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	24(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movl	%r12d, 4(%rax,%rcx)
	movl	%r13d, 8(%rax,%rcx)
	incq	%r14
	movq	%r14, 88(%r15)
	movl	144(%r15), %r9d
	movl	148(%r15), %r10d
	movq	(%rsp), %rsi
	movq	8(%rsi), %rax
	movl	%edx, %ecx
	movl	$4294967295, %edx
	xorq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	12(%rsp), %edx
	movl	%edx, (%rax,%rcx,8)
	movl	%r13d, 4(%rax,%rcx,8)
	movl	%r9d, 8(%rax,%rcx,8)
	movl	%r10d, 12(%rax,%rcx,8)
	movl	320(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB21_141
	movq	8(%rsi), %rax
	notl	%ecx
	xorl	%edi, %edi
	leaq	(%rcx,%rcx,2), %rdx
	cmpq	%rcx, 16(%rsi)
	jbe	.LBB21_131
	movl	16(%rax,%rdx,8), %r8d
	cmpl	324(%rsp), %r8d
	jne	.LBB21_132
	leaq	(%rax,%rdx,8), %rsi
	movl	(%rsi), %edi
	movl	8(%rsi), %ecx
	movl	12(%rsi), %esi
	jmp	.LBB21_132
.LBB21_128:
	movq	80(%rsp), %rbp
.LBB21_129:
	movl	40(%rsp), %r13d
	jmp	.LBB21_145
.LBB21_130:
	movq	%r14, %r15
	jmp	.LBB21_145
.LBB21_131:
.LBB21_132:
	movl	%edi, (%rax,%rdx,8)
	movl	%ebx, 4(%rax,%rdx,8)
	movl	%ecx, 8(%rax,%rdx,8)
	movl	%esi, 12(%rax,%rdx,8)
	notl	%edi
	movq	80(%rsp), %rax
	cmpl	%ecx, 144(%rax)
	jne	.LBB21_135
	movq	88(%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB21_215
	movq	80(%rax), %rax
	jmp	.LBB21_140
.LBB21_135:
	cmpl	%ecx, 144(%r15)
	jne	.LBB21_138
	movq	88(%r15), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB21_216
	movq	80(%r15), %rax
	jmp	.LBB21_140
.LBB21_138:
	movl	%ecx, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	40(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB21_217
	addq	%rcx, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
.LBB21_140:
	shlq	$4, %rdi
	movl	%ebx, 8(%rax,%rdi)
.LBB21_141:
	movl	%r10d, 76(%rsp)
	movq	%r9, 48(%rsp)
	movq	16(%rsp), %rax
	movq	32(%rax), %r12
	movq	40(%rax), %r15
	movd	72(%rsp), %xmm0
	movd	%xmm0, 176(%rsp)
	movq	160(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdx
	movq	%rax, %rdi
	movq	24(%rsp), %r14
	movq	%r14, %rsi
	movl	%r13d, 40(%rsp)
	movl	60(%rsp), %r13d
	movl	%r13d, %ecx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::insert@GOTPCREL(%rip)
	testq	%r15, %r15
	movq	144(%rsp), %rbx
	je	.LBB21_144
	movq	%r12, %rdi
	shlq	$4, %r15
	.p2align	4
.LBB21_143:
	leaq	16(%rdi), %r12
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movl	%r13d, %ecx
	movl	40(%rsp), %r8d
	movq	%r14, %r9
	callq	*bevy_ecs::component::required::RequiredComponentConstructor::initialize@GOTPCREL(%rip)
	movq	%r12, %rdi
	addq	$-16, %r15
	jne	.LBB21_143
.LBB21_144:
	movq	48(%rsp), %r15
	movq	64(%rsp), %rbp
	movl	40(%rsp), %r13d
	movq	%r14, %rbx
.LBB21_145:
	movq	16(%rsp), %rax
	movq	64(%rax), %r12
	movl	152(%rbp), %eax
	testq	%r12, %r12
	movl	%r13d, 40(%rsp)
	movq	%r15, 48(%rsp)
	je	.LBB21_152
	movl	%eax, %ecx
	andl	$1, %ecx
	je	.LBB21_152
	movq	16(%rsp), %rax
	movq	56(%rax), %r13
	shlq	$3, %r12
	xorl	%r14d, %r14d
	leaq	320(%rsp), %r15
	movq	(%rsp), %rdi
	jmp	.LBB21_149
	.p2align	4
.LBB21_148:
	addq	$8, %r14
	cmpq	%r14, %r12
	je	.LBB21_151
.LBB21_149:
	movq	(%r13,%r14), %rax
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	248(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB21_148
	movq	%rbx, 320(%rsp)
	movq	%rax, 328(%rsp)
	movb	$0, 336(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rsi
	callq	*%rcx
	movq	(%rsp), %rdi
	jmp	.LBB21_148
.LBB21_151:
	movl	152(%rbp), %eax
	movl	40(%rsp), %r13d
	movq	48(%rsp), %r15
.LBB21_152:
	testb	$32, %al
	movq	96(%rsp), %r14
	je	.LBB21_154
	movq	16(%rsp), %rax
	movq	56(%rax), %r8
	movq	64(%rax), %rax
	leaq	(%r8,%rax,8), %r9
	movb	$0, 320(%rsp)
	.cfi_escape 0x2e, 0x10
	leaq	320(%rsp), %rax
	leaq	11(%rsp), %r10
	movq	(%rsp), %rdi
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
.LBB21_154:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	*bevy_ecs::archetype::ArchetypeAfterBundleInsert::iter_inserted@GOTPCREL(%rip)
	movl	152(%rbp), %eax
	testb	$2, %al
	movq	(%rsp), %rcx
	je	.LBB21_165
	movq	%rbp, 64(%rsp)
	movq	320(%rsp), %rcx
	movq	328(%rsp), %r12
	movq	336(%rsp), %rax
	movq	344(%rsp), %r13
	leaq	176(%rsp), %r15
	.p2align	4
.LBB21_156:
	testq	%rcx, %rcx
	je	.LBB21_159
	cmpq	%r12, %rcx
	je	.LBB21_159
	leaq	8(%rcx), %r14
	movq	%rax, %rbp
	jmp	.LBB21_162
	.p2align	4
.LBB21_159:
	testq	%rax, %rax
	je	.LBB21_164
	cmpq	%r13, %rax
	je	.LBB21_164
	leaq	8(%rax), %rbp
	xorl	%r14d, %r14d
	movq	%rax, %rcx
	movq	%rbp, %rax
.LBB21_162:
	movq	(%rcx), %rdx
	movq	(%rsp), %rdi
	movq	64(%rdi), %rcx
	leaq	(%rdx,%rdx,8), %rsi
	shlq	$5, %rsi
	movq	256(%rcx,%rsi), %r8
	movq	%r14, %rcx
	testq	%r8, %r8
	je	.LBB21_156
	movq	%rbx, 176(%rsp)
	movq	%rdx, 184(%rsp)
	movb	$0, 192(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rsi
	callq	*%r8
	movq	%rbp, %rax
	movq	%r14, %rcx
	jmp	.LBB21_156
.LBB21_164:
	movq	64(%rsp), %rax
	movl	152(%rax), %eax
	movq	96(%rsp), %r14
	movq	(%rsp), %rcx
	movl	40(%rsp), %r13d
	movq	48(%rsp), %r15
.LBB21_165:
	testb	$64, %al
	je	.LBB21_185
	.cfi_escape 0x2e, 0x00
	leaq	104(%rsp), %rbp
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi
	movq	%rcx, %r12
	callq	*bevy_ecs::archetype::ArchetypeAfterBundleInsert::iter_inserted@GOTPCREL(%rip)
	movb	$0, 39(%rsp)
	movq	$1, 616(%rsp)
	movq	%rbx, 168(%rsp)
	movq	%rbx, 624(%rsp)
	incl	1460(%r12)
	.cfi_escape 0x2e, 0x00
	movl	$1, %esi
	movq	608(%rsp), %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	movq	%r12, %rcx
	testq	%rax, %rax
	je	.LBB21_185
	movq	%rax, %rbx
	movq	%rcx, 296(%rsp)
	movq	%rbp, %rcx
	movq	104(%rsp), %rbp
	movq	112(%rsp), %r15
	movq	120(%rsp), %r12
	movq	128(%rsp), %r13
	leaq	296(%rsp), %rax
	movq	%rax, 320(%rsp)
	leaq	616(%rsp), %rax
	movq	%rax, 328(%rsp)
	movq	%rcx, 336(%rsp)
	leaq	168(%rsp), %r14
	movq	%r14, 344(%rsp)
	leaq	624(%rsp), %rax
	movq	%rax, 352(%rsp)
	leaq	11(%rsp), %rax
	movq	%rax, 360(%rsp)
	movq	%rax, 368(%rsp)
	leaq	39(%rsp), %rax
	movq	%rax, 376(%rsp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax,%rcx), %rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	24(%rbx), %rsi
	movq	%rax, 176(%rsp)
	addq	$16, %rax
	movq	%rax, 184(%rsp)
	movq	%rcx, 192(%rsp)
	movw	%dx, 200(%rsp)
	movq	%rsi, 208(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	leaq	320(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	cmpl	$0, 168(%rsp)
	je	.LBB21_176
	cmpq	$0, 88(%rbx)
	je	.LBB21_176
	movq	168(%rsp), %rcx
	movabsq	$-7046029256521940991, %rdx
	imulq	%rcx, %rdx
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
.LBB21_170:
	andq	%rsi, %rdx
	movdqu	(%rax,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB21_173
.LBB21_171:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	cmpq	(%rdi,%r10,8), %rcx
	je	.LBB21_175
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB21_171
.LBB21_173:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB21_176
	addq	%r8, %rdx
	addq	$16, %rdx
	addq	$16, %r8
	jmp	.LBB21_170
.LBB21_175:
	movq	-32(%rax,%r10,8), %rcx
	movq	-24(%rax,%r10,8), %rdx
	addq	%rcx, %rdx
	incq	%rdx
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	notl	%esi
	movq	-8(%rax,%r10,8), %rax
	movq	%rcx, 176(%rsp)
	addq	$16, %rcx
	movq	%rcx, 184(%rsp)
	movq	%rdx, 192(%rsp)
	movw	%si, 200(%rsp)
	movq	%rax, 208(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	leaq	320(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
.LBB21_176:
	movq	%rbx, 176(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	%r14, 192(%rsp)
	testq	%rbp, %rbp
	je	.LBB21_180
	cmpq	%r15, %rbp
	je	.LBB21_180
	subq	%rbp, %r15
	shrq	$3, %r15
	xorl	%r14d, %r14d
	leaq	176(%rsp), %rbx
	.p2align	4
.LBB21_179:
	movq	(%rbp,%r14,8), %rsi
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	core::iter::adapters::copied::copy_fold::{{closure}}
	incq	%r14
	cmpq	%r14, %r15
	jne	.LBB21_179
.LBB21_180:
	testq	%r12, %r12
	je	.LBB21_184
	cmpq	%r13, %r12
	je	.LBB21_184
	subq	%r12, %r13
	shrq	$3, %r13
	xorl	%r14d, %r14d
	leaq	176(%rsp), %rbx
	.p2align	4
.LBB21_183:
	movq	(%r12,%r14,8), %rsi
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	core::iter::adapters::copied::copy_fold::{{closure}}
	incq	%r14
	cmpq	%r14, %r13
	jne	.LBB21_183
.LBB21_184:
	movq	96(%rsp), %r14
	movq	(%rsp), %rcx
	movl	40(%rsp), %r13d
	movq	48(%rsp), %r15
.LBB21_185:
	movl	12(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	%r13d, 20(%r14)
	movl	%r15d, 24(%r14)
	movl	76(%rsp), %eax
	movl	%eax, 28(%r14)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.19(%rip), %rsi
	movq	%rcx, %rdi
	movq	%rcx, %rbx
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
	addq	$632, %rsp
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
.LBB21_186:
	.cfi_def_cfa_offset 688
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.18(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB21_187:
	movl	$16, %edi
.LBB21_188:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB21_52
	jmp	.LBB21_188
.LBB21_189:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB21_53
.LBB21_190:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB21_191:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB21_192:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.44(%rip), %rsi
	jmp	.LBB21_199
.LBB21_193:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.41(%rip), %rsi
	jmp	.LBB21_199
.LBB21_194:
.Ltmp129:
	leaq	664(%r12), %rdx
	.cfi_escape 0x2e, 0x00
	movl	$1, %esi
	movq	64(%rsp), %rdi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
.Ltmp130:
	movq	(%rsp), %r12
	movq	632(%r12), %rbx
	movq	%r15, 48(%rsp)
	movq	640(%r12), %r15
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%r12)
	leaq	-16(%rax), %rcx
	andq	%r15, %rcx
	movq	48(%rsp), %r15
	movb	$69, (%rbx,%rax)
	movb	$69, 16(%rbx,%rcx)
	incq	656(%r12)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-1676403772588836767, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movq	%r13, -16(%rbx,%rax,8)
	movq	%rbp, -8(%rbx,%rax,8)
	jmp	.LBB21_55
.LBB21_196:
.Ltmp139:
	.cfi_escape 0x2e, 0x00
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp140:
	jmp	.LBB21_89
.LBB21_197:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.39(%rip), %rsi
	jmp	.LBB21_199
.LBB21_198:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.36(%rip), %rsi
.LBB21_199:
	leaq	320(%rsp), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.34(%rip), %rax
	movq	%rax, (%rdi)
	movq	$1, 8(%rdi)
	movq	$8, 16(%rdi)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 24(%rdi)
.Ltmp133:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp134:
	jmp	.LBB21_214
.LBB21_200:
.Ltmp90:
	.cfi_escape 0x2e, 0x00
	movl	$8, %ecx
	movl	$288, %r8d
	movq	24(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp91:
	movq	(%rsp), %rax
	movq	72(%rax), %rcx
	jmp	.LBB21_31
.LBB21_202:
	movq	%r15, %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.28(%rip), %rdx
	jmp	.LBB21_213
.LBB21_203:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.29(%rip), %rdx
	jmp	.LBB21_210
.LBB21_204:
	movq	%r15, %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.42(%rip), %rdx
	jmp	.LBB21_213
.LBB21_205:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.43(%rip), %rdx
	jmp	.LBB21_212
.LBB21_206:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.27(%rip), %rdx
	jmp	.LBB21_210
.LBB21_207:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.46(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB21_208:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.46(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB21_209:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.37(%rip), %rdx
.LBB21_210:
	movq	%rax, %rdi
	jmp	.LBB21_213
.LBB21_211:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.38(%rip), %rdx
.LBB21_212:
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB21_213:
.Ltmp135:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp136:
.LBB21_214:
	ud2
.LBB21_215:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB21_216:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB21_217:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.32(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB21_218:
.Ltmp92:
	movq	%rax, %r14
.Ltmp93:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp94:
	jmp	.LBB21_232
.LBB21_219:
.Ltmp95:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB21_220:
.Ltmp98:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rsi
	movl	$288, %edx
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB21_232
.LBB21_221:
.Ltmp117:
	movq	%rax, %r14
	jmp	.LBB21_223
.LBB21_222:
.Ltmp111:
	movq	%rax, %r14
	subq	$-128, %r15
.Ltmp112:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp113:
.LBB21_223:
	movaps	416(%rsp), %xmm0
	movups	%xmm0, 96(%rbx)
	movaps	400(%rsp), %xmm0
	movups	%xmm0, 80(%rbx)
	movaps	384(%rsp), %xmm0
	movups	%xmm0, 64(%rbx)
	movdqa	320(%rsp), %xmm0
	movdqa	336(%rsp), %xmm1
	movdqa	352(%rsp), %xmm2
	movdqa	368(%rsp), %xmm3
	movdqu	%xmm3, 48(%rbx)
	movdqu	%xmm2, 32(%rbx)
	movdqu	%xmm1, 16(%rbx)
	movdqu	%xmm0, (%rbx)
	jmp	.LBB21_232
.LBB21_224:
.Ltmp114:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB21_225:
.Ltmp105:
	movq	%rax, %r14
.Ltmp106:
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
.Ltmp107:
	jmp	.LBB21_232
.LBB21_226:
.Ltmp108:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB21_227:
.Ltmp125:
	movq	%rax, %r14
.Ltmp126:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>
.Ltmp127:
	jmp	.LBB21_232
.LBB21_228:
.Ltmp128:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB21_229:
.Ltmp120:
	movq	%rax, %r14
	movq	296(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB21_232
	movq	304(%rsp), %rdi
	shlq	$3, %rsi
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB21_232
.LBB21_231:
.Ltmp141:
	movq	%rax, %r14
.LBB21_232:
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB21_234
	movq	112(%rsp), %rdi
	shlq	$3, %rsi
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB21_234:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end21:
	.size	entity_insert, .Lfunc_end21-entity_insert
	.cfi_endproc
	.section	.gcc_except_table.entity_insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception7:
	.byte	255
	.byte	155
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp84-.Lfunc_begin7
	.uleb128 .Ltmp89-.Ltmp84
	.uleb128 .Ltmp120-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp96-.Lfunc_begin7
	.uleb128 .Ltmp97-.Ltmp96
	.uleb128 .Ltmp98-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp97-.Lfunc_begin7
	.uleb128 .Ltmp99-.Ltmp97
	.byte	0
	.byte	0
	.uleb128 .Ltmp99-.Lfunc_begin7
	.uleb128 .Ltmp102-.Ltmp99
	.uleb128 .Ltmp120-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp103-.Lfunc_begin7
	.uleb128 .Ltmp104-.Ltmp103
	.uleb128 .Ltmp105-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp109-.Lfunc_begin7
	.uleb128 .Ltmp110-.Ltmp109
	.uleb128 .Ltmp111-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp115-.Lfunc_begin7
	.uleb128 .Ltmp116-.Ltmp115
	.uleb128 .Ltmp117-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp86-.Lfunc_begin7
	.uleb128 .Ltmp119-.Ltmp86
	.uleb128 .Ltmp120-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp121-.Lfunc_begin7
	.uleb128 .Ltmp122-.Ltmp121
	.uleb128 .Ltmp141-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp123-.Lfunc_begin7
	.uleb128 .Ltmp124-.Ltmp123
	.uleb128 .Ltmp125-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp131-.Lfunc_begin7
	.uleb128 .Ltmp138-.Ltmp131
	.uleb128 .Ltmp141-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp138-.Lfunc_begin7
	.uleb128 .Ltmp129-.Ltmp138
	.byte	0
	.byte	0
	.uleb128 .Ltmp129-.Lfunc_begin7
	.uleb128 .Ltmp134-.Ltmp129
	.uleb128 .Ltmp141-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp90-.Lfunc_begin7
	.uleb128 .Ltmp91-.Ltmp90
	.uleb128 .Ltmp92-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp91-.Lfunc_begin7
	.uleb128 .Ltmp135-.Ltmp91
	.byte	0
	.byte	0
	.uleb128 .Ltmp135-.Lfunc_begin7
	.uleb128 .Ltmp136-.Ltmp135
	.uleb128 .Ltmp141-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp136-.Lfunc_begin7
	.uleb128 .Ltmp93-.Ltmp136
	.byte	0
	.byte	0
	.uleb128 .Ltmp93-.Lfunc_begin7
	.uleb128 .Ltmp94-.Ltmp93
	.uleb128 .Ltmp95-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp94-.Lfunc_begin7
	.uleb128 .Ltmp112-.Ltmp94
	.byte	0
	.byte	0
	.uleb128 .Ltmp112-.Lfunc_begin7
	.uleb128 .Ltmp113-.Ltmp112
	.uleb128 .Ltmp114-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp106-.Lfunc_begin7
	.uleb128 .Ltmp107-.Ltmp106
	.uleb128 .Ltmp108-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp126-.Lfunc_begin7
	.uleb128 .Ltmp127-.Ltmp126
	.uleb128 .Ltmp128-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp127-.Lfunc_begin7
	.uleb128 .Lfunc_end21-.Ltmp127
	.byte	0
	.byte	0
.Lcst_end7:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase5:
	.byte	0
	.p2align	2, 0x0

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
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 77

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.3
	.asciz	"M\000\000\000\000\000\000\000\313\007\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.5,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.ascii	"capacity overflow"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 17

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 81

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.6
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
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
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.17, 103

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.18,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.18:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.17
	.asciz	"g\000\000\000\000\000\000\000\034\005\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.18, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.19,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.19:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.17
	.asciz	"g\000\000\000\000\000\000\000\006\b\000\000\024\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.19, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.20,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.20:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.20, 106

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.21,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.21:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.20
	.asciz	"j\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.21, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.22,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.22,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.22:
	.ascii	"entity_insert_sparse::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.22, 23

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.23,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.23:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.23, 98

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.24,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.24:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"b\000\000\000\000\000\000\000\265\001\000\000\032\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.24, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.25,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.25:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.23
	.asciz	"b\000\000\000\000\000\000\000\255\001\000\000B\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.25, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.26,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.26:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/bundle/insert.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.26, 100

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.27,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.27:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.26
	.asciz	"d\000\000\000\000\000\000\000i\000\000\0007\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.27, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.28,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.28:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.26
	.asciz	"d\000\000\000\000\000\000\000I\000\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.28, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.29,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.29:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.26
	.asciz	"d\000\000\000\000\000\000\000R\000\000\0003\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.29, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.30,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.30:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.30, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.31,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.31:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000S\002\000\000\027\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.31, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.32,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.32:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000C\002\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.32, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.33,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.33,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.33:
	.ascii	"mid > len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.33, 9

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.34,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.34:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.33
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.34, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.35,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.35:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.35, 104

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.36,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.36,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.36:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.35
	.asciz	"h\000\000\000\000\000\000\000\354\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.36, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.37,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.37:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.35
	.asciz	"h\000\000\000\000\000\000\000\355\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.37, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.38,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.38:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.35
	.asciz	"h\000\000\000\000\000\000\000\355\002\000\000/\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.38, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.39,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.39,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.39:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.35
	.asciz	"h\000\000\000\000\000\000\000\351\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.39, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.40,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.40,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.40:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.35
	.asciz	"h\000\000\000\000\000\000\000\352\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.40, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.41,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.41,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.41:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000a\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.41, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.42,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.42,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.42:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000b\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.42, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.43,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.43,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.43:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000b\003\000\000,\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.43, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.44,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.44,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.44:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000^\003\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.44, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.45,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.45,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.45:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000_\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.45, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.46,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.46,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.46:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.30
	.asciz	"`\000\000\000\000\000\000\000o\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.46, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.47,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.83959b72e5b8236df4a28836bf490603.47:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.47, 105

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.48,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.48,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.48:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.47
	.asciz	"i\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.48, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.49,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.49:
	.zero	16,255
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.49, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.50,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.50,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.50:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.49
	.zero	24
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.50, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.51,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.51,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.51:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"\\\000\000\000\000\000\000\000V\001\000\000.\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.51, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.52,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.52,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.52:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"\\\000\000\000\000\000\000\000E\001\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.52, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.53,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.53,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.53:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"\\\000\000\000\000\000\000\000\322\004\000\000\016\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.53, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.54,@object
	.section	.rodata.cst32,"aM",@progbits,32
.Lanon.83959b72e5b8236df4a28836bf490603.54:
	.ascii	"assertion failed: new_cap >= len"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.54, 32

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.55,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.55,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.55:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"\\\000\000\000\000\000\000\000\235\004\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.55, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

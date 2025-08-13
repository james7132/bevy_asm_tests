	.file	"entity_remove.acf6e20586511bc9-cgu.0"
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rsi
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.54(%rip), %rsi
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
	movdqu	.Lanon.ddd9cd1641521d33379e20f985469fcb.58(%rip), %xmm0
	movdqu	%xmm0, 88(%rsp)
	movdqu	.Lanon.ddd9cd1641521d33379e20f985469fcb.58+16(%rip), %xmm1
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

	.section	".text.core::ptr::drop_in_place<bevy_ecs::event::collections::Events<bevy_ecs::lifecycle::RemovedComponentEntity>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<bevy_ecs::event::collections::Events<bevy_ecs::lifecycle::RemovedComponentEntity>>,@function
core::ptr::drop_in_place<bevy_ecs::event::collections::Events<bevy_ecs::lifecycle::RemovedComponentEntity>>:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB5_2
	movq	8(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB5_2:
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
	movq	40(%rbx), %rdi
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
	.size	core::ptr::drop_in_place<bevy_ecs::event::collections::Events<bevy_ecs::lifecycle::RemovedComponentEntity>>, .Lfunc_end5-core::ptr::drop_in_place<bevy_ecs::event::collections::Events<bevy_ecs::lifecycle::RemovedComponentEntity>>
	.cfi_endproc

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
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
	movq	8(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB6_3:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>, .Lfunc_end6-core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>
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
	je	.LBB7_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_2:
	movq	8(%rbx), %r14
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_7
	movl	$1, %r13d
	subq	%rax, %r13
	movq	$-32, %r15
	xorl	%r12d, %r12d
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %rbp
	jmp	.LBB7_4
	.p2align	4
.LBB7_6:
	addq	$-32, %r15
	incq	%r13
	addq	$32, %r12
	cmpq	$1, %r13
	je	.LBB7_7
.LBB7_4:
	movq	(%r14,%r12), %rax
	lock		decq	(%rax)
	jne	.LBB7_6
	leaq	(%r14,%r12), %rdi
	#MEMBARRIER
.Ltmp41:
	callq	*%rbp
.Ltmp42:
	jmp	.LBB7_6
.LBB7_7:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_17
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
.LBB7_17:
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
.LBB7_9:
	.cfi_def_cfa_offset 64
.Ltmp43:
	movq	%rax, (%rsp)
	testq	%r13, %r13
	jne	.LBB7_10
.LBB7_14:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_16
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB7_16:
	movq	(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_10:
	movq	%r14, %r12
	subq	%r15, %r12
	negq	%r13
	jmp	.LBB7_11
	.p2align	4
.LBB7_13:
	addq	$32, %r12
	decq	%r13
	je	.LBB7_14
.LBB7_11:
	movq	(%r12), %rax
	lock		decq	(%rax)
	jne	.LBB7_13
	#MEMBARRIER
.Ltmp44:
	movq	%r12, %rdi
	callq	*%rbp
.Ltmp45:
	jmp	.LBB7_13
.LBB7_18:
.Ltmp46:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end7:
	.size	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>, .Lfunc_end7-core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	je	.LBB8_2
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
.LBB8_2:
	addq	$24, %rdi
	jmp	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::required::RequiredComponentConstructor>>
.Lfunc_end8:
	.size	core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>, .Lfunc_end8-core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>
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
	je	.LBB9_4
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB9_4:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB9_10
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
.LBB9_10:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB9_8:
	.cfi_def_cfa_offset 32
.Ltmp55:
	movq	%rax, %r14
	jmp	.LBB9_9
.LBB9_6:
.Ltmp49:
	movq	%rax, %r14
	leaq	128(%rbx), %rdi
.Ltmp50:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp51:
.LBB9_9:
	addq	$184, %rbx
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB9_7:
.Ltmp52:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end9:
	.size	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>, .Lfunc_end9-core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>","a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
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
	.uleb128 .Lfunc_end9-.Ltmp51
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
.LBB10_3:
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
.LBB10_2:
.Ltmp61:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end10:
	.size	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>, .Lfunc_end10-core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>","a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
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
	.uleb128 .Lfunc_end10-.Ltmp60
	.byte	0
	.byte	0
.Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase4:
	.byte	0
	.p2align	2, 0x0

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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB12_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB12_11:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
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
	.cfi_def_cfa_offset 8
	retq
.LBB13_2:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rsi
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
	movq	%rdx, 8(%rsp)
	movq	%rcx, 72(%rsp)
	incl	1460(%rdi)
	addq	$896, %rdi
	callq	*bevy_ecs::observer::centralized_storage::Observers::try_get_observers@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB14_31
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
	leaq	8(%rsp), %rcx
	movq	%rcx, 112(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	leaq	7(%rsp), %rcx
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
	movq	%rax, 16(%rsp)
	addq	$16, %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movw	%dx, 40(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	16(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	cmpl	$0, 8(%rsp)
	je	.LBB14_10
	cmpq	$0, 88(%rbx)
	je	.LBB14_10
	movq	8(%rsp), %rcx
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
	movq	%rcx, 16(%rsp)
	addq	$16, %rcx
	movq	%rcx, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movw	%si, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
.LBB14_10:
	cmpq	%rbp, %r12
	movq	56(%rsp), %r11
	je	.LBB14_31
	subq	%r12, %rbp
	shrq	$3, %rbp
	xorl	%r14d, %r14d
	jmp	.LBB14_12
	.p2align	4
.LBB14_16:
	andq	%rax, %rdx
	movdqu	(%r15,%rdx), %xmm1
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
.LBB14_21:
	movq	-64(%r15,%r13,8), %rax
	movq	-56(%r15,%r13,8), %rcx
	addq	%rax, %rcx
	incq	%rcx
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	notl	%edx
	movq	-40(%r15,%r13,8), %rsi
	movq	%rax, 16(%rsp)
	addq	$16, %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movw	%dx, 40(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	16(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	movq	56(%rsp), %r11
	cmpl	$0, 8(%rsp)
	je	.LBB14_30
	leaq	(%r15,%r13,8), %rsi
	cmpq	$0, -8(%rsi)
	je	.LBB14_30
	movq	8(%rsp), %rcx
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
	movq	%rcx, 16(%rsp)
	addq	$16, %rcx
	movq	%rcx, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movw	%si, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	<hashbrown::map::Iter<K,V> as core::iter::traits::iterator::Iterator>::fold
	movq	56(%rsp), %r11
	jmp	.LBB14_30
	.p2align	4
.LBB14_12:
	movq	(%r12,%r14,8), %rcx
	movq	(%r11), %rax
	cmpq	136(%rax), %rcx
	jae	.LBB14_30
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB14_30
	cmpq	$0, 56(%rbx)
	je	.LBB14_30
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
	jmp	.LBB14_16
	.p2align	4
.LBB14_30:
	incq	%r14
	cmpq	%rbp, %r14
	jne	.LBB14_12
.LBB14_31:
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.61(%rip), %rdx
	movl	$17, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
.LBB15_6:
	testq	%rax, %rax
	jne	.LBB15_10
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.60(%rip), %rdx
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.62(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.63(%rip), %rdx
	movl	$32, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB16_21:
	movq	$0, 24(%rsp)
	movq	%rbx, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rcx
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.59(%rip), %r8
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
	movzwl	24(%rdi), %r15d
	movq	32(%rdi), %r14
	movq	(%rsi), %rax
	movq	%rax, 88(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 80(%rsp)
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 56(%rsp)
	movq	48(%rsi), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsi), %rax
	movq	%rax, 40(%rsp)
	movq	%rdx, 72(%rsp)
	jmp	.LBB17_1
	.p2align	4
.LBB17_6:
	xorl	%ecx, %ecx
.LBB17_7:
	movq	%rcx, 16(%rsp)
.LBB17_25:
	leal	-1(%rbx), %r15d
	andl	%ebx, %r15d
	movq	16(%rsp), %rax
	leaq	144(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	(%rsp), %rax
	movq	%rax, (%rcx)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	56(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	104(%rsp), %rdx
	movq	%rdx, 128(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 136(%rsp)
	movq	%rax, 168(%rsp)
	movq	%rcx, 176(%rsp)
	movq	112(%rsp), %rdi
	leaq	128(%rsp), %rsi
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	callq	*120(%rsp)
	decq	%r14
	movq	72(%rsp), %rdx
.LBB17_1:
	testw	%r15w, %r15w
	jne	.LBB17_5
	testq	%r14, %r14
	je	.LBB17_30
	.p2align	4
.LBB17_3:
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$-256, %rbp
	addq	$16, %r12
	cmpl	$65535, %r15d
	je	.LBB17_3
	notl	%r15d
.LBB17_5:
	movl	%r15d, %ebx
	rep		bsfl	%ebx, %eax
	shll	$4, %eax
	movq	%rbp, %rcx
	subq	%rax, %rcx
	movq	-16(%rcx), %rax
	movq	%rax, 104(%rsp)
	movq	-8(%rcx), %rdi
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 112(%rsp)
	movq	80(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 96(%rsp)
	movq	(%rdx), %r13
	movq	8(%rdx), %r15
	cmpq	%r15, %r13
	movq	%rdi, 120(%rsp)
	je	.LBB17_6
	movq	16(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	(%rax), %rcx
	movq	136(%rcx), %rax
	jmp	.LBB17_9
	.p2align	4
.LBB17_11:
	addq	$8, %r13
	cmpq	%r15, %r13
	je	.LBB17_6
.LBB17_9:
	movq	(%r13), %rsi
	cmpq	%rax, %rsi
	jae	.LBB17_11
	movq	128(%rcx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.LBB17_11
	movq	%rsi, (%rsp)
	addq	$8, %r13
	movl	$1, %ecx
	jmp	.LBB17_21
	.p2align	4
.LBB17_26:
	addq	$8, %r13
.LBB17_21:
	cmpq	%r15, %r13
	je	.LBB17_7
	movq	(%r13), %rsi
	cmpq	%rax, %rsi
	jae	.LBB17_26
	cmpq	$0, (%rdx,%rsi,8)
	je	.LBB17_26
	movq	%rsi, 8(%rsp)
	movq	$2, 16(%rsp)
	addq	$8, %r13
	cmpq	%r15, %r13
	je	.LBB17_25
.LBB17_12:
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	136(%rax), %rcx
	movq	%r14, 24(%rsp)
	jmp	.LBB17_13
	.p2align	4
.LBB17_15:
	addq	$8, %r13
	cmpq	%r15, %r13
	movq	24(%rsp), %r14
	je	.LBB17_25
.LBB17_13:
	movq	(%r13), %r14
	cmpq	%rcx, %r14
	jae	.LBB17_15
	movq	128(%rax), %rdx
	cmpq	$0, (%rdx,%r14,8)
	je	.LBB17_15
	movq	16(%rsp), %rsi
	xorl	%edx, %edx
	cmpq	$3, %rsi
	movq	(%rsp), %rax
	movq	%rsp, %rcx
	cmovbq	%rcx, %rax
	setb	%dl
	leaq	16(%rsp), %rcx
	leaq	8(%rsp), %rdi
	cmovaeq	%rdi, %rcx
	movl	$2, %edi
	cmovbq	%rdi, %rsi
	movq	8(%rsp,%rdx,8), %rdx
	cmpq	%rsi, %rdx
	je	.LBB17_17
.LBB17_19:
	addq	$8, %r13
	movq	%r14, (%rax,%rdx,8)
	incq	(%rcx)
	cmpq	%r15, %r13
	movq	24(%rsp), %r14
	jne	.LBB17_12
	jmp	.LBB17_25
.LBB17_17:
.Ltmp62:
	movq	%rsp, %rdi
	callq	smallvec::SmallVec<A>::reserve_one_unchecked
.Ltmp63:
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	leaq	8(%rsp), %rcx
	jmp	.LBB17_19
.LBB17_30:
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
.LBB17_27:
	.cfi_def_cfa_offset 240
.Ltmp64:
	movq	%rax, %rbx
	movq	16(%rsp), %rsi
	cmpq	$3, %rsi
	jb	.LBB17_29
	movq	(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB17_29:
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
	.uleb128 .Ltmp63-.Lfunc_begin5
	.uleb128 .Lfunc_end17-.Ltmp63
	.byte	0
	.byte	0
.Lcst_end5:
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
	je	.LBB18_1
.LBB18_2:
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
.LBB18_3:
	andq	%r9, %rbx
	movdqu	(%rax,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r15d
	testl	%r15d, %r15d
	je	.LBB18_7
.LBB18_4:
	rep		bsfl	%r15d, %r12d
	addq	%rbx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,2), %r12
	cmpq	-24(%rax,%r12,8), %rsi
	jne	.LBB18_6
	cmpq	-16(%rax,%r12,8), %rdx
	je	.LBB18_17
.LBB18_6:
	leal	-1(%r15), %ebp
	andw	%r15w, %bp
	movl	%ebp, %r15d
	jne	.LBB18_4
	.p2align	4
.LBB18_7:
	cmpq	$1, %r14
	je	.LBB18_11
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	je	.LBB18_9
	rep		bsfl	%r10d, %r10d
	addq	%rbx, %r10
	andq	%r9, %r10
.LBB18_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ebp
	testl	%ebp, %ebp
	jne	.LBB18_14
	movl	$1, %r14d
	jmp	.LBB18_13
.LBB18_9:
	xorl	%r14d, %r14d
.LBB18_13:
	addq	%r11, %rbx
	addq	$16, %rbx
	addq	$16, %r11
	jmp	.LBB18_3
.LBB18_17:
	leaq	(%rax,%r12,8), %rax
	movq	%rcx, -8(%rax)
	jmp	.LBB18_18
.LBB18_14:
	movzbl	(%rax,%r10), %r11d
	testb	%r11b, %r11b
	jns	.LBB18_15
.LBB18_16:
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
.LBB18_18:
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
.LBB18_1:
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
	jmp	.LBB18_2
.LBB18_15:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
	movzbl	(%rax,%r10), %r11d
	jmp	.LBB18_16
.Lfunc_end18:
	.size	hashbrown::map::HashMap<K,V,S,A>::insert, .Lfunc_end18-hashbrown::map::HashMap<K,V,S,A>::insert
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
	je	.LBB19_1
.LBB19_3:
	rep		bsfl	%eax, %eax
	addq	%rdx, %rax
	andq	%rsi, %rax
	cmpb	$0, (%rdi,%rax)
	jns	.LBB19_4
	retq
.LBB19_1:
	movl	$16, %ecx
.LBB19_2:
	addq	%rcx, %rdx
	andq	%rsi, %rdx
	movdqu	(%rdi,%rdx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	jne	.LBB19_3
	jmp	.LBB19_2
.LBB19_4:
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	retq
.Lfunc_end19:
	.size	hashbrown::raw::RawTableInner::find_insert_slot, .Lfunc_end19-hashbrown::raw::RawTableInner::find_insert_slot
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI20_0:
	.zero	16,123
	.section	.text.entity_remove,"ax",@progbits
	.globl	entity_remove
	.p2align	4
	.type	entity_remove,@function
entity_remove:
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
	subq	$600, %rsp
	.cfi_def_cfa_offset 656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %eax
	movl	%eax, 68(%rsp)
	testl	%eax, %eax
	je	.LBB20_214
	movabsq	$-672360588848191064, %r11
	movabsq	$1536655378845628875, %rbx
	movl	20(%rdi), %eax
	movl	%eax, 44(%rsp)
	movl	24(%rdi), %r15d
	movq	(%rdi), %r13
	leaq	56(%r13), %r12
	leaq	1440(%r13), %rax
	movq	%r12, 240(%rsp)
	movq	%rax, 248(%rsp)
	movq	$0, 216(%rsp)
	movq	$8, 224(%rsp)
	movq	$0, 232(%rsp)
	leaq	608(%r13), %rbp
	leaq	336(%r13), %rcx
	movq	%rcx, 32(%rsp)
	leaq	632(%r13), %r14
	movq	632(%r13), %rcx
	movq	640(%r13), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI20_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r11, %r10
	movq	%rdi, 272(%rsp)
	movq	%r13, 24(%rsp)
.LBB20_2:
	andq	%rdx, %r10
	movdqu	(%rcx,%r10), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB20_6
.LBB20_3:
	rep		bsfl	%r8d, %r9d
	addq	%r10, %r9
	andq	%rdx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%rbx, -24(%rcx,%r9,8)
	jne	.LBB20_5
	cmpq	%r11, -16(%rcx,%r9,8)
	je	.LBB20_77
.LBB20_5:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB20_3
	.p2align	4
.LBB20_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB20_8
	addq	%rsi, %r10
	addq	$16, %r10
	addq	$16, %rsi
	jmp	.LBB20_2
.LBB20_77:
	leaq	(%rcx,%r9,8), %rax
	movq	-8(%rax), %r14
	jmp	.LBB20_78
.LBB20_8:
	movq	$0, 72(%rsp)
	movq	$8, 80(%rsp)
	movq	$0, 88(%rsp)
	cmpq	$0, 104(%r13)
	movq	%r14, 48(%rsp)
	movq	%rbp, 56(%rsp)
	je	.LBB20_28
	movq	80(%r13), %rcx
	movq	88(%r13), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%r11, %rdi
.LBB20_10:
	andq	%rdx, %rdi
	movdqu	(%rcx,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB20_14
.LBB20_11:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rdx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%rbx, -24(%rcx,%r9,8)
	jne	.LBB20_13
	cmpq	%r11, -16(%rcx,%r9,8)
	je	.LBB20_16
.LBB20_13:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB20_11
.LBB20_14:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB20_28
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB20_10
.LBB20_28:
	movzbl	152(%r13), %ecx
	movq	184(%r13), %rcx
	movq	192(%r13), %rdx
	xorl	%edi, %edi
	pcmpeqd	%xmm1, %xmm1
	movq	%r11, %r8
.LBB20_29:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB20_33
.LBB20_30:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	movq	%r10, %rsi
	negq	%rsi
	imulq	$112, %rsi, %rsi
	cmpq	%rbx, -112(%rcx,%rsi)
	jne	.LBB20_32
	cmpq	%r11, -104(%rcx,%rsi)
	je	.LBB20_35
.LBB20_32:
	leal	-1(%r9), %esi
	andw	%r9w, %si
	movl	%esi, %r9d
	jne	.LBB20_30
.LBB20_33:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB20_40
	addq	%rdi, %r8
	addq	$16, %r8
	addq	$16, %rdi
	movabsq	$-672360588848191064, %r11
	movabsq	$1536655378845628875, %rbx
	jmp	.LBB20_29
.LBB20_16:
	leaq	(%rcx,%r9,8), %rax
	movq	-8(%rax), %rbp
.Ltmp65:
	movl	$8, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	callq	*bevy_ecs::component::required::enforce_no_required_components_recursion@GOTPCREL(%rip)
.Ltmp66:
	jmp	.LBB20_17
.LBB20_35:
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
	ja	.LBB20_37
	incq	200(%r13)
	movb	$-1, %dl
.LBB20_37:
	movb	%dl, (%rcx,%rdi)
	movb	%dl, 16(%rcx,%r8)
	decq	208(%r13)
	movq	-96(%rsi), %rcx
	cmpq	$2, %rcx
	jne	.LBB20_38
.LBB20_40:
	movq	(%rax), %rbp
	leaq	1(%rbp), %rbx
	movq	%rbx, (%rax)
	movw	$256, 160(%rsp)
	movq	$1, 96(%rsp)
	movabsq	$1536655378845628875, %rax
	movq	%rax, 104(%rsp)
	movabsq	$-672360588848191064, %rax
	movq	%rax, 112(%rsp)
	movq	$4, 136(%rsp)
	movq	$4, 144(%rsp)
	movq	$0, 152(%rsp)
	movb	$1, 162(%rsp)
	movq	$0, 120(%rsp)
.Ltmp69:
	leaq	288(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp70:
	movq	%r13, %rcx
	movq	72(%r13), %r13
	subq	%r13, %rbx
	jbe	.LBB20_42
	movq	(%r12), %rax
	subq	%r13, %rax
	movq	%r13, %rcx
	cmpq	%rax, %rbx
	ja	.LBB20_44
.LBB20_46:
	movq	24(%rsp), %rax
	movq	64(%rax), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%rbp, %rsi
	notq	%rsi
	addq	%r13, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB20_47:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB20_47
	subq	%rdi, %rcx
	movq	24(%rsp), %r13
	movq	%rcx, 72(%r13)
	jmp	.LBB20_49
.LBB20_42:
	movq	64(%rcx), %rax
	movq	%rcx, %r13
.LBB20_49:
	leaq	(,%rbp,8), %r14
	addq	%rbp, %r14
	shlq	$5, %r14
	leaq	(%rax,%r14), %rbx
	cmpl	$2, (%rax,%r14)
	je	.LBB20_51
.Ltmp77:
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp78:
.LBB20_51:
	leaq	288(%rsp), %rsi
	movl	$288, %edx
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	leaq	80(%r13), %rdi
.Ltmp80:
	movabsq	$1536655378845628875, %rsi
	movabsq	$-672360588848191064, %rdx
	movq	%rbp, %rcx
	callq	hashbrown::map::HashMap<K,V,S,A>::insert
.Ltmp81:
.Ltmp82:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.54(%rip), %rsi
	leaq	216(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp83:
	movq	224(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 232(%rsp)
	movq	$0, 96(%rsp)
	movq	$8, 104(%rsp)
	movq	$0, 112(%rsp)
	movdqu	.Lanon.ddd9cd1641521d33379e20f985469fcb.58(%rip), %xmm0
	movdqu	%xmm0, 120(%rsp)
	movdqu	.Lanon.ddd9cd1641521d33379e20f985469fcb.58+16(%rip), %xmm1
	movdqu	%xmm1, 136(%rsp)
	movq	$0, 152(%rsp)
	movq	$8, 160(%rsp)
	movq	$0, 168(%rsp)
	movdqu	%xmm0, 176(%rsp)
	movdqu	%xmm1, 192(%rsp)
	movq	240(%rsp), %rdi
.Ltmp84:
	leaq	96(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::required::<impl bevy_ecs::component::info::Components>::register_required_by@GOTPCREL(%rip)
.Ltmp85:
	movq	232(%rsp), %rax
	testq	%rax, %rax
	je	.LBB20_56
	decq	%rax
	movq	%rax, 232(%rsp)
.LBB20_56:
	movq	240(%rsp), %rax
	movq	8(%rax), %rax
	leaq	(%rax,%r14), %rbx
	movups	192(%rsp), %xmm0
	movaps	%xmm0, 384(%rsp)
	movups	176(%rsp), %xmm0
	movaps	%xmm0, 368(%rsp)
	movups	160(%rsp), %xmm0
	movaps	%xmm0, 352(%rsp)
	movups	96(%rsp), %xmm0
	movups	112(%rsp), %xmm1
	movups	128(%rsp), %xmm2
	movups	144(%rsp), %xmm3
	movaps	%xmm3, 336(%rsp)
	movaps	%xmm2, 320(%rsp)
	movaps	%xmm1, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	leaq	(%rax,%r14), %r13
	addq	$72, %r13
.Ltmp90:
	movq	%r13, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp91:
	subq	$-128, %rbx
.Ltmp96:
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp97:
	movaps	384(%rsp), %xmm0
	movups	%xmm0, 96(%r13)
	movaps	368(%rsp), %xmm0
	movups	%xmm0, 80(%r13)
	movaps	352(%rsp), %xmm0
	movups	%xmm0, 64(%r13)
	movdqa	288(%rsp), %xmm0
	movdqa	304(%rsp), %xmm1
	movdqa	320(%rsp), %xmm2
	movdqa	336(%rsp), %xmm3
	movdqu	%xmm3, 48(%r13)
	movdqu	%xmm2, 32(%r13)
	movdqu	%xmm1, 16(%r13)
	movdqu	%xmm0, (%r13)
	movq	24(%rsp), %r13
	jmp	.LBB20_17
.LBB20_38:
	movups	-88(%rsi), %xmm0
	movdqu	-72(%rsi), %xmm1
	movdqu	-56(%rsi), %xmm2
	movdqu	-40(%rsi), %xmm3
	movdqu	%xmm3, 344(%rsp)
	movdqu	%xmm2, 328(%rsp)
	movdqu	%xmm1, 312(%rsp)
	movups	%xmm0, 296(%rsp)
	movdqu	-24(%rsi), %xmm0
	movq	-8(%rsi), %rax
	movq	%rcx, 288(%rsp)
	movdqu	%xmm0, 360(%rsp)
	movq	%rax, 376(%rsp)
.Ltmp67:
	leaq	288(%rsp), %rdi
	leaq	216(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
.Ltmp68:
	movq	%rax, %rbp
.LBB20_17:
.Ltmp99:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp100:
	movq	80(%rsp), %rax
	movq	%rbp, (%rax)
	movq	$1, 88(%rsp)
	movq	624(%r13), %r14
	movq	240(%rsp), %r8
	movdqu	72(%rsp), %xmm0
	movdqa	%xmm0, 96(%rsp)
	movq	$1, 112(%rsp)
.Ltmp102:
	movq	%r14, (%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rsi
	leaq	288(%rsp), %rdi
	leaq	96(%rsp), %r9
	movl	$16, %edx
	movq	32(%rsp), %rcx
	callq	*bevy_ecs::bundle::info::BundleInfo::new@GOTPCREL(%rip)
.Ltmp103:
	movq	56(%rsp), %rdi
	cmpq	(%rdi), %r14
	movabsq	$-672360588848191064, %rbx
	jne	.LBB20_21
.Ltmp104:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp105:
.LBB20_21:
	movq	24(%rsp), %r13
	movq	616(%r13), %rax
	imulq	$56, %r14, %rcx
	movq	336(%rsp), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movups	288(%rsp), %xmm0
	movdqu	304(%rsp), %xmm1
	movdqu	320(%rsp), %xmm2
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	leaq	1(%r14), %rax
	movq	%rax, 624(%r13)
	movq	632(%r13), %rax
	movq	640(%r13), %rcx
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.LBB20_22
.LBB20_24:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB20_25
.LBB20_26:
	movq	648(%r13), %rdi
	testq	%rdi, %rdi
	sete	%r8b
	andb	$1, %sil
	testb	%r8b, %sil
	jne	.LBB20_72
	movzbl	%sil, %esi
	subq	%rsi, %rdi
	movq	%rdi, 648(%r13)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$123, (%rax,%rdx)
	movb	$123, 16(%rax,%rsi)
	incq	656(%r13)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$1536655378845628875, %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%rbx, -16(%rax,%rcx,8)
	movq	%r14, -8(%rax,%rcx,8)
.LBB20_78:
	imulq	$56, %r14, %rbp
	addq	616(%r13), %rbp
	leaq	248(%r13), %rdx
	leaq	896(%r13), %r9
.Ltmp112:
	movl	%r15d, (%rsp)
	movl	$1, 8(%rsp)
	leaq	288(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	32(%rsp), %rcx
	movq	%r12, %r8
	callq	*bevy_ecs::bundle::remove::<impl bevy_ecs::bundle::info::BundleInfo>::remove_bundle_from_archetype@GOTPCREL(%rip)
.Ltmp113:
	movl	292(%rsp), %r13d
	cmpl	%r15d, %r13d
	setne	%r14b
	andb	288(%rsp), %r14b
	cmpb	$1, %r14b
	jne	.LBB20_80
	movl	%r13d, %esi
	movzbl	296(%rsp), %eax
	movq	24(%rsp), %rdx
	movq	256(%rdx), %rcx
	movq	264(%rdx), %rdx
	cmpl	%r13d, %r15d
	jbe	.LBB20_82
	cmpq	%r15, %rdx
	jb	.LBB20_88
	jne	.LBB20_92
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.51(%rip), %rdx
	jmp	.LBB20_107
.LBB20_80:
	movb	$3, %bl
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	movq	272(%rsp), %r13
	jne	.LBB20_119
	jmp	.LBB20_120
.LBB20_82:
	cmpq	%rsi, %rdx
	jb	.LBB20_83
	cmpl	%r15d, %r13d
	jbe	.LBB20_85
	cmpq	%rsi, %rdx
	je	.LBB20_87
.LBB20_92:
	leaq	(%r15,%r15,4), %r12
	shlq	$5, %r12
	leaq	(%rsi,%rsi,4), %rdx
	shlq	$5, %rdx
	movl	148(%rcx,%r12), %r15d
	movq	%rdx, %r8
	movl	148(%rcx,%rdx), %esi
	cmpl	%esi, %r15d
	jne	.LBB20_94
	movq	$0, 32(%rsp)
	jmp	.LBB20_110
.LBB20_94:
	movq	24(%rsp), %rdi
	movq	416(%rdi), %rdx
	movq	424(%rdi), %rdi
	cmpl	%esi, %r15d
	jbe	.LBB20_95
	cmpq	%r15, %rdi
	jb	.LBB20_101
	jne	.LBB20_109
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.46(%rip), %rdx
	jmp	.LBB20_107
.LBB20_95:
	cmpq	%rsi, %rdi
	jb	.LBB20_96
	cmpl	%r15d, %esi
	jbe	.LBB20_98
	cmpq	%rsi, %rdi
	je	.LBB20_100
.LBB20_109:
	leaq	(%r15,%r15,8), %rdi
	leaq	(%rdx,%rdi,8), %rdi
	movq	%rdi, 32(%rsp)
	leaq	(%rsi,%rsi,8), %rsi
	leaq	(%rdx,%rsi,8), %rdx
	movq	%rdx, 56(%rsp)
.LBB20_110:
	addq	%rcx, %r12
	movq	%r8, %r15
	addq	%rcx, %r15
	testb	%al, %al
	je	.LBB20_111
	movq	%r15, 48(%rsp)
	movq	24(%rsp), %rax
	movq	1408(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB20_115
	movq	(%rbx), %rax
	movq	16(%rbx), %r15
	subq	%r15, %rax
	cmpq	$11, %rax
	ja	.LBB20_117
.Ltmp114:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp115:
	jmp	.LBB20_117
.LBB20_111:
	xorl	%ebx, %ebx
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	movq	272(%rsp), %r13
	je	.LBB20_120
.LBB20_119:
	movq	224(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB20_120:
	testb	%r14b, %r14b
	je	.LBB20_178
	movq	%rbp, 96(%rsp)
	leaq	104(%rsp), %r14
	movq	%r12, 104(%rsp)
	movq	%r15, 112(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 136(%rsp)
	movb	%bl, 144(%rsp)
	movl	281(%rsp), %eax
	movl	284(%rsp), %ecx
	movl	%eax, 145(%rsp)
	movl	%ecx, 148(%rsp)
	movq	8(%r13), %rbx
	testb	$-128, 152(%r12)
	jne	.LBB20_123
	movq	24(%rsp), %r13
	jmp	.LBB20_125
.LBB20_123:
	movq	16(%rbp), %rsi
	movq	%rsi, %rdi
	subq	40(%rbp), %rdi
	jb	.LBB20_215
	movq	8(%rbp), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 288(%rsp)
	movq	%rcx, 296(%rsp)
	movq	%r14, 304(%rsp)
	movb	$0, 72(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	288(%rsp), %r8
	leaq	216(%rsp), %r9
	movl	$2, %esi
	movq	24(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	96(%rsp), %rbp
	movq	104(%rsp), %r12
.LBB20_125:
	movq	16(%rbp), %rsi
	movq	40(%rbp), %rax
	movq	%rsi, %rdi
	subq	%rax, %rdi
	jb	.LBB20_215
	je	.LBB20_138
	movl	152(%r12), %eax
	andl	$4, %eax
	je	.LBB20_138
	movq	8(%rbp), %r15
	leaq	(%r15,%rdi,8), %r13
	movzbl	144(%rsp), %ebp
	leaq	288(%rsp), %rsi
.LBB20_129:
	movq	104(%rsp), %r12
	movq	136(%r12), %rcx
	jmp	.LBB20_130
	.p2align	4
.LBB20_132:
	addq	$8, %r15
	cmpq	%r13, %r15
	je	.LBB20_137
.LBB20_130:
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jae	.LBB20_132
	movq	128(%r12), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB20_132
	movq	24(%rsp), %rdi
	movq	64(%rdi), %rcx
	leaq	(%rax,%rax,8), %rdx
	shlq	$5, %rdx
	movq	264(%rcx,%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB20_135
	movq	%rbx, 288(%rsp)
	movq	%rax, 296(%rsp)
	movb	%bpl, 304(%rsp)
	movq	%rsi, %r12
	callq	*%rcx
	movq	%r12, %rsi
.LBB20_135:
	addq	$8, %r15
	cmpq	%r13, %r15
	jne	.LBB20_129
	movq	104(%rsp), %r12
.LBB20_137:
	movq	24(%rsp), %r13
.LBB20_138:
	testb	$1, 153(%r12)
	movq	96(%rsp), %rax
	je	.LBB20_141
	movq	16(%rax), %rsi
	movq	%rsi, %rdi
	subq	40(%rax), %rdi
	jb	.LBB20_215
	movq	8(%rax), %rax
	leaq	(%rax,%rdi,8), %rcx
	movq	%rax, 288(%rsp)
	movq	%rcx, 296(%rsp)
	movq	%r14, 304(%rsp)
	movb	$0, 72(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	288(%rsp), %r8
	leaq	216(%rsp), %r9
	movl	$3, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	callq	bevy_ecs::observer::centralized_storage::Observers::invoke
	movq	96(%rsp), %rax
	movq	104(%rsp), %r12
.LBB20_141:
	movq	16(%rax), %rsi
	movq	40(%rax), %rcx
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	jb	.LBB20_215
	movq	%rbx, 32(%rsp)
	je	.LBB20_152
	movl	152(%r12), %ecx
	andl	$8, %ecx
	je	.LBB20_152
	movq	8(%rax), %r14
	leaq	(%r14,%rdi,8), %r15
	leaq	288(%rsp), %rbx
.LBB20_145:
	movq	104(%rsp), %rax
	movq	136(%rax), %rdx
	jmp	.LBB20_146
	.p2align	4
.LBB20_148:
	addq	$8, %r14
	cmpq	%r15, %r14
	je	.LBB20_152
.LBB20_146:
	movq	(%r14), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB20_148
	movq	128(%rax), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.LBB20_148
	movq	64(%r13), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	movq	272(%rax,%rdx), %rax
	testq	%rax, %rax
	je	.LBB20_151
	movq	32(%rsp), %rdx
	movq	%rdx, 288(%rsp)
	movq	%rcx, 296(%rsp)
	movb	$0, 304(%rsp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*%rax
.LBB20_151:
	addq	$8, %r14
	cmpq	%r15, %r14
	jne	.LBB20_145
.LBB20_152:
	movq	32(%rsp), %rdx
	shrq	$32, %rdx
	movq	96(%rsp), %rcx
	movq	120(%rsp), %r15
	leaq	336(%r15), %rax
	movq	%rax, 576(%rsp)
	movq	16(%rcx), %rbx
	movq	40(%rcx), %rax
	movq	%rbx, %rdi
	subq	%rax, %rdi
	jb	.LBB20_216
	movq	%rdx, 256(%rsp)
	jne	.LBB20_154
.LBB20_158:
	movq	104(%rsp), %rcx
	movl	68(%rsp), %edi
	notl	%edi
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB20_217
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
	movq	272(%rsp), %r13
	je	.LBB20_166
	jbe	.LBB20_218
	addq	%rdx, %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB20_166
	notl	%ecx
	cmpq	%rcx, 16(%r15)
	jbe	.LBB20_219
	movl	4(%rax), %edx
	movq	8(%r15), %rax
	leaq	(%rcx,%rcx,2), %rcx
	cmpl	%edx, 16(%rax,%rcx,8)
	jne	.LBB20_219
	leaq	(%rax,%rcx,8), %rax
	cmpl	$0, (%rax)
	je	.LBB20_219
	movl	68(%rsp), %ecx
	movl	%ecx, (%rax)
.LBB20_166:
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB20_179
	movq	136(%rsp), %rcx
	leaq	288(%rsp), %rdi
	movl	44(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_drop_missing_unchecked@GOTPCREL(%rip)
	movq	112(%rsp), %r14
	movl	296(%rsp), %ebp
	movq	88(%r14), %rbx
	cmpq	72(%r14), %rbx
	jne	.LBB20_169
	leaq	72(%r14), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB20_169:
	movq	80(%r14), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rdx
	movl	%edx, (%rax,%rcx)
	movq	256(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	%ebp, 8(%rax,%rcx)
	leaq	1(%rbx), %rax
	movq	%rax, 88(%r14)
	movl	144(%r14), %ecx
	movl	148(%r14), %edx
	movl	288(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_176
	notl	%eax
	cmpq	%rax, 16(%r15)
	jbe	.LBB20_182
	movq	8(%r15), %rsi
	leaq	(%rax,%rax,2), %rax
	movl	16(%rsi,%rax,8), %edi
	cmpl	292(%rsp), %edi
	jne	.LBB20_182
	leaq	(%rsi,%rax,8), %rsi
	movl	(%rsi), %edi
	testl	%edi, %edi
	je	.LBB20_182
	movl	8(%rsi), %eax
	movl	44(%rsp), %r8d
	movl	%r8d, 4(%rsi)
	movq	264(%r15), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB20_183
	movq	256(%r15), %r8
	notl	%edi
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	88(%r8,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB20_184
	addq	%r8, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
	shlq	$4, %rdi
	movl	44(%rsp), %esi
	movl	%esi, 8(%rax,%rdi)
.LBB20_176:
	movq	32(%rsp), %rsi
	jmp	.LBB20_177
.LBB20_154:
	movq	8(%rcx), %r12
	leaq	824(%r15), %rcx
	movq	%rcx, 584(%rsp)
	leaq	872(%r15), %rcx
	movq	%rcx, 264(%rsp)
	leaq	848(%r15), %rcx
	movq	%rcx, 592(%rsp)
	shlq	$3, %rbx
	shlq	$3, %rax
	subq	%rax, %rbx
	xorl	%r14d, %r14d
	movq	%rbx, 56(%rsp)
	movq	%r12, 48(%rsp)
	jmp	.LBB20_155
	.p2align	4
.LBB20_157:
	addq	$8, %r14
	cmpq	%r14, %rbx
	je	.LBB20_158
.LBB20_155:
	movq	(%r12,%r14), %r13
	movq	104(%rsp), %rax
	cmpq	136(%rax), %r13
	jae	.LBB20_157
	movq	128(%rax), %rax
	cmpq	$0, (%rax,%r13,8)
	je	.LBB20_157
	movq	888(%r15), %rbp
	cmpq	%rbp, %r13
	jae	.LBB20_196
	movq	880(%r15), %rax
	movq	(%rax,%r13,8), %rax
	testq	%rax, %rax
	je	.LBB20_196
	notq	%rax
	leaq	(%rax,%rax,8), %rbx
	jmp	.LBB20_188
	.p2align	4
.LBB20_196:
	movq	%r13, %rbx
	movq	$0, 288(%rsp)
	movq	$8, 296(%rsp)
	leaq	304(%rsp), %rax
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	$8, 328(%rsp)
	movdqu	%xmm0, 32(%rax)
	movq	$0, 48(%rax)
	movq	840(%r15), %r12
	subq	%rbp, %rbx
	jb	.LBB20_201
	incq	%rbx
	movq	264(%rsp), %rax
	movq	(%rax), %rax
	subq	%rbp, %rax
	cmpq	%rax, %rbx
	ja	.LBB20_198
.LBB20_200:
	leaq	(,%rbp,8), %rdi
	addq	880(%r15), %rdi
	leaq	(,%rbx,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%rbx, %rbp
	movq	%rbp, 888(%r15)
.LBB20_201:
	cmpq	%rbp, %r13
	jae	.LBB20_202
	movq	%r12, %rax
	notq	%rax
	movq	880(%r15), %rcx
	movq	%rax, (%rcx,%r13,8)
	movq	864(%r15), %rbx
	cmpq	848(%r15), %rbx
	jne	.LBB20_207
.Ltmp124:
	movq	592(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.36(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp125:
.LBB20_207:
	movq	856(%r15), %rax
	movq	%r13, (%rax,%rbx,8)
	incq	%rbx
	movq	%rbx, 864(%r15)
	movq	840(%r15), %rbx
	cmpq	824(%r15), %rbx
	jne	.LBB20_209
.Ltmp127:
	movq	584(%rsp), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.37(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp128:
.LBB20_209:
	movq	832(%r15), %rax
	leaq	(%rbx,%rbx,8), %rcx
	movq	352(%rsp), %rdx
	movq	%rdx, 64(%rax,%rcx,8)
	movdqu	288(%rsp), %xmm0
	movdqu	304(%rsp), %xmm1
	movdqu	320(%rsp), %xmm2
	movdqu	336(%rsp), %xmm3
	movdqu	%xmm3, 48(%rax,%rcx,8)
	movdqu	%xmm2, 32(%rax,%rcx,8)
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movdqu	%xmm0, (%rax,%rcx,8)
	incq	%rbx
	movq	%rbx, 840(%r15)
	leaq	(%r12,%r12,8), %rbx
.LBB20_188:
	shlq	$3, %rbx
	addq	832(%r15), %rbx
	movq	48(%rbx), %r12
	movq	64(%rbx), %rbp
	cmpq	32(%rbx), %r12
	jne	.LBB20_190
	leaq	32(%rbx), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.56(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB20_190:
	movq	40(%rbx), %rax
	movq	%r12, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	%rbp, 8(%rax,%rcx)
	incq	%r12
	movq	%r12, 48(%rbx)
	incq	64(%rbx)
	movq	104(%rsp), %rax
	cmpq	136(%rax), %r13
	movq	56(%rsp), %rbx
	movq	48(%rsp), %r12
	jae	.LBB20_157
	movq	128(%rax), %rcx
	movq	(%rcx,%r13,8), %rcx
	testq	%rcx, %rcx
	je	.LBB20_157
	movq	96(%rax), %rax
	notq	%rcx
	cmpb	$1, (%rax,%rcx)
	jne	.LBB20_157
	movq	576(%rsp), %rdi
	movq	%r13, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB20_213
	movq	%rax, %rdi
	movq	32(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove@GOTPCREL(%rip)
	jmp	.LBB20_157
.LBB20_198:
.Ltmp118:
	movl	$8, %ecx
	movl	$8, %r8d
	movq	264(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp119:
	movq	888(%r15), %rbp
	jmp	.LBB20_200
.LBB20_179:
	movq	112(%rsp), %r14
	movq	88(%r14), %rbx
	cmpq	72(%r14), %rbx
	jne	.LBB20_181
	leaq	72(%r14), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.30(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB20_181:
	movq	80(%r14), %rax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	32(%rsp), %rsi
	movl	%esi, (%rax,%rcx)
	movq	256(%rsp), %rdx
	movl	%edx, 4(%rax,%rcx)
	movl	44(%rsp), %ebp
	movl	%ebp, 8(%rax,%rcx)
	movq	%rbx, %rax
	incq	%rax
	movq	%rax, 88(%r14)
	movl	144(%r14), %ecx
	movl	148(%r14), %edx
.LBB20_177:
	notl	%ebx
	movq	8(%r15), %rax
	notl	%esi
	leaq	(%rsi,%rsi,2), %rsi
	movl	%ebx, (%rax,%rsi,8)
	movl	%ebp, 4(%rax,%rsi,8)
	movl	%ecx, 8(%rax,%rsi,8)
	movl	%edx, 12(%rax,%rsi,8)
	movl	%ebx, 16(%r13)
	movl	%ebp, 20(%r13)
	movl	%ecx, 24(%r13)
	movl	%edx, 28(%r13)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rsi
	movq	24(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	%r13, %rdi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::update_location@GOTPCREL(%rip)
.LBB20_178:
	movq	%r13, 288(%rsp)
	leaq	288(%rsp), %rax
	#APP
	#NO_APP
	addq	$600, %rsp
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
.LBB20_115:
	.cfi_def_cfa_offset 656
	movq	1416(%rax), %rbx
	movq	(%rbx), %rax
	movq	16(%rbx), %r15
	subq	%r15, %rax
	cmpq	$11, %rax
	jbe	.LBB20_116
.LBB20_117:
	movq	8(%rbx), %rax
	leaq	core::ops::function::FnOnce::call_once(%rip), %rcx
	movq	%rcx, (%rax,%r15)
	movl	%r13d, 8(%rax,%r15)
	addq	$12, %r15
	movq	%r15, 16(%rbx)
	xorl	%ebx, %ebx
	movq	48(%rsp), %r15
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	movq	272(%rsp), %r13
	jne	.LBB20_119
	jmp	.LBB20_120
.LBB20_215:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdx
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB20_214:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rsi
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::panic_despawned@GOTPCREL(%rip)
.LBB20_216:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdx
	movq	%rbx, %rsi
	callq	*core::slice::index::slice_end_index_len_fail@GOTPCREL(%rip)
.LBB20_217:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB20_213:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.34(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB20_22:
	movl	$16, %edi
.LBB20_23:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	jne	.LBB20_24
	jmp	.LBB20_23
.LBB20_25:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB20_26
.LBB20_88:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.50(%rip), %rsi
	jmp	.LBB20_102
.LBB20_83:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.47(%rip), %rsi
	jmp	.LBB20_102
.LBB20_72:
.Ltmp110:
	leaq	664(%r13), %rdx
	movl	$1, %esi
	movq	48(%rsp), %rdi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
.Ltmp111:
	movq	24(%rsp), %rbp
	movq	632(%rbp), %rbx
	movq	640(%rbp), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movabsq	$-672360588848191064, %rdx
	callq	hashbrown::raw::RawTableInner::find_insert_slot
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 648(%rbp)
	leaq	-16(%rax), %rcx
	andq	%r13, %rcx
	movq	%rbp, %r13
	movb	$123, (%rbx,%rax)
	movb	$123, 16(%rbx,%rcx)
	incq	656(%rbp)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$1536655378845628875, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movabsq	$-672360588848191064, %rcx
	movq	%rcx, -16(%rbx,%rax,8)
	movq	%r14, -8(%rbx,%rax,8)
	jmp	.LBB20_78
.LBB20_101:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.45(%rip), %rsi
	jmp	.LBB20_102
.LBB20_96:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.42(%rip), %rsi
.LBB20_102:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.40(%rip), %rax
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	movq	$8, 16(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 24(%rbx)
.Ltmp132:
	movq	%rbx, %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp133:
	jmp	.LBB20_103
.LBB20_116:
.Ltmp116:
	movl	$12, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp117:
	jmp	.LBB20_117
.LBB20_44:
.Ltmp71:
	movl	$8, %ecx
	movl	$288, %r8d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp72:
	movq	24(%rsp), %rax
	movq	72(%rax), %rcx
	jmp	.LBB20_46
.LBB20_202:
.Ltmp121:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.38(%rip), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp122:
	jmp	.LBB20_103
.LBB20_182:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB20_219:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.28(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB20_85:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.48(%rip), %rdx
	jmp	.LBB20_108
.LBB20_87:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.49(%rip), %rdx
	jmp	.LBB20_107
.LBB20_218:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.52(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB20_183:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.32(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB20_184:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB20_98:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.43(%rip), %rdx
	jmp	.LBB20_108
.LBB20_100:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.44(%rip), %rdx
.LBB20_107:
	xorl	%r15d, %r15d
	xorl	%esi, %esi
.LBB20_108:
.Ltmp130:
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp131:
.LBB20_103:
	ud2
.LBB20_60:
.Ltmp73:
	movq	%rax, %r14
.Ltmp74:
	leaq	288(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp75:
	jmp	.LBB20_75
.LBB20_61:
.Ltmp76:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB20_203:
.Ltmp120:
	jmp	.LBB20_211
.LBB20_59:
.Ltmp79:
	movq	%rax, %r14
	leaq	288(%rsp), %rsi
	movl	$288, %edx
	movq	%rbx, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB20_75
.LBB20_64:
.Ltmp98:
	movq	%rax, %r14
	jmp	.LBB20_65
.LBB20_62:
.Ltmp92:
	movq	%rax, %r14
	subq	$-128, %rbx
.Ltmp93:
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp94:
.LBB20_65:
	movaps	384(%rsp), %xmm0
	movups	%xmm0, 96(%r13)
	movaps	368(%rsp), %xmm0
	movups	%xmm0, 80(%r13)
	movaps	352(%rsp), %xmm0
	movups	%xmm0, 64(%r13)
	movdqa	288(%rsp), %xmm0
	movdqa	304(%rsp), %xmm1
	movdqa	320(%rsp), %xmm2
	movdqa	336(%rsp), %xmm3
	movdqu	%xmm3, 48(%r13)
	movdqu	%xmm2, 32(%r13)
	movdqu	%xmm1, 16(%r13)
	movdqu	%xmm0, (%r13)
	jmp	.LBB20_75
.LBB20_63:
.Ltmp95:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB20_66:
.Ltmp86:
	movq	%rax, %r14
.Ltmp87:
	leaq	96(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::required::RequiredComponents>
.Ltmp88:
	jmp	.LBB20_75
.LBB20_67:
.Ltmp89:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB20_68:
.Ltmp106:
	movq	%rax, %r14
.Ltmp107:
	leaq	288(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::info::BundleInfo>
.Ltmp108:
	jmp	.LBB20_75
.LBB20_69:
.Ltmp109:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB20_210:
.Ltmp129:
	jmp	.LBB20_211
.LBB20_195:
.Ltmp126:
	jmp	.LBB20_211
.LBB20_70:
.Ltmp101:
	movq	%rax, %r14
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB20_75
	movq	80(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB20_75
.LBB20_204:
.Ltmp123:
.LBB20_211:
	movq	%rax, %r14
	leaq	288(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::event::collections::Events<bevy_ecs::lifecycle::RemovedComponentEntity>>
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB20_74:
.Ltmp134:
	movq	%rax, %r14
.LBB20_75:
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB20_76
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB20_76:
	movq	224(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end20:
	.size	entity_remove, .Lfunc_end20-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception6:
	.byte	255
	.byte	155
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp65-.Lfunc_begin6
	.uleb128 .Ltmp70-.Ltmp65
	.uleb128 .Ltmp101-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp77-.Lfunc_begin6
	.uleb128 .Ltmp78-.Ltmp77
	.uleb128 .Ltmp79-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp78-.Lfunc_begin6
	.uleb128 .Ltmp80-.Ltmp78
	.byte	0
	.byte	0
	.uleb128 .Ltmp80-.Lfunc_begin6
	.uleb128 .Ltmp83-.Ltmp80
	.uleb128 .Ltmp101-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp84-.Lfunc_begin6
	.uleb128 .Ltmp85-.Ltmp84
	.uleb128 .Ltmp86-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp90-.Lfunc_begin6
	.uleb128 .Ltmp91-.Ltmp90
	.uleb128 .Ltmp92-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp96-.Lfunc_begin6
	.uleb128 .Ltmp97-.Ltmp96
	.uleb128 .Ltmp98-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp67-.Lfunc_begin6
	.uleb128 .Ltmp100-.Ltmp67
	.uleb128 .Ltmp101-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp102-.Lfunc_begin6
	.uleb128 .Ltmp103-.Ltmp102
	.uleb128 .Ltmp134-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp104-.Lfunc_begin6
	.uleb128 .Ltmp105-.Ltmp104
	.uleb128 .Ltmp106-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp112-.Lfunc_begin6
	.uleb128 .Ltmp115-.Ltmp112
	.uleb128 .Ltmp134-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp115-.Lfunc_begin6
	.uleb128 .Ltmp124-.Ltmp115
	.byte	0
	.byte	0
	.uleb128 .Ltmp124-.Lfunc_begin6
	.uleb128 .Ltmp125-.Ltmp124
	.uleb128 .Ltmp126-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp127-.Lfunc_begin6
	.uleb128 .Ltmp128-.Ltmp127
	.uleb128 .Ltmp129-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp128-.Lfunc_begin6
	.uleb128 .Ltmp118-.Ltmp128
	.byte	0
	.byte	0
	.uleb128 .Ltmp118-.Lfunc_begin6
	.uleb128 .Ltmp119-.Ltmp118
	.uleb128 .Ltmp120-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp119-.Lfunc_begin6
	.uleb128 .Ltmp110-.Ltmp119
	.byte	0
	.byte	0
	.uleb128 .Ltmp110-.Lfunc_begin6
	.uleb128 .Ltmp117-.Ltmp110
	.uleb128 .Ltmp134-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp71-.Lfunc_begin6
	.uleb128 .Ltmp72-.Ltmp71
	.uleb128 .Ltmp73-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp121-.Lfunc_begin6
	.uleb128 .Ltmp122-.Ltmp121
	.uleb128 .Ltmp123-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp122-.Lfunc_begin6
	.uleb128 .Ltmp130-.Ltmp122
	.byte	0
	.byte	0
	.uleb128 .Ltmp130-.Lfunc_begin6
	.uleb128 .Ltmp131-.Ltmp130
	.uleb128 .Ltmp134-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp74-.Lfunc_begin6
	.uleb128 .Ltmp75-.Ltmp74
	.uleb128 .Ltmp76-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp75-.Lfunc_begin6
	.uleb128 .Ltmp93-.Ltmp75
	.byte	0
	.byte	0
	.uleb128 .Ltmp93-.Lfunc_begin6
	.uleb128 .Ltmp94-.Ltmp93
	.uleb128 .Ltmp95-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp87-.Lfunc_begin6
	.uleb128 .Ltmp88-.Ltmp87
	.uleb128 .Ltmp89-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp107-.Lfunc_begin6
	.uleb128 .Ltmp108-.Ltmp107
	.uleb128 .Ltmp109-.Lfunc_begin6
	.byte	1
	.uleb128 .Ltmp108-.Lfunc_begin6
	.uleb128 .Lfunc_end20-.Ltmp108
	.byte	0
	.byte	0
.Lcst_end6:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase5:
	.byte	0
	.p2align	2, 0x0

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
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 77

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"M\000\000\000\000\000\000\000\313\007\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.ascii	"capacity overflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 17

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 81

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
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
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 103

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.17
	.asciz	"g\000\000\000\000\000\000\000\034\005\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.17
	.asciz	"g\000\000\000\000\000\000\000\351\b\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 106

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"j\000\000\000\000\000\000\000\261\000\000\000\037\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.ascii	"entity_remove::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/bundle/info.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 98

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"b\000\000\000\000\000\000\000\265\001\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"b\000\000\000\000\000\000\000\255\001\000\000B\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"b\000\000\000\000\000\000\000\257\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/bundle/remove.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 100

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"d\000\000\000\000\000\000\000\341\000\000\000G\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000S\002\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"d\000\000\000\000\000\000\000\n\001\000\000K\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"d\000\000\000\000\000\000\000\025\001\000\000!\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000C\002\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.34,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.27
	.asciz	"d\000\000\000\000\000\000\000\323\000\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.36,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.36,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.36:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.35
	.asciz	"i\000\000\000\000\000\000\000\003\002\000\000\032\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.36, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.37,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.37,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.37:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.35
	.asciz	"i\000\000\000\000\000\000\000\004\002\000\000\030\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.37, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.38,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.38,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.38:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.35
	.asciz	"i\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.38, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.39,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.39,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.39:
	.ascii	"mid > len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.39, 9

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.40,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.40,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.40:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.39
	.asciz	"\t\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.40, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.41,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.41:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/table/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.41, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.42,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.42,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.42:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.41
	.asciz	"h\000\000\000\000\000\000\000\354\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.42, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.43,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.43,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.43:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.41
	.asciz	"h\000\000\000\000\000\000\000\355\002\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.43, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.44,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.44,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.44:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.41
	.asciz	"h\000\000\000\000\000\000\000\355\002\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.44, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.45,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.45,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.45:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.41
	.asciz	"h\000\000\000\000\000\000\000\351\002\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.45, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.46,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.46,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.46:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.41
	.asciz	"h\000\000\000\000\000\000\000\352\002\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.46, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.47,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.47,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.47:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000a\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.47, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.48,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.48,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.48:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000b\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.48, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.49,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.49,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.49:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000b\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.49, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.50,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.50,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.50:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000^\003\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.50, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.51,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.51,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.51:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000_\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.51, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.52,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.52,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.52:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.29
	.asciz	"`\000\000\000\000\000\000\000o\002\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.52, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.53,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.53:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/component/register.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.53, 105

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.54,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.54,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.54:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.53
	.asciz	"i\000\000\000\000\000\000\000\342\000\000\000$\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.54, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.55,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.ddd9cd1641521d33379e20f985469fcb.55:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/event/collections.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.55, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.56,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.56,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.56:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.55
	.asciz	"h\000\000\000\000\000\000\000\214\000\000\000\027\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.56, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.57,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.57:
	.zero	16,255
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.57, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.58,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.58,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.58:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.57
	.zero	24
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.58, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.59,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.59,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.59:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000V\001\000\000.\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.59, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.60,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.60,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.60:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000E\001\000\0006\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.60, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.61,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.61,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.61:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000\322\004\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.61, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.62,@object
	.section	.rodata.cst32,"aM",@progbits,32
.Lanon.ddd9cd1641521d33379e20f985469fcb.62:
	.ascii	"assertion failed: new_cap >= len"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.62, 32

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.63,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.63,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.63:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.0
	.asciz	"\\\000\000\000\000\000\000\000\235\004\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.63, 24

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

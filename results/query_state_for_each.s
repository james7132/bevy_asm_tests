	.text
	.file	"query_state_for_each.d024e4b32a53c97e-cgu.0"
	.section	.text.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4, 0x90
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
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB0_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB0_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB0_11
.LBB0_4:
	movq	%r15, 8(%r14)
	jmp	.LBB0_5
.LBB0_7:
	testq	%rbx, %rbx
	je	.LBB0_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_4
.LBB0_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_6:
	movq	$0, 8(%r14)
.LBB0_5:
	movl	$1, %eax
.LBB0_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB0_11
	jmp	.LBB0_4
.Lfunc_end0:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end0-alloc::raw_vec::finish_grow
	.cfi_endproc

	.section	".text.alloc::raw_vec::RawVec<T,A>::reserve_for_push","ax",@progbits
	.p2align	4, 0x90
	.type	alloc::raw_vec::RawVec<T,A>::reserve_for_push,@function
alloc::raw_vec::RawVec<T,A>::reserve_for_push:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	incq	%rsi
	je	.LBB1_10
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %r14d
	cmovaeq	%rsi, %r14
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB1_4
.LBB1_2:
	movq	$0, 16(%rsp)
.LBB1_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB1_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB1_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_5:
	.cfi_def_cfa_offset 80
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB1_9
.LBB1_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB1_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end1:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end1-alloc::raw_vec::RawVec<T,A>::reserve_for_push
	.cfi_endproc

	.section	".text.alloc::raw_vec::RawVec<T,A>::reserve_for_push","ax",@progbits
	.p2align	4, 0x90
	.type	alloc::raw_vec::RawVec<T,A>::reserve_for_push,@function
alloc::raw_vec::RawVec<T,A>::reserve_for_push:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	incq	%rsi
	je	.LBB2_10
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %r14d
	cmovaeq	%rsi, %r14
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB2_4
.LBB2_2:
	movq	$0, 16(%rsp)
.LBB2_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB2_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB2_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_5:
	.cfi_def_cfa_offset 80
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB2_9
.LBB2_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB2_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end2:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end2-alloc::raw_vec::RawVec<T,A>::reserve_for_push
	.cfi_endproc

	.section	.text.query_state_for_each,"ax",@progbits
	.globl	query_state_for_each
	.p2align	4, 0x90
	.type	query_state_for_each,@function
query_state_for_each:
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	752(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_44
	movq	%rax, 104(%rsp)
	movq	168(%rax), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_43
	jne	.LBB3_3
.LBB3_36:
	movq	264(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB3_42
	movq	104(%rsp), %r9
	movl	760(%r9), %eax
	movq	248(%r14), %rcx
	leaq	(%rcx,%rdx,4), %rdx
	movq	296(%r14), %rsi
	movq	304(%r14), %rdi
	movq	288(%r9), %r8
	movq	304(%r9), %r9
	xorl	%r10d, %r10d
	shlq	$4, %rsi
	shlq	$4, %rdi
	jmp	.LBB3_39
	.p2align	4, 0x90
.LBB3_38:
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	je	.LBB3_42
.LBB3_39:
	movl	(%rcx), %r11d
	cmpq	%r11, %r9
	leaq	(%r11,%r11,8), %r11
	leaq	(%r8,%r11,8), %rbx
	cmovbeq	%r10, %rbx
	movq	64(%rbx), %r11
	testq	%r11, %r11
	je	.LBB3_38
	movq	(%rbx), %r15
	movq	32(%rbx), %r12
	movq	8(%r12,%rsi), %rbx
	leaq	(%rbx,%rbx,2), %r14
	shlq	$5, %r14
	movq	16(%r15,%r14), %rbx
	movq	72(%r15,%r14), %r14
	movq	8(%r12,%rdi), %r12
	leaq	(%r12,%r12,2), %r12
	shlq	$5, %r12
	movq	16(%r15,%r12), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_41:
	movl	%r12d, %r13d
	shlq	$2, %r13
	movss	(%r15,%r13), %xmm0
	movl	%eax, (%r14,%r13)
	addss	(%rbx,%r13), %xmm0
	leaq	1(%r12), %rbp
	movss	%xmm0, (%rbx,%r13)
	movq	%rbp, %r12
	cmpq	%rbp, %r11
	jne	.LBB3_41
	jmp	.LBB3_38
.LBB3_42:
	addq	$216, %rsp
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
.LBB3_3:
	.cfi_def_cfa_offset 272
	imulq	$152, %rdi, %rax
	movq	104(%rsp), %rcx
	movq	152(%rcx), %r15
	addq	%rax, %r15
	leaq	312(%r14), %rcx
	movq	%rcx, 176(%rsp)
	leaq	80(%r14), %rcx
	movq	%rcx, 96(%rsp)
	leaq	104(%r14), %rcx
	movq	%rcx, 40(%rsp)
	leaq	112(%r14), %rdx
	leaq	136(%r14), %rcx
	movq	%rcx, 128(%rsp)
	leaq	48(%r14), %rcx
	movq	%rcx, 168(%rsp)
	leaq	72(%r14), %rcx
	movq	%rcx, 120(%rsp)
	leaq	272(%r14), %rcx
	movq	%rcx, 152(%rsp)
	leaq	16(%r14), %rcx
	movq	%rcx, 160(%rsp)
	leaq	40(%r14), %rcx
	movq	%rcx, 112(%rsp)
	leaq	248(%r14), %rcx
	movq	%rcx, 144(%rsp)
	imulq	$152, %rsi, %rbp
	subq	%rax, %rbp
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	%r14, 184(%rsp)
	movq	%rdx, 136(%rsp)
	jmp	.LBB3_4
.LBB3_34:
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	248(%r14), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r14)
	.p2align	4, 0x90
.LBB3_35:
	addq	$152, %r15
	addq	$-152, %rbp
	je	.LBB3_36
.LBB3_4:
	movq	296(%r14), %rax
	movq	136(%r15), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB3_35
	movq	128(%r15), %r13
	testq	%r13, %r13
	je	.LBB3_35
	shlq	$4, %rax
	cmpq	$0, (%r13,%rax)
	je	.LBB3_35
	movq	304(%r14), %rsi
	cmpq	%rsi, %rcx
	jbe	.LBB3_35
	shlq	$4, %rsi
	cmpq	$0, (%r13,%rsi)
	je	.LBB3_35
	movq	%rsi, 200(%rsp)
	movq	96(%r15), %rcx
	movq	8(%r13,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 192(%rsp)
	movq	(%rcx,%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	96(%rsp), %rdi
	movq	%rsi, 208(%rsp)
	callq	*%r8
	movq	%rbx, (%rsp)
	movq	40(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB3_10
	movq	%rbx, %r12
	shrq	$5, %r12
	movl	$1, %r14d
	movl	%ebx, %ecx
	shll	%cl, %r14d
	movq	96(%rsp), %rax
	movq	(%rax), %rax
	orl	%r14d, (%rax,%r12,4)
	movq	136(%rsp), %rdi
	movq	208(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbx, (%rsp)
	movq	128(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB3_14
	movq	136(%rsp), %rax
	movq	(%rax), %rax
	orl	%r14d, (%rax,%r12,4)
	movq	200(%rsp), %rcx
	leaq	(%rcx,%r13), %rax
	cmpq	$0, (%rax)
	movq	184(%rsp), %r14
	movq	96(%rsp), %r12
	je	.LBB3_18
	movq	8(%r13,%rcx), %rax
	shlq	$4, %rax
	movq	192(%rsp), %rcx
	movq	(%rcx,%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	%r12, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbx, (%rsp)
	movq	40(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB3_10
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	(%r12), %rcx
	shrq	$5, %rbx
	orl	%eax, (%rcx,%rbx,4)
.LBB3_18:
	movq	176(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movl	144(%r15), %r12d
	movl	%r12d, %ebx
	shrl	$5, %ebx
	cmpq	64(%r14), %rbx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	jae	.LBB3_21
	movq	48(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_21
	movl	(%rax,%rbx,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_27
.LBB3_21:
	leaq	1(%r12), %rsi
	movq	168(%rsp), %rdi
	callq	*%r8
	movq	%r12, (%rsp)
	movq	120(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_22
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	48(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	288(%r14), %rsi
	cmpq	280(%r14), %rsi
	jne	.LBB3_26
	movq	152(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%r14), %rsi
.LBB3_26:
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	272(%r14), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r14)
.LBB3_27:
	movl	148(%r15), %r12d
	movl	%r12d, %ebx
	shrl	$5, %ebx
	cmpq	32(%r14), %rbx
	jae	.LBB3_30
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_30
	movl	(%rax,%rbx,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_35
.LBB3_30:
	leaq	1(%r12), %rsi
	movq	160(%rsp), %rdi
	callq	*%r8
	movq	%r12, (%rsp)
	movq	112(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_31
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	16(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r14), %rsi
	cmpq	256(%r14), %rsi
	jne	.LBB3_34
	movq	144(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%r14), %rsi
	jmp	.LBB3_34
.LBB3_10:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rcx
	jmp	.LBB3_11
.LBB3_14:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	128(%rsp), %rcx
.LBB3_11:
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$2, 56(%rsp)
	movq	$0, 80(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	$2, 72(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_22:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB3_23
.LBB3_31:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	112(%rsp), %rcx
.LBB3_23:
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$2, 56(%rsp)
	movq	$0, 80(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	$2, 72(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4(%rip), %rsi
	leaq	48(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_44:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<Q,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_43:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	query_state_for_each, .Lfunc_end3-query_state_for_each
	.cfi_endproc

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.0,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.0:
	.ascii	"set at index "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0, 13

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.1,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.2:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.3,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3, 93

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.4:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.6dae6fee9a6576153fd5b36d700139f2.5:
	.ascii	"insert at index "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5, 16

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.6:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.7:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.8,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.8:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/89d652b/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8, 97

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.9:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8
	.asciz	"a\000\000\000\000\000\000\000\336\000\000\000%\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.10:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8
	.asciz	"a\000\000\000\000\000\000\000\331\000\000\000\016\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10, 24

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

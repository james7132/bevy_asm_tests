	.text
	.file	"query_state_for_each.8d3b7267518752f5-cgu.0"
	.section	".text.<&T as core::fmt::Display>::fmt","ax",@progbits
	.p2align	4, 0x90
	.type	<&T as core::fmt::Display>::fmt,@function
<&T as core::fmt::Display>::fmt:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*<str as core::fmt::Display>::fmt@GOTPCREL(%rip)
.Lfunc_end0:
	.size	<&T as core::fmt::Display>::fmt, .Lfunc_end0-<&T as core::fmt::Display>::fmt
	.cfi_endproc

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
	je	.LBB1_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB1_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB1_11
.LBB1_4:
	movq	%r15, 8(%r14)
	jmp	.LBB1_5
.LBB1_7:
	testq	%rbx, %rbx
	je	.LBB1_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB1_4
.LBB1_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB1_12
.LBB1_6:
	movq	$0, 8(%r14)
.LBB1_5:
	movl	$1, %eax
.LBB1_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB1_11
	jmp	.LBB1_4
.Lfunc_end1:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end1-alloc::raw_vec::finish_grow
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
	je	.LBB2_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB2_4
.LBB2_3:
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
	je	.LBB3_10
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
	je	.LBB3_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB3_4
.LBB3_3:
	movq	$0, 16(%rsp)
.LBB3_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB3_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB3_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:
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
.LBB3_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB3_9
.LBB3_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB3_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end3-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	cmpq	752(%rsi), %rax
	jne	.LBB4_1
	movq	%rdi, %r15
	movq	%rsi, 128(%rsp)
	movq	168(%rsi), %rsi
	movq	8(%rdi), %r13
	movq	%rsi, 8(%rdi)
	cmpq	%rsi, %r13
	jae	.LBB4_37
	leaq	80(%r15), %rdx
	leaq	104(%r15), %rax
	movq	%rax, 120(%rsp)
	leaq	112(%r15), %r8
	leaq	136(%r15), %rax
	movq	%rax, 152(%rsp)
	leaq	312(%r15), %rax
	movq	%rax, 216(%rsp)
	leaq	48(%r15), %rax
	movq	%rax, 208(%rsp)
	leaq	72(%r15), %rax
	movq	%rax, 144(%rsp)
	leaq	272(%r15), %rax
	movq	%rax, 192(%rsp)
	leaq	16(%r15), %rax
	movq	%rax, 200(%rsp)
	leaq	40(%r15), %rax
	movq	%rax, 136(%rsp)
	leaq	248(%r15), %rax
	movq	%rax, 184(%rsp)
	movq	128(%rsp), %rax
	movq	152(%rax), %r9
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	%r15, 224(%rsp)
	movq	%rsi, 160(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r8, 168(%rsp)
	movq	%r9, 8(%rsp)
	jmp	.LBB4_4
.LBB4_35:
	movq	64(%rsp), %rdx
	movq	8(%rsp), %r9
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	248(%r15), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r15)
	movq	160(%rsp), %rsi
	.p2align	4, 0x90
.LBB4_36:
	incq	%r13
	cmpq	%r13, %rsi
	je	.LBB4_37
.LBB4_4:
	movl	%r13d, %edi
	cmpq	%rsi, %rdi
	jae	.LBB4_44
	imulq	$152, %rdi, %rdi
	movq	296(%r15), %rax
	movq	136(%r9,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB4_36
	movq	128(%r9,%rdi), %r12
	testq	%r12, %r12
	je	.LBB4_36
	shlq	$4, %rax
	cmpq	$0, (%r12,%rax)
	je	.LBB4_36
	movq	304(%r15), %r14
	cmpq	%r14, %rcx
	jbe	.LBB4_36
	shlq	$4, %r14
	cmpq	$0, (%r12,%r14)
	je	.LBB4_36
	movq	%rdi, 176(%rsp)
	movq	96(%r9,%rdi), %rcx
	movq	8(%r12,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 232(%rsp)
	movq	(%rcx,%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	%rdx, %rdi
	movq	%rsi, 240(%rsp)
	callq	*%r10
	movq	%rbx, 48(%rsp)
	movq	120(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_11
	movq	%rbx, %rbp
	shrq	$5, %rbp
	movl	$1, %r15d
	movl	%ebx, %ecx
	shll	%cl, %r15d
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	orl	%r15d, (%rax,%rbp,4)
	movq	168(%rsp), %rdi
	movq	240(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbx, 48(%rsp)
	movq	152(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_15
	movq	168(%rsp), %rax
	movq	(%rax), %rax
	orl	%r15d, (%rax,%rbp,4)
	leaq	(%r12,%r14), %rax
	cmpq	$0, (%rax)
	movq	224(%rsp), %r15
	movq	64(%rsp), %rcx
	movq	8(%rsp), %rax
	je	.LBB4_19
	movq	8(%r12,%r14), %rax
	shlq	$4, %rax
	movq	232(%rsp), %rdx
	movq	(%rdx,%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	%rcx, %rdi
	movq	%rcx, %r14
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbx, 48(%rsp)
	movq	120(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_11
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	(%r14), %rcx
	shrq	$5, %rbx
	orl	%eax, (%rcx,%rbx,4)
	movq	%r14, %rcx
	movq	8(%rsp), %rax
.LBB4_19:
	movq	176(%rsp), %rbx
	leaq	(%rax,%rbx), %rsi
	movq	216(%rsp), %rdi
	movq	%rcx, %rdx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movq	8(%rsp), %r9
	movl	144(%r9,%rbx), %ebp
	movl	%ebp, %ebx
	shrl	$5, %ebx
	cmpq	64(%r15), %rbx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	jae	.LBB4_27
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.LBB4_27
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB4_22
.LBB4_27:
	leaq	1(%rbp), %rsi
	movq	208(%rsp), %rdi
	callq	*%r10
	movq	%rbp, 48(%rsp)
	movq	144(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB4_28
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	48(%r15), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	288(%r15), %rsi
	cmpq	280(%r15), %rsi
	jne	.LBB4_32
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%r15), %rsi
.LBB4_32:
	movq	8(%rsp), %r9
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	272(%r15), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r15)
.LBB4_22:
	movq	176(%rsp), %rax
	movl	148(%r9,%rax), %ebp
	movl	%ebp, %ebx
	shrl	$5, %ebx
	cmpq	32(%r15), %rbx
	movq	160(%rsp), %rsi
	movq	64(%rsp), %rdx
	jae	.LBB4_25
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB4_25
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB4_36
.LBB4_25:
	leaq	1(%rbp), %rsi
	movq	200(%rsp), %rdi
	callq	*%r10
	movq	%rbp, 48(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB4_26
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	16(%r15), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r15), %rsi
	cmpq	256(%r15), %rsi
	jne	.LBB4_35
	movq	184(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%r15), %rsi
	jmp	.LBB4_35
.LBB4_37:
	movq	264(%r15), %rdx
	testq	%rdx, %rdx
	je	.LBB4_43
	movq	128(%rsp), %r9
	movl	760(%r9), %eax
	movq	248(%r15), %rcx
	leaq	(%rcx,%rdx,4), %rdx
	movq	296(%r15), %rsi
	movq	304(%r15), %rdi
	movq	288(%r9), %r8
	movq	304(%r9), %r9
	xorl	%r10d, %r10d
	shlq	$4, %rsi
	shlq	$4, %rdi
	jmp	.LBB4_40
	.p2align	4, 0x90
.LBB4_39:
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	je	.LBB4_43
.LBB4_40:
	movl	(%rcx), %r11d
	cmpq	%r11, %r9
	leaq	(%r11,%r11,8), %r11
	leaq	(%r8,%r11,8), %rbx
	cmovbeq	%r10, %rbx
	movq	64(%rbx), %r11
	testq	%r11, %r11
	je	.LBB4_39
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
.LBB4_42:
	movl	%r12d, %r13d
	shlq	$2, %r13
	movss	(%r15,%r13), %xmm0
	movl	%eax, (%r14,%r13)
	addss	(%rbx,%r13), %xmm0
	leaq	1(%r12), %rbp
	movss	%xmm0, (%rbx,%r13)
	movq	%rbp, %r12
	cmpq	%rbp, %r11
	jne	.LBB4_42
	jmp	.LBB4_39
.LBB4_43:
	addq	$248, %rsp
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
.LBB4_44:
	.cfi_def_cfa_offset 304
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB4_11:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB4_12
.LBB4_15:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	152(%rsp), %rcx
.LBB4_12:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	movq	$0, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_28:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB4_29
.LBB4_26:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rcx
.LBB4_29:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	movq	$0, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_1:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$92, 24(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	movq	$0, 104(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	$1, 96(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	query_state_for_each, .Lfunc_end4-query_state_for_each
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
	.ascii	"Attempted to use "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8, 17

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.9,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.9:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9, 93

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.10:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.11,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.11:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A, &query_state_for_each::B)>"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11, 92

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.12,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.12:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12, 97

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.13:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.14:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000+\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14, 24

	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits

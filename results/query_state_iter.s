	.text
	.file	"query_state_iter.393d89201fa5740b-cgu.0"
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
	movq	(%rdi), %rax
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
	movq	8(%rbx), %rcx
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
	movq	%rdi, 8(%rbx)
	movq	%r14, (%rbx)
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
.LBB1_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
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
	movq	(%rdi), %rax
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
	movq	8(%rbx), %rcx
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
	movq	%rdi, 8(%rbx)
	movq	%r14, (%rbx)
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
.LBB2_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end2:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end2-alloc::raw_vec::RawVec<T,A>::reserve_for_push
	.cfi_endproc

	.section	.text.query_state_iter,"ax",@progbits
	.globl	query_state_iter
	.p2align	4, 0x90
	.type	query_state_iter,@function
query_state_iter:
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	840(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_60
	movq	168(%rbx), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_59
	jne	.LBB3_3
.LBB3_50:
	movl	848(%rbx), %eax
	movq	248(%r14), %rcx
	movq	256(%r14), %rdx
	leaq	(%rcx,%rdx,4), %rdx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	cmpq	%rdi, %r11
	jne	.LBB3_56
.LBB3_52:
	movq	296(%rbx), %r10
	movq	304(%rbx), %r11
	movq	288(%r14), %r9
	movq	296(%r14), %r8
	.p2align	4, 0x90
.LBB3_53:
	cmpq	%rdx, %rcx
	je	.LBB3_61
	movl	(%rcx), %edi
	addq	$4, %rcx
	cmpq	%rdi, %r11
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%r10,%rdi,8), %r15
	cmovbeq	%rsi, %r15
	movq	16(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_53
	movq	56(%r15), %r10
	movq	(%r10,%r9,8), %r9
	notq	%r9
	movq	(%r10,%r8,8), %r10
	notq	%r10
	movq	24(%r15), %r11
	leaq	(%r9,%r9,2), %r9
	shlq	$5, %r9
	movq	16(%r11,%r9), %r8
	movq	80(%r11,%r9), %r9
	leaq	(%r10,%r10,2), %r10
	shlq	$5, %r10
	movq	16(%r11,%r10), %r10
	xorl	%r11d, %r11d
	jmp	.LBB3_58
	.p2align	4, 0x90
.LBB3_56:
	movq	%r11, %r15
	shrq	$32, %r15
	jne	.LBB3_62
	testq	%r8, %r8
	je	.LBB3_61
.LBB3_58:
	movss	(%r10,%r11,4), %xmm0
	movl	%eax, (%r9,%r11,4)
	addss	(%r8,%r11,4), %xmm0
	movss	%xmm0, (%r8,%r11,4)
	incq	%r11
	cmpq	%rdi, %r11
	jne	.LBB3_56
	jmp	.LBB3_52
.LBB3_61:
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
.LBB3_3:
	.cfi_def_cfa_offset 192
	movq	160(%rbx), %rax
	leaq	(%rsi,%rsi,4), %rbp
	shlq	$5, %rbp
	addq	%rax, %rbp
	leaq	(%rdi,%rdi,4), %r15
	shlq	$5, %r15
	addq	%rax, %r15
	leaq	48(%r14), %rax
	movq	%rax, 80(%rsp)
	leaq	72(%r14), %rax
	movq	%rax, 16(%rsp)
	leaq	264(%r14), %rax
	movq	%rax, 64(%rsp)
	leaq	16(%r14), %rax
	movq	%rax, 72(%rsp)
	leaq	40(%r14), %rax
	movq	%rax, 8(%rsp)
	leaq	240(%r14), %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB3_4
.LBB3_48:
	movq	248(%r14), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 256(%r14)
	.p2align	4, 0x90
.LBB3_49:
	addq	$160, %r15
	cmpq	%rbp, %r15
	je	.LBB3_50
.LBB3_4:
	movq	288(%r14), %rdx
	movq	136(%r15), %rax
	cmpq	%rdx, %rax
	jbe	.LBB3_49
	movq	128(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB3_49
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_49
	movq	296(%r14), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB3_49
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_49
	movq	232(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB3_49
	movq	224(%r14), %rsi
	shlq	$6, %rdx
	addq	%rsi, %rdx
.LBB3_11:
	movq	%rsi, %rdi
	movq	16(%rsi), %rsi
	xorl	%r10d, %r10d
	testq	%rsi, %rsi
	je	.LBB3_12
	movq	8(%rdi), %r11
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r8
	movl	$0, %r9d
	testq	%r11, %r11
	je	.LBB3_15
	decq	%rsi
	movl	(%r11), %r10d
	addq	$4, %r11
	movq	%r11, %r8
	movq	%rsi, %r9
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_12:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r8
	xorl	%r9d, %r9d
.LBB3_15:
	leaq	64(%rdi), %rsi
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_16:
	testl	%r10d, %r10d
	jne	.LBB3_19
	subq	$1, %r9
	jb	.LBB3_21
	movl	(%r8), %r10d
	addq	$4, %r8
	incq	%r11
	jmp	.LBB3_16
.LBB3_19:
	rep		bsfl	%r10d, %r13d
	movq	%r11, %r12
	shlq	$5, %r12
	orq	%r13, %r12
	cmpq	%r12, %rax
	jbe	.LBB3_31
	leal	-1(%r10), %r13d
	andl	%r10d, %r13d
	cmpq	$0, (%rcx,%r12,8)
	movl	%r13d, %r10d
	jne	.LBB3_16
	jmp	.LBB3_31
	.p2align	4, 0x90
.LBB3_21:
	movq	48(%rdi), %r10
	xorl	%r9d, %r9d
	testq	%r10, %r10
	je	.LBB3_22
	movq	40(%rdi), %r11
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rdi
	movl	$0, %r8d
	testq	%r11, %r11
	je	.LBB3_25
	decq	%r10
	movl	(%r11), %r9d
	addq	$4, %r11
	movq	%r11, %rdi
	movq	%r10, %r8
	jmp	.LBB3_25
.LBB3_22:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rdi
	xorl	%r8d, %r8d
.LBB3_25:
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_26:
	testl	%r9d, %r9d
	jne	.LBB3_29
	subq	$1, %r8
	jb	.LBB3_32
	movl	(%rdi), %r9d
	addq	$4, %rdi
	incq	%r10
	jmp	.LBB3_26
.LBB3_29:
	movl	%r9d, %r11d
	rep		bsfl	%r9d, %r12d
	leal	-1(%r11), %r9d
	andl	%r11d, %r9d
	movq	%r10, %r11
	shlq	$5, %r11
	orq	%r12, %r11
	cmpq	%r11, %rax
	jbe	.LBB3_26
	cmpq	$0, (%rcx,%r11,8)
	je	.LBB3_26
	.p2align	4, 0x90
.LBB3_31:
	cmpq	%rdx, %rsi
	jne	.LBB3_11
	jmp	.LBB3_49
.LBB3_32:
	movl	144(%r15), %r13d
	movl	%r13d, %r12d
	shrl	$5, %r12d
	cmpq	64(%r14), %r12
	jae	.LBB3_35
	movq	56(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_35
	movl	(%rax,%r12,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_41
.LBB3_35:
	leaq	1(%r13), %rsi
	movq	80(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r13, (%rsp)
	movq	16(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_36
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	56(%r14), %rcx
	orl	%eax, (%rcx,%r12,4)
	movq	280(%r14), %rsi
	cmpq	264(%r14), %rsi
	jne	.LBB3_40
	movq	64(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	280(%r14), %rsi
.LBB3_40:
	movq	272(%r14), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 280(%r14)
.LBB3_41:
	movl	148(%r15), %r12d
	movl	%r12d, %r13d
	shrl	$5, %r13d
	cmpq	32(%r14), %r13
	jae	.LBB3_44
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_44
	movl	(%rax,%r13,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_49
.LBB3_44:
	leaq	1(%r12), %rsi
	movq	72(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r12, (%rsp)
	movq	8(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_45
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	24(%r14), %rcx
	orl	%eax, (%rcx,%r13,4)
	movq	256(%r14), %rsi
	cmpq	240(%r14), %rsi
	jne	.LBB3_48
	movq	56(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	256(%r14), %rsi
	jmp	.LBB3_48
.LBB3_62:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.6(%rip), %rdi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %rdx
	movl	$48, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB3_60:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.11(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_59:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.10(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_36:
	movq	%rsp, %rax
	movq	%rax, 24(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rcx
	jmp	.LBB3_37
.LBB3_45:
	movq	%rsp, %rax
	movq	%rax, 24(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rsp), %rcx
.LBB3_37:
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.2(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	movq	$0, 120(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	$2, 112(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.4(%rip), %rsi
	leaq	88(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_iter, .Lfunc_end3-query_state_iter
	.cfi_endproc

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.0,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.0,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.0:
	.ascii	"set at index "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.0, 13

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.1,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.1,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.1, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.2,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.2:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.2, 32

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.3,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.3,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.3, 93

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.4,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.4:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.4, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.5,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.5:
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.5, 0

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.6,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.6,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.6:
	.ascii	"assertion failed: index as u32 as usize == index"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.6, 48

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.7,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.7,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.7:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.7, 99

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.8,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.8:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.7
	.asciz	"c\000\000\000\000\000\000\000w\000\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.8, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.9,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.9,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.9:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.9, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.10,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.10:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.9
	.asciz	"a\000\000\000\000\000\000\000\006\001\000\000%\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.10, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.11,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.11:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.9
	.asciz	"a\000\000\000\000\000\000\000\001\001\000\000\016\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.11, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

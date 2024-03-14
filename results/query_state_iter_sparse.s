	.text
	.file	"query_state_iter_sparse.2ae37e66895f8c52-cgu.0"
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	840(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_75
	movq	168(%rax), %rsi
	movl	8(%rbx), %edi
	movl	%esi, 8(%rbx)
	cmpq	%rdi, %rsi
	jb	.LBB3_76
	movq	%rax, 96(%rsp)
	movq	160(%rax), %rbp
	jne	.LBB3_11
.LBB3_3:
	movq	288(%rbx), %rcx
	movq	296(%rbx), %rdx
	movq	96(%rsp), %r8
	movq	272(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB3_7
	testq	%rsi, %rsi
	je	.LBB3_7
	movq	(%rsi,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB3_55
	notq	%rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	224(%r8), %rax
.LBB3_7:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB3_57
.LBB3_8:
	testq	%rsi, %rsi
	je	.LBB3_57
	movq	(%rsi,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB3_56
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	224(%r8), %rcx
	jmp	.LBB3_57
.LBB3_11:
	leaq	(%rsi,%rsi,4), %r15
	shlq	$5, %r15
	addq	%rbp, %r15
	leaq	(%rdi,%rdi,4), %r13
	shlq	$5, %r13
	addq	%rbp, %r13
	leaq	48(%rbx), %rax
	movq	%rax, 88(%rsp)
	leaq	72(%rbx), %rax
	movq	%rax, 24(%rsp)
	leaq	264(%rbx), %rax
	movq	%rax, 72(%rsp)
	leaq	16(%rbx), %rax
	movq	%rax, 80(%rsp)
	leaq	40(%rbx), %rax
	movq	%rax, 16(%rsp)
	leaq	240(%rbx), %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB3_14
.LBB3_12:
	movq	248(%rbx), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 256(%rbx)
	.p2align	4, 0x90
.LBB3_13:
	addq	$160, %r13
	cmpq	%r15, %r13
	je	.LBB3_3
.LBB3_14:
	movq	288(%rbx), %rdx
	movq	136(%r13), %rax
	cmpq	%rdx, %rax
	jbe	.LBB3_13
	movq	128(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB3_13
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_13
	movq	296(%rbx), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB3_13
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_13
	movq	232(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_13
	movq	224(%rbx), %rsi
	shlq	$6, %rdx
	addq	%rsi, %rdx
.LBB3_21:
	movq	%rsi, %rdi
	movq	16(%rsi), %rsi
	xorl	%r10d, %r10d
	testq	%rsi, %rsi
	je	.LBB3_24
	movq	8(%rdi), %r11
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r8
	movl	$0, %r9d
	testq	%r11, %r11
	je	.LBB3_25
	decq	%rsi
	movl	(%r11), %r10d
	addq	$4, %r11
	movq	%r11, %r8
	movq	%rsi, %r9
	jmp	.LBB3_25
	.p2align	4, 0x90
.LBB3_24:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r8
	xorl	%r9d, %r9d
.LBB3_25:
	leaq	64(%rdi), %rsi
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_26:
	testl	%r10d, %r10d
	jne	.LBB3_29
	subq	$1, %r9
	jb	.LBB3_31
	movl	(%r8), %r10d
	addq	$4, %r8
	incq	%r11
	jmp	.LBB3_26
.LBB3_29:
	rep		bsfl	%r10d, %r12d
	movq	%r11, %r14
	shlq	$5, %r14
	orq	%r12, %r14
	cmpq	%r14, %rax
	jbe	.LBB3_41
	leal	-1(%r10), %r12d
	andl	%r10d, %r12d
	cmpq	$0, (%rcx,%r14,8)
	movl	%r12d, %r10d
	jne	.LBB3_26
	jmp	.LBB3_41
	.p2align	4, 0x90
.LBB3_31:
	movq	48(%rdi), %r10
	xorl	%r9d, %r9d
	testq	%r10, %r10
	je	.LBB3_34
	movq	40(%rdi), %r11
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rdi
	movl	$0, %r8d
	testq	%r11, %r11
	je	.LBB3_35
	decq	%r10
	movl	(%r11), %r9d
	addq	$4, %r11
	movq	%r11, %rdi
	movq	%r10, %r8
	jmp	.LBB3_35
.LBB3_34:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rdi
	xorl	%r8d, %r8d
.LBB3_35:
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_36:
	testl	%r9d, %r9d
	jne	.LBB3_39
	subq	$1, %r8
	jb	.LBB3_42
	movl	(%rdi), %r9d
	addq	$4, %rdi
	incq	%r10
	jmp	.LBB3_36
.LBB3_39:
	movl	%r9d, %r11d
	rep		bsfl	%r9d, %r14d
	leal	-1(%r11), %r9d
	andl	%r11d, %r9d
	movq	%r10, %r11
	shlq	$5, %r11
	orq	%r14, %r11
	cmpq	%r11, %rax
	jbe	.LBB3_36
	cmpq	$0, (%rcx,%r11,8)
	je	.LBB3_36
	.p2align	4, 0x90
.LBB3_41:
	cmpq	%rdx, %rsi
	jne	.LBB3_21
	jmp	.LBB3_13
.LBB3_42:
	movl	144(%r13), %r14d
	movl	%r14d, %r12d
	shrl	$5, %r12d
	cmpq	64(%rbx), %r12
	jae	.LBB3_45
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_45
	movl	(%rax,%r12,4), %eax
	btl	%r14d, %eax
	jb	.LBB3_49
.LBB3_45:
	leaq	1(%r14), %rsi
	movq	88(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r14, 8(%rsp)
	movq	24(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_77
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	56(%rbx), %rcx
	orl	%eax, (%rcx,%r12,4)
	movq	280(%rbx), %rsi
	cmpq	264(%rbx), %rsi
	jne	.LBB3_48
	movq	72(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	280(%rbx), %rsi
.LBB3_48:
	movq	272(%rbx), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 280(%rbx)
.LBB3_49:
	movl	148(%r13), %r12d
	movl	%r12d, %r14d
	shrl	$5, %r14d
	cmpq	32(%rbx), %r14
	jae	.LBB3_52
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_52
	movl	(%rax,%r14,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_13
.LBB3_52:
	leaq	1(%r12), %rsi
	movq	80(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r12, 8(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_78
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	24(%rbx), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	256(%rbx), %rsi
	cmpq	240(%rbx), %rsi
	jne	.LBB3_12
	movq	64(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	256(%rbx), %rsi
	jmp	.LBB3_12
.LBB3_55:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_8
	jmp	.LBB3_57
.LBB3_56:
	xorl	%ecx, %ecx
.LBB3_57:
	movl	848(%r8), %edx
	movq	272(%rbx), %rsi
	movq	280(%rbx), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	jmp	.LBB3_60
	.p2align	4, 0x90
.LBB3_58:
	xorl	%r15d, %r15d
.LBB3_59:
	incq	%r10
	movss	(%r15), %xmm0
	movl	%edx, (%r11)
	addss	(%rbx), %xmm0
	movss	%xmm0, (%rbx)
.LBB3_60:
	cmpq	%r8, %r10
	jne	.LBB3_64
	.p2align	4, 0x90
.LBB3_61:
	cmpq	%rdi, %rsi
	je	.LBB3_74
	movl	(%rsi), %r8d
	addq	$4, %rsi
	leaq	(%r8,%r8,4), %r9
	shlq	$5, %r9
	movq	88(%rbp,%r9), %r8
	testq	%r8, %r8
	je	.LBB3_61
	movq	80(%rbp,%r9), %r9
	xorl	%r10d, %r10d
.LBB3_64:
	movq	%r10, %r11
	shlq	$4, %r11
	movl	(%r9,%r11), %r14d
	cmpq	136(%rax), %r14
	jae	.LBB3_68
	movq	128(%rax), %r15
	movl	$0, %ebx
	testq	%r15, %r15
	je	.LBB3_69
	cmpl	$0, (%r15,%r14,8)
	je	.LBB3_68
	movl	4(%r15,%r14,8), %r11d
	movq	8(%rax), %rbx
	imulq	%r11, %rbx
	addq	16(%rax), %rbx
	shlq	$2, %r11
	addq	80(%rax), %r11
	jmp	.LBB3_69
	.p2align	4, 0x90
.LBB3_68:
	xorl	%ebx, %ebx
.LBB3_69:
	cmpq	136(%rcx), %r14
	jae	.LBB3_58
	movq	128(%rcx), %r12
	movl	$0, %r15d
	testq	%r12, %r12
	je	.LBB3_59
	cmpl	$0, (%r12,%r14,8)
	je	.LBB3_58
	movl	4(%r12,%r14,8), %r15d
	imulq	8(%rcx), %r15
	addq	16(%rcx), %r15
	jmp	.LBB3_59
.LBB3_74:
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
.LBB3_75:
	.cfi_def_cfa_offset 208
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_76:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.7(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_77:
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rcx
	jmp	.LBB3_79
.LBB3_78:
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rcx
.LBB3_79:
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.2(%rip), %rax
	movq	%rax, 104(%rsp)
	movq	$2, 112(%rsp)
	movq	$0, 136(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	$2, 128(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.4(%rip), %rsi
	leaq	104(%rsp), %rdi
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.6, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.7,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.7:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.6
	.asciz	"a\000\000\000\000\000\000\000\006\001\000\000%\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.7, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.8,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.8:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.6
	.asciz	"a\000\000\000\000\000\000\000\001\001\000\000\016\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.8, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

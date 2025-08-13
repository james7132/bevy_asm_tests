	.file	"query_state_iter_sparse.fa50e7696b782f3b-cgu.0"
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
	je	.LBB0_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB0_7
.LBB0_3:
	testq	%rbx, %rbx
	je	.LBB0_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB0_7
.LBB0_4:
	movq	%r15, %rax
.LBB0_7:
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
.Lfunc_end0:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end0-alloc::raw_vec::finish_grow

	.section	".text.alloc::raw_vec::RawVec<T,A>::grow_one","ax",@progbits
	.globl	alloc::raw_vec::RawVec<T,A>::grow_one
	.p2align	4
	.type	alloc::raw_vec::RawVec<T,A>::grow_one,@function
alloc::raw_vec::RawVec<T,A>::grow_one:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	testq	%rax, %rax
	movl	$1, %edx
	cmovneq	%rcx, %rdx
	cmpq	$5, %rdx
	movl	$4, %r15d
	cmovaeq	%rdx, %r15
	xorl	%edi, %edi
	shrq	$62, %rdx
	jne	.LBB1_1
	leaq	(,%r15,4), %rdx
	movabsq	$9223372036854775804, %rcx
	cmpq	%rcx, %rdx
	ja	.LBB1_8
	testq	%rax, %rax
	jne	.LBB1_5
	xorl	%eax, %eax
	jmp	.LBB1_6
.LBB1_5:
	movq	8(%r14), %rcx
	shlq	$2, %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 40(%rsp)
	movl	$4, %eax
.LBB1_6:
	movq	%rax, 32(%rsp)
	movq	%rsp, %rdi
	leaq	24(%rsp), %rcx
	movl	$4, %esi
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, (%rsp)
	je	.LBB1_7
	movq	8(%rsp), %rax
	movq	%rax, 8(%r14)
	movq	%r15, (%r14)
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:
	.cfi_def_cfa_offset 80
	movq	%rbx, %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB1_7:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
.LBB1_8:
	movq	%rbx, %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end1:
	.size	alloc::raw_vec::RawVec<T,A>::grow_one, .Lfunc_end1-alloc::raw_vec::RawVec<T,A>::grow_one
	.cfi_endproc

	.section	".text.bevy_ecs::query::state::QueryState<D,F>::new_archetype","ax",@progbits
	.p2align	4
	.type	bevy_ecs::query::state::QueryState<D,F>::new_archetype,@function
bevy_ecs::query::state::QueryState<D,F>::new_archetype:
	.cfi_startproc
	movq	272(%rdi), %r8
	movq	136(%rsi), %rax
	cmpq	%rax, %r8
	jae	.LBB2_45
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
	movq	280(%rdi), %rdx
	movq	128(%rsi), %rcx
	cmpq	$0, (%rcx,%r8,8)
	setne	%r8b
	cmpq	%rax, %rdx
	setb	%r9b
	andb	%r8b, %r9b
	cmpb	$1, %r9b
	jne	.LBB2_44
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB2_44
	movq	80(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB2_44
	movq	72(%rdi), %r9
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	addq	%r9, %rdx
	jmp	.LBB2_5
	.p2align	4
.LBB2_29:
	cmpq	%rdx, %r9
	je	.LBB2_44
.LBB2_5:
	movq	%r9, %r10
	movq	16(%r9), %r11
	movq	%r11, %rbx
	shrq	$6, %rbx
	xorl	%r9d, %r9d
	testb	$63, %r11b
	setne	%r9b
	addq	%rbx, %r9
	je	.LBB2_6
	movq	(%r10), %r15
	leaq	8(%r15), %r11
	movq	(%r15), %r12
	cmpq	$1, %r9
	leaq	-8(%r15,%r9,8), %r14
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.0(%rip), %r8
	cmoveq	%r8, %r14
	leaq	-2(%r9), %r9
	movl	$0, %ebx
	cmovneq	%r9, %rbx
	movq	(%r14), %r14
	leaq	(%r15,%rbx,8), %r15
	addq	$8, %r15
	shlq	$6, %rbx
	addq	$64, %rbx
	jmp	.LBB2_8
	.p2align	4
.LBB2_6:
	movl	$8, %r11d
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movl	$8, %r15d
.LBB2_8:
	leaq	48(%r10), %r9
	xorl	%r13d, %r13d
	jmp	.LBB2_9
	.p2align	4
.LBB2_10:
	cmpq	%r15, %r11
	je	.LBB2_13
	movq	(%r11), %r12
	addq	$8, %r11
	addq	$64, %r13
.LBB2_9:
	testq	%r12, %r12
	je	.LBB2_10
	rep		bsfq	%r12, %rbp
	leaq	-1(%r12), %r8
	andq	%r8, %r12
	addq	%r13, %rbp
	cmpq	%rax, %rbp
	jae	.LBB2_29
.LBB2_16:
	cmpq	$0, (%rcx,%rbp,8)
	jne	.LBB2_9
	jmp	.LBB2_29
.LBB2_13:
	testq	%r14, %r14
	je	.LBB2_17
	rep		bsfq	%r14, %rbp
	leaq	-1(%r14), %r8
	andq	%r8, %r14
	addq	%rbx, %rbp
	movq	%rbx, %r13
	xorl	%r12d, %r12d
	cmpq	%rax, %rbp
	jb	.LBB2_16
	jmp	.LBB2_29
.LBB2_17:
	movq	40(%r10), %r8
	movq	%r8, %rbx
	shrq	$6, %rbx
	xorl	%r11d, %r11d
	testb	$63, %r8b
	setne	%r11b
	addq	%rbx, %r11
	je	.LBB2_18
	movq	24(%r10), %r8
	leaq	8(%r8), %r10
	movq	(%r8), %r15
	cmpq	$1, %r11
	leaq	-8(%r8,%r11,8), %rbx
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.0(%rip), %r14
	cmoveq	%r14, %rbx
	leaq	-2(%r11), %r14
	movl	$0, %r11d
	cmovneq	%r14, %r11
	movq	(%rbx), %rbx
	leaq	(%r8,%r11,8), %r14
	addq	$8, %r14
	shlq	$6, %r11
	addq	$64, %r11
	jmp	.LBB2_20
.LBB2_18:
	movl	$8, %r10d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	xorl	%r11d, %r11d
	movl	$8, %r14d
.LBB2_20:
	xorl	%r12d, %r12d
	jmp	.LBB2_21
	.p2align	4
.LBB2_22:
	cmpq	%r14, %r10
	je	.LBB2_25
	movq	(%r10), %r15
	addq	$8, %r10
	addq	$64, %r12
.LBB2_21:
	testq	%r15, %r15
	je	.LBB2_22
	rep		bsfq	%r15, %r13
	leaq	-1(%r15), %r8
	andq	%r8, %r15
	addq	%r12, %r13
	cmpq	%rax, %r13
	jae	.LBB2_21
.LBB2_28:
	cmpq	$0, (%rcx,%r13,8)
	je	.LBB2_21
	jmp	.LBB2_29
.LBB2_25:
	testq	%rbx, %rbx
	je	.LBB2_30
	rep		bsfq	%rbx, %r13
	leaq	-1(%rbx), %r8
	andq	%r8, %rbx
	addq	%r11, %r13
	movq	%r11, %r12
	xorl	%r15d, %r15d
	cmpq	%rax, %r13
	jae	.LBB2_21
	jmp	.LBB2_28
.LBB2_30:
	movl	144(%rsi), %ebx
	cmpq	%rbx, 56(%rdi)
	jbe	.LBB2_34
	movl	%ebx, %eax
	movl	$1, %r8d
	movl	%ebx, %ecx
	shlq	%cl, %r8
	shrl	$6, %eax
	movq	40(%rdi), %rdx
	movq	(%rdx,%rax,8), %r9
	btq	%rbx, %r9
	jb	.LBB2_32
	orq	%r9, %r8
	movq	%r8, (%rdx,%rax,8)
	cmpb	$0, 264(%rdi)
	jne	.LBB2_32
.LBB2_36:
	movq	256(%rdi), %r14
	cmpq	240(%rdi), %r14
	jne	.LBB2_38
	leaq	240(%rdi), %rax
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.4(%rip), %rcx
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rsi, %r12
	movq	%rcx, %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	%r12, %rsi
	movq	%r15, %rdi
.LBB2_38:
	movq	248(%rdi), %rax
	movl	%ebx, (%rax,%r14,4)
	incq	%r14
	movq	%r14, 256(%rdi)
.LBB2_32:
	movl	148(%rsi), %ebx
	cmpq	%rbx, 32(%rdi)
	jbe	.LBB2_39
	movl	%ebx, %eax
	movl	$1, %esi
	movl	%ebx, %ecx
	shlq	%cl, %rsi
	shrl	$6, %eax
	movq	16(%rdi), %rdx
	movq	(%rdx,%rax,8), %r8
	btq	%rbx, %r8
	jb	.LBB2_44
	orq	%r8, %rsi
	movq	%rsi, (%rdx,%rax,8)
	cmpb	$1, 264(%rdi)
	jne	.LBB2_44
.LBB2_41:
	movq	256(%rdi), %r14
	cmpq	240(%rdi), %r14
	jne	.LBB2_43
	leaq	240(%rdi), %rax
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.5(%rip), %rsi
	movq	%rdi, %r15
	movq	%rax, %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	movq	%r15, %rdi
.LBB2_43:
	movq	248(%rdi), %rax
	movl	%ebx, (%rax,%r14,4)
	incq	%r14
	movq	%r14, 256(%rdi)
.LBB2_44:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB2_45:
	retq
.LBB2_34:
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	1(%rbx), %rax
	leaq	40(%rdi), %rcx
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.2(%rip), %rdx
	movq	%rdi, %r14
	movq	%rcx, %rdi
	movq	%rsi, %r15
	movq	%rax, %rsi
	callq	*fixedbitset::FixedBitSet::grow::do_grow@GOTPCREL(%rip)
	movq	%r15, %rsi
	movq	%r14, %rdi
	movq	40(%r14), %rdx
	movl	%ebx, %eax
	shrl	$6, %eax
	movq	(%rdx,%rax,8), %r9
	movl	$1, %r8d
	movl	%ebx, %ecx
	shlq	%cl, %r8
	orq	%r9, %r8
	movq	%r8, (%rdx,%rax,8)
	cmpb	$0, 264(%rdi)
	je	.LBB2_36
	jmp	.LBB2_32
.LBB2_39:
	leaq	1(%rbx), %rsi
	leaq	16(%rdi), %rax
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.2(%rip), %rdx
	movq	%rdi, %r14
	movq	%rax, %rdi
	callq	*fixedbitset::FixedBitSet::grow::do_grow@GOTPCREL(%rip)
	movq	%r14, %rdi
	movq	16(%r14), %rdx
	movl	%ebx, %eax
	shrl	$6, %eax
	movq	(%rdx,%rax,8), %r8
	movl	$1, %esi
	movl	%ebx, %ecx
	shlq	%cl, %rsi
	orq	%r8, %rsi
	movq	%rsi, (%rdx,%rax,8)
	cmpb	$1, 264(%rdi)
	je	.LBB2_41
	jmp	.LBB2_44
.Lfunc_end2:
	.size	bevy_ecs::query::state::QueryState<D,F>::new_archetype, .Lfunc_end2-bevy_ecs::query::state::QueryState<D,F>::new_archetype
	.cfi_endproc

	.section	.text.query_state_iter,"ax",@progbits
	.globl	query_state_iter
	.p2align	4
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	1432(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_69
	movl	1448(%r15), %eax
	movl	%eax, 100(%rsp)
	movq	232(%r12), %rax
	movq	264(%r15), %rcx
	movl	8(%r12), %edi
	testq	%rax, %rax
	movq	%r15, 48(%rsp)
	je	.LBB3_5
	cmpl	%ecx, %edi
	je	.LBB3_49
	movq	%rcx, 104(%rsp)
	movq	%rax, %rcx
	shrq	$6, %rcx
	xorl	%edx, %edx
	testb	$63, %al
	setne	%dl
	addq	%rcx, %rdx
	movq	%r12, 112(%rsp)
	je	.LBB3_9
	movq	216(%r12), %rax
	leaq	8(%rax), %rcx
	movq	(%rax), %rbp
	leaq	-2(%rdx), %rsi
	xorl	%r9d, %r9d
	cmpq	$1, %rdx
	leaq	-8(%rax,%rdx,8), %rdx
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.0(%rip), %rdi
	cmovneq	%rdx, %rdi
	cmovneq	%rsi, %r9
	movq	(%rdi), %rdx
	movq	%rdx, 32(%rsp)
	leaq	(%rax,%r9,8), %r8
	addq	$8, %r8
	shlq	$6, %r9
	addq	$64, %r9
	movq	%r9, 56(%rsp)
	jmp	.LBB3_10
.LBB3_5:
	movl	%ecx, 8(%r12)
	cmpq	%rdi, %rcx
	jb	.LBB3_70
	je	.LBB3_49
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	256(%r15), %rsi
	addq	%rax, %rsi
	shlq	$5, %rcx
	leaq	(%rcx,%rcx,4), %rbx
	subq	%rax, %rbx
	.p2align	4
.LBB3_8:
	leaq	160(%rsi), %r14
	movq	%r12, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r14, %rsi
	addq	$-160, %rbx
	jne	.LBB3_8
	jmp	.LBB3_49
.LBB3_9:
	xorl	%ebp, %ebp
	movl	$8, %ecx
	movq	$0, 32(%rsp)
	movq	$0, 56(%rsp)
	movl	$8, %r8d
.LBB3_10:
	movq	328(%r15), %rdi
	movq	304(%r15), %rax
	movq	312(%r15), %rdx
	movq	%rdx, 40(%rsp)
	movq	%rax, 24(%rsp)
	addq	$-40, %rax
	movq	%rax, 120(%rsp)
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	.p2align	4
.LBB3_11:
	testq	%rbp, %rbp
	jne	.LBB3_14
	cmpq	%r8, %rcx
	je	.LBB3_21
	movq	(%rcx), %rbp
	addq	$8, %rcx
	addq	$64, %rsi
	jmp	.LBB3_11
.LBB3_14:
	rep		bsfq	%rbp, %r9
	leaq	-1(%rbp), %rax
	andq	%rax, %rbp
	addq	%rsi, %r9
	testq	%rdi, %rdi
	je	.LBB3_11
.LBB3_15:
	movq	%r9, %rax
	movabsq	$-7079378939119345935, %rdx
	xorq	%rdx, %rax
	movabsq	$4983270260364809079, %rdx
	mulq	%rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$57, %rax
	movd	%eax, %xmm1
	punpcklbw	%xmm1, %xmm1
	pshuflw	$0, %xmm1, %xmm1
	pshufd	$0, %xmm1, %xmm1
	xorl	%eax, %eax
.LBB3_16:
	andq	40(%rsp), %rdx
	movq	24(%rsp), %r10
	movdqu	(%r10,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebx
	testl	%ebx, %ebx
	je	.LBB3_19
.LBB3_17:
	rep		bsfl	%ebx, %r11d
	addq	%rdx, %r11
	andq	40(%rsp), %r11
	negq	%r11
	leaq	(%r11,%r11,4), %r11
	movq	120(%rsp), %r10
	cmpq	(%r10,%r11,8), %r9
	je	.LBB3_23
	leal	-1(%rbx), %r11d
	andw	%bx, %r11w
	movl	%r11d, %ebx
	jne	.LBB3_17
.LBB3_19:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB3_11
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_16
.LBB3_21:
	movq	32(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_47
	rep		bsfq	%rdx, %r9
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movq	56(%rsp), %rsi
	addq	%rsi, %r9
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	jne	.LBB3_15
	jmp	.LBB3_11
.LBB3_23:
	movq	24(%rsp), %rdx
	movq	-32(%rdx,%r11,8), %rdi
	movq	-24(%rdx,%r11,8), %rax
	addq	%rdi, %rax
	incq	%rax
	movq	%rax, 136(%rsp)
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	movq	%rax, 80(%rsp)
	movq	%rdi, 72(%rsp)
	leaq	16(%rdi), %rax
	movq	%rax, 64(%rsp)
	movq	-8(%rdx,%r11,8), %rax
	pcmpeqd	%xmm0, %xmm0
	movq	%rax, 128(%rsp)
	movq	%rax, 88(%rsp)
	movq	40(%rsp), %r9
	testq	%rbp, %rbp
	je	.LBB3_34
	.p2align	4
.LBB3_31:
	rep		bsfq	%rbp, %rdi
	leaq	-1(%rbp), %rax
	andq	%rax, %rbp
	addq	%rsi, %rdi
.LBB3_32:
	movq	%rdi, %rax
	movabsq	$-7079378939119345935, %rdx
	xorq	%rdx, %rax
	movabsq	$4983270260364809079, %rdx
	mulq	%rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$57, %rax
	movd	%eax, %xmm1
	punpcklbw	%xmm1, %xmm1
	pshuflw	$0, %xmm1, %xmm1
	pshufd	$0, %xmm1, %xmm1
	xorl	%eax, %eax
.LBB3_24:
	andq	%r9, %rdx
	movq	24(%rsp), %r10
	movdqu	(%r10,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB3_27
.LBB3_25:
	rep		bsfl	%r11d, %r12d
	addq	%rdx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,4), %r12
	movq	120(%rsp), %r10
	cmpq	(%r10,%r12,8), %rdi
	je	.LBB3_29
	leal	-1(%r11), %r12d
	andw	%r11w, %r12w
	movl	%r12d, %r11d
	jne	.LBB3_25
	.p2align	4
.LBB3_27:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB3_33
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_24
	.p2align	4
.LBB3_29:
	movq	24(%rsp), %r9
	movq	-32(%r9,%r12,8), %rdx
	movq	-24(%r9,%r12,8), %rax
	addq	%rdx, %rax
	incq	%rax
	movq	%rax, 144(%rsp)
	movdqa	(%rdx), %xmm1
	pmovmskb	%xmm1, %r11d
	notl	%r11d
	leaq	16(%rdx), %rdi
	movq	-8(%r9,%r12,8), %r10
	movq	%r8, %r15
	movq	128(%rsp), %r8
	movq	%r8, 152(%rsp)
	movq	72(%rsp), %r14
	movq	%r14, 160(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	136(%rsp), %r9
	movq	%r9, 176(%rsp)
	movq	80(%rsp), %rbx
	movw	%bx, 184(%rsp)
	movzwl	12(%rsp), %r12d
	leaq	186(%rsp), %r13
	movw	%r12w, 4(%r13)
	movl	8(%rsp), %r12d
	cmpq	%r8, %r10
	cmovbq	%r10, %r8
	movq	%r8, 128(%rsp)
	movq	%r15, %r8
	cmovbq	%rdx, %r14
	movq	%r14, 72(%rsp)
	cmovbq	%rdi, %rax
	movq	%rax, 64(%rsp)
	cmovbq	144(%rsp), %r9
	movq	%r9, 136(%rsp)
	movq	40(%rsp), %r9
	movl	%r12d, (%r13)
	cmovbl	%r11d, %ebx
	movq	%rbx, 80(%rsp)
	leaq	234(%rsp), %rax
	cmovbq	%rax, %r13
	movl	(%r13), %edi
	movl	%edi, 16(%rsp)
	movzwl	4(%r13), %edx
	movw	%dx, 20(%rsp)
	movq	88(%rsp), %rdx
	cmovbq	%r10, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.LBB3_30
	.p2align	4
.LBB3_33:
	movzwl	12(%rsp), %eax
	movw	%ax, 20(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, 16(%rsp)
.LBB3_30:
	movzwl	20(%rsp), %eax
	movw	%ax, 12(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 8(%rsp)
	testq	%rbp, %rbp
	jne	.LBB3_31
	.p2align	4
.LBB3_34:
	cmpq	%r8, %rcx
	je	.LBB3_36
	movq	(%rcx), %rbp
	addq	$8, %rcx
	addq	$64, %rsi
	testq	%rbp, %rbp
	je	.LBB3_34
	jmp	.LBB3_31
	.p2align	4
.LBB3_36:
	movq	32(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_38
	rep		bsfq	%rdx, %rdi
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movq	56(%rsp), %rsi
	addq	%rsi, %rdi
	xorl	%ebp, %ebp
	jmp	.LBB3_32
.LBB3_38:
	movq	88(%rsp), %r13
	testq	%r13, %r13
	movq	112(%rsp), %r12
	movq	104(%rsp), %rbp
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	64(%rsp), %r8
	je	.LBB3_48
	movq	48(%rsp), %rax
	movq	256(%rax), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB3_41
	.p2align	4
.LBB3_40:
	leal	-1(%rdx), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	decq	%r13
	je	.LBB3_48
.LBB3_41:
	testw	%dx, %dx
	jne	.LBB3_44
	.p2align	4
.LBB3_42:
	movdqa	(%r8), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$-384, %rsi
	addq	$16, %r8
	cmpl	$65535, %edx
	je	.LBB3_42
	notl	%edx
.LBB3_44:
	rep		bsfl	%edx, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%rsi,%rax,8), %edi
	cmpl	8(%r12), %edi
	jb	.LBB3_40
	cmpq	%rdi, %rbp
	jbe	.LBB3_71
	movq	%r8, %r14
	movq	%rsi, %rbx
	movq	%rdx, %r15
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	24(%rsp), %rsi
	movq	%r12, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%r14, %r8
	jmp	.LBB3_40
.LBB3_47:
	movq	112(%rsp), %r12
	movq	104(%rsp), %rbp
.LBB3_48:
	movl	%ebp, 8(%r12)
	movq	48(%rsp), %r15
.LBB3_49:
	movq	272(%r12), %rax
	movq	280(%r12), %rcx
	movq	400(%r15), %rdx
	cmpq	%rdx, %rax
	jae	.LBB3_52
	movq	392(%r15), %rsi
	movq	(%rsi,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB3_52
	notq	%rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	344(%r15), %rax
	xorl	%esi, %esi
	cmpq	%rdx, %rcx
	jb	.LBB3_53
	jmp	.LBB3_57
.LBB3_52:
	xorl	%eax, %eax
	xorl	%esi, %esi
	cmpq	%rdx, %rcx
	jae	.LBB3_57
.LBB3_53:
	movq	392(%r15), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB3_57
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	344(%r15), %rcx
	jmp	.LBB3_58
.LBB3_57:
	xorl	%ecx, %ecx
.LBB3_58:
	movq	248(%r12), %rdx
	movq	256(%r12), %rdi
	leaq	(%rdx,%rdi,4), %rdi
	movzbl	264(%r12), %r8d
	movl	$8, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB3_61
	.p2align	4
.LBB3_59:
	addq	%r10, %r9
	movq	80(%r9), %r9
	xorl	%r10d, %r10d
.LBB3_60:
	movl	%r10d, %r11d
	shlq	$4, %r11
	movl	(%r9,%r11), %r11d
	notl	%r11d
	movq	128(%rax), %rbx
	movl	(%rbx,%r11,4), %ebx
	notl	%ebx
	movq	8(%rax), %r14
	imulq	%rbx, %r14
	movq	16(%rax), %r15
	movq	80(%rax), %r12
	movq	16(%rcx), %r13
	movq	128(%rcx), %rbp
	movl	(%rbp,%r11,4), %r11d
	notl	%r11d
	imulq	8(%rcx), %r11
	incl	%r10d
	movss	(%r13,%r11), %xmm0
	movl	100(%rsp), %r11d
	movl	%r11d, (%r12,%rbx,4)
	addss	(%r15,%r14), %xmm0
	movss	%xmm0, (%r15,%r14)
	movq	48(%rsp), %r15
.LBB3_61:
	testb	%r8b, %r8b
	jne	.LBB3_67
	cmpl	%esi, %r10d
	jne	.LBB3_60
	movq	256(%r15), %r9
	.p2align	4
.LBB3_64:
	cmpq	%rdi, %rdx
	je	.LBB3_68
	movl	(%rdx), %esi
	addq	$4, %rdx
	leaq	(%rsi,%rsi,4), %r10
	shlq	$5, %r10
	movq	88(%r9,%r10), %rsi
	testq	%rsi, %rsi
	je	.LBB3_64
	jmp	.LBB3_59
	.p2align	4
.LBB3_66:
	addq	$4, %rdx
.LBB3_67:
	cmpq	%rdi, %rdx
	jne	.LBB3_66
.LBB3_68:
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
.LBB3_69:
	.cfi_def_cfa_offset 304
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_70:
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.6(%rip), %rdx
	movq	%rcx, %rsi
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_71:
	leaq	.Lanon.241fb88a656906410e6c2abac6666b03.7(%rip), %rdx
	movq	%rbp, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_iter, .Lfunc_end3-query_state_iter
	.cfi_endproc

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.0:
	.zero	8
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.0, 8

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.241fb88a656906410e6c2abac6666b03.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.1, 94

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.2,@object
	.section	.data.rel.ro..Lanon.241fb88a656906410e6c2abac6666b03.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.2:
	.quad	.Lanon.241fb88a656906410e6c2abac6666b03.1
	.asciz	"^\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.2, 24

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.241fb88a656906410e6c2abac6666b03.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.3, 98

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.4,@object
	.section	.data.rel.ro..Lanon.241fb88a656906410e6c2abac6666b03.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.4:
	.quad	.Lanon.241fb88a656906410e6c2abac6666b03.3
	.asciz	"b\000\000\000\000\000\000\000R\002\000\000.\000\000"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.4, 24

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.5,@object
	.section	.data.rel.ro..Lanon.241fb88a656906410e6c2abac6666b03.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.5:
	.quad	.Lanon.241fb88a656906410e6c2abac6666b03.3
	.asciz	"b\000\000\000\000\000\000\000[\002\000\000.\000\000"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.5, 24

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.6,@object
	.section	.data.rel.ro..Lanon.241fb88a656906410e6c2abac6666b03.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.6:
	.quad	.Lanon.241fb88a656906410e6c2abac6666b03.3
	.asciz	"b\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.6, 24

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.7,@object
	.section	.data.rel.ro..Lanon.241fb88a656906410e6c2abac6666b03.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.7:
	.quad	.Lanon.241fb88a656906410e6c2abac6666b03.3
	.asciz	"b\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.7, 24

	.type	.Lanon.241fb88a656906410e6c2abac6666b03.8,@object
	.section	.data.rel.ro..Lanon.241fb88a656906410e6c2abac6666b03.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.241fb88a656906410e6c2abac6666b03.8:
	.quad	.Lanon.241fb88a656906410e6c2abac6666b03.3
	.asciz	"b\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.241fb88a656906410e6c2abac6666b03.8, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

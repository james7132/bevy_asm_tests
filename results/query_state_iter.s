	.file	"query_state_iter.668507aed0dd1c6a-cgu.0"
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
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.0(%rip), %r8
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
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.0(%rip), %r14
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
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.4(%rip), %rcx
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
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.5(%rip), %rsi
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
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.2(%rip), %rdx
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
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.2(%rip), %rdx
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	1432(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_76
	movl	1448(%r12), %r13d
	movq	232(%rbp), %rax
	movq	264(%r12), %r10
	movl	8(%rbp), %edi
	testq	%rax, %rax
	je	.LBB3_5
	cmpl	%r10d, %edi
	je	.LBB3_50
	movq	%rax, %rcx
	shrq	$6, %rcx
	xorl	%edx, %edx
	testb	$63, %al
	setne	%dl
	addq	%rcx, %rdx
	movq	%rbp, 80(%rsp)
	je	.LBB3_9
	movq	216(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	(%rax), %rbp
	leaq	-2(%rdx), %rsi
	xorl	%r9d, %r9d
	cmpq	$1, %rdx
	leaq	-8(%rax,%rdx,8), %rdx
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.0(%rip), %rdi
	cmovneq	%rdx, %rdi
	cmovneq	%rsi, %r9
	movq	(%rdi), %rdx
	movq	%rdx, 16(%rsp)
	leaq	(%rax,%r9,8), %r8
	addq	$8, %r8
	shlq	$6, %r9
	addq	$64, %r9
	movq	%r9, 48(%rsp)
	jmp	.LBB3_10
.LBB3_5:
	movl	%r10d, 8(%rbp)
	cmpq	%rdi, %r10
	jb	.LBB3_77
	je	.LBB3_50
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	256(%r12), %rsi
	addq	%rax, %rsi
	shlq	$5, %r10
	leaq	(%r10,%r10,4), %rbx
	subq	%rax, %rbx
	.p2align	4
.LBB3_8:
	leaq	160(%rsi), %r14
	movq	%rbp, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r14, %rsi
	addq	$-160, %rbx
	jne	.LBB3_8
	jmp	.LBB3_50
.LBB3_9:
	xorl	%ebp, %ebp
	movl	$8, %ecx
	movq	$0, 16(%rsp)
	movq	$0, 48(%rsp)
	movl	$8, %r8d
.LBB3_10:
	movq	328(%r12), %rdi
	movq	304(%r12), %rax
	movq	312(%r12), %rdx
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	addq	$-40, %rax
	movq	%rax, 96(%rsp)
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, 88(%rsp)
	movl	%r13d, 76(%rsp)
	movq	%r10, 40(%rsp)
	movq	96(%rsp), %r14
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
	movabsq	$-4563226453097033507, %rdx
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
	andq	24(%rsp), %rdx
	movq	32(%rsp), %r11
	movdqu	(%r11,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebx
	testl	%ebx, %ebx
	je	.LBB3_19
.LBB3_17:
	rep		bsfl	%ebx, %r11d
	addq	%rdx, %r11
	andq	24(%rsp), %r11
	negq	%r11
	leaq	(%r11,%r11,4), %r11
	cmpq	(%r14,%r11,8), %r9
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
	movq	16(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_48
	rep		bsfq	%rdx, %r9
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 16(%rsp)
	movq	48(%rsp), %rsi
	addq	%rsi, %r9
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	jne	.LBB3_15
	jmp	.LBB3_11
.LBB3_23:
	movq	32(%rsp), %rdx
	movq	-32(%rdx,%r11,8), %rdi
	movq	-24(%rdx,%r11,8), %rax
	addq	%rdi, %rax
	incq	%rax
	movq	%rax, 120(%rsp)
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	movq	%rax, 64(%rsp)
	movq	%rdi, 56(%rsp)
	leaq	16(%rdi), %r14
	movq	-8(%rdx,%r11,8), %r12
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, 112(%rsp)
	movq	24(%rsp), %r9
	testq	%rbp, %rbp
	je	.LBB3_35
	.p2align	4
.LBB3_32:
	rep		bsfq	%rbp, %rdi
	leaq	-1(%rbp), %rax
	andq	%rax, %rbp
	addq	%rsi, %rdi
.LBB3_33:
	movq	%rdi, %rax
	movabsq	$-7079378939119345935, %rdx
	xorq	%rdx, %rax
	movabsq	$-4563226453097033507, %rdx
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
	movq	32(%rsp), %r10
	movdqu	(%r10,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB3_28
	movq	%r12, 104(%rsp)
.LBB3_26:
	rep		bsfl	%r11d, %r12d
	addq	%rdx, %r12
	andq	%r9, %r12
	negq	%r12
	leaq	(%r12,%r12,4), %r12
	movq	96(%rsp), %r10
	cmpq	(%r10,%r12,8), %rdi
	je	.LBB3_30
	leal	-1(%r11), %r12d
	andw	%r11w, %r12w
	movl	%r12d, %r11d
	movq	104(%rsp), %r12
	jne	.LBB3_26
	.p2align	4
.LBB3_28:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB3_34
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_24
	.p2align	4
.LBB3_30:
	movq	32(%rsp), %r9
	movq	-32(%r9,%r12,8), %rdx
	movq	-24(%r9,%r12,8), %rax
	addq	%rdx, %rax
	incq	%rax
	movq	%rax, 128(%rsp)
	movdqa	(%rdx), %xmm1
	pmovmskb	%xmm1, %r11d
	notl	%r11d
	leaq	16(%rdx), %r10
	movq	-8(%r9,%r12,8), %rax
	movq	%r8, %rbx
	movq	112(%rsp), %r8
	movq	%r8, 136(%rsp)
	movq	56(%rsp), %r13
	movq	%r13, 144(%rsp)
	movq	%r14, 152(%rsp)
	movq	120(%rsp), %r9
	movq	%r9, 160(%rsp)
	movq	64(%rsp), %r15
	movw	%r15w, 168(%rsp)
	movzwl	4(%rsp), %r12d
	leaq	170(%rsp), %rdi
	movw	%r12w, 4(%rdi)
	movl	(%rsp), %r12d
	cmpq	%r8, %rax
	cmovbq	%rax, %r8
	movq	%r8, 112(%rsp)
	movq	%rbx, %r8
	cmovbq	%rdx, %r13
	movq	%r13, 56(%rsp)
	cmovbq	%r10, %r14
	cmovbq	128(%rsp), %r9
	movq	%r9, 120(%rsp)
	movq	24(%rsp), %r9
	movl	%r12d, (%rdi)
	cmovbl	%r11d, %r15d
	movq	%r15, 64(%rsp)
	movq	%rdi, %rdx
	leaq	218(%rsp), %rdi
	cmovbq	%rdi, %rdx
	movl	(%rdx), %edi
	movl	%edi, 8(%rsp)
	movzwl	4(%rdx), %edx
	movw	%dx, 12(%rsp)
	movq	104(%rsp), %r12
	cmovbq	%rax, %r12
	jmp	.LBB3_31
	.p2align	4
.LBB3_34:
	movzwl	4(%rsp), %eax
	movw	%ax, 12(%rsp)
	movl	(%rsp), %eax
	movl	%eax, 8(%rsp)
.LBB3_31:
	movzwl	12(%rsp), %eax
	movw	%ax, 4(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, (%rsp)
	testq	%rbp, %rbp
	jne	.LBB3_32
	.p2align	4
.LBB3_35:
	cmpq	%r8, %rcx
	je	.LBB3_37
	movq	(%rcx), %rbp
	addq	$8, %rcx
	addq	$64, %rsi
	testq	%rbp, %rbp
	je	.LBB3_35
	jmp	.LBB3_32
	.p2align	4
.LBB3_37:
	movq	16(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_39
	rep		bsfq	%rdx, %rdi
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 16(%rsp)
	movq	48(%rsp), %rsi
	addq	%rsi, %rdi
	xorl	%ebp, %ebp
	jmp	.LBB3_33
.LBB3_39:
	testq	%r12, %r12
	movq	80(%rsp), %rbp
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	je	.LBB3_49
	movq	88(%rsp), %rax
	movq	256(%rax), %r13
	jmp	.LBB3_42
	.p2align	4
.LBB3_41:
	leal	-1(%rcx), %eax
	andl	%ecx, %eax
	movl	%eax, %ecx
	decq	%r12
	je	.LBB3_49
.LBB3_42:
	testw	%cx, %cx
	jne	.LBB3_45
	.p2align	4
.LBB3_43:
	movdqa	(%r14), %xmm0
	pmovmskb	%xmm0, %ecx
	addq	$-384, %rdx
	addq	$16, %r14
	cmpl	$65535, %ecx
	je	.LBB3_43
	notl	%ecx
.LBB3_45:
	rep		bsfl	%ecx, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%rdx,%rax,8), %edi
	cmpl	8(%rbp), %edi
	jb	.LBB3_41
	cmpq	%rdi, 40(%rsp)
	jbe	.LBB3_78
	movq	%rdx, %r15
	movq	%rcx, %rbx
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	%r13, %rsi
	movq	%rbp, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%rbx, %rcx
	movq	%r15, %rdx
	jmp	.LBB3_41
.LBB3_48:
	movq	80(%rsp), %rbp
.LBB3_49:
	movq	40(%rsp), %rax
	movl	%eax, 8(%rbp)
	movq	88(%rsp), %r12
	movl	76(%rsp), %r13d
.LBB3_50:
	movq	248(%rbp), %rax
	movq	256(%rbp), %rcx
	leaq	(%rax,%rcx,4), %rcx
	movzbl	264(%rbp), %edx
	xorl	%r9d, %r9d
	movl	$8, %edi
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	jmp	.LBB3_55
.LBB3_51:
	xorl	%r8d, %r8d
.LBB3_52:
	movq	272(%rbp), %r11
	movq	(%r9,%r11,8), %r9
	notq	%r9
	leaq	(%r9,%r9,2), %r11
	shlq	$4, %r11
	movq	16(%r10,%r11), %r9
	movq	40(%r10,%r11), %r10
	xorl	%r11d, %r11d
.LBB3_53:
	movl	%r11d, %r15d
.LBB3_54:
	leaq	(%r9,%r15,4), %rbx
	leaq	(%r10,%r15,4), %r14
	leaq	(%r8,%r15,4), %r15
	incl	%r11d
	movss	(%r15), %xmm0
	movl	%r13d, (%r14)
	addss	(%rbx), %xmm0
	movss	%xmm0, (%rbx)
.LBB3_55:
	testb	%dl, %dl
	je	.LBB3_63
	cmpl	%esi, %r11d
	jne	.LBB3_53
	movq	416(%r12), %r8
	.p2align	4
.LBB3_58:
	cmpq	%rcx, %rax
	je	.LBB3_75
	movl	(%rax), %esi
	addq	$4, %rax
	leaq	(%rsi,%rsi,8), %r9
	movq	16(%r8,%r9,8), %rsi
	testq	%rsi, %rsi
	je	.LBB3_58
	leaq	(%r8,%r9,8), %r11
	movq	280(%rbp), %r8
	movq	24(%r11), %r10
	movq	56(%r11), %r9
	cmpq	64(%r11), %r8
	jae	.LBB3_51
	movq	(%r9,%r8,8), %r8
	testq	%r8, %r8
	je	.LBB3_51
	notq	%r8
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	movq	16(%r10,%r8), %r8
	jmp	.LBB3_52
	.p2align	4
.LBB3_63:
	cmpl	%esi, %r11d
	jne	.LBB3_74
	movq	256(%r12), %rdi
	.p2align	4
.LBB3_65:
	cmpq	%rcx, %rax
	je	.LBB3_75
	movl	(%rax), %esi
	addq	$4, %rax
	leaq	(%rsi,%rsi,4), %r8
	shlq	$5, %r8
	movq	88(%rdi,%r8), %rsi
	testq	%rsi, %rsi
	je	.LBB3_65
	addq	%r8, %rdi
	movl	148(%rdi), %r8d
	movq	416(%r12), %r11
	leaq	(%r8,%r8,8), %rbx
	movq	280(%rbp), %r8
	movq	24(%r11,%rbx,8), %r10
	movq	56(%r11,%rbx,8), %r9
	cmpq	64(%r11,%rbx,8), %r8
	jae	.LBB3_72
	movq	(%r9,%r8,8), %r8
	testq	%r8, %r8
	je	.LBB3_72
	notq	%r8
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	movq	16(%r10,%r8), %r8
	jmp	.LBB3_73
.LBB3_72:
	xorl	%r8d, %r8d
.LBB3_73:
	movq	272(%rbp), %r11
	movq	(%r9,%r11,8), %r9
	notq	%r9
	leaq	(%r9,%r9,2), %r11
	shlq	$4, %r11
	movq	16(%r10,%r11), %r9
	movq	40(%r10,%r11), %r10
	movq	80(%rdi), %rdi
	xorl	%r11d, %r11d
.LBB3_74:
	movl	%r11d, %ebx
	shlq	$4, %rbx
	movl	8(%rdi,%rbx), %r15d
	notl	%r15d
	jmp	.LBB3_54
.LBB3_75:
	addq	$232, %rsp
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
.LBB3_76:
	.cfi_def_cfa_offset 288
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_77:
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.6(%rip), %rdx
	movq	%r10, %rsi
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_78:
	leaq	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.7(%rip), %rdx
	movq	40(%rsp), %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_iter, .Lfunc_end3-query_state_iter
	.cfi_endproc

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.0:
	.zero	8
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.0, 8

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.1, 94

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.2,@object
	.section	.data.rel.ro..Lanon.c9fa039b4863f85d6c88b8c188c13f2c.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.2:
	.quad	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.1
	.asciz	"^\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.2, 24

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/b80913a/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3, 98

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.4,@object
	.section	.data.rel.ro..Lanon.c9fa039b4863f85d6c88b8c188c13f2c.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.4:
	.quad	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3
	.asciz	"b\000\000\000\000\000\000\000R\002\000\000.\000\000"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.4, 24

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.5,@object
	.section	.data.rel.ro..Lanon.c9fa039b4863f85d6c88b8c188c13f2c.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.5:
	.quad	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3
	.asciz	"b\000\000\000\000\000\000\000[\002\000\000.\000\000"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.5, 24

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.6,@object
	.section	.data.rel.ro..Lanon.c9fa039b4863f85d6c88b8c188c13f2c.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.6:
	.quad	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3
	.asciz	"b\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.6, 24

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.7,@object
	.section	.data.rel.ro..Lanon.c9fa039b4863f85d6c88b8c188c13f2c.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.7:
	.quad	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3
	.asciz	"b\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.7, 24

	.type	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.8,@object
	.section	.data.rel.ro..Lanon.c9fa039b4863f85d6c88b8c188c13f2c.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.8:
	.quad	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.3
	.asciz	"b\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.c9fa039b4863f85d6c88b8c188c13f2c.8, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

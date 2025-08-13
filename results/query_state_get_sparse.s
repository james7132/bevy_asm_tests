	.file	"query_state_get_sparse.255482e2c3e41f8a-cgu.0"
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
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end0-alloc::raw_vec::finish_grow
	.cfi_endproc

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
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.0(%rip), %r8
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
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.0(%rip), %r14
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
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.4(%rip), %rcx
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
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.5(%rip), %rsi
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
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.2(%rip), %rdx
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
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.2(%rip), %rdx
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

	.section	.text.query_state_get,"ax",@progbits
	.globl	query_state_get
	.p2align	4
	.type	query_state_get,@function
query_state_get:
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
	movq	%rsi, %r12
	movq	%rdi, %r8
	movq	1432(%rdx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_71
	movl	1452(%rdx), %ebp
	movl	1448(%rdx), %r15d
	movq	232(%r8), %rax
	movq	264(%rdx), %r10
	movl	8(%r8), %edi
	testq	%rax, %rax
	movq	%r8, 32(%rsp)
	movq	%rdx, 24(%rsp)
	je	.LBB3_5
	cmpl	%r10d, %edi
	je	.LBB3_50
	movq	%r12, 136(%rsp)
	movq	%rax, %rcx
	shrq	$6, %rcx
	xorl	%edx, %edx
	testb	$63, %al
	setne	%dl
	addq	%rcx, %rdx
	je	.LBB3_9
	movq	216(%r8), %rax
	leaq	8(%rax), %rcx
	movq	(%rax), %r12
	leaq	-2(%rdx), %rsi
	xorl	%r9d, %r9d
	cmpq	$1, %rdx
	leaq	-8(%rax,%rdx,8), %rdx
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.0(%rip), %rdi
	cmovneq	%rdx, %rdi
	cmovneq	%rsi, %r9
	movq	(%rdi), %rdx
	movq	%rdx, 40(%rsp)
	leaq	(%rax,%r9,8), %r8
	addq	$8, %r8
	shlq	$6, %r9
	addq	$64, %r9
	movq	%r9, 72(%rsp)
	jmp	.LBB3_10
.LBB3_5:
	movl	%r10d, 8(%r8)
	cmpq	%rdi, %r10
	jb	.LBB3_72
	je	.LBB3_50
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	24(%rsp), %rcx
	movq	256(%rcx), %rsi
	addq	%rax, %rsi
	shlq	$5, %r10
	leaq	(%r10,%r10,4), %rbx
	subq	%rax, %rbx
	.p2align	4
.LBB3_8:
	leaq	160(%rsi), %r14
	movq	%r8, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	32(%rsp), %r8
	movq	%r14, %rsi
	addq	$-160, %rbx
	jne	.LBB3_8
	jmp	.LBB3_50
.LBB3_9:
	xorl	%r12d, %r12d
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	movq	$0, 72(%rsp)
	movl	$8, %r8d
.LBB3_10:
	movq	24(%rsp), %rax
	movq	328(%rax), %rdi
	movq	304(%rax), %rdx
	movq	312(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	%rdx, 56(%rsp)
	leaq	-40(%rdx), %rax
	movq	%rax, 104(%rsp)
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movl	%r15d, 100(%rsp)
	movq	%r10, 64(%rsp)
	movq	104(%rsp), %r14
	.p2align	4
.LBB3_11:
	testq	%r12, %r12
	jne	.LBB3_14
	cmpq	%r8, %rcx
	je	.LBB3_21
	movq	(%rcx), %r12
	addq	$8, %rcx
	addq	$64, %rsi
	jmp	.LBB3_11
.LBB3_14:
	rep		bsfq	%r12, %r9
	leaq	-1(%r12), %rax
	andq	%rax, %r12
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
	andq	48(%rsp), %rdx
	movq	56(%rsp), %r11
	movdqu	(%r11,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebx
	testl	%ebx, %ebx
	je	.LBB3_19
.LBB3_17:
	rep		bsfl	%ebx, %r11d
	addq	%rdx, %r11
	andq	48(%rsp), %r11
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
	movq	40(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_48
	rep		bsfq	%rdx, %r9
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	movq	72(%rsp), %rsi
	addq	%rsi, %r9
	xorl	%r12d, %r12d
	testq	%rdi, %rdi
	jne	.LBB3_15
	jmp	.LBB3_11
.LBB3_23:
	movl	%ebp, 96(%rsp)
	movq	56(%rsp), %rdx
	movq	-32(%rdx,%r11,8), %rdi
	movq	-24(%rdx,%r11,8), %rax
	addq	%rdi, %rax
	incq	%rax
	movq	%rax, 128(%rsp)
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	movq	%rax, 88(%rsp)
	movq	%rdi, 80(%rsp)
	leaq	16(%rdi), %r15
	movq	-8(%rdx,%r11,8), %r13
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, 120(%rsp)
	movq	48(%rsp), %r9
	testq	%r12, %r12
	je	.LBB3_35
	.p2align	4
.LBB3_32:
	rep		bsfq	%r12, %rdi
	leaq	-1(%r12), %rax
	andq	%rax, %r12
	addq	%rsi, %rdi
.LBB3_33:
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
	movq	56(%rsp), %r10
	movdqu	(%r10,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB3_28
	movq	%r13, 112(%rsp)
.LBB3_26:
	rep		bsfl	%r11d, %r13d
	addq	%rdx, %r13
	andq	%r9, %r13
	negq	%r13
	leaq	(%r13,%r13,4), %r13
	movq	104(%rsp), %r10
	cmpq	(%r10,%r13,8), %rdi
	je	.LBB3_30
	leal	-1(%r11), %r13d
	andw	%r11w, %r13w
	movl	%r13d, %r11d
	movq	112(%rsp), %r13
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
	movq	56(%rsp), %r9
	movq	-32(%r9,%r13,8), %rdx
	movq	-24(%r9,%r13,8), %rax
	addq	%rdx, %rax
	incq	%rax
	movq	%rax, 144(%rsp)
	movdqa	(%rdx), %xmm1
	pmovmskb	%xmm1, %r11d
	notl	%r11d
	leaq	16(%rdx), %r10
	movq	-8(%r9,%r13,8), %rax
	movq	%r8, %r14
	movq	120(%rsp), %r8
	movq	%r8, 152(%rsp)
	movq	80(%rsp), %rbp
	movq	%rbp, 160(%rsp)
	movq	%r15, 168(%rsp)
	movq	128(%rsp), %r9
	movq	%r9, 176(%rsp)
	movq	88(%rsp), %rbx
	movw	%bx, 184(%rsp)
	movzwl	12(%rsp), %r13d
	leaq	186(%rsp), %rdi
	movw	%r13w, 4(%rdi)
	movl	8(%rsp), %r13d
	cmpq	%r8, %rax
	cmovbq	%rax, %r8
	movq	%r8, 120(%rsp)
	movq	%r14, %r8
	cmovbq	%rdx, %rbp
	movq	%rbp, 80(%rsp)
	cmovbq	%r10, %r15
	cmovbq	144(%rsp), %r9
	movq	%r9, 128(%rsp)
	movq	48(%rsp), %r9
	movl	%r13d, (%rdi)
	cmovbl	%r11d, %ebx
	movq	%rbx, 88(%rsp)
	movq	%rdi, %rdx
	leaq	234(%rsp), %rdi
	cmovbq	%rdi, %rdx
	movl	(%rdx), %edi
	movl	%edi, 16(%rsp)
	movzwl	4(%rdx), %edx
	movw	%dx, 20(%rsp)
	movq	112(%rsp), %r13
	cmovbq	%rax, %r13
	jmp	.LBB3_31
	.p2align	4
.LBB3_34:
	movzwl	12(%rsp), %eax
	movw	%ax, 20(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, 16(%rsp)
.LBB3_31:
	movzwl	20(%rsp), %eax
	movw	%ax, 12(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 8(%rsp)
	testq	%r12, %r12
	jne	.LBB3_32
	.p2align	4
.LBB3_35:
	cmpq	%r8, %rcx
	je	.LBB3_37
	movq	(%rcx), %r12
	addq	$8, %rcx
	addq	$64, %rsi
	testq	%r12, %r12
	je	.LBB3_35
	jmp	.LBB3_32
	.p2align	4
.LBB3_37:
	movq	40(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_39
	rep		bsfq	%rdx, %rdi
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	movq	72(%rsp), %rsi
	addq	%rsi, %rdi
	xorl	%r12d, %r12d
	jmp	.LBB3_33
.LBB3_39:
	testq	%r13, %r13
	movl	96(%rsp), %ebp
	movq	32(%rsp), %rcx
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	je	.LBB3_49
	movq	24(%rsp), %rax
	movq	256(%rax), %r12
	jmp	.LBB3_42
	.p2align	4
.LBB3_41:
	leal	-1(%rdx), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	decq	%r13
	je	.LBB3_49
.LBB3_42:
	testw	%dx, %dx
	jne	.LBB3_45
	.p2align	4
.LBB3_43:
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$-384, %rsi
	addq	$16, %r15
	cmpl	$65535, %edx
	je	.LBB3_43
	notl	%edx
.LBB3_45:
	rep		bsfl	%edx, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%rsi,%rax,8), %edi
	cmpl	8(%rcx), %edi
	jb	.LBB3_41
	cmpq	%rdi, 64(%rsp)
	jbe	.LBB3_73
	movq	%rsi, %rbx
	movq	%rdx, %r14
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	%r12, %rsi
	movq	%rcx, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	32(%rsp), %rcx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	jmp	.LBB3_41
.LBB3_48:
	movq	32(%rsp), %rcx
.LBB3_49:
	movq	64(%rsp), %rax
	movl	%eax, 8(%rcx)
	movl	100(%rsp), %r15d
	movq	136(%rsp), %r12
.LBB3_50:
	movl	%r12d, %edx
	movl	$4294967295, %eax
	xorq	%rdx, %rax
	shrq	$32, %r12
	movl	$1, %ecx
	movq	24(%rsp), %r8
	cmpq	%rax, 16(%r8)
	jbe	.LBB3_58
	movq	8(%r8), %rsi
	leaq	(%rax,%rax,2), %rdi
	cmpl	%r12d, 16(%rsi,%rdi,8)
	jne	.LBB3_58
	leaq	(%rsi,%rdi,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB3_58
	movl	8(%rsi), %ecx
	movq	32(%rsp), %r9
	cmpq	56(%r9), %rcx
	jae	.LBB3_60
	movq	40(%r9), %rsi
	movl	%ecx, %edi
	shrl	$6, %edi
	movq	(%rsi,%rdi,8), %rsi
	btq	%rcx, %rsi
	jae	.LBB3_60
	movq	272(%r9), %rsi
	movq	280(%r9), %rcx
	movq	400(%r8), %rdx
	cmpq	%rdx, %rsi
	jae	.LBB3_61
	movq	392(%r8), %rdi
	movq	(%rdi,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB3_61
	notq	%rsi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$4, %rdi
	addq	344(%r8), %rdi
	cmpq	%rdx, %rcx
	jb	.LBB3_62
	jmp	.LBB3_66
.LBB3_60:
	shlq	$32, %rcx
.LBB3_58:
	xorl	%esi, %esi
.LBB3_59:
	movq	%rsi, 152(%rsp)
	movq	%rcx, 160(%rsp)
	shlq	$32, %r12
	orq	%rdx, %r12
	movq	%r12, 168(%rsp)
	movl	%ebp, 176(%rsp)
	movl	%r15d, 180(%rsp)
	movq	%rax, 184(%rsp)
	leaq	152(%rsp), %rax
	#APP
	#NO_APP
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
.LBB3_61:
	.cfi_def_cfa_offset 304
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	jae	.LBB3_66
.LBB3_62:
	movq	392(%r8), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB3_66
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$4, %rdx
	addq	344(%r8), %rdx
	cmpq	%rax, 136(%rdi)
	jbe	.LBB3_69
	jmp	.LBB3_67
.LBB3_66:
	xorl	%edx, %edx
	cmpq	%rax, 136(%rdi)
	jbe	.LBB3_69
.LBB3_67:
	movq	128(%rdi), %rcx
	movl	(%rcx,%rax,4), %r8d
	testl	%r8d, %r8d
	je	.LBB3_69
	notl	%r8d
	movq	8(%rdi), %rsi
	imulq	%r8, %rsi
	addq	16(%rdi), %rsi
	shlq	$2, %r8
	movq	56(%rdi), %rcx
	addq	%r8, %rcx
	addq	80(%rdi), %r8
	jmp	.LBB3_70
.LBB3_69:
	xorl	%esi, %esi
.LBB3_70:
	movq	128(%rdx), %rdi
	movl	(%rdi,%rax,4), %eax
	notl	%eax
	imulq	8(%rdx), %rax
	addq	16(%rdx), %rax
	movq	%r8, %r12
	shrq	$32, %r12
	movl	%r8d, %edx
	jmp	.LBB3_59
.LBB3_71:
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_72:
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.6(%rip), %rdx
	movq	%r10, %rsi
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_73:
	leaq	.Lanon.c7e65381e0007d197d8cf40ef2666a25.7(%rip), %rdx
	movq	64(%rsp), %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_get, .Lfunc_end3-query_state_get
	.cfi_endproc

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.0:
	.zero	8
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.0, 8

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c7e65381e0007d197d8cf40ef2666a25.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.1, 94

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.2,@object
	.section	.data.rel.ro..Lanon.c7e65381e0007d197d8cf40ef2666a25.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.2:
	.quad	.Lanon.c7e65381e0007d197d8cf40ef2666a25.1
	.asciz	"^\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.2, 24

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c7e65381e0007d197d8cf40ef2666a25.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3, 98

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.4,@object
	.section	.data.rel.ro..Lanon.c7e65381e0007d197d8cf40ef2666a25.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.4:
	.quad	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3
	.asciz	"b\000\000\000\000\000\000\000R\002\000\000.\000\000"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.4, 24

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.5,@object
	.section	.data.rel.ro..Lanon.c7e65381e0007d197d8cf40ef2666a25.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.5:
	.quad	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3
	.asciz	"b\000\000\000\000\000\000\000[\002\000\000.\000\000"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.5, 24

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.6,@object
	.section	.data.rel.ro..Lanon.c7e65381e0007d197d8cf40ef2666a25.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.6:
	.quad	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3
	.asciz	"b\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.6, 24

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.7,@object
	.section	.data.rel.ro..Lanon.c7e65381e0007d197d8cf40ef2666a25.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.7:
	.quad	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3
	.asciz	"b\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.7, 24

	.type	.Lanon.c7e65381e0007d197d8cf40ef2666a25.8,@object
	.section	.data.rel.ro..Lanon.c7e65381e0007d197d8cf40ef2666a25.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c7e65381e0007d197d8cf40ef2666a25.8:
	.quad	.Lanon.c7e65381e0007d197d8cf40ef2666a25.3
	.asciz	"b\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.c7e65381e0007d197d8cf40ef2666a25.8, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

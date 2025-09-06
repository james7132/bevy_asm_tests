	.file	"query_state_for_each_sparse.a20c2a6f05e29808-cgu.0"
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
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	testq	%rax, %rax
	movl	$1, %esi
	cmovneq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %r15d
	cmovaeq	%rsi, %r15
	leaq	(,%r15,4), %rdx
	shrq	$62, %rsi
	setne	%cl
	movabsq	$9223372036854775804, %rsi
	cmpq	%rsi, %rdx
	seta	%sil
	orb	%cl, %sil
	je	.LBB1_2
	xorl	%edi, %edi
	movq	%rbx, %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB1_2:
	movq	%rdi, %r14
	testq	%rax, %rax
	jne	.LBB1_4
	xorl	%eax, %eax
	jmp	.LBB1_5
.LBB1_4:
	movq	8(%r14), %rcx
	shlq	$2, %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 40(%rsp)
	movl	$4, %eax
.LBB1_5:
	movq	%rax, 32(%rsp)
	movq	%rsp, %rdi
	leaq	24(%rsp), %rcx
	movl	$4, %esi
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, (%rsp)
	je	.LBB1_6
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
.LBB1_6:
	.cfi_def_cfa_offset 80
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
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
	movq	16(%r9), %r9
	testq	%r9, %r9
	je	.LBB2_6
	movq	(%r10), %r15
	movq	%r9, %rbx
	shrq	$6, %rbx
	andl	$63, %r9d
	cmpq	$1, %r9
	sbbq	$-1, %rbx
	leaq	8(%r15), %r11
	movq	(%r15), %r12
	cmpq	$1, %rbx
	leaq	-8(%r15,%rbx,8), %r9
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.0(%rip), %r8
	cmoveq	%r8, %r9
	leaq	-2(%rbx), %r14
	movl	$0, %ebx
	cmovneq	%r14, %rbx
	movq	(%r9), %r14
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
	movq	40(%r10), %r11
	testq	%r11, %r11
	je	.LBB2_18
	movq	24(%r10), %r8
	movq	%r11, %rbx
	shrq	$6, %rbx
	andl	$63, %r11d
	cmpq	$1, %r11
	sbbq	$-1, %rbx
	leaq	8(%r8), %r10
	movq	(%r8), %r15
	cmpq	$1, %rbx
	leaq	-8(%r8,%rbx,8), %r14
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.0(%rip), %r11
	cmoveq	%r11, %r14
	leaq	-2(%rbx), %rbx
	movl	$0, %r11d
	cmovneq	%rbx, %r11
	movq	(%r14), %rbx
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
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.4(%rip), %rcx
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
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.5(%rip), %rsi
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
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.2(%rip), %rdx
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
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.2(%rip), %rdx
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

	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4
	.type	query_for_each,@function
query_for_each:
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
	movq	%rdi, %r13
	movq	1432(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_68
	movl	1448(%r15), %eax
	movl	%eax, 44(%rsp)
	movq	232(%r13), %rax
	movq	264(%r15), %rcx
	movl	8(%r13), %edi
	testq	%rax, %rax
	je	.LBB3_16
	cmpl	%ecx, %edi
	je	.LBB3_46
	movq	%rcx, 64(%rsp)
	movq	%r13, 96(%rsp)
	movq	216(%r13), %rcx
	movq	%rax, %rdx
	shrq	$6, %rdx
	andl	$63, %eax
	cmpq	$1, %rax
	sbbq	$-1, %rdx
	leaq	-2(%rdx), %r8
	xorl	%esi, %esi
	cmpq	$1, %rdx
	cmoveq	%rsi, %r8
	leaq	-8(%rcx,%rdx,8), %rax
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.0(%rip), %rdx
	cmovneq	%rax, %rdx
	leaq	8(%rcx), %r13
	leaq	(%rcx,%r8,8), %r12
	addq	$8, %r12
	shlq	$6, %r8
	addq	$64, %r8
	movq	%r8, 112(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	(%rcx), %rbx
	movq	328(%r15), %rcx
	movq	304(%r15), %rax
	movq	312(%r15), %rdx
	movq	%rdx, 56(%rsp)
	movq	%rax, 8(%rsp)
	addq	$-40, %rax
	movq	%rax, 120(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, 104(%rsp)
	movq	120(%rsp), %r9
	.p2align	4
.LBB3_4:
	testq	%rbx, %rbx
	jne	.LBB3_7
	cmpq	%r12, %r13
	je	.LBB3_14
	movq	(%r13), %rbx
	addq	$8, %r13
	addq	$64, %rsi
	jmp	.LBB3_4
.LBB3_7:
	rep		bsfq	%rbx, %r11
	leaq	-1(%rbx), %rax
	andq	%rax, %rbx
	addq	%rsi, %r11
	testq	%rcx, %rcx
	je	.LBB3_4
.LBB3_8:
	movq	%r11, %rax
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
	pshufd	$68, %xmm1, %xmm1
	xorl	%eax, %eax
.LBB3_9:
	andq	56(%rsp), %rdx
	movq	8(%rsp), %r8
	movdqu	(%r8,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB3_12
.LBB3_10:
	rep		bsfl	%r8d, %r10d
	addq	%rdx, %r10
	andq	56(%rsp), %r10
	negq	%r10
	leaq	(%r10,%r10,4), %rbp
	cmpq	(%r9,%rbp,8), %r11
	je	.LBB3_20
	leal	-1(%r8), %r10d
	andw	%r8w, %r10w
	movl	%r10d, %r8d
	jne	.LBB3_10
.LBB3_12:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB3_4
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_9
.LBB3_14:
	movq	48(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_44
	rep		bsfq	%rdx, %r11
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 48(%rsp)
	movq	112(%rsp), %rsi
	orq	%rsi, %r11
	movq	%r12, %r13
	xorl	%ebx, %ebx
	testq	%rcx, %rcx
	jne	.LBB3_8
	jmp	.LBB3_4
.LBB3_16:
	movl	%ecx, 8(%r13)
	cmpq	%rdi, %rcx
	jb	.LBB3_69
	je	.LBB3_46
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	256(%r15), %rsi
	addq	%rax, %rsi
	shlq	$5, %rcx
	leaq	(%rcx,%rcx,4), %rbx
	subq	%rax, %rbx
	.p2align	4
.LBB3_19:
	leaq	160(%rsi), %r14
	movq	%r13, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r14, %rsi
	addq	$-160, %rbx
	jne	.LBB3_19
	jmp	.LBB3_46
.LBB3_20:
	movq	8(%rsp), %rdx
	movq	-32(%rdx,%rbp,8), %rcx
	movq	-24(%rdx,%rbp,8), %rax
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 136(%rsp)
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	leaq	16(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	-8(%rdx,%rbp,8), %rax
	pcmpeqd	%xmm0, %xmm0
	movq	%rax, 128(%rsp)
	movq	%rax, 88(%rsp)
	movq	56(%rsp), %rcx
	testq	%rbx, %rbx
	je	.LBB3_31
	.p2align	4
.LBB3_28:
	rep		bsfq	%rbx, %r8
	leaq	-1(%rbx), %rax
	andq	%rax, %rbx
	addq	%rsi, %r8
.LBB3_29:
	movq	%r8, %rax
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
	pshufd	$68, %xmm1, %xmm1
	xorl	%eax, %eax
.LBB3_21:
	andq	%rcx, %rdx
	movq	8(%rsp), %r9
	movdqu	(%r9,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB3_24
.LBB3_22:
	rep		bsfl	%r11d, %r10d
	addq	%rdx, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	movq	120(%rsp), %r9
	cmpq	(%r9,%r10,8), %r8
	je	.LBB3_26
	leal	-1(%r11), %r10d
	andw	%r11w, %r10w
	movl	%r10d, %r11d
	jne	.LBB3_22
	.p2align	4
.LBB3_24:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB3_30
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_21
	.p2align	4
.LBB3_26:
	movq	8(%rsp), %rcx
	movq	-32(%rcx,%r10,8), %rdx
	movq	-24(%rcx,%r10,8), %rax
	addq	%rdx, %rax
	incq	%rax
	movq	%rax, 144(%rsp)
	movdqa	(%rdx), %xmm1
	pmovmskb	%xmm1, %r11d
	notl	%r11d
	leaq	16(%rdx), %r8
	movq	-8(%rcx,%r10,8), %r9
	movq	128(%rsp), %rdi
	movq	%rdi, 152(%rsp)
	movq	72(%rsp), %r15
	movq	%r15, 160(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	136(%rsp), %rcx
	movq	%rcx, 176(%rsp)
	movq	80(%rsp), %r14
	movw	%r14w, 184(%rsp)
	movzwl	20(%rsp), %r10d
	leaq	186(%rsp), %rbp
	movw	%r10w, 4(%rbp)
	movl	16(%rsp), %r10d
	cmpq	%rdi, %r9
	cmovbq	%r9, %rdi
	movq	%rdi, 128(%rsp)
	cmovbq	%rdx, %r15
	movq	%r15, 72(%rsp)
	cmovbq	%r8, %rax
	movq	%rax, 32(%rsp)
	cmovbq	144(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	56(%rsp), %rcx
	movl	%r10d, (%rbp)
	cmovbl	%r11d, %r14d
	movq	%r14, 80(%rsp)
	leaq	234(%rsp), %rax
	cmovbq	%rax, %rbp
	movl	(%rbp), %r8d
	movl	%r8d, 24(%rsp)
	movzwl	4(%rbp), %edx
	movw	%dx, 28(%rsp)
	movq	88(%rsp), %rdx
	cmovbq	%r9, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.LBB3_27
	.p2align	4
.LBB3_30:
	movzwl	20(%rsp), %eax
	movw	%ax, 28(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 24(%rsp)
.LBB3_27:
	movzwl	28(%rsp), %eax
	movw	%ax, 20(%rsp)
	movl	24(%rsp), %eax
	movl	%eax, 16(%rsp)
	testq	%rbx, %rbx
	jne	.LBB3_28
	.p2align	4
.LBB3_31:
	cmpq	%r12, %r13
	je	.LBB3_33
	movq	(%r13), %rbx
	addq	$8, %r13
	addq	$64, %rsi
	testq	%rbx, %rbx
	je	.LBB3_31
	jmp	.LBB3_28
	.p2align	4
.LBB3_33:
	movq	48(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_35
	rep		bsfq	%rdx, %r8
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 48(%rsp)
	movq	112(%rsp), %rsi
	orq	%rsi, %r8
	xorl	%ebx, %ebx
	jmp	.LBB3_29
.LBB3_35:
	movq	88(%rsp), %rbp
	testq	%rbp, %rbp
	movq	96(%rsp), %r13
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rsi
	je	.LBB3_45
	movq	104(%rsp), %rax
	movq	256(%rax), %rbx
	jmp	.LBB3_38
	.p2align	4
.LBB3_37:
	leal	-1(%rdx), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	decq	%rbp
	je	.LBB3_45
.LBB3_38:
	testw	%dx, %dx
	movq	32(%rsp), %rax
	jne	.LBB3_41
	.p2align	4
.LBB3_39:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$-384, %rsi
	addq	$16, %rax
	cmpl	$65535, %edx
	je	.LBB3_39
	notl	%edx
.LBB3_41:
	movq	%rax, 32(%rsp)
	rep		bsfl	%edx, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%rsi,%rax,8), %edi
	cmpl	8(%r13), %edi
	jb	.LBB3_37
	cmpq	%rdi, 64(%rsp)
	jbe	.LBB3_70
	movq	%rsi, %r14
	movq	%rdx, %r12
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	%rbx, %rsi
	movq	%r13, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r12, %rdx
	movq	%r14, %rsi
	jmp	.LBB3_37
.LBB3_44:
	movq	96(%rsp), %r13
.LBB3_45:
	movq	64(%rsp), %rax
	movl	%eax, 8(%r13)
	movq	104(%rsp), %r15
.LBB3_46:
	movq	272(%r13), %rax
	movq	280(%r13), %rcx
	movq	400(%r15), %rdx
	cmpq	%rdx, %rax
	jae	.LBB3_49
	movq	392(%r15), %rsi
	movq	(%rsi,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB3_49
	notq	%rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	344(%r15), %rax
	cmpq	%rdx, %rcx
	jb	.LBB3_50
	jmp	.LBB3_54
.LBB3_49:
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	jae	.LBB3_54
.LBB3_50:
	movq	392(%r15), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB3_54
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	344(%r15), %rcx
	movq	256(%r13), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_55
	jmp	.LBB3_56
.LBB3_54:
	xorl	%ecx, %ecx
	movq	256(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB3_56
.LBB3_55:
	cmpb	$0, 264(%r13)
	je	.LBB3_57
.LBB3_56:
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
.LBB3_57:
	.cfi_def_cfa_offset 304
	movq	248(%r13), %rdx
	leaq	(%rdx,%rsi,4), %rsi
	movq	%rsi, 32(%rsp)
	movl	$4294967295, %edi
	movq	256(%r15), %r8
	movq	416(%r15), %rsi
	movq	%rsi, 8(%rsp)
	jmp	.LBB3_59
	.p2align	4
.LBB3_58:
	addq	$4, %rdx
	cmpq	32(%rsp), %rdx
	je	.LBB3_56
.LBB3_59:
	movl	(%rdx), %r10d
	leaq	(%r10,%r10,4), %r10
	shlq	$5, %r10
	movl	148(%r8,%r10), %r11d
	leaq	(%r11,%r11,8), %rbx
	movq	88(%r8,%r10), %r11
	movq	8(%rsp), %rsi
	cmpl	%r11d, 16(%rsi,%rbx,8)
	jne	.LBB3_64
	testq	%r11, %r11
	je	.LBB3_58
	testl	%r11d, %r11d
	je	.LBB3_58
	movq	8(%rsp), %rsi
	leaq	(%rsi,%rbx,8), %rsi
	movq	8(%rsi), %r10
	movl	%r11d, %r11d
	xorl	%ebx, %ebx
	.p2align	4
.LBB3_63:
	movl	(%r10,%rbx,8), %esi
	incq	%rbx
	xorq	%rdi, %rsi
	movq	128(%rax), %r9
	movl	(%r9,%rsi,4), %r9d
	notl	%r9d
	movq	8(%rax), %r14
	imulq	%r9, %r14
	movq	16(%rax), %r15
	movq	80(%rax), %r12
	movq	16(%rcx), %r13
	movq	128(%rcx), %rbp
	movl	(%rbp,%rsi,4), %esi
	notl	%esi
	imulq	8(%rcx), %rsi
	movss	(%r13,%rsi), %xmm0
	movl	44(%rsp), %esi
	movl	%esi, (%r12,%r9,4)
	addss	(%r15,%r14), %xmm0
	movss	%xmm0, (%r15,%r14)
	cmpq	%rbx, %r11
	jne	.LBB3_63
	jmp	.LBB3_58
	.p2align	4
.LBB3_64:
	testq	%r11, %r11
	je	.LBB3_58
	testl	%r11d, %r11d
	je	.LBB3_58
	addq	%r8, %r10
	movq	80(%r10), %r10
	movl	%r11d, %r11d
	xorl	%ebx, %ebx
	.p2align	4
.LBB3_67:
	movl	(%r10), %r14d
	xorq	%rdi, %r14
	movq	128(%rax), %r15
	movl	(%r15,%r14,4), %r15d
	notl	%r15d
	movq	8(%rax), %r12
	imulq	%r15, %r12
	movq	16(%rax), %r13
	movq	80(%rax), %rbp
	movq	16(%rcx), %rsi
	movq	128(%rcx), %r9
	movl	(%r9,%r14,4), %r9d
	notl	%r9d
	imulq	8(%rcx), %r9
	movss	(%rsi,%r9), %xmm0
	movl	44(%rsp), %esi
	movl	%esi, (%rbp,%r15,4)
	addss	(%r13,%r12), %xmm0
	incq	%rbx
	movss	%xmm0, (%r13,%r12)
	addq	$16, %r10
	cmpq	%rbx, %r11
	jne	.LBB3_67
	jmp	.LBB3_58
.LBB3_68:
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_69:
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.6(%rip), %rdx
	movq	%rcx, %rsi
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_70:
	leaq	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.7(%rip), %rdx
	movq	64(%rsp), %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_for_each, .Lfunc_end3-query_for_each
	.cfi_endproc

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.0:
	.zero	8
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.0, 8

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.1, 94

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.2,@object
	.section	.data.rel.ro..Lanon.c17013dd4e7d28a4cc715b85a547ec2f.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.2:
	.quad	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.1
	.asciz	"]\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.2, 24

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3, 98

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.4,@object
	.section	.data.rel.ro..Lanon.c17013dd4e7d28a4cc715b85a547ec2f.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.4:
	.quad	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3
	.asciz	"a\000\000\000\000\000\000\000R\002\000\000.\000\000"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.4, 24

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.5,@object
	.section	.data.rel.ro..Lanon.c17013dd4e7d28a4cc715b85a547ec2f.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.5:
	.quad	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3
	.asciz	"a\000\000\000\000\000\000\000[\002\000\000.\000\000"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.5, 24

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.6,@object
	.section	.data.rel.ro..Lanon.c17013dd4e7d28a4cc715b85a547ec2f.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.6:
	.quad	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3
	.asciz	"a\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.6, 24

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.7,@object
	.section	.data.rel.ro..Lanon.c17013dd4e7d28a4cc715b85a547ec2f.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.7:
	.quad	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3
	.asciz	"a\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.7, 24

	.type	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.8,@object
	.section	.data.rel.ro..Lanon.c17013dd4e7d28a4cc715b85a547ec2f.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.8:
	.quad	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.3
	.asciz	"a\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.c17013dd4e7d28a4cc715b85a547ec2f.8, 24

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

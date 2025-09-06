	.file	"query_state_for_each.6a5e7352761f73b0-cgu.0"
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.0(%rip), %r8
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.0(%rip), %r11
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.4(%rip), %rcx
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.5(%rip), %rsi
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.2(%rip), %rdx
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.2(%rip), %rdx
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

	.section	.text.query_state_for_each,"ax",@progbits
	.globl	query_state_for_each
	.p2align	4
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
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	1432(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_79
	movl	1448(%r12), %r15d
	movq	232(%rbp), %rax
	movq	264(%r12), %rcx
	movl	8(%rbp), %edi
	testq	%rax, %rax
	je	.LBB3_17
	cmpl	%ecx, %edi
	je	.LBB3_47
	movq	%rcx, 96(%rsp)
	movl	%r15d, 84(%rsp)
	movq	216(%rbp), %rcx
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
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.0(%rip), %rdx
	cmovneq	%rax, %rdx
	leaq	8(%rcx), %r13
	leaq	(%rcx,%r8,8), %rdi
	addq	$8, %rdi
	shlq	$6, %r8
	addq	$64, %r8
	movq	%r8, 112(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	(%rcx), %r15
	movq	328(%r12), %rcx
	movq	304(%r12), %rax
	movq	312(%r12), %rdx
	movq	%rdx, 40(%rsp)
	movq	%rax, 24(%rsp)
	addq	$-40, %rax
	movq	%rax, 120(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, 104(%rsp)
	movq	120(%rsp), %r9
	.p2align	4
.LBB3_4:
	testq	%r15, %r15
	jne	.LBB3_7
	cmpq	%rdi, %r13
	je	.LBB3_15
	movq	(%r13), %r15
	addq	$8, %r13
	addq	$64, %rsi
	jmp	.LBB3_4
.LBB3_7:
	rep		bsfq	%r15, %r11
	leaq	-1(%r15), %rax
	andq	%rax, %r15
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
	andq	40(%rsp), %rdx
	movq	24(%rsp), %r8
	movdqu	(%r8,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB3_13
	movq	%rbp, 88(%rsp)
.LBB3_11:
	rep		bsfl	%r8d, %r10d
	addq	%rdx, %r10
	andq	40(%rsp), %r10
	negq	%r10
	leaq	(%r10,%r10,4), %rbp
	cmpq	(%r9,%rbp,8), %r11
	je	.LBB3_21
	leal	-1(%r8), %r10d
	andw	%r8w, %r10w
	movl	%r10d, %r8d
	movq	88(%rsp), %rbp
	jne	.LBB3_11
.LBB3_13:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB3_4
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_9
.LBB3_15:
	movq	32(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_45
	rep		bsfq	%rdx, %r11
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movq	112(%rsp), %rsi
	orq	%rsi, %r11
	movq	%rdi, %r13
	xorl	%r15d, %r15d
	testq	%rcx, %rcx
	jne	.LBB3_8
	jmp	.LBB3_4
.LBB3_17:
	movl	%ecx, 8(%rbp)
	cmpq	%rdi, %rcx
	jb	.LBB3_80
	je	.LBB3_47
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	256(%r12), %rsi
	addq	%rax, %rsi
	shlq	$5, %rcx
	leaq	(%rcx,%rcx,4), %rbx
	subq	%rax, %rbx
	.p2align	4
.LBB3_20:
	leaq	160(%rsi), %r14
	movq	%rbp, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r14, %rsi
	addq	$-160, %rbx
	jne	.LBB3_20
	jmp	.LBB3_47
.LBB3_21:
	movq	24(%rsp), %rdx
	movq	-32(%rdx,%rbp,8), %rcx
	movq	-24(%rdx,%rbp,8), %rax
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 136(%rsp)
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	movq	%rax, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	-8(%rdx,%rbp,8), %rax
	pcmpeqd	%xmm0, %xmm0
	movq	%rax, 128(%rsp)
	movq	%rax, 72(%rsp)
	movq	40(%rsp), %rcx
	testq	%r15, %r15
	je	.LBB3_32
	.p2align	4
.LBB3_29:
	rep		bsfq	%r15, %r8
	leaq	-1(%r15), %rax
	andq	%rax, %r15
	addq	%rsi, %r8
.LBB3_30:
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
.LBB3_22:
	andq	%rcx, %rdx
	movq	24(%rsp), %r9
	movdqu	(%r9,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB3_25
.LBB3_23:
	rep		bsfl	%r11d, %r10d
	addq	%rdx, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r10
	movq	120(%rsp), %r9
	cmpq	(%r9,%r10,8), %r8
	je	.LBB3_27
	leal	-1(%r11), %r10d
	andw	%r11w, %r10w
	movl	%r10d, %r11d
	jne	.LBB3_23
	.p2align	4
.LBB3_25:
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB3_31
	addq	%rax, %rdx
	addq	$16, %rdx
	addq	$16, %rax
	jmp	.LBB3_22
	.p2align	4
.LBB3_27:
	movq	24(%rsp), %rcx
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
	movq	%rdi, %r12
	movq	128(%rsp), %rdi
	movq	%rdi, 152(%rsp)
	movq	56(%rsp), %rbx
	movq	%rbx, 160(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	136(%rsp), %rcx
	movq	%rcx, 176(%rsp)
	movq	64(%rsp), %r14
	movw	%r14w, 184(%rsp)
	movzwl	12(%rsp), %r10d
	leaq	186(%rsp), %rbp
	movw	%r10w, 4(%rbp)
	movl	8(%rsp), %r10d
	cmpq	%rdi, %r9
	cmovbq	%r9, %rdi
	movq	%rdi, 128(%rsp)
	movq	%r12, %rdi
	cmovbq	%rdx, %rbx
	movq	%rbx, 56(%rsp)
	cmovbq	%r8, %rax
	movq	%rax, 48(%rsp)
	cmovbq	144(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	40(%rsp), %rcx
	movl	%r10d, (%rbp)
	cmovbl	%r11d, %r14d
	movq	%r14, 64(%rsp)
	leaq	234(%rsp), %rax
	cmovbq	%rax, %rbp
	movl	(%rbp), %r8d
	movl	%r8d, 16(%rsp)
	movzwl	4(%rbp), %edx
	movw	%dx, 20(%rsp)
	movq	72(%rsp), %rdx
	cmovbq	%r9, %rdx
	movq	%rdx, 72(%rsp)
	jmp	.LBB3_28
	.p2align	4
.LBB3_31:
	movzwl	12(%rsp), %eax
	movw	%ax, 20(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, 16(%rsp)
.LBB3_28:
	movzwl	20(%rsp), %eax
	movw	%ax, 12(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 8(%rsp)
	testq	%r15, %r15
	jne	.LBB3_29
	.p2align	4
.LBB3_32:
	cmpq	%rdi, %r13
	je	.LBB3_34
	movq	(%r13), %r15
	addq	$8, %r13
	addq	$64, %rsi
	testq	%r15, %r15
	je	.LBB3_32
	jmp	.LBB3_29
	.p2align	4
.LBB3_34:
	movq	32(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_36
	rep		bsfq	%rdx, %r8
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movq	112(%rsp), %rsi
	orq	%rsi, %r8
	xorl	%r15d, %r15d
	jmp	.LBB3_30
.LBB3_36:
	movq	72(%rsp), %r15
	testq	%r15, %r15
	movq	88(%rsp), %rbp
	movq	96(%rsp), %r13
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	48(%rsp), %r8
	je	.LBB3_46
	movq	104(%rsp), %rax
	movq	256(%rax), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB3_39
	.p2align	4
.LBB3_38:
	leal	-1(%rdx), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	decq	%r15
	je	.LBB3_46
.LBB3_39:
	testw	%dx, %dx
	jne	.LBB3_42
	.p2align	4
.LBB3_40:
	movdqa	(%r8), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$-384, %rsi
	addq	$16, %r8
	cmpl	$65535, %edx
	je	.LBB3_40
	notl	%edx
.LBB3_42:
	rep		bsfl	%edx, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%rsi,%rax,8), %edi
	cmpl	8(%rbp), %edi
	jb	.LBB3_38
	cmpq	%rdi, %r13
	jbe	.LBB3_81
	movq	%r8, %rbx
	movq	%rsi, %r14
	movq	%rdx, %r12
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	24(%rsp), %rsi
	movq	%rbp, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rbx, %r8
	jmp	.LBB3_38
.LBB3_45:
	movq	96(%rsp), %r13
.LBB3_46:
	movl	%r13d, 8(%rbp)
	movl	84(%rsp), %r15d
	movq	104(%rsp), %r12
.LBB3_47:
	movq	256(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB3_78
	movq	248(%rbp), %rax
	leaq	(%rax,%rcx,4), %rcx
	cmpb	$0, 264(%rbp)
	je	.LBB3_59
	movq	416(%r12), %rdx
	movl	$4294967295, %esi
	jmp	.LBB3_51
	.p2align	4
.LBB3_50:
	addq	$4, %rax
	cmpq	%rcx, %rax
	je	.LBB3_78
.LBB3_51:
	movl	(%rax), %edi
	leaq	(%rdi,%rdi,8), %r8
	movq	16(%rdx,%r8,8), %rdi
	testq	%rdi, %rdi
	je	.LBB3_50
	leaq	(%rdx,%r8,8), %r11
	movq	280(%rbp), %r9
	movq	24(%r11), %r8
	movq	56(%r11), %r10
	cmpq	64(%r11), %r9
	jae	.LBB3_56
	movq	(%r10,%r9,8), %r9
	testq	%r9, %r9
	je	.LBB3_56
	notq	%r9
	leaq	(%r9,%r9,2), %r9
	shlq	$4, %r9
	movq	16(%r8,%r9), %r9
	andq	%rsi, %rdi
	jne	.LBB3_57
	jmp	.LBB3_50
	.p2align	4
.LBB3_56:
	xorl	%r9d, %r9d
	andq	%rsi, %rdi
	je	.LBB3_50
.LBB3_57:
	movq	272(%rbp), %r11
	movq	(%r10,%r11,8), %r10
	notq	%r10
	leaq	(%r10,%r10,2), %r11
	shlq	$4, %r11
	movq	16(%r8,%r11), %r10
	movq	40(%r8,%r11), %r8
	xorl	%r11d, %r11d
	.p2align	4
.LBB3_58:
	movss	(%r9,%r11,4), %xmm0
	movl	%r15d, (%r8,%r11,4)
	addss	(%r10,%r11,4), %xmm0
	movss	%xmm0, (%r10,%r11,4)
	incq	%r11
	cmpq	%r11, %rdi
	jne	.LBB3_58
	jmp	.LBB3_50
.LBB3_59:
	movq	256(%r12), %rdx
	movq	416(%r12), %rsi
	jmp	.LBB3_61
	.p2align	4
.LBB3_60:
	addq	$4, %rax
	cmpq	%rcx, %rax
	je	.LBB3_78
.LBB3_61:
	movl	(%rax), %edi
	leaq	(%rdi,%rdi,4), %r8
	shlq	$5, %r8
	movl	148(%rdx,%r8), %edi
	leaq	(%rdi,%rdi,8), %r9
	leaq	(%rsi,%r9,8), %rbx
	movq	88(%rdx,%r8), %rdi
	cmpl	%edi, 16(%rsi,%r9,8)
	jne	.LBB3_66
	testq	%rdi, %rdi
	je	.LBB3_60
	movq	280(%rbp), %r8
	movq	24(%rbx), %r9
	movq	56(%rbx), %r10
	cmpq	64(%rbx), %r8
	jae	.LBB3_70
	movq	(%r10,%r8,8), %r8
	testq	%r8, %r8
	je	.LBB3_70
	notq	%r8
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	movq	16(%r9,%r8), %r8
	testl	%edi, %edi
	jne	.LBB3_73
	jmp	.LBB3_60
	.p2align	4
.LBB3_66:
	testq	%rdi, %rdi
	je	.LBB3_60
	movq	280(%rbp), %r9
	movq	24(%rbx), %r10
	movq	56(%rbx), %r11
	cmpq	64(%rbx), %r9
	jae	.LBB3_71
	movq	(%r11,%r9,8), %r9
	testq	%r9, %r9
	je	.LBB3_71
	notq	%r9
	leaq	(%r9,%r9,2), %r9
	shlq	$4, %r9
	movq	16(%r10,%r9), %r9
	testl	%edi, %edi
	jne	.LBB3_76
	jmp	.LBB3_60
	.p2align	4
.LBB3_70:
	xorl	%r8d, %r8d
	testl	%edi, %edi
	je	.LBB3_60
.LBB3_73:
	movq	272(%rbp), %r11
	movq	(%r10,%r11,8), %r10
	notq	%r10
	leaq	(%r10,%r10,2), %r11
	shlq	$4, %r11
	movq	16(%r9,%r11), %r10
	movq	40(%r9,%r11), %r9
	movl	%edi, %edi
	xorl	%r11d, %r11d
	.p2align	4
.LBB3_74:
	movss	(%r8,%r11,4), %xmm0
	movl	%r15d, (%r9,%r11,4)
	addss	(%r10,%r11,4), %xmm0
	movss	%xmm0, (%r10,%r11,4)
	incq	%r11
	cmpq	%r11, %rdi
	jne	.LBB3_74
	jmp	.LBB3_60
	.p2align	4
.LBB3_71:
	xorl	%r9d, %r9d
	testl	%edi, %edi
	je	.LBB3_60
.LBB3_76:
	addq	%rdx, %r8
	movq	272(%rbp), %rbx
	movq	(%r11,%rbx,8), %r11
	notq	%r11
	leaq	(%r11,%r11,2), %rbx
	shlq	$4, %rbx
	movq	16(%r10,%rbx), %r11
	movq	40(%r10,%rbx), %r10
	movq	80(%r8), %r8
	movl	%edi, %edi
	addq	$8, %r8
	xorl	%ebx, %ebx
	.p2align	4
.LBB3_77:
	movl	(%r8), %r14d
	notl	%r14d
	movss	(%r9,%r14,4), %xmm0
	movl	%r15d, (%r10,%r14,4)
	addss	(%r11,%r14,4), %xmm0
	incq	%rbx
	movss	%xmm0, (%r11,%r14,4)
	addq	$16, %r8
	cmpq	%rbx, %rdi
	jne	.LBB3_77
	jmp	.LBB3_60
.LBB3_78:
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
.LBB3_79:
	.cfi_def_cfa_offset 304
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_80:
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.6(%rip), %rdx
	movq	%rcx, %rsi
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_81:
	leaq	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.7(%rip), %rdx
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_for_each, .Lfunc_end3-query_state_for_each
	.cfi_endproc

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.0:
	.zero	8
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.0, 8

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.1, 94

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.2,@object
	.section	.data.rel.ro..Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.2:
	.quad	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.1
	.asciz	"]\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.2, 24

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3, 98

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.4,@object
	.section	.data.rel.ro..Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.4:
	.quad	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3
	.asciz	"a\000\000\000\000\000\000\000R\002\000\000.\000\000"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.4, 24

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.5,@object
	.section	.data.rel.ro..Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.5:
	.quad	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3
	.asciz	"a\000\000\000\000\000\000\000[\002\000\000.\000\000"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.5, 24

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.6,@object
	.section	.data.rel.ro..Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.6:
	.quad	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3
	.asciz	"a\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.6, 24

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.7,@object
	.section	.data.rel.ro..Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.7:
	.quad	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3
	.asciz	"a\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.7, 24

	.type	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.8,@object
	.section	.data.rel.ro..Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.8:
	.quad	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.3
	.asciz	"a\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.3f17e7f9bf57bffa2b1e78fb78f1df33.8, 24

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

	.file	"query_state_get.3f6040ea660c9309-cgu.0"
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.0(%rip), %r8
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.0(%rip), %r11
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.4(%rip), %rcx
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.5(%rip), %rsi
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.2(%rip), %rdx
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.2(%rip), %rdx
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

	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4
	.type	query_get,@function
query_get:
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
	movq	%rdi, %rax
	movq	1432(%rdx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_60
	movl	1452(%rdx), %ecx
	movl	%ecx, 100(%rsp)
	movq	%rax, %rcx
	movl	1448(%rdx), %ebp
	movq	232(%rax), %rax
	movq	264(%rdx), %r9
	movl	8(%rcx), %edi
	testq	%rax, %rax
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	je	.LBB3_16
	cmpl	%r9d, %edi
	je	.LBB3_46
	movq	%r15, 136(%rsp)
	movl	%ebp, 96(%rsp)
	movq	216(%rcx), %rcx
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
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.0(%rip), %rdx
	cmovneq	%rax, %rdx
	leaq	8(%rcx), %rdi
	leaq	(%rcx,%r8,8), %r12
	addq	$8, %r12
	shlq	$6, %r8
	addq	$64, %r8
	movq	%r8, 104(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	movq	(%rcx), %r15
	movq	24(%rsp), %rax
	movq	328(%rax), %rcx
	movq	304(%rax), %rdx
	movq	312(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	%rdx, 56(%rsp)
	leaq	-40(%rdx), %rax
	movq	%rax, 112(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movq	%r9, 64(%rsp)
	.p2align	4
.LBB3_4:
	testq	%r15, %r15
	jne	.LBB3_7
	cmpq	%r12, %rdi
	je	.LBB3_14
	movq	(%rdi), %r15
	addq	$8, %rdi
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
	movq	56(%rsp), %r8
	movdqu	(%r8,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB3_12
.LBB3_10:
	rep		bsfl	%r8d, %r10d
	addq	%rdx, %r10
	andq	40(%rsp), %r10
	negq	%r10
	leaq	(%r10,%r10,4), %r13
	movq	112(%rsp), %r10
	cmpq	(%r10,%r13,8), %r11
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
	movq	32(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_44
	rep		bsfq	%rdx, %r11
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movq	104(%rsp), %rsi
	orq	%rsi, %r11
	movq	%r12, %rdi
	xorl	%r15d, %r15d
	testq	%rcx, %rcx
	jne	.LBB3_8
	jmp	.LBB3_4
.LBB3_16:
	movl	%r9d, 8(%rcx)
	cmpq	%rdi, %r9
	jb	.LBB3_61
	movq	16(%rsp), %r12
	je	.LBB3_46
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	24(%rsp), %rcx
	movq	256(%rcx), %rsi
	addq	%rax, %rsi
	shlq	$5, %r9
	leaq	(%r9,%r9,4), %rbx
	subq	%rax, %rbx
	.p2align	4
.LBB3_19:
	leaq	160(%rsi), %r14
	movq	%r12, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r14, %rsi
	addq	$-160, %rbx
	jne	.LBB3_19
	jmp	.LBB3_46
.LBB3_20:
	movq	56(%rsp), %rdx
	movq	-32(%rdx,%r13,8), %rcx
	movq	-24(%rdx,%r13,8), %rax
	addq	%rcx, %rax
	incq	%rax
	movq	%rax, 128(%rsp)
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	notl	%eax
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	leaq	16(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	-8(%rdx,%r13,8), %rax
	pcmpeqd	%xmm0, %xmm0
	movq	%rax, 120(%rsp)
	movq	%rax, 88(%rsp)
	movq	40(%rsp), %rcx
	testq	%r15, %r15
	je	.LBB3_31
	.p2align	4
.LBB3_28:
	rep		bsfq	%r15, %r8
	leaq	-1(%r15), %rax
	andq	%rax, %r15
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
	movq	56(%rsp), %r9
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
	movq	112(%rsp), %r9
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
	movq	56(%rsp), %rcx
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
	movq	120(%rsp), %rbp
	movq	%rbp, 152(%rsp)
	movq	72(%rsp), %r14
	movq	%r14, 160(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	128(%rsp), %rcx
	movq	%rcx, 176(%rsp)
	movq	80(%rsp), %rbx
	movw	%bx, 184(%rsp)
	movzwl	4(%rsp), %r10d
	leaq	186(%rsp), %r13
	movw	%r10w, 4(%r13)
	movl	(%rsp), %r10d
	cmpq	%rbp, %r9
	cmovbq	%r9, %rbp
	movq	%rbp, 120(%rsp)
	cmovbq	%rdx, %r14
	movq	%r14, 72(%rsp)
	cmovbq	%r8, %rax
	movq	%rax, 48(%rsp)
	cmovbq	144(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	40(%rsp), %rcx
	movl	%r10d, (%r13)
	cmovbl	%r11d, %ebx
	movq	%rbx, 80(%rsp)
	leaq	234(%rsp), %rax
	cmovbq	%rax, %r13
	movl	(%r13), %r8d
	movl	%r8d, 8(%rsp)
	movzwl	4(%r13), %edx
	movw	%dx, 12(%rsp)
	movq	88(%rsp), %rdx
	cmovbq	%r9, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.LBB3_27
	.p2align	4
.LBB3_30:
	movzwl	4(%rsp), %eax
	movw	%ax, 12(%rsp)
	movl	(%rsp), %eax
	movl	%eax, 8(%rsp)
.LBB3_27:
	movzwl	12(%rsp), %eax
	movw	%ax, 4(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, (%rsp)
	testq	%r15, %r15
	jne	.LBB3_28
	.p2align	4
.LBB3_31:
	cmpq	%r12, %rdi
	je	.LBB3_33
	movq	(%rdi), %r15
	addq	$8, %rdi
	addq	$64, %rsi
	testq	%r15, %r15
	je	.LBB3_31
	jmp	.LBB3_28
	.p2align	4
.LBB3_33:
	movq	32(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_35
	rep		bsfq	%rdx, %r8
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movq	104(%rsp), %rsi
	orq	%rsi, %r8
	xorl	%r15d, %r15d
	jmp	.LBB3_29
.LBB3_35:
	movq	88(%rsp), %r13
	testq	%r13, %r13
	movq	16(%rsp), %rbp
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rsi
	je	.LBB3_45
	movq	24(%rsp), %rax
	movq	256(%rax), %r15
	jmp	.LBB3_38
	.p2align	4
.LBB3_37:
	leal	-1(%rdx), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	decq	%r13
	je	.LBB3_45
.LBB3_38:
	testw	%dx, %dx
	movq	48(%rsp), %rax
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
	movq	%rax, 48(%rsp)
	rep		bsfl	%edx, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%rsi,%rax,8), %edi
	cmpl	8(%rbp), %edi
	jb	.LBB3_37
	cmpq	%rdi, 64(%rsp)
	jbe	.LBB3_62
	movq	%rsi, %rbx
	movq	%rdx, %r12
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	%r15, %rsi
	movq	%rbp, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	movq	%r12, %rdx
	movq	%rbx, %rsi
	jmp	.LBB3_37
.LBB3_44:
	movq	16(%rsp), %rbp
.LBB3_45:
	movq	64(%rsp), %rax
	movl	%eax, 8(%rbp)
	movl	96(%rsp), %ebp
	movq	136(%rsp), %r15
.LBB3_46:
	movl	%r15d, %eax
	movl	$4294967295, %edx
	xorq	%rax, %rdx
	shrq	$32, %r15
	movl	$1, %ecx
	movq	24(%rsp), %r9
	cmpq	16(%r9), %rdx
	jae	.LBB3_54
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$3, %rdx
	addq	8(%r9), %rdx
	cmpl	%r15d, 16(%rdx)
	jne	.LBB3_54
	cmpl	$0, (%rdx)
	je	.LBB3_54
	movq	8(%rdx), %rcx
	movl	%ecx, %esi
	movq	16(%rsp), %r8
	cmpq	56(%r8), %rsi
	jae	.LBB3_56
	movq	40(%r8), %rdi
	shrl	$6, %esi
	movq	(%rdi,%rsi,8), %rsi
	btq	%rcx, %rsi
	jae	.LBB3_56
	movl	4(%rdx), %eax
	shrq	$32, %rcx
	movq	416(%r9), %r10
	leaq	(%rcx,%rcx,8), %r11
	movq	272(%r8), %rcx
	movq	280(%r8), %r8
	movq	24(%r10,%r11,8), %rdx
	movq	56(%r10,%r11,8), %r9
	movq	(%r9,%rcx,8), %rcx
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rdi
	shlq	$4, %rdi
	movq	16(%rdx,%rdi), %rcx
	movq	32(%rdx,%rdi), %rsi
	movq	40(%rdx,%rdi), %rdi
	cmpq	64(%r10,%r11,8), %r8
	jae	.LBB3_58
	movq	(%r9,%r8,8), %r8
	testq	%r8, %r8
	je	.LBB3_58
	notq	%r8
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	movq	16(%rdx,%r8), %r8
	jmp	.LBB3_59
.LBB3_56:
	shlq	$32, %rcx
.LBB3_54:
	xorl	%edx, %edx
.LBB3_55:
	movq	%rdx, 152(%rsp)
	movq	%rcx, 160(%rsp)
	shlq	$32, %r15
	orq	%rax, %r15
	movq	%r15, 168(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 176(%rsp)
	movl	%ebp, 180(%rsp)
	movq	%rsi, 184(%rsp)
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
.LBB3_58:
	.cfi_def_cfa_offset 304
	xorl	%r8d, %r8d
.LBB3_59:
	notl	%eax
	leaq	(%rcx,%rax,4), %rdx
	leaq	(%rsi,%rax,4), %rcx
	leaq	(%rdi,%rax,4), %r15
	leaq	(%r8,%rax,4), %rsi
	movl	%r15d, %eax
	shrq	$32, %r15
	jmp	.LBB3_55
.LBB3_60:
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_61:
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.6(%rip), %rdx
	movq	%r9, %rsi
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_62:
	leaq	.Lanon.9667f1be4595d42e39a7c27f62db8358.7(%rip), %rdx
	movq	64(%rsp), %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_get, .Lfunc_end3-query_get
	.cfi_endproc

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.0:
	.zero	8
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.0, 8

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.9667f1be4595d42e39a7c27f62db8358.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.1, 94

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.2,@object
	.section	.data.rel.ro..Lanon.9667f1be4595d42e39a7c27f62db8358.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.2:
	.quad	.Lanon.9667f1be4595d42e39a7c27f62db8358.1
	.asciz	"]\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.2, 24

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.9667f1be4595d42e39a7c27f62db8358.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/606794e/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.3, 98

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.4,@object
	.section	.data.rel.ro..Lanon.9667f1be4595d42e39a7c27f62db8358.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.4:
	.quad	.Lanon.9667f1be4595d42e39a7c27f62db8358.3
	.asciz	"a\000\000\000\000\000\000\000R\002\000\000.\000\000"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.4, 24

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.5,@object
	.section	.data.rel.ro..Lanon.9667f1be4595d42e39a7c27f62db8358.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.5:
	.quad	.Lanon.9667f1be4595d42e39a7c27f62db8358.3
	.asciz	"a\000\000\000\000\000\000\000[\002\000\000.\000\000"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.5, 24

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.6,@object
	.section	.data.rel.ro..Lanon.9667f1be4595d42e39a7c27f62db8358.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.6:
	.quad	.Lanon.9667f1be4595d42e39a7c27f62db8358.3
	.asciz	"a\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.6, 24

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.7,@object
	.section	.data.rel.ro..Lanon.9667f1be4595d42e39a7c27f62db8358.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.7:
	.quad	.Lanon.9667f1be4595d42e39a7c27f62db8358.3
	.asciz	"a\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.7, 24

	.type	.Lanon.9667f1be4595d42e39a7c27f62db8358.8,@object
	.section	.data.rel.ro..Lanon.9667f1be4595d42e39a7c27f62db8358.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.9667f1be4595d42e39a7c27f62db8358.8:
	.quad	.Lanon.9667f1be4595d42e39a7c27f62db8358.3
	.asciz	"a\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.9667f1be4595d42e39a7c27f62db8358.8, 24

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

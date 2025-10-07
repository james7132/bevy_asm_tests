	.file	"query_state_for_each.67038f9c28735676-cgu.0"
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	testq	%rax, %rax
	movl	$1, %esi
	cmovneq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %r14d
	cmovaeq	%rsi, %r14
	leaq	(,%r14,4), %rdx
	shrq	$62, %rsi
	setne	%cl
	movabsq	$9223372036854775804, %rsi
	cmpq	%rsi, %rdx
	seta	%sil
	orb	%cl, %sil
	je	.LBB1_2
	xorl	%edi, %edi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB1_2:
	movq	%rdi, %rbx
	testq	%rax, %rax
	jne	.LBB1_4
	xorl	%eax, %eax
	jmp	.LBB1_5
.LBB1_4:
	movq	8(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 48(%rsp)
	movl	$4, %eax
.LBB1_5:
	movq	%rax, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rcx
	movl	$4, %esi
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB1_6
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_6:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
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
	leaq	-2(%rbx), %r9
	cmpq	$1, %rbx
	leaq	-8(%r15,%rbx,8), %r14
	movl	$0, %ebx
	cmovneq	%r9, %rbx
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.0(%rip), %r8
	cmoveq	%r8, %r14
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
	leaq	-2(%rbx), %r14
	cmpq	$1, %rbx
	leaq	-8(%r8,%rbx,8), %rbx
	movl	$0, %r11d
	cmovneq	%r14, %r11
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.0(%rip), %r14
	cmoveq	%r14, %rbx
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
	movq	%rdi, %r15
	movq	%rax, %rdi
	movq	%rsi, %r12
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
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.2(%rip), %rdx
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
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.2(%rip), %rdx
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
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
	movq	264(%r12), %rdx
	movl	8(%rbp), %edi
	testq	%rax, %rax
	je	.LBB3_17
	cmpl	%edx, %edi
	je	.LBB3_47
	movq	%rdx, 64(%rsp)
	movl	%r15d, 52(%rsp)
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
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.0(%rip), %rdx
	cmovneq	%rax, %rdx
	leaq	8(%rcx), %r13
	leaq	(%rcx,%r8,8), %rdi
	addq	$8, %rdi
	shlq	$6, %r8
	addq	$64, %r8
	movq	%r8, 80(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx), %r15
	movq	328(%r12), %rcx
	movq	304(%r12), %rax
	movq	312(%r12), %rdx
	movq	%rdx, 32(%rsp)
	movq	%rax, 16(%rsp)
	addq	$-40, %rax
	movq	%rax, 88(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, 72(%rsp)
	movq	88(%rsp), %r9
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
	movabsq	$-4563226453097033507, %rdx
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
	andq	32(%rsp), %rdx
	movq	16(%rsp), %r8
	movdqu	(%r8,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB3_13
	movq	%rbp, 56(%rsp)
.LBB3_11:
	rep		bsfl	%r8d, %r10d
	addq	%rdx, %r10
	andq	32(%rsp), %r10
	negq	%r10
	leaq	(%r10,%r10,4), %rbp
	cmpq	(%r9,%rbp,8), %r11
	je	.LBB3_21
	leal	-1(%r8), %r10d
	andw	%r8w, %r10w
	movl	%r10d, %r8d
	movq	56(%rsp), %rbp
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
	movq	24(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_45
	rep		bsfq	%rdx, %r11
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 24(%rsp)
	movq	80(%rsp), %rsi
	orq	%rsi, %r11
	movq	%rdi, %r13
	xorl	%r15d, %r15d
	testq	%rcx, %rcx
	jne	.LBB3_8
	jmp	.LBB3_4
.LBB3_17:
	movl	%edx, 8(%rbp)
	cmpq	%rdi, %rdx
	jb	.LBB3_80
	je	.LBB3_47
	shlq	$5, %rdi
	leaq	(%rdi,%rdi,4), %rax
	movq	256(%r12), %rsi
	addq	%rax, %rsi
	shlq	$5, %rdx
	leaq	(%rdx,%rdx,4), %rbx
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
	movq	16(%rsp), %rdx
	movq	-32(%rdx,%rbp,8), %r14
	movq	-24(%rdx,%rbp,8), %rax
	addq	%r14, %rax
	incq	%rax
	movq	%rax, 96(%rsp)
	movdqa	(%r14), %xmm0
	pmovmskb	%xmm0, %r12d
	notl	%r12d
	leaq	16(%r14), %rbx
	movq	-8(%rdx,%rbp,8), %rbp
	pcmpeqd	%xmm0, %xmm0
	movq	%rbp, 40(%rsp)
	movq	32(%rsp), %rcx
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
	movabsq	$-4563226453097033507, %rdx
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
	movq	16(%rsp), %r9
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
	movq	88(%rsp), %r9
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
	movq	16(%rsp), %rcx
	movq	-32(%rcx,%r10,8), %rdx
	movq	-24(%rcx,%r10,8), %rax
	leaq	(%rdx,%rax), %r8
	incq	%r8
	movdqa	(%rdx), %xmm1
	pmovmskb	%xmm1, %r11d
	notl	%r11d
	leaq	16(%rdx), %r9
	movq	-8(%rcx,%r10,8), %rax
	movq	32(%rsp), %rcx
	movq	%rbp, 104(%rsp)
	movq	%r14, 112(%rsp)
	movq	%rbx, 120(%rsp)
	movq	96(%rsp), %r10
	movq	%r10, 128(%rsp)
	cmpq	%rax, %rbp
	cmovaeq	%rax, %rbp
	movw	%r12w, 136(%rsp)
	cmovaq	%rdx, %r14
	movzwl	4(%rsp), %edx
	cmovaq	%r9, %rbx
	leaq	138(%rsp), %r9
	movw	%dx, 4(%r9)
	cmovaq	%r8, %r10
	movq	%r10, 96(%rsp)
	movl	(%rsp), %edx
	cmoval	%r11d, %r12d
	movq	%r9, %r8
	leaq	186(%rsp), %r10
	cmovaq	%r10, %r8
	movl	%edx, (%r9)
	movl	(%r8), %edx
	movl	%edx, 8(%rsp)
	movzwl	4(%r8), %edx
	movw	%dx, 12(%rsp)
	movq	40(%rsp), %rdx
	cmovaq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	jmp	.LBB3_28
	.p2align	4
.LBB3_31:
	movzwl	4(%rsp), %eax
	movw	%ax, 12(%rsp)
	movl	(%rsp), %eax
	movl	%eax, 8(%rsp)
.LBB3_28:
	movzwl	12(%rsp), %eax
	movw	%ax, 4(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, (%rsp)
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
	movq	24(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB3_36
	rep		bsfq	%rdx, %r8
	leaq	-1(%rdx), %rax
	andq	%rax, %rdx
	movq	%rdx, 24(%rsp)
	movq	80(%rsp), %rsi
	orq	%rsi, %r8
	xorl	%r15d, %r15d
	jmp	.LBB3_30
.LBB3_36:
	movq	40(%rsp), %r15
	testq	%r15, %r15
	movq	56(%rsp), %rbp
	movq	64(%rsp), %r13
	je	.LBB3_46
	movq	72(%rsp), %rax
	movq	256(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB3_39
	.p2align	4
.LBB3_38:
	leal	-1(%r12), %eax
	andl	%r12d, %eax
	movl	%eax, %r12d
	decq	%r15
	je	.LBB3_46
.LBB3_39:
	testw	%r12w, %r12w
	jne	.LBB3_42
	.p2align	4
.LBB3_40:
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %r12d
	addq	$-384, %r14
	addq	$16, %rbx
	cmpl	$65535, %r12d
	je	.LBB3_40
	notl	%r12d
.LBB3_42:
	rep		bsfl	%r12d, %eax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movl	-24(%r14,%rax,8), %edi
	cmpl	8(%rbp), %edi
	jb	.LBB3_38
	cmpq	%rdi, %r13
	jbe	.LBB3_81
	leaq	(%rdi,%rdi,4), %rsi
	shlq	$5, %rsi
	addq	16(%rsp), %rsi
	movq	%rbp, %rdi
	callq	bevy_ecs::query::state::QueryState<D,F>::new_archetype
	jmp	.LBB3_38
.LBB3_45:
	movq	64(%rsp), %r13
.LBB3_46:
	movl	%r13d, 8(%rbp)
	movl	52(%rsp), %r15d
	movq	72(%rsp), %r12
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
	addq	$200, %rsp
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
	.cfi_def_cfa_offset 256
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.6(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_80:
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.4(%rip), %rcx
	movq	%rdx, %rsi
	callq	*core::slice::index::slice_index_fail@GOTPCREL(%rip)
.LBB3_81:
	leaq	.Lanon.c39f816176dd310e32ce53ca4f74d24d.5(%rip), %rdx
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_for_each, .Lfunc_end3-query_state_for_each
	.cfi_endproc

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.0,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.c39f816176dd310e32ce53ca4f74d24d.0:
	.zero	8
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.0, 8

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c39f816176dd310e32ce53ca4f74d24d.1:
	.asciz	"/home/james/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/fixedbitset-0.5.7/src/lib.rs"
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.1, 94

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.2,@object
	.section	.data.rel.ro..Lanon.c39f816176dd310e32ce53ca4f74d24d.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c39f816176dd310e32ce53ca4f74d24d.2:
	.quad	.Lanon.c39f816176dd310e32ce53ca4f74d24d.1
	.asciz	"]\000\000\000\000\000\000\000\223\000\000\000\r\000\000"
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.2, 24

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.c39f816176dd310e32ce53ca4f74d24d.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/1610aa9/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.3, 98

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.4,@object
	.section	.data.rel.ro..Lanon.c39f816176dd310e32ce53ca4f74d24d.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c39f816176dd310e32ce53ca4f74d24d.4:
	.quad	.Lanon.c39f816176dd310e32ce53ca4f74d24d.3
	.asciz	"a\000\000\000\000\000\000\000\000\002\000\000)\000\000"
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.4, 24

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.5,@object
	.section	.data.rel.ro..Lanon.c39f816176dd310e32ce53ca4f74d24d.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c39f816176dd310e32ce53ca4f74d24d.5:
	.quad	.Lanon.c39f816176dd310e32ce53ca4f74d24d.3
	.asciz	"a\000\000\000\000\000\000\000#\002\000\0008\000\000"
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.5, 24

	.type	.Lanon.c39f816176dd310e32ce53ca4f74d24d.6,@object
	.section	.data.rel.ro..Lanon.c39f816176dd310e32ce53ca4f74d24d.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.c39f816176dd310e32ce53ca4f74d24d.6:
	.quad	.Lanon.c39f816176dd310e32ce53ca4f74d24d.3
	.asciz	"a\000\000\000\000\000\000\000\372\001\000\000\016\000\000"
	.size	.Lanon.c39f816176dd310e32ce53ca4f74d24d.6, 24

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"query_state_get_sparse.855c9af0ae6c9dc7-cgu.0"
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

	.section	.text.query_state_get,"ax",@progbits
	.globl	query_state_get
	.p2align	4, 0x90
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	840(%rdx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_81
	movq	%rdx, 80(%rsp)
	movq	168(%rdx), %rsi
	movl	8(%r15), %edi
	movl	%esi, 8(%r15)
	cmpq	%rdi, %rsi
	jb	.LBB3_82
	jne	.LBB3_16
.LBB3_3:
	movq	80(%rsp), %r11
	movl	848(%r11), %eax
	movl	852(%r11), %ecx
	movl	%ebx, %edx
	shrq	$32, %rbx
	movl	$1, %r8d
	cmpq	16(%r11), %rdx
	jae	.LBB3_13
	movq	8(%r11), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%ebx, (%rsi,%rdi,4)
	jne	.LBB3_13
	movl	4(%rsi,%rdi,4), %esi
	movl	$4294967295, %edi
	cmpq	%rdi, %rsi
	je	.LBB3_13
	movl	%esi, %r8d
	shrl	$5, %r8d
	xorl	%edi, %edi
	cmpq	64(%r15), %r8
	jae	.LBB3_61
	movq	56(%r15), %r9
	testq	%r9, %r9
	je	.LBB3_61
	movl	(%r9,%r8,4), %edi
	btl	%esi, %edi
	jae	.LBB3_60
	movq	288(%r15), %rdi
	movq	296(%r15), %rsi
	movq	272(%r11), %r9
	movq	280(%r11), %r10
	xorl	%r8d, %r8d
	cmpq	%rdi, %r10
	jbe	.LBB3_63
	testq	%r9, %r9
	je	.LBB3_63
	movq	(%r9,%rdi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB3_62
	notq	%rdi
	leaq	(%rdi,%rdi,8), %r8
	shlq	$4, %r8
	addq	224(%r11), %r8
	jmp	.LBB3_63
.LBB3_13:
	xorl	%edi, %edi
.LBB3_14:
	xorl	%esi, %esi
.LBB3_15:
	orq	%r8, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rdi, 24(%rsp)
	shlq	$32, %rbx
	orq	%rdx, %rbx
	movq	%rbx, 32(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%eax, 44(%rsp)
	movq	%r9, 48(%rsp)
	leaq	16(%rsp), %rax
	#APP
	#NO_APP
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
.LBB3_16:
	.cfi_def_cfa_offset 208
	movq	80(%rsp), %rax
	movq	160(%rax), %rax
	leaq	(%rsi,%rsi,4), %r12
	shlq	$5, %r12
	addq	%rax, %r12
	leaq	(%rdi,%rdi,4), %rbp
	shlq	$5, %rbp
	addq	%rax, %rbp
	leaq	48(%r15), %rax
	movq	%rax, 144(%rsp)
	leaq	72(%r15), %rax
	movq	%rax, 72(%rsp)
	leaq	264(%r15), %rax
	movq	%rax, 128(%rsp)
	leaq	16(%r15), %rax
	movq	%rax, 136(%rsp)
	leaq	40(%r15), %rax
	movq	%rax, 64(%rsp)
	leaq	240(%r15), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB3_19
.LBB3_17:
	movq	248(%r15), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 256(%r15)
	.p2align	4, 0x90
.LBB3_18:
	addq	$160, %rbp
	cmpq	%r12, %rbp
	je	.LBB3_3
.LBB3_19:
	movq	288(%r15), %rdx
	movq	136(%rbp), %rax
	cmpq	%rdx, %rax
	jbe	.LBB3_18
	movq	128(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB3_18
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_18
	movq	296(%r15), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB3_18
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_18
	movq	232(%r15), %rdx
	testq	%rdx, %rdx
	je	.LBB3_18
	movq	224(%r15), %rsi
	shlq	$6, %rdx
	addq	%rsi, %rdx
.LBB3_26:
	movq	%rsi, %rdi
	movq	16(%rsi), %rsi
	xorl	%r10d, %r10d
	testq	%rsi, %rsi
	je	.LBB3_29
	movq	8(%rdi), %r11
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %r8
	movl	$0, %r9d
	testq	%r11, %r11
	je	.LBB3_30
	decq	%rsi
	movl	(%r11), %r10d
	addq	$4, %r11
	movq	%r11, %r8
	movq	%rsi, %r9
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_29:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %r8
	xorl	%r9d, %r9d
.LBB3_30:
	leaq	64(%rdi), %rsi
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_31:
	testl	%r10d, %r10d
	jne	.LBB3_34
	subq	$1, %r9
	jb	.LBB3_36
	movl	(%r8), %r10d
	addq	$4, %r8
	incq	%r11
	jmp	.LBB3_31
.LBB3_34:
	rep		bsfl	%r10d, %r13d
	movq	%r11, %r14
	shlq	$5, %r14
	orq	%r13, %r14
	cmpq	%r14, %rax
	jbe	.LBB3_46
	leal	-1(%r10), %r13d
	andl	%r10d, %r13d
	cmpq	$0, (%rcx,%r14,8)
	movl	%r13d, %r10d
	jne	.LBB3_31
	jmp	.LBB3_46
	.p2align	4, 0x90
.LBB3_36:
	movq	48(%rdi), %r10
	xorl	%r9d, %r9d
	testq	%r10, %r10
	je	.LBB3_39
	movq	40(%rdi), %r11
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %rdi
	movl	$0, %r8d
	testq	%r11, %r11
	je	.LBB3_40
	decq	%r10
	movl	(%r11), %r9d
	addq	$4, %r11
	movq	%r11, %rdi
	movq	%r10, %r8
	jmp	.LBB3_40
.LBB3_39:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %rdi
	xorl	%r8d, %r8d
.LBB3_40:
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_41:
	testl	%r9d, %r9d
	jne	.LBB3_44
	subq	$1, %r8
	jb	.LBB3_47
	movl	(%rdi), %r9d
	addq	$4, %rdi
	incq	%r10
	jmp	.LBB3_41
.LBB3_44:
	movl	%r9d, %r11d
	rep		bsfl	%r9d, %r14d
	leal	-1(%r11), %r9d
	andl	%r11d, %r9d
	movq	%r10, %r11
	shlq	$5, %r11
	orq	%r14, %r11
	cmpq	%r11, %rax
	jbe	.LBB3_41
	cmpq	$0, (%rcx,%r11,8)
	je	.LBB3_41
	.p2align	4, 0x90
.LBB3_46:
	cmpq	%rdx, %rsi
	jne	.LBB3_26
	jmp	.LBB3_18
.LBB3_47:
	movl	144(%rbp), %r14d
	movl	%r14d, %r13d
	shrl	$5, %r13d
	cmpq	64(%r15), %r13
	jae	.LBB3_50
	movq	56(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_50
	movl	(%rax,%r13,4), %eax
	btl	%r14d, %eax
	jb	.LBB3_54
.LBB3_50:
	leaq	1(%r14), %rsi
	movq	144(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r14, 8(%rsp)
	movq	72(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_83
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	56(%r15), %rcx
	orl	%eax, (%rcx,%r13,4)
	movq	280(%r15), %rsi
	cmpq	264(%r15), %rsi
	jne	.LBB3_53
	movq	128(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	280(%r15), %rsi
.LBB3_53:
	movq	272(%r15), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 280(%r15)
.LBB3_54:
	movl	148(%rbp), %r13d
	movl	%r13d, %r14d
	shrl	$5, %r14d
	cmpq	32(%r15), %r14
	jae	.LBB3_57
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_57
	movl	(%rax,%r14,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_18
.LBB3_57:
	leaq	1(%r13), %rsi
	movq	136(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r13, 8(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_84
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	24(%r15), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	256(%r15), %rsi
	cmpq	240(%r15), %rsi
	jne	.LBB3_17
	movq	120(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	256(%r15), %rsi
	jmp	.LBB3_17
.LBB3_60:
	xorl	%edi, %edi
.LBB3_61:
	xorl	%r8d, %r8d
	jmp	.LBB3_14
.LBB3_62:
	xorl	%r8d, %r8d
.LBB3_63:
	xorl	%edi, %edi
	cmpq	%rsi, %r10
	jbe	.LBB3_68
	testq	%r9, %r9
	je	.LBB3_68
	movq	(%r9,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB3_67
	notq	%rsi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$4, %rdi
	addq	224(%r11), %rdi
	jmp	.LBB3_68
.LBB3_67:
	xorl	%edi, %edi
.LBB3_68:
	xorl	%esi, %esi
	cmpq	136(%r8), %rdx
	jae	.LBB3_74
	movq	128(%r8), %r9
	testq	%r9, %r9
	je	.LBB3_75
	cmpl	$0, (%r9,%rdx,8)
	je	.LBB3_73
	movl	4(%r9,%rdx,8), %r10d
	movq	8(%r8), %rsi
	imulq	%r10, %rsi
	addq	16(%r8), %rsi
	shlq	$2, %r10
	movq	56(%r8), %r11
	addq	%r10, %r11
	addq	80(%r8), %r10
	jmp	.LBB3_75
.LBB3_73:
	xorl	%esi, %esi
.LBB3_74:
.LBB3_75:
	xorl	%r9d, %r9d
	cmpq	136(%rdi), %rdx
	jae	.LBB3_80
	movq	128(%rdi), %r8
	testq	%r8, %r8
	je	.LBB3_80
	cmpl	$0, (%r8,%rdx,8)
	je	.LBB3_79
	movl	4(%r8,%rdx,8), %r9d
	imulq	8(%rdi), %r9
	addq	16(%rdi), %r9
	jmp	.LBB3_80
.LBB3_79:
	xorl	%r9d, %r9d
.LBB3_80:
	movabsq	$-4294967296, %rdi
	andq	%r11, %rdi
	movq	%r10, %rbx
	shrq	$32, %rbx
	movl	%r11d, %r8d
	movl	%r10d, %edx
	jmp	.LBB3_15
.LBB3_81:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_82:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_83:
	leaq	8(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	72(%rsp), %rcx
	jmp	.LBB3_85
.LBB3_84:
	leaq	8(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 96(%rsp)
	movq	64(%rsp), %rcx
.LBB3_85:
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.2(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.4(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_get, .Lfunc_end3-query_state_get
	.cfi_endproc

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.0,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.0,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.0:
	.ascii	"set at index "
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.0, 13

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.1,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.1,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.1, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.2,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.2:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.2, 32

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.3,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.3,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.3, 93

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.4,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.4:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.4, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.5:
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5, 0

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.6,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.6:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6, 97

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.7:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6
	.asciz	"a\000\000\000\000\000\000\000\006\001\000\000%\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.8:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6
	.asciz	"a\000\000\000\000\000\000\000\001\001\000\000\016\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

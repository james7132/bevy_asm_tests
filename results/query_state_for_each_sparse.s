	.text
	.file	"query_state_for_each_sparse.b91b670cf7d4d90c-cgu.0"
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

	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
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
	subq	$264, %rsp
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	752(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_95
	movq	168(%rax), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_94
	movq	%rax, 216(%rsp)
	movq	160(%rax), %rbp
	jne	.LBB3_3
.LBB3_77:
	movq	392(%r14), %rcx
	movq	400(%r14), %rdx
	movq	216(%rsp), %r8
	movq	272(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB3_82
	testq	%rsi, %rsi
	je	.LBB3_82
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB3_80
	movq	8(%rsi,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	224(%r8), %rax
.LBB3_82:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB3_87
.LBB3_83:
	testq	%rsi, %rsi
	je	.LBB3_87
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB3_85
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	224(%r8), %rcx
	jmp	.LBB3_87
.LBB3_3:
	imulq	$152, %rsi, %r13
	addq	%rbp, %r13
	imulq	$152, %rdi, %r12
	addq	%rbp, %r12
	leaq	184(%r14), %rax
	movq	%rax, 248(%rsp)
	leaq	216(%r14), %rax
	movq	%rax, 240(%rsp)
	leaq	80(%r14), %rax
	movq	%rax, 152(%rsp)
	leaq	104(%r14), %rax
	movq	%rax, 88(%rsp)
	leaq	112(%r14), %rax
	movq	%rax, 256(%rsp)
	leaq	136(%r14), %rax
	movq	%rax, 176(%rsp)
	leaq	48(%r14), %rax
	movq	%rax, 208(%rsp)
	leaq	72(%r14), %rax
	movq	%rax, 144(%rsp)
	leaq	368(%r14), %rax
	movq	%rax, 192(%rsp)
	leaq	16(%r14), %rax
	movq	%rax, 200(%rsp)
	leaq	40(%r14), %rax
	movq	%rax, 136(%rsp)
	leaq	344(%r14), %rax
	movq	%rax, 184(%rsp)
	movq	%r14, 128(%rsp)
	movq	%rbp, 232(%rsp)
	movq	%r13, 224(%rsp)
	jmp	.LBB3_4
.LBB3_75:
	movq	352(%r14), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 360(%r14)
	.p2align	4, 0x90
.LBB3_76:
	addq	$152, %r12
	cmpq	%r13, %r12
	je	.LBB3_77
.LBB3_4:
	movq	392(%r14), %rax
	movq	136(%r12), %rbx
	cmpq	%rax, %rbx
	jbe	.LBB3_76
	movq	128(%r12), %r15
	testq	%r15, %r15
	je	.LBB3_76
	shlq	$4, %rax
	cmpq	$0, (%r15,%rax)
	je	.LBB3_76
	movq	400(%r14), %rax
	cmpq	%rax, %rbx
	jbe	.LBB3_76
	shlq	$4, %rax
	cmpq	$0, (%r15,%rax)
	je	.LBB3_76
	movq	336(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_76
	movq	328(%r14), %rcx
	shlq	$6, %rax
	addq	%rcx, %rax
.LBB3_11:
	movq	%rcx, %rdx
	movq	16(%rcx), %rcx
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	je	.LBB3_12
	movq	8(%rdx), %r9
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5(%rip), %rsi
	movl	$0, %edi
	testq	%r9, %r9
	je	.LBB3_15
	decq	%rcx
	movl	(%r9), %r8d
	addq	$4, %r9
	movq	%r9, %rsi
	movq	%rcx, %rdi
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_12:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5(%rip), %rsi
	xorl	%edi, %edi
.LBB3_15:
	leaq	64(%rdx), %rcx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_16:
	testl	%r8d, %r8d
	jne	.LBB3_19
	subq	$1, %rdi
	jb	.LBB3_21
	movl	(%rsi), %r8d
	addq	$4, %rsi
	incq	%r9
	jmp	.LBB3_16
.LBB3_19:
	rep		bsfl	%r8d, %r11d
	movq	%r9, %r10
	shlq	$5, %r10
	orq	%r11, %r10
	cmpq	%r10, %rbx
	jbe	.LBB3_31
	leal	-1(%r8), %r11d
	andl	%r8d, %r11d
	shlq	$4, %r10
	cmpq	$0, (%r15,%r10)
	movl	%r11d, %r8d
	jne	.LBB3_16
	jmp	.LBB3_31
	.p2align	4, 0x90
.LBB3_21:
	movq	48(%rdx), %r8
	xorl	%edi, %edi
	testq	%r8, %r8
	je	.LBB3_22
	movq	40(%rdx), %r9
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5(%rip), %rdx
	movl	$0, %esi
	testq	%r9, %r9
	je	.LBB3_25
	decq	%r8
	movl	(%r9), %edi
	addq	$4, %r9
	movq	%r9, %rdx
	movq	%r8, %rsi
	jmp	.LBB3_25
.LBB3_22:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5(%rip), %rdx
	xorl	%esi, %esi
.LBB3_25:
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB3_26:
	testl	%edi, %edi
	jne	.LBB3_29
	subq	$1, %rsi
	jb	.LBB3_32
	movl	(%rdx), %edi
	addq	$4, %rdx
	incq	%r8
	jmp	.LBB3_26
.LBB3_29:
	movl	%edi, %r9d
	rep		bsfl	%edi, %r10d
	leal	-1(%r9), %edi
	andl	%r9d, %edi
	movq	%r8, %r9
	shlq	$5, %r9
	orq	%r10, %r9
	cmpq	%r9, %rbx
	jbe	.LBB3_26
	shlq	$4, %r9
	cmpq	$0, (%r15,%r9)
	je	.LBB3_26
	.p2align	4, 0x90
.LBB3_31:
	cmpq	%rax, %rcx
	jne	.LBB3_11
	jmp	.LBB3_76
.LBB3_32:
	movq	%r15, 96(%rsp)
	movq	%rbx, 168(%rsp)
	leaq	40(%rsp), %rdi
	movq	248(%rsp), %rsi
	movq	240(%rsp), %rdx
	callq	*fixedbitset::FixedBitSet::difference@GOTPCREL(%rip)
	movq	%r12, %rax
	movq	40(%rsp), %r12
	movq	48(%rsp), %r15
	movq	56(%rsp), %rbx
	movl	64(%rsp), %ebp
	movq	72(%rsp), %rsi
	movq	%rax, 120(%rsp)
	movq	96(%rax), %rax
	movq	%rax, 160(%rsp)
	.p2align	4, 0x90
.LBB3_33:
	testl	%ebp, %ebp
	jne	.LBB3_36
	subq	$1, %r15
	jb	.LBB3_45
	movl	(%r12), %ebp
	addq	$4, %r12
	incq	%rbx
	jmp	.LBB3_33
.LBB3_36:
	movl	%ebp, %ecx
	rep		bsfl	%ebp, %eax
	leal	-1(%rcx), %ebp
	andl	%ecx, %ebp
	movq	%rbx, %rcx
	movabsq	$576460752303423487, %rdx
	andq	%rdx, %rcx
	cmpq	16(%rsi), %rcx
	jae	.LBB3_39
	movq	8(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB3_39
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jb	.LBB3_33
.LBB3_39:
	movl	%eax, %ecx
	movq	%rbx, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, 168(%rsp)
	jbe	.LBB3_33
	shlq	$4, %rax
	movq	96(%rsp), %rcx
	cmpq	$0, (%rcx,%rax)
	je	.LBB3_33
	movq	%rsi, 104(%rsp)
	movq	96(%rsp), %rcx
	movq	8(%rcx,%rax), %rax
	shlq	$4, %rax
	movq	160(%rsp), %rcx
	movq	(%rcx,%rax), %rax
	movq	%rax, 112(%rsp)
	leaq	1(%rax), %rsi
	movq	152(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	112(%rsp), %rcx
	movq	%rcx, (%rsp)
	movq	88(%rsp), %rax
	cmpq	%rcx, (%rax)
	jbe	.LBB3_42
	movl	$1, %eax
	shll	%cl, %eax
	movq	88(%r14), %rdx
	shrq	$5, %rcx
	orl	%eax, (%rdx,%rcx,4)
	movq	104(%rsp), %rsi
	jmp	.LBB3_33
.LBB3_45:
	movq	232(%r14), %rax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB3_46
	movq	224(%r14), %rcx
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5(%rip), %rbx
	movl	$0, %ebp
	testq	%rcx, %rcx
	movq	120(%rsp), %r12
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r15
	je	.LBB3_49
	decq	%rax
	movl	(%rcx), %r13d
	addq	$4, %rcx
	movq	%rcx, %rbx
	movq	%rax, %rbp
	jmp	.LBB3_49
.LBB3_46:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5(%rip), %rbx
	xorl	%ebp, %ebp
	movq	120(%rsp), %r12
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r15
.LBB3_49:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_50:
	testl	%r13d, %r13d
	jne	.LBB3_53
	subq	$1, %rbp
	jb	.LBB3_59
	movl	(%rbx), %r13d
	addq	$4, %rbx
	incq	%r14
	jmp	.LBB3_50
.LBB3_53:
	movl	%r13d, %eax
	rep		bsfl	%r13d, %ecx
	leal	-1(%rax), %r13d
	andl	%eax, %r13d
	movq	%r14, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, 168(%rsp)
	jbe	.LBB3_50
	shlq	$4, %rax
	movq	96(%rsp), %rcx
	cmpq	$0, (%rcx,%rax)
	je	.LBB3_50
	movq	96(%rsp), %rcx
	movq	8(%rcx,%rax), %rax
	shlq	$4, %rax
	movq	160(%rsp), %rcx
	movq	(%rcx,%rax), %r12
	leaq	1(%r12), %rsi
	movq	152(%rsp), %rdi
	movq	%rsi, 112(%rsp)
	callq	*%r15
	movq	%r12, (%rsp)
	movq	88(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_42
	movq	%r15, %rdx
	movq	%r12, %r15
	shrq	$5, %r15
	movq	%r12, %rcx
	movq	%r12, 104(%rsp)
	movl	$1, %r12d
	shll	%cl, %r12d
	movq	128(%rsp), %rax
	movq	88(%rax), %rax
	orl	%r12d, (%rax,%r15,4)
	movq	256(%rsp), %rdi
	movq	112(%rsp), %rsi
	callq	*%rdx
	movq	128(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	%rcx, (%rsp)
	cmpq	%rcx, 136(%rax)
	jbe	.LBB3_57
	movq	120(%rax), %rax
	orl	%r12d, (%rax,%r15,4)
	movq	120(%rsp), %r12
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r15
	jmp	.LBB3_50
.LBB3_59:
	movl	144(%r12), %r15d
	movl	%r15d, %ebx
	shrl	$5, %ebx
	movq	128(%rsp), %r14
	cmpq	64(%r14), %rbx
	movq	232(%rsp), %rbp
	movq	224(%rsp), %r13
	jae	.LBB3_62
	movq	56(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_62
	movl	(%rax,%rbx,4), %eax
	btl	%r15d, %eax
	jb	.LBB3_68
.LBB3_62:
	leaq	1(%r15), %rsi
	movq	208(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r15, (%rsp)
	movq	144(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_63
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	56(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	384(%r14), %rsi
	cmpq	368(%r14), %rsi
	jne	.LBB3_67
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	384(%r14), %rsi
.LBB3_67:
	movq	376(%r14), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 384(%r14)
.LBB3_68:
	movl	148(%r12), %r15d
	movl	%r15d, %ebx
	shrl	$5, %ebx
	cmpq	32(%r14), %rbx
	jae	.LBB3_71
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_71
	movl	(%rax,%rbx,4), %eax
	btl	%r15d, %eax
	jb	.LBB3_76
.LBB3_71:
	leaq	1(%r15), %rsi
	movq	200(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r15, (%rsp)
	movq	136(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_72
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	24(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	360(%r14), %rsi
	cmpq	344(%r14), %rsi
	jne	.LBB3_75
	movq	184(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	360(%r14), %rsi
	jmp	.LBB3_75
.LBB3_80:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_83
	jmp	.LBB3_87
.LBB3_85:
	xorl	%ecx, %ecx
.LBB3_87:
	movq	384(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB3_93
	movl	760(%r8), %edx
	movq	376(%r14), %rsi
	leaq	(%rsi,%rdi,4), %rdi
	jmp	.LBB3_89
	.p2align	4, 0x90
.LBB3_92:
	addq	$4, %rsi
	cmpq	%rdi, %rsi
	je	.LBB3_93
.LBB3_89:
	movl	(%rsi), %r8d
	imulq	$152, %r8, %r9
	movq	88(%rbp,%r9), %r8
	testq	%r8, %r8
	je	.LBB3_92
	movq	80(%rbp,%r9), %r9
	.p2align	4, 0x90
.LBB3_91:
	movl	(%r9), %r10d
	movq	128(%rax), %r11
	movl	4(%r11,%r10,8), %r11d
	movq	8(%rax), %rbx
	imulq	%r11, %rbx
	movq	16(%rax), %r14
	movq	80(%rax), %r15
	movq	16(%rcx), %r12
	movq	128(%rcx), %r13
	movl	4(%r13,%r10,8), %r10d
	imulq	8(%rcx), %r10
	movss	(%r12,%r10), %xmm0
	movl	%edx, (%r15,%r11,4)
	addss	(%r14,%rbx), %xmm0
	movss	%xmm0, (%r14,%rbx)
	addq	$16, %r9
	decq	%r8
	jne	.LBB3_91
	jmp	.LBB3_92
.LBB3_93:
	addq	$264, %rsp
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
.LBB3_42:
	.cfi_def_cfa_offset 320
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rcx
	jmp	.LBB3_43
.LBB3_57:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	176(%rsp), %rcx
.LBB3_43:
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 72(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8(%rip), %rsi
	leaq	40(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB3_95:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.11(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_94:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_63:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB3_64
.LBB3_72:
	movq	%rsp, %rax
	movq	%rax, 8(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	136(%rsp), %rcx
.LBB3_64:
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 72(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4(%rip), %rsi
	leaq	40(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_for_each, .Lfunc_end3-query_for_each
	.cfi_endproc

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.0,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0:
	.ascii	"set at index "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0, 13

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.1,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2, 32

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.3,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3, 93

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5:
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5, 0

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6:
	.ascii	"insert at index "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6, 16

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7, 32

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.9,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.13.0/src/query/state.rs"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9, 99

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9
	.asciz	"c\000\000\000\000\000\000\000\016\001\000\000%\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.11,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.11:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9
	.asciz	"c\000\000\000\000\000\000\000\t\001\000\000\016\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.11, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

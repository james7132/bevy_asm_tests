	.text
	.file	"query_state_get.1c09bc4793e99e73-cgu.0"
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

	.section	".text.unlikely.alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle","ax",@progbits
	.p2align	4, 0x90
	.type	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle,@function
alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB2_10
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$4, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$16, 16(%rsp)
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
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end2-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
	.zero	16
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	768(%rdx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_82
	movq	%rax, 120(%rsp)
	movq	%rdx, 88(%rsp)
	movq	168(%rdx), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_83
	jne	.LBB3_12
.LBB3_3:
	movq	88(%rsp), %rbx
	movl	776(%rbx), %eax
	movl	780(%rbx), %ecx
	movq	120(%rsp), %r11
	movl	%r11d, %edx
	shrq	$32, %r11
	movl	$1, %r8d
	cmpq	16(%rbx), %rdx
	jae	.LBB3_9
	movq	8(%rbx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%r11d, (%rsi,%rdi,4)
	jne	.LBB3_9
	movl	4(%rsi,%rdi,4), %r9d
	movl	$4294967295, %r10d
	cmpq	%r10, %r9
	je	.LBB3_9
	cmpq	%r9, 56(%r14)
	jbe	.LBB3_81
	movq	40(%r14), %r8
	movl	%r9d, %r10d
	shrl	$6, %r10d
	movq	(%r8,%r10,8), %r8
	btq	%r9, %r8
	jae	.LBB3_81
	leaq	(%rsi,%rdi,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$3, %rdi
	addq	296(%rbx), %rdi
	xorl	%r8d, %r8d
	cmpq	304(%rbx), %rsi
	cmovbq	%rdi, %r8
	movl	12(%rdx), %esi
	movq	216(%r14), %rdx
	movq	224(%r14), %rdi
	movq	24(%r8), %r10
	movq	56(%r8), %r8
	movq	(%r8,%rdx,8), %rdx
	notq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	(%r8,%rdi,8), %rdi
	notq	%rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$5, %rdi
	shlq	$2, %rsi
	movq	16(%r10,%rdx), %r9
	addq	%rsi, %r9
	movq	56(%r10,%rdx), %r8
	addq	%rsi, %r8
	movq	80(%r10,%rdx), %r11
	addq	%rsi, %r11
	addq	16(%r10,%rdi), %rsi
	movabsq	$-4294967296, %rdi
	andq	%r8, %rdi
	movl	%r11d, %edx
	shrq	$32, %r11
	movl	%r8d, %r8d
	jmp	.LBB3_11
.LBB3_9:
	xorl	%edi, %edi
.LBB3_10:
	xorl	%r9d, %r9d
.LBB3_11:
	orq	%r8, %rdi
	movq	%r9, 16(%rsp)
	movq	%rdi, 24(%rsp)
	shlq	$32, %r11
	orq	%rdx, %r11
	movq	%r11, 32(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%eax, 44(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	16(%rsp), %rax
	#APP
	#NO_APP
	addq	$136, %rsp
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
.LBB3_12:
	.cfi_def_cfa_offset 192
	movq	88(%rsp), %rax
	movq	160(%rax), %rax
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$5, %rcx
	addq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	leaq	(%rdi,%rdi,4), %rbx
	shlq	$5, %rbx
	addq	%rax, %rbx
	leaq	24(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	192(%r14), %rax
	movq	%rax, 112(%rsp)
	leaq	16(%rsp), %r13
	movq	%r14, 96(%rsp)
	jmp	.LBB3_15
.LBB3_13:
	movq	200(%r14), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 208(%r14)
	.p2align	4, 0x90
.LBB3_14:
	addq	$160, %rbx
	cmpq	128(%rsp), %rbx
	je	.LBB3_3
.LBB3_15:
	movq	216(%r14), %rdx
	movq	136(%rbx), %rax
	cmpq	%rdx, %rax
	jbe	.LBB3_14
	movq	128(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_14
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_14
	movq	224(%r14), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB3_14
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_14
	movq	80(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB3_14
	movq	72(%r14), %rdi
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	jmp	.LBB3_23
	.p2align	4, 0x90
.LBB3_22:
	movq	%rsi, %rdi
	cmpq	%rdx, %rsi
	movq	96(%rsp), %r14
	je	.LBB3_14
.LBB3_23:
	movq	16(%rdi), %r8
	movq	%r8, %r9
	shrq	$6, %r9
	xorl	%esi, %esi
	testb	$63, %r8b
	setne	%sil
	addq	%r9, %rsi
	je	.LBB3_26
	movq	(%rdi), %r12
	movl	$0, %r11d
	movl	$0, %ebp
	movl	$0, %r8d
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0(%rip), %r10
	movq	%r10, %r9
	testq	%r12, %r12
	je	.LBB3_27
	leaq	8(%r12), %r9
	movq	(%r12), %r11
	leaq	(%r12,%rsi,8), %r10
	addq	$-8, %r10
	decq	%rsi
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1(%rip), %r8
	cmoveq	%r8, %r10
	subq	$1, %rsi
	movl	$0, %r8d
	cmovaeq	%rsi, %r8
	movq	(%r10), %rbp
	leaq	(%r12,%r8,8), %r10
	addq	$8, %r10
	shlq	$6, %r8
	addq	$64, %r8
	jmp	.LBB3_27
	.p2align	4, 0x90
.LBB3_26:
	xorl	%r11d, %r11d
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0(%rip), %r10
	movq	%r10, %r9
.LBB3_27:
	leaq	48(%rdi), %rsi
	movq	%r11, 16(%rsp)
	movq	%rbp, 64(%rsp)
	xorl	%ebp, %ebp
	testq	%r11, %r11
	jne	.LBB3_28
	jmp	.LBB3_29
	.p2align	4, 0x90
.LBB3_37:
	movq	16(%rsp), %r11
	testq	%r11, %r11
	jne	.LBB3_28
.LBB3_29:
	cmpq	%r10, %r9
	je	.LBB3_33
	addq	$64, %rbp
	.p2align	4, 0x90
.LBB3_31:
	movq	(%r9), %r11
	testq	%r11, %r11
	jne	.LBB3_38
	addq	$8, %r9
	addq	$64, %rbp
	cmpq	%r10, %r9
	jne	.LBB3_31
.LBB3_33:
	movq	64(%rsp), %r11
	testq	%r11, %r11
	je	.LBB3_39
	movq	$0, 16(%rsp)
	movq	%r8, %rbp
	movq	%r10, %r9
	leaq	64(%rsp), %r12
	jmp	.LBB3_35
	.p2align	4, 0x90
.LBB3_38:
	movq	%r11, 16(%rsp)
	addq	$8, %r9
	.p2align	4, 0x90
.LBB3_28:
	movq	%r13, %r12
.LBB3_35:
	rep		bsfq	%r11, %r14
	leaq	-1(%r11), %r15
	andq	%r11, %r15
	movq	%r15, (%r12)
	addq	%rbp, %r14
	cmpq	%r14, %rax
	jbe	.LBB3_22
	cmpq	$0, (%rcx,%r14,8)
	jne	.LBB3_37
	jmp	.LBB3_22
.LBB3_39:
	movq	40(%rdi), %r8
	movq	%r8, %r9
	shrq	$6, %r9
	xorl	%r11d, %r11d
	testb	$63, %r8b
	setne	%r11b
	addq	%r9, %r11
	je	.LBB3_42
	movq	24(%rdi), %r12
	movl	$0, %r10d
	movl	$0, %ebp
	movl	$0, %edi
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0(%rip), %r9
	movq	%r9, %r8
	testq	%r12, %r12
	je	.LBB3_43
	leaq	8(%r12), %r8
	movq	(%r12), %r10
	leaq	(%r12,%r11,8), %r9
	addq	$-8, %r9
	decq	%r11
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1(%rip), %rdi
	cmoveq	%rdi, %r9
	subq	$1, %r11
	movl	$0, %edi
	cmovaeq	%r11, %rdi
	movq	(%r9), %rbp
	leaq	(%r12,%rdi,8), %r9
	addq	$8, %r9
	shlq	$6, %rdi
	addq	$64, %rdi
	jmp	.LBB3_43
.LBB3_42:
	xorl	%r10d, %r10d
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0(%rip), %r9
	movq	%r9, %r8
.LBB3_43:
	movq	%r10, 16(%rsp)
	movq	%rbp, 64(%rsp)
	xorl	%r11d, %r11d
	jmp	.LBB3_45
	.p2align	4, 0x90
.LBB3_44:
	movq	16(%rsp), %r10
.LBB3_45:
	testq	%r10, %r10
	je	.LBB3_47
.LBB3_46:
	movq	%r13, %r12
	jmp	.LBB3_53
	.p2align	4, 0x90
.LBB3_47:
	cmpq	%r9, %r8
	je	.LBB3_51
	addq	$64, %r11
	.p2align	4, 0x90
.LBB3_49:
	movq	(%r8), %r10
	testq	%r10, %r10
	jne	.LBB3_55
	addq	$8, %r8
	addq	$64, %r11
	cmpq	%r9, %r8
	jne	.LBB3_49
.LBB3_51:
	movq	64(%rsp), %r10
	testq	%r10, %r10
	je	.LBB3_56
	movq	$0, 16(%rsp)
	movq	%rdi, %r11
	movq	%r9, %r8
	leaq	64(%rsp), %r12
.LBB3_53:
	rep		bsfq	%r10, %r14
	leaq	-1(%r10), %r15
	andq	%r10, %r15
	movq	%r15, (%r12)
	addq	%r11, %r14
	cmpq	%r14, %rax
	jbe	.LBB3_44
	cmpq	$0, (%rcx,%r14,8)
	je	.LBB3_44
	jmp	.LBB3_22
.LBB3_55:
	movq	%r10, 16(%rsp)
	addq	$8, %r8
	jmp	.LBB3_46
.LBB3_56:
	movl	144(%rbx), %r12d
	movq	96(%rsp), %r14
	movq	40(%r14), %r15
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	jbe	.LBB3_58
	movl	$1, %edx
	movl	%r12d, %ecx
	shlq	%cl, %rdx
	movl	%r12d, %eax
	shrl	$6, %eax
	movq	(%r15,%rax,8), %rsi
	btq	%r12, %rsi
	jb	.LBB3_68
	jmp	.LBB3_67
.LBB3_58:
	leaq	1(%r12), %rcx
	movq	%rax, %rdx
	shrq	$7, %rdx
	xorl	%esi, %esi
	testb	$127, %al
	setne	%sil
	movq	%rdx, 80(%rsp)
	movq	%rsi, 72(%rsp)
	addq	%rdx, %rsi
	movq	48(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rcx, %rbp
	shrq	$7, %rbp
	movq	%rcx, 8(%rsp)
	andl	$127, %ecx
	cmpq	$1, %rcx
	sbbq	$-1, %rbp
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	jbe	.LBB3_65
	subq	%rsi, %rax
	cmpq	%rcx, %rax
	movq	%rcx, 56(%rsp)
	jae	.LBB3_62
.Ltmp0:
	movq	%r13, %rdi
	movq	%rcx, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp1:
	movq	24(%rsp), %r15
	movq	32(%rsp), %rsi
	movq	56(%rsp), %rcx
.LBB3_62:
	movq	%rsi, %rdi
	shlq	$4, %rdi
	addq	%r15, %rdi
	cmpq	$2, %rcx
	jb	.LBB3_64
	movq	72(%rsp), %rax
	negq	%rax
	movq	80(%rsp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	addq	%rbp, %rdx
	shlq	$4, %rdx
	movq	%rsi, %rbp
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	56(%rsp), %rbp
	shlq	$4, %rbp
	leaq	(%r15,%rbp), %rdi
	addq	$-16, %rdi
.LBB3_64:
	movq	8(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rdi)
	movq	16(%rsp), %rax
	jmp	.LBB3_66
.LBB3_65:
	movq	8(%rsp), %rcx
.LBB3_66:
	movq	%r15, 40(%r14)
	movq	%rax, 48(%r14)
	movq	%rcx, 56(%r14)
	movl	%r12d, %eax
	shrl	$6, %eax
	movq	(%r15,%rax,8), %rsi
	movl	$1, %edx
	movl	%r12d, %ecx
	shlq	%cl, %rdx
.LBB3_67:
	orq	%rsi, %rdx
	movq	%rdx, (%r15,%rax,8)
.LBB3_68:
	movl	148(%rbx), %r15d
	movq	16(%r14), %r12
	movq	32(%r14), %rax
	cmpq	%r15, %rax
	jbe	.LBB3_70
	movl	$1, %edx
	movl	%r15d, %ecx
	shlq	%cl, %rdx
	movl	%r15d, %eax
	shrl	$6, %eax
	movq	(%r12,%rax,8), %rsi
	btq	%r15, %rsi
	jb	.LBB3_14
	jmp	.LBB3_79
.LBB3_70:
	leaq	1(%r15), %rcx
	movq	%rax, %rdx
	shrq	$7, %rdx
	xorl	%esi, %esi
	testb	$127, %al
	setne	%sil
	movq	%rdx, 80(%rsp)
	movq	%rsi, 72(%rsp)
	addq	%rdx, %rsi
	movq	24(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rcx, %rbp
	shrq	$7, %rbp
	movq	%rcx, 8(%rsp)
	andl	$127, %ecx
	cmpq	$1, %rcx
	sbbq	$-1, %rbp
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	jbe	.LBB3_77
	subq	%rsi, %rax
	cmpq	%rcx, %rax
	movq	%rcx, 56(%rsp)
	jae	.LBB3_74
.Ltmp3:
	movq	%r13, %rdi
	movq	%rcx, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp4:
	movq	24(%rsp), %r12
	movq	32(%rsp), %rsi
	movq	56(%rsp), %rcx
.LBB3_74:
	movq	%rsi, %rdi
	shlq	$4, %rdi
	addq	%r12, %rdi
	cmpq	$2, %rcx
	jb	.LBB3_76
	movq	72(%rsp), %rax
	negq	%rax
	movq	80(%rsp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	addq	%rbp, %rdx
	shlq	$4, %rdx
	movq	%rsi, %rbp
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	56(%rsp), %rbp
	shlq	$4, %rbp
	leaq	(%r12,%rbp), %rdi
	addq	$-16, %rdi
.LBB3_76:
	movq	8(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rdi)
	movq	16(%rsp), %rax
	jmp	.LBB3_78
.LBB3_77:
	movq	8(%rsp), %rcx
.LBB3_78:
	movq	%r12, 16(%r14)
	movq	%rax, 24(%r14)
	movq	%rcx, 32(%r14)
	movl	%r15d, %eax
	shrl	$6, %eax
	movq	(%r12,%rax,8), %rsi
	movl	$1, %edx
	movl	%r15d, %ecx
	shlq	%cl, %rdx
.LBB3_79:
	orq	%rsi, %rdx
	movq	%rdx, (%r12,%rax,8)
	movq	208(%r14), %rsi
	cmpq	192(%r14), %rsi
	jne	.LBB3_13
	movq	112(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	208(%r14), %rsi
	jmp	.LBB3_13
.LBB3_81:
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	jmp	.LBB3_10
.LBB3_82:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_83:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_84:
.Ltmp5:
	jmp	.LBB3_86
.LBB3_85:
.Ltmp2:
.LBB3_86:
	movq	%rax, %rbx
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_88
	movq	104(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$4, %rsi
	movl	$16, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_88:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	query_get, .Lfunc_end3-query_get
	.cfi_endproc
	.section	.gcc_except_table.query_get,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp1
	.byte	0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Lfunc_end3-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.0:
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0, 0

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.1:
	.zero	8
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1, 8

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.2,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.2:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/01649f1/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2, 97

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.3:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2
	.asciz	"a\000\000\000\000\000\000\000X\001\000\000%\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.4:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2
	.asciz	"a\000\000\000\000\000\000\000S\001\000\000\016\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

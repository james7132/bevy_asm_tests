	.text
	.file	"query_state_get_sparse.55113215117e5155-cgu.0"
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
	movq	8(%rdi), %rax
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
	movq	(%rbx), %rcx
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
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
	ud2
.LBB1_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
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
	movq	8(%rdi), %rax
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
	movq	(%rbx), %rcx
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
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
	ud2
.LBB2_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %r15
	movq	752(%rdx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_69
	movq	%rax, 184(%rsp)
	movq	%rdx, 144(%rsp)
	movq	168(%rdx), %rsi
	movl	8(%r15), %edi
	movl	%esi, 8(%r15)
	cmpq	%rdi, %rsi
	jb	.LBB3_70
	jne	.LBB3_16
.LBB3_3:
	movq	144(%rsp), %r11
	movl	760(%r11), %eax
	movl	764(%r11), %ecx
	movq	184(%rsp), %rbx
	movl	%ebx, %edx
	shrq	$32, %rbx
	movl	$1, %r8d
	cmpq	16(%r11), %rdx
	jae	.LBB3_13
	movq	(%r11), %rsi
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
	jae	.LBB3_43
	movq	48(%r15), %r9
	testq	%r9, %r9
	je	.LBB3_43
	movl	(%r9,%r8,4), %edi
	btl	%esi, %edi
	jae	.LBB3_42
	movq	296(%r15), %rdi
	movq	304(%r15), %rsi
	movq	264(%r11), %r9
	movq	280(%r11), %r10
	xorl	%r8d, %r8d
	cmpq	%rdi, %r10
	jbe	.LBB3_45
	testq	%r9, %r9
	je	.LBB3_45
	shlq	$4, %rdi
	cmpq	$0, (%r9,%rdi)
	je	.LBB3_44
	movq	8(%r9,%rdi), %rdi
	leaq	(%rdi,%rdi,8), %r8
	shlq	$4, %r8
	addq	216(%r11), %r8
	jmp	.LBB3_45
.LBB3_13:
	xorl	%edi, %edi
.LBB3_14:
	xorl	%esi, %esi
.LBB3_15:
	orq	%r8, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rdi, 64(%rsp)
	shlq	$32, %rbx
	orq	%rdx, %rbx
	movq	%rbx, 72(%rsp)
	movl	%ecx, 80(%rsp)
	movl	%eax, 84(%rsp)
	movq	%r9, 88(%rsp)
	leaq	56(%rsp), %rax
	#APP
	#NO_APP
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
.LBB3_16:
	.cfi_def_cfa_offset 288
	movq	144(%rsp), %rax
	movq	152(%rax), %rdx
	leaq	80(%r15), %rax
	movq	%rax, 120(%rsp)
	leaq	104(%r15), %rax
	movq	%rax, 104(%rsp)
	leaq	112(%r15), %rax
	movq	%rax, 160(%rsp)
	leaq	136(%r15), %rax
	movq	%rax, 152(%rsp)
	leaq	48(%r15), %rax
	movq	%rax, 200(%rsp)
	leaq	72(%r15), %rax
	movq	%rax, 136(%rsp)
	leaq	272(%r15), %rax
	movq	%rax, 176(%rsp)
	leaq	16(%r15), %rax
	movq	%rax, 192(%rsp)
	leaq	40(%r15), %rax
	movq	%rax, 128(%rsp)
	leaq	248(%r15), %rax
	movq	%rax, 168(%rsp)
	imulq	$152, %rdi, %rbx
	imulq	$152, %rsi, %rsi
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	%r15, 208(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 112(%rsp)
	jmp	.LBB3_19
.LBB3_17:
	movq	16(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	248(%r15), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r15)
	movq	112(%rsp), %rsi
	.p2align	4, 0x90
.LBB3_18:
	addq	$152, %rbx
	cmpq	%rbx, %rsi
	je	.LBB3_3
.LBB3_19:
	movq	296(%r15), %rax
	movq	136(%rdx,%rbx), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB3_18
	movq	128(%rdx,%rbx), %r12
	testq	%r12, %r12
	je	.LBB3_18
	shlq	$4, %rax
	cmpq	$0, (%r12,%rax)
	je	.LBB3_18
	movq	304(%r15), %r13
	cmpq	%r13, %rcx
	jbe	.LBB3_18
	shlq	$4, %r13
	cmpq	$0, (%r12,%r13)
	je	.LBB3_18
	movq	96(%rdx,%rbx), %rcx
	movq	8(%r12,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 216(%rsp)
	movq	(%rcx,%rax), %r15
	leaq	1(%r15), %rsi
	movq	120(%rsp), %rdi
	movq	%rsi, 224(%rsp)
	callq	*%r8
	movq	%r15, 8(%rsp)
	movq	104(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_63
	movq	%r15, %rbp
	shrq	$5, %rbp
	movl	$1, %r14d
	movl	%r15d, %ecx
	shll	%cl, %r14d
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	orl	%r14d, (%rax,%rbp,4)
	movq	160(%rsp), %rdi
	movq	224(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r15, 8(%rsp)
	movq	152(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_64
	movq	160(%rsp), %rax
	movq	(%rax), %rax
	orl	%r14d, (%rax,%rbp,4)
	leaq	(%r12,%r13), %rax
	cmpq	$0, (%rax)
	movq	208(%rsp), %r15
	movq	16(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	je	.LBB3_29
	movq	8(%r12,%r13), %rax
	shlq	$4, %rax
	movq	216(%rsp), %rcx
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
	movq	120(%rsp), %r12
	movq	%r12, %rdi
	callq	*%r8
	movq	%r14, 8(%rsp)
	movq	104(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_63
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%r12), %rcx
	shrq	$5, %r14
	orl	%eax, (%rcx,%r14,4)
	movq	16(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
.LBB3_29:
	movl	144(%rdx,%rbx), %ebp
	movl	%ebp, %r14d
	shrl	$5, %r14d
	cmpq	64(%r15), %r14
	jae	.LBB3_32
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_32
	movl	(%rax,%r14,4), %eax
	btl	%ebp, %eax
	jb	.LBB3_36
.LBB3_32:
	leaq	1(%rbp), %rsi
	movq	200(%rsp), %rdi
	callq	*%r8
	movq	%rbp, 8(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB3_66
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	48(%r15), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	288(%r15), %rsi
	cmpq	280(%r15), %rsi
	jne	.LBB3_35
	movq	176(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%r15), %rsi
.LBB3_35:
	movq	16(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	272(%r15), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r15)
	movq	112(%rsp), %rsi
.LBB3_36:
	movl	148(%rdx,%rbx), %ebp
	movl	%ebp, %r14d
	shrl	$5, %r14d
	cmpq	32(%r15), %r14
	jae	.LBB3_39
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_39
	movl	(%rax,%r14,4), %eax
	btl	%ebp, %eax
	jb	.LBB3_18
.LBB3_39:
	leaq	1(%rbp), %rsi
	movq	192(%rsp), %rdi
	callq	*%r8
	movq	%rbp, 8(%rsp)
	movq	128(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB3_67
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	16(%r15), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	264(%r15), %rsi
	cmpq	256(%r15), %rsi
	jne	.LBB3_17
	movq	168(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%r15), %rsi
	jmp	.LBB3_17
.LBB3_42:
	xorl	%edi, %edi
.LBB3_43:
	xorl	%r8d, %r8d
	jmp	.LBB3_14
.LBB3_44:
	xorl	%r8d, %r8d
.LBB3_45:
	xorl	%edi, %edi
	cmpq	%rsi, %r10
	jbe	.LBB3_50
	testq	%r9, %r9
	je	.LBB3_50
	shlq	$4, %rsi
	cmpq	$0, (%r9,%rsi)
	je	.LBB3_49
	movq	8(%r9,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$4, %rdi
	addq	216(%r11), %rdi
	jmp	.LBB3_50
.LBB3_49:
	xorl	%edi, %edi
.LBB3_50:
	xorl	%esi, %esi
	cmpq	136(%r8), %rdx
	jae	.LBB3_56
	movq	120(%r8), %r9
	testq	%r9, %r9
	je	.LBB3_57
	cmpl	$0, (%r9,%rdx,8)
	je	.LBB3_55
	movl	4(%r9,%rdx,8), %r10d
	movq	8(%r8), %rsi
	imulq	%r10, %rsi
	addq	16(%r8), %rsi
	shlq	$2, %r10
	movq	48(%r8), %r11
	addq	%r10, %r11
	addq	72(%r8), %r10
	jmp	.LBB3_57
.LBB3_55:
	xorl	%esi, %esi
.LBB3_56:
.LBB3_57:
	xorl	%r9d, %r9d
	cmpq	136(%rdi), %rdx
	jae	.LBB3_62
	movq	120(%rdi), %r8
	testq	%r8, %r8
	je	.LBB3_62
	cmpl	$0, (%r8,%rdx,8)
	je	.LBB3_61
	movl	4(%r8,%rdx,8), %r9d
	imulq	8(%rdi), %r9
	addq	16(%rdi), %r9
	jmp	.LBB3_62
.LBB3_61:
	xorl	%r9d, %r9d
.LBB3_62:
	movabsq	$-4294967296, %rdi
	andq	%r11, %rdi
	movq	%r10, %rbx
	shrq	$32, %rbx
	movl	%r11d, %r8d
	movl	%r10d, %edx
	jmp	.LBB3_15
.LBB3_63:
	leaq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	104(%rsp), %rcx
	jmp	.LBB3_65
.LBB3_64:
	leaq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	152(%rsp), %rcx
.LBB3_65:
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_66:
	leaq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	136(%rsp), %rcx
	jmp	.LBB3_68
.LBB3_67:
	leaq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	128(%rsp), %rcx
.LBB3_68:
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.2(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.4(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_69:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_70:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
	ud2
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
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.df18cc41ae9ddb601fc5a42c06362435.5:
	.ascii	"insert at index "
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5, 16

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.6:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6, 32

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.7:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.8,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.8:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8, 97

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.9:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8
	.asciz	"a\000\000\000\000\000\000\000\336\000\000\000%\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.10:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8
	.asciz	"a\000\000\000\000\000\000\000\331\000\000\000\016\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10, 24

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

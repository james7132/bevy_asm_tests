	.text
	.file	"query_state_iter_sparse.493eecc0d593d1b3-cgu.0"
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

	.section	.text.query_state_iter,"ax",@progbits
	.globl	query_state_iter
	.p2align	4, 0x90
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	752(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_63
	movq	168(%rax), %rsi
	movl	8(%rbx), %edi
	movl	%esi, 8(%rbx)
	cmpq	%rdi, %rsi
	jb	.LBB3_64
	movq	%rax, 160(%rsp)
	movq	152(%rax), %rbp
	jne	.LBB3_11
.LBB3_3:
	movq	296(%rbx), %rcx
	movq	304(%rbx), %rdx
	movq	160(%rsp), %r8
	movq	264(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB3_7
	testq	%rsi, %rsi
	je	.LBB3_7
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB3_37
	movq	8(%rsi,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	216(%r8), %rax
.LBB3_7:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB3_39
.LBB3_8:
	testq	%rsi, %rsi
	je	.LBB3_39
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB3_38
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r8), %rcx
	jmp	.LBB3_39
.LBB3_11:
	leaq	80(%rbx), %rax
	movq	%rax, 104(%rsp)
	leaq	104(%rbx), %rax
	movq	%rax, 48(%rsp)
	leaq	112(%rbx), %rax
	movq	%rax, 136(%rsp)
	leaq	136(%rbx), %rax
	movq	%rax, 128(%rsp)
	leaq	48(%rbx), %rax
	movq	%rax, 176(%rsp)
	leaq	72(%rbx), %rax
	movq	%rax, 120(%rsp)
	leaq	272(%rbx), %rax
	movq	%rax, 152(%rsp)
	leaq	16(%rbx), %rax
	movq	%rax, 168(%rsp)
	leaq	40(%rbx), %rax
	movq	%rax, 112(%rsp)
	leaq	248(%rbx), %rax
	movq	%rax, 144(%rsp)
	imulq	$152, %rdi, %r14
	imulq	$152, %rsi, %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	%rbp, 192(%rsp)
	movq	%rbx, 184(%rsp)
	movq	%rdx, 8(%rsp)
	jmp	.LBB3_14
.LBB3_12:
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	248(%rbx), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%rbx)
	.p2align	4, 0x90
.LBB3_13:
	addq	$152, %r14
	cmpq	%r14, %rdx
	je	.LBB3_3
.LBB3_14:
	movq	296(%rbx), %rax
	movq	136(%rbp,%r14), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB3_13
	movq	128(%rbp,%r14), %r15
	testq	%r15, %r15
	je	.LBB3_13
	shlq	$4, %rax
	cmpq	$0, (%r15,%rax)
	je	.LBB3_13
	movq	304(%rbx), %r12
	cmpq	%r12, %rcx
	jbe	.LBB3_13
	shlq	$4, %r12
	cmpq	$0, (%r15,%r12)
	je	.LBB3_13
	movq	96(%rbp,%r14), %rcx
	movq	8(%r15,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 200(%rsp)
	movq	(%rcx,%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	104(%rsp), %rdi
	movq	%rsi, 208(%rsp)
	callq	*%r8
	movq	%rbx, (%rsp)
	movq	48(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB3_57
	movq	%rbx, %r13
	shrq	$5, %r13
	movl	$1, %ebp
	movl	%ebx, %ecx
	shll	%cl, %ebp
	movq	104(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebp, (%rax,%r13,4)
	movq	136(%rsp), %rdi
	movq	208(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbx, (%rsp)
	movq	128(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB3_58
	movq	136(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebp, (%rax,%r13,4)
	leaq	(%r15,%r12), %rax
	cmpq	$0, (%rax)
	movq	192(%rsp), %rbp
	movq	184(%rsp), %rbx
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	je	.LBB3_24
	movq	8(%r15,%r12), %rax
	shlq	$4, %rax
	movq	200(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
	movq	104(%rsp), %r15
	movq	%r15, %rdi
	callq	*%r8
	movq	%r13, (%rsp)
	movq	48(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_57
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	(%r15), %rcx
	shrq	$5, %r13
	orl	%eax, (%rcx,%r13,4)
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
.LBB3_24:
	movl	144(%rbp,%r14), %r13d
	movl	%r13d, %r15d
	shrl	$5, %r15d
	cmpq	64(%rbx), %r15
	jae	.LBB3_27
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_27
	movl	(%rax,%r15,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_31
.LBB3_27:
	leaq	1(%r13), %rsi
	movq	176(%rsp), %rdi
	callq	*%r8
	movq	%r13, (%rsp)
	movq	120(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_60
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	48(%rbx), %rcx
	orl	%eax, (%rcx,%r15,4)
	movq	288(%rbx), %rsi
	cmpq	280(%rbx), %rsi
	jne	.LBB3_30
	movq	152(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%rbx), %rsi
.LBB3_30:
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	272(%rbx), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%rbx)
.LBB3_31:
	movl	148(%rbp,%r14), %r13d
	movl	%r13d, %r15d
	shrl	$5, %r15d
	cmpq	32(%rbx), %r15
	jae	.LBB3_34
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_34
	movl	(%rax,%r15,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_13
.LBB3_34:
	leaq	1(%r13), %rsi
	movq	168(%rsp), %rdi
	callq	*%r8
	movq	%r13, (%rsp)
	movq	112(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_61
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	16(%rbx), %rcx
	orl	%eax, (%rcx,%r15,4)
	movq	264(%rbx), %rsi
	cmpq	256(%rbx), %rsi
	jne	.LBB3_12
	movq	144(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%rbx), %rsi
	jmp	.LBB3_12
.LBB3_37:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_8
	jmp	.LBB3_39
.LBB3_38:
	xorl	%ecx, %ecx
.LBB3_39:
	movl	760(%r8), %edx
	movq	272(%rbx), %rsi
	movq	288(%rbx), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	jmp	.LBB3_42
	.p2align	4, 0x90
.LBB3_40:
	xorl	%r15d, %r15d
.LBB3_41:
	incq	%r10
	movss	(%r15), %xmm0
	movl	%edx, (%r11)
	addss	(%rbx), %xmm0
	movss	%xmm0, (%rbx)
.LBB3_42:
	cmpq	%r8, %r10
	jne	.LBB3_46
	.p2align	4, 0x90
.LBB3_43:
	cmpq	%rdi, %rsi
	je	.LBB3_56
	movl	(%rsi), %r8d
	addq	$4, %rsi
	imulq	$152, %r8, %r9
	movq	88(%rbp,%r9), %r8
	testq	%r8, %r8
	je	.LBB3_43
	movq	72(%rbp,%r9), %r9
	xorl	%r10d, %r10d
.LBB3_46:
	movq	%r10, %r11
	shlq	$4, %r11
	movl	(%r9,%r11), %r14d
	cmpq	136(%rax), %r14
	jae	.LBB3_50
	movq	120(%rax), %r15
	movl	$0, %ebx
	testq	%r15, %r15
	je	.LBB3_51
	cmpl	$0, (%r15,%r14,8)
	je	.LBB3_50
	movl	4(%r15,%r14,8), %r11d
	movq	8(%rax), %rbx
	imulq	%r11, %rbx
	addq	16(%rax), %rbx
	shlq	$2, %r11
	addq	72(%rax), %r11
	jmp	.LBB3_51
	.p2align	4, 0x90
.LBB3_50:
	xorl	%ebx, %ebx
.LBB3_51:
	cmpq	136(%rcx), %r14
	jae	.LBB3_40
	movq	120(%rcx), %r12
	movl	$0, %r15d
	testq	%r12, %r12
	je	.LBB3_41
	cmpl	$0, (%r12,%r14,8)
	je	.LBB3_40
	movl	4(%r12,%r14,8), %r15d
	imulq	8(%rcx), %r15
	addq	16(%rcx), %r15
	jmp	.LBB3_41
.LBB3_56:
	addq	$216, %rsp
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
	.cfi_def_cfa_offset 272
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rcx
	jmp	.LBB3_59
.LBB3_58:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rcx
.LBB3_59:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.6(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.7(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_60:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB3_62
.LBB3_61:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	112(%rsp), %rcx
.LBB3_62:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.2(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.4(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_63:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.11(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_64:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.10(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	query_state_iter, .Lfunc_end3-query_state_iter
	.cfi_endproc

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.0,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.0,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.0:
	.ascii	"set at index "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.0, 13

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.1,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.1,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.1, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.2,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.2:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.2, 32

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.3,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.3,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.3, 93

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.4,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.4:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.4, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.742eb44106aac60011c15f8144ce6fe2.5:
	.ascii	"insert at index "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.5, 16

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.6,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.6:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.6, 32

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.7,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.7:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.7, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.8,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.8,"a",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.8:
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.8, 0

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.9,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.9,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.9:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.9, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.10,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.10:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.9
	.asciz	"a\000\000\000\000\000\000\000\336\000\000\000%\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.10, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.11,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.11:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.9
	.asciz	"a\000\000\000\000\000\000\000\331\000\000\000\016\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.11, 24

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"query_state_iter.a93b50cba8b585d9-cgu.0"
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
	movq	%rdi, %rbp
	movq	752(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_46
	movq	%rax, 128(%rsp)
	movq	168(%rax), %rsi
	movl	8(%rbp), %edi
	movl	%esi, 8(%rbp)
	cmpq	%rdi, %rsi
	jb	.LBB3_45
	jne	.LBB3_3
.LBB3_36:
	movq	128(%rsp), %r14
	movl	760(%r14), %eax
	movq	248(%rbp), %rcx
	movq	264(%rbp), %rdx
	leaq	(%rcx,%rdx,4), %rdx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	cmpq	%rdi, %r11
	jne	.LBB3_42
.LBB3_38:
	movq	288(%r14), %r9
	movq	304(%r14), %r11
	movq	296(%rbp), %r8
	movq	304(%rbp), %r10
	.p2align	4, 0x90
.LBB3_39:
	cmpq	%rdx, %rcx
	je	.LBB3_47
	movl	(%rcx), %edi
	addq	$4, %rcx
	cmpq	%rdi, %r11
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%r9,%rdi,8), %rbx
	cmovbeq	%rsi, %rbx
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_39
	movq	32(%rbx), %r11
	shlq	$4, %r8
	movq	(%rbx), %rbx
	movq	8(%r11,%r8), %r8
	leaq	(%r8,%r8,2), %r9
	shlq	$5, %r9
	movq	16(%rbx,%r9), %r8
	movq	72(%rbx,%r9), %r9
	shlq	$4, %r10
	movq	8(%r11,%r10), %r10
	leaq	(%r10,%r10,2), %r10
	shlq	$5, %r10
	movq	16(%rbx,%r10), %r10
	xorl	%r11d, %r11d
	jmp	.LBB3_44
	.p2align	4, 0x90
.LBB3_42:
	movq	%r11, %rbx
	shrq	$32, %rbx
	jne	.LBB3_48
	testq	%r8, %r8
	je	.LBB3_47
.LBB3_44:
	movss	(%r10,%r11,4), %xmm0
	movl	%eax, (%r9,%r11,4)
	addss	(%r8,%r11,4), %xmm0
	movss	%xmm0, (%r8,%r11,4)
	incq	%r11
	cmpq	%rdi, %r11
	jne	.LBB3_42
	jmp	.LBB3_38
.LBB3_47:
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
.LBB3_3:
	.cfi_def_cfa_offset 272
	movq	128(%rsp), %rax
	movq	152(%rax), %r14
	leaq	80(%rbp), %rax
	movq	%rax, 104(%rsp)
	leaq	104(%rbp), %rax
	movq	%rax, 48(%rsp)
	leaq	112(%rbp), %rax
	movq	%rax, 144(%rsp)
	leaq	136(%rbp), %rax
	movq	%rax, 136(%rsp)
	leaq	48(%rbp), %rax
	movq	%rax, 176(%rsp)
	leaq	72(%rbp), %rax
	movq	%rax, 120(%rsp)
	leaq	272(%rbp), %rax
	movq	%rax, 160(%rsp)
	leaq	16(%rbp), %rax
	movq	%rax, 168(%rsp)
	leaq	40(%rbp), %rax
	movq	%rax, 112(%rsp)
	leaq	248(%rbp), %rax
	movq	%rax, 152(%rsp)
	imulq	$152, %rdi, %r12
	imulq	$152, %rsi, %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	%rbp, 192(%rsp)
	movq	%r14, 184(%rsp)
	movq	%rdx, 8(%rsp)
	jmp	.LBB3_4
.LBB3_34:
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	248(%rbp), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%rbp)
	.p2align	4, 0x90
.LBB3_35:
	addq	$152, %r12
	cmpq	%r12, %rdx
	je	.LBB3_36
.LBB3_4:
	movq	296(%rbp), %rax
	movq	136(%r14,%r12), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB3_35
	movq	128(%r14,%r12), %r15
	testq	%r15, %r15
	je	.LBB3_35
	shlq	$4, %rax
	cmpq	$0, (%r15,%rax)
	je	.LBB3_35
	movq	304(%rbp), %rbx
	cmpq	%rbx, %rcx
	jbe	.LBB3_35
	shlq	$4, %rbx
	cmpq	$0, (%r15,%rbx)
	je	.LBB3_35
	movq	96(%r14,%r12), %rcx
	movq	8(%r15,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 200(%rsp)
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
	movq	104(%rsp), %rdi
	movq	%rsi, 208(%rsp)
	callq	*%r8
	movq	%r14, (%rsp)
	movq	48(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_10
	movq	%r14, %r13
	shrq	$5, %r13
	movl	$1, %ebp
	movl	%r14d, %ecx
	shll	%cl, %ebp
	movq	104(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebp, (%rax,%r13,4)
	movq	144(%rsp), %rdi
	movq	208(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r14, (%rsp)
	movq	136(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_14
	movq	144(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebp, (%rax,%r13,4)
	leaq	(%r15,%rbx), %rax
	cmpq	$0, (%rax)
	movq	192(%rsp), %rbp
	movq	184(%rsp), %r14
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	je	.LBB3_18
	movq	8(%r15,%rbx), %rax
	shlq	$4, %rax
	movq	200(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
	movq	104(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*%r8
	movq	%r13, (%rsp)
	movq	48(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_10
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	(%rbx), %rcx
	shrq	$5, %r13
	orl	%eax, (%rcx,%r13,4)
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
.LBB3_18:
	movl	144(%r14,%r12), %r13d
	movl	%r13d, %ebx
	shrl	$5, %ebx
	cmpq	64(%rbp), %rbx
	jae	.LBB3_21
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB3_21
	movl	(%rax,%rbx,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_27
.LBB3_21:
	leaq	1(%r13), %rsi
	movq	176(%rsp), %rdi
	callq	*%r8
	movq	%r13, (%rsp)
	movq	120(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_22
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	48(%rbp), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	288(%rbp), %rsi
	cmpq	280(%rbp), %rsi
	jne	.LBB3_26
	movq	160(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%rbp), %rsi
.LBB3_26:
	movq	8(%rsp), %rdx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	272(%rbp), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%rbp)
.LBB3_27:
	movl	148(%r14,%r12), %r13d
	movl	%r13d, %ebx
	shrl	$5, %ebx
	cmpq	32(%rbp), %rbx
	jae	.LBB3_30
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.LBB3_30
	movl	(%rax,%rbx,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_35
.LBB3_30:
	leaq	1(%r13), %rsi
	movq	168(%rsp), %rdi
	callq	*%r8
	movq	%r13, (%rsp)
	movq	112(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_31
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	16(%rbp), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%rbp), %rsi
	cmpq	256(%rbp), %rsi
	jne	.LBB3_34
	movq	152(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%rbp), %rsi
	jmp	.LBB3_34
.LBB3_10:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rcx
	jmp	.LBB3_11
.LBB3_14:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rcx
.LBB3_11:
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
.LBB3_48:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %rdi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.10(%rip), %rdx
	movl	$48, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB3_22:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB3_23
.LBB3_31:
	movq	%rsp, %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	112(%rsp), %rcx
.LBB3_23:
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
.LBB3_46:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.13(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_45:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.12(%rip), %rdx
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
.Lanon.742eb44106aac60011c15f8144ce6fe2.8:
	.ascii	"assertion failed: index as u32 as usize == index"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.8, 48

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.9,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.9,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.9:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.9, 99

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.10,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.10:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.9
	.asciz	"c\000\000\000\000\000\000\000w\000\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.10, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.11,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.11,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.11:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.11, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.12,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.12:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.11
	.asciz	"a\000\000\000\000\000\000\000\336\000\000\000%\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.12, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.13,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.13:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.11
	.asciz	"a\000\000\000\000\000\000\000\331\000\000\000\016\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.13, 24

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

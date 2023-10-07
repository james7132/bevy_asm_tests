	.text
	.file	"query_state_iter_sparse.afa52019e70b91a3-cgu.0"
	.section	".text.<&T as core::fmt::Display>::fmt","ax",@progbits
	.p2align	4, 0x90
	.type	<&T as core::fmt::Display>::fmt,@function
<&T as core::fmt::Display>::fmt:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*<str as core::fmt::Display>::fmt@GOTPCREL(%rip)
.Lfunc_end0:
	.size	<&T as core::fmt::Display>::fmt, .Lfunc_end0-<&T as core::fmt::Display>::fmt
	.cfi_endproc

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
	je	.LBB1_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB1_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB1_11
.LBB1_4:
	movq	%r15, 8(%r14)
	jmp	.LBB1_5
.LBB1_7:
	testq	%rbx, %rbx
	je	.LBB1_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB1_4
.LBB1_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB1_12
.LBB1_6:
	movq	$0, 8(%r14)
.LBB1_5:
	movl	$1, %eax
.LBB1_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB1_11
	jmp	.LBB1_4
.Lfunc_end1:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end1-alloc::raw_vec::finish_grow
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
	je	.LBB2_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB2_4
.LBB2_3:
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
	je	.LBB3_10
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
	je	.LBB3_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB3_4
.LBB3_3:
	movq	$0, 16(%rsp)
.LBB3_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB3_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB3_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:
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
.LBB3_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB3_9
.LBB3_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB3_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end3-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	cmpq	752(%rsi), %rax
	jne	.LBB4_64
	movq	%rdi, %r9
	movq	%rsi, 152(%rsp)
	movq	168(%rsi), %r13
	movq	8(%rdi), %r14
	movq	%r13, 8(%rdi)
	cmpq	%r13, %r14
	movq	%r13, 176(%rsp)
	jae	.LBB4_29
	leaq	80(%r9), %rax
	movq	%rax, 128(%rsp)
	leaq	104(%r9), %rax
	movq	%rax, 120(%rsp)
	leaq	112(%r9), %rdx
	leaq	136(%r9), %rax
	movq	%rax, 160(%rsp)
	leaq	312(%r9), %rax
	movq	%rax, 216(%rsp)
	leaq	48(%r9), %rax
	movq	%rax, 208(%rsp)
	leaq	72(%r9), %rax
	movq	%rax, 144(%rsp)
	leaq	272(%r9), %rax
	movq	%rax, 192(%rsp)
	leaq	16(%r9), %rax
	movq	%rax, 200(%rsp)
	leaq	40(%r9), %rax
	movq	%rax, 136(%rsp)
	leaq	248(%r9), %rax
	movq	%rax, 184(%rsp)
	movq	152(%rsp), %rax
	movq	152(%rax), %r8
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	%r9, 64(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 8(%rsp)
	jmp	.LBB4_5
.LBB4_3:
	movq	8(%rsp), %r8
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	248(%r9), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r9)
	.p2align	4, 0x90
.LBB4_4:
	incq	%r14
	cmpq	%r14, %r13
	je	.LBB4_29
.LBB4_5:
	movl	%r14d, %edi
	cmpq	%r13, %rdi
	jae	.LBB4_57
	imulq	$152, %rdi, %rsi
	movq	296(%r9), %rax
	movq	136(%r8,%rsi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB4_4
	movq	128(%r8,%rsi), %r12
	testq	%r12, %r12
	je	.LBB4_4
	shlq	$4, %rax
	cmpq	$0, (%r12,%rax)
	je	.LBB4_4
	movq	304(%r9), %r15
	cmpq	%r15, %rcx
	jbe	.LBB4_4
	shlq	$4, %r15
	cmpq	$0, (%r12,%r15)
	je	.LBB4_4
	movq	%rsi, 232(%rsp)
	movq	96(%r8,%rsi), %rcx
	movq	8(%r12,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 224(%rsp)
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
	movq	128(%rsp), %rdi
	movq	%rsi, 240(%rsp)
	callq	*%r10
	movq	%r13, 48(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB4_58
	movq	%r13, %rbp
	shrq	$5, %rbp
	movl	$1, %ebx
	movl	%r13d, %ecx
	shll	%cl, %ebx
	movq	128(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
	movq	168(%rsp), %rdi
	movq	240(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r13, 48(%rsp)
	movq	160(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB4_59
	movq	168(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
	leaq	(%r12,%r15), %rax
	cmpq	$0, (%rax)
	movq	128(%rsp), %rdx
	movq	8(%rsp), %rax
	je	.LBB4_16
	movq	8(%r12,%r15), %rax
	shlq	$4, %rax
	movq	224(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
	movq	%rdx, %rdi
	movq	%rdx, %rbx
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r13, 48(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB4_58
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	(%rbx), %rcx
	shrq	$5, %r13
	orl	%eax, (%rcx,%r13,4)
	movq	%rbx, %rdx
	movq	8(%rsp), %rax
.LBB4_16:
	movq	232(%rsp), %rbx
	leaq	(%rax,%rbx), %rsi
	movq	216(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movq	8(%rsp), %r8
	movl	144(%r8,%rbx), %ebp
	movl	%ebp, %r15d
	shrl	$5, %r15d
	movq	64(%rsp), %r9
	cmpq	64(%r9), %r15
	movq	176(%rsp), %r13
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	jae	.LBB4_19
	movq	48(%r9), %rax
	testq	%rax, %rax
	je	.LBB4_19
	movl	(%rax,%r15,4), %eax
	btl	%ebp, %eax
	jb	.LBB4_23
.LBB4_19:
	leaq	1(%rbp), %rsi
	movq	208(%rsp), %rdi
	callq	*%r10
	movq	%rbp, 48(%rsp)
	movq	144(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB4_61
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	64(%rsp), %r9
	movq	48(%r9), %rcx
	orl	%eax, (%rcx,%r15,4)
	movq	288(%r9), %rsi
	cmpq	280(%r9), %rsi
	jne	.LBB4_22
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	64(%rsp), %r9
	movq	288(%r9), %rsi
.LBB4_22:
	movq	8(%rsp), %r8
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	272(%r9), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r9)
.LBB4_23:
	movl	148(%r8,%rbx), %ebp
	movl	%ebp, %ebx
	shrl	$5, %ebx
	cmpq	32(%r9), %rbx
	jae	.LBB4_26
	movq	16(%r9), %rax
	testq	%rax, %rax
	je	.LBB4_26
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB4_4
.LBB4_26:
	leaq	1(%rbp), %rsi
	movq	200(%rsp), %rdi
	callq	*%r10
	movq	%rbp, 48(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB4_62
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	64(%rsp), %r9
	movq	16(%r9), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r9), %rsi
	cmpq	256(%r9), %rsi
	jne	.LBB4_3
	movq	184(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	64(%rsp), %r9
	movq	264(%r9), %rsi
	jmp	.LBB4_3
.LBB4_29:
	movq	296(%r9), %rcx
	movq	304(%r9), %rdx
	movq	152(%rsp), %r8
	movq	264(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB4_33
	testq	%rsi, %rsi
	je	.LBB4_33
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB4_37
	movq	8(%rsi,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	216(%r8), %rax
.LBB4_33:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB4_39
.LBB4_34:
	testq	%rsi, %rsi
	je	.LBB4_39
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB4_38
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r8), %rcx
	jmp	.LBB4_39
.LBB4_37:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB4_34
	jmp	.LBB4_39
.LBB4_38:
	xorl	%ecx, %ecx
.LBB4_39:
	movl	760(%r8), %edx
	movq	272(%r9), %rsi
	movq	288(%r9), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	movq	152(%r8), %r8
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %r11
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	jmp	.LBB4_42
	.p2align	4, 0x90
.LBB4_40:
	xorl	%r13d, %r13d
.LBB4_41:
	incq	%rbx
	movss	(%r13), %xmm0
	movl	%edx, (%r14)
	addss	(%r15), %xmm0
	movss	%xmm0, (%r15)
	movq	176(%rsp), %r13
.LBB4_42:
	cmpq	%r10, %rbx
	jne	.LBB4_46
	.p2align	4, 0x90
.LBB4_43:
	cmpq	%rdi, %rsi
	je	.LBB4_56
	movl	(%rsi), %r10d
	addq	$4, %rsi
	imulq	$152, %r10, %r11
	addq	%r8, %r11
	cmpq	%r10, %r13
	cmovbeq	%r9, %r11
	movq	88(%r11), %r10
	testq	%r10, %r10
	je	.LBB4_43
	movq	72(%r11), %r11
	xorl	%ebx, %ebx
.LBB4_46:
	leaq	(%rbx,%rbx,2), %r14
	movl	4(%r11,%r14,4), %r12d
	cmpq	%r12, 136(%rax)
	jbe	.LBB4_50
	movq	120(%rax), %r13
	movl	$0, %r15d
	testq	%r13, %r13
	je	.LBB4_51
	cmpl	$0, (%r13,%r12,8)
	je	.LBB4_50
	movl	4(%r13,%r12,8), %r14d
	movq	8(%rax), %r15
	imulq	%r14, %r15
	addq	16(%rax), %r15
	shlq	$2, %r14
	addq	72(%rax), %r14
	jmp	.LBB4_51
	.p2align	4, 0x90
.LBB4_50:
	xorl	%r15d, %r15d
.LBB4_51:
	cmpq	%r12, 136(%rcx)
	jbe	.LBB4_40
	movq	120(%rcx), %rbp
	movl	$0, %r13d
	testq	%rbp, %rbp
	je	.LBB4_41
	cmpl	$0, (%rbp,%r12,8)
	je	.LBB4_40
	movl	4(%rbp,%r12,8), %r13d
	imulq	8(%rcx), %r13
	addq	16(%rcx), %r13
	jmp	.LBB4_41
.LBB4_56:
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
.LBB4_57:
	.cfi_def_cfa_offset 304
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.15(%rip), %rdx
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB4_58:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB4_60
.LBB4_59:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	160(%rsp), %rcx
.LBB4_60:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.6(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	movq	$0, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.7(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_61:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB4_63
.LBB4_62:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rcx
.LBB4_63:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.2(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	movq	$0, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.4(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_64:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.12(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$98, 24(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.11(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	movq	$0, 104(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	$1, 96(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.14(%rip), %rsi
	leaq	72(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	query_state_iter, .Lfunc_end4-query_state_iter
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
	.ascii	"Attempted to use "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.9, 17

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.10,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.10,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.10:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.10, 93

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.11,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.11:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.9
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.10
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.11, 32

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.12,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.12,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.12:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A, &query_state_iter_sparse::B)>"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.12, 98

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.13,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.13,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.13:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.13, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.14,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.14:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.13
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.14, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.15,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.15:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.13
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000+\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.15, 24

	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits

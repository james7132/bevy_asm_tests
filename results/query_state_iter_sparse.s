	.text
	.file	"query_state_iter_sparse.7ec26db9b3cfc83d-cgu.0"
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
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
	jne	.LBB3_64
	movq	168(%rax), %rsi
	movl	8(%rbp), %edi
	movl	%esi, 8(%rbp)
	cmpq	%rdi, %rsi
	jb	.LBB3_65
	movq	%rax, 168(%rsp)
	movq	152(%rax), %rax
	movq	%rax, 104(%rsp)
	jne	.LBB3_7
.LBB3_3:
	movq	296(%rbp), %rcx
	movq	304(%rbp), %rdx
	movq	168(%rsp), %r8
	movq	264(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB3_33
	testq	%rsi, %rsi
	movq	104(%rsp), %r13
	je	.LBB3_34
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB3_38
	movq	8(%rsi,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	216(%r8), %rax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_35
	jmp	.LBB3_40
.LBB3_7:
	imulq	$152, %rdi, %rax
	movq	104(%rsp), %rcx
	leaq	(%rcx,%rax), %r15
	leaq	312(%rbp), %rcx
	movq	%rcx, 192(%rsp)
	leaq	80(%rbp), %rcx
	movq	%rcx, 112(%rsp)
	leaq	104(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	leaq	112(%rbp), %rdx
	leaq	136(%rbp), %rcx
	movq	%rcx, 136(%rsp)
	leaq	48(%rbp), %rcx
	movq	%rcx, 184(%rsp)
	leaq	72(%rbp), %rcx
	movq	%rcx, 128(%rsp)
	leaq	272(%rbp), %rcx
	movq	%rcx, 160(%rsp)
	leaq	16(%rbp), %rcx
	movq	%rcx, 176(%rsp)
	leaq	40(%rbp), %rcx
	movq	%rcx, 120(%rsp)
	leaq	248(%rbp), %rcx
	movq	%rcx, 152(%rsp)
	imulq	$152, %rsi, %r13
	subq	%rax, %r13
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	%rbp, 200(%rsp)
	movq	%rdx, 144(%rsp)
	jmp	.LBB3_10
.LBB3_8:
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	248(%rbp), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%rbp)
	.p2align	4, 0x90
.LBB3_9:
	addq	$152, %r15
	addq	$-152, %r13
	je	.LBB3_3
.LBB3_10:
	movq	296(%rbp), %rax
	movq	136(%r15), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB3_9
	movq	128(%r15), %r14
	testq	%r14, %r14
	je	.LBB3_9
	shlq	$4, %rax
	cmpq	$0, (%r14,%rax)
	je	.LBB3_9
	movq	304(%rbp), %rsi
	cmpq	%rsi, %rcx
	jbe	.LBB3_9
	shlq	$4, %rsi
	cmpq	$0, (%r14,%rsi)
	je	.LBB3_9
	movq	%rsi, 216(%rsp)
	movq	96(%r15), %rcx
	movq	8(%r14,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 208(%rsp)
	movq	(%rcx,%rax), %rbp
	leaq	1(%rbp), %rsi
	movq	112(%rsp), %rdi
	movq	%rsi, 224(%rsp)
	callq	*%r8
	movq	%rbp, 8(%rsp)
	movq	48(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB3_58
	movq	%rbp, %r12
	shrq	$5, %r12
	movl	$1, %ebx
	movl	%ebp, %ecx
	shll	%cl, %ebx
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r12,4)
	movq	144(%rsp), %rdi
	movq	224(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbp, 8(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB3_59
	movq	144(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r12,4)
	movq	216(%rsp), %rcx
	leaq	(%r14,%rcx), %rax
	cmpq	$0, (%rax)
	movq	200(%rsp), %rbp
	movq	112(%rsp), %rbx
	je	.LBB3_20
	movq	8(%r14,%rcx), %rax
	shlq	$4, %rax
	movq	208(%rsp), %rcx
	movq	(%rcx,%rax), %r12
	leaq	1(%r12), %rsi
	movq	%rbx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r12, 8(%rsp)
	movq	48(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_58
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	(%rbx), %rcx
	shrq	$5, %r12
	orl	%eax, (%rcx,%r12,4)
.LBB3_20:
	movq	192(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movl	144(%r15), %r12d
	movl	%r12d, %ebx
	shrl	$5, %ebx
	cmpq	64(%rbp), %rbx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	jae	.LBB3_23
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB3_23
	movl	(%rax,%rbx,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_27
.LBB3_23:
	leaq	1(%r12), %rsi
	movq	184(%rsp), %rdi
	callq	*%r8
	movq	%r12, 8(%rsp)
	movq	128(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_61
	movl	$1, %eax
	movl	%r12d, %ecx
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
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	272(%rbp), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%rbp)
.LBB3_27:
	movl	148(%r15), %r12d
	movl	%r12d, %ebx
	shrl	$5, %ebx
	cmpq	32(%rbp), %rbx
	jae	.LBB3_30
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.LBB3_30
	movl	(%rax,%rbx,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_9
.LBB3_30:
	leaq	1(%r12), %rsi
	movq	176(%rsp), %rdi
	callq	*%r8
	movq	%r12, 8(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_62
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	16(%rbp), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%rbp), %rsi
	cmpq	256(%rbp), %rsi
	jne	.LBB3_8
	movq	152(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%rbp), %rsi
	jmp	.LBB3_8
.LBB3_33:
	movq	104(%rsp), %r13
.LBB3_34:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB3_40
.LBB3_35:
	testq	%rsi, %rsi
	je	.LBB3_40
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB3_39
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r8), %rcx
	jmp	.LBB3_40
.LBB3_38:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_35
	jmp	.LBB3_40
.LBB3_39:
	xorl	%ecx, %ecx
.LBB3_40:
	movl	760(%r8), %edx
	movq	272(%rbp), %rsi
	movq	288(%rbp), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %r9
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	jmp	.LBB3_43
	.p2align	4, 0x90
.LBB3_41:
	xorl	%r15d, %r15d
.LBB3_42:
	incq	%r10
	movss	(%r15), %xmm0
	movl	%edx, (%r11)
	addss	(%rbx), %xmm0
	movss	%xmm0, (%rbx)
.LBB3_43:
	cmpq	%r8, %r10
	jne	.LBB3_47
	.p2align	4, 0x90
.LBB3_44:
	cmpq	%rdi, %rsi
	je	.LBB3_57
	movl	(%rsi), %r8d
	addq	$4, %rsi
	imulq	$152, %r8, %r9
	movq	88(%r13,%r9), %r8
	testq	%r8, %r8
	je	.LBB3_44
	movq	72(%r13,%r9), %r9
	xorl	%r10d, %r10d
.LBB3_47:
	movq	%r10, %r11
	shlq	$4, %r11
	movl	(%r9,%r11), %r14d
	cmpq	136(%rax), %r14
	jae	.LBB3_51
	movq	120(%rax), %r15
	movl	$0, %ebx
	testq	%r15, %r15
	je	.LBB3_52
	cmpl	$0, (%r15,%r14,8)
	je	.LBB3_51
	movl	4(%r15,%r14,8), %r11d
	movq	8(%rax), %rbx
	imulq	%r11, %rbx
	addq	16(%rax), %rbx
	shlq	$2, %r11
	addq	72(%rax), %r11
	jmp	.LBB3_52
	.p2align	4, 0x90
.LBB3_51:
	xorl	%ebx, %ebx
.LBB3_52:
	cmpq	136(%rcx), %r14
	jae	.LBB3_41
	movq	120(%rcx), %r12
	movl	$0, %r15d
	testq	%r12, %r12
	je	.LBB3_42
	cmpl	$0, (%r12,%r14,8)
	je	.LBB3_41
	movl	4(%r12,%r14,8), %r15d
	imulq	8(%rcx), %r15
	addq	16(%rcx), %r15
	jmp	.LBB3_42
.LBB3_57:
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
.LBB3_58:
	.cfi_def_cfa_offset 288
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rcx
	jmp	.LBB3_60
.LBB3_59:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rcx
.LBB3_60:
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
.LBB3_61:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rcx
	jmp	.LBB3_63
.LBB3_62:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
.LBB3_63:
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
.LBB3_64:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.11(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<Q,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_65:
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/381bfbb/crates/bevy_ecs/src/query/state.rs"
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

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

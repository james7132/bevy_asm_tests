	.text
	.file	"query_state_for_each_sparse.604ae688cdd631f7-cgu.0"
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
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
	jne	.LBB3_55
	movq	168(%rax), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_54
	movq	%rax, 168(%rsp)
	movq	152(%rax), %rax
	movq	%rax, 104(%rsp)
	jne	.LBB3_3
.LBB3_36:
	movq	296(%r14), %rcx
	movq	304(%r14), %rdx
	movq	168(%rsp), %r8
	movq	264(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB3_37
	testq	%rsi, %rsi
	movq	104(%rsp), %rbp
	je	.LBB3_42
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB3_40
	movq	8(%rsi,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	216(%r8), %rax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_43
	jmp	.LBB3_47
.LBB3_3:
	imulq	$152, %rdi, %rax
	movq	104(%rsp), %rcx
	leaq	(%rcx,%rax), %r15
	leaq	312(%r14), %rcx
	movq	%rcx, 192(%rsp)
	leaq	80(%r14), %rcx
	movq	%rcx, 112(%rsp)
	leaq	104(%r14), %rcx
	movq	%rcx, 48(%rsp)
	leaq	112(%r14), %rdx
	leaq	136(%r14), %rcx
	movq	%rcx, 136(%rsp)
	leaq	48(%r14), %rcx
	movq	%rcx, 184(%rsp)
	leaq	72(%r14), %rcx
	movq	%rcx, 128(%rsp)
	leaq	272(%r14), %rcx
	movq	%rcx, 160(%rsp)
	leaq	16(%r14), %rcx
	movq	%rcx, 176(%rsp)
	leaq	40(%r14), %rcx
	movq	%rcx, 120(%rsp)
	leaq	248(%r14), %rcx
	movq	%rcx, 152(%rsp)
	imulq	$152, %rsi, %r13
	subq	%rax, %r13
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	%r14, 200(%rsp)
	movq	%rdx, 144(%rsp)
	jmp	.LBB3_4
.LBB3_34:
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	248(%r14), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r14)
	.p2align	4, 0x90
.LBB3_35:
	addq	$152, %r15
	addq	$-152, %r13
	je	.LBB3_36
.LBB3_4:
	movq	296(%r14), %rax
	movq	136(%r15), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB3_35
	movq	128(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB3_35
	shlq	$4, %rax
	cmpq	$0, (%rbp,%rax)
	je	.LBB3_35
	movq	304(%r14), %rsi
	cmpq	%rsi, %rcx
	jbe	.LBB3_35
	shlq	$4, %rsi
	cmpq	$0, (%rbp,%rsi)
	je	.LBB3_35
	movq	%rsi, 216(%rsp)
	movq	96(%r15), %rcx
	movq	8(%rbp,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 208(%rsp)
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
	movq	112(%rsp), %rdi
	movq	%rsi, 224(%rsp)
	callq	*%r8
	movq	%r14, 8(%rsp)
	movq	48(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_10
	movq	%r14, %r12
	shrq	$5, %r12
	movl	$1, %ebx
	movl	%r14d, %ecx
	shll	%cl, %ebx
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r12,4)
	movq	144(%rsp), %rdi
	movq	224(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r14, 8(%rsp)
	movq	136(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_14
	movq	144(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r12,4)
	movq	216(%rsp), %rcx
	leaq	(%rcx,%rbp), %rax
	cmpq	$0, (%rax)
	movq	112(%rsp), %rbx
	je	.LBB3_18
	movq	8(%rbp,%rcx), %rax
	shlq	$4, %rax
	movq	208(%rsp), %rcx
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
	movq	%rbx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r14, 8(%rsp)
	movq	48(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB3_10
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%rbx), %rcx
	shrq	$5, %r14
	orl	%eax, (%rcx,%r14,4)
.LBB3_18:
	movq	192(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movl	144(%r15), %r12d
	movl	%r12d, %ebx
	shrl	$5, %ebx
	movq	200(%rsp), %r14
	cmpq	64(%r14), %rbx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	jae	.LBB3_21
	movq	48(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_21
	movl	(%rax,%rbx,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_27
.LBB3_21:
	leaq	1(%r12), %rsi
	movq	184(%rsp), %rdi
	callq	*%r8
	movq	%r12, 8(%rsp)
	movq	128(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_22
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	48(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	288(%r14), %rsi
	cmpq	280(%r14), %rsi
	jne	.LBB3_26
	movq	160(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%r14), %rsi
.LBB3_26:
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r8
	movq	272(%r14), %rax
	movl	%r12d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r14)
.LBB3_27:
	movl	148(%r15), %r12d
	movl	%r12d, %ebx
	shrl	$5, %ebx
	cmpq	32(%r14), %rbx
	jae	.LBB3_30
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_30
	movl	(%rax,%rbx,4), %eax
	btl	%r12d, %eax
	jb	.LBB3_35
.LBB3_30:
	leaq	1(%r12), %rsi
	movq	176(%rsp), %rdi
	callq	*%r8
	movq	%r12, 8(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r12, (%rax)
	jbe	.LBB3_31
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movq	16(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r14), %rsi
	cmpq	256(%r14), %rsi
	jne	.LBB3_34
	movq	152(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%r14), %rsi
	jmp	.LBB3_34
.LBB3_37:
	movq	104(%rsp), %rbp
.LBB3_42:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB3_47
.LBB3_43:
	testq	%rsi, %rsi
	je	.LBB3_47
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB3_45
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r8), %rcx
	jmp	.LBB3_47
.LBB3_40:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_43
	jmp	.LBB3_47
.LBB3_45:
	xorl	%ecx, %ecx
.LBB3_47:
	movq	288(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB3_53
	movl	760(%r8), %edx
	movq	272(%r14), %rsi
	leaq	(%rsi,%rdi,4), %rdi
	jmp	.LBB3_50
	.p2align	4, 0x90
.LBB3_49:
	addq	$4, %rsi
	cmpq	%rdi, %rsi
	je	.LBB3_53
.LBB3_50:
	movl	(%rsi), %r8d
	imulq	$152, %r8, %r9
	movq	88(%rbp,%r9), %r8
	testq	%r8, %r8
	je	.LBB3_49
	movq	72(%rbp,%r9), %r9
	.p2align	4, 0x90
.LBB3_52:
	movl	(%r9), %r10d
	movq	120(%rax), %r11
	movl	4(%r11,%r10,8), %r11d
	movq	8(%rax), %rbx
	imulq	%r11, %rbx
	movq	16(%rax), %r14
	movq	72(%rax), %r15
	movq	16(%rcx), %r12
	movq	120(%rcx), %r13
	movl	4(%r13,%r10,8), %r10d
	imulq	8(%rcx), %r10
	movss	(%r12,%r10), %xmm0
	movl	%edx, (%r15,%r11,4)
	addss	(%r14,%rbx), %xmm0
	movss	%xmm0, (%r14,%rbx)
	addq	$16, %r9
	decq	%r8
	jne	.LBB3_52
	jmp	.LBB3_49
.LBB3_53:
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
.LBB3_10:
	.cfi_def_cfa_offset 288
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rcx
	jmp	.LBB3_11
.LBB3_14:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rcx
.LBB3_11:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_22:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rcx
	jmp	.LBB3_23
.LBB3_31:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
.LBB3_23:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_55:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<Q,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_54:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
	ud2
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
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5:
	.ascii	"insert at index "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5, 16

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6, 32

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.8,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/89d652b/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8, 97

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8
	.asciz	"a\000\000\000\000\000\000\000\336\000\000\000%\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8
	.asciz	"a\000\000\000\000\000\000\000\331\000\000\000\016\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10, 24

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

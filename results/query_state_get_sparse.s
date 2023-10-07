	.text
	.file	"query_state_get_sparse.5b125cb0c1a00837-cgu.0"
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
	subq	$264, %rsp
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, 132(%rsp)
	movq	%rsi, 208(%rsp)
	movq	(%rdi), %rax
	cmpq	752(%rcx), %rax
	jne	.LBB4_68
	movq	%rdi, %r12
	movq	%rcx, 152(%rsp)
	movq	168(%rcx), %rsi
	movq	8(%rdi), %rbp
	movq	%rsi, 8(%rdi)
	cmpq	%rsi, %rbp
	jae	.LBB4_29
	leaq	80(%r12), %rdx
	leaq	104(%r12), %rax
	movq	%rax, 120(%rsp)
	leaq	112(%r12), %r8
	leaq	136(%r12), %rax
	movq	%rax, 160(%rsp)
	leaq	312(%r12), %rax
	movq	%rax, 232(%rsp)
	leaq	48(%r12), %rax
	movq	%rax, 224(%rsp)
	leaq	72(%r12), %rax
	movq	%rax, 144(%rsp)
	leaq	272(%r12), %rax
	movq	%rax, 200(%rsp)
	leaq	16(%r12), %rax
	movq	%rax, 216(%rsp)
	leaq	40(%r12), %rax
	movq	%rax, 136(%rsp)
	leaq	248(%r12), %rax
	movq	%rax, 192(%rsp)
	movq	152(%rsp), %rax
	movq	152(%rax), %r9
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	%r12, 240(%rsp)
	movq	%rsi, 168(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%r8, 176(%rsp)
	movq	%r9, 8(%rsp)
	jmp	.LBB4_5
.LBB4_3:
	movq	112(%rsp), %rdx
	movq	8(%rsp), %r9
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	248(%r12), %rax
	movl	%ebx, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r12)
	movq	168(%rsp), %rsi
	.p2align	4, 0x90
.LBB4_4:
	incq	%rbp
	cmpq	%rbp, %rsi
	je	.LBB4_29
.LBB4_5:
	movl	%ebp, %edi
	cmpq	%rsi, %rdi
	jae	.LBB4_61
	imulq	$152, %rdi, %rdi
	movq	296(%r12), %rax
	movq	136(%r9,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB4_4
	movq	128(%r9,%rdi), %r13
	testq	%r13, %r13
	je	.LBB4_4
	shlq	$4, %rax
	cmpq	$0, (%r13,%rax)
	je	.LBB4_4
	movq	304(%r12), %r15
	cmpq	%r15, %rcx
	jbe	.LBB4_4
	shlq	$4, %r15
	cmpq	$0, (%r13,%r15)
	je	.LBB4_4
	movq	%rdi, 184(%rsp)
	movq	96(%r9,%rdi), %rcx
	movq	8(%r13,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 248(%rsp)
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
	movq	%rdx, %rdi
	movq	%rsi, 256(%rsp)
	callq	*%r10
	movq	%r14, 96(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB4_62
	movq	%r14, %rbx
	shrq	$5, %rbx
	movl	$1, %r12d
	movl	%r14d, %ecx
	shll	%cl, %r12d
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	orl	%r12d, (%rax,%rbx,4)
	movq	176(%rsp), %rdi
	movq	256(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r14, 96(%rsp)
	movq	160(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB4_63
	movq	176(%rsp), %rax
	movq	(%rax), %rax
	orl	%r12d, (%rax,%rbx,4)
	leaq	(%r15,%r13), %rax
	cmpq	$0, (%rax)
	movq	240(%rsp), %r12
	movq	112(%rsp), %rcx
	movq	8(%rsp), %rax
	je	.LBB4_16
	movq	8(%r13,%r15), %rax
	shlq	$4, %rax
	movq	248(%rsp), %rdx
	movq	(%rdx,%rax), %rbx
	leaq	1(%rbx), %rsi
	movq	%rcx, %rdi
	movq	%rcx, %r14
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbx, 96(%rsp)
	movq	120(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_62
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	(%r14), %rcx
	shrq	$5, %rbx
	orl	%eax, (%rcx,%rbx,4)
	movq	%r14, %rcx
	movq	8(%rsp), %rax
.LBB4_16:
	movq	184(%rsp), %rbx
	leaq	(%rax,%rbx), %rsi
	movq	232(%rsp), %rdi
	movq	%rcx, %rdx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movq	8(%rsp), %r9
	movl	144(%r9,%rbx), %ebx
	movl	%ebx, %r14d
	shrl	$5, %r14d
	cmpq	64(%r12), %r14
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	jae	.LBB4_19
	movq	48(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_19
	movl	(%rax,%r14,4), %eax
	btl	%ebx, %eax
	jb	.LBB4_23
.LBB4_19:
	leaq	1(%rbx), %rsi
	movq	224(%rsp), %rdi
	callq	*%r10
	movq	%rbx, 96(%rsp)
	movq	144(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_65
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	48(%r12), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	288(%r12), %rsi
	cmpq	280(%r12), %rsi
	jne	.LBB4_22
	movq	200(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%r12), %rsi
.LBB4_22:
	movq	8(%rsp), %r9
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r10
	movq	272(%r12), %rax
	movl	%ebx, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r12)
.LBB4_23:
	movq	184(%rsp), %rax
	movl	148(%r9,%rax), %ebx
	movl	%ebx, %r14d
	shrl	$5, %r14d
	cmpq	32(%r12), %r14
	movq	168(%rsp), %rsi
	movq	112(%rsp), %rdx
	jae	.LBB4_26
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_26
	movl	(%rax,%r14,4), %eax
	btl	%ebx, %eax
	jb	.LBB4_4
.LBB4_26:
	leaq	1(%rbx), %rsi
	movq	216(%rsp), %rdi
	callq	*%r10
	movq	%rbx, 96(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_66
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	16(%r12), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	264(%r12), %rsi
	cmpq	256(%r12), %rsi
	jne	.LBB4_3
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%r12), %rsi
	jmp	.LBB4_3
.LBB4_29:
	movq	152(%rsp), %rbx
	movl	760(%rbx), %eax
	movl	764(%rbx), %ecx
	movl	132(%rsp), %edx
	cmpq	%rdx, 16(%rbx)
	movq	208(%rsp), %r11
	jbe	.LBB4_39
	movq	(%rbx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%r11d, (%rsi,%rdi,4)
	jne	.LBB4_39
	movl	4(%rsi,%rdi,4), %esi
	movl	$4294967295, %edi
	cmpq	%rdi, %rsi
	je	.LBB4_39
	movl	%esi, %edi
	shrl	$5, %edi
	cmpq	64(%r12), %rdi
	jae	.LBB4_42
	movq	48(%r12), %r8
	testq	%r8, %r8
	je	.LBB4_42
	movl	(%r8,%rdi,4), %edi
	btl	%esi, %edi
	jae	.LBB4_42
	movq	296(%r12), %r8
	movq	304(%r12), %rsi
	movq	264(%rbx), %rdi
	movq	280(%rbx), %r10
	xorl	%r9d, %r9d
	cmpq	%r8, %r10
	jbe	.LBB4_44
	testq	%rdi, %rdi
	je	.LBB4_44
	shlq	$4, %r8
	cmpq	$0, (%rdi,%r8)
	je	.LBB4_43
	movq	8(%rdi,%r8), %r8
	leaq	(%r8,%r8,8), %r9
	shlq	$4, %r9
	addq	216(%rbx), %r9
	jmp	.LBB4_44
.LBB4_39:
	shlq	$32, %r11
	orq	$1, %r11
.LBB4_40:
	xorl	%esi, %esi
	movq	%rdx, %rdi
.LBB4_41:
	movq	%rsi, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%eax, 44(%rsp)
	movq	%r9, 48(%rsp)
	leaq	16(%rsp), %rax
	#APP
	#NO_APP
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
.LBB4_42:
	.cfi_def_cfa_offset 320
	shlq	$32, %r11
	jmp	.LBB4_40
.LBB4_43:
	xorl	%r9d, %r9d
.LBB4_44:
	xorl	%r8d, %r8d
	cmpq	%rsi, %r10
	jbe	.LBB4_49
	testq	%rdi, %rdi
	je	.LBB4_49
	shlq	$4, %rsi
	cmpq	$0, (%rdi,%rsi)
	je	.LBB4_48
	movq	8(%rdi,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %r8
	shlq	$4, %r8
	addq	216(%rbx), %r8
	jmp	.LBB4_49
.LBB4_48:
	xorl	%r8d, %r8d
.LBB4_49:
	xorl	%esi, %esi
	cmpq	%rdx, 136(%r9)
	jbe	.LBB4_55
	movq	120(%r9), %r10
	testq	%r10, %r10
	je	.LBB4_56
	cmpl	$0, (%r10,%rdx,8)
	je	.LBB4_54
	movl	4(%r10,%rdx,8), %edi
	movq	8(%r9), %rsi
	imulq	%rdi, %rsi
	addq	16(%r9), %rsi
	shlq	$2, %rdi
	movq	48(%r9), %r11
	addq	%rdi, %r11
	addq	72(%r9), %rdi
	jmp	.LBB4_56
.LBB4_54:
	xorl	%esi, %esi
.LBB4_55:
.LBB4_56:
	xorl	%r9d, %r9d
	cmpq	%rdx, 136(%r8)
	jbe	.LBB4_41
	movq	120(%r8), %r10
	testq	%r10, %r10
	je	.LBB4_41
	cmpl	$0, (%r10,%rdx,8)
	je	.LBB4_60
	movl	4(%r10,%rdx,8), %r9d
	imulq	8(%r8), %r9
	addq	16(%r8), %r9
	jmp	.LBB4_41
.LBB4_60:
	xorl	%r9d, %r9d
	jmp	.LBB4_41
.LBB4_61:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.14(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB4_62:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB4_64
.LBB4_63:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	160(%rsp), %rcx
.LBB4_64:
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_65:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB4_67
.LBB4_66:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rcx
.LBB4_67:
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.2(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.4(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_68:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.11(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$96, 72(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 104(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.13(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	query_state_get, .Lfunc_end4-query_state_get
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
	.ascii	"Attempted to use "
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8, 17

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.9,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.9:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9, 93

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.10:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10, 32

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.11,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.11,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.11:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A, &query_state_get_sparse::B)>"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.11, 96

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.12,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.12,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.12:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.12, 97

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.13,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.13:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.12
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.13, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.14,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.14:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.12
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000+\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.14, 24

	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"query_state_get.6c02b58474821a84-cgu.0"
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

	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
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
	movq	%rsi, 200(%rsp)
	movq	(%rdi), %rax
	cmpq	752(%rcx), %rax
	jne	.LBB4_1
	movq	%rdi, %r12
	movq	%rcx, 152(%rsp)
	movq	168(%rcx), %rbp
	movq	8(%rdi), %r15
	movq	%rbp, 8(%rdi)
	cmpq	%rbp, %r15
	jae	.LBB4_37
	leaq	80(%r12), %rdx
	leaq	104(%r12), %rax
	movq	%rax, 120(%rsp)
	leaq	112(%r12), %rsi
	leaq	136(%r12), %rax
	movq	%rax, 160(%rsp)
	leaq	312(%r12), %rax
	movq	%rax, 224(%rsp)
	leaq	48(%r12), %rax
	movq	%rax, 216(%rsp)
	leaq	72(%r12), %rax
	movq	%rax, 144(%rsp)
	leaq	272(%r12), %rax
	movq	%rax, 192(%rsp)
	leaq	16(%r12), %rax
	movq	%rax, 208(%rsp)
	leaq	40(%r12), %rax
	movq	%rax, 136(%rsp)
	leaq	248(%r12), %rax
	movq	%rax, 184(%rsp)
	movq	152(%rsp), %rax
	movq	152(%rax), %r8
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r9
	movq	%r12, 240(%rsp)
	movq	%rbp, 232(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rsi, 168(%rsp)
	movq	%r8, 8(%rsp)
	jmp	.LBB4_4
.LBB4_35:
	movq	112(%rsp), %rdx
	movq	8(%rsp), %r8
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r9
	movq	248(%r12), %rax
	movl	%ebx, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r12)
	.p2align	4, 0x90
.LBB4_36:
	incq	%r15
	cmpq	%r15, %rbp
	je	.LBB4_37
.LBB4_4:
	movl	%r15d, %edi
	cmpq	%rbp, %rdi
	jae	.LBB4_47
	imulq	$152, %rdi, %rdi
	movq	296(%r12), %rax
	movq	136(%r8,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB4_36
	movq	128(%r8,%rdi), %r13
	testq	%r13, %r13
	je	.LBB4_36
	shlq	$4, %rax
	cmpq	$0, (%r13,%rax)
	je	.LBB4_36
	movq	304(%r12), %r14
	cmpq	%r14, %rcx
	jbe	.LBB4_36
	shlq	$4, %r14
	cmpq	$0, (%r13,%r14)
	je	.LBB4_36
	movq	%rdi, 176(%rsp)
	movq	96(%r8,%rdi), %rcx
	movq	8(%r13,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 248(%rsp)
	movq	(%rcx,%rax), %rbp
	leaq	1(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, 256(%rsp)
	callq	*%r9
	movq	%rbp, 96(%rsp)
	movq	120(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB4_11
	movq	%rbp, %rbx
	shrq	$5, %rbx
	movl	$1, %r12d
	movl	%ebp, %ecx
	shll	%cl, %r12d
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	orl	%r12d, (%rax,%rbx,4)
	movq	168(%rsp), %rdi
	movq	256(%rsp), %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%rbp, 96(%rsp)
	movq	160(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB4_15
	movq	168(%rsp), %rax
	movq	(%rax), %rax
	orl	%r12d, (%rax,%rbx,4)
	leaq	(%r14,%r13), %rax
	cmpq	$0, (%rax)
	movq	240(%rsp), %r12
	movq	232(%rsp), %rbp
	movq	112(%rsp), %rcx
	movq	8(%rsp), %rax
	je	.LBB4_19
	movq	8(%r13,%r14), %rax
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
	jbe	.LBB4_11
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	(%r14), %rcx
	shrq	$5, %rbx
	orl	%eax, (%rcx,%rbx,4)
	movq	%r14, %rcx
	movq	8(%rsp), %rax
.LBB4_19:
	movq	176(%rsp), %rbx
	leaq	(%rax,%rbx), %rsi
	movq	224(%rsp), %rdi
	movq	%rcx, %rdx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
	movq	8(%rsp), %r8
	movl	144(%r8,%rbx), %ebx
	movl	%ebx, %r14d
	shrl	$5, %r14d
	cmpq	64(%r12), %r14
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r9
	jae	.LBB4_27
	movq	48(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_27
	movl	(%rax,%r14,4), %eax
	btl	%ebx, %eax
	jb	.LBB4_22
.LBB4_27:
	leaq	1(%rbx), %rsi
	movq	216(%rsp), %rdi
	callq	*%r9
	movq	%rbx, 96(%rsp)
	movq	144(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_28
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	48(%r12), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	288(%r12), %rsi
	cmpq	280(%r12), %rsi
	jne	.LBB4_32
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	288(%r12), %rsi
.LBB4_32:
	movq	8(%rsp), %r8
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r9
	movq	272(%r12), %rax
	movl	%ebx, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r12)
.LBB4_22:
	movq	176(%rsp), %rax
	movl	148(%r8,%rax), %ebx
	movl	%ebx, %r14d
	shrl	$5, %r14d
	cmpq	32(%r12), %r14
	movq	112(%rsp), %rdx
	jae	.LBB4_25
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_25
	movl	(%rax,%r14,4), %eax
	btl	%ebx, %eax
	jb	.LBB4_36
.LBB4_25:
	leaq	1(%rbx), %rsi
	movq	208(%rsp), %rdi
	callq	*%r9
	movq	%rbx, 96(%rsp)
	movq	136(%rsp), %rax
	cmpq	%rbx, (%rax)
	jbe	.LBB4_26
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movq	16(%r12), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	264(%r12), %rsi
	cmpq	256(%r12), %rsi
	jne	.LBB4_35
	movq	184(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	264(%r12), %rsi
	jmp	.LBB4_35
.LBB4_37:
	movq	152(%rsp), %rbx
	movl	760(%rbx), %eax
	movl	764(%rbx), %ecx
	movl	132(%rsp), %edx
	cmpq	%rdx, 16(%rbx)
	movq	200(%rsp), %r11
	jbe	.LBB4_48
	movq	(%rbx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%r11d, (%rsi,%rdi,4)
	jne	.LBB4_48
	movl	4(%rsi,%rdi,4), %r8d
	movl	$4294967295, %r9d
	cmpq	%r9, %r8
	je	.LBB4_48
	movl	%r8d, %r9d
	shrl	$5, %r9d
	cmpq	64(%r12), %r9
	jae	.LBB4_44
	movq	48(%r12), %r10
	testq	%r10, %r10
	je	.LBB4_44
	movl	(%r10,%r9,4), %r9d
	btl	%r8d, %r9d
	jae	.LBB4_44
	leaq	(%rsi,%rdi,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %edi
	leaq	(%rdi,%rdi,8), %r8
	shlq	$3, %r8
	addq	288(%rbx), %r8
	movl	12(%rdx), %esi
	xorl	%edx, %edx
	cmpq	%rdi, 304(%rbx)
	cmovaq	%r8, %rdx
	movq	296(%r12), %rdi
	movq	304(%r12), %r8
	movq	(%rdx), %r9
	movq	32(%rdx), %rdx
	shlq	$4, %rdi
	movq	8(%rdx,%rdi), %rdi
	leaq	(%rdi,%rdi,2), %r10
	shlq	$5, %r10
	shlq	$4, %r8
	movq	8(%rdx,%r8), %rdx
	leaq	(%rdx,%rdx,2), %r8
	shlq	$5, %r8
	shlq	$2, %rsi
	movq	16(%r9,%r10), %rdi
	addq	%rsi, %rdi
	movq	48(%r9,%r10), %r11
	addq	%rsi, %r11
	movq	72(%r9,%r10), %rdx
	addq	%rsi, %rdx
	addq	16(%r9,%r8), %rsi
	jmp	.LBB4_46
.LBB4_48:
	shlq	$32, %r11
	orq	$1, %r11
.LBB4_45:
	xorl	%edi, %edi
.LBB4_46:
	movq	%rdi, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%eax, 44(%rsp)
	movq	%rsi, 48(%rsp)
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
.LBB4_44:
	.cfi_def_cfa_offset 320
	shlq	$32, %r11
	jmp	.LBB4_45
.LBB4_47:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14(%rip), %rdx
	movq	%rbp, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB4_11:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	120(%rsp), %rcx
	jmp	.LBB4_12
.LBB4_15:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	160(%rsp), %rcx
.LBB4_12:
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_28:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB4_29
.LBB4_26:
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rcx
.LBB4_29:
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB4_1:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$82, 72(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 104(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	query_get, .Lfunc_end4-query_get
	.cfi_endproc

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.0,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.0:
	.ascii	"set at index "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0, 13

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.1,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.2:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2, 32

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.3,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3, 93

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.4:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.161d7961c923b4e842c0f6e55225f2ee.5:
	.ascii	"insert at index "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.5, 16

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.6:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6, 32

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.7:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.8,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.8:
	.ascii	"Attempted to use "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8, 17

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.9,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.9:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9, 93

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.10:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10, 32

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.11,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.11:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_get::A, &query_state_get::B)>"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11, 82

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.12,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.12:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12, 97

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.13:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.14:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000+\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14, 24

	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits

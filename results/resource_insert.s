	.text
	.file	"resource_insert.707431fec6b61fd9-cgu.0"
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
	movabsq	$96076792050570582, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	movq	%r14, %rcx
	shlq	$5, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	(%rbx), %rcx
	shlq	$5, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB3_4
.LBB3_2:
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
	je	.LBB4_10
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %r14d
	cmovaeq	%rsi, %r14
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB4_4
.LBB4_2:
	movq	$0, 16(%rsp)
.LBB4_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB4_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB4_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_5:
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
.LBB4_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB4_9
.LBB4_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB4_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end4-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	jb	.LBB5_10
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB5_4
.LBB5_2:
	movq	$0, 16(%rsp)
.LBB5_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB5_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB5_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_5:
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
.LBB5_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB5_9
.LBB5_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB5_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end5:
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end5-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	".text.<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref","ax",@progbits
	.p2align	4, 0x90
	.type	<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref,@function
<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	16(%rdi), %rdx
	testq	%rax, %rax
	jne	.LBB6_2
	movq	8(%rdi), %rax
.LBB6_2:
	retq
.Lfunc_end6:
	.size	<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref, .Lfunc_end6-<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.zero	16,128
	.section	".text.unlikely.hashbrown::raw::RawTable<T,A>::reserve_rehash","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::RawTable<T,A>::reserve_rehash,@function
hashbrown::raw::RawTable<T,A>::reserve_rehash:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	24(%rdi), %rsi
	movq	%rsi, %rax
	incq	%rax
	jne	.LBB7_2
.LBB7_38:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB7_39:
	movq	%rax, %r13
	jmp	.LBB7_40
.LBB7_2:
	movq	%rdi, %rbp
	movq	8(%rdi), %rbx
	leaq	1(%rbx), %r15
	movq	%r15, %rcx
	shrq	$3, %rcx
	movq	%r15, %r12
	andq	$-8, %r12
	subq	%rcx, %r12
	cmpq	$8, %rbx
	cmovbq	%rbx, %r12
	movq	%r12, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jbe	.LBB7_5
	incq	%r12
	cmpq	%r12, %rax
	cmovaq	%rax, %r12
	cmpq	$8, %r12
	jae	.LBB7_12
	movq	%rbp, 16(%rsp)
	xorl	%eax, %eax
	cmpq	$4, %r12
	setae	%al
	leaq	4(,%rax,4), %rdi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB7_16
	jmp	.LBB7_38
.LBB7_5:
	movq	(%rbp), %r13
	movq	%r15, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r15b
	setne	%al
	addq	%rcx, %rax
	je	.LBB7_8
	movdqa	.LCPI7_0(%rip), %xmm0
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB7_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB7_7
.LBB7_8:
	cmpq	$16, %r15
	movq	%rsi, 8(%rsp)
	jae	.LBB7_21
	leaq	16(%r13), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	*memmove@GOTPCREL(%rip)
	testq	%r15, %r15
	jne	.LBB7_22
	xorl	%r12d, %r12d
.LBB7_11:
	movabsq	$-9223372036854775807, %r13
	subq	8(%rsp), %r12
	movq	%r12, 16(%rbp)
.LBB7_40:
	movq	%r13, %rax
	addq	$40, %rsp
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
.LBB7_12:
	.cfi_def_cfa_offset 96
	movq	%r12, %rax
	shrq	$61, %rax
	jne	.LBB7_36
	movq	%rbp, 16(%rsp)
	shlq	$3, %r12
	movl	$1, %edi
	cmpq	$14, %r12
	jb	.LBB7_15
	movabsq	$2635249153387078803, %rcx
	movq	%r12, %rax
	mulq	%rcx
	subq	%rdx, %r12
	shrq	%r12
	addq	%rdx, %r12
	shrq	$2, %r12
	decq	%r12
	bsrq	%r12, %rcx
	notl	%ecx
	movq	$-1, %rdi
	shrq	%cl, %rdi
	incq	%rdi
.LBB7_15:
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jo	.LBB7_38
.LBB7_16:
	movq	%rax, %rbp
	addq	$15, %rbp
	andq	$-16, %rbp
	leaq	16(%rdi), %rdx
	movq	%rbp, %r14
	addq	%rdx, %r14
	jb	.LBB7_38
	movabsq	$-9223372036854775807, %r13
	leaq	-17(%r13), %rax
	cmpq	%rax, %r14
	ja	.LBB7_38
	testq	%r14, %r14
	movq	%rsi, 8(%rsp)
	je	.LBB7_41
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rdi, 24(%rsp)
	movq	%r14, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	24(%rsp), %rdi
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB7_42
	movl	$16, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB7_39
.LBB7_21:
	movdqu	(%r13), %xmm0
	movdqu	%xmm0, (%r13,%r15)
.LBB7_22:
	movabsq	$5871781006564002453, %rax
	leaq	-24(%r13), %rcx
	xorl	%edx, %edx
	jmp	.LBB7_25
	.p2align	4, 0x90
.LBB7_23:
	shrq	$57, %r9
	leaq	-16(%rdx), %rsi
	andq	%rbx, %rsi
	movb	%r9b, (%r13,%rdx)
	movb	%r9b, 16(%rsi,%r13)
.LBB7_24:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB7_11
.LBB7_25:
	cmpb	$-128, (%r13,%rdx)
	jne	.LBB7_24
	leaq	(,%rdx,8), %rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	%r13, %rsi
	subq	%rdi, %rsi
	addq	$-24, %rsi
	movq	%rdx, %rdi
	negq	%rdi
	leaq	(%rdi,%rdi,2), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	.p2align	4, 0x90
.LBB7_27:
	movq	(%rdi), %r9
	imulq	%rax, %r9
	movq	%r9, %r8
	andq	%rbx, %r8
	movdqu	(%r13,%r8), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%r8, %r11
	testl	%r10d, %r10d
	jne	.LBB7_30
	movl	$16, %r14d
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB7_29:
	addq	%r14, %r11
	andq	%rbx, %r11
	movdqu	(%r13,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r14
	testl	%r10d, %r10d
	je	.LBB7_29
.LBB7_30:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%rbx, %r10
	cmpb	$0, (%r13,%r10)
	js	.LBB7_32
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB7_32:
	movq	%rdx, %r11
	subq	%r8, %r11
	movq	%r10, %r14
	subq	%r8, %r14
	xorq	%r11, %r14
	andq	%rbx, %r14
	cmpq	$16, %r14
	jb	.LBB7_23
	leaq	(,%r10,8), %r8
	leaq	(%r8,%r8,2), %r8
	negq	%r8
	addq	%r13, %r8
	addq	$-24, %r8
	movzbl	(%r13,%r10), %r11d
	shrq	$57, %r9
	leaq	-16(%r10), %r14
	andq	%rbx, %r14
	movb	%r9b, (%r13,%r10)
	movb	%r9b, 16(%r14,%r13)
	cmpb	$-1, %r11b
	je	.LBB7_35
	movzbl	(%rsi), %r9d
	movzbl	(%r8), %r10d
	movb	%r10b, (%rsi)
	movb	%r9b, (%r8)
	movzbl	1(%rsi), %r9d
	movzbl	1(%r8), %r10d
	movb	%r10b, 1(%rsi)
	movb	%r9b, 1(%r8)
	movzbl	2(%rsi), %r9d
	movzbl	2(%r8), %r10d
	movb	%r10b, 2(%rsi)
	movb	%r9b, 2(%r8)
	movzbl	3(%rsi), %r9d
	movzbl	3(%r8), %r10d
	movb	%r10b, 3(%rsi)
	movb	%r9b, 3(%r8)
	movzbl	4(%rsi), %r9d
	movzbl	4(%r8), %r10d
	movb	%r10b, 4(%rsi)
	movb	%r9b, 4(%r8)
	movzbl	5(%rsi), %r9d
	movzbl	5(%r8), %r10d
	movb	%r10b, 5(%rsi)
	movb	%r9b, 5(%r8)
	movzbl	6(%rsi), %r9d
	movzbl	6(%r8), %r10d
	movb	%r10b, 6(%rsi)
	movb	%r9b, 6(%r8)
	movzbl	7(%rsi), %r9d
	movzbl	7(%r8), %r10d
	movb	%r10b, 7(%rsi)
	movb	%r9b, 7(%r8)
	movzbl	8(%rsi), %r9d
	movzbl	8(%r8), %r10d
	movb	%r10b, 8(%rsi)
	movb	%r9b, 8(%r8)
	movzbl	9(%rsi), %r9d
	movzbl	9(%r8), %r10d
	movb	%r10b, 9(%rsi)
	movb	%r9b, 9(%r8)
	movzbl	10(%rsi), %r9d
	movzbl	10(%r8), %r10d
	movb	%r10b, 10(%rsi)
	movb	%r9b, 10(%r8)
	movzbl	11(%rsi), %r9d
	movzbl	11(%r8), %r10d
	movb	%r10b, 11(%rsi)
	movb	%r9b, 11(%r8)
	movzbl	12(%rsi), %r9d
	movzbl	12(%r8), %r10d
	movb	%r10b, 12(%rsi)
	movb	%r9b, 12(%r8)
	movzbl	13(%rsi), %r9d
	movzbl	13(%r8), %r10d
	movb	%r10b, 13(%rsi)
	movb	%r9b, 13(%r8)
	movzbl	14(%rsi), %r9d
	movzbl	14(%r8), %r10d
	movb	%r10b, 14(%rsi)
	movb	%r9b, 14(%r8)
	movzbl	15(%rsi), %r9d
	movzbl	15(%r8), %r10d
	movb	%r10b, 15(%rsi)
	movb	%r9b, 15(%r8)
	movzbl	16(%rsi), %r9d
	movzbl	16(%r8), %r10d
	movb	%r10b, 16(%rsi)
	movb	%r9b, 16(%r8)
	movzbl	17(%rsi), %r9d
	movzbl	17(%r8), %r10d
	movb	%r10b, 17(%rsi)
	movb	%r9b, 17(%r8)
	movzbl	18(%rsi), %r9d
	movzbl	18(%r8), %r10d
	movb	%r10b, 18(%rsi)
	movb	%r9b, 18(%r8)
	movzbl	19(%rsi), %r9d
	movzbl	19(%r8), %r10d
	movb	%r10b, 19(%rsi)
	movb	%r9b, 19(%r8)
	movzbl	20(%rsi), %r9d
	movzbl	20(%r8), %r10d
	movb	%r10b, 20(%rsi)
	movb	%r9b, 20(%r8)
	movzbl	21(%rsi), %r9d
	movzbl	21(%r8), %r10d
	movb	%r10b, 21(%rsi)
	movb	%r9b, 21(%r8)
	movzbl	22(%rsi), %r9d
	movzbl	22(%r8), %r10d
	movb	%r10b, 22(%rsi)
	movb	%r9b, 22(%r8)
	movzbl	23(%rsi), %r9d
	movzbl	23(%r8), %r10d
	movb	%r10b, 23(%rsi)
	movb	%r9b, 23(%r8)
	jmp	.LBB7_27
	.p2align	4, 0x90
.LBB7_35:
	leaq	-16(%rdx), %rdi
	andq	%rbx, %rdi
	movb	$-1, (%r13,%rdx)
	movb	$-1, 16(%rdi,%r13)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%r8)
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%r8)
	jmp	.LBB7_24
.LBB7_36:
	movq	%rsi, %r14
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r13
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r13
	jne	.LBB7_40
	movq	%rdx, %rdi
	movq	%rbp, 16(%rsp)
	movq	%r14, %rsi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB7_16
	jmp	.LBB7_38
.LBB7_41:
	movl	$16, %r12d
.LBB7_42:
	leaq	-1(%rdi), %r14
	movq	%rdi, %rax
	shrq	$3, %rax
	andq	$-8, %rdi
	subq	%rax, %rdi
	cmpq	$8, %r14
	cmovbq	%r14, %rdi
	movq	%rdi, 24(%rsp)
	addq	%rbp, %r12
	movq	%r12, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	cmpq	$0, 8(%rsp)
	je	.LBB7_53
	movq	32(%rsp), %rsi
	leaq	-24(%rsi), %rdi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	xorl	%edx, %edx
	movq	8(%rsp), %r8
	jmp	.LBB7_45
	.p2align	4, 0x90
.LBB7_44:
	leal	-1(%r9), %ebp
	andl	%r9d, %ebp
	decq	%r8
	shrq	$57, %r11
	leaq	-16(%rcx), %rax
	andq	%r14, %rax
	movb	%r11b, (%r12,%rcx)
	movb	%r11b, 16(%rax,%r12)
	shlq	$3, %r10
	leaq	(%r10,%r10,2), %rax
	movq	32(%rsp), %r9
	subq	%rax, %r9
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rax
	movq	%r12, %rcx
	subq	%rax, %rcx
	negq	%rax
	movdqu	-24(%r9), %xmm0
	movdqu	%xmm0, -24(%r12,%rax)
	movq	-8(%r9), %rax
	movq	%rax, -8(%rcx)
	movl	%ebp, %r9d
	testq	%r8, %r8
	je	.LBB7_53
.LBB7_45:
	testw	%r9w, %r9w
	jne	.LBB7_48
	.p2align	4, 0x90
.LBB7_46:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB7_46
	notl	%r9d
.LBB7_48:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	movq	%r10, %rax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	(%rdi,%rax,8), %r11
	movabsq	$5871781006564002453, %rax
	imulq	%rax, %r11
	movq	%r11, %rbp
	andq	%r14, %rbp
	movdqu	(%r12,%rbp), %xmm0
	pmovmskb	%xmm0, %ecx
	testl	%ecx, %ecx
	jne	.LBB7_51
	movl	$16, %eax
	.p2align	4, 0x90
.LBB7_50:
	addq	%rax, %rbp
	andq	%r14, %rbp
	movdqu	(%r12,%rbp), %xmm0
	pmovmskb	%xmm0, %ecx
	addq	$16, %rax
	testl	%ecx, %ecx
	je	.LBB7_50
.LBB7_51:
	rep		bsfl	%ecx, %ecx
	addq	%rbp, %rcx
	andq	%r14, %rcx
	cmpb	$0, (%r12,%rcx)
	js	.LBB7_44
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %ecx
	jmp	.LBB7_44
.LBB7_53:
	movq	24(%rsp), %rcx
	subq	8(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	%r12, (%rax)
	movq	%r14, 8(%rax)
	movq	%rcx, 16(%rax)
	testq	%rbx, %rbx
	je	.LBB7_40
	movl	$24, %ecx
	movq	%r15, %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %rbx
	addq	$17, %rbx
	je	.LBB7_40
	movq	32(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB7_40
.Lfunc_end7:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end7-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
	.zero	16,113
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4, 0x90
	.type	resource_insert,@function
resource_insert:
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movabsq	$-3664103959074154920, %r12
	movabsq	$-3441754546502864384, %r13
	movabsq	$-2136646494269056512, %r14
	leaq	64(%rdi), %r15
	movq	120(%rdi), %rax
	movq	128(%rdi), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI8_0(%rip), %xmm4
	pcmpeqd	%xmm1, %xmm1
	movq	%r14, %rdi
.LBB8_1:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm4, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB8_2:
	testw	%r8w, %r8w
	je	.LBB8_3
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r12, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%r13, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB8_2
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_3:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB8_5
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB8_1
.LBB8_16:
	movq	-8(%rax,%r9,8), %rbp
.LBB8_17:
	movss	%xmm0, 12(%rsp)
	movl	760(%rbx), %r14d
	leaq	344(%rbx), %rcx
	movq	392(%rbx), %rdx
	movq	408(%rbx), %r12
	cmpq	%rbp, %r12
	jbe	.LBB8_23
	testq	%rdx, %rdx
	je	.LBB8_23
	movq	%rbp, %rax
	shlq	$4, %rax
	cmpq	$0, (%rdx,%rax)
	je	.LBB8_23
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rcx), %rbx
	cmpq	$0, 32(%rbx)
	jne	.LBB8_22
.LBB8_71:
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::reserve_exact@GOTPCREL(%rip)
	movq	8(%rbx), %rdx
	movq	32(%rbx), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, 32(%rbx)
	imulq	%rdx, %rdi
	addq	16(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movl	%r14d, 88(%rbx)
	jmp	.LBB8_72
.LBB8_23:
	cmpq	%rbp, 80(%rbx)
	jbe	.LBB8_73
	movq	64(%rbx), %r13
	testq	%r13, %r13
	je	.LBB8_73
	movq	%rdx, (%rsp)
	movq	%rcx, 112(%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbp, 120(%rsp)
	imulq	$88, %rbp, %rax
	addq	%rax, %r13
	cmpb	$0, 73(%r13)
	je	.LBB8_74
	movq	24(%r13), %rsi
	movq	32(%r13), %rdx
	movq	64(%r13), %rcx
	leaq	16(%rsp), %rdi
	movl	$1, %ebp
	movl	$1, %r8d
	callq	*bevy_ecs::storage::blob_vec::BlobVec::new@GOTPCREL(%rip)
	movq	40(%r13), %r14
	movq	48(%r13), %r15
	movq	56(%r13), %r13
	testq	%r13, %r13
	je	.LBB8_29
	js	.LBB8_75
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.LBB8_76
.LBB8_29:
	testq	%r14, %r14
	cmovneq	%r14, %r15
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	movq	208(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 208(%rbx)
	movups	16(%rsp), %xmm0
	movdqu	32(%rsp), %xmm1
	movdqu	48(%rsp), %xmm2
	movdqa	%xmm2, 160(%rsp)
	movdqa	%xmm1, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	leaq	176(%rsp), %r15
	movq	%rbp, 176(%rsp)
	movq	%r13, 184(%rsp)
	movq	%r13, 192(%rsp)
	movq	%rax, 200(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)
	movq	360(%rbx), %r13
	movq	120(%rsp), %r14
	cmpq	%r14, %r12
	jbe	.LBB8_31
	movq	(%rsp), %rdi
	jmp	.LBB8_39
.LBB8_31:
	movq	%r14, %rdx
	subq	%r12, %rdx
	incq	%rdx
	movq	400(%rbx), %rax
	subq	%r12, %rax
	cmpq	%rdx, %rax
	movq	(%rsp), %rdi
	jae	.LBB8_34
.Ltmp0:
	leaq	392(%rbx), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp1:
	movq	392(%rbx), %rdi
	movq	408(%rbx), %rax
	jmp	.LBB8_35
.LBB8_34:
	movq	%r12, %rax
	testq	%rdx, %rdx
	je	.LBB8_38
.LBB8_35:
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%rdi, %rcx
	movq	%r14, %rdx
	notq	%rdx
	addq	%r12, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB8_36:
	movq	$0, (%rcx)
	decq	%rsi
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jne	.LBB8_36
	subq	%rsi, %rax
	movq	%rax, %r12
.LBB8_38:
	movq	%r12, 408(%rbx)
.LBB8_39:
	cmpq	%r14, %r12
	jbe	.LBB8_40
	movq	%r14, %rax
	shlq	$4, %rax
	movq	$1, (%rdi,%rax)
	movq	%r13, 8(%rdi,%rax)
	movq	384(%rbx), %rsi
	cmpq	376(%rbx), %rsi
	jne	.LBB8_45
.Ltmp4:
	leaq	368(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp5:
	movq	384(%rbx), %rsi
.LBB8_45:
	movq	368(%rbx), %rax
	movq	%r14, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 384(%rbx)
	movaps	208(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	192(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	128(%rsp), %xmm0
	movdqa	144(%rsp), %xmm1
	movdqa	160(%rsp), %xmm2
	movdqa	176(%rsp), %xmm3
	movdqa	%xmm3, 64(%rsp)
	movdqa	%xmm2, 48(%rsp)
	movdqa	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	360(%rbx), %rsi
	cmpq	352(%rbx), %rsi
	jne	.LBB8_46
.Ltmp12:
	movq	112(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movl	8(%rsp), %r14d
	movq	360(%rbx), %rsi
	jmp	.LBB8_49
.LBB8_46:
	movl	8(%rsp), %r14d
.LBB8_49:
	movq	344(%rbx), %rax
	leaq	(%rsi,%rsi,2), %rcx
	shlq	$5, %rcx
	movaps	16(%rsp), %xmm0
	movdqa	32(%rsp), %xmm1
	movdqa	48(%rsp), %xmm2
	movdqa	64(%rsp), %xmm3
	movdqa	80(%rsp), %xmm4
	movaps	96(%rsp), %xmm5
	movups	%xmm5, 80(%rax,%rcx)
	movdqu	%xmm4, 64(%rax,%rcx)
	movdqu	%xmm3, 48(%rax,%rcx)
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 360(%rbx)
	leaq	(,%r13,2), %rbx
	addq	%r13, %rbx
	shlq	$5, %rbx
	addq	%rax, %rbx
	cmpq	$0, 32(%rbx)
	je	.LBB8_71
.LBB8_22:
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
.LBB8_72:
	movl	%r14d, 92(%rbx)
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
.LBB8_5:
	.cfi_def_cfa_offset 304
	cmpq	$0, 136(%rbx)
	je	.LBB8_6
	movq	80(%rbx), %rbp
	movq	%rbp, %rax
	cmpq	72(%rbx), %rbp
	jne	.LBB8_9
.LBB8_8:
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movss	%xmm0, (%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movss	(%rsp), %xmm0
	movq	80(%rbx), %rax
.LBB8_9:
	movq	64(%rbx), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r12, 16(%rcx,%rdx)
	movq	%r13, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.9(%rip), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movq	$18, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%rbp, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rbx)
	movq	120(%rbx), %rax
	movq	128(%rbx), %rcx
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm1
	pmovmskb	%xmm1, %edx
	testl	%edx, %edx
	jne	.LBB8_12
	movl	$16, %esi
	.p2align	4, 0x90
.LBB8_11:
	addq	%rsi, %r14
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm1
	pmovmskb	%xmm1, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB8_11
.LBB8_12:
	rep		bsfl	%edx, %edx
	addq	%r14, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB8_14
	movdqa	(%rax), %xmm1
	pmovmskb	%xmm1, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB8_14:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$113, (%rax,%rdx)
	movb	$113, 16(%rdi,%rax)
	andb	$1, %sil
	movzbl	%sil, %ecx
	subq	%rcx, 136(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r13, -24(%rax,%rcx,8)
	movq	%r12, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	incq	144(%rbx)
	jmp	.LBB8_17
.LBB8_6:
	leaq	120(%rbx), %rdi
	movss	%xmm0, (%rsp)
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movss	(%rsp), %xmm0
	movq	80(%rbx), %rbp
	movq	%rbp, %rax
	cmpq	72(%rbx), %rbp
	je	.LBB8_8
	jmp	.LBB8_9
.LBB8_40:
.Ltmp2:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.1(%rip), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp3:
	ud2
.LBB8_73:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.2(%rip), %rdi
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.4(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB8_74:
	addq	$40, %r13
	movq	%r13, %rdi
	callq	<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref
	movq	%rax, 128(%rsp)
	movq	%rdx, 136(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 232(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 240(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.7(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.8(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB8_75:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB8_76:
	movl	$1, %edi
	movq	%r13, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.LBB8_50:
.Ltmp14:
	movq	%rax, %rbx
	cmpq	$0, 48(%rsp)
	je	.LBB8_51
	movq	std::panicking::panic_count::GLOBAL_PANIC_COUNT@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	%rax
	testq	%rax, %rax
	je	.LBB8_51
.Ltmp15:
	callq	*std::panicking::panic_count::is_zero_slow_path@GOTPCREL(%rip)
.Ltmp16:
	testb	%al, %al
	je	.LBB8_55
.LBB8_51:
.Ltmp17:
	leaq	16(%rsp), %rdi
	callq	*<bevy_ecs::storage::blob_vec::BlobVec as core::ops::drop::Drop>::drop@GOTPCREL(%rip)
.Ltmp18:
.LBB8_55:
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_68
	leaq	64(%rsp), %r15
	jmp	.LBB8_67
.LBB8_57:
.Ltmp19:
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_60
	movq	64(%rsp), %rdi
	jmp	.LBB8_59
.LBB8_61:
.Ltmp6:
	movq	%rax, %rbx
	cmpq	$0, 160(%rsp)
	je	.LBB8_62
	movq	std::panicking::panic_count::GLOBAL_PANIC_COUNT@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	%rax
	testq	%rax, %rax
	jne	.LBB8_64
.LBB8_62:
.Ltmp9:
	leaq	128(%rsp), %rdi
	callq	*<bevy_ecs::storage::blob_vec::BlobVec as core::ops::drop::Drop>::drop@GOTPCREL(%rip)
.Ltmp10:
.LBB8_66:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_68
.LBB8_67:
	movq	(%r15), %rdi
	movl	$1, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB8_68:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB8_64:
.Ltmp7:
	callq	*std::panicking::panic_count::is_zero_slow_path@GOTPCREL(%rip)
.Ltmp8:
	testb	%al, %al
	jne	.LBB8_62
	jmp	.LBB8_66
.LBB8_69:
.Ltmp11:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_60
	movq	176(%rsp), %rdi
.LBB8_59:
	movl	$1, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB8_60:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
	ud2
.Lfunc_end8:
	.size	resource_insert, .Lfunc_end8-resource_insert
	.cfi_endproc
	.section	.gcc_except_table.resource_insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin0
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin0
	.uleb128 .Ltmp2-.Ltmp13
	.byte	0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp15-.Ltmp3
	.byte	0
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp15
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp9-.Lfunc_begin0
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp11-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp10-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp10
	.byte	0
	.byte	0
	.uleb128 .Ltmp7-.Lfunc_begin0
	.uleb128 .Ltmp8-.Ltmp7
	.uleb128 .Ltmp11-.Lfunc_begin0
	.byte	1
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.0,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.0,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.0, 104

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.1,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.1:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.0
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\024\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.1, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.2,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.2,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.2:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.2, 43

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.3,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.3,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/storage/resource.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.3, 102

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.4,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.4:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.3
	.asciz	"f\000\000\000\000\000\000\0005\001\000\000D\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.4, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.5,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.5,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.5:
	.ascii	"Send + Sync resource "
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.5, 21

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.6,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.6,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.6:
	.ascii	" initialized as non_send. It may have been inserted via World::insert_non_send_resource by accident. Try using World::insert_resource instead."
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.6, 142

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.7,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.7:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.5
	.asciz	"\025\000\000\000\000\000\000"
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"\216\000\000\000\000\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.7, 32

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.8,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.8:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.3
	.asciz	"f\000\000\000\000\000\000\0007\001\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.8, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.9,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.9,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.9:
	.ascii	"resource_insert::A"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.9, 18

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

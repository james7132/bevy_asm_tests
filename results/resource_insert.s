	.text
	.file	"resource_insert.59d4f6c87186d55b-cgu.0"
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
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
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
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
	.section	".text.unlikely.hashbrown::raw::inner::RawTable<T,A>::reserve_rehash","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash,@function
hashbrown::raw::inner::RawTable<T,A>::reserve_rehash:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	24(%rdi), %r15
	movq	%r15, %rax
	incq	%rax
	je	.LBB7_12
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	leaq	1(%rbx), %rbp
	movq	%rbp, %rcx
	shrq	$3, %rcx
	movq	%rbp, %r12
	andq	$-8, %r12
	subq	%rcx, %r12
	cmpq	$8, %rbx
	cmovbq	%rbx, %r12
	movq	%r12, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jbe	.LBB7_29
	incq	%r12
	cmpq	%r12, %rax
	cmovaq	%rax, %r12
	cmpq	$8, %r12
	movq	%r15, (%rsp)
	movq	%rbp, 64(%rsp)
	jae	.LBB7_3
	xorl	%eax, %eax
	cmpq	$4, %r12
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB7_7
.LBB7_29:
	movq	(%r14), %r13
	movq	%rbp, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %bpl
	setne	%al
	addq	%rcx, %rax
	je	.LBB7_32
	movdqa	.LCPI7_0(%rip), %xmm0
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB7_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB7_31
.LBB7_32:
	cmpq	$16, %rbp
	jae	.LBB7_33
	leaq	16(%r13), %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	*memmove@GOTPCREL(%rip)
	testq	%rbp, %rbp
	jne	.LBB7_34
	xorl	%r12d, %r12d
.LBB7_49:
	subq	%r15, %r12
	movq	%r12, 16(%r14)
	jmp	.LBB7_50
.LBB7_3:
	movq	%r12, %rax
	shrq	$61, %rax
	jne	.LBB7_12
	shlq	$3, %r12
	movl	$1, %r13d
	cmpq	$14, %r12
	jb	.LBB7_7
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
	movq	$-1, %r13
	shrq	%cl, %r13
	incq	%r13
.LBB7_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB7_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB7_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB7_12
	testq	%rbp, %rbp
	movq	%r14, 8(%rsp)
	je	.LBB7_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r14
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r14, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB7_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.LBB7_33:
	movdqu	(%r13), %xmm0
	movdqu	%xmm0, (%r13,%rbp)
.LBB7_34:
	leaq	-24(%r13), %rax
	xorl	%ecx, %ecx
	jmp	.LBB7_35
	.p2align	4, 0x90
.LBB7_51:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rbx, %rdx
	movb	%r8b, (%r13,%rcx)
	movb	%r8b, 16(%rdx,%r13)
.LBB7_48:
	leaq	1(%rcx), %rdx
	cmpq	%rbx, %rcx
	movq	%rdx, %rcx
	je	.LBB7_49
.LBB7_35:
	cmpb	$-128, (%r13,%rcx)
	jne	.LBB7_48
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r13, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rsi
	leaq	(%rax,%rsi,8), %rsi
	.p2align	4, 0x90
.LBB7_37:
	movq	(%rsi), %r8
	movq	%rbx, %rdi
	andq	%r8, %rdi
	movdqu	(%r13,%rdi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rdi, %r10
	testl	%r9d, %r9d
	jne	.LBB7_40
	movl	$16, %r11d
	movq	%rdi, %r10
	.p2align	4, 0x90
.LBB7_39:
	addq	%r11, %r10
	andq	%rbx, %r10
	movdqu	(%r13,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB7_39
.LBB7_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%rbx, %r9
	cmpb	$0, (%r13,%r9)
	js	.LBB7_42
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB7_42:
	movq	%rcx, %r10
	subq	%rdi, %r10
	movq	%r9, %r11
	subq	%rdi, %r11
	xorq	%r10, %r11
	andq	%rbx, %r11
	cmpq	$16, %r11
	jb	.LBB7_51
	leaq	(,%r9,8), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	negq	%rdi
	addq	%r13, %rdi
	addq	$-24, %rdi
	movzbl	(%r13,%r9), %r10d
	shrq	$57, %r8
	leaq	-16(%r9), %r11
	andq	%rbx, %r11
	movb	%r8b, (%r13,%r9)
	movb	%r8b, 16(%r11,%r13)
	cmpb	$-1, %r10b
	je	.LBB7_47
	movzbl	(%rdx), %r8d
	movzbl	(%rdi), %r9d
	movb	%r9b, (%rdx)
	movb	%r8b, (%rdi)
	movzbl	1(%rdx), %r8d
	movzbl	1(%rdi), %r9d
	movb	%r9b, 1(%rdx)
	movb	%r8b, 1(%rdi)
	movzbl	2(%rdx), %r8d
	movzbl	2(%rdi), %r9d
	movb	%r9b, 2(%rdx)
	movb	%r8b, 2(%rdi)
	movzbl	3(%rdx), %r8d
	movzbl	3(%rdi), %r9d
	movb	%r9b, 3(%rdx)
	movb	%r8b, 3(%rdi)
	movzbl	4(%rdx), %r8d
	movzbl	4(%rdi), %r9d
	movb	%r9b, 4(%rdx)
	movb	%r8b, 4(%rdi)
	movzbl	5(%rdx), %r8d
	movzbl	5(%rdi), %r9d
	movb	%r9b, 5(%rdx)
	movb	%r8b, 5(%rdi)
	movzbl	6(%rdx), %r8d
	movzbl	6(%rdi), %r9d
	movb	%r9b, 6(%rdx)
	movb	%r8b, 6(%rdi)
	movzbl	7(%rdx), %r8d
	movzbl	7(%rdi), %r9d
	movb	%r9b, 7(%rdx)
	movb	%r8b, 7(%rdi)
	movzbl	8(%rdx), %r8d
	movzbl	8(%rdi), %r9d
	movb	%r9b, 8(%rdx)
	movb	%r8b, 8(%rdi)
	movzbl	9(%rdx), %r8d
	movzbl	9(%rdi), %r9d
	movb	%r9b, 9(%rdx)
	movb	%r8b, 9(%rdi)
	movzbl	10(%rdx), %r8d
	movzbl	10(%rdi), %r9d
	movb	%r9b, 10(%rdx)
	movb	%r8b, 10(%rdi)
	movzbl	11(%rdx), %r8d
	movzbl	11(%rdi), %r9d
	movb	%r9b, 11(%rdx)
	movb	%r8b, 11(%rdi)
	movzbl	12(%rdx), %r8d
	movzbl	12(%rdi), %r9d
	movb	%r9b, 12(%rdx)
	movb	%r8b, 12(%rdi)
	movzbl	13(%rdx), %r8d
	movzbl	13(%rdi), %r9d
	movb	%r9b, 13(%rdx)
	movb	%r8b, 13(%rdi)
	movzbl	14(%rdx), %r8d
	movzbl	14(%rdi), %r9d
	movb	%r9b, 14(%rdx)
	movb	%r8b, 14(%rdi)
	movzbl	15(%rdx), %r8d
	movzbl	15(%rdi), %r9d
	movb	%r9b, 15(%rdx)
	movb	%r8b, 15(%rdi)
	movzbl	16(%rdx), %r8d
	movzbl	16(%rdi), %r9d
	movb	%r9b, 16(%rdx)
	movb	%r8b, 16(%rdi)
	movzbl	17(%rdx), %r8d
	movzbl	17(%rdi), %r9d
	movb	%r9b, 17(%rdx)
	movb	%r8b, 17(%rdi)
	movzbl	18(%rdx), %r8d
	movzbl	18(%rdi), %r9d
	movb	%r9b, 18(%rdx)
	movb	%r8b, 18(%rdi)
	movzbl	19(%rdx), %r8d
	movzbl	19(%rdi), %r9d
	movb	%r9b, 19(%rdx)
	movb	%r8b, 19(%rdi)
	movzbl	20(%rdx), %r8d
	movzbl	20(%rdi), %r9d
	movb	%r9b, 20(%rdx)
	movb	%r8b, 20(%rdi)
	movzbl	21(%rdx), %r8d
	movzbl	21(%rdi), %r9d
	movb	%r9b, 21(%rdx)
	movb	%r8b, 21(%rdi)
	movzbl	22(%rdx), %r8d
	movzbl	22(%rdi), %r9d
	movb	%r9b, 22(%rdx)
	movb	%r8b, 22(%rdi)
	movzbl	23(%rdx), %r8d
	movzbl	23(%rdi), %r9d
	movb	%r9b, 23(%rdx)
	movb	%r8b, 23(%rdi)
	jmp	.LBB7_37
	.p2align	4, 0x90
.LBB7_47:
	leaq	-16(%rcx), %rsi
	andq	%rbx, %rsi
	movb	$-1, (%r13,%rcx)
	movb	$-1, 16(%rsi,%r13)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB7_48
.LBB7_11:
	movl	$16, %r12d
.LBB7_15:
	leaq	-1(%r13), %rbp
	movq	%r13, %rax
	shrq	$3, %rax
	movq	%r13, %r14
	andq	$-8, %r14
	subq	%rax, %r14
	cmpq	$9, %r13
	cmovbq	%rbp, %r14
	addq	%r15, %r12
	movq	%r12, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	8(%rsp), %rax
	movq	(%rax), %rdi
	cmpq	$0, (%rsp)
	je	.LBB7_26
	leaq	-24(%rdi), %rax
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB7_17
	.p2align	4, 0x90
.LBB7_25:
	leal	-1(%r8), %r11d
	andl	%r8d, %r11d
	decq	%rdx
	shrq	$57, %r10
	leaq	-16(%r15), %r8
	andq	%rbp, %r8
	movb	%r10b, (%r12,%r15)
	movb	%r10b, 16(%r8,%r12)
	shlq	$3, %r9
	leaq	(%r9,%r9,2), %r8
	movq	%rdi, %r9
	subq	%r8, %r9
	shlq	$3, %r15
	leaq	(%r15,%r15,2), %r8
	movq	%r12, %r10
	subq	%r8, %r10
	negq	%r8
	movdqu	-24(%r9), %xmm0
	movdqu	%xmm0, -24(%r12,%r8)
	movq	-8(%r9), %r8
	movq	%r8, -8(%r10)
	movl	%r11d, %r8d
	testq	%rdx, %rdx
	je	.LBB7_26
.LBB7_17:
	testw	%r8w, %r8w
	jne	.LBB7_20
	.p2align	4, 0x90
.LBB7_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB7_18
	notl	%r8d
.LBB7_20:
	rep		bsfl	%r8d, %r9d
	addq	%rcx, %r9
	movq	%r9, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movq	(%rax,%r10,8), %r10
	movq	%rbp, %r11
	andq	%r10, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	testl	%r15d, %r15d
	jne	.LBB7_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB7_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB7_22
.LBB7_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB7_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB7_25
.LBB7_26:
	subq	(%rsp), %r14
	movq	8(%rsp), %rax
	movq	%r12, (%rax)
	movq	%rbp, 8(%rax)
	movq	%r14, 16(%rax)
	testq	%rbx, %rbx
	je	.LBB7_50
	movl	$24, %ecx
	movq	64(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %rbx
	addq	$17, %rbx
	je	.LBB7_50
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_50:
	movabsq	$-9223372036854775807, %rax
	addq	$72, %rsp
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
	.cfi_def_cfa_offset 128
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.12(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$1, 24(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.0(%rip), %rax
	movq	%rax, 32(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.14(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.Lfunc_end7:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end7-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
	.zero	16,79
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
	movabsq	$-503811413839290855, %r14
	movabsq	$-6945262779865936064, %r12
	movq	%r12, %r15
	addq	$64, %rdi
	movq	120(%rbx), %rax
	movq	128(%rbx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI8_0(%rip), %xmm4
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %r8
.LBB8_1:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm4, %xmm3
	pmovmskb	%xmm3, %r9d
	.p2align	4, 0x90
.LBB8_2:
	testw	%r9w, %r9w
	je	.LBB8_4
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%r14, %r9
	movq	(%rdx,%r10,8), %r13
	xorq	%r12, %r13
	orq	%r9, %r13
	movl	%r11d, %r9d
	jne	.LBB8_2
	jmp	.LBB8_6
	.p2align	4, 0x90
.LBB8_4:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	jne	.LBB8_43
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB8_1
.LBB8_6:
	movq	-8(%rax,%r10,8), %r13
.LBB8_7:
	movd	%xmm0, 12(%rsp)
	movl	760(%rbx), %ebp
	leaq	344(%rbx), %rcx
	movq	392(%rbx), %rdx
	movq	408(%rbx), %r12
	cmpq	%r13, %r12
	jbe	.LBB8_14
	testq	%rdx, %rdx
	je	.LBB8_14
	movq	%r13, %rax
	shlq	$4, %rax
	cmpq	$0, (%rdx,%rax)
	je	.LBB8_14
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rcx), %rbx
	cmpq	$0, 32(%rbx)
	jne	.LBB8_41
.LBB8_11:
	cmpq	$0, 24(%rbx)
	je	.LBB8_53
	xorl	%edi, %edi
.LBB8_13:
	leaq	1(%rdi), %rax
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rdx
	imulq	%rdx, %rdi
	addq	16(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movl	%ebp, 88(%rbx)
	jmp	.LBB8_42
.LBB8_14:
	cmpq	%r13, 80(%rbx)
	jbe	.LBB8_61
	movq	64(%rbx), %r14
	testq	%r14, %r14
	je	.LBB8_61
	movq	%rdx, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movl	%ebp, 8(%rsp)
	movq	%r13, (%rsp)
	imulq	$88, %r13, %rax
	addq	%rax, %r14
	cmpb	$0, 73(%r14)
	je	.LBB8_62
	movq	24(%r14), %rsi
	movq	32(%r14), %rdx
	movq	64(%r14), %rcx
	leaq	16(%rsp), %rdi
	movl	$1, %ebp
	movl	$1, %r8d
	callq	*bevy_ecs::storage::blob_vec::BlobVec::new@GOTPCREL(%rip)
	movq	40(%r14), %r15
	movq	56(%r14), %r13
	testq	%r15, %r15
	jne	.LBB8_19
	movq	48(%r14), %r15
.LBB8_19:
	testq	%r13, %r13
	je	.LBB8_22
	js	.LBB8_63
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$1, %esi
	movq	%r13, %rdi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.LBB8_64
.LBB8_22:
	leaq	152(%rbx), %r14
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*memcpy@GOTPCREL(%rip)
.Ltmp0:
	movq	%r14, %rdi
	callq	*bevy_ecs::archetype::Archetypes::new_archetype_component_id@GOTPCREL(%rip)
.Ltmp1:
	movdqu	16(%rsp), %xmm0
	movdqu	32(%rsp), %xmm1
	movdqu	48(%rsp), %xmm2
	movdqa	%xmm2, 160(%rsp)
	movdqa	%xmm1, 144(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movq	%rbp, 176(%rsp)
	movq	%r13, 184(%rsp)
	movq	%r13, 192(%rsp)
	movq	%rax, 200(%rsp)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	360(%rbx), %r14
	movq	(%rsp), %r15
	cmpq	%r15, %r12
	movq	120(%rsp), %rdi
	ja	.LBB8_32
	movq	%r15, %rdx
	subq	%r12, %rdx
	incq	%rdx
	movq	400(%rbx), %rax
	subq	%r12, %rax
	cmpq	%rdx, %rax
	jae	.LBB8_27
.Ltmp3:
	leaq	392(%rbx), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp4:
	movq	392(%rbx), %rdi
	movq	408(%rbx), %rax
	jmp	.LBB8_28
.LBB8_27:
	movq	%r12, %rax
	testq	%rdx, %rdx
	je	.LBB8_31
.LBB8_28:
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%rdi, %rcx
	movq	%r15, %rdx
	notq	%rdx
	addq	%r12, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB8_29:
	movq	$0, (%rcx)
	decq	%rsi
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jne	.LBB8_29
	subq	%rsi, %rax
	movq	%rax, %r12
.LBB8_31:
	movq	%r12, 408(%rbx)
.LBB8_32:
	cmpq	%r15, %r12
	jbe	.LBB8_59
	movq	%r15, %rax
	shlq	$4, %rax
	movq	$1, (%rdi,%rax)
	movq	%r14, 8(%rdi,%rax)
	movq	384(%rbx), %rsi
	cmpq	376(%rbx), %rsi
	jne	.LBB8_36
.Ltmp7:
	leaq	368(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	384(%rbx), %rsi
.LBB8_36:
	movq	368(%rbx), %rax
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 384(%rbx)
	movaps	208(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	192(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	144(%rsp), %xmm1
	movdqa	160(%rsp), %xmm2
	movdqa	176(%rsp), %xmm3
	movdqa	%xmm3, 64(%rsp)
	movdqa	%xmm2, 48(%rsp)
	movdqa	%xmm1, 32(%rsp)
	movdqa	%xmm0, 16(%rsp)
	movq	360(%rbx), %rsi
	cmpq	352(%rbx), %rsi
	jne	.LBB8_39
.Ltmp15:
	movq	112(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp16:
	movl	8(%rsp), %ebp
	movq	360(%rbx), %rsi
	jmp	.LBB8_40
.LBB8_39:
	movl	8(%rsp), %ebp
.LBB8_40:
	movq	344(%rbx), %rax
	leaq	(%rsi,%rsi,2), %rcx
	shlq	$5, %rcx
	movdqa	16(%rsp), %xmm0
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
	movdqu	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 360(%rbx)
	leaq	(%r14,%r14,2), %rbx
	shlq	$5, %rbx
	addq	%rax, %rbx
	cmpq	$0, 32(%rbx)
	je	.LBB8_11
.LBB8_41:
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
.LBB8_42:
	movl	%ebp, 92(%rbx)
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
.LBB8_43:
	.cfi_def_cfa_offset 304
	movq	80(%rbx), %r13
	movq	%r13, %rdx
	cmpq	72(%rbx), %r13
	jne	.LBB8_45
	movq	%r13, %rsi
	movss	%xmm0, (%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movd	(%rsp), %xmm0
	movq	80(%rbx), %rdx
	movq	120(%rbx), %rax
	movq	128(%rbx), %rcx
.LBB8_45:
	movq	64(%rbx), %rsi
	imulq	$88, %rdx, %rdi
	movq	$1, (%rsi,%rdi)
	movq	%r14, 16(%rsi,%rdi)
	movq	%r12, 8(%rsi,%rdi)
	movq	$4, 24(%rsi,%rdi)
	movq	$4, 32(%rsi,%rdi)
	movq	$0, 40(%rsi,%rdi)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.10(%rip), %r8
	movq	%r8, 48(%rsi,%rdi)
	movq	$18, 56(%rsi,%rdi)
	movq	$0, 64(%rsi,%rdi)
	movw	$256, 72(%rsi,%rdi)
	movq	%r13, 80(%rsi,%rdi)
	incq	%rdx
	movq	%rdx, 80(%rbx)
	movq	%rcx, %rsi
	andq	%r12, %rsi
	movdqu	(%rax,%rsi), %xmm1
	pmovmskb	%xmm1, %edx
	testl	%edx, %edx
	jne	.LBB8_48
	movl	$16, %edi
	.p2align	4, 0x90
.LBB8_47:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm1
	pmovmskb	%xmm1, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB8_47
.LBB8_48:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB8_50
	movdqa	(%rax), %xmm1
	pmovmskb	%xmm1, %edx
	rep		bsfl	%edx, %edx
.LBB8_50:
	cmpq	$0, 136(%rbx)
	jne	.LBB8_52
	testb	$1, (%rax,%rdx)
	jne	.LBB8_54
.LBB8_52:
	movzbl	(%rax,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 136(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$79, (%rax,%rdx)
	movb	$79, 16(%rsi,%rax)
	incq	144(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r15, -24(%rax,%rcx,8)
	movq	%r14, -16(%rax,%rcx,8)
	movq	%r13, -8(%rax,%rcx,8)
	jmp	.LBB8_7
.LBB8_53:
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::reserve::do_reserve@GOTPCREL(%rip)
	movq	32(%rbx), %rdi
	jmp	.LBB8_13
.LBB8_54:
	movd	%xmm0, (%rsp)
	leaq	120(%rbx), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	120(%rbx), %rax
	movq	128(%rbx), %rcx
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB8_57
	movl	$16, %esi
.LBB8_56:
	addq	%rsi, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB8_56
.LBB8_57:
	movd	(%rsp), %xmm0
	rep		bsfl	%edx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB8_52
	movdqa	(%rax), %xmm1
	pmovmskb	%xmm1, %edx
	rep		bsfl	%edx, %edx
	jmp	.LBB8_52
.LBB8_59:
.Ltmp5:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.2(%rip), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp6:
	ud2
.LBB8_61:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.3(%rip), %rdi
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.5(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB8_62:
	addq	$40, %r14
	movq	%r14, %rdi
	callq	<alloc::borrow::Cow<B> as core::ops::deref::Deref>::deref
	movq	%rax, 128(%rsp)
	movq	%rdx, 136(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 232(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 240(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.8(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	232(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.9(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB8_63:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB8_64:
	movl	$1, %edi
	movq	%r13, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.LBB8_65:
.Ltmp17:
	movq	%rax, %rbx
	cmpq	$0, 48(%rsp)
	je	.LBB8_69
	movq	std::panicking::panic_count::GLOBAL_PANIC_COUNT@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	%rax
	testq	%rax, %rax
	je	.LBB8_69
.Ltmp18:
	callq	*std::panicking::panic_count::is_zero_slow_path@GOTPCREL(%rip)
.Ltmp19:
	testb	%al, %al
	je	.LBB8_70
.LBB8_69:
.Ltmp20:
	leaq	16(%rsp), %rdi
	callq	*<bevy_ecs::storage::blob_vec::BlobVec as core::ops::drop::Drop>::drop@GOTPCREL(%rip)
.Ltmp21:
.LBB8_70:
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_83
	movq	64(%rsp), %rdi
	jmp	.LBB8_81
.LBB8_72:
.Ltmp22:
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_89
	movq	64(%rsp), %rdi
	jmp	.LBB8_88
.LBB8_74:
.Ltmp2:
	movq	%rax, %rbx
	testq	%r13, %r13
	je	.LBB8_83
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	jmp	.LBB8_82
.LBB8_76:
.Ltmp9:
	movq	%rax, %rbx
	cmpq	$0, 160(%rsp)
	je	.LBB8_78
	movq	std::panicking::panic_count::GLOBAL_PANIC_COUNT@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shlq	%rax
	testq	%rax, %rax
	jne	.LBB8_84
.LBB8_78:
.Ltmp12:
	leaq	128(%rsp), %rdi
	callq	*<bevy_ecs::storage::blob_vec::BlobVec as core::ops::drop::Drop>::drop@GOTPCREL(%rip)
.Ltmp13:
.LBB8_79:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_83
	movq	176(%rsp), %rdi
.LBB8_81:
	movl	$1, %edx
.LBB8_82:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB8_83:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB8_84:
.Ltmp10:
	callq	*std::panicking::panic_count::is_zero_slow_path@GOTPCREL(%rip)
.Ltmp11:
	testb	%al, %al
	jne	.LBB8_78
	jmp	.LBB8_79
.LBB8_86:
.Ltmp14:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB8_89
	movq	176(%rsp), %rdi
.LBB8_88:
	movl	$1, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB8_89:
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
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp8-.Ltmp3
	.uleb128 .Ltmp9-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin0
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp17-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp16
	.byte	0
	.byte	0
	.uleb128 .Ltmp5-.Lfunc_begin0
	.uleb128 .Ltmp6-.Ltmp5
	.uleb128 .Ltmp9-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp6
	.byte	0
	.byte	0
	.uleb128 .Ltmp18-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp18
	.uleb128 .Ltmp22-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp12-.Lfunc_begin0
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp13-.Lfunc_begin0
	.uleb128 .Ltmp10-.Ltmp13
	.byte	0
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin0
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp14-.Lfunc_begin0
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
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.0:
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.0, 0

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.1,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.1,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.1:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/94ab84e/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.1, 104

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.2,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.2:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.1
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\024\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.2, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.3,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.3,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.3:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.3, 43

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.4,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.4,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/94ab84e/crates/bevy_ecs/src/storage/resource.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.4, 102

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.5,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.5:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.4
	.asciz	"f\000\000\000\000\000\000\0005\001\000\000D\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.5, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.6,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.6,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.6:
	.ascii	"Send + Sync resource "
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.6, 21

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.7,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.7,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.7:
	.ascii	" initialized as non_send. It may have been inserted via World::insert_non_send_resource by accident. Try using World::insert_resource instead."
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.7, 142

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.8,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.8:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"\025\000\000\000\000\000\000"
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.7
	.asciz	"\216\000\000\000\000\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.8, 32

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.9,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.9:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.4
	.asciz	"f\000\000\000\000\000\000\0007\001\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.9, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.10,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.10,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.10:
	.ascii	"resource_insert::A"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.10, 18

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.11,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.11,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.11:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.11, 28

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.12,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.12:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.11
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.12, 16

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.13,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.13,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.13:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.13, 96

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.14,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.14:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.13
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.14, 24

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

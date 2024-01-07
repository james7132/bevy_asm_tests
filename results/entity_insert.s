	.text
	.file	"entity_insert.6490d81c93f59f5-cgu.0"
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	(%rbx), %rcx
	shlq	$4, %rax
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	(%rbx), %rcx
	shlq	$5, %rax
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
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
	movq	24(%rdi), %rbp
	movq	%rbp, %rax
	incq	%rax
	jne	.LBB5_2
.LBB5_39:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB5_40:
	movq	%rax, %r12
	jmp	.LBB5_41
.LBB5_2:
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	leaq	1(%r14), %r8
	movq	%r8, %rdx
	shrq	$3, %rdx
	movq	%r8, %rcx
	andq	$-8, %rcx
	subq	%rdx, %rcx
	cmpq	$8, %r14
	cmovbq	%r14, %rcx
	movq	%rcx, %rdx
	shrq	%rdx
	cmpq	%rdx, %rax
	jbe	.LBB5_5
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	jae	.LBB5_11
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %rsi
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB5_15
	jmp	.LBB5_39
.LBB5_5:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB5_8
	movdqa	.LCPI5_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB5_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB5_7
.LBB5_8:
	cmpq	$16, %r8
	jae	.LBB5_20
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB5_21
	xorl	%eax, %eax
	jmp	.LBB5_36
.LBB5_11:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB5_37
	shlq	$3, %rcx
	movl	$1, %esi
	cmpq	$14, %rcx
	jb	.LBB5_14
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.LBB5_14:
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB5_39
.LBB5_15:
	movq	%rax, %r13
	addq	$15, %r13
	andq	$-16, %r13
	leaq	16(%rsi), %rdx
	movq	%r13, %r15
	addq	%rdx, %r15
	jb	.LBB5_39
	movabsq	$-9223372036854775807, %r12
	leaq	-17(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB5_39
	testq	%r15, %r15
	movq	%rbp, 16(%rsp)
	movq	%r8, 32(%rsp)
	je	.LBB5_42
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rsi, 8(%rsp)
	movl	$16, %esi
	movq	%r15, %rdi
	movq	%rdx, %rbp
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%rbp, %rdx
	movq	8(%rsp), %rsi
	movq	%rax, %rbp
	testq	%rax, %rax
	jne	.LBB5_43
	movl	$16, %esi
	movl	$1, %edi
	movq	%r15, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB5_40
.LBB5_20:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB5_21:
	movabsq	$5871781006564002453, %rax
	xorl	%ecx, %ecx
	jmp	.LBB5_24
	.p2align	4, 0x90
.LBB5_22:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rdx, %r9
	movb	%r8b, (%r12,%rcx)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r9,%r12)
.LBB5_23:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB5_35
.LBB5_24:
	cmpb	$-128, (%r12,%rcx)
	jne	.LBB5_23
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB5_26:
	leaq	(%rsi,%rsi,2), %r8
	movq	-24(%rdi,%r8,8), %r8
	imulq	%rax, %r8
	movq	8(%rbx), %r9
	movq	%r8, %rdi
	andq	%r9, %rdi
	movdqu	(%r12,%rdi), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%rdi, %r11
	testl	%r10d, %r10d
	jne	.LBB5_29
	movl	$16, %r15d
	movq	%rdi, %r11
	.p2align	4, 0x90
.LBB5_28:
	addq	%r15, %r11
	andq	%r9, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r15
	testl	%r10d, %r10d
	je	.LBB5_28
.LBB5_29:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%r9, %r10
	cmpb	$0, (%r12,%r10)
	js	.LBB5_31
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB5_31:
	movq	%rcx, %r11
	subq	%rdi, %r11
	movq	%r10, %r15
	subq	%rdi, %r15
	xorq	%r11, %r15
	andq	%r9, %r15
	cmpq	$16, %r15
	jb	.LBB5_22
	leaq	(,%r10,8), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	negq	%rdi
	addq	%r12, %rdi
	addq	$-24, %rdi
	movzbl	(%r12,%r10), %r11d
	shrq	$57, %r8
	leaq	-16(%r10), %r15
	andq	%r9, %r15
	movb	%r8b, (%r12,%r10)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r15,%r12)
	cmpb	$-1, %r11b
	je	.LBB5_34
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
	movq	(%rbx), %rdi
	movq	%rdi, %r12
	jmp	.LBB5_26
	.p2align	4, 0x90
.LBB5_34:
	leaq	-16(%rcx), %rsi
	andq	8(%rbx), %rsi
	movb	$-1, (%r12,%rcx)
	movb	$-1, 16(%rsi,%r12)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB5_23
.LBB5_35:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %rbp
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB5_36:
	subq	%rbp, %rax
	movabsq	$-9223372036854775807, %r12
	movq	%rax, 16(%rbx)
.LBB5_41:
	movq	%r12, %rax
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
.LBB5_37:
	.cfi_def_cfa_offset 96
	movq	%r8, %r15
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r12
	jne	.LBB5_41
	movq	%rdx, %rsi
	movq	%r15, %r8
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB5_15
	jmp	.LBB5_39
.LBB5_42:
	movl	$16, %ebp
.LBB5_43:
	leaq	-1(%rsi), %r15
	movq	%rsi, %rax
	shrq	$3, %rax
	andq	$-8, %rsi
	subq	%rax, %rsi
	cmpq	$8, %r15
	cmovbq	%r15, %rsi
	movq	%rsi, 8(%rsp)
	addq	%r13, %rbp
	movq	%rbp, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	(%rbx), %rax
	movq	%rax, 24(%rsp)
	cmpq	$0, 16(%rsp)
	je	.LBB5_54
	movq	24(%rsp), %rsi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	leaq	-24(%rsi), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %r8
	jmp	.LBB5_46
	.p2align	4, 0x90
.LBB5_45:
	leal	-1(%r9), %r13d
	andl	%r9d, %r13d
	decq	%r8
	shrq	$57, %r11
	leaq	-16(%rax), %rcx
	andq	%r15, %rcx
	movb	%r11b, (%rbp,%rax)
	movb	%r11b, 16(%rcx,%rbp)
	shlq	$3, %r10
	leaq	(%r10,%r10,2), %rcx
	movq	24(%rsp), %r9
	subq	%rcx, %r9
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rbp, %rcx
	subq	%rax, %rcx
	negq	%rax
	movdqu	-24(%r9), %xmm0
	movdqu	%xmm0, -24(%rbp,%rax)
	movq	-8(%r9), %rax
	movq	%rax, -8(%rcx)
	movl	%r13d, %r9d
	testq	%r8, %r8
	je	.LBB5_54
.LBB5_46:
	testw	%r9w, %r9w
	jne	.LBB5_49
	.p2align	4, 0x90
.LBB5_47:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB5_47
	notl	%r9d
.LBB5_49:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	movq	%r10, %rax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	(%rdi,%rax,8), %r11
	movabsq	$5871781006564002453, %rax
	imulq	%rax, %r11
	movq	%r11, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB5_52
	movl	$16, %ecx
	.p2align	4, 0x90
.LBB5_51:
	addq	%rcx, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB5_51
.LBB5_52:
	rep		bsfl	%eax, %eax
	addq	%r13, %rax
	andq	%r15, %rax
	cmpb	$0, (%rbp,%rax)
	js	.LBB5_45
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB5_45
.LBB5_54:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB5_41
	movl	$24, %ecx
	movq	32(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB5_41
	movq	24(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB5_41
.Lfunc_end5:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end5-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_0:
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
	movq	24(%rdi), %rbp
	movq	%rbp, %rax
	incq	%rax
	jne	.LBB6_2
.LBB6_39:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB6_40:
	movq	%rax, %r12
	jmp	.LBB6_41
.LBB6_2:
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	leaq	1(%r14), %r8
	movq	%r8, %rdx
	shrq	$3, %rdx
	movq	%r8, %rcx
	andq	$-8, %rcx
	subq	%rdx, %rcx
	cmpq	$8, %r14
	cmovbq	%r14, %rcx
	movq	%rcx, %rdx
	shrq	%rdx
	cmpq	%rdx, %rax
	jbe	.LBB6_5
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	jae	.LBB6_11
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %rsi
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB6_15
	jmp	.LBB6_39
.LBB6_5:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB6_8
	movdqa	.LCPI6_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB6_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB6_7
.LBB6_8:
	cmpq	$16, %r8
	jae	.LBB6_20
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB6_21
	xorl	%eax, %eax
	jmp	.LBB6_36
.LBB6_11:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB6_37
	shlq	$3, %rcx
	movl	$1, %esi
	cmpq	$14, %rcx
	jb	.LBB6_14
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	notl	%ecx
	movq	$-1, %rsi
	shrq	%cl, %rsi
	incq	%rsi
.LBB6_14:
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB6_39
.LBB6_15:
	movq	%rax, %r13
	addq	$15, %r13
	andq	$-16, %r13
	leaq	16(%rsi), %rdx
	movq	%r13, %r15
	addq	%rdx, %r15
	jb	.LBB6_39
	movabsq	$-9223372036854775807, %r12
	leaq	-17(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB6_39
	testq	%r15, %r15
	movq	%rbp, 16(%rsp)
	movq	%r8, 32(%rsp)
	je	.LBB6_42
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rsi, 8(%rsp)
	movl	$16, %esi
	movq	%r15, %rdi
	movq	%rdx, %rbp
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%rbp, %rdx
	movq	8(%rsp), %rsi
	movq	%rax, %rbp
	testq	%rax, %rax
	jne	.LBB6_43
	movl	$16, %esi
	movl	$1, %edi
	movq	%r15, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB6_40
.LBB6_20:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB6_21:
	movabsq	$5871781006564002453, %rax
	xorl	%ecx, %ecx
	jmp	.LBB6_24
	.p2align	4, 0x90
.LBB6_22:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rdx, %r9
	movb	%r8b, (%r12,%rcx)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r9,%r12)
.LBB6_23:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB6_35
.LBB6_24:
	cmpb	$-128, (%r12,%rcx)
	jne	.LBB6_23
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB6_26:
	leaq	(%rsi,%rsi,2), %r8
	movq	-24(%rdi,%r8,8), %r8
	imulq	%rax, %r8
	movq	8(%rbx), %r9
	movq	%r8, %rdi
	andq	%r9, %rdi
	movdqu	(%r12,%rdi), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%rdi, %r11
	testl	%r10d, %r10d
	jne	.LBB6_29
	movl	$16, %r15d
	movq	%rdi, %r11
	.p2align	4, 0x90
.LBB6_28:
	addq	%r15, %r11
	andq	%r9, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r15
	testl	%r10d, %r10d
	je	.LBB6_28
.LBB6_29:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%r9, %r10
	cmpb	$0, (%r12,%r10)
	js	.LBB6_31
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB6_31:
	movq	%rcx, %r11
	subq	%rdi, %r11
	movq	%r10, %r15
	subq	%rdi, %r15
	xorq	%r11, %r15
	andq	%r9, %r15
	cmpq	$16, %r15
	jb	.LBB6_22
	leaq	(,%r10,8), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	negq	%rdi
	addq	%r12, %rdi
	addq	$-24, %rdi
	movzbl	(%r12,%r10), %r11d
	shrq	$57, %r8
	leaq	-16(%r10), %r15
	andq	%r9, %r15
	movb	%r8b, (%r12,%r10)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r15,%r12)
	cmpb	$-1, %r11b
	je	.LBB6_34
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
	movq	(%rbx), %rdi
	movq	%rdi, %r12
	jmp	.LBB6_26
	.p2align	4, 0x90
.LBB6_34:
	leaq	-16(%rcx), %rsi
	andq	8(%rbx), %rsi
	movb	$-1, (%r12,%rcx)
	movb	$-1, 16(%rsi,%r12)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB6_23
.LBB6_35:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %rbp
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB6_36:
	subq	%rbp, %rax
	movabsq	$-9223372036854775807, %r12
	movq	%rax, 16(%rbx)
.LBB6_41:
	movq	%r12, %rax
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
.LBB6_37:
	.cfi_def_cfa_offset 96
	movq	%r8, %r15
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r12
	jne	.LBB6_41
	movq	%rdx, %rsi
	movq	%r15, %r8
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB6_15
	jmp	.LBB6_39
.LBB6_42:
	movl	$16, %ebp
.LBB6_43:
	leaq	-1(%rsi), %r15
	movq	%rsi, %rax
	shrq	$3, %rax
	andq	$-8, %rsi
	subq	%rax, %rsi
	cmpq	$8, %r15
	cmovbq	%r15, %rsi
	movq	%rsi, 8(%rsp)
	addq	%r13, %rbp
	movq	%rbp, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	(%rbx), %rax
	movq	%rax, 24(%rsp)
	cmpq	$0, 16(%rsp)
	je	.LBB6_54
	movq	24(%rsp), %rsi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	leaq	-24(%rsi), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %r8
	jmp	.LBB6_46
	.p2align	4, 0x90
.LBB6_45:
	leal	-1(%r9), %r13d
	andl	%r9d, %r13d
	decq	%r8
	shrq	$57, %r11
	leaq	-16(%rax), %rcx
	andq	%r15, %rcx
	movb	%r11b, (%rbp,%rax)
	movb	%r11b, 16(%rcx,%rbp)
	shlq	$3, %r10
	leaq	(%r10,%r10,2), %rcx
	movq	24(%rsp), %r9
	subq	%rcx, %r9
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rbp, %rcx
	subq	%rax, %rcx
	negq	%rax
	movdqu	-24(%r9), %xmm0
	movdqu	%xmm0, -24(%rbp,%rax)
	movq	-8(%r9), %rax
	movq	%rax, -8(%rcx)
	movl	%r13d, %r9d
	testq	%r8, %r8
	je	.LBB6_54
.LBB6_46:
	testw	%r9w, %r9w
	jne	.LBB6_49
	.p2align	4, 0x90
.LBB6_47:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB6_47
	notl	%r9d
.LBB6_49:
	rep		bsfl	%r9d, %r10d
	addq	%rdx, %r10
	movq	%r10, %rax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	(%rdi,%rax,8), %r11
	movabsq	$5871781006564002453, %rax
	imulq	%rax, %r11
	movq	%r11, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB6_52
	movl	$16, %ecx
	.p2align	4, 0x90
.LBB6_51:
	addq	%rcx, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB6_51
.LBB6_52:
	rep		bsfl	%eax, %eax
	addq	%r13, %rax
	andq	%r15, %rax
	cmpb	$0, (%rbp,%rax)
	js	.LBB6_45
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB6_45
.LBB6_54:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB6_41
	movl	$24, %ecx
	movq	32(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB6_41
	movq	24(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB6_41
.Lfunc_end6:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end6-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.zero	16,15
	.section	.text.entity_insert,"ax",@progbits
	.globl	entity_insert
	.p2align	4, 0x90
	.type	entity_insert,@function
entity_insert:
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movd	%xmm0, 12(%rsp)
	movq	%rdi, %rbx
	movabsq	$-6078031476172134184, %rbp
	movabsq	$2951753444135136489, %r15
	movabsq	$2227393411149069725, %r12
	movq	(%rdi), %r14
	movl	760(%r14), %eax
	movq	%rax, 16(%rsp)
	leaq	488(%r14), %r13
	leaq	64(%r14), %rax
	movq	%rax, (%rsp)
	movq	512(%r14), %rcx
	movq	520(%r14), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI7_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %rdi
.LBB7_1:
	andq	%rax, %rdi
	movdqu	(%rcx,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	.p2align	4, 0x90
.LBB7_2:
	testw	%r8w, %r8w
	je	.LBB7_3
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rax, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%rbp, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%r15, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB7_2
	jmp	.LBB7_13
	.p2align	4, 0x90
.LBB7_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_5
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB7_1
.LBB7_13:
	movq	(%r13), %rax
	movq	-8(%rcx,%r9,8), %r13
.LBB7_37:
	movq	16(%rsp), %r10
	shlq	$5, %r13
	addq	%rax, %r13
	leaq	152(%r14), %rcx
	leaq	216(%r14), %r9
	movl	16(%rbx), %ebp
	.cfi_escape 0x2e, 0x10
	leaq	96(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	(%rsp), %r8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	20(%rbx), %r14d
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_47
	movq	8(%rbx), %r13
	movq	%r13, %rbp
	shrq	$32, %rbp
	cmpl	$1, %eax
	movq	%rbx, 24(%rsp)
	jne	.LBB7_64
	movq	120(%rsp), %r12
	movq	88(%r12), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB7_40
	decq	%rsi
	movq	72(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r15d
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r12)
	cmpq	%r14, %rsi
	je	.LBB7_75
	jbe	.LBB7_62
	addq	%rcx, %rax
	movq	(%rax), %r8
	movq	128(%rsp), %r9
	movl	%r8d, %r10d
	movq	(%r9), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	16(%r9), %r10
	jae	.LBB7_74
	shrq	$32, %r8
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB7_74
	movl	4(%rax,%rcx,4), %edi
	cmpl	$-1, %edi
	je	.LBB7_72
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB7_74
.LBB7_47:
	movq	120(%rsp), %rsi
	movq	136(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%rsi), %rdx
	jae	.LBB7_50
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB7_50
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
.LBB7_50:
	movl	28(%rbx), %r15d
	movl	24(%rbx), %r13d
	movq	144(%rsp), %rdx
	movl	168(%rsp), %esi
	movl	%esi, (%rsp)
	movss	12(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB7_55
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_55
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB7_53
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	(%rdx), %r12
.LBB7_55:
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_56
.LBB7_57:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB7_58
.LBB7_64:
	movq	120(%rsp), %r12
	movq	88(%r12), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB7_65
	decq	%rsi
	movq	72(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdi
	shlq	$4, %rdi
	movl	8(%rax,%rcx), %edx
	movups	(%rax,%rdi), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r12)
	cmpq	%r14, %rsi
	je	.LBB7_95
	jbe	.LBB7_68
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	128(%rsp), %r9
	movl	%edi, %r10d
	movq	(%r9), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	16(%r9), %r10
	jae	.LBB7_94
	shrq	$32, %rdi
	cmpl	%edi, (%rax,%rcx,4)
	jne	.LBB7_94
	movl	4(%rax,%rcx,4), %r11d
	cmpl	$-1, %r11d
	je	.LBB7_92
	leaq	(%rax,%rcx,4), %rdi
	addq	$4, %rdi
	movl	8(%rdi), %esi
	movl	12(%rdi), %r8d
	jmp	.LBB7_94
.LBB7_53:
	xorl	%r12d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_57
	jmp	.LBB7_56
.LBB7_5:
	movq	%r13, 176(%rsp)
	cmpq	$0, 528(%r14)
	je	.LBB7_6
.LBB7_7:
	movq	%rbx, %r13
	movq	$8, 64(%rsp)
	leaq	88(%r14), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %r8
.LBB7_8:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	.p2align	4, 0x90
.LBB7_9:
	testw	%r9w, %r9w
	je	.LBB7_10
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%rbp, %r9
	movq	(%rdx,%r10,8), %rbx
	xorq	%r15, %rbx
	orq	%r9, %rbx
	movl	%r11d, %r9d
	jne	.LBB7_9
	jmp	.LBB7_26
.LBB7_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB7_14
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB7_8
.LBB7_26:
	movq	-8(%rax,%r10,8), %rax
	movq	%r13, %rbx
	movq	%rax, %r13
.LBB7_27:
.Ltmp4:
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp5:
	movq	64(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%r13, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 80(%rsp)
	movq	504(%r14), %r13
	movq	%rcx, 48(%rsp)
	movdqu	64(%rsp), %xmm0
	movdqa	%xmm0, 32(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rsi
	leaq	96(%rsp), %rdi
	leaq	32(%rsp), %r8
	movl	$16, %edx
	movq	%rdi, 88(%rsp)
	movq	(%rsp), %rcx
	movq	%r13, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%r13, %rcx
	cmpq	496(%r14), %r13
	jne	.LBB7_31
.Ltmp7:
	.cfi_escape 0x2e, 0x00
	movq	176(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	504(%r14), %rcx
.LBB7_31:
	movq	488(%r14), %rax
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movups	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rdx)
	movups	%xmm0, (%rax,%rdx)
	incq	%rcx
	movq	%rcx, 504(%r14)
	movq	512(%r14), %rcx
	movq	520(%r14), %rdx
	andq	%rdx, %r12
	movdqu	(%rcx,%r12), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB7_34
	movl	$16, %edi
	.p2align	4, 0x90
.LBB7_33:
	addq	%rdi, %r12
	andq	%rdx, %r12
	movdqu	(%rcx,%r12), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB7_33
.LBB7_34:
	rep		bsfl	%esi, %esi
	addq	%r12, %rsi
	andq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %edi
	testb	%dil, %dil
	js	.LBB7_36
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rcx,%rsi), %edi
.LBB7_36:
	leaq	-16(%rsi), %r8
	andq	%rdx, %r8
	movb	$15, (%rcx,%rsi)
	movb	$15, 16(%r8,%rcx)
	andb	$1, %dil
	movzbl	%dil, %edx
	subq	%rdx, 528(%r14)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	movq	%r15, -24(%rcx,%rdx,8)
	movq	%rbp, -16(%rcx,%rdx,8)
	movq	%r13, -8(%rcx,%rdx,8)
	incq	536(%r14)
	jmp	.LBB7_37
.LBB7_72:
.LBB7_74:
	movl	%edi, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB7_75:
	movq	104(%rsp), %rbx
	movq	88(%rbx), %r14
	cmpq	80(%rbx), %r14
	jne	.LBB7_76
	leaq	72(%rbx), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%rbx), %rax
	jmp	.LBB7_78
.LBB7_76:
	movq	%r14, %rax
.LBB7_78:
	movq	72(%rbx), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebp, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %ebp
	movl	148(%rbx), %edi
	movq	128(%rsp), %rax
	movq	(%rax), %rax
	movl	%r13d, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%edi, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	136(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%r12), %rdx
	jae	.LBB7_79
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	movq	24(%rsp), %rbx
	je	.LBB7_82
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
	jmp	.LBB7_82
.LBB7_79:
	movq	24(%rsp), %rbx
.LBB7_82:
	movq	144(%rsp), %rdx
	movl	168(%rsp), %esi
	movl	%esi, (%rsp)
	movss	12(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB7_87
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_87
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB7_85
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	(%rdx), %r12
.LBB7_87:
	movl	%edi, %r13d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_56
.LBB7_88:
	.cfi_escape 0x2e, 0x00
.LBB7_58:
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB7_59
.LBB7_85:
	xorl	%r12d, %r12d
	movl	%edi, %r13d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_88
.LBB7_56:
	movq	8(%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r12), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB7_59:
	movq	72(%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	jmp	.LBB7_116
.LBB7_92:
.LBB7_94:
	movl	%r11d, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r8d, 16(%rax,%rcx,4)
.LBB7_95:
	movq	112(%rsp), %rcx
	movq	144(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	movl	%edx, (%rsp)
	movq	%rcx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	104(%rsp), %rbx
	movl	48(%rsp), %r15d
	movq	88(%rbx), %r14
	cmpq	80(%rbx), %r14
	jne	.LBB7_96
	leaq	72(%rbx), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%rbx), %rax
	jmp	.LBB7_98
.LBB7_96:
	movq	%r14, %rax
.LBB7_98:
	movq	72(%rbx), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebp, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %ebp
	movl	148(%rbx), %r8d
	movq	128(%rsp), %rax
	movq	(%rax), %rcx
	movl	%r13d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%ebp, 4(%rcx,%rdx,4)
	movl	%r14d, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpq	$0, 32(%rsp)
	movl	(%rsp), %r9d
	je	.LBB7_103
	movl	40(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r12, %rcx
	cmpl	%edx, 144(%r12)
	je	.LBB7_101
	imulq	$152, %rdx, %rcx
	addq	160(%rsp), %rcx
	cmpl	%edx, 144(%rbx)
	cmoveq	%rbx, %rcx
.LBB7_101:
	movl	%r9d, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_117
	movq	72(%rcx), %rax
	shlq	$4, %rdi
	movl	%r9d, 8(%rax,%rdi)
.LBB7_103:
	movq	136(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%r12), %rdx
	jae	.LBB7_104
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	movq	24(%rsp), %rbx
	movq	16(%rsp), %rdi
	je	.LBB7_107
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
	jmp	.LBB7_107
.LBB7_104:
	movq	24(%rsp), %rbx
	movq	16(%rsp), %rdi
.LBB7_107:
	movl	168(%rsp), %edx
	movl	%edx, (%rsp)
	movss	12(%rsp), %xmm0
	movss	%xmm0, 64(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r13d, %r13d
	cmpq	%rcx, 40(%rdi)
	jbe	.LBB7_112
	movq	32(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB7_112
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB7_110
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r13
	shlq	$5, %r13
	addq	(%rdi), %r13
.LBB7_112:
	movl	%r8d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_113
.LBB7_114:
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB7_115
.LBB7_110:
	xorl	%r13d, %r13d
	movl	%r8d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_114
.LBB7_113:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r13), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	64(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r13), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB7_115:
	movq	72(%r13), %rax
	movl	%ecx, (%rax,%r15,4)
	movl	%r12d, %r13d
.LBB7_116:
	movl	%ebp, 16(%rbx)
	movl	%r14d, 20(%rbx)
	movl	%r13d, 24(%rbx)
	movl	%r15d, 28(%rbx)
	addq	$184, %rsp
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
.LBB7_6:
	.cfi_def_cfa_offset 240
	leaq	512(%r14), %rdi
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI7_0(%rip), %xmm3
	jmp	.LBB7_7
.LBB7_14:
	movq	%r13, %rbx
	cmpq	$0, 104(%r14)
	jne	.LBB7_16
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp1:
.LBB7_16:
	movq	80(%r14), %r13
	movq	%r13, %rax
	cmpq	72(%r14), %r13
	jne	.LBB7_19
.Ltmp2:
	.cfi_escape 0x2e, 0x00
	movq	(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp3:
	movq	80(%r14), %rax
.LBB7_19:
	movq	64(%r14), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%rbp, 16(%rcx,%rdx)
	movq	%r15, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movq	$16, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%r13, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r14)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rdx
	andq	%r12, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB7_22
	movl	$16, %edi
.LBB7_21:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB7_21
.LBB7_22:
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB7_24
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB7_24:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$15, (%rax,%rsi)
	movb	$15, 16(%rdi,%rax)
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 104(%r14)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rcx
	movq	%r15, -24(%rax,%rcx,8)
	movq	%rbp, -16(%rax,%rcx,8)
	movq	%r13, -8(%rax,%rcx,8)
	incq	112(%r14)
	jmp	.LBB7_27
.LBB7_117:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB7_62:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB7_68:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB7_40:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB7_65:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB7_42:
.Ltmp9:
	movq	%rax, %rbx
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_43
	jmp	.LBB7_44
.LBB7_45:
.Ltmp6:
	movq	%rax, %rbx
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_44
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
.LBB7_43:
	movq	88(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_44:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end7:
	.size	entity_insert, .Lfunc_end7-entity_insert
	.cfi_endproc
	.section	.gcc_except_table.entity_insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp4
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp5-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp5
	.byte	0
	.byte	0
	.uleb128 .Ltmp7-.Lfunc_begin0
	.uleb128 .Ltmp8-.Ltmp7
	.uleb128 .Ltmp9-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin0
	.uleb128 .Ltmp0-.Ltmp8
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Lfunc_end7-.Ltmp3
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.0,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.ascii	"/rustc/82e1608dfa6e0b5569232559e3d385fea5a93112/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 76

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"L\000\000\000\000\000\000\000\262\005\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.2,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"_\000\000\000\000\000\000\000\275\001\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.2
	.asciz	"_\000\000\000\000\000\000\000\350\001\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 24

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

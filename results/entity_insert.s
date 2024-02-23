	.text
	.file	"entity_insert.ea5b5a7ab98fa6c-cgu.0"
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
	movq	(%rdi), %rax
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
	je	.LBB1_2
	movq	8(%rbx), %rcx
	shlq	$5, %rax
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
	movq	%rdi, 8(%rbx)
	movq	%r14, (%rbx)
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
.LBB1_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
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
	movq	(%rdi), %rax
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
	je	.LBB2_2
	movq	8(%rbx), %rcx
	shlq	$3, %rax
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
	movq	%rdi, 8(%rbx)
	movq	%r14, (%rbx)
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
.LBB2_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
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
	movq	(%rdi), %rax
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
	movq	8(%rbx), %rcx
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
	movq	%rdi, 8(%rbx)
	movq	%r14, (%rbx)
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
.LBB3_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
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
	movq	(%rdi), %rax
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
	je	.LBB4_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
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
	movq	%rdi, 8(%rbx)
	movq	%r14, (%rbx)
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
.LBB4_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end4:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end4-alloc::raw_vec::RawVec<T,A>::reserve_for_push
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
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
	je	.LBB5_12
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
	jbe	.LBB5_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB5_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB5_7
.LBB5_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB5_32
	movdqa	.LCPI5_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB5_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB5_31
.LBB5_32:
	cmpq	$16, %r8
	jae	.LBB5_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB5_34
	xorl	%eax, %eax
	jmp	.LBB5_50
.LBB5_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB5_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB5_7
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
	movq	$-1, %r13
	shrq	%cl, %r13
	incq	%r13
.LBB5_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB5_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB5_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB5_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB5_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB5_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB5_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB5_34:
	xorl	%eax, %eax
	jmp	.LBB5_35
	.p2align	4, 0x90
.LBB5_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB5_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB5_49
.LBB5_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB5_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB5_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB5_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB5_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB5_39
.LBB5_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB5_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB5_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB5_52
	leaq	(,%r9,8), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	negq	%rsi
	addq	%r12, %rsi
	addq	$-24, %rsi
	movzbl	(%r12,%r9), %r10d
	shrq	$57, %rdi
	leaq	-16(%r9), %r11
	andq	%r8, %r11
	movb	%dil, (%r12,%r9)
	movq	(%rbx), %r12
	movb	%dil, 16(%r11,%r12)
	cmpb	$-1, %r10b
	je	.LBB5_47
	movzbl	(%rcx), %edi
	movzbl	(%rsi), %r8d
	movb	%r8b, (%rcx)
	movb	%dil, (%rsi)
	movzbl	1(%rcx), %edi
	movzbl	1(%rsi), %r8d
	movb	%r8b, 1(%rcx)
	movb	%dil, 1(%rsi)
	movzbl	2(%rcx), %edi
	movzbl	2(%rsi), %r8d
	movb	%r8b, 2(%rcx)
	movb	%dil, 2(%rsi)
	movzbl	3(%rcx), %edi
	movzbl	3(%rsi), %r8d
	movb	%r8b, 3(%rcx)
	movb	%dil, 3(%rsi)
	movzbl	4(%rcx), %edi
	movzbl	4(%rsi), %r8d
	movb	%r8b, 4(%rcx)
	movb	%dil, 4(%rsi)
	movzbl	5(%rcx), %edi
	movzbl	5(%rsi), %r8d
	movb	%r8b, 5(%rcx)
	movb	%dil, 5(%rsi)
	movzbl	6(%rcx), %edi
	movzbl	6(%rsi), %r8d
	movb	%r8b, 6(%rcx)
	movb	%dil, 6(%rsi)
	movzbl	7(%rcx), %edi
	movzbl	7(%rsi), %r8d
	movb	%r8b, 7(%rcx)
	movb	%dil, 7(%rsi)
	movzbl	8(%rcx), %edi
	movzbl	8(%rsi), %r8d
	movb	%r8b, 8(%rcx)
	movb	%dil, 8(%rsi)
	movzbl	9(%rcx), %edi
	movzbl	9(%rsi), %r8d
	movb	%r8b, 9(%rcx)
	movb	%dil, 9(%rsi)
	movzbl	10(%rcx), %edi
	movzbl	10(%rsi), %r8d
	movb	%r8b, 10(%rcx)
	movb	%dil, 10(%rsi)
	movzbl	11(%rcx), %edi
	movzbl	11(%rsi), %r8d
	movb	%r8b, 11(%rcx)
	movb	%dil, 11(%rsi)
	movzbl	12(%rcx), %edi
	movzbl	12(%rsi), %r8d
	movb	%r8b, 12(%rcx)
	movb	%dil, 12(%rsi)
	movzbl	13(%rcx), %edi
	movzbl	13(%rsi), %r8d
	movb	%r8b, 13(%rcx)
	movb	%dil, 13(%rsi)
	movzbl	14(%rcx), %edi
	movzbl	14(%rsi), %r8d
	movb	%r8b, 14(%rcx)
	movb	%dil, 14(%rsi)
	movzbl	15(%rcx), %edi
	movzbl	15(%rsi), %r8d
	movb	%r8b, 15(%rcx)
	movb	%dil, 15(%rsi)
	movzbl	16(%rcx), %edi
	movzbl	16(%rsi), %r8d
	movb	%r8b, 16(%rcx)
	movb	%dil, 16(%rsi)
	movzbl	17(%rcx), %edi
	movzbl	17(%rsi), %r8d
	movb	%r8b, 17(%rcx)
	movb	%dil, 17(%rsi)
	movzbl	18(%rcx), %edi
	movzbl	18(%rsi), %r8d
	movb	%r8b, 18(%rcx)
	movb	%dil, 18(%rsi)
	movzbl	19(%rcx), %edi
	movzbl	19(%rsi), %r8d
	movb	%r8b, 19(%rcx)
	movb	%dil, 19(%rsi)
	movzbl	20(%rcx), %edi
	movzbl	20(%rsi), %r8d
	movb	%r8b, 20(%rcx)
	movb	%dil, 20(%rsi)
	movzbl	21(%rcx), %edi
	movzbl	21(%rsi), %r8d
	movb	%r8b, 21(%rcx)
	movb	%dil, 21(%rsi)
	movzbl	22(%rcx), %edi
	movzbl	22(%rsi), %r8d
	movb	%r8b, 22(%rcx)
	movb	%dil, 22(%rsi)
	movzbl	23(%rcx), %edi
	movzbl	23(%rsi), %r8d
	movb	%r8b, 23(%rcx)
	movb	%dil, 23(%rsi)
	movq	(%rbx), %rsi
	movq	%rsi, %r12
	jmp	.LBB5_37
	.p2align	4, 0x90
.LBB5_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB5_48
.LBB5_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB5_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB5_51
.LBB5_11:
	movl	$16, %r12d
.LBB5_15:
	leaq	-1(%r13), %rbp
	movq	%r13, %rax
	shrq	$3, %rax
	movq	%r13, %rcx
	andq	$-8, %rcx
	subq	%rax, %rcx
	cmpq	$9, %r13
	cmovbq	%rbp, %rcx
	movq	%rcx, 64(%rsp)
	addq	%r15, %r12
	movq	%r12, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	(%rbx), %rdi
	cmpq	$0, (%rsp)
	je	.LBB5_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB5_17
	.p2align	4, 0x90
.LBB5_25:
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
	je	.LBB5_26
.LBB5_17:
	testw	%r8w, %r8w
	jne	.LBB5_20
	.p2align	4, 0x90
.LBB5_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB5_18
	notl	%r8d
.LBB5_20:
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
	jne	.LBB5_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB5_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB5_22
.LBB5_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB5_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB5_25
.LBB5_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB5_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB5_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_51:
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
.LBB5_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end5:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end5-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_0:
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
	je	.LBB6_12
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
	jbe	.LBB6_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB6_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB6_7
.LBB6_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB6_32
	movdqa	.LCPI6_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB6_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB6_31
.LBB6_32:
	cmpq	$16, %r8
	jae	.LBB6_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB6_34
	xorl	%eax, %eax
	jmp	.LBB6_50
.LBB6_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB6_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB6_7
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
	movq	$-1, %r13
	shrq	%cl, %r13
	incq	%r13
.LBB6_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB6_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB6_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB6_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB6_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB6_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB6_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB6_34:
	xorl	%eax, %eax
	jmp	.LBB6_35
	.p2align	4, 0x90
.LBB6_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB6_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB6_49
.LBB6_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB6_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB6_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB6_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB6_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB6_39
.LBB6_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB6_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB6_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB6_52
	leaq	(,%r9,8), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	negq	%rsi
	addq	%r12, %rsi
	addq	$-24, %rsi
	movzbl	(%r12,%r9), %r10d
	shrq	$57, %rdi
	leaq	-16(%r9), %r11
	andq	%r8, %r11
	movb	%dil, (%r12,%r9)
	movq	(%rbx), %r12
	movb	%dil, 16(%r11,%r12)
	cmpb	$-1, %r10b
	je	.LBB6_47
	movzbl	(%rcx), %edi
	movzbl	(%rsi), %r8d
	movb	%r8b, (%rcx)
	movb	%dil, (%rsi)
	movzbl	1(%rcx), %edi
	movzbl	1(%rsi), %r8d
	movb	%r8b, 1(%rcx)
	movb	%dil, 1(%rsi)
	movzbl	2(%rcx), %edi
	movzbl	2(%rsi), %r8d
	movb	%r8b, 2(%rcx)
	movb	%dil, 2(%rsi)
	movzbl	3(%rcx), %edi
	movzbl	3(%rsi), %r8d
	movb	%r8b, 3(%rcx)
	movb	%dil, 3(%rsi)
	movzbl	4(%rcx), %edi
	movzbl	4(%rsi), %r8d
	movb	%r8b, 4(%rcx)
	movb	%dil, 4(%rsi)
	movzbl	5(%rcx), %edi
	movzbl	5(%rsi), %r8d
	movb	%r8b, 5(%rcx)
	movb	%dil, 5(%rsi)
	movzbl	6(%rcx), %edi
	movzbl	6(%rsi), %r8d
	movb	%r8b, 6(%rcx)
	movb	%dil, 6(%rsi)
	movzbl	7(%rcx), %edi
	movzbl	7(%rsi), %r8d
	movb	%r8b, 7(%rcx)
	movb	%dil, 7(%rsi)
	movzbl	8(%rcx), %edi
	movzbl	8(%rsi), %r8d
	movb	%r8b, 8(%rcx)
	movb	%dil, 8(%rsi)
	movzbl	9(%rcx), %edi
	movzbl	9(%rsi), %r8d
	movb	%r8b, 9(%rcx)
	movb	%dil, 9(%rsi)
	movzbl	10(%rcx), %edi
	movzbl	10(%rsi), %r8d
	movb	%r8b, 10(%rcx)
	movb	%dil, 10(%rsi)
	movzbl	11(%rcx), %edi
	movzbl	11(%rsi), %r8d
	movb	%r8b, 11(%rcx)
	movb	%dil, 11(%rsi)
	movzbl	12(%rcx), %edi
	movzbl	12(%rsi), %r8d
	movb	%r8b, 12(%rcx)
	movb	%dil, 12(%rsi)
	movzbl	13(%rcx), %edi
	movzbl	13(%rsi), %r8d
	movb	%r8b, 13(%rcx)
	movb	%dil, 13(%rsi)
	movzbl	14(%rcx), %edi
	movzbl	14(%rsi), %r8d
	movb	%r8b, 14(%rcx)
	movb	%dil, 14(%rsi)
	movzbl	15(%rcx), %edi
	movzbl	15(%rsi), %r8d
	movb	%r8b, 15(%rcx)
	movb	%dil, 15(%rsi)
	movzbl	16(%rcx), %edi
	movzbl	16(%rsi), %r8d
	movb	%r8b, 16(%rcx)
	movb	%dil, 16(%rsi)
	movzbl	17(%rcx), %edi
	movzbl	17(%rsi), %r8d
	movb	%r8b, 17(%rcx)
	movb	%dil, 17(%rsi)
	movzbl	18(%rcx), %edi
	movzbl	18(%rsi), %r8d
	movb	%r8b, 18(%rcx)
	movb	%dil, 18(%rsi)
	movzbl	19(%rcx), %edi
	movzbl	19(%rsi), %r8d
	movb	%r8b, 19(%rcx)
	movb	%dil, 19(%rsi)
	movzbl	20(%rcx), %edi
	movzbl	20(%rsi), %r8d
	movb	%r8b, 20(%rcx)
	movb	%dil, 20(%rsi)
	movzbl	21(%rcx), %edi
	movzbl	21(%rsi), %r8d
	movb	%r8b, 21(%rcx)
	movb	%dil, 21(%rsi)
	movzbl	22(%rcx), %edi
	movzbl	22(%rsi), %r8d
	movb	%r8b, 22(%rcx)
	movb	%dil, 22(%rsi)
	movzbl	23(%rcx), %edi
	movzbl	23(%rsi), %r8d
	movb	%r8b, 23(%rcx)
	movb	%dil, 23(%rsi)
	movq	(%rbx), %rsi
	movq	%rsi, %r12
	jmp	.LBB6_37
	.p2align	4, 0x90
.LBB6_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB6_48
.LBB6_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB6_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB6_51
.LBB6_11:
	movl	$16, %r12d
.LBB6_15:
	leaq	-1(%r13), %rbp
	movq	%r13, %rax
	shrq	$3, %rax
	movq	%r13, %rcx
	andq	$-8, %rcx
	subq	%rax, %rcx
	cmpq	$9, %r13
	cmovbq	%rbp, %rcx
	movq	%rcx, 64(%rsp)
	addq	%r15, %r12
	movq	%r12, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	movq	(%rbx), %rdi
	cmpq	$0, (%rsp)
	je	.LBB6_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB6_17
	.p2align	4, 0x90
.LBB6_25:
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
	je	.LBB6_26
.LBB6_17:
	testw	%r8w, %r8w
	jne	.LBB6_20
	.p2align	4, 0x90
.LBB6_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB6_18
	notl	%r8d
.LBB6_20:
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
	jne	.LBB6_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB6_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB6_22
.LBB6_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB6_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB6_25
.LBB6_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB6_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB6_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB6_51:
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
.LBB6_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.7(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.10(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end6:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end6-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.zero	16,47
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm0, 4(%rsp)
	movabsq	$-5625745631856551065, %r12
	movabsq	$6868962992238278726, %rbx
	movq	%rbx, %r13
	movq	%rdi, 16(%rsp)
	movq	(%rdi), %r14
	movl	760(%r14), %eax
	movq	%rax, 88(%rsp)
	leaq	488(%r14), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	512(%r14), %r15
	movq	520(%r14), %rbp
	leaq	-24(%r15), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbx, %rdx
.LBB7_1:
	andq	%rbp, %rdx
	movdqu	(%r15,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB7_2:
	testw	%si, %si
	je	.LBB7_3
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rbp, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	8(%rax,%rdi,8), %rsi
	xorq	%r12, %rsi
	movq	(%rax,%rdi,8), %r9
	xorq	%rbx, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB7_2
	jmp	.LBB7_6
	.p2align	4, 0x90
.LBB7_3:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB7_12
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB7_1
.LBB7_6:
	movq	-8(%r15,%rdi,8), %r13
.LBB7_7:
	shlq	$5, %r13
	addq	496(%r14), %r13
	leaq	152(%r14), %rcx
	leaq	216(%r14), %r9
	movq	16(%rsp), %r12
	movl	16(%r12), %ebx
	.cfi_escape 0x2e, 0x10
	leaq	112(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	8(%rsp), %r8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	20(%r12), %r14d
	movq	112(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_59
	movq	8(%r12), %r13
	movq	%r13, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB7_76
	movq	136(%rsp), %r12
	movq	88(%r12), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB7_10
	decq	%rsi
	movq	80(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r15d
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r12)
	cmpq	%r14, %rsi
	je	.LBB7_88
	jbe	.LBB7_74
	addq	%rcx, %rax
	movl	4(%rax), %r8d
	testl	%r8d, %r8d
	je	.LBB7_88
	movl	(%rax), %r9d
	movq	144(%rsp), %r10
	movq	8(%r10), %rax
	leaq	(%r9,%r9,4), %rcx
	cmpq	%r9, 16(%r10)
	jbe	.LBB7_87
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB7_87
	movl	4(%rax,%rcx,4), %edi
	cmpl	$-1, %edi
	je	.LBB7_85
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB7_87
.LBB7_59:
	movq	136(%rsp), %rsi
	movq	152(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%rsi), %rdx
	jae	.LBB7_62
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB7_62
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rdi
	xorl	%eax, %eax
	movabsq	$-9223372036854775808, %r8
	cmpq	%r8, (%rsi,%rdx)
	cmovneq	%rdi, %rax
.LBB7_62:
	movl	28(%r12), %r15d
	movl	24(%r12), %r13d
	movq	160(%rsp), %rdx
	movl	184(%rsp), %ebp
	movss	4(%rsp), %xmm0
	movss	%xmm0, 48(%rsp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 64(%rdx)
	jbe	.LBB7_67
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_67
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB7_65
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	24(%rdx), %r12
.LBB7_67:
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_68
.LBB7_69:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB7_70
.LBB7_76:
	movq	136(%rsp), %rbp
	movq	88(%rbp), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB7_77
	decq	%rsi
	movq	80(%rbp), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdi
	shlq	$4, %rdi
	movl	8(%rax,%rcx), %edx
	movups	(%rax,%rdi), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%rbp)
	cmpq	%r14, %rsi
	je	.LBB7_108
	jbe	.LBB7_80
	addq	%rcx, %rax
	movl	4(%rax), %edi
	testl	%edi, %edi
	je	.LBB7_108
	movl	(%rax), %r9d
	movq	144(%rsp), %r10
	movq	8(%r10), %rax
	leaq	(%r9,%r9,4), %rcx
	cmpq	%r9, 16(%r10)
	jbe	.LBB7_107
	cmpl	%edi, (%rax,%rcx,4)
	jne	.LBB7_107
	movl	4(%rax,%rcx,4), %r11d
	cmpl	$-1, %r11d
	je	.LBB7_105
	leaq	(%rax,%rcx,4), %rdi
	addq	$4, %rdi
	movl	8(%rdi), %esi
	movl	12(%rdi), %r8d
	jmp	.LBB7_107
.LBB7_65:
	xorl	%r12d, %r12d
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_69
	jmp	.LBB7_68
.LBB7_12:
	movq	$0, 24(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	88(%r14), %rax
	movq	%rax, 192(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%r13, %rdi
	movq	%r13, 104(%rsp)
.LBB7_13:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB7_14:
	testw	%r8w, %r8w
	je	.LBB7_15
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
	xorq	%rbx, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB7_14
	jmp	.LBB7_18
.LBB7_15:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_19
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB7_13
.LBB7_18:
	movq	-8(%rax,%r9,8), %r13
	xorl	%esi, %esi
.LBB7_36:
.Ltmp4:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp5:
	movq	40(%rsp), %rsi
.LBB7_38:
	movq	32(%rsp), %rax
	movq	%r13, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 40(%rsp)
	movq	504(%r14), %r13
	movq	%rsi, 64(%rsp)
	movdqu	24(%rsp), %xmm0
	movdqa	%xmm0, 48(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rsi
	leaq	112(%rsp), %rdi
	leaq	48(%rsp), %r8
	movl	$16, %edx
	movq	8(%rsp), %rcx
	movq	%r13, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%r13, %rax
	cmpq	488(%r14), %r13
	jne	.LBB7_41
.Ltmp7:
	.cfi_escape 0x2e, 0x00
	movq	80(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	504(%r14), %rax
	movq	512(%r14), %r15
	movq	520(%r14), %rbp
.LBB7_41:
	movq	496(%r14), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	112(%rsp), %xmm0
	movdqu	128(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%r14)
	movq	%rbp, %rcx
	andq	%rbx, %rcx
	movdqu	(%r15,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB7_44
	movl	$16, %edx
	.p2align	4, 0x90
.LBB7_43:
	addq	%rdx, %rcx
	andq	%rbp, %rcx
	movdqu	(%r15,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB7_43
.LBB7_44:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%rbp, %rax
	cmpb	$0, (%r15,%rax)
	js	.LBB7_46
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB7_46:
	cmpq	$0, 528(%r14)
	jne	.LBB7_53
	testb	$1, (%r15,%rax)
	jne	.LBB7_48
.LBB7_53:
	movzbl	(%r15,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%r14)
	leaq	-16(%rax), %rcx
	andq	%rbp, %rcx
	movb	$47, (%r15,%rax)
	movb	$47, 16(%rcx,%r15)
	incq	536(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	104(%rsp), %rcx
	movq	%rcx, -24(%r15,%rax,8)
	movq	%r12, -16(%r15,%rax,8)
	movq	%r13, -8(%r15,%rax,8)
	jmp	.LBB7_7
.LBB7_85:
.LBB7_87:
	movl	%edi, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB7_88:
	movq	120(%rsp), %rbp
	movq	88(%rbp), %r14
	cmpq	72(%rbp), %r14
	jne	.LBB7_89
	leaq	72(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%rbp), %rax
	jmp	.LBB7_91
.LBB7_89:
	movq	%r14, %rax
.LBB7_91:
	movq	80(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbp)
	movl	144(%rbp), %ebx
	movl	148(%rbp), %edx
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movl	%r13d, %ecx
	movl	%edx, %r13d
	leaq	(%rcx,%rcx,4), %rcx
	movl	%ebx, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	152(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%r12), %rdx
	jae	.LBB7_94
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB7_94
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rdi
	xorl	%eax, %eax
	movabsq	$-9223372036854775808, %r8
	cmpq	%r8, (%rsi,%rdx)
	cmovneq	%rdi, %rax
.LBB7_94:
	movq	160(%rsp), %rdx
	movl	184(%rsp), %ebp
	movss	4(%rsp), %xmm0
	movss	%xmm0, 48(%rsp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 64(%rdx)
	jbe	.LBB7_99
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_99
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB7_97
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	24(%rdx), %r12
.LBB7_99:
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_68
.LBB7_100:
	.cfi_escape 0x2e, 0x00
.LBB7_70:
	leaq	48(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_71
.LBB7_97:
	xorl	%r12d, %r12d
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_100
.LBB7_68:
	movq	8(%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	48(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12), %rax
	movl	%ebp, (%rax,%r15,4)
.LBB7_71:
	movq	80(%r12), %rax
	movl	%ebp, (%rax,%r15,4)
	movq	16(%rsp), %r12
	jmp	.LBB7_129
.LBB7_105:
.LBB7_107:
	movl	%r11d, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r8d, 16(%rax,%rcx,4)
.LBB7_108:
	movq	128(%rsp), %rcx
	movq	160(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
	leaq	48(%rsp), %rdi
	movl	%edx, 80(%rsp)
	movq	%rcx, 8(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	120(%rsp), %r12
	movl	56(%rsp), %r15d
	movq	88(%r12), %r14
	cmpq	72(%r12), %r14
	jne	.LBB7_109
	leaq	72(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%r12), %rax
	jmp	.LBB7_111
.LBB7_109:
	movq	%r14, %rax
.LBB7_111:
	movq	80(%r12), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %ebx
	movl	148(%r12), %r8d
	movq	144(%rsp), %rax
	movq	8(%rax), %rcx
	movl	%r13d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%ebx, 4(%rcx,%rdx,4)
	movl	%r14d, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpl	$0, 52(%rsp)
	je	.LBB7_116
	movl	48(%rsp), %ecx
	movq	8(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%rbp, %rcx
	cmpl	%edx, 144(%rbp)
	je	.LBB7_114
	imulq	$152, %rdx, %rcx
	addq	176(%rsp), %rcx
	cmpl	%edx, 144(%r12)
	cmoveq	%r12, %rcx
.LBB7_114:
	movl	80(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_130
	movq	80(%rcx), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB7_116:
	movq	152(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%rbp), %rdx
	movl	%r8d, 88(%rsp)
	jae	.LBB7_117
	movq	8(%rbp), %rsi
	testq	%rsi, %rsi
	movq	16(%rsp), %r12
	je	.LBB7_120
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rdi
	xorl	%eax, %eax
	movabsq	$-9223372036854775808, %r8
	cmpq	%r8, (%rsi,%rdx)
	cmovneq	%rdi, %rax
	jmp	.LBB7_120
.LBB7_117:
	movq	16(%rsp), %r12
.LBB7_120:
	movl	184(%rsp), %ebp
	movss	4(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r13d, %r13d
	movq	8(%rsp), %rsi
	cmpq	%rcx, 64(%rsi)
	jbe	.LBB7_125
	movq	56(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB7_125
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB7_123
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r13
	shlq	$5, %r13
	addq	24(%rsi), %r13
.LBB7_125:
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_126
.LBB7_127:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_128
.LBB7_123:
	xorl	%r13d, %r13d
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_127
.LBB7_126:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r13), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13), %rax
	movl	%ebp, (%rax,%r15,4)
.LBB7_128:
	movq	80(%r13), %rax
	movl	%ebp, (%rax,%r15,4)
	movl	88(%rsp), %r13d
.LBB7_129:
	movl	%ebx, 16(%r12)
	movl	%r14d, 20(%r12)
	movl	%r13d, 24(%r12)
	movl	%r15d, 28(%r12)
	addq	$200, %rsp
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
.LBB7_19:
	.cfi_def_cfa_offset 256
	movq	80(%r14), %r13
	movq	%r13, %rdx
	cmpq	64(%r14), %r13
	jne	.LBB7_22
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp1:
	movq	80(%r14), %rdx
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
.LBB7_22:
	movq	72(%r14), %rsi
	imulq	$88, %rdx, %rdi
	movq	$1, (%rsi,%rdi)
	movq	%r12, 16(%rsi,%rdi)
	movq	%rbx, 8(%rsi,%rdi)
	movq	$4, 24(%rsi,%rdi)
	movq	$4, 32(%rsi,%rdi)
	movabsq	$-9223372036854775808, %r8
	movq	%r8, 40(%rsi,%rdi)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %r8
	movq	%r8, 48(%rsi,%rdi)
	movq	$16, 56(%rsi,%rdi)
	movq	$0, 64(%rsi,%rdi)
	movw	$256, 72(%rsi,%rdi)
	movq	%r13, 80(%rsi,%rdi)
	incq	%rdx
	movq	%rdx, 80(%r14)
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB7_25
	movl	$16, %edi
.LBB7_24:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_24
.LBB7_25:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB7_27
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_27:
	cmpq	$0, 104(%r14)
	jne	.LBB7_35
	testb	$1, (%rax,%rdx)
	je	.LBB7_35
.Ltmp2:
	.cfi_escape 0x2e, 0x00
	movq	192(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp3:
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB7_33
	movl	$16, %edi
.LBB7_32:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_32
.LBB7_33:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB7_35
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_35:
	movzbl	(%rax,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 104(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$47, (%rax,%rdx)
	movb	$47, 16(%rsi,%rax)
	incq	112(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	104(%rsp), %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r12, -16(%rax,%rcx,8)
	movq	%r13, -8(%rax,%rcx,8)
	movq	40(%rsp), %rsi
	cmpq	24(%rsp), %rsi
	je	.LBB7_36
	jmp	.LBB7_38
.LBB7_48:
	leaq	512(%r14), %rdi
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	512(%r14), %r15
	movq	520(%r14), %rbp
	andq	%rbp, %rbx
	movdqu	(%r15,%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB7_51
	movl	$16, %ecx
.LBB7_50:
	addq	%rcx, %rbx
	andq	%rbp, %rbx
	movdqu	(%r15,%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB7_50
.LBB7_51:
	rep		bsfl	%eax, %eax
	addq	%rbx, %rax
	andq	%rbp, %rax
	cmpb	$0, (%r15,%rax)
	js	.LBB7_53
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB7_53
.LBB7_130:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_74:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_80:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_10:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_77:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_54:
.Ltmp9:
	movq	%rax, %rbx
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_57
	leaq	120(%rsp), %rax
	movq	%rax, 96(%rsp)
	jmp	.LBB7_56
.LBB7_58:
.Ltmp6:
	movq	%rax, %rbx
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_57
.LBB7_56:
	movq	96(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_57:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
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
	.ascii	"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 76

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"L\000\000\000\000\000\000\000\264\005\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.2,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/94ab84e/crates/bevy_ecs/src/archetype.rs"
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

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.6,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 28

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.6
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.8,"a",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 0

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.9,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.9
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"entity_insert.68026ca70d534eb1-cgu.0"
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
	movabsq	$82351536043346213, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$112, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	8(%rbx), %rcx
	imulq	$112, %rax, %rax
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
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
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	8(%rbx), %rcx
	shlq	$5, %rax
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	8(%rbx), %rcx
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
	.zero	16,70
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
	movss	%xmm0, 52(%rsp)
	movabsq	$3716170289007410329, %rbx
	movabsq	$-8320772908779911629, %rbp
	movq	%rbp, %rdx
	movq	(%rdi), %r14
	movl	848(%r14), %eax
	movl	%eax, 12(%rsp)
	movq	%rdi, 80(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, %r13d
	leaq	488(%r14), %rax
	movq	%rax, 40(%rsp)
	leaq	64(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	512(%r14), %r15
	movq	520(%r14), %r12
	leaq	-24(%r15), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, (%rsp)
	movq	%r13, 64(%rsp)
.LBB7_1:
	andq	%r12, %rdx
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
	andq	%r12, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	8(%rax,%rdi,8), %rsi
	xorq	%rbx, %rsi
	movq	(%rax,%rdi,8), %r9
	xorq	%rbp, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB7_2
	jmp	.LBB7_6
	.p2align	4, 0x90
.LBB7_3:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB7_15
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB7_1
.LBB7_6:
	movq	-8(%r15,%rdi,8), %r13
.LBB7_7:
	movq	496(%r14), %rax
	shlq	$5, %r13
	leaq	(%rax,%r13), %rdi
	movq	24(%rax,%r13), %r15
	leaq	152(%r14), %rsi
	leaq	216(%r14), %rdx
	movq	%rdi, 40(%rsp)
	movq	16(%rsp), %rcx
	movl	24(%rsp), %r12d
	movl	%r12d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
	movq	160(%r14), %rbp
	movq	64(%rsp), %r8
	leaq	(%r8,%r8,4), %rbx
	cmpl	%r12d, %eax
	movq	%rbp, 88(%rsp)
	jne	.LBB7_8
	shlq	$5, %rbx
	addq	%rbp, %rbx
	xorl	%esi, %esi
	cmpq	%r8, 168(%r14)
	cmovbeq	%rsi, %rbx
	cmpq	16(%rbx), %r15
	jae	.LBB7_65
	movq	8(%rbx), %rax
	testq	%rax, %rax
	movq	40(%rsp), %r9
	je	.LBB7_68
	shlq	$5, %r15
	leaq	(%rax,%r15), %rcx
	xorl	%esi, %esi
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, (%rax,%r15)
	cmovneq	%rcx, %rsi
	jmp	.LBB7_68
.LBB7_8:
	movl	%eax, %r13d
	shlq	$5, %rbx
	xorl	%r11d, %r11d
	cmpq	16(%rbp,%rbx), %r15
	jae	.LBB7_11
	movq	8(%rbp,%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_11
	shlq	$5, %r15
	leaq	(%rax,%r15), %rcx
	xorl	%r11d, %r11d
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, (%rax,%r15)
	cmovneq	%rcx, %r11
.LBB7_11:
	movl	148(%rbp,%rbx), %edx
	leaq	(,%r13,4), %r15
	addq	%r13, %r15
	shlq	$5, %r15
	leaq	(%r15,%rbp), %r10
	addq	$148, %r10
	movl	148(%rbp,%r15), %ecx
	movq	296(%r14), %rsi
	leaq	(%rdx,%rdx,8), %rax
	cmpl	%ecx, %edx
	movq	%r11, 72(%rsp)
	movq	%r13, 64(%rsp)
	jne	.LBB7_77
	xorl	%ecx, %ecx
	cmpq	%rdx, 304(%r14)
	leaq	(%rsi,%rax,8), %rax
	cmovaq	%rax, %rcx
	movq	%rcx, 56(%rsp)
	movq	80(%rsp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movl	20(%rax), %edi
	movq	80(%rbp,%rbx), %rax
	movq	88(%rbp,%rbx), %rsi
	decq	%rsi
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r8d
	movq	%r8, (%rsp)
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%rbp,%rbx)
	cmpq	%rdi, %rsi
	je	.LBB7_91
	jbe	.LBB7_14
	addq	%rcx, %rax
	movl	4(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB7_91
	movq	%r10, %rbx
	movl	(%rax), %r10d
	movq	8(%r14), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r14)
	jbe	.LBB7_90
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB7_90
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB7_88
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB7_90
.LBB7_77:
	movq	%r10, 24(%rsp)
	movq	%rsi, 152(%rsp)
	movq	80(%rsp), %rdx
	movq	8(%rdx), %rsi
	movq	%rsi, 16(%rsp)
	movl	20(%rdx), %edi
	movq	80(%rbp,%rbx), %rdx
	movq	88(%rbp,%rbx), %rsi
	decq	%rsi
	movq	%rdi, %r8
	shlq	$4, %r8
	movq	%rsi, %r9
	shlq	$4, %r9
	movl	8(%rdx,%r8), %r10d
	movl	%r10d, 56(%rsp)
	movups	(%rdx,%r9), %xmm0
	movups	%xmm0, (%rdx,%r8)
	movq	%rsi, 88(%rbp,%rbx)
	cmpq	%rdi, %rsi
	je	.LBB7_115
	jbe	.LBB7_14
	addq	%r8, %rdx
	movl	4(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB7_115
	movl	(%rdx), %r12d
	movq	8(%r14), %rdx
	leaq	(%r12,%r12,4), %rsi
	cmpq	%r12, 16(%r14)
	jbe	.LBB7_114
	cmpl	%r10d, (%rdx,%rsi,4)
	jne	.LBB7_114
	movl	4(%rdx,%rsi,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB7_83
	leaq	(%rdx,%rsi,4), %r10
	addq	$4, %r10
	movl	8(%r10), %r9d
	movl	12(%r10), %r11d
	jmp	.LBB7_114
.LBB7_65:
	movq	40(%rsp), %r9
.LBB7_68:
	movl	148(%rbx), %ecx
	leaq	(%rcx,%rcx,8), %rax
	shlq	$3, %rax
	addq	296(%r14), %rax
	xorl	%r15d, %r15d
	cmpq	%rcx, 304(%r14)
	cmovbeq	%r15, %rax
	movq	80(%rsp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movl	20(%rcx), %edx
	movq	%rdx, 32(%rsp)
	movl	24(%rcx), %edx
	movl	%edx, 48(%rsp)
	movl	28(%rcx), %edi
	movd	52(%rsp), %xmm0
	movd	%xmm0, 96(%rsp)
	movq	8(%r9), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 64(%rax)
	jbe	.LBB7_73
	movq	56(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB7_73
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_71
	notq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	shlq	$5, %r15
	addq	24(%rax), %r15
	jmp	.LBB7_73
.LBB7_71:
	xorl	%r15d, %r15d
.LBB7_73:
	movq	%r9, %rbp
	movq	%r8, %r12
	movq	%rdi, (%rsp)
	movq	%rsi, %rbx
	movq	8(%rsi), %rax
	cmpb	$0, (%rax)
	je	.LBB7_74
	leaq	96(%rsp), %rdx
	movq	%r15, %rdi
	movq	(%rsp), %r13
	movq	%r13, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	12(%rsp), %ecx
	jmp	.LBB7_76
.LBB7_74:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	movq	(%rsp), %r13
	imulq	%r13, %rdi
	addq	16(%r15), %rdi
	leaq	96(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
.LBB7_76:
	movq	80(%r15), %rax
	movl	%ecx, (%rax,%r13,4)
	movq	%rbx, %rdx
	jmp	.LBB7_106
.LBB7_15:
	movq	$0, 128(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$8, 136(%rsp)
	movq	$0, 144(%rsp)
	leaq	88(%r14), %rax
	movq	%rax, 88(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	(%rsp), %rdi
.LBB7_16:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB7_17:
	testw	%r8w, %r8w
	je	.LBB7_18
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%rbx, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbp, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB7_17
	jmp	.LBB7_21
.LBB7_18:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_22
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB7_16
.LBB7_21:
	movq	-8(%rax,%r9,8), %r13
.LBB7_42:
.Ltmp6:
	leaq	128(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp7:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	movq	%r13, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 144(%rsp)
	movq	504(%r14), %r13
	movq	%rcx, 176(%rsp)
	movdqu	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rsi
	leaq	96(%rsp), %rdi
	leaq	160(%rsp), %r8
	movl	$16, %edx
	movq	16(%rsp), %rcx
	movq	%r13, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%r13, %rax
	cmpq	488(%r14), %r13
	jne	.LBB7_46
.Ltmp9:
	movq	40(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp10:
	movq	504(%r14), %rax
	movq	512(%r14), %r15
	movq	520(%r14), %r12
.LBB7_46:
	movq	496(%r14), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	96(%rsp), %xmm0
	movdqu	112(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%r14)
	movq	%r12, %rcx
	andq	%rbp, %rcx
	movdqu	(%r15,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB7_49
	movl	$16, %edx
	.p2align	4, 0x90
.LBB7_48:
	addq	%rdx, %rcx
	andq	%r12, %rcx
	movdqu	(%r15,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB7_48
.LBB7_49:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r12, %rax
	cmpb	$0, (%r15,%rax)
	js	.LBB7_51
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB7_51:
	cmpq	$0, 528(%r14)
	jne	.LBB7_58
	testb	$1, (%r15,%rax)
	jne	.LBB7_53
.LBB7_58:
	movzbl	(%r15,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%r14)
	leaq	-16(%rax), %rcx
	andq	%r12, %rcx
	movb	$70, (%r15,%rax)
	movb	$70, 16(%rcx,%r15)
	incq	536(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	(%rsp), %rcx
	movq	%rcx, -24(%r15,%rax,8)
	movq	%rbx, -16(%r15,%rax,8)
	movq	%r13, -8(%r15,%rax,8)
	jmp	.LBB7_7
.LBB7_88:
.LBB7_90:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
	movq	%rbx, %r10
.LBB7_91:
	movq	16(%rsp), %r12
	shrq	$32, %r12
	leaq	(%r15,%rbp), %rbx
	addq	$88, %rbx
	movq	88(%rbp,%r15), %r13
	cmpq	72(%rbp,%r15), %r13
	jne	.LBB7_92
	leaq	(%r15,%rbp), %rdi
	addq	$72, %rdi
	movq	%r13, %rsi
	movq	%r10, 24(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	24(%rsp), %r10
	movq	72(%rsp), %r11
	movq	(%rbx), %rax
	jmp	.LBB7_94
.LBB7_92:
	movq	%r13, %rax
.LBB7_94:
	movq	80(%rbp,%r15), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	16(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%r12d, 4(%rcx,%rdx)
	movq	(%rsp), %rdi
	movl	%edi, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, (%rbx)
	movq	%rdi, %rbx
	movl	144(%rbp,%r15), %edx
	movl	(%r10), %edi
	movq	8(%r14), %rax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edx, 24(%rsp)
	movl	%edx, 4(%rax,%rcx,4)
	movq	%r13, 32(%rsp)
	movl	%r13d, 8(%rax,%rcx,4)
	movl	%edi, 48(%rsp)
	movl	%edi, 12(%rax,%rcx,4)
	movl	%ebx, 16(%rax,%rcx,4)
	movd	52(%rsp), %xmm0
	movd	%xmm0, 96(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, %r13
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%r15d, %r15d
	movq	56(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB7_95
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	movq	64(%rsp), %r12
	je	.LBB7_100
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_98
	notq	%rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	addq	24(%rdx), %r15
	movq	8(%r11), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_103
	jmp	.LBB7_101
.LBB7_95:
	movq	64(%rsp), %r12
.LBB7_100:
	movq	8(%r11), %rax
	cmpb	$0, (%rax)
	je	.LBB7_101
.LBB7_103:
	leaq	96(%rsp), %rdx
	jmp	.LBB7_104
.LBB7_98:
	xorl	%r15d, %r15d
	movq	8(%r11), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_103
.LBB7_101:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15), %rdi
	leaq	96(%rsp), %rsi
	jmp	.LBB7_102
.LBB7_83:
.LBB7_114:
	movl	%r8d, 4(%rdx,%rsi,4)
	movl	%edi, 8(%rdx,%rsi,4)
	movl	%r9d, 12(%rdx,%rsi,4)
	movl	%r11d, 16(%rdx,%rsi,4)
.LBB7_115:
	leaq	(%rcx,%rcx,8), %rcx
	movq	152(%rsp), %rdx
	movq	%rcx, 192(%rsp)
	leaq	(%rdx,%rcx,8), %rcx
	leaq	(%rdx,%rax,8), %rsi
	movq	16(%rsp), %r13
	shrq	$32, %r13
	leaq	96(%rsp), %rdi
	movl	56(%rsp), %edx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	104(%rsp), %eax
	movq	%rax, (%rsp)
	leaq	(%r15,%rbp), %r9
	addq	$88, %r9
	movq	88(%rbp,%r15), %r12
	cmpq	72(%rbp,%r15), %r12
	jne	.LBB7_116
	leaq	(%r15,%rbp), %rdi
	addq	$72, %rdi
	movq	%r12, %rsi
	movq	%r9, 32(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	32(%rsp), %r9
	movq	(%r9), %rax
	jmp	.LBB7_118
.LBB7_116:
	movq	%r12, %rax
.LBB7_118:
	movq	24(%rsp), %r8
	movq	80(%rbp,%r15), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	16(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%r13d, 4(%rcx,%rdx)
	movq	(%rsp), %rdi
	movl	%edi, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, (%r9)
	movl	144(%rbp,%r15), %edx
	movl	(%r8), %r8d
	movq	8(%r14), %rax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edx, 24(%rsp)
	movl	%edx, 4(%rax,%rcx,4)
	movq	%r12, 32(%rsp)
	movl	%r12d, 8(%rax,%rcx,4)
	movl	%r8d, 48(%rsp)
	movl	%r8d, 12(%rax,%rcx,4)
	movl	%edi, 16(%rax,%rcx,4)
	movl	100(%rsp), %edi
	testl	%edi, %edi
	movq	64(%rsp), %r12
	movq	40(%rsp), %r11
	movq	72(%rsp), %r10
	je	.LBB7_129
	movq	%r9, %r13
	movl	96(%rsp), %r9d
	movq	8(%r14), %rdx
	leaq	(%r9,%r9,4), %rsi
	cmpq	%r9, 16(%r14)
	jbe	.LBB7_124
	cmpl	%edi, (%rdx,%rsi,4)
	jne	.LBB7_124
	movl	4(%rdx,%rsi,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB7_122
	leaq	(%rdx,%rsi,4), %rdi
	addq	$4, %rdi
	movl	4(%rdi), %eax
	movl	8(%rdi), %r8d
	jmp	.LBB7_124
.LBB7_122:
.LBB7_124:
	movl	%ecx, 4(%rdx,%rsi,4)
	movl	%eax, 8(%rdx,%rsi,4)
	movl	%r8d, 12(%rdx,%rsi,4)
	movl	56(%rsp), %edi
	movl	%edi, 16(%rdx,%rsi,4)
	cmpl	%ecx, 144(%rbp,%rbx)
	jne	.LBB7_125
	leaq	(%rbx,%rbp), %rcx
	addq	$88, %rcx
	movl	%eax, %edi
	movq	(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_142
	leaq	(%rbx,%rbp), %rax
	addq	$80, %rax
	jmp	.LBB7_128
.LBB7_125:
	leaq	(%r15,%rbp), %rdx
	addq	$144, %rdx
	cmpl	%ecx, (%rdx)
	jne	.LBB7_126
	movl	%eax, %edi
	movq	(%r13), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_142
	leaq	(%r15,%rbp), %rax
	addq	$80, %rax
	jmp	.LBB7_128
.LBB7_126:
	movl	%ecx, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$5, %rcx
	movl	%eax, %edi
	movq	88(%rbp,%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_142
	leaq	(%rcx,%rbp), %rax
	addq	$72, %rax
	addq	$8, %rax
.LBB7_128:
	movq	(%rax), %rax
	shlq	$4, %rdi
	movl	56(%rsp), %ecx
	movl	%ecx, 8(%rax,%rdi)
.LBB7_129:
	movd	52(%rsp), %xmm0
	movd	%xmm0, 160(%rsp)
	movq	8(%r11), %rax
	movq	(%rax), %rax
	xorl	%r15d, %r15d
	movq	152(%rsp), %rdx
	movq	192(%rsp), %rsi
	cmpq	%rax, 64(%rdx,%rsi,8)
	jbe	.LBB7_130
	movq	56(%rdx,%rsi,8), %rcx
	testq	%rcx, %rcx
	movq	(%rsp), %rbx
	je	.LBB7_135
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_133
	leaq	(%rdx,%rsi,8), %rcx
	addq	$24, %rcx
	notq	%rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	addq	(%rcx), %r15
	movq	%r11, %r13
	movq	8(%r10), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_137
	jmp	.LBB7_136
.LBB7_130:
	movq	(%rsp), %rbx
.LBB7_135:
	movq	%r11, %r13
	movq	8(%r10), %rax
	cmpb	$0, (%rax)
	je	.LBB7_136
.LBB7_137:
	leaq	160(%rsp), %rdx
.LBB7_104:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	12(%rsp), %ecx
	jmp	.LBB7_105
.LBB7_133:
	xorl	%r15d, %r15d
	movq	%r11, %r13
	movq	8(%r10), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_137
.LBB7_136:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15), %rdi
	leaq	160(%rsp), %rsi
.LBB7_102:
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB7_105:
	movq	80(%r15), %rax
	movl	%ecx, (%rax,%rbx,4)
	movq	72(%rsp), %rdx
	movq	%r13, %rbp
.LBB7_106:
	leaq	(%r12,%r12,4), %rcx
	shlq	$5, %rcx
	movq	88(%rsp), %rsi
	movl	152(%rsi,%rcx), %eax
	testb	$1, %al
	je	.LBB7_144
	leaq	(%rsi,%rcx), %rbx
	addq	$152, %rbx
	movq	8(%rbp), %r15
	movq	16(%rbp), %rax
	movq	8(%rdx), %rbp
	movq	16(%rdx), %r13
	cmpq	%r13, %rax
	cmovbq	%rax, %r13
	xorl	%r12d, %r12d
.LBB7_108:
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB7_109:
	cmpq	%r13, %rax
	jae	.LBB7_143
	leaq	1(%rax), %r12
	cmpb	$0, (%rbp,%rax)
	movq	%r12, %rax
	jne	.LBB7_109
	movq	-8(%r15,%r12,8), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	88(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_108
	movq	%r14, %rdi
	movq	16(%rsp), %rsi
	callq	*%rax
	jmp	.LBB7_108
.LBB7_143:
	movl	(%rbx), %eax
	movq	40(%rsp), %rbp
.LBB7_144:
	testb	$2, %al
	movq	16(%rsp), %r13
	je	.LBB7_150
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB7_150
	movq	8(%rbp), %r15
	shlq	$3, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB7_147
	.p2align	4, 0x90
.LBB7_149:
	addq	$8, %r12
	cmpq	%r12, %rbx
	je	.LBB7_150
.LBB7_147:
	movq	(%r15,%r12), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	96(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_149
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*%rax
	jmp	.LBB7_149
.LBB7_150:
	movq	80(%rsp), %rax
	movl	24(%rsp), %ecx
	movl	%ecx, 16(%rax)
	movq	32(%rsp), %rcx
	movl	%ecx, 20(%rax)
	movl	48(%rsp), %ecx
	movl	%ecx, 24(%rax)
	movq	(%rsp), %rcx
	movl	%ecx, 28(%rax)
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
.LBB7_22:
	.cfi_def_cfa_offset 256
	movq	80(%r14), %r13
	movq	%r13, %rsi
	cmpq	64(%r14), %r13
	jne	.LBB7_25
.Ltmp0:
	movq	16(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp1:
	movq	80(%r14), %rsi
.LBB7_25:
	movq	72(%r14), %rax
	imulq	$112, %rsi, %rcx
	movq	$1, (%rax,%rcx)
	movq	%rbx, 16(%rax,%rcx)
	movq	%rbp, 8(%rax,%rcx)
	movq	$4, 24(%rax,%rcx)
	movq	$4, 32(%rax,%rcx)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 40(%rax,%rcx)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movq	$16, 56(%rax,%rcx)
	movq	$0, 64(%rax,%rcx)
	movw	$256, 72(%rax,%rcx)
	movq	%r13, 80(%rax,%rcx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rax,%rcx)
	movq	$0, 104(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 80(%r14)
	cmpq	%rsi, %r13
	jae	.LBB7_26
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbp, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB7_31
	movl	$16, %edi
.LBB7_30:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_30
.LBB7_31:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB7_33
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_33:
	cmpq	$0, 104(%r14)
	jne	.LBB7_41
	testb	$1, (%rax,%rdx)
	je	.LBB7_41
.Ltmp4:
	movq	88(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp5:
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbp, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB7_39
	movl	$16, %edi
.LBB7_38:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_38
.LBB7_39:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB7_41
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_41:
	movzbl	(%rax,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 104(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$70, (%rax,%rdx)
	movb	$70, 16(%rsi,%rax)
	incq	112(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	(%rsp), %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%rbx, -16(%rax,%rcx,8)
	movq	%r13, -8(%rax,%rcx,8)
	jmp	.LBB7_42
.LBB7_53:
	leaq	512(%r14), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	512(%r14), %r15
	movq	520(%r14), %r12
	andq	%r12, %rbp
	movdqu	(%r15,%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB7_56
	movl	$16, %ecx
.LBB7_55:
	addq	%rcx, %rbp
	andq	%r12, %rbp
	movdqu	(%r15,%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB7_55
.LBB7_56:
	rep		bsfl	%eax, %eax
	addq	%rbp, %rax
	andq	%r12, %rax
	cmpb	$0, (%r15,%rax)
	js	.LBB7_58
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB7_58
.LBB7_14:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_142:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_26:
.Ltmp2:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%r13, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp3:
	ud2
.LBB7_59:
.Ltmp11:
	movq	%rax, %rbx
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_62
	leaq	104(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB7_61
.LBB7_63:
.Ltmp8:
	movq	%rax, %rbx
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_62
.LBB7_61:
	movq	32(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_62:
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
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp7-.Lfunc_begin0
	.uleb128 .Ltmp9-.Ltmp7
	.byte	0
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin0
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp11-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin0
	.uleb128 .Ltmp0-.Ltmp10
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp0
	.uleb128 .Ltmp8-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp5-.Lfunc_begin0
	.uleb128 .Ltmp2-.Ltmp5
	.byte	0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp8-.Lfunc_begin0
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/da3e744/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"_\000\000\000\000\000\000\000\340\001\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"_\000\000\000\000\000\000\000\016\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.4,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/da3e744/crates/bevy_ecs/src/component.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.4
	.asciz	"_\000\000\000\000\000\000\000*\002\000\0008\000\000"
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

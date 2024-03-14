	.text
	.file	"entity_insert.d3dfcde65a057069-cgu.0"
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
	shlq	$5, %rax
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	8(%rbx), %rcx
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.26(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.28(%rip), %rsi
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
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.25(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.26(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.28(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end6:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end6-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.zero	16,11
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm0, 44(%rsp)
	movabsq	$2032348172857953557, %r15
	movabsq	$1727765996677405997, %rbx
	movq	%rbx, %rbp
	movq	(%rdi), %r14
	movl	848(%r14), %eax
	movl	%eax, 4(%rsp)
	movl	16(%rdi), %r11d
	leaq	488(%r14), %rax
	movq	%rax, 32(%rsp)
	leaq	64(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	512(%r14), %r13
	movq	520(%r14), %r12
	leaq	-24(%r13), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI7_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbx, %rdx
	movq	%rdi, 64(%rsp)
	movq	%r11, 24(%rsp)
.LBB7_1:
	andq	%r12, %rdx
	movdqu	(%r13,%rdx), %xmm2
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
	leaq	(%rsi,%rsi,2), %r10
	movq	8(%rax,%r10,8), %rsi
	xorq	%r15, %rsi
	movq	(%rax,%r10,8), %r9
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
	jne	.LBB7_20
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB7_1
.LBB7_6:
	movq	-8(%r13,%r10,8), %rbp
.LBB7_7:
	movq	496(%r14), %rax
	shlq	$5, %rbp
	leaq	(%rax,%rbp), %r12
	movq	24(%rax,%rbp), %r15
	leaq	152(%r14), %rsi
	leaq	216(%r14), %rdx
	movq	%r12, %rdi
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rbp
	movl	%ebp, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
	cmpl	%ebp, %eax
	movq	%r12, 56(%rsp)
	jne	.LBB7_8
	movq	168(%r14), %rsi
	cmpq	%rbp, %rsi
	movq	64(%rsp), %r9
	jbe	.LBB7_181
	movq	160(%r14), %r8
	leaq	(,%rbp,4), %r13
	addq	%rbp, %r13
	shlq	$5, %r13
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)
	cmpq	16(%r8,%r13), %r15
	jae	.LBB7_80
	movq	8(%r8,%r13), %rax
	testq	%rax, %rax
	je	.LBB7_80
	shlq	$5, %r15
	leaq	(%rax,%r15), %rcx
	xorl	%esi, %esi
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, (%rax,%r15)
	cmovneq	%rcx, %rsi
	movq	%rsi, 16(%rsp)
.LBB7_80:
	movl	148(%r8,%r13), %edi
	movq	304(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_81
	movq	296(%r14), %rax
	movq	8(%r9), %rcx
	movq	%rcx, 8(%rsp)
	movl	20(%r9), %ecx
	movq	%rcx, 48(%rsp)
	movl	24(%r9), %ecx
	movl	%ecx, (%rsp)
	movl	28(%r9), %ebx
	movd	44(%rsp), %xmm0
	movd	%xmm0, 72(%rsp)
	movq	8(%r12), %rcx
	movq	(%rcx), %rdx
	leaq	(%rdi,%rdi,8), %rcx
	xorl	%r15d, %r15d
	cmpq	%rdx, 64(%rax,%rcx,8)
	jbe	.LBB7_99
	movq	56(%rax,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB7_99
	movq	(%rsi,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB7_97
	leaq	(%rax,%rcx,8), %rax
	addq	$24, %rax
	notq	%rdx
	leaq	(%rdx,%rdx,2), %r15
	shlq	$5, %r15
	addq	(%rax), %r15
	jmp	.LBB7_99
.LBB7_8:
	movq	160(%r14), %rdi
	movq	168(%r14), %rcx
	movl	%eax, %esi
	movq	64(%rsp), %r13
	jae	.LBB7_9
	cmpq	%rbp, %rcx
	jb	.LBB7_180
	je	.LBB7_75
	leaq	(,%rbp,4), %rbx
	addq	%rbp, %rbx
	shlq	$5, %rbx
	addq	%rdi, %rbx
	leaq	(%rsi,%rsi,4), %r11
	shlq	$5, %r11
	addq	%rdi, %r11
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)
	cmpq	16(%rbx), %r15
	jb	.LBB7_14
	jmp	.LBB7_16
.LBB7_9:
	cmpq	%rsi, %rcx
	jb	.LBB7_179
	cmpl	%ebp, %eax
	jbe	.LBB7_72
	cmpq	%rsi, %rcx
	je	.LBB7_73
	leaq	(%rsi,%rsi,4), %r11
	shlq	$5, %r11
	addq	%rdi, %r11
	leaq	(,%rbp,4), %rbx
	addq	%rbp, %rbx
	shlq	$5, %rbx
	addq	%rdi, %rbx
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)
	cmpq	16(%rbx), %r15
	jae	.LBB7_16
.LBB7_14:
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_16
	shlq	$5, %r15
	leaq	(%rax,%r15), %rcx
	xorl	%esi, %esi
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, (%rax,%r15)
	cmovneq	%rcx, %rsi
	movq	%rsi, 16(%rsp)
.LBB7_16:
	movl	148(%rbx), %r15d
	movl	148(%r11), %eax
	cmpl	%eax, %r15d
	movq	%r11, 24(%rsp)
	jne	.LBB7_17
	movq	304(%r14), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB7_93
	movl	20(%r13), %edi
	movq	88(%rbx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_184
	movq	296(%r14), %r8
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	decq	%rsi
	movq	80(%rbx), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r9d
	movq	%r9, 32(%rsp)
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%rbx)
	cmpq	%rdi, %rsi
	je	.LBB7_120
	jbe	.LBB7_185
	addq	%rcx, %rax
	movl	4(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB7_120
	movq	%r8, %rbx
	movl	(%rax), %r10d
	movq	8(%r14), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r14)
	jbe	.LBB7_119
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB7_119
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB7_110
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB7_119
.LBB7_17:
	movq	296(%r14), %rcx
	movq	304(%r14), %rdx
	cmpl	%eax, %r15d
	jbe	.LBB7_18
	cmpq	%r15, %rdx
	jb	.LBB7_182
	je	.LBB7_91
	leaq	(%r15,%r15,8), %rdx
	leaq	(%rcx,%rdx,8), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%rcx,%rax,8), %r10
	jmp	.LBB7_88
.LBB7_18:
	cmpq	%rax, %rdx
	jb	.LBB7_19
	cmpl	%r15d, %eax
	jbe	.LBB7_183
	cmpq	%rax, %rdx
	je	.LBB7_90
	leaq	(%rax,%rax,8), %rax
	leaq	(%rcx,%rax,8), %r10
	leaq	(%r15,%r15,8), %rax
	leaq	(%rcx,%rax,8), %rsi
.LBB7_88:
	movq	%rdi, 152(%rsp)
	movl	20(%r13), %edi
	movq	88(%rbx), %rax
	cmpq	%rdi, %rax
	jbe	.LBB7_89
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rsp)
	decq	%rax
	movq	80(%rbx), %rcx
	movq	%rdi, %rdx
	shlq	$4, %rdx
	movq	%rax, %r8
	shlq	$4, %r8
	movl	8(%rcx,%rdx), %ebp
	movups	(%rcx,%r8), %xmm0
	movups	%xmm0, (%rcx,%rdx)
	movq	%rax, 88(%rbx)
	cmpq	%rdi, %rax
	je	.LBB7_143
	jbe	.LBB7_186
	addq	%rdx, %rcx
	movl	4(%rcx), %r9d
	testl	%r9d, %r9d
	je	.LBB7_143
	movq	%r10, %r15
	movl	(%rcx), %r11d
	movq	8(%r14), %rax
	leaq	(%r11,%r11,4), %rcx
	cmpq	%r11, 16(%r14)
	jbe	.LBB7_142
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB7_142
	movl	4(%rax,%rcx,4), %edx
	cmpl	$-1, %edx
	je	.LBB7_117
	leaq	(%rax,%rcx,4), %r9
	addq	$4, %r9
	movl	8(%r9), %r8d
	movl	12(%r9), %r10d
	jmp	.LBB7_142
.LBB7_97:
	xorl	%r15d, %r15d
.LBB7_99:
	movq	%r8, %r12
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_100
	leaq	72(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	4(%rsp), %ecx
	jmp	.LBB7_102
.LBB7_100:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15), %rdi
	leaq	72(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB7_102:
	movq	%r12, %r8
	addq	%r13, %r8
	movq	80(%r15), %rax
	movl	%ecx, (%rax,%rbx,4)
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	movq	%rbx, 32(%rsp)
	movl	152(%r8), %eax
	testb	$1, %al
	jne	.LBB7_135
	jmp	.LBB7_172
.LBB7_20:
	movq	$0, 104(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	$8, 112(%rsp)
	movq	$0, 120(%rsp)
	leaq	88(%r14), %rax
	movq	%rax, 56(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, 16(%rsp)
.LBB7_21:
	andq	%rcx, %rbp
	movdqu	(%rax,%rbp), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB7_22:
	testw	%r8w, %r8w
	je	.LBB7_23
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rbp, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r15, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbx, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB7_22
	jmp	.LBB7_26
.LBB7_23:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB7_27
	addq	%rsi, %rbp
	addq	$16, %rbp
	addq	$16, %rsi
	jmp	.LBB7_21
.LBB7_26:
	movq	-8(%rax,%r9,8), %rbp
.LBB7_47:
.Ltmp6:
	leaq	104(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp7:
	movq	112(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rbp, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 120(%rsp)
	movq	504(%r14), %rbp
	movq	%rcx, 144(%rsp)
	movdqu	104(%rsp), %xmm0
	movdqa	%xmm0, 128(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %rsi
	leaq	72(%rsp), %rdi
	leaq	128(%rsp), %r8
	movl	$16, %edx
	movq	8(%rsp), %rcx
	movq	%rbp, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%rbp, %rax
	cmpq	488(%r14), %rbp
	jne	.LBB7_51
.Ltmp9:
	movq	32(%rsp), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp10:
	movq	504(%r14), %rax
	movq	512(%r14), %r13
	movq	520(%r14), %r12
.LBB7_51:
	movq	496(%r14), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	72(%rsp), %xmm0
	movdqu	88(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%r14)
	movq	%r12, %rcx
	andq	%rbx, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB7_54
	movl	$16, %edx
	.p2align	4, 0x90
.LBB7_53:
	addq	%rdx, %rcx
	andq	%r12, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB7_53
.LBB7_54:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r12, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB7_56
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB7_56:
	cmpq	$0, 528(%r14)
	jne	.LBB7_63
	testb	$1, (%r13,%rax)
	jne	.LBB7_58
.LBB7_63:
	movzbl	(%r13,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%r14)
	leaq	-16(%rax), %rcx
	andq	%r12, %rcx
	movb	$11, (%r13,%rax)
	movb	$11, 16(%rcx,%r13)
	incq	536(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, -24(%r13,%rax,8)
	movq	%r15, -16(%r13,%rax,8)
	movq	%rbp, -8(%r13,%rax,8)
	jmp	.LBB7_7
.LBB7_110:
.LBB7_119:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
	movq	%rbx, %r8
.LBB7_120:
	movq	8(%rsp), %rbx
	shrq	$32, %rbx
	movq	88(%r11), %r12
	cmpq	72(%r11), %r12
	jne	.LBB7_121
	leaq	72(%r11), %rdi
	movq	%r12, %rsi
	movq	%r8, %rbp
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%rbp, %r8
	movq	24(%rsp), %r11
	movq	88(%r11), %rax
	jmp	.LBB7_123
.LBB7_121:
	movq	%r12, %rax
.LBB7_123:
	movq	80(%r11), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	8(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movq	32(%rsp), %rbx
	movl	%ebx, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r11)
	movl	144(%r11), %ebp
	movl	148(%r11), %edx
	movq	8(%r14), %rax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%ebp, 4(%rax,%rcx,4)
	movq	%r12, 48(%rsp)
	movl	%r12d, 8(%rax,%rcx,4)
	movl	%edx, (%rsp)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%ebx, 16(%rax,%rcx,4)
	movd	44(%rsp), %xmm0
	movd	%xmm0, 72(%rsp)
	movq	56(%rsp), %r12
	movq	8(%r12), %rax
	movq	(%rax), %rcx
	leaq	(%r15,%r15,8), %rax
	xorl	%r15d, %r15d
	cmpq	%rcx, 64(%r8,%rax,8)
	jbe	.LBB7_128
	movq	56(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB7_128
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_126
	leaq	(%r8,%rax,8), %rax
	addq	$24, %rax
	notq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	shlq	$5, %r15
	addq	(%rax), %r15
.LBB7_128:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_129
.LBB7_131:
	leaq	72(%rsp), %rdx
	jmp	.LBB7_132
.LBB7_126:
	xorl	%r15d, %r15d
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_131
.LBB7_129:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15), %rdi
	leaq	72(%rsp), %rsi
	jmp	.LBB7_130
.LBB7_117:
.LBB7_142:
	movl	%edx, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%r8d, 12(%rax,%rcx,4)
	movl	%r10d, 16(%rax,%rcx,4)
	movq	%r15, %r10
.LBB7_143:
	movq	8(%rsp), %r15
	shrq	$32, %r15
	leaq	72(%rsp), %rdi
	movl	%ebp, %edx
	movq	%r10, 160(%rsp)
	movq	%r10, %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	80(%rsp), %eax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %r10
	movq	88(%r10), %rsi
	cmpq	72(%r10), %rsi
	movl	%ebp, (%rsp)
	jne	.LBB7_144
	leaq	72(%r10), %rdi
	movq	%rsi, %r12
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	24(%rsp), %r10
	movq	88(%r10), %rax
	jmp	.LBB7_146
.LBB7_144:
	movq	%rsi, %r12
	movq	%rsi, %rax
.LBB7_146:
	movq	80(%r10), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	8(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%r15d, 4(%rcx,%rdx)
	movq	32(%rsp), %rdi
	movl	%edi, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r10)
	movl	144(%r10), %ebp
	movl	148(%r10), %r11d
	movq	8(%r14), %rax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%ebp, 4(%rax,%rcx,4)
	movq	%r12, 48(%rsp)
	movl	%r12d, 8(%rax,%rcx,4)
	movl	%r11d, 12(%rax,%rcx,4)
	movl	%edi, 16(%rax,%rcx,4)
	movl	76(%rsp), %edi
	testl	%edi, %edi
	movq	56(%rsp), %r12
	je	.LBB7_157
	movl	72(%rsp), %r9d
	movq	8(%r14), %rdx
	leaq	(%r9,%r9,4), %rsi
	cmpq	%r9, 16(%r14)
	jbe	.LBB7_152
	cmpl	%edi, (%rdx,%rsi,4)
	jne	.LBB7_152
	movl	4(%rdx,%rsi,4), %eax
	cmpl	$-1, %eax
	je	.LBB7_150
	leaq	(%rdx,%rsi,4), %rdi
	addq	$4, %rdi
	movl	4(%rdi), %ecx
	movl	8(%rdi), %r8d
	jmp	.LBB7_152
.LBB7_150:
.LBB7_152:
	movl	%eax, 4(%rdx,%rsi,4)
	movl	%ecx, 8(%rdx,%rsi,4)
	movl	%r8d, 12(%rdx,%rsi,4)
	movl	(%rsp), %edi
	movl	%edi, 16(%rdx,%rsi,4)
	cmpl	%eax, 144(%rbx)
	jne	.LBB7_153
	movl	%ecx, %edi
	movq	88(%rbx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_170
	addq	$80, %rbx
	jmp	.LBB7_156
.LBB7_153:
	cmpl	%eax, 144(%r10)
	jne	.LBB7_154
	movl	%ecx, %edi
	movq	88(%r10), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_170
	leaq	80(%r10), %rbx
	jmp	.LBB7_156
.LBB7_154:
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movl	%ecx, %edi
	movq	152(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_170
	leaq	(%rcx,%rax), %rbx
	addq	$72, %rbx
	addq	$8, %rbx
.LBB7_156:
	movq	(%rbx), %rax
	shlq	$4, %rdi
	movl	(%rsp), %ecx
	movl	%ecx, 8(%rax,%rdi)
.LBB7_157:
	movl	%r11d, (%rsp)
	movd	44(%rsp), %xmm0
	movd	%xmm0, 128(%rsp)
	movq	8(%r12), %rax
	movq	(%rax), %rax
	xorl	%r15d, %r15d
	movq	160(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB7_158
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %rbx
	je	.LBB7_163
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_161
	notq	%rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	addq	24(%rdx), %r15
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_165
	jmp	.LBB7_164
.LBB7_158:
	movq	32(%rsp), %rbx
.LBB7_163:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_164
.LBB7_165:
	leaq	128(%rsp), %rdx
.LBB7_132:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	4(%rsp), %ecx
	jmp	.LBB7_133
.LBB7_161:
	xorl	%r15d, %r15d
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB7_165
.LBB7_164:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15), %rdi
	leaq	128(%rsp), %rsi
.LBB7_130:
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB7_133:
	movq	80(%r15), %rax
	movl	%ecx, (%rax,%rbx,4)
	movq	24(%rsp), %r8
	movq	%rbx, 32(%rsp)
	movl	152(%r8), %eax
	testb	$1, %al
	je	.LBB7_172
.LBB7_135:
	movq	%rbp, 24(%rsp)
	movq	%r12, %rax
	movq	8(%r12), %rbx
	movq	16(%r12), %rax
	movq	16(%rsp), %rcx
	movq	8(%rcx), %r15
	movq	16(%rcx), %rbp
	cmpq	%rbp, %rax
	cmovbq	%rax, %rbp
	xorl	%r13d, %r13d
.LBB7_136:
	movq	%r13, %rax
	.p2align	4, 0x90
.LBB7_137:
	cmpq	%rbp, %rax
	jae	.LBB7_171
	leaq	1(%rax), %r13
	cmpb	$0, (%r15,%rax)
	movq	%r13, %rax
	jne	.LBB7_137
	movq	-8(%rbx,%r13,8), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	88(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_136
	movq	%r14, %rdi
	movq	8(%rsp), %rsi
	movq	%r8, %r12
	callq	*%rax
	movq	%r12, %r8
	jmp	.LBB7_136
.LBB7_171:
	movl	152(%r8), %eax
	movq	64(%rsp), %r13
	movq	24(%rsp), %rbp
	movq	56(%rsp), %r12
.LBB7_172:
	testb	$2, %al
	je	.LBB7_178
	movq	16(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB7_178
	movq	8(%r12), %r15
	shlq	$3, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB7_175
	.p2align	4, 0x90
.LBB7_177:
	addq	$8, %r12
	cmpq	%r12, %rbx
	je	.LBB7_178
.LBB7_175:
	movq	(%r15,%r12), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	96(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_177
	movq	%r14, %rdi
	movq	8(%rsp), %rsi
	callq	*%rax
	jmp	.LBB7_177
.LBB7_178:
	movl	%ebp, 16(%r13)
	movq	48(%rsp), %rax
	movl	%eax, 20(%r13)
	movl	(%rsp), %eax
	movl	%eax, 24(%r13)
	movq	32(%rsp), %rax
	movl	%eax, 28(%r13)
	addq	$168, %rsp
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
.LBB7_27:
	.cfi_def_cfa_offset 224
	movq	80(%r14), %rbp
	movq	%rbp, %rsi
	cmpq	64(%r14), %rbp
	jne	.LBB7_30
.Ltmp0:
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp1:
	movq	80(%r14), %rsi
.LBB7_30:
	movq	72(%r14), %rax
	imulq	$112, %rsi, %rcx
	movq	$1, (%rax,%rcx)
	movq	%r15, 16(%rax,%rcx)
	movq	%rbx, 8(%rax,%rcx)
	movq	$4, 24(%rax,%rcx)
	movq	$4, 32(%rax,%rcx)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 40(%rax,%rcx)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.9(%rip), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movq	$16, 56(%rax,%rcx)
	movq	$0, 64(%rax,%rcx)
	movw	$256, 72(%rax,%rcx)
	movq	%rbp, 80(%rax,%rcx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rax,%rcx)
	movq	$0, 104(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 80(%r14)
	cmpq	%rsi, %rbp
	jae	.LBB7_31
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB7_36
	movl	$16, %edi
.LBB7_35:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_35
.LBB7_36:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB7_38
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_38:
	cmpq	$0, 104(%r14)
	jne	.LBB7_46
	testb	$1, (%rax,%rdx)
	je	.LBB7_46
.Ltmp4:
	movq	56(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp5:
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB7_44
	movl	$16, %edi
.LBB7_43:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_43
.LBB7_44:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB7_46
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_46:
	movzbl	(%rax,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 104(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$11, (%rax,%rdx)
	movb	$11, 16(%rsi,%rax)
	incq	112(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	16(%rsp), %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%r15, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	jmp	.LBB7_47
.LBB7_58:
	leaq	512(%r14), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	512(%r14), %r13
	movq	520(%r14), %r12
	andq	%r12, %rbx
	movdqu	(%r13,%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB7_61
	movl	$16, %ecx
.LBB7_60:
	addq	%rcx, %rbx
	andq	%r12, %rbx
	movdqu	(%r13,%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB7_60
.LBB7_61:
	rep		bsfl	%eax, %eax
	addq	%rbx, %rax
	andq	%r12, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB7_63
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB7_63
.LBB7_181:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.5(%rip), %rdx
	movq	%rbp, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_81:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.6(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_75:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.20(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_72:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.17(%rip), %rdx
	movq	%rbp, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_73:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.18(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_93:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.4(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_170:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.8(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_91:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.15(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_183:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.12(%rip), %rdx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_185:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.21(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_90:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.13(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_186:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.21(%rip), %rdx
	movq	%rax, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_31:
.Ltmp2:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.23(%rip), %rdx
	movq	%rbp, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp3:
	ud2
.LBB7_180:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.19(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB7_179:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.16(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB7_184:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_89:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdx
	movq	%rax, %rsi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB7_182:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.14(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB7_19:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rdi
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.11(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB7_64:
.Ltmp11:
	movq	%rax, %rbx
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_67
	leaq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB7_66
.LBB7_68:
.Ltmp8:
	movq	%rax, %rbx
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_67
.LBB7_66:
	movq	48(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_67:
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
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 35

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.1,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.ascii	"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/alloc/src/vec/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 76

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.1
	.asciz	"L\000\000\000\000\000\000\000\264\005\000\000\r\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.3,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/bundle.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 92

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.4,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.4:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.3
	.asciz	"\\\000\000\000\000\000\000\000X\002\000\0007\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.4, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.5,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.5:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.3
	.asciz	"\\\000\000\000\000\000\000\0008\002\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.5, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.6,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.6:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.3
	.asciz	"\\\000\000\000\000\000\000\000A\002\000\0003\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.6, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.7,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.7,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.7:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.7, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.8,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.8:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\337\001\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.8, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.9,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.9:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.9, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.10,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.10,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.10:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.10, 99

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.11,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.11:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.10
	.asciz	"c\000\000\000\000\000\000\000Q\003\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.11, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.12,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.12:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.10
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.12, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.13,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.13:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.10
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000/\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.13, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.14,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.14:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.10
	.asciz	"c\000\000\000\000\000\000\000N\003\000\0002\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.14, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.15,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.15:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.10
	.asciz	"c\000\000\000\000\000\000\000O\003\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.15, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.16,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.16:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\366\002\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.16, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.17,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.17:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\367\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.17, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.18,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.18:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\367\002\000\000,\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.18, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.19,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.19:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\363\002\000\0006\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.19, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.20,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.20:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\364\002\000\000\023\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.20, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.21,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.21:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.7
	.asciz	"_\000\000\000\000\000\000\000\n\002\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.21, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.22,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.22,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.22:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/component.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.22, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.23,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.23:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.22
	.asciz	"_\000\000\000\000\000\000\000*\002\000\0008\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.23, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.24,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.24,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.24:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.24, 28

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.25,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.25:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.24
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.25, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.26,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.26,"a",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.26:
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.26, 0

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.27,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.27,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.27:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.27, 96

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.28,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.28:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.27
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.28, 24

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

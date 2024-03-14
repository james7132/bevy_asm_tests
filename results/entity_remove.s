	.text
	.file	"entity_remove.434e1cf814644549-cgu.0"
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_0:
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
	je	.LBB4_12
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
	jbe	.LBB4_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB4_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB4_7
.LBB4_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB4_32
	movdqa	.LCPI4_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB4_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB4_31
.LBB4_32:
	cmpq	$16, %r8
	jae	.LBB4_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB4_34
	xorl	%eax, %eax
	jmp	.LBB4_50
.LBB4_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB4_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB4_7
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
.LBB4_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB4_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB4_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB4_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB4_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB4_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB4_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB4_34:
	xorl	%eax, %eax
	jmp	.LBB4_35
	.p2align	4, 0x90
.LBB4_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB4_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB4_49
.LBB4_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB4_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB4_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB4_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB4_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB4_39
.LBB4_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB4_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB4_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB4_52
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
	je	.LBB4_47
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
	jmp	.LBB4_37
	.p2align	4, 0x90
.LBB4_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB4_48
.LBB4_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB4_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB4_51
.LBB4_11:
	movl	$16, %r12d
.LBB4_15:
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
	je	.LBB4_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB4_17
	.p2align	4, 0x90
.LBB4_25:
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
	je	.LBB4_26
.LBB4_17:
	testw	%r8w, %r8w
	jne	.LBB4_20
	.p2align	4, 0x90
.LBB4_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB4_18
	notl	%r8d
.LBB4_20:
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
	jne	.LBB4_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB4_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB4_22
.LBB4_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB4_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB4_25
.LBB4_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB4_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB4_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB4_51:
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
.LBB4_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end4:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end4-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
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
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end5:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end5-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_0:
	.zero	16,120
	.section	.text.entity_remove,"ax",@progbits
	.globl	entity_remove
	.p2align	4, 0x90
	.type	entity_remove,@function
entity_remove:
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movabsq	$4748787759457320986, %rbp
	movabsq	$-1074946062972975165, %rbx
	movq	%rbx, %r11
	movq	(%rdi), %r14
	leaq	488(%r14), %r12
	leaq	64(%r14), %rax
	movq	%rax, 48(%rsp)
	movq	512(%r14), %r15
	movq	520(%r14), %r13
	leaq	-24(%r15), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI6_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbx, %rdx
	movq	%rdi, 72(%rsp)
.LBB6_1:
	andq	%r13, %rdx
	movdqu	(%r15,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB6_2:
	testw	%si, %si
	je	.LBB6_3
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%r13, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %r10
	movq	8(%rax,%r10,8), %rsi
	xorq	%rbp, %rsi
	movq	(%rax,%r10,8), %r9
	xorq	%rbx, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB6_2
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_3:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB6_8
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB6_1
.LBB6_6:
	movq	-8(%r15,%r10,8), %r12
.LBB6_7:
	leaq	80(%rsp), %r14
	movq	%r14, %rdi
	movq	72(%rsp), %rbx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::remove_bundle@GOTPCREL(%rip)
	movups	80(%rsp), %xmm0
	movups	%xmm0, 16(%rbx)
	movq	%rbx, 80(%rsp)
	#APP
	#NO_APP
	addq	$136, %rsp
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
.LBB6_8:
	.cfi_def_cfa_offset 192
	movq	%r12, 64(%rsp)
	movq	$0, 8(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$8, 16(%rsp)
	movq	$0, 24(%rsp)
	leaq	88(%r14), %rax
	movq	%rax, 56(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%r11, 40(%rsp)
	movq	%r11, %r12
.LBB6_9:
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB6_10:
	testw	%r8w, %r8w
	je	.LBB6_11
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%r12, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%rbp, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbx, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB6_10
	jmp	.LBB6_14
.LBB6_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB6_15
	addq	%rsi, %r12
	addq	$16, %r12
	addq	$16, %rsi
	jmp	.LBB6_9
.LBB6_14:
	movq	-8(%rax,%r9,8), %r12
.LBB6_35:
.Ltmp6:
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp7:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%r12, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 24(%rsp)
	movq	504(%r14), %r12
	movq	%rcx, 128(%rsp)
	movdqu	8(%rsp), %xmm0
	movdqa	%xmm0, 112(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rsi
	leaq	80(%rsp), %rdi
	leaq	112(%rsp), %r8
	movl	$16, %edx
	movq	48(%rsp), %rcx
	movq	%r12, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%r12, %rax
	cmpq	488(%r14), %r12
	jne	.LBB6_39
.Ltmp9:
	movq	64(%rsp), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp10:
	movq	504(%r14), %rax
	movq	512(%r14), %r15
	movq	520(%r14), %r13
.LBB6_39:
	movq	496(%r14), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%r14)
	movq	%r13, %rcx
	andq	%rbx, %rcx
	movdqu	(%r15,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB6_42
	movl	$16, %edx
	.p2align	4, 0x90
.LBB6_41:
	addq	%rdx, %rcx
	andq	%r13, %rcx
	movdqu	(%r15,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB6_41
.LBB6_42:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r13, %rax
	cmpb	$0, (%r15,%rax)
	js	.LBB6_44
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB6_44:
	cmpq	$0, 528(%r14)
	jne	.LBB6_51
	testb	$1, (%r15,%rax)
	jne	.LBB6_46
.LBB6_51:
	movzbl	(%r15,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%r14)
	leaq	-16(%rax), %rcx
	andq	%r13, %rcx
	movb	$120, (%r15,%rax)
	movb	$120, 16(%rcx,%r15)
	incq	536(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, -24(%r15,%rax,8)
	movq	%rbp, -16(%r15,%rax,8)
	movq	%r12, -8(%r15,%rax,8)
	jmp	.LBB6_7
.LBB6_15:
	movq	80(%r14), %r12
	movq	%r12, %rsi
	cmpq	64(%r14), %r12
	jne	.LBB6_18
.Ltmp0:
	movq	48(%rsp), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp1:
	movq	80(%r14), %rsi
.LBB6_18:
	movq	72(%r14), %rax
	imulq	$112, %rsi, %rcx
	movq	$1, (%rax,%rcx)
	movq	%rbp, 16(%rax,%rcx)
	movq	%rbx, 8(%rax,%rcx)
	movq	$4, 24(%rax,%rcx)
	movq	$4, 32(%rax,%rcx)
	movabsq	$-9223372036854775807, %rdx
	decq	%rdx
	movq	%rdx, 40(%rax,%rcx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movq	$16, 56(%rax,%rcx)
	movq	$0, 64(%rax,%rcx)
	movw	$256, 72(%rax,%rcx)
	movq	%r12, 80(%rax,%rcx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rax,%rcx)
	movq	$0, 104(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 80(%r14)
	cmpq	%rsi, %r12
	jae	.LBB6_19
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%rbx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB6_24
	movl	$16, %edi
.LBB6_23:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB6_23
.LBB6_24:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB6_26
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB6_26:
	cmpq	$0, 104(%r14)
	jne	.LBB6_34
	testb	$1, (%rax,%rdx)
	je	.LBB6_34
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
	jne	.LBB6_32
	movl	$16, %edi
.LBB6_31:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB6_31
.LBB6_32:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB6_34
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB6_34:
	movzbl	(%rax,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 104(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$120, (%rax,%rdx)
	movb	$120, 16(%rsi,%rax)
	incq	112(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	40(%rsp), %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%rbp, -16(%rax,%rcx,8)
	movq	%r12, -8(%rax,%rcx,8)
	jmp	.LBB6_35
.LBB6_46:
	leaq	512(%r14), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	512(%r14), %r15
	movq	520(%r14), %r13
	andq	%r13, %rbx
	movdqu	(%r15,%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB6_49
	movl	$16, %ecx
.LBB6_48:
	addq	%rcx, %rbx
	andq	%r13, %rbx
	movdqu	(%r15,%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB6_48
.LBB6_49:
	rep		bsfl	%eax, %eax
	addq	%rbx, %rax
	andq	%r13, %rax
	cmpb	$0, (%r15,%rax)
	js	.LBB6_51
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB6_51
.LBB6_19:
.Ltmp2:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdx
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp3:
	ud2
.LBB6_52:
.Ltmp11:
	movq	%rax, %rbx
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB6_55
	leaq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB6_54
.LBB6_56:
.Ltmp8:
	movq	%rax, %rbx
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB6_55
.LBB6_54:
	movq	32(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB6_55:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	entity_remove, .Lfunc_end6-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
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
	.uleb128 .Lfunc_end6-.Ltmp3
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"entity_remove::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/d3e4432/crates/bevy_ecs/src/component.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"_\000\000\000\000\000\000\000*\002\000\0008\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 28

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.6
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

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

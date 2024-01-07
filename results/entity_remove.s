	.text
	.file	"entity_remove.6a3298c185170b13-cgu.0"
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	(%rbx), %rcx
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	(%rbx), %rcx
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_0:
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
	jne	.LBB4_2
.LBB4_39:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB4_40:
	movq	%rax, %r12
	jmp	.LBB4_41
.LBB4_2:
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
	jbe	.LBB4_5
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	jae	.LBB4_11
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %rsi
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB4_15
	jmp	.LBB4_39
.LBB4_5:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB4_8
	movdqa	.LCPI4_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB4_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB4_7
.LBB4_8:
	cmpq	$16, %r8
	jae	.LBB4_20
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB4_21
	xorl	%eax, %eax
	jmp	.LBB4_36
.LBB4_11:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB4_37
	shlq	$3, %rcx
	movl	$1, %esi
	cmpq	$14, %rcx
	jb	.LBB4_14
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
.LBB4_14:
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB4_39
.LBB4_15:
	movq	%rax, %r13
	addq	$15, %r13
	andq	$-16, %r13
	leaq	16(%rsi), %rdx
	movq	%r13, %r15
	addq	%rdx, %r15
	jb	.LBB4_39
	movabsq	$-9223372036854775807, %r12
	leaq	-17(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB4_39
	testq	%r15, %r15
	movq	%rbp, 16(%rsp)
	movq	%r8, 32(%rsp)
	je	.LBB4_42
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
	jne	.LBB4_43
	movl	$16, %esi
	movl	$1, %edi
	movq	%r15, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB4_40
.LBB4_20:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB4_21:
	movabsq	$5871781006564002453, %rax
	xorl	%ecx, %ecx
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_22:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rdx, %r9
	movb	%r8b, (%r12,%rcx)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r9,%r12)
.LBB4_23:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB4_35
.LBB4_24:
	cmpb	$-128, (%r12,%rcx)
	jne	.LBB4_23
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB4_26:
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
	jne	.LBB4_29
	movl	$16, %r15d
	movq	%rdi, %r11
	.p2align	4, 0x90
.LBB4_28:
	addq	%r15, %r11
	andq	%r9, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r15
	testl	%r10d, %r10d
	je	.LBB4_28
.LBB4_29:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%r9, %r10
	cmpb	$0, (%r12,%r10)
	js	.LBB4_31
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB4_31:
	movq	%rcx, %r11
	subq	%rdi, %r11
	movq	%r10, %r15
	subq	%rdi, %r15
	xorq	%r11, %r15
	andq	%r9, %r15
	cmpq	$16, %r15
	jb	.LBB4_22
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
	je	.LBB4_34
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
	jmp	.LBB4_26
	.p2align	4, 0x90
.LBB4_34:
	leaq	-16(%rcx), %rsi
	andq	8(%rbx), %rsi
	movb	$-1, (%r12,%rcx)
	movb	$-1, 16(%rsi,%r12)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB4_23
.LBB4_35:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %rbp
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB4_36:
	subq	%rbp, %rax
	movabsq	$-9223372036854775807, %r12
	movq	%rax, 16(%rbx)
.LBB4_41:
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
.LBB4_37:
	.cfi_def_cfa_offset 96
	movq	%r8, %r15
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r12
	jne	.LBB4_41
	movq	%rdx, %rsi
	movq	%r15, %r8
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB4_15
	jmp	.LBB4_39
.LBB4_42:
	movl	$16, %ebp
.LBB4_43:
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
	je	.LBB4_54
	movq	24(%rsp), %rsi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	leaq	-24(%rsi), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %r8
	jmp	.LBB4_46
	.p2align	4, 0x90
.LBB4_45:
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
	je	.LBB4_54
.LBB4_46:
	testw	%r9w, %r9w
	jne	.LBB4_49
	.p2align	4, 0x90
.LBB4_47:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB4_47
	notl	%r9d
.LBB4_49:
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
	jne	.LBB4_52
	movl	$16, %ecx
	.p2align	4, 0x90
.LBB4_51:
	addq	%rcx, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB4_51
.LBB4_52:
	rep		bsfl	%eax, %eax
	addq	%r13, %rax
	andq	%r15, %rax
	cmpb	$0, (%rbp,%rax)
	js	.LBB4_45
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB4_45
.LBB4_54:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB4_41
	movl	$24, %ecx
	movq	32(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB4_41
	movq	24(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB4_41
.Lfunc_end4:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end4-hashbrown::raw::RawTable<T,A>::reserve_rehash
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
	.zero	16,96
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movabsq	$2270136800884433907, %r13
	movabsq	$-7806743575647614592, %r14
	movabsq	$-4539066646449191040, %r15
	movq	(%rdi), %rbp
	leaq	488(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	64(%rbp), %rax
	movq	%rax, (%rsp)
	movq	512(%rbp), %rcx
	movq	520(%rbp), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI6_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %rdi
.LBB6_1:
	andq	%rax, %rdi
	movdqu	(%rcx,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	.p2align	4, 0x90
.LBB6_2:
	testw	%r8w, %r8w
	je	.LBB6_3
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rax, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r13, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%r14, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB6_2
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB6_5
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB6_1
.LBB6_13:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	-8(%rcx,%r9,8), %r12
.LBB6_14:
	leaq	216(%rbp), %r9
	shlq	$5, %r12
	addq	%rax, %r12
	leaq	16(%rbx), %rsi
	movups	16(%rbx), %xmm0
	movaps	%xmm0, 48(%rsp)
	movq	8(%rbx), %rdi
	leaq	152(%rbp), %r8
	leaq	608(%rbp), %rax
	.cfi_escape 0x2e, 0x20
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	56(%rsp), %r15
	movq	%r15, %rdx
	movq	%r12, %rcx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::world::entity_ref::EntityWorldMut::remove_bundle_info@GOTPCREL(%rip)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%rbx, 48(%rsp)
	#APP
	#NO_APP
	addq	$104, %rsp
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
.LBB6_5:
	.cfi_def_cfa_offset 160
	cmpq	$0, 528(%rbp)
	je	.LBB6_6
.LBB6_7:
	movq	$8, 24(%rsp)
	leaq	88(%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 32(%rsp)
	movq	88(%rbp), %rax
	movq	96(%rbp), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %r8
.LBB6_8:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	.p2align	4, 0x90
.LBB6_9:
	testw	%r9w, %r9w
	je	.LBB6_10
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%r13, %r9
	movq	(%rdx,%r10,8), %r12
	xorq	%r14, %r12
	orq	%r9, %r12
	movl	%r11d, %r9d
	jne	.LBB6_9
	jmp	.LBB6_27
.LBB6_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB6_15
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB6_8
.LBB6_27:
	movq	-8(%rax,%r10,8), %r12
.LBB6_28:
.Ltmp4:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp5:
	movq	24(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%r12, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	movq	504(%rbp), %r12
	movq	%rcx, 96(%rsp)
	movdqu	24(%rsp), %xmm0
	movdqa	%xmm0, 80(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rsi
	leaq	48(%rsp), %rdi
	leaq	80(%rsp), %r8
	movl	$16, %edx
	movq	%rdi, 8(%rsp)
	movq	(%rsp), %rcx
	movq	%r12, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%r12, %rcx
	cmpq	496(%rbp), %r12
	jne	.LBB6_32
.Ltmp7:
	.cfi_escape 0x2e, 0x00
	movq	16(%rsp), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	504(%rbp), %rcx
.LBB6_32:
	movq	488(%rbp), %rax
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movups	48(%rsp), %xmm0
	movdqu	64(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rdx)
	movups	%xmm0, (%rax,%rdx)
	incq	%rcx
	movq	%rcx, 504(%rbp)
	movq	512(%rbp), %rcx
	movq	520(%rbp), %rdx
	andq	%rdx, %r15
	movdqu	(%rcx,%r15), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB6_35
	movl	$16, %edi
	.p2align	4, 0x90
.LBB6_34:
	addq	%rdi, %r15
	andq	%rdx, %r15
	movdqu	(%rcx,%r15), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB6_34
.LBB6_35:
	rep		bsfl	%esi, %esi
	addq	%r15, %rsi
	andq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %edi
	testb	%dil, %dil
	js	.LBB6_37
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rcx,%rsi), %edi
.LBB6_37:
	leaq	-16(%rsi), %r8
	andq	%rdx, %r8
	movb	$96, (%rcx,%rsi)
	movb	$96, 16(%r8,%rcx)
	andb	$1, %dil
	movzbl	%dil, %edx
	subq	%rdx, 528(%rbp)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	movq	%r14, -24(%rcx,%rdx,8)
	movq	%r13, -16(%rcx,%rdx,8)
	movq	%r12, -8(%rcx,%rdx,8)
	incq	536(%rbp)
	jmp	.LBB6_14
.LBB6_6:
	leaq	512(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI6_0(%rip), %xmm3
	jmp	.LBB6_7
.LBB6_15:
	cmpq	$0, 104(%rbp)
	jne	.LBB6_17
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp1:
.LBB6_17:
	movq	80(%rbp), %r12
	movq	%r12, %rax
	cmpq	72(%rbp), %r12
	jne	.LBB6_20
.Ltmp2:
	.cfi_escape 0x2e, 0x00
	movq	(%rsp), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp3:
	movq	80(%rbp), %rax
.LBB6_20:
	movq	64(%rbp), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r13, 16(%rcx,%rdx)
	movq	%r14, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movq	$16, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%r12, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rbp)
	movq	88(%rbp), %rax
	movq	96(%rbp), %rcx
	movq	%rcx, %rdx
	andq	%r15, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB6_23
	movl	$16, %edi
.LBB6_22:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB6_22
.LBB6_23:
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB6_25
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB6_25:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$96, (%rax,%rsi)
	movb	$96, 16(%rdi,%rax)
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 104(%rbp)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rcx
	movq	%r14, -24(%rax,%rcx,8)
	movq	%r13, -16(%rax,%rcx,8)
	movq	%r12, -8(%rax,%rcx,8)
	incq	112(%rbp)
	jmp	.LBB6_28
.LBB6_38:
.Ltmp9:
	movq	%rax, %rbx
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB6_39
	jmp	.LBB6_40
.LBB6_41:
.Ltmp6:
	movq	%rax, %rbx
	movq	32(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB6_40
	leaq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
.LBB6_39:
	movq	8(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB6_40:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
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

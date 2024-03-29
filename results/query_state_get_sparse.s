	.text
	.file	"query_state_get_sparse.e955e98a7d5ca6ea-cgu.0"
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
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	8(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
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
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
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
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	840(%rdx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_108
	movq	%rax, 208(%rsp)
	movq	%rdx, 144(%rsp)
	movq	168(%rdx), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_109
	jne	.LBB3_16
.LBB3_3:
	movq	144(%rsp), %r11
	movl	848(%r11), %eax
	movl	852(%r11), %ecx
	movq	208(%rsp), %rbx
	movl	%ebx, %edx
	shrq	$32, %rbx
	movl	$1, %r8d
	cmpq	16(%r11), %rdx
	jae	.LBB3_13
	movq	8(%r11), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%ebx, (%rsi,%rdi,4)
	jne	.LBB3_13
	movl	4(%rsi,%rdi,4), %esi
	movl	$4294967295, %edi
	cmpq	%rdi, %rsi
	je	.LBB3_13
	movl	%esi, %r8d
	shrl	$5, %r8d
	xorl	%edi, %edi
	cmpq	64(%r14), %r8
	jae	.LBB3_85
	movq	56(%r14), %r9
	testq	%r9, %r9
	je	.LBB3_85
	movl	(%r9,%r8,4), %edi
	btl	%esi, %edi
	jae	.LBB3_84
	movq	392(%r14), %rdi
	movq	400(%r14), %rsi
	movq	272(%r11), %r9
	movq	280(%r11), %r10
	xorl	%r8d, %r8d
	cmpq	%rdi, %r10
	jbe	.LBB3_87
	testq	%r9, %r9
	je	.LBB3_87
	movq	(%r9,%rdi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB3_86
	notq	%rdi
	leaq	(%rdi,%rdi,8), %r8
	shlq	$4, %r8
	addq	224(%r11), %r8
	jmp	.LBB3_87
.LBB3_13:
	xorl	%edi, %edi
.LBB3_14:
	xorl	%esi, %esi
.LBB3_15:
	orq	%r8, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rdi, 16(%rsp)
	shlq	$32, %rbx
	orq	%rdx, %rbx
	movq	%rbx, 24(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%eax, 36(%rsp)
	movq	%r9, 40(%rsp)
	leaq	8(%rsp), %rax
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
.LBB3_16:
	.cfi_def_cfa_offset 320
	movq	144(%rsp), %rax
	movq	160(%rax), %rax
	leaq	(%rsi,%rsi,4), %r15
	shlq	$5, %r15
	addq	%rax, %r15
	leaq	(%rdi,%rdi,4), %rbp
	shlq	$5, %rbp
	addq	%rax, %rbp
	leaq	184(%r14), %rax
	movq	%rax, 232(%rsp)
	leaq	216(%r14), %rax
	movq	%rax, 224(%rsp)
	leaq	80(%r14), %rax
	movq	%rax, 152(%rsp)
	leaq	104(%r14), %rax
	movq	%rax, 88(%rsp)
	leaq	112(%r14), %rax
	movq	%rax, 240(%rsp)
	leaq	136(%r14), %rax
	movq	%rax, 168(%rsp)
	leaq	48(%r14), %rax
	movq	%rax, 200(%rsp)
	leaq	72(%r14), %rax
	movq	%rax, 136(%rsp)
	leaq	368(%r14), %rax
	movq	%rax, 184(%rsp)
	leaq	16(%r14), %rax
	movq	%rax, 192(%rsp)
	leaq	40(%r14), %rax
	movq	%rax, 128(%rsp)
	leaq	344(%r14), %rax
	movq	%rax, 176(%rsp)
	movq	%r14, 120(%rsp)
	movq	%r15, 216(%rsp)
	jmp	.LBB3_19
.LBB3_17:
	movq	352(%r14), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 360(%r14)
	.p2align	4, 0x90
.LBB3_18:
	addq	$160, %rbp
	cmpq	%r15, %rbp
	je	.LBB3_3
.LBB3_19:
	movq	392(%r14), %rax
	movq	136(%rbp), %rbx
	cmpq	%rax, %rbx
	jbe	.LBB3_18
	movq	128(%rbp), %r12
	testq	%r12, %r12
	je	.LBB3_18
	cmpq	$0, (%r12,%rax,8)
	je	.LBB3_18
	movq	400(%r14), %rax
	cmpq	%rax, %rbx
	jbe	.LBB3_18
	cmpq	$0, (%r12,%rax,8)
	je	.LBB3_18
	movq	336(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_18
	movq	328(%r14), %rcx
	shlq	$6, %rax
	addq	%rcx, %rax
.LBB3_26:
	movq	%rcx, %rdx
	movq	16(%rcx), %rcx
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	je	.LBB3_29
	movq	8(%rdx), %r9
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %rsi
	movl	$0, %edi
	testq	%r9, %r9
	je	.LBB3_30
	decq	%rcx
	movl	(%r9), %r8d
	addq	$4, %r9
	movq	%r9, %rsi
	movq	%rcx, %rdi
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_29:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %rsi
	xorl	%edi, %edi
.LBB3_30:
	leaq	64(%rdx), %rcx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_31:
	testl	%r8d, %r8d
	jne	.LBB3_34
	subq	$1, %rdi
	jb	.LBB3_36
	movl	(%rsi), %r8d
	addq	$4, %rsi
	incq	%r9
	jmp	.LBB3_31
.LBB3_34:
	rep		bsfl	%r8d, %r11d
	movq	%r9, %r10
	shlq	$5, %r10
	orq	%r11, %r10
	cmpq	%r10, %rbx
	jbe	.LBB3_46
	leal	-1(%r8), %r11d
	andl	%r8d, %r11d
	cmpq	$0, (%r12,%r10,8)
	movl	%r11d, %r8d
	jne	.LBB3_31
	jmp	.LBB3_46
	.p2align	4, 0x90
.LBB3_36:
	movq	48(%rdx), %r8
	xorl	%edi, %edi
	testq	%r8, %r8
	je	.LBB3_39
	movq	40(%rdx), %r9
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %rdx
	movl	$0, %esi
	testq	%r9, %r9
	je	.LBB3_40
	decq	%r8
	movl	(%r9), %edi
	addq	$4, %r9
	movq	%r9, %rdx
	movq	%r8, %rsi
	jmp	.LBB3_40
.LBB3_39:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %rdx
	xorl	%esi, %esi
.LBB3_40:
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB3_41:
	testl	%edi, %edi
	jne	.LBB3_44
	subq	$1, %rsi
	jb	.LBB3_47
	movl	(%rdx), %edi
	addq	$4, %rdx
	incq	%r8
	jmp	.LBB3_41
.LBB3_44:
	movl	%edi, %r9d
	rep		bsfl	%edi, %r10d
	leal	-1(%r9), %edi
	andl	%r9d, %edi
	movq	%r8, %r9
	shlq	$5, %r9
	orq	%r10, %r9
	cmpq	%r9, %rbx
	jbe	.LBB3_41
	cmpq	$0, (%r12,%r9,8)
	je	.LBB3_41
	.p2align	4, 0x90
.LBB3_46:
	cmpq	%rax, %rcx
	jne	.LBB3_26
	jmp	.LBB3_18
.LBB3_47:
	movq	%r12, 96(%rsp)
	movq	%rbx, 104(%rsp)
	leaq	8(%rsp), %rdi
	movq	232(%rsp), %rsi
	movq	224(%rsp), %rdx
	callq	*fixedbitset::FixedBitSet::difference@GOTPCREL(%rip)
	movq	8(%rsp), %r13
	movq	16(%rsp), %r12
	movq	24(%rsp), %r15
	movq	%rbp, %rax
	movl	32(%rsp), %ebp
	movq	40(%rsp), %rbx
	movq	%rax, 248(%rsp)
	movq	96(%rax), %rax
	movq	%rax, 160(%rsp)
	.p2align	4, 0x90
.LBB3_48:
	testl	%ebp, %ebp
	jne	.LBB3_51
	subq	$1, %r12
	jb	.LBB3_58
	movl	(%r13), %ebp
	addq	$4, %r13
	incq	%r15
	jmp	.LBB3_48
.LBB3_51:
	movl	%ebp, %ecx
	rep		bsfl	%ebp, %eax
	leal	-1(%rcx), %ebp
	andl	%ecx, %ebp
	movq	%r15, %rcx
	movabsq	$576460752303423487, %rdx
	andq	%rdx, %rcx
	cmpq	16(%rbx), %rcx
	jae	.LBB3_54
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_54
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jb	.LBB3_48
.LBB3_54:
	movl	%eax, %ecx
	movq	%r15, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, 104(%rsp)
	jbe	.LBB3_48
	movq	96(%rsp), %rcx
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB3_48
	notq	%rax
	shlq	$4, %rax
	movq	160(%rsp), %rcx
	movq	(%rcx,%rax), %rax
	movq	%rax, 112(%rsp)
	leaq	1(%rax), %rsi
	movq	152(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	112(%rsp), %rcx
	movq	%rcx, (%rsp)
	movq	88(%rsp), %rax
	cmpq	%rcx, (%rax)
	jbe	.LBB3_105
	movl	$1, %eax
	shll	%cl, %eax
	movq	88(%r14), %rdx
	shrq	$5, %rcx
	orl	%eax, (%rdx,%rcx,4)
	jmp	.LBB3_48
.LBB3_58:
	movq	232(%r14), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB3_61
	movq	224(%r14), %rcx
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %r15
	movl	$0, %ebp
	testq	%rcx, %rcx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r12
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	je	.LBB3_62
	decq	%rax
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, %r15
	movq	%rax, %rbp
	jmp	.LBB3_62
.LBB3_61:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5(%rip), %r15
	xorl	%ebp, %ebp
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r12
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
.LBB3_62:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_63:
	testl	%ebx, %ebx
	jne	.LBB3_66
	subq	$1, %rbp
	jb	.LBB3_71
	movl	(%r15), %ebx
	addq	$4, %r15
	incq	%r14
	jmp	.LBB3_63
.LBB3_66:
	movl	%ebx, %eax
	rep		bsfl	%ebx, %ecx
	leal	-1(%rax), %ebx
	andl	%eax, %ebx
	movq	%r14, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, %rdx
	jbe	.LBB3_63
	movq	(%rsi,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB3_63
	notq	%rax
	shlq	$4, %rax
	movq	160(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
	movq	152(%rsp), %rdi
	movq	%rsi, 112(%rsp)
	callq	*%r12
	movq	%r13, (%rsp)
	movq	88(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_105
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r13, 256(%rsp)
	shrq	$5, %r13
	movl	$1, %r12d
	shll	%cl, %r12d
	movq	120(%rsp), %rax
	movq	88(%rax), %rax
	orl	%r12d, (%rax,%r13,4)
	movq	240(%rsp), %rdi
	movq	112(%rsp), %rsi
	callq	*%rdx
	movq	120(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	%rcx, (%rsp)
	cmpq	%rcx, 136(%rax)
	jbe	.LBB3_106
	movq	120(%rax), %rax
	orl	%r12d, (%rax,%r13,4)
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r12
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	jmp	.LBB3_63
.LBB3_71:
	movq	248(%rsp), %rbp
	movl	144(%rbp), %r13d
	movl	%r13d, %ebx
	shrl	$5, %ebx
	movq	120(%rsp), %r14
	cmpq	64(%r14), %rbx
	movq	216(%rsp), %r15
	jae	.LBB3_74
	movq	56(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_74
	movl	(%rax,%rbx,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_78
.LBB3_74:
	leaq	1(%r13), %rsi
	movq	200(%rsp), %rdi
	callq	*%r12
	movq	%r13, (%rsp)
	movq	136(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_110
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	56(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	384(%r14), %rsi
	cmpq	368(%r14), %rsi
	jne	.LBB3_77
	movq	184(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	384(%r14), %rsi
.LBB3_77:
	movq	376(%r14), %rax
	movl	%r13d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 384(%r14)
.LBB3_78:
	movl	148(%rbp), %r13d
	movl	%r13d, %ebx
	shrl	$5, %ebx
	cmpq	32(%r14), %rbx
	jae	.LBB3_81
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_81
	movl	(%rax,%rbx,4), %eax
	btl	%r13d, %eax
	jb	.LBB3_18
.LBB3_81:
	leaq	1(%r13), %rsi
	movq	192(%rsp), %rdi
	callq	*%r12
	movq	%r13, (%rsp)
	movq	128(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB3_111
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	24(%r14), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	360(%r14), %rsi
	cmpq	344(%r14), %rsi
	jne	.LBB3_17
	movq	176(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	360(%r14), %rsi
	jmp	.LBB3_17
.LBB3_84:
	xorl	%edi, %edi
.LBB3_85:
	xorl	%r8d, %r8d
	jmp	.LBB3_14
.LBB3_86:
	xorl	%r8d, %r8d
.LBB3_87:
	xorl	%edi, %edi
	cmpq	%rsi, %r10
	jbe	.LBB3_92
	testq	%r9, %r9
	je	.LBB3_92
	movq	(%r9,%rsi,8), %rsi
	testq	%rsi, %rsi
	je	.LBB3_91
	notq	%rsi
	leaq	(%rsi,%rsi,8), %rdi
	shlq	$4, %rdi
	addq	224(%r11), %rdi
	jmp	.LBB3_92
.LBB3_91:
	xorl	%edi, %edi
.LBB3_92:
	xorl	%esi, %esi
	cmpq	136(%r8), %rdx
	jae	.LBB3_98
	movq	128(%r8), %r9
	testq	%r9, %r9
	je	.LBB3_99
	cmpl	$0, (%r9,%rdx,8)
	je	.LBB3_97
	movl	4(%r9,%rdx,8), %r10d
	movq	8(%r8), %rsi
	imulq	%r10, %rsi
	addq	16(%r8), %rsi
	shlq	$2, %r10
	movq	56(%r8), %r11
	addq	%r10, %r11
	addq	80(%r8), %r10
	jmp	.LBB3_99
.LBB3_97:
	xorl	%esi, %esi
.LBB3_98:
.LBB3_99:
	xorl	%r9d, %r9d
	cmpq	136(%rdi), %rdx
	jae	.LBB3_104
	movq	128(%rdi), %r8
	testq	%r8, %r8
	je	.LBB3_104
	cmpl	$0, (%r8,%rdx,8)
	je	.LBB3_103
	movl	4(%r8,%rdx,8), %r9d
	imulq	8(%rdi), %r9
	addq	16(%rdi), %r9
	jmp	.LBB3_104
.LBB3_103:
	xorl	%r9d, %r9d
.LBB3_104:
	movabsq	$-4294967296, %rdi
	andq	%r11, %rdi
	movq	%r10, %rbx
	shrq	$32, %rbx
	movl	%r11d, %r8d
	movl	%r10d, %edx
	jmp	.LBB3_15
.LBB3_105:
	movq	%rsp, %rax
	movq	%rax, 56(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	jmp	.LBB3_107
.LBB3_106:
	movq	%rsp, %rax
	movq	%rax, 56(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	168(%rsp), %rcx
.LBB3_107:
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$2, 16(%rsp)
	movq	$0, 40(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$2, 32(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB3_108:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.11(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_109:
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_110:
	movq	%rsp, %rax
	movq	%rax, 56(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rcx
	jmp	.LBB3_112
.LBB3_111:
	movq	%rsp, %rax
	movq	%rax, 56(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	128(%rsp), %rcx
.LBB3_112:
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.2(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$2, 16(%rsp)
	movq	$0, 40(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$2, 32(%rsp)
	leaq	.Lanon.df18cc41ae9ddb601fc5a42c06362435.4(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_get, .Lfunc_end3-query_state_get
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
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.5:
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.5, 0

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.df18cc41ae9ddb601fc5a42c06362435.6:
	.ascii	"insert at index "
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6, 16

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.7:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.6
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.7, 32

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.8:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.8, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9,@object
	.section	.rodata..Lanon.df18cc41ae9ddb601fc5a42c06362435.9,"a",@progbits
.Lanon.df18cc41ae9ddb601fc5a42c06362435.9:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/3a83f4e/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9, 97

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.10:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9
	.asciz	"a\000\000\000\000\000\000\000\026\001\000\000%\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.10, 24

	.type	.Lanon.df18cc41ae9ddb601fc5a42c06362435.11,@object
	.section	.data.rel.ro..Lanon.df18cc41ae9ddb601fc5a42c06362435.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.df18cc41ae9ddb601fc5a42c06362435.11:
	.quad	.Lanon.df18cc41ae9ddb601fc5a42c06362435.9
	.asciz	"a\000\000\000\000\000\000\000\021\001\000\000\016\000\000"
	.size	.Lanon.df18cc41ae9ddb601fc5a42c06362435.11, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

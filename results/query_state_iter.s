	.text
	.file	"query_state_iter.500caa79ddd46ff2-cgu.0"
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
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	(%rbx), %rcx
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
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	(%rbx), %rcx
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

	.section	.text.query_state_iter,"ax",@progbits
	.globl	query_state_iter
	.p2align	4, 0x90
	.type	query_state_iter,@function
query_state_iter:
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
	movq	%rdi, %r13
	movq	752(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_88
	movq	%rax, 152(%rsp)
	movq	168(%rax), %rsi
	movl	8(%r13), %edi
	movl	%esi, 8(%r13)
	cmpq	%rdi, %rsi
	jb	.LBB3_87
	jne	.LBB3_3
.LBB3_78:
	movq	152(%rsp), %r14
	movl	760(%r14), %eax
	movq	344(%r13), %rcx
	movq	360(%r13), %rdx
	leaq	(%rcx,%rdx,4), %rdx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	cmpq	%rdi, %r11
	jne	.LBB3_84
.LBB3_80:
	movq	288(%r14), %r9
	movq	304(%r14), %r11
	movq	392(%r13), %r8
	movq	400(%r13), %r10
	.p2align	4, 0x90
.LBB3_81:
	cmpq	%rdx, %rcx
	je	.LBB3_89
	movl	(%rcx), %edi
	addq	$4, %rcx
	cmpq	%rdi, %r11
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%r9,%rdi,8), %rbx
	cmovbeq	%rsi, %rbx
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_81
	movq	32(%rbx), %r11
	shlq	$4, %r8
	movq	(%rbx), %rbx
	movq	8(%r11,%r8), %r8
	leaq	(%r8,%r8,2), %r9
	shlq	$5, %r9
	movq	16(%rbx,%r9), %r8
	movq	72(%rbx,%r9), %r9
	shlq	$4, %r10
	movq	8(%r11,%r10), %r10
	leaq	(%r10,%r10,2), %r10
	shlq	$5, %r10
	movq	16(%rbx,%r10), %r10
	xorl	%r11d, %r11d
	jmp	.LBB3_86
	.p2align	4, 0x90
.LBB3_84:
	movq	%r11, %rbx
	shrq	$32, %rbx
	jne	.LBB3_90
	testq	%r8, %r8
	je	.LBB3_89
.LBB3_86:
	movss	(%r10,%r11,4), %xmm0
	movl	%eax, (%r9,%r11,4)
	addss	(%r8,%r11,4), %xmm0
	movss	%xmm0, (%r8,%r11,4)
	incq	%r11
	cmpq	%rdi, %r11
	jne	.LBB3_84
	jmp	.LBB3_80
.LBB3_89:
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
.LBB3_3:
	.cfi_def_cfa_offset 320
	movq	152(%rsp), %rax
	movq	152(%rax), %rax
	imulq	$152, %rsi, %r14
	addq	%rax, %r14
	imulq	$152, %rdi, %rbp
	addq	%rax, %rbp
	leaq	240(%r13), %rax
	movq	%rax, 248(%rsp)
	leaq	272(%r13), %rax
	movq	%rax, 240(%rsp)
	leaq	80(%r13), %r12
	leaq	104(%r13), %rax
	movq	%rax, 104(%rsp)
	leaq	112(%r13), %rax
	movq	%rax, 176(%rsp)
	leaq	136(%r13), %rax
	movq	%rax, 160(%rsp)
	leaq	48(%r13), %rax
	movq	%rax, 216(%rsp)
	leaq	72(%r13), %rax
	movq	%rax, 144(%rsp)
	leaq	368(%r13), %rax
	movq	%rax, 200(%rsp)
	leaq	16(%r13), %rax
	movq	%rax, 208(%rsp)
	leaq	40(%r13), %rax
	movq	%rax, 136(%rsp)
	leaq	344(%r13), %rax
	movq	%rax, 192(%rsp)
	movq	%r13, 232(%rsp)
	movq	%r14, 224(%rsp)
	movq	%r12, 48(%rsp)
	jmp	.LBB3_4
.LBB3_76:
	movq	344(%r13), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 360(%r13)
	.p2align	4, 0x90
.LBB3_77:
	addq	$152, %rbp
	cmpq	%r14, %rbp
	je	.LBB3_78
.LBB3_4:
	movq	392(%r13), %rax
	movq	136(%rbp), %rbx
	cmpq	%rax, %rbx
	jbe	.LBB3_77
	movq	128(%rbp), %r15
	testq	%r15, %r15
	je	.LBB3_77
	shlq	$4, %rax
	cmpq	$0, (%r15,%rax)
	je	.LBB3_77
	movq	400(%r13), %rax
	cmpq	%rax, %rbx
	jbe	.LBB3_77
	shlq	$4, %rax
	cmpq	$0, (%r15,%rax)
	je	.LBB3_77
	movq	232(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_77
	movq	216(%r13), %rcx
	shlq	$6, %rax
	addq	%rcx, %rax
.LBB3_11:
	movq	%rcx, %rdx
	movq	16(%rcx), %rcx
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	je	.LBB3_12
	movq	(%rdx), %r9
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rsi
	movl	$0, %edi
	testq	%r9, %r9
	je	.LBB3_15
	decq	%rcx
	movl	(%r9), %r8d
	addq	$4, %r9
	movq	%r9, %rsi
	movq	%rcx, %rdi
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_12:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rsi
	xorl	%edi, %edi
.LBB3_15:
	leaq	64(%rdx), %rcx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_16:
	testl	%r8d, %r8d
	jne	.LBB3_19
	subq	$1, %rdi
	jb	.LBB3_21
	movl	(%rsi), %r8d
	addq	$4, %rsi
	incq	%r9
	jmp	.LBB3_16
.LBB3_19:
	rep		bsfl	%r8d, %r11d
	movq	%r9, %r10
	shlq	$5, %r10
	orq	%r11, %r10
	cmpq	%r10, %rbx
	jbe	.LBB3_31
	leal	-1(%r8), %r11d
	andl	%r8d, %r11d
	shlq	$4, %r10
	cmpq	$0, (%r15,%r10)
	movl	%r11d, %r8d
	jne	.LBB3_16
	jmp	.LBB3_31
	.p2align	4, 0x90
.LBB3_21:
	movq	48(%rdx), %r8
	xorl	%edi, %edi
	testq	%r8, %r8
	je	.LBB3_22
	movq	32(%rdx), %r9
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rdx
	movl	$0, %esi
	testq	%r9, %r9
	je	.LBB3_25
	decq	%r8
	movl	(%r9), %edi
	addq	$4, %r9
	movq	%r9, %rdx
	movq	%r8, %rsi
	jmp	.LBB3_25
.LBB3_22:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %rdx
	xorl	%esi, %esi
.LBB3_25:
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB3_26:
	testl	%edi, %edi
	jne	.LBB3_29
	subq	$1, %rsi
	jb	.LBB3_32
	movl	(%rdx), %edi
	addq	$4, %rdx
	incq	%r8
	jmp	.LBB3_26
.LBB3_29:
	movl	%edi, %r9d
	rep		bsfl	%edi, %r10d
	leal	-1(%r9), %edi
	andl	%r9d, %edi
	movq	%r8, %r9
	shlq	$5, %r9
	orq	%r10, %r9
	cmpq	%r9, %rbx
	jbe	.LBB3_26
	shlq	$4, %r9
	cmpq	$0, (%r15,%r9)
	je	.LBB3_26
	.p2align	4, 0x90
.LBB3_31:
	cmpq	%rax, %rcx
	jne	.LBB3_11
	jmp	.LBB3_77
.LBB3_32:
	movq	%r15, 112(%rsp)
	leaq	56(%rsp), %rdi
	movq	248(%rsp), %rsi
	movq	240(%rsp), %rdx
	callq	*fixedbitset::FixedBitSet::difference@GOTPCREL(%rip)
	movq	56(%rsp), %r12
	movq	64(%rsp), %r15
	movq	72(%rsp), %r14
	movq	%rbp, %rax
	movl	80(%rsp), %ebp
	movq	88(%rsp), %rsi
	movq	%rax, 256(%rsp)
	movq	96(%rax), %rax
	movq	%rax, 168(%rsp)
	movq	%rbx, 184(%rsp)
	.p2align	4, 0x90
.LBB3_33:
	testl	%ebp, %ebp
	jne	.LBB3_36
	subq	$1, %r15
	jb	.LBB3_46
	movl	(%r12), %ebp
	addq	$4, %r12
	incq	%r14
	jmp	.LBB3_33
.LBB3_36:
	movl	%ebp, %ecx
	rep		bsfl	%ebp, %eax
	leal	-1(%rcx), %ebp
	andl	%ecx, %ebp
	movq	%r14, %rcx
	movabsq	$576460752303423487, %rdx
	andq	%rdx, %rcx
	cmpq	16(%rsi), %rcx
	jae	.LBB3_39
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB3_39
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jb	.LBB3_33
.LBB3_39:
	movl	%eax, %ecx
	movq	%r14, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, %rbx
	jbe	.LBB3_33
	shlq	$4, %rax
	movq	112(%rsp), %rcx
	cmpq	$0, (%rcx,%rax)
	je	.LBB3_33
	movq	%rsi, 120(%rsp)
	movq	112(%rsp), %rcx
	movq	8(%rcx,%rax), %rax
	shlq	$4, %rax
	movq	168(%rsp), %rcx
	movq	(%rcx,%rax), %rax
	movq	%rax, 128(%rsp)
	leaq	1(%rax), %rsi
	movq	48(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	128(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	104(%rsp), %rax
	cmpq	%rcx, (%rax)
	jbe	.LBB3_42
	movl	$1, %eax
	shll	%cl, %eax
	movq	(%rbx), %rdx
	shrq	$5, %rcx
	orl	%eax, (%rdx,%rcx,4)
	movq	184(%rsp), %rbx
	movq	120(%rsp), %rsi
	jmp	.LBB3_33
.LBB3_46:
	movq	288(%r13), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB3_47
	movq	272(%r13), %rcx
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r14
	movl	$0, %ebp
	testq	%rcx, %rcx
	movq	48(%rsp), %r12
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r15
	je	.LBB3_50
	decq	%rax
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, %r14
	movq	%rax, %rbp
	jmp	.LBB3_50
.LBB3_47:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.5(%rip), %r14
	xorl	%ebp, %ebp
	movq	48(%rsp), %r12
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r15
.LBB3_50:
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_51:
	testl	%ebx, %ebx
	jne	.LBB3_54
	subq	$1, %rbp
	jb	.LBB3_60
	movl	(%r14), %ebx
	addq	$4, %r14
	incq	%r13
	jmp	.LBB3_51
.LBB3_54:
	movl	%ebx, %eax
	rep		bsfl	%ebx, %ecx
	leal	-1(%rax), %ebx
	andl	%eax, %ebx
	movq	%r13, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, 184(%rsp)
	jbe	.LBB3_51
	shlq	$4, %rax
	movq	112(%rsp), %rcx
	cmpq	$0, (%rcx,%rax)
	je	.LBB3_51
	movq	112(%rsp), %rcx
	movq	8(%rcx,%rax), %rax
	shlq	$4, %rax
	movq	168(%rsp), %rcx
	movq	%r12, %rdi
	movq	(%rcx,%rax), %r12
	leaq	1(%r12), %rsi
	movq	%rsi, 128(%rsp)
	callq	*%r15
	movq	%r12, 8(%rsp)
	movq	104(%rsp), %rax
	cmpq	%r12, (%rax)
	movq	48(%rsp), %rax
	jbe	.LBB3_42
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%r12, 120(%rsp)
	movq	%r12, %r15
	shrq	$5, %r15
	movl	$1, %r12d
	shll	%cl, %r12d
	movq	(%rax), %rax
	orl	%r12d, (%rax,%r15,4)
	movq	176(%rsp), %rdi
	movq	128(%rsp), %rsi
	callq	*%rdx
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	160(%rsp), %rax
	cmpq	%rcx, (%rax)
	jbe	.LBB3_58
	movq	176(%rsp), %rax
	movq	(%rax), %rax
	orl	%r12d, (%rax,%r15,4)
	movq	48(%rsp), %r12
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r15
	jmp	.LBB3_51
.LBB3_60:
	movq	256(%rsp), %rbp
	movl	144(%rbp), %r15d
	movl	%r15d, %ebx
	shrl	$5, %ebx
	movq	232(%rsp), %r13
	cmpq	64(%r13), %rbx
	movq	224(%rsp), %r14
	jae	.LBB3_63
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_63
	movl	(%rax,%rbx,4), %eax
	btl	%r15d, %eax
	jb	.LBB3_69
.LBB3_63:
	leaq	1(%r15), %rsi
	movq	216(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r15, 8(%rsp)
	movq	144(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_64
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	48(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	384(%r13), %rsi
	cmpq	376(%r13), %rsi
	jne	.LBB3_68
	movq	200(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	384(%r13), %rsi
.LBB3_68:
	movq	368(%r13), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 384(%r13)
.LBB3_69:
	movl	148(%rbp), %r15d
	movl	%r15d, %ebx
	shrl	$5, %ebx
	cmpq	32(%r13), %rbx
	jae	.LBB3_72
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_72
	movl	(%rax,%rbx,4), %eax
	btl	%r15d, %eax
	jb	.LBB3_77
.LBB3_72:
	leaq	1(%r15), %rsi
	movq	208(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	%r15, 8(%rsp)
	movq	136(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_73
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	16(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	360(%r13), %rsi
	cmpq	352(%r13), %rsi
	jne	.LBB3_76
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	360(%r13), %rsi
	jmp	.LBB3_76
.LBB3_42:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	104(%rsp), %rcx
	jmp	.LBB3_43
.LBB3_58:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	160(%rsp), %rcx
.LBB3_43:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.7(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.8(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.LBB3_90:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.9(%rip), %rdi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.11(%rip), %rdx
	movl	$48, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB3_88:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.14(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
	ud2
.LBB3_87:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.13(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
	ud2
.LBB3_64:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB3_65
.LBB3_73:
	leaq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	136(%rsp), %rcx
.LBB3_65:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.2(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$2, 64(%rsp)
	movq	$0, 88(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$2, 80(%rsp)
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.4(%rip), %rsi
	leaq	56(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	query_state_iter, .Lfunc_end3-query_state_iter
	.cfi_endproc

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.0,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.0,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.0:
	.ascii	"set at index "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.0, 13

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.1,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.1,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.1, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.2,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.2:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.2, 32

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.3,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.3,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.3, 93

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.4,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.4:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.4, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.5,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.5:
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.5, 0

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.742eb44106aac60011c15f8144ce6fe2.6:
	.ascii	"insert at index "
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.6, 16

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.7,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.7:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.6
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.7, 32

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.8,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.8:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.8, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.9,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.9,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.9:
	.ascii	"assertion failed: index as u32 as usize == index"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.9, 48

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.10,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.10,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.10:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/94ab84e/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.10, 99

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.11,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.11:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.10
	.asciz	"c\000\000\000\000\000\000\000w\000\000\000\t\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.11, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.12,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.12,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.12:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/94ab84e/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.12, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.13,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.13:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.12
	.asciz	"a\000\000\000\000\000\000\000\016\001\000\000%\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.13, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.14,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.14:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.12
	.asciz	"a\000\000\000\000\000\000\000\t\001\000\000\016\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.14, 24

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

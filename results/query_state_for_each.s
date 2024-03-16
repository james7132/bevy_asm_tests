	.text
	.file	"query_state_for_each.2e68f9c15efb89ab-cgu.0"
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

	.section	.text.query_state_for_each,"ax",@progbits
	.globl	query_state_for_each
	.p2align	4, 0x90
	.type	query_state_for_each,@function
query_state_for_each:
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
	movq	840(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_86
	movq	%rax, 152(%rsp)
	movq	168(%rax), %rsi
	movl	8(%r13), %edi
	movl	%esi, 8(%r13)
	cmpq	%rdi, %rsi
	jb	.LBB3_85
	jne	.LBB3_3
.LBB3_77:
	movq	360(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB3_84
	movq	152(%rsp), %rdi
	movl	848(%rdi), %eax
	movq	352(%r13), %rcx
	leaq	(%rcx,%rdx,4), %rdx
	movq	296(%rdi), %rsi
	movq	304(%rdi), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB3_79
	.p2align	4, 0x90
.LBB3_83:
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	je	.LBB3_84
.LBB3_79:
	movl	(%rcx), %r9d
	cmpq	%r9, %rdi
	leaq	(%r9,%r9,8), %r9
	leaq	(%rsi,%r9,8), %r10
	cmovbeq	%r8, %r10
	movq	16(%r10), %r9
	movq	%r9, %r11
	shrq	$32, %r11
	jne	.LBB3_87
	testq	%r9, %r9
	je	.LBB3_83
	movq	392(%r13), %r11
	movq	400(%r13), %rbx
	movq	24(%r10), %r14
	movq	56(%r10), %r15
	movq	(%r15,%r11,8), %r10
	notq	%r10
	leaq	(%r10,%r10,2), %r11
	shlq	$5, %r11
	movq	16(%r14,%r11), %r10
	movq	80(%r14,%r11), %r11
	movq	(%r15,%rbx,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$5, %rbx
	movq	16(%r14,%rbx), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_82:
	movss	(%rbx,%r14,4), %xmm0
	movl	%eax, (%r11,%r14,4)
	addss	(%r10,%r14,4), %xmm0
	movss	%xmm0, (%r10,%r14,4)
	leaq	1(%r14), %r15
	movq	%r15, %r14
	cmpq	%r15, %r9
	jne	.LBB3_82
	jmp	.LBB3_83
.LBB3_84:
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
	movq	160(%rax), %rax
	leaq	(%rsi,%rsi,4), %r14
	shlq	$5, %r14
	addq	%rax, %r14
	leaq	(%rdi,%rdi,4), %rbp
	shlq	$5, %rbp
	addq	%rax, %rbp
	leaq	184(%r13), %rax
	movq	%rax, 232(%rsp)
	leaq	216(%r13), %rax
	movq	%rax, 224(%rsp)
	leaq	80(%r13), %rax
	movq	%rax, 160(%rsp)
	leaq	104(%r13), %rax
	movq	%rax, 96(%rsp)
	leaq	112(%r13), %rax
	movq	%rax, 240(%rsp)
	leaq	136(%r13), %rax
	movq	%rax, 176(%rsp)
	leaq	48(%r13), %rax
	movq	%rax, 208(%rsp)
	leaq	72(%r13), %rax
	movq	%rax, 144(%rsp)
	leaq	368(%r13), %rax
	movq	%rax, 192(%rsp)
	leaq	16(%r13), %rax
	movq	%rax, 200(%rsp)
	leaq	40(%r13), %rax
	movq	%rax, 136(%rsp)
	leaq	344(%r13), %rax
	movq	%rax, 184(%rsp)
	movq	%r13, 128(%rsp)
	movq	%r14, 216(%rsp)
	jmp	.LBB3_4
.LBB3_75:
	movq	352(%r13), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 360(%r13)
	.p2align	4, 0x90
.LBB3_76:
	addq	$160, %rbp
	cmpq	%r14, %rbp
	je	.LBB3_77
.LBB3_4:
	movq	392(%r13), %rax
	movq	136(%rbp), %rbx
	cmpq	%rax, %rbx
	jbe	.LBB3_76
	movq	128(%rbp), %r15
	testq	%r15, %r15
	je	.LBB3_76
	cmpq	$0, (%r15,%rax,8)
	je	.LBB3_76
	movq	400(%r13), %rax
	cmpq	%rax, %rbx
	jbe	.LBB3_76
	cmpq	$0, (%r15,%rax,8)
	je	.LBB3_76
	movq	336(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_76
	movq	328(%r13), %rcx
	shlq	$6, %rax
	addq	%rcx, %rax
.LBB3_11:
	movq	%rcx, %rdx
	movq	16(%rcx), %rcx
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	je	.LBB3_12
	movq	8(%rdx), %r9
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %rsi
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
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %rsi
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
	cmpq	$0, (%r15,%r10,8)
	movl	%r11d, %r8d
	jne	.LBB3_16
	jmp	.LBB3_31
	.p2align	4, 0x90
.LBB3_21:
	movq	48(%rdx), %r8
	xorl	%edi, %edi
	testq	%r8, %r8
	je	.LBB3_22
	movq	40(%rdx), %r9
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %rdx
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
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %rdx
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
	cmpq	$0, (%r15,%r9,8)
	je	.LBB3_26
	.p2align	4, 0x90
.LBB3_31:
	cmpq	%rax, %rcx
	jne	.LBB3_11
	jmp	.LBB3_76
.LBB3_32:
	movq	%r15, 104(%rsp)
	movq	%rbx, 112(%rsp)
	leaq	16(%rsp), %rdi
	movq	232(%rsp), %rsi
	movq	224(%rsp), %rdx
	callq	*fixedbitset::FixedBitSet::difference@GOTPCREL(%rip)
	movq	16(%rsp), %r12
	movq	24(%rsp), %r15
	movq	%rbp, %rax
	movq	32(%rsp), %rbp
	movl	40(%rsp), %r14d
	movq	48(%rsp), %rbx
	movq	%rax, 248(%rsp)
	movq	96(%rax), %rax
	movq	%rax, 168(%rsp)
	.p2align	4, 0x90
.LBB3_33:
	testl	%r14d, %r14d
	jne	.LBB3_36
	subq	$1, %r15
	jb	.LBB3_45
	movl	(%r12), %r14d
	addq	$4, %r12
	incq	%rbp
	jmp	.LBB3_33
.LBB3_36:
	movl	%r14d, %ecx
	rep		bsfl	%r14d, %eax
	leal	-1(%rcx), %r14d
	andl	%ecx, %r14d
	movq	%rbp, %rcx
	movabsq	$576460752303423487, %rdx
	andq	%rdx, %rcx
	cmpq	16(%rbx), %rcx
	jae	.LBB3_39
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_39
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jb	.LBB3_33
.LBB3_39:
	movl	%eax, %ecx
	movq	%rbp, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, 112(%rsp)
	jbe	.LBB3_33
	movq	104(%rsp), %rcx
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB3_33
	notq	%rax
	shlq	$4, %rax
	movq	168(%rsp), %rcx
	movq	(%rcx,%rax), %rax
	movq	%rax, 120(%rsp)
	leaq	1(%rax), %rsi
	movq	160(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	96(%rsp), %rax
	cmpq	%rcx, (%rax)
	jbe	.LBB3_42
	movl	$1, %eax
	shll	%cl, %eax
	movq	88(%r13), %rdx
	shrq	$5, %rcx
	orl	%eax, (%rdx,%rcx,4)
	jmp	.LBB3_33
.LBB3_45:
	movq	232(%r13), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB3_46
	movq	224(%r13), %rcx
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %r14
	movl	$0, %ebp
	testq	%rcx, %rcx
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r12
	movq	112(%rsp), %rdx
	movq	104(%rsp), %rsi
	je	.LBB3_49
	decq	%rax
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, %r14
	movq	%rax, %rbp
	jmp	.LBB3_49
.LBB3_46:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %r14
	xorl	%ebp, %ebp
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r12
	movq	112(%rsp), %rdx
	movq	104(%rsp), %rsi
.LBB3_49:
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_50:
	testl	%ebx, %ebx
	jne	.LBB3_53
	subq	$1, %rbp
	jb	.LBB3_59
	movl	(%r14), %ebx
	addq	$4, %r14
	incq	%r13
	jmp	.LBB3_50
.LBB3_53:
	movl	%ebx, %eax
	rep		bsfl	%ebx, %ecx
	leal	-1(%rax), %ebx
	andl	%eax, %ebx
	movq	%r13, %rax
	shlq	$5, %rax
	orq	%rcx, %rax
	cmpq	%rax, %rdx
	jbe	.LBB3_50
	movq	(%rsi,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB3_50
	notq	%rax
	shlq	$4, %rax
	movq	168(%rsp), %rcx
	movq	(%rcx,%rax), %r15
	leaq	1(%r15), %rsi
	movq	160(%rsp), %rdi
	movq	%rsi, 120(%rsp)
	callq	*%r12
	movq	%r15, 8(%rsp)
	movq	96(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_42
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r15, 256(%rsp)
	shrq	$5, %r15
	movl	$1, %r12d
	shll	%cl, %r12d
	movq	128(%rsp), %rax
	movq	88(%rax), %rax
	orl	%r12d, (%rax,%r15,4)
	movq	240(%rsp), %rdi
	movq	120(%rsp), %rsi
	callq	*%rdx
	movq	128(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	cmpq	%rcx, 136(%rax)
	jbe	.LBB3_57
	movq	120(%rax), %rax
	orl	%r12d, (%rax,%r15,4)
	movq	fixedbitset::FixedBitSet::grow@GOTPCREL(%rip), %r12
	movq	112(%rsp), %rdx
	movq	104(%rsp), %rsi
	jmp	.LBB3_50
.LBB3_59:
	movq	248(%rsp), %rbp
	movl	144(%rbp), %r15d
	movl	%r15d, %ebx
	shrl	$5, %ebx
	movq	128(%rsp), %r13
	cmpq	64(%r13), %rbx
	movq	216(%rsp), %r14
	jae	.LBB3_62
	movq	56(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_62
	movl	(%rax,%rbx,4), %eax
	btl	%r15d, %eax
	jb	.LBB3_68
.LBB3_62:
	leaq	1(%r15), %rsi
	movq	208(%rsp), %rdi
	callq	*%r12
	movq	%r15, 8(%rsp)
	movq	144(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_63
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	56(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	384(%r13), %rsi
	cmpq	368(%r13), %rsi
	jne	.LBB3_67
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	384(%r13), %rsi
.LBB3_67:
	movq	376(%r13), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 384(%r13)
.LBB3_68:
	movl	148(%rbp), %r15d
	movl	%r15d, %ebx
	shrl	$5, %ebx
	cmpq	32(%r13), %rbx
	jae	.LBB3_71
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_71
	movl	(%rax,%rbx,4), %eax
	btl	%r15d, %eax
	jb	.LBB3_76
.LBB3_71:
	leaq	1(%r15), %rsi
	movq	200(%rsp), %rdi
	callq	*%r12
	movq	%r15, 8(%rsp)
	movq	136(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB3_72
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movq	24(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	360(%r13), %rsi
	cmpq	344(%r13), %rsi
	jne	.LBB3_75
	movq	184(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	360(%r13), %rsi
	jmp	.LBB3_75
.LBB3_87:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$1, 24(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %rax
	movq	%rax, 32(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB3_42:
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	96(%rsp), %rcx
	jmp	.LBB3_43
.LBB3_57:
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	176(%rsp), %rcx
.LBB3_43:
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB3_86:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.15(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_85:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_63:
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	144(%rsp), %rcx
	jmp	.LBB3_64
.LBB3_72:
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rcx
.LBB3_64:
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$2, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end3:
	.size	query_state_for_each, .Lfunc_end3-query_state_for_each
	.cfi_endproc

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.0,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.0:
	.ascii	"set at index "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0, 13

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.1,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.2:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.3,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3, 93

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.4:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.5,"a",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.5:
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5, 0

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.6dae6fee9a6576153fd5b36d700139f2.6:
	.ascii	"insert at index "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6, 16

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.7:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.8:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.9,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.9:
	.ascii	"TableRow is only valid up to u32::MAX"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9, 37

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.10:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9
	.asciz	"%\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10, 16

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.11,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.11:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/3a83f4e/crates/bevy_ecs/src/query/iter.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11, 96

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.12:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11
	.asciz	"`\000\000\000\000\000\000\000n\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.13,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.13:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/3a83f4e/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13, 97

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.14:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13
	.asciz	"a\000\000\000\000\000\000\000\026\001\000\000%\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.15,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.15:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13
	.asciz	"a\000\000\000\000\000\000\000\021\001\000\000\016\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.15, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

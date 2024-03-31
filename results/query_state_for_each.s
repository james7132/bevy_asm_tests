	.text
	.file	"query_state_for_each.b81c6555f09b512f-cgu.0"
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
	jb	.LBB2_10
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
	shlq	$4, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$16, 16(%rsp)
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
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end2-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_0:
	.zero	16
	.section	.text.query_state_for_each,"ax",@progbits
	.globl	query_state_for_each
	.p2align	4, 0x90
	.type	query_state_for_each,@function
query_state_for_each:
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
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	768(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_86
	movq	%rax, 96(%rsp)
	movq	168(%rax), %rsi
	movl	8(%rbx), %edi
	movl	%esi, 8(%rbx)
	cmpq	%rdi, %rsi
	jb	.LBB3_85
	jne	.LBB3_3
.LBB3_77:
	movq	208(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_84
	movq	96(%rsp), %rdi
	movl	776(%rdi), %eax
	movq	200(%rbx), %rcx
	leaq	(%rcx,%rdx,4), %rdx
	movq	296(%rdi), %rsi
	movq	304(%rdi), %rdi
	movq	216(%rbx), %r8
	movq	224(%rbx), %r9
	xorl	%r10d, %r10d
	jmp	.LBB3_79
	.p2align	4, 0x90
.LBB3_83:
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	je	.LBB3_84
.LBB3_79:
	movl	(%rcx), %r11d
	cmpq	%r11, %rdi
	leaq	(%r11,%r11,8), %r11
	leaq	(%rsi,%r11,8), %rbx
	cmovbeq	%r10, %rbx
	movq	16(%rbx), %r11
	movq	%r11, %r14
	shrq	$32, %r14
	jne	.LBB3_88
	testq	%r11, %r11
	je	.LBB3_83
	movq	24(%rbx), %r15
	movq	56(%rbx), %r12
	movq	(%r12,%r8,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %r14
	shlq	$5, %r14
	movq	16(%r15,%r14), %rbx
	movq	80(%r15,%r14), %r14
	movq	(%r12,%r9,8), %r12
	notq	%r12
	leaq	(%r12,%r12,2), %r12
	shlq	$5, %r12
	movq	16(%r15,%r12), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_82:
	movss	(%r15,%r12,4), %xmm0
	movl	%eax, (%r14,%r12,4)
	addss	(%rbx,%r12,4), %xmm0
	movss	%xmm0, (%rbx,%r12,4)
	leaq	1(%r12), %r13
	movq	%r13, %r12
	cmpq	%r13, %r11
	jne	.LBB3_82
	jmp	.LBB3_83
.LBB3_84:
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
.LBB3_3:
	.cfi_def_cfa_offset 192
	movq	96(%rsp), %rax
	movq	160(%rax), %rax
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$5, %rcx
	addq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	leaq	(%rdi,%rdi,4), %r14
	shlq	$5, %r14
	addq	%rax, %r14
	leaq	40(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	192(%rbx), %rax
	movq	%rax, 120(%rsp)
	leaq	32(%rsp), %r12
	movq	%rbx, 104(%rsp)
	jmp	.LBB3_4
.LBB3_75:
	movq	200(%rbx), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 208(%rbx)
	.p2align	4, 0x90
.LBB3_76:
	addq	$160, %r14
	cmpq	128(%rsp), %r14
	je	.LBB3_77
.LBB3_4:
	movq	216(%rbx), %rdx
	movq	136(%r14), %rax
	cmpq	%rdx, %rax
	jbe	.LBB3_76
	movq	128(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB3_76
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_76
	movq	224(%rbx), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB3_76
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_76
	movq	80(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_76
	movq	72(%rbx), %rdi
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	jmp	.LBB3_11
	.p2align	4, 0x90
.LBB3_28:
	movq	%rsi, %rdi
	cmpq	%rdx, %rsi
	movq	104(%rsp), %rbx
	je	.LBB3_76
.LBB3_11:
	movq	16(%rdi), %r8
	movq	%r8, %r9
	shrq	$6, %r9
	xorl	%esi, %esi
	testb	$63, %r8b
	setne	%sil
	addq	%r9, %rsi
	je	.LBB3_12
	movq	(%rdi), %rbp
	movl	$0, %r11d
	movl	$0, %r13d
	movl	$0, %r8d
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0(%rip), %r10
	movq	%r10, %r9
	testq	%rbp, %rbp
	je	.LBB3_15
	leaq	8(%rbp), %r9
	movq	(%rbp), %r11
	leaq	-8(,%rsi,8), %r10
	addq	%rbp, %r10
	decq	%rsi
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1(%rip), %r8
	cmoveq	%r8, %r10
	subq	$1, %rsi
	movl	$0, %r8d
	cmovaeq	%rsi, %r8
	movq	(%r10), %r13
	leaq	8(,%r8,8), %r10
	addq	%rbp, %r10
	shlq	$6, %r8
	addq	$64, %r8
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_12:
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0(%rip), %r10
	movq	%r10, %r9
.LBB3_15:
	leaq	48(%rdi), %rsi
	movq	%r11, 32(%rsp)
	movq	%r13, 24(%rsp)
	xorl	%r13d, %r13d
	testq	%r11, %r11
	je	.LBB3_18
	.p2align	4, 0x90
.LBB3_25:
	movq	%r12, %rbp
	jmp	.LBB3_26
	.p2align	4, 0x90
.LBB3_18:
	cmpq	%r10, %r9
	je	.LBB3_22
	addq	$64, %r13
	.p2align	4, 0x90
.LBB3_20:
	movq	(%r9), %r11
	testq	%r11, %r11
	jne	.LBB3_24
	addq	$8, %r9
	addq	$64, %r13
	cmpq	%r10, %r9
	jne	.LBB3_20
.LBB3_22:
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.LBB3_29
	movq	$0, 32(%rsp)
	movq	%r8, %r13
	movq	%r10, %r9
	leaq	24(%rsp), %rbp
.LBB3_26:
	rep		bsfq	%r11, %rbx
	leaq	-1(%r11), %r15
	andq	%r11, %r15
	movq	%r15, (%rbp)
	addq	%r13, %rbx
	cmpq	%rbx, %rax
	jbe	.LBB3_28
	cmpq	$0, (%rcx,%rbx,8)
	je	.LBB3_28
	movq	32(%rsp), %r11
	testq	%r11, %r11
	jne	.LBB3_25
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_24:
	movq	%r11, 32(%rsp)
	addq	$8, %r9
	jmp	.LBB3_25
.LBB3_29:
	movq	40(%rdi), %r8
	movq	%r8, %r9
	shrq	$6, %r9
	xorl	%r11d, %r11d
	testb	$63, %r8b
	setne	%r11b
	addq	%r9, %r11
	je	.LBB3_30
	movq	24(%rdi), %rbp
	movl	$0, %r10d
	movl	$0, %r13d
	movl	$0, %edi
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0(%rip), %r9
	movq	%r9, %r8
	testq	%rbp, %rbp
	je	.LBB3_33
	leaq	8(%rbp), %r8
	movq	(%rbp), %r10
	leaq	-8(,%r11,8), %r9
	addq	%rbp, %r9
	decq	%r11
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1(%rip), %rdi
	cmoveq	%rdi, %r9
	subq	$1, %r11
	movl	$0, %edi
	cmovaeq	%r11, %rdi
	movq	(%r9), %r13
	leaq	8(,%rdi,8), %r9
	addq	%rbp, %r9
	shlq	$6, %rdi
	addq	$64, %rdi
	jmp	.LBB3_33
.LBB3_30:
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0(%rip), %r9
	movq	%r9, %r8
.LBB3_33:
	movq	%r10, 32(%rsp)
	movq	%r13, 24(%rsp)
	xorl	%r11d, %r11d
	jmp	.LBB3_34
	.p2align	4, 0x90
.LBB3_45:
	movq	32(%rsp), %r10
.LBB3_34:
	testq	%r10, %r10
	je	.LBB3_35
.LBB3_42:
	movq	%r12, %r13
	jmp	.LBB3_43
	.p2align	4, 0x90
.LBB3_35:
	cmpq	%r9, %r8
	je	.LBB3_39
	addq	$64, %r11
	.p2align	4, 0x90
.LBB3_37:
	movq	(%r8), %r10
	testq	%r10, %r10
	jne	.LBB3_41
	addq	$8, %r8
	addq	$64, %r11
	cmpq	%r9, %r8
	jne	.LBB3_37
.LBB3_39:
	movq	24(%rsp), %r10
	testq	%r10, %r10
	je	.LBB3_46
	movq	$0, 32(%rsp)
	movq	%rdi, %r11
	movq	%r9, %r8
	leaq	24(%rsp), %r13
.LBB3_43:
	rep		bsfq	%r10, %rbx
	leaq	-1(%r10), %r15
	andq	%r10, %r15
	movq	%r15, (%r13)
	addq	%r11, %rbx
	cmpq	%rbx, %rax
	jbe	.LBB3_45
	cmpq	$0, (%rcx,%rbx,8)
	je	.LBB3_45
	jmp	.LBB3_28
.LBB3_41:
	movq	%r10, 32(%rsp)
	addq	$8, %r8
	jmp	.LBB3_42
.LBB3_46:
	movl	144(%r14), %ebp
	movq	104(%rsp), %rbx
	movq	40(%rbx), %r15
	movq	56(%rbx), %rax
	cmpq	%rbp, %rax
	jbe	.LBB3_50
	movl	$1, %edx
	movl	%ebp, %ecx
	shlq	%cl, %rdx
	movl	%ebp, %eax
	shrl	$6, %eax
	movq	(%r15,%rax,8), %rsi
	btq	%rbp, %rsi
	jb	.LBB3_48
	jmp	.LBB3_59
.LBB3_50:
	leaq	1(%rbp), %rcx
	movq	%rax, %rdx
	shrq	$7, %rdx
	xorl	%esi, %esi
	testb	$127, %al
	setne	%sil
	movq	%rdx, 88(%rsp)
	movq	%rsi, 80(%rsp)
	addq	%rdx, %rsi
	movq	48(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rcx, %r13
	shrq	$7, %r13
	movq	%rcx, 8(%rsp)
	andl	$127, %ecx
	cmpq	$1, %rcx
	sbbq	$-1, %r13
	movq	%r13, %rcx
	subq	%rsi, %rcx
	jbe	.LBB3_51
	subq	%rsi, %rax
	cmpq	%rcx, %rax
	movq	%rcx, 16(%rsp)
	jae	.LBB3_55
.Ltmp0:
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp1:
	movq	40(%rsp), %r15
	movq	48(%rsp), %rsi
	movq	16(%rsp), %rcx
.LBB3_55:
	movq	%rsi, %rdi
	shlq	$4, %rdi
	addq	%r15, %rdi
	cmpq	$2, %rcx
	jb	.LBB3_57
	movq	80(%rsp), %rax
	negq	%rax
	movq	88(%rsp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	addq	%r13, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r13
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	16(%rsp), %r13
	shlq	$4, %r13
	leaq	(%r15,%r13), %rdi
	addq	$-16, %rdi
.LBB3_57:
	movq	8(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rdi)
	movq	32(%rsp), %rax
	jmp	.LBB3_58
.LBB3_51:
	movq	8(%rsp), %rcx
.LBB3_58:
	movq	%r15, 40(%rbx)
	movq	%rax, 48(%rbx)
	movq	%rcx, 56(%rbx)
	movl	%ebp, %eax
	shrl	$6, %eax
	movq	(%r15,%rax,8), %rsi
	movl	$1, %edx
	movl	%ebp, %ecx
	shlq	%cl, %rdx
.LBB3_59:
	orq	%rsi, %rdx
	movq	%rdx, (%r15,%rax,8)
.LBB3_48:
	movl	148(%r14), %r15d
	movq	16(%rbx), %rbp
	movq	32(%rbx), %rax
	cmpq	%r15, %rax
	jbe	.LBB3_64
	movl	$1, %edx
	movl	%r15d, %ecx
	shlq	%cl, %rdx
	movl	%r15d, %eax
	shrl	$6, %eax
	movq	(%rbp,%rax,8), %rsi
	btq	%r15, %rsi
	jb	.LBB3_76
	jmp	.LBB3_73
.LBB3_64:
	leaq	1(%r15), %rcx
	movq	%rax, %rdx
	shrq	$7, %rdx
	xorl	%esi, %esi
	testb	$127, %al
	setne	%sil
	movq	%rdx, 88(%rsp)
	movq	%rsi, 80(%rsp)
	addq	%rdx, %rsi
	movq	24(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rcx, %r13
	shrq	$7, %r13
	movq	%rcx, 8(%rsp)
	andl	$127, %ecx
	cmpq	$1, %rcx
	sbbq	$-1, %r13
	movq	%r13, %rcx
	subq	%rsi, %rcx
	jbe	.LBB3_65
	subq	%rsi, %rax
	cmpq	%rcx, %rax
	movq	%rcx, 16(%rsp)
	jae	.LBB3_69
.Ltmp3:
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp4:
	movq	40(%rsp), %rbp
	movq	48(%rsp), %rsi
	movq	16(%rsp), %rcx
.LBB3_69:
	movq	%rsi, %rdi
	shlq	$4, %rdi
	addq	%rbp, %rdi
	cmpq	$2, %rcx
	jb	.LBB3_71
	movq	80(%rsp), %rax
	negq	%rax
	movq	88(%rsp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	addq	%r13, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r13
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	16(%rsp), %r13
	shlq	$4, %r13
	leaq	-16(,%rbp), %rdi
	addq	%r13, %rdi
.LBB3_71:
	movq	8(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rdi)
	movq	32(%rsp), %rax
	jmp	.LBB3_72
.LBB3_65:
	movq	8(%rsp), %rcx
.LBB3_72:
	movq	%rbp, 16(%rbx)
	movq	%rax, 24(%rbx)
	movq	%rcx, 32(%rbx)
	movl	%r15d, %eax
	shrl	$6, %eax
	movq	(%rbp,%rax,8), %rsi
	movl	$1, %edx
	movl	%r15d, %ecx
	shlq	%cl, %rdx
.LBB3_73:
	orq	%rsi, %rdx
	movq	%rdx, (%rbp,%rax,8)
	movq	208(%rbx), %rsi
	cmpq	192(%rbx), %rsi
	jne	.LBB3_75
	movq	120(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	208(%rbx), %rsi
	jmp	.LBB3_75
.LBB3_88:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0(%rip), %rax
	movq	%rax, 48(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5(%rip), %rsi
	leaq	32(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB3_86:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_85:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_87:
.Ltmp5:
	jmp	.LBB3_63
.LBB3_62:
.Ltmp2:
.LBB3_63:
	movq	%rax, %rbx
	movq	32(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_61
	movq	112(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$4, %rsi
	movl	$16, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_61:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	query_state_for_each, .Lfunc_end3-query_state_for_each
	.cfi_endproc
	.section	.gcc_except_table.query_state_for_each,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp1
	.byte	0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Lfunc_end3-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.0:
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0, 0

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.1:
	.zero	8
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1, 8

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.2,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.2:
	.ascii	"TableRow is only valid up to u32::MAX"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2, 37

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.3:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2
	.asciz	"%\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3, 16

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.4,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/e5a4698/crates/bevy_ecs/src/query/iter.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4, 96

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.5:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4
	.asciz	"`\000\000\000\000\000\000\000n\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.6,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.6:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/e5a4698/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6, 97

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.7:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6
	.asciz	"a\000\000\000\000\000\000\000X\001\000\000%\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.8:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6
	.asciz	"a\000\000\000\000\000\000\000S\001\000\000\016\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8, 24

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

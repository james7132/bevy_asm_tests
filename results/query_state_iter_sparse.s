	.text
	.file	"query_state_iter_sparse.e75b75f99dc55e96-cgu.0"
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
	.section	.text.query_state_iter,"ax",@progbits
	.globl	query_state_iter
	.p2align	4, 0x90
	.type	query_state_iter,@function
query_state_iter:
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
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	768(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB3_100
	movq	%rax, 72(%rsp)
	movq	168(%rax), %rsi
	movl	8(%r14), %edi
	movl	%esi, 8(%r14)
	cmpq	%rdi, %rsi
	jb	.LBB3_101
	jne	.LBB3_11
.LBB3_3:
	movq	216(%r14), %rcx
	movq	224(%r14), %rdx
	movq	72(%rsp), %r9
	movq	272(%r9), %rsi
	movq	280(%r9), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB3_7
	testq	%rsi, %rsi
	je	.LBB3_7
	movq	(%rsi,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB3_80
	notq	%rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	224(%r9), %rax
.LBB3_7:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB3_82
.LBB3_8:
	testq	%rsi, %rsi
	je	.LBB3_82
	movq	(%rsi,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB3_81
	notq	%rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	224(%r9), %rcx
	jmp	.LBB3_82
.LBB3_11:
	movq	72(%rsp), %rax
	movq	160(%rax), %rax
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$5, %rcx
	addq	%rax, %rcx
	movq	%rcx, 96(%rsp)
	leaq	(%rdi,%rdi,4), %rbx
	shlq	$5, %rbx
	addq	%rax, %rbx
	leaq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	192(%r14), %rax
	movq	%rax, 88(%rsp)
	leaq	8(%rsp), %r12
	movq	%r14, 48(%rsp)
	jmp	.LBB3_16
.LBB3_12:
	movq	(%rsp), %rcx
.LBB3_13:
	movq	%r15, 16(%r14)
	movq	%rax, 24(%r14)
	movq	%rcx, 32(%r14)
	movl	%ebp, %eax
	shrl	$6, %eax
	movq	(%r15,%rax,8), %rsi
	movl	$1, %edx
	movl	%ebp, %ecx
	shlq	%cl, %rdx
.LBB3_14:
	orq	%rsi, %rdx
	movq	%rdx, (%r15,%rax,8)
	.p2align	4, 0x90
.LBB3_15:
	addq	$160, %rbx
	cmpq	96(%rsp), %rbx
	je	.LBB3_3
.LBB3_16:
	movq	216(%r14), %rdx
	movq	136(%rbx), %rax
	cmpq	%rdx, %rax
	jbe	.LBB3_15
	movq	128(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_15
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_15
	movq	224(%r14), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB3_15
	cmpq	$0, (%rcx,%rdx,8)
	je	.LBB3_15
	movq	80(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB3_15
	movq	72(%r14), %rdi
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	addq	%rdi, %rdx
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_23:
	movq	%rsi, %rdi
	cmpq	%rdx, %rsi
	movq	48(%rsp), %r14
	je	.LBB3_15
.LBB3_24:
	movq	16(%rdi), %r8
	movq	%r8, %r9
	shrq	$6, %r9
	xorl	%esi, %esi
	testb	$63, %r8b
	setne	%sil
	addq	%r9, %rsi
	je	.LBB3_27
	movq	(%rdi), %rbp
	movl	$0, %r11d
	movl	$0, %r13d
	movl	$0, %r8d
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.0(%rip), %r10
	movq	%r10, %r9
	testq	%rbp, %rbp
	je	.LBB3_28
	leaq	8(%rbp), %r9
	movq	(%rbp), %r11
	leaq	-8(,%rsi,8), %r10
	addq	%rbp, %r10
	decq	%rsi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.1(%rip), %r8
	cmoveq	%r8, %r10
	subq	$1, %rsi
	movl	$0, %r8d
	cmovaeq	%rsi, %r8
	movq	(%r10), %r13
	leaq	8(,%r8,8), %r10
	addq	%rbp, %r10
	shlq	$6, %r8
	addq	$64, %r8
	jmp	.LBB3_28
	.p2align	4, 0x90
.LBB3_27:
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.0(%rip), %r10
	movq	%r10, %r9
.LBB3_28:
	leaq	48(%rdi), %rsi
	movq	%r11, 8(%rsp)
	movq	%r13, 40(%rsp)
	xorl	%r13d, %r13d
	testq	%r11, %r11
	jne	.LBB3_29
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_38:
	movq	8(%rsp), %r11
	testq	%r11, %r11
	jne	.LBB3_29
.LBB3_30:
	cmpq	%r10, %r9
	je	.LBB3_34
	addq	$64, %r13
	.p2align	4, 0x90
.LBB3_32:
	movq	(%r9), %r11
	testq	%r11, %r11
	jne	.LBB3_39
	addq	$8, %r9
	addq	$64, %r13
	cmpq	%r10, %r9
	jne	.LBB3_32
.LBB3_34:
	movq	40(%rsp), %r11
	testq	%r11, %r11
	je	.LBB3_40
	movq	$0, 8(%rsp)
	movq	%r8, %r13
	movq	%r10, %r9
	leaq	40(%rsp), %rbp
	jmp	.LBB3_36
	.p2align	4, 0x90
.LBB3_39:
	movq	%r11, 8(%rsp)
	addq	$8, %r9
	.p2align	4, 0x90
.LBB3_29:
	movq	%r12, %rbp
.LBB3_36:
	rep		bsfq	%r11, %r14
	leaq	-1(%r11), %r15
	andq	%r11, %r15
	movq	%r15, (%rbp)
	addq	%r13, %r14
	cmpq	%r14, %rax
	jbe	.LBB3_23
	cmpq	$0, (%rcx,%r14,8)
	jne	.LBB3_38
	jmp	.LBB3_23
.LBB3_40:
	movq	40(%rdi), %r8
	movq	%r8, %r9
	shrq	$6, %r9
	xorl	%r11d, %r11d
	testb	$63, %r8b
	setne	%r11b
	addq	%r9, %r11
	je	.LBB3_43
	movq	24(%rdi), %rbp
	movl	$0, %r10d
	movl	$0, %r13d
	movl	$0, %edi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.0(%rip), %r9
	movq	%r9, %r8
	testq	%rbp, %rbp
	je	.LBB3_44
	leaq	8(%rbp), %r8
	movq	(%rbp), %r10
	leaq	-8(,%r11,8), %r9
	addq	%rbp, %r9
	decq	%r11
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.1(%rip), %rdi
	cmoveq	%rdi, %r9
	subq	$1, %r11
	movl	$0, %edi
	cmovaeq	%r11, %rdi
	movq	(%r9), %r13
	leaq	8(,%rdi,8), %r9
	addq	%rbp, %r9
	shlq	$6, %rdi
	addq	$64, %rdi
	jmp	.LBB3_44
.LBB3_43:
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.0(%rip), %r9
	movq	%r9, %r8
.LBB3_44:
	movq	%r10, 8(%rsp)
	movq	%r13, 40(%rsp)
	xorl	%r11d, %r11d
	jmp	.LBB3_46
	.p2align	4, 0x90
.LBB3_45:
	movq	8(%rsp), %r10
.LBB3_46:
	testq	%r10, %r10
	je	.LBB3_48
.LBB3_47:
	movq	%r12, %r13
	jmp	.LBB3_54
	.p2align	4, 0x90
.LBB3_48:
	cmpq	%r9, %r8
	je	.LBB3_52
	addq	$64, %r11
	.p2align	4, 0x90
.LBB3_50:
	movq	(%r8), %r10
	testq	%r10, %r10
	jne	.LBB3_56
	addq	$8, %r8
	addq	$64, %r11
	cmpq	%r9, %r8
	jne	.LBB3_50
.LBB3_52:
	movq	40(%rsp), %r10
	testq	%r10, %r10
	je	.LBB3_57
	movq	$0, 8(%rsp)
	movq	%rdi, %r11
	movq	%r9, %r8
	leaq	40(%rsp), %r13
.LBB3_54:
	rep		bsfq	%r10, %r14
	leaq	-1(%r10), %r15
	andq	%r10, %r15
	movq	%r15, (%r13)
	addq	%r11, %r14
	cmpq	%r14, %rax
	jbe	.LBB3_45
	cmpq	$0, (%rcx,%r14,8)
	je	.LBB3_45
	jmp	.LBB3_23
.LBB3_56:
	movq	%r10, 8(%rsp)
	addq	$8, %r8
	jmp	.LBB3_47
.LBB3_57:
	movl	144(%rbx), %r15d
	movq	48(%rsp), %r14
	movq	40(%r14), %rbp
	movq	56(%r14), %rax
	cmpq	%r15, %rax
	jbe	.LBB3_59
	movl	$1, %edx
	movl	%r15d, %ecx
	shlq	%cl, %rdx
	movl	%r15d, %eax
	shrl	$6, %eax
	movq	(%rbp,%rax,8), %rsi
	btq	%r15, %rsi
	jb	.LBB3_71
	jmp	.LBB3_68
.LBB3_59:
	leaq	1(%r15), %rcx
	movq	%rax, %rdx
	shrq	$7, %rdx
	xorl	%esi, %esi
	testb	$127, %al
	setne	%sil
	movq	%rdx, 64(%rsp)
	movq	%rsi, 56(%rsp)
	addq	%rdx, %rsi
	movq	48(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rcx, %r13
	shrq	$7, %r13
	movq	%rcx, (%rsp)
	andl	$127, %ecx
	cmpq	$1, %rcx
	sbbq	$-1, %r13
	movq	%r13, %rcx
	subq	%rsi, %rcx
	jbe	.LBB3_66
	subq	%rsi, %rax
	cmpq	%rcx, %rax
	movq	%rcx, 32(%rsp)
	jae	.LBB3_63
.Ltmp0:
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp1:
	movq	16(%rsp), %rbp
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rcx
.LBB3_63:
	movq	%rsi, %rdi
	shlq	$4, %rdi
	addq	%rbp, %rdi
	cmpq	$2, %rcx
	jb	.LBB3_65
	movq	56(%rsp), %rax
	negq	%rax
	movq	64(%rsp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	addq	%r13, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r13
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	32(%rsp), %r13
	shlq	$4, %r13
	leaq	-16(,%rbp), %rdi
	addq	%r13, %rdi
.LBB3_65:
	movq	(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rdi)
	movq	8(%rsp), %rax
	jmp	.LBB3_67
.LBB3_66:
	movq	(%rsp), %rcx
.LBB3_67:
	movq	%rbp, 40(%r14)
	movq	%rax, 48(%r14)
	movq	%rcx, 56(%r14)
	movl	%r15d, %eax
	shrl	$6, %eax
	movq	(%rbp,%rax,8), %rsi
	movl	$1, %edx
	movl	%r15d, %ecx
	shlq	%cl, %rdx
.LBB3_68:
	orq	%rsi, %rdx
	movq	%rdx, (%rbp,%rax,8)
	movq	208(%r14), %rsi
	cmpq	192(%r14), %rsi
	jne	.LBB3_70
	movq	88(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	208(%r14), %rsi
.LBB3_70:
	movq	200(%r14), %rax
	movl	%r15d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 208(%r14)
.LBB3_71:
	movl	148(%rbx), %ebp
	movq	16(%r14), %r15
	movq	32(%r14), %rax
	cmpq	%rbp, %rax
	jbe	.LBB3_73
	movl	$1, %edx
	movl	%ebp, %ecx
	shlq	%cl, %rdx
	movl	%ebp, %eax
	shrl	$6, %eax
	movq	(%r15,%rax,8), %rsi
	btq	%rbp, %rsi
	jb	.LBB3_15
	jmp	.LBB3_14
.LBB3_73:
	leaq	1(%rbp), %rcx
	movq	%rax, %rdx
	shrq	$7, %rdx
	xorl	%esi, %esi
	testb	$127, %al
	setne	%sil
	movq	%rdx, 64(%rsp)
	movq	%rsi, 56(%rsp)
	addq	%rdx, %rsi
	movq	24(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rcx, %r13
	shrq	$7, %r13
	movq	%rcx, (%rsp)
	andl	$127, %ecx
	cmpq	$1, %rcx
	sbbq	$-1, %r13
	movq	%r13, %rcx
	subq	%rsi, %rcx
	jbe	.LBB3_12
	subq	%rsi, %rax
	cmpq	%rcx, %rax
	movq	%rcx, 32(%rsp)
	jae	.LBB3_77
.Ltmp3:
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp4:
	movq	16(%rsp), %r15
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rcx
.LBB3_77:
	movq	%rsi, %rdi
	shlq	$4, %rdi
	addq	%r15, %rdi
	cmpq	$2, %rcx
	jb	.LBB3_79
	movq	56(%rsp), %rax
	negq	%rax
	movq	64(%rsp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	addq	%r13, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r13
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	32(%rsp), %r13
	shlq	$4, %r13
	leaq	(%r15,%r13), %rdi
	addq	$-16, %rdi
.LBB3_79:
	movq	(%rsp), %rcx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rdi)
	movq	8(%rsp), %rax
	jmp	.LBB3_13
.LBB3_80:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB3_8
	jmp	.LBB3_82
.LBB3_81:
	xorl	%ecx, %ecx
.LBB3_82:
	movl	776(%r9), %edx
	movl	%edx, 48(%rsp)
	movq	200(%r14), %rsi
	movq	208(%r14), %rdx
	leaq	(%rsi,%rdx,4), %rdi
	movq	160(%r9), %r8
	movq	168(%r9), %r9
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.0(%rip), %rbx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	jmp	.LBB3_85
	.p2align	4, 0x90
.LBB3_83:
	xorl	%ebp, %ebp
.LBB3_84:
	incq	%r14
	movss	(%rbp), %xmm0
	movl	48(%rsp), %edx
	movl	%edx, (%r15)
	addss	(%r12), %xmm0
	movss	%xmm0, (%r12)
.LBB3_85:
	cmpq	%r11, %r14
	jne	.LBB3_89
	.p2align	4, 0x90
.LBB3_86:
	cmpq	%rdi, %rsi
	je	.LBB3_99
	movl	(%rsi), %edx
	addq	$4, %rsi
	leaq	(%rdx,%rdx,4), %rbx
	shlq	$5, %rbx
	addq	%r8, %rbx
	cmpq	%rdx, %r9
	cmovbeq	%r10, %rbx
	movq	88(%rbx), %r11
	testq	%r11, %r11
	je	.LBB3_86
	movq	80(%rbx), %rbx
	xorl	%r14d, %r14d
.LBB3_89:
	movq	%r14, %rdx
	shlq	$4, %rdx
	movl	(%rbx,%rdx), %r13d
	cmpq	136(%rax), %r13
	jae	.LBB3_93
	movq	128(%rax), %rbp
	movl	$0, %r12d
	testq	%rbp, %rbp
	je	.LBB3_94
	cmpl	$0, (%rbp,%r13,8)
	je	.LBB3_93
	movl	4(%rbp,%r13,8), %r15d
	movq	8(%rax), %r12
	imulq	%r15, %r12
	addq	16(%rax), %r12
	shlq	$2, %r15
	addq	80(%rax), %r15
	jmp	.LBB3_94
	.p2align	4, 0x90
.LBB3_93:
	xorl	%r12d, %r12d
.LBB3_94:
	cmpq	136(%rcx), %r13
	jae	.LBB3_83
	movq	128(%rcx), %rdx
	movl	$0, %ebp
	testq	%rdx, %rdx
	je	.LBB3_84
	cmpl	$0, (%rdx,%r13,8)
	je	.LBB3_83
	movl	4(%rdx,%r13,8), %ebp
	imulq	8(%rcx), %rbp
	addq	16(%rcx), %rbp
	jmp	.LBB3_84
.LBB3_99:
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
.LBB3_100:
	.cfi_def_cfa_offset 160
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.4(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<D,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.LBB3_101:
	leaq	.Lanon.742eb44106aac60011c15f8144ce6fe2.3(%rip), %rdx
	callq	*core::slice::index::slice_start_index_len_fail@GOTPCREL(%rip)
.LBB3_102:
.Ltmp5:
	jmp	.LBB3_104
.LBB3_103:
.Ltmp2:
.LBB3_104:
	movq	%rax, %rbx
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_106
	movq	80(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$4, %rsi
	movl	$16, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_106:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	query_state_iter, .Lfunc_end3-query_state_iter
	.cfi_endproc
	.section	.gcc_except_table.query_state_iter,"a",@progbits
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

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.0,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.0:
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.0, 0

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.1,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.1:
	.zero	8
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.1, 8

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.2,@object
	.section	.rodata..Lanon.742eb44106aac60011c15f8144ce6fe2.2,"a",@progbits
.Lanon.742eb44106aac60011c15f8144ce6fe2.2:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/01649f1/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.2, 97

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.3,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.3:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.2
	.asciz	"a\000\000\000\000\000\000\000X\001\000\000%\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.3, 24

	.type	.Lanon.742eb44106aac60011c15f8144ce6fe2.4,@object
	.section	.data.rel.ro..Lanon.742eb44106aac60011c15f8144ce6fe2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.742eb44106aac60011c15f8144ce6fe2.4:
	.quad	.Lanon.742eb44106aac60011c15f8144ce6fe2.2
	.asciz	"a\000\000\000\000\000\000\000S\001\000\000\016\000\000"
	.size	.Lanon.742eb44106aac60011c15f8144ce6fe2.4, 24

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

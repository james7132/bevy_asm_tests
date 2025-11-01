	.file	"message_writer.2a738c12fa36cace-cgu.0"
	.section	".text.unlikely.alloc::raw_vec::RawVec<T,A>::grow_one","ax",@progbits
	.globl	alloc::raw_vec::RawVec<T,A>::grow_one
	.p2align	4
	.type	alloc::raw_vec::RawVec<T,A>::grow_one,@function
alloc::raw_vec::RawVec<T,A>::grow_one:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rsi
	callq	alloc::raw_vec::RawVecInner<A>::grow_amortized
	movabsq	$-9223372036854775807, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_2
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end0:
	.size	alloc::raw_vec::RawVec<T,A>::grow_one, .Lfunc_end0-alloc::raw_vec::RawVec<T,A>::grow_one
	.cfi_endproc

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::finish_grow","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::finish_grow,@function
alloc::raw_vec::RawVecInner<A>::finish_grow:
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
	movq	%rdi, %rbx
	movq	%rcx, %r14
	shlq	$4, %r14
	shrq	$60, %rcx
	setne	%al
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %r14
	seta	%cl
	orb	%al, %cl
	movl	$1, %r15d
	je	.LBB1_2
	movl	$8, %eax
	xorl	%r14d, %r14d
	jmp	.LBB1_10
.LBB1_2:
	testq	%rsi, %rsi
	je	.LBB1_4
	shlq	$4, %rsi
	movq	%rdx, %rdi
	movl	$8, %edx
	movq	%r14, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB1_6
	jmp	.LBB1_9
.LBB1_4:
	testq	%r14, %r14
	je	.LBB1_5
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB1_6
.LBB1_9:
	movq	$8, 8(%rbx)
	movl	$16, %eax
	jmp	.LBB1_10
.LBB1_5:
	movl	$8, %eax
.LBB1_6:
	movq	%rax, 8(%rbx)
	movl	$16, %eax
	xorl	%r15d, %r15d
.LBB1_10:
	movq	%r14, (%rbx,%rax)
	movq	%r15, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	alloc::raw_vec::RawVecInner<A>::finish_grow, .Lfunc_end1-alloc::raw_vec::RawVecInner<A>::finish_grow
	.cfi_endproc

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::grow_amortized","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::grow_amortized,@function
alloc::raw_vec::RawVecInner<A>::grow_amortized:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	incq	%rsi
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rsi
	cmovbeq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %r14d
	cmovaeq	%rsi, %r14
	movq	8(%rdi), %rdx
	movq	%rsp, %rdi
	movq	%rax, %rsi
	movq	%r14, %rcx
	callq	alloc::raw_vec::RawVecInner<A>::finish_grow
	cmpb	$0, (%rsp)
	je	.LBB2_2
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_2:
	.cfi_def_cfa_offset 48
	movq	8(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	movabsq	$-9223372036854775807, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	alloc::raw_vec::RawVecInner<A>::grow_amortized, .Lfunc_end2-alloc::raw_vec::RawVecInner<A>::grow_amortized
	.cfi_endproc

	.section	.text.message_writer,"ax",@progbits
	.globl	message_writer
	.p2align	4
	.type	message_writer,@function
message_writer:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	28(%rdi), %eax
	movq	16(%rdi), %rcx
	movl	%eax, (%rcx)
	movq	(%rdi), %rbx
	movq	48(%rbx), %r15
	movq	64(%rbx), %r14
	cmpq	32(%rbx), %r15
	je	.LBB3_1
.LBB3_2:
	movq	40(%rbx), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	%r14, (%rax,%rcx)
	movl	$0, 8(%rax,%rcx)
	incq	%r15
	movq	%r15, 48(%rbx)
	incq	64(%rbx)
	movq	%r14, 8(%rsp)
	leaq	8(%rsp), %rax
	#APP
	#NO_APP
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:
	.cfi_def_cfa_offset 48
	leaq	32(%rbx), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
	jmp	.LBB3_2
.Lfunc_end3:
	.size	message_writer, .Lfunc_end3-message_writer
	.cfi_endproc

	.ident	"rustc version 1.93.0-nightly (82ae0ee64 2025-10-31)"
	.section	".note.GNU-stack","",@progbits

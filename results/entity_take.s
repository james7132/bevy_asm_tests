	.text
	.file	"entity_take.4a904be573dc7c77-cgu.0"
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
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
	movabsq	$82351536043346213, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$112, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
	imulq	$112, %rax, %rax
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
	movabsq	$128102389400760776, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	leaq	(,%r14,8), %rcx
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	8(%rbx), %rcx
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rax
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
	je	.LBB5_10
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
	je	.LBB5_2
	movq	8(%rbx), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB5_4
.LBB5_2:
	movq	$0, 16(%rsp)
.LBB5_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB5_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB5_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_5:
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
.LBB5_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB5_9
.LBB5_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
.LBB5_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end5:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end5-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	je	.LBB6_10
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
	je	.LBB6_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB6_4
.LBB6_2:
	movq	$0, 16(%rsp)
.LBB6_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB6_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB6_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:
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
.LBB6_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB6_9
.LBB6_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
.LBB6_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end6:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end6-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	jb	.LBB7_10
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
	je	.LBB7_2
	movq	8(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB7_4
.LBB7_2:
	movq	$0, 16(%rsp)
.LBB7_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB7_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB7_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_5:
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
.LBB7_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB7_9
.LBB7_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
.LBB7_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.Lfunc_end7:
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end7-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
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
	je	.LBB8_12
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
	jbe	.LBB8_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB8_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB8_7
.LBB8_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB8_32
	movdqa	.LCPI8_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB8_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB8_31
.LBB8_32:
	cmpq	$16, %r8
	jae	.LBB8_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB8_34
	xorl	%eax, %eax
	jmp	.LBB8_50
.LBB8_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB8_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB8_7
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
.LBB8_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB8_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB8_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB8_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB8_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB8_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB8_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB8_34:
	xorl	%eax, %eax
	jmp	.LBB8_35
	.p2align	4, 0x90
.LBB8_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB8_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB8_49
.LBB8_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB8_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB8_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB8_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB8_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB8_39
.LBB8_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB8_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB8_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB8_52
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
	je	.LBB8_47
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
	jmp	.LBB8_37
	.p2align	4, 0x90
.LBB8_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB8_48
.LBB8_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB8_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB8_51
.LBB8_11:
	movl	$16, %r12d
.LBB8_15:
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
	je	.LBB8_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB8_17
	.p2align	4, 0x90
.LBB8_25:
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
	je	.LBB8_26
.LBB8_17:
	testw	%r8w, %r8w
	jne	.LBB8_20
	.p2align	4, 0x90
.LBB8_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB8_18
	notl	%r8d
.LBB8_20:
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
	jne	.LBB8_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB8_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB8_22
.LBB8_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB8_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB8_25
.LBB8_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB8_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB8_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB8_51:
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
.LBB8_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end8:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end8-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_0:
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
	je	.LBB9_12
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
	jbe	.LBB9_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB9_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB9_7
.LBB9_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB9_32
	movdqa	.LCPI9_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB9_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB9_31
.LBB9_32:
	cmpq	$16, %r8
	jae	.LBB9_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB9_34
	xorl	%eax, %eax
	jmp	.LBB9_50
.LBB9_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB9_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB9_7
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
.LBB9_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB9_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB9_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB9_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB9_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB9_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB9_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB9_34:
	xorl	%eax, %eax
	jmp	.LBB9_35
	.p2align	4, 0x90
.LBB9_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB9_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB9_49
.LBB9_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB9_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB9_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB9_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB9_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB9_39
.LBB9_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB9_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB9_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB9_52
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
	je	.LBB9_47
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
	jmp	.LBB9_37
	.p2align	4, 0x90
.LBB9_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB9_48
.LBB9_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB9_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB9_51
.LBB9_11:
	movl	$16, %r12d
.LBB9_15:
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
	je	.LBB9_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB9_17
	.p2align	4, 0x90
.LBB9_25:
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
	je	.LBB9_26
.LBB9_17:
	testw	%r8w, %r8w
	jne	.LBB9_20
	.p2align	4, 0x90
.LBB9_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB9_18
	notl	%r8d
.LBB9_20:
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
	jne	.LBB9_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB9_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB9_22
.LBB9_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB9_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB9_25
.LBB9_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB9_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB9_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_51:
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
.LBB9_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.33(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.35(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end9:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end9-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_0:
	.zero	16,56
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movabsq	$-1875077712896141541, %rbx
	movabsq	$8105673106353361301, %r15
	movq	%r15, %rbp
	movq	%rdi, 96(%rsp)
	movq	(%rdi), %r14
	leaq	488(%r14), %rax
	movq	%rax, 40(%rsp)
	leaq	64(%r14), %rax
	movq	%rax, (%rsp)
	leaq	216(%r14), %rax
	movq	%rax, 32(%rsp)
	movq	512(%r14), %r13
	movq	520(%r14), %r12
	leaq	-24(%r13), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI10_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rdx
.LBB10_1:
	andq	%r12, %rdx
	movdqu	(%r13,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB10_2:
	testw	%si, %si
	je	.LBB10_3
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
	xorq	%r15, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB10_2
	jmp	.LBB10_6
	.p2align	4, 0x90
.LBB10_3:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB10_16
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB10_1
.LBB10_6:
	movq	-8(%r13,%rdi,8), %rbp
.LBB10_7:
	shlq	$5, %rbp
	addq	496(%r14), %rbp
	movq	96(%rsp), %rax
	movl	16(%rax), %r15d
	movl	20(%rax), %r12d
	movl	24(%rax), %r13d
	movl	28(%rax), %eax
	movq	%rax, 40(%rsp)
	leaq	152(%r14), %rdi
	xorl	%ebx, %ebx
	movq	32(%rsp), %rsi
	movq	(%rsp), %rdx
	movl	%r15d, %ecx
	movq	%rbp, %r8
	xorl	%r9d, %r9d
	callq	*bevy_ecs::world::entity_ref::remove_bundle_from_archetype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.LBB10_127
	cmpl	%r15d, %edx
	je	.LBB10_127
	movq	168(%r14), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB10_133
	movq	%r13, 88(%rsp)
	movl	%edx, 108(%rsp)
	movq	%r12, 8(%rsp)
	movq	96(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	160(%r14), %rax
	leaq	(%r15,%r15,4), %rcx
	shlq	$5, %rcx
	movq	%rcx, 24(%rsp)
	testb	$4, 152(%rax,%rcx)
	je	.LBB10_11
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB10_11
	movq	8(%rbp), %r12
	shlq	$3, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB10_130
	.p2align	4, 0x90
.LBB10_132:
	addq	$8, %r13
	cmpq	%r13, %rbx
	je	.LBB10_11
.LBB10_130:
	movq	(%r12,%r13), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	104(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB10_132
	movq	%r14, %rdi
	movq	(%rsp), %rsi
	callq	*%rax
	jmp	.LBB10_132
.LBB10_11:
	cmpq	$0, 16(%rbp)
	je	.LBB10_134
	movq	8(%rbp), %rax
	movq	(%rax), %rbx
	movq	72(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	728(%r14), %r12
	movq	736(%r14), %r13
	cmpq	%rbx, %r13
	jbe	.LBB10_65
	testq	%r12, %r12
	je	.LBB10_65
	movq	(%r12,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB10_65
	notq	%rax
	leaq	(%rax,%rax,8), %r12
	shlq	$3, %r12
	addq	680(%r14), %r12
	movq	(%rsp), %rbp
	movq	48(%r12), %rsi
	movq	64(%r12), %r13
	cmpq	32(%r12), %rsi
	je	.LBB10_78
.LBB10_77:
	movq	%r13, %rax
	jmp	.LBB10_79
.LBB10_65:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 144(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	$0, 64(%rsp)
	movq	688(%r14), %rax
	movq	%rax, 136(%rsp)
	cmpq	$-1, %rax
	movq	(%rsp), %rbp
	je	.LBB10_135
	cmpq	%rbx, %r13
	ja	.LBB10_70
	movq	%rbx, %rbp
	subq	%r13, %rbp
	incq	%rbp
	movq	720(%r14), %rax
	subq	%r13, %rax
	cmpq	%rbp, %rax
	jb	.LBB10_68
.LBB10_69:
	leaq	(%r12,%r13,8), %rdi
	leaq	(,%rbp,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%rbp, %r13
	movq	%r13, 736(%r14)
	movq	(%rsp), %rbp
.LBB10_70:
	cmpq	%rbx, %r13
	jbe	.LBB10_136
	movq	136(%rsp), %r13
	movq	%r13, %rax
	notq	%rax
	movq	%rax, (%r12,%rbx,8)
	movq	712(%r14), %rsi
	cmpq	696(%r14), %rsi
	jne	.LBB10_73
	leaq	696(%r14), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	712(%r14), %rsi
.LBB10_73:
	movq	704(%r14), %rax
	movq	%rbx, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 712(%r14)
	movq	688(%r14), %rsi
	cmpq	672(%r14), %rsi
	jne	.LBB10_75
	leaq	672(%r14), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	688(%r14), %rsi
.LBB10_75:
	movq	680(%r14), %rax
	leaq	(%rsi,%rsi,8), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	$8, 8(%rax,%rcx,8)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rcx,8)
	movq	$0, 32(%rax,%rcx,8)
	movq	$8, 40(%rax,%rcx,8)
	movdqa	48(%rsp), %xmm0
	movdqu	%xmm0, 48(%rax,%rcx,8)
	movq	64(%rsp), %rdx
	movq	%rdx, 64(%rax,%rcx,8)
	incq	%rsi
	movq	%rsi, 688(%r14)
	leaq	(,%r13,8), %rcx
	addq	%r13, %rcx
	leaq	(%rax,%rcx,8), %r12
	movq	48(%r12), %rsi
	movq	64(%r12), %r13
	cmpq	32(%r12), %rsi
	jne	.LBB10_77
.LBB10_78:
	leaq	32(%r12), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	48(%r12), %rsi
	movq	64(%r12), %rax
.LBB10_79:
	movq	40(%r12), %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%r13, (%rcx,%rdx)
	movq	%rbp, 8(%rcx,%rdx)
	incq	%rsi
	movq	%rsi, 48(%r12)
	incq	%rax
	movq	%rax, 64(%r12)
	imulq	$112, %rbx, %rax
	movq	16(%rsp), %rcx
	cmpb	$0, 72(%rcx,%rax)
	je	.LBB10_80
	movq	32(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	movq	8(%rsp), %r12
	je	.LBB10_85
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB10_139
	movq	296(%r14), %r11
	movq	304(%r14), %rsi
	movq	168(%r14), %rbx
	cmpq	%r15, %rbx
	jbe	.LBB10_140
.LBB10_90:
	movq	160(%r14), %r13
	movq	24(%rsp), %r10
	movq	88(%r13,%r10), %rcx
	cmpq	%r12, %rcx
	jbe	.LBB10_141
	movss	(%rax), %xmm1
	leaq	(%r10,%r13), %r8
	addq	$88, %r8
	decq	%rcx
	movq	80(%r13,%r10), %rax
	movq	%r12, %rdi
	shlq	$4, %rdi
	movq	%rcx, %r9
	shlq	$4, %r9
	movl	8(%rax,%rdi), %edx
	movdqu	(%rax,%r9), %xmm0
	movdqu	%xmm0, (%rax,%rdi)
	movq	%rcx, (%r8)
	cmpq	%r12, %rcx
	je	.LBB10_98
	jbe	.LBB10_142
	addq	%rdi, %rax
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB10_98
	movl	(%rax), %edi
	cmpq	%rdi, 16(%r14)
	jbe	.LBB10_148
	movq	8(%r14), %rax
	leaq	(%rdi,%rdi,4), %rdi
	cmpl	%ecx, (%rax,%rdi,4)
	jne	.LBB10_148
	cmpl	$-1, 4(%rax,%rdi,4)
	je	.LBB10_148
	leaq	(%rax,%rdi,4), %rax
	addq	$4, %rax
	movl	%r12d, 4(%rax)
.LBB10_98:
	movl	108(%rsp), %eax
	cmpq	%rax, %rbx
	jbe	.LBB10_143
	movq	%rbp, %r12
	shrq	$32, %r12
	movl	148(%r13,%r10), %edi
	leaq	(%rax,%rax,4), %rbp
	shlq	$5, %rbp
	leaq	148(,%rbp), %r8
	addq	%r13, %r8
	movl	148(%r13,%rbp), %eax
	cmpl	%eax, %edi
	jne	.LBB10_100
	leaq	72(,%rbp), %rbx
	addq	%r13, %rbx
	movq	88(%r13,%rbp), %r15
	movq	%r15, %rax
	cmpq	72(%r13,%rbp), %r15
	jne	.LBB10_121
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movss	%xmm1, 32(%rsp)
	movl	%edx, 16(%rsp)
	movq	%r8, 8(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	8(%rsp), %r8
	movl	16(%rsp), %edx
	movss	32(%rsp), %xmm1
	movq	16(%rbx), %rax
.LBB10_121:
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	shlq	$4, %rdi
	movq	(%rsp), %rsi
	movl	%esi, (%rcx,%rdi)
	movl	%r12d, 4(%rcx,%rdi)
	movl	%edx, 8(%rcx,%rdi)
	incq	%rax
	movq	%rax, 16(%rbx)
	movl	144(%r13,%rbp), %ecx
	movl	(%r8), %r9d
	jmp	.LBB10_126
.LBB10_100:
	cmpl	%eax, %edi
	movss	%xmm1, 32(%rsp)
	movq	%rbx, 88(%rsp)
	movq	%r8, 8(%rsp)
	jbe	.LBB10_101
	cmpq	%rdi, %rsi
	jb	.LBB10_145
	je	.LBB10_118
	leaq	(%rdi,%rdi,8), %rcx
	leaq	(%r11,%rcx,8), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%r11,%rax,8), %rcx
	jmp	.LBB10_105
.LBB10_80:
	movq	304(%r14), %rsi
	movq	88(%rsp), %rdi
	cmpq	%rdi, %rsi
	movq	8(%rsp), %r12
	jbe	.LBB10_137
	movq	296(%r14), %r11
	leaq	(%rdi,%rdi,8), %rax
	cmpq	%rbx, 64(%r11,%rax,8)
	jbe	.LBB10_138
	movq	56(%r11,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB10_138
	movq	(%rcx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB10_138
	leaq	(%r11,%rax,8), %rax
	addq	$24, %rax
	movq	(%rax), %rdi
	notq	%rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	8(%rdi,%rcx), %rax
	imulq	40(%rsp), %rax
	addq	16(%rdi,%rcx), %rax
	movq	168(%r14), %rbx
	cmpq	%r15, %rbx
	ja	.LBB10_90
.LBB10_140:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_101:
	cmpq	%rax, %rsi
	jb	.LBB10_144
	cmpl	%edi, %eax
	jbe	.LBB10_115
	cmpq	%rax, %rsi
	je	.LBB10_116
	leaq	(%rax,%rax,8), %rax
	leaq	(%r11,%rax,8), %rcx
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%r11,%rax,8), %rsi
.LBB10_105:
	leaq	48(%rsp), %rdi
	movl	%edx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movl	56(%rsp), %r10d
	leaq	72(,%rbp), %rbx
	addq	%r13, %rbx
	movq	88(%r13,%rbp), %r15
	movq	%r15, %rax
	cmpq	72(%r13,%rbp), %r15
	jne	.LBB10_107
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r10d, 24(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movl	24(%rsp), %r10d
	movq	16(%rbx), %rax
.LBB10_107:
	movq	8(%rbx), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%r12d, 4(%rcx,%rdx)
	movl	%r10d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 16(%rbx)
	movl	144(%r13,%rbp), %ecx
	movq	8(%rsp), %rax
	movl	(%rax), %r9d
	movl	52(%rsp), %eax
	testl	%eax, %eax
	movss	32(%rsp), %xmm1
	je	.LBB10_125
	movl	48(%rsp), %edi
	cmpq	%rdi, 16(%r14)
	jbe	.LBB10_111
	movq	8(%r14), %rsi
	leaq	(%rdi,%rdi,4), %rdi
	cmpl	%eax, (%rsi,%rdi,4)
	jne	.LBB10_111
	movl	4(%rsi,%rdi,4), %eax
	movl	$4294967295, %r8d
	cmpq	%r8, %rax
	je	.LBB10_111
	leaq	(%rsi,%rdi,4), %rsi
	addq	$4, %rsi
	movl	4(%rsi), %edi
	movq	40(%rsp), %r8
	movl	%r8d, 12(%rsi)
	movq	88(%rsp), %rsi
	cmpq	%rax, %rsi
	movl	16(%rsp), %edx
	jbe	.LBB10_146
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	88(%r13,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB10_147
	addq	%r13, %rax
	addq	$72, %rax
	movq	8(%rax), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB10_125:
	movl	%r10d, %edx
	movq	(%rsp), %rsi
.LBB10_126:
	movq	96(%rsp), %rax
	movl	%ecx, 16(%rax)
	movl	%r15d, 20(%rax)
	movl	%r9d, 24(%rax)
	movl	%edx, 28(%rax)
	movq	8(%r14), %rax
	movl	%esi, %esi
	leaq	(%rsi,%rsi,4), %rsi
	movl	%ecx, 4(%rax,%rsi,4)
	movl	%r15d, 8(%rax,%rsi,4)
	movl	%r9d, 12(%rax,%rsi,4)
	movl	%edx, 16(%rax,%rsi,4)
	movl	$1, %ebx
.LBB10_127:
	movl	%ebx, 48(%rsp)
	movss	%xmm1, 52(%rsp)
	leaq	48(%rsp), %rax
	#APP
	#NO_APP
	movl	48(%rsp), %eax
	movss	52(%rsp), %xmm0
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
.LBB10_16:
	.cfi_def_cfa_offset 224
	movq	$0, 112(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$8, 120(%rsp)
	movq	$0, 128(%rsp)
	leaq	88(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rdi
	movq	%rbp, 8(%rsp)
.LBB10_17:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB10_18:
	testw	%r8w, %r8w
	je	.LBB10_19
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
	xorq	%r15, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB10_18
	jmp	.LBB10_22
.LBB10_19:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB10_23
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB10_17
.LBB10_22:
	movq	-8(%rax,%r9,8), %rbp
.LBB10_43:
.Ltmp6:
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp7:
	movq	120(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rbp, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 128(%rsp)
	movq	504(%r14), %rbp
	movq	%rcx, 160(%rsp)
	movdqu	112(%rsp), %xmm0
	movdqa	%xmm0, 144(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rsi
	leaq	48(%rsp), %rdi
	leaq	144(%rsp), %r8
	movl	$14, %edx
	movq	(%rsp), %rcx
	movq	%rbp, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%rbp, %rax
	cmpq	488(%r14), %rbp
	jne	.LBB10_47
.Ltmp9:
	movq	40(%rsp), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp10:
	movq	504(%r14), %rax
	movq	512(%r14), %r13
	movq	520(%r14), %r12
.LBB10_47:
	movq	496(%r14), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	48(%rsp), %xmm0
	movdqu	64(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%r14)
	movq	%r12, %rcx
	andq	%r15, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB10_50
	movl	$16, %edx
	.p2align	4, 0x90
.LBB10_49:
	addq	%rdx, %rcx
	andq	%r12, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB10_49
.LBB10_50:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r12, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB10_52
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB10_52:
	cmpq	$0, 528(%r14)
	jne	.LBB10_59
	testb	$1, (%r13,%rax)
	jne	.LBB10_54
.LBB10_59:
	movzbl	(%r13,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%r14)
	leaq	-16(%rax), %rcx
	andq	%r12, %rcx
	movb	$56, (%r13,%rax)
	movb	$56, 16(%rcx,%r13)
	incq	536(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, -24(%r13,%rax,8)
	movq	%rbx, -16(%r13,%rax,8)
	movq	%rbp, -8(%r13,%rax,8)
	jmp	.LBB10_7
.LBB10_68:
	leaq	720(%r14), %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	movq	728(%r14), %r12
	movq	736(%r14), %r13
	jmp	.LBB10_69
.LBB10_23:
	movq	80(%r14), %rbp
	movq	%rbp, %rsi
	cmpq	64(%r14), %rbp
	jne	.LBB10_26
.Ltmp0:
	movq	(%rsp), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp1:
	movq	80(%r14), %rsi
.LBB10_26:
	movq	72(%r14), %rax
	imulq	$112, %rsi, %rcx
	movq	$1, (%rax,%rcx)
	movq	%rbx, 16(%rax,%rcx)
	movq	%r15, 8(%rax,%rcx)
	movq	$4, 24(%rax,%rcx)
	movq	$4, 32(%rax,%rcx)
	movabsq	$-9223372036854775807, %rdx
	decq	%rdx
	movq	%rdx, 40(%rax,%rcx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movq	$14, 56(%rax,%rcx)
	movq	$0, 64(%rax,%rcx)
	movw	$256, 72(%rax,%rcx)
	movq	%rbp, 80(%rax,%rcx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 88(%rax,%rcx)
	movq	$0, 104(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 80(%r14)
	cmpq	%rsi, %rbp
	jae	.LBB10_27
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%r15, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB10_32
	movl	$16, %edi
.LBB10_31:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB10_31
.LBB10_32:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB10_34
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB10_34:
	cmpq	$0, 104(%r14)
	jne	.LBB10_42
	testb	$1, (%rax,%rdx)
	je	.LBB10_42
.Ltmp4:
	movq	16(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp5:
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rsi
	andq	%r15, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB10_40
	movl	$16, %edi
.LBB10_39:
	addq	%rdi, %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB10_39
.LBB10_40:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rcx, %rdx
	cmpb	$0, (%rax,%rdx)
	js	.LBB10_42
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB10_42:
	movzbl	(%rax,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 104(%r14)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$56, (%rax,%rdx)
	movb	$56, 16(%rsi,%rax)
	incq	112(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	8(%rsp), %rdx
	movq	%rdx, -24(%rax,%rcx,8)
	movq	%rbx, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	jmp	.LBB10_43
.LBB10_54:
	leaq	512(%r14), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	512(%r14), %r13
	movq	520(%r14), %r12
	andq	%r12, %r15
	movdqu	(%r13,%r15), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB10_57
	movl	$16, %ecx
.LBB10_56:
	addq	%rcx, %r15
	andq	%r12, %r15
	movdqu	(%r13,%r15), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB10_56
.LBB10_57:
	rep		bsfl	%eax, %eax
	addq	%r15, %rax
	andq	%r12, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB10_59
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB10_59
.LBB10_133:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_143:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_136:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_142:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.29(%rip), %rdx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_137:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_146:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_147:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_118:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.28(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_115:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rdx
	movq	%rax, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_116:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB10_27:
.Ltmp2:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.31(%rip), %rdx
	movq	%rbp, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp3:
	ud2
.LBB10_134:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_141:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.LBB10_148:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_111:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_138:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_135:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_85:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_139:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.18(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_145:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.27(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_144:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.LBB10_60:
.Ltmp11:
	movq	%rax, %rbx
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_63
	leaq	56(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB10_62
.LBB10_64:
.Ltmp8:
	movq	%rax, %rbx
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_63
.LBB10_62:
	movq	24(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_63:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	entity_remove, .Lfunc_end10-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
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
	.uleb128 .Lfunc_end10-.Ltmp3
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 35

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.ascii	"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 76

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.2
	.asciz	"L\000\000\000\000\000\000\000\264\005\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 102

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000Z\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 43

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000^\003\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000l\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\202\003\000\000E\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\215\003\000\000\033\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.11,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"_\000\000\000\000\000\000\000\337\001\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\f\003\000\000$\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000%\003\000\000=\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\320\b\000\000-\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\321\b\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\337\b\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.4
	.asciz	"f\000\000\000\000\000\000\000\341\b\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"h\000\000\000\000\000\000\000\336\001\000\000F\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"h\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 99

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"c\000\000\000\000\000\000\000Q\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.27,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.27,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.27:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"c\000\000\000\000\000\000\000N\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.27, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.28,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.28,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.28:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.23
	.asciz	"c\000\000\000\000\000\000\000O\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.28, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.29,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.29,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.29:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"_\000\000\000\000\000\000\000\n\002\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.29, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.30,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.30,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.30:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/component.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.30, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.31,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.31,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.31:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.30
	.asciz	"_\000\000\000\000\000\000\000*\002\000\0008\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.31, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.32,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.32,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.32:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.32, 28

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.33,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.33,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.33:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.32
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.33, 16

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.34,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.34,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.34:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.34, 96

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.35,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.35,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.35:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.34
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.35, 24

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

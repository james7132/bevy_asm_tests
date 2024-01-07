	.text
	.file	"entity_take.6116dbd96208593b-cgu.0"
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	(%rbx), %rcx
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
	movabsq	$128102389400760776, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	leaq	(,%r14,8), %rcx
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	(%rbx), %rcx
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
	movq	8(%rdi), %rax
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
	movq	(%rbx), %rcx
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
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
	ud2
.LBB4_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
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
	je	.LBB5_2
	movq	(%rbx), %rcx
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
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
	ud2
.LBB5_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
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
	je	.LBB6_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
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
	ud2
.LBB6_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
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
	movq	8(%rdi), %rax
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
	je	.LBB7_2
	movq	(%rbx), %rcx
	shlq	$4, %rax
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
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
	ud2
.LBB7_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end7:
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end7-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
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
	jne	.LBB8_2
.LBB8_39:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB8_40:
	movq	%rax, %r12
	jmp	.LBB8_41
.LBB8_2:
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
	jbe	.LBB8_5
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	jae	.LBB8_11
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %rsi
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB8_15
	jmp	.LBB8_39
.LBB8_5:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB8_8
	movdqa	.LCPI8_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB8_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB8_7
.LBB8_8:
	cmpq	$16, %r8
	jae	.LBB8_20
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB8_21
	xorl	%eax, %eax
	jmp	.LBB8_36
.LBB8_11:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB8_37
	shlq	$3, %rcx
	movl	$1, %esi
	cmpq	$14, %rcx
	jb	.LBB8_14
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
.LBB8_14:
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB8_39
.LBB8_15:
	movq	%rax, %r13
	addq	$15, %r13
	andq	$-16, %r13
	leaq	16(%rsi), %rdx
	movq	%r13, %r15
	addq	%rdx, %r15
	jb	.LBB8_39
	movabsq	$-9223372036854775807, %r12
	leaq	-17(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB8_39
	testq	%r15, %r15
	movq	%rbp, 16(%rsp)
	movq	%r8, 32(%rsp)
	je	.LBB8_42
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
	jne	.LBB8_43
	movl	$16, %esi
	movl	$1, %edi
	movq	%r15, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB8_40
.LBB8_20:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB8_21:
	movabsq	$5871781006564002453, %rax
	xorl	%ecx, %ecx
	jmp	.LBB8_24
	.p2align	4, 0x90
.LBB8_22:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rdx, %r9
	movb	%r8b, (%r12,%rcx)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r9,%r12)
.LBB8_23:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB8_35
.LBB8_24:
	cmpb	$-128, (%r12,%rcx)
	jne	.LBB8_23
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB8_26:
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
	jne	.LBB8_29
	movl	$16, %r15d
	movq	%rdi, %r11
	.p2align	4, 0x90
.LBB8_28:
	addq	%r15, %r11
	andq	%r9, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r15
	testl	%r10d, %r10d
	je	.LBB8_28
.LBB8_29:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%r9, %r10
	cmpb	$0, (%r12,%r10)
	js	.LBB8_31
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB8_31:
	movq	%rcx, %r11
	subq	%rdi, %r11
	movq	%r10, %r15
	subq	%rdi, %r15
	xorq	%r11, %r15
	andq	%r9, %r15
	cmpq	$16, %r15
	jb	.LBB8_22
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
	je	.LBB8_34
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
	jmp	.LBB8_26
	.p2align	4, 0x90
.LBB8_34:
	leaq	-16(%rcx), %rsi
	andq	8(%rbx), %rsi
	movb	$-1, (%r12,%rcx)
	movb	$-1, 16(%rsi,%r12)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB8_23
.LBB8_35:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %rbp
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB8_36:
	subq	%rbp, %rax
	movabsq	$-9223372036854775807, %r12
	movq	%rax, 16(%rbx)
.LBB8_41:
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
.LBB8_37:
	.cfi_def_cfa_offset 96
	movq	%r8, %r15
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r12
	jne	.LBB8_41
	movq	%rdx, %rsi
	movq	%r15, %r8
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB8_15
	jmp	.LBB8_39
.LBB8_42:
	movl	$16, %ebp
.LBB8_43:
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
	je	.LBB8_54
	movq	24(%rsp), %rsi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	leaq	-24(%rsi), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %r8
	jmp	.LBB8_46
	.p2align	4, 0x90
.LBB8_45:
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
	je	.LBB8_54
.LBB8_46:
	testw	%r9w, %r9w
	jne	.LBB8_49
	.p2align	4, 0x90
.LBB8_47:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB8_47
	notl	%r9d
.LBB8_49:
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
	jne	.LBB8_52
	movl	$16, %ecx
	.p2align	4, 0x90
.LBB8_51:
	addq	%rcx, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB8_51
.LBB8_52:
	rep		bsfl	%eax, %eax
	addq	%r13, %rax
	andq	%r15, %rax
	cmpb	$0, (%rbp,%rax)
	js	.LBB8_45
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB8_45
.LBB8_54:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB8_41
	movl	$24, %ecx
	movq	32(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB8_41
	movq	24(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB8_41
.Lfunc_end8:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end8-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_0:
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
	jne	.LBB9_2
.LBB9_39:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB9_40:
	movq	%rax, %r12
	jmp	.LBB9_41
.LBB9_2:
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
	jbe	.LBB9_5
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	jae	.LBB9_11
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %rsi
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB9_15
	jmp	.LBB9_39
.LBB9_5:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB9_8
	movdqa	.LCPI9_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB9_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB9_7
.LBB9_8:
	cmpq	$16, %r8
	jae	.LBB9_20
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB9_21
	xorl	%eax, %eax
	jmp	.LBB9_36
.LBB9_11:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB9_37
	shlq	$3, %rcx
	movl	$1, %esi
	cmpq	$14, %rcx
	jb	.LBB9_14
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
.LBB9_14:
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB9_39
.LBB9_15:
	movq	%rax, %r13
	addq	$15, %r13
	andq	$-16, %r13
	leaq	16(%rsi), %rdx
	movq	%r13, %r15
	addq	%rdx, %r15
	jb	.LBB9_39
	movabsq	$-9223372036854775807, %r12
	leaq	-17(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB9_39
	testq	%r15, %r15
	movq	%rbp, 16(%rsp)
	movq	%r8, 32(%rsp)
	je	.LBB9_42
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
	jne	.LBB9_43
	movl	$16, %esi
	movl	$1, %edi
	movq	%r15, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB9_40
.LBB9_20:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB9_21:
	movabsq	$5871781006564002453, %rax
	xorl	%ecx, %ecx
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_22:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rdx, %r9
	movb	%r8b, (%r12,%rcx)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r9,%r12)
.LBB9_23:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB9_35
.LBB9_24:
	cmpb	$-128, (%r12,%rcx)
	jne	.LBB9_23
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB9_26:
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
	jne	.LBB9_29
	movl	$16, %r15d
	movq	%rdi, %r11
	.p2align	4, 0x90
.LBB9_28:
	addq	%r15, %r11
	andq	%r9, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r15
	testl	%r10d, %r10d
	je	.LBB9_28
.LBB9_29:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%r9, %r10
	cmpb	$0, (%r12,%r10)
	js	.LBB9_31
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB9_31:
	movq	%rcx, %r11
	subq	%rdi, %r11
	movq	%r10, %r15
	subq	%rdi, %r15
	xorq	%r11, %r15
	andq	%r9, %r15
	cmpq	$16, %r15
	jb	.LBB9_22
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
	je	.LBB9_34
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
	jmp	.LBB9_26
	.p2align	4, 0x90
.LBB9_34:
	leaq	-16(%rcx), %rsi
	andq	8(%rbx), %rsi
	movb	$-1, (%r12,%rcx)
	movb	$-1, 16(%rsi,%r12)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB9_23
.LBB9_35:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %rbp
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB9_36:
	subq	%rbp, %rax
	movabsq	$-9223372036854775807, %r12
	movq	%rax, 16(%rbx)
.LBB9_41:
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
.LBB9_37:
	.cfi_def_cfa_offset 96
	movq	%r8, %r15
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r12
	jne	.LBB9_41
	movq	%rdx, %rsi
	movq	%r15, %r8
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB9_15
	jmp	.LBB9_39
.LBB9_42:
	movl	$16, %ebp
.LBB9_43:
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
	je	.LBB9_54
	movq	24(%rsp), %rsi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	leaq	-24(%rsi), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %r8
	jmp	.LBB9_46
	.p2align	4, 0x90
.LBB9_45:
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
	je	.LBB9_54
.LBB9_46:
	testw	%r9w, %r9w
	jne	.LBB9_49
	.p2align	4, 0x90
.LBB9_47:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB9_47
	notl	%r9d
.LBB9_49:
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
	jne	.LBB9_52
	movl	$16, %ecx
	.p2align	4, 0x90
.LBB9_51:
	addq	%rcx, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB9_51
.LBB9_52:
	rep		bsfl	%eax, %eax
	addq	%r13, %rax
	andq	%r15, %rax
	cmpb	$0, (%rbp,%rax)
	js	.LBB9_45
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB9_45
.LBB9_54:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB9_41
	movl	$24, %ecx
	movq	32(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB9_41
	movq	24(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB9_41
.Lfunc_end9:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end9-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_0:
	.zero	16,73
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movabsq	$2465025863863795479, %r13
	movabsq	$-7821543006794462726, %r15
	movabsq	$-7891115317213932926, %r12
	movq	(%rdi), %rbp
	leaq	488(%rbp), %r14
	leaq	64(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	216(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	512(%rbp), %rcx
	movq	520(%rbp), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI10_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %rdi
.LBB10_1:
	andq	%rax, %rdi
	movdqu	(%rcx,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	.p2align	4, 0x90
.LBB10_2:
	testw	%r8w, %r8w
	je	.LBB10_3
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
	xorq	%r15, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB10_2
	jmp	.LBB10_13
	.p2align	4, 0x90
.LBB10_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB10_5
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB10_1
.LBB10_13:
	movq	(%r14), %rax
	movq	-8(%rcx,%r9,8), %r14
.LBB10_14:
	shlq	$5, %r14
	addq	%rax, %r14
	movl	16(%rbx), %r13d
	movl	20(%rbx), %r12d
	movl	24(%rbx), %eax
	movq	%rax, (%rsp)
	movq	%rbx, 40(%rsp)
	movl	28(%rbx), %r15d
	leaq	152(%rbp), %rdi
	xorl	%ebx, %ebx
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdx
	movl	%r13d, %ecx
	movq	%r14, %r8
	xorl	%r9d, %r9d
	callq	*bevy_ecs::world::entity_ref::remove_bundle_from_archetype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.LBB10_124
	cmpl	%r13d, %edx
	je	.LBB10_124
	movl	%edx, 20(%rsp)
	movq	%r15, 96(%rsp)
	cmpq	$0, 16(%r14)
	je	.LBB10_17
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	leaq	608(%rbp), %r8
	movq	(%r14), %rax
	movq	(%rax), %r14
	movq	64(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	656(%rbp), %rax
	movq	672(%rbp), %r15
	cmpq	%r14, %r15
	jbe	.LBB10_51
	testq	%rax, %rax
	je	.LBB10_51
	movq	%r14, %rcx
	shlq	$4, %rcx
	cmpq	$0, (%rax,%rcx)
	je	.LBB10_51
	movq	8(%rax,%rcx), %rax
	leaq	(%rax,%rax,8), %rbx
	shlq	$3, %rbx
	addq	(%r8), %rbx
	movq	48(%rbx), %rsi
	movq	64(%rbx), %r15
	cmpq	40(%rbx), %rsi
	je	.LBB10_69
.LBB10_68:
	movq	%r15, %rax
	jmp	.LBB10_70
.LBB10_51:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 128(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	$0, 64(%rsp)
	movq	624(%rbp), %rbx
	cmpq	%r14, %r15
	ja	.LBB10_61
	leaq	1(%r14), %rcx
	movq	%rcx, %rdx
	subq	%r15, %rdx
	jbe	.LBB10_60
	movq	664(%rbp), %rcx
	subq	%r15, %rcx
	cmpq	%rdx, %rcx
	jb	.LBB10_54
	movq	%r15, %rcx
	testq	%rdx, %rdx
	je	.LBB10_59
.LBB10_55:
	movq	%rcx, %rdx
	shlq	$4, %rdx
	addq	%rax, %rdx
	movq	%r14, %rsi
	notq	%rsi
	addq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB10_56:
	movq	$0, (%rdx)
	decq	%rdi
	addq	$16, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB10_56
	subq	%rdi, %rcx
	jmp	.LBB10_60
.LBB10_5:
	movq	%r14, 40(%rsp)
	cmpq	$0, 528(%rbp)
	je	.LBB10_6
.LBB10_7:
	movq	%rbx, %r14
	movq	$8, 104(%rsp)
	leaq	88(%rbp), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 112(%rsp)
	movq	88(%rbp), %rax
	movq	96(%rbp), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %r8
.LBB10_8:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	.p2align	4, 0x90
.LBB10_9:
	testw	%r9w, %r9w
	je	.LBB10_10
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%r13, %r9
	movq	(%rdx,%r10,8), %rbx
	xorq	%r15, %rbx
	orq	%r9, %rbx
	movl	%r11d, %r9d
	jne	.LBB10_9
	jmp	.LBB10_31
.LBB10_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB10_19
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB10_8
.LBB10_59:
	movq	%r15, %rcx
.LBB10_60:
	movq	%rcx, 672(%rbp)
	movq	%rcx, %r15
.LBB10_61:
	cmpq	%r14, %r15
	jbe	.LBB10_125
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	$1, (%rax,%rcx)
	movq	%rbx, 8(%rax,%rcx)
	movq	648(%rbp), %rsi
	cmpq	640(%rbp), %rsi
	jne	.LBB10_64
	leaq	632(%rbp), %rdi
	movq	%r8, %r15
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%r15, %r8
	movq	648(%rbp), %rsi
.LBB10_64:
	movq	632(%rbp), %rax
	movq	%r14, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 648(%rbp)
	movq	624(%rbp), %rsi
	cmpq	616(%rbp), %rsi
	jne	.LBB10_66
	movq	%r8, %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	624(%rbp), %rsi
.LBB10_66:
	movq	608(%rbp), %rax
	leaq	(%rsi,%rsi,8), %rcx
	movq	$8, (%rax,%rcx,8)
	movq	$0, 8(%rax,%rcx,8)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rcx,8)
	movq	$8, 32(%rax,%rcx,8)
	movq	$0, 40(%rax,%rcx,8)
	movdqa	48(%rsp), %xmm0
	movdqu	%xmm0, 48(%rax,%rcx,8)
	movq	64(%rsp), %rdx
	movq	%rdx, 64(%rax,%rcx,8)
	incq	%rsi
	movq	%rsi, 624(%rbp)
	leaq	(%rbx,%rbx,8), %rcx
	leaq	(%rax,%rcx,8), %rbx
	movq	48(%rbx), %rsi
	movq	64(%rbx), %r15
	cmpq	40(%rbx), %rsi
	jne	.LBB10_68
.LBB10_69:
	leaq	32(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	48(%rbx), %rsi
	movq	64(%rbx), %rax
.LBB10_70:
	movq	32(%rbx), %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%r15, (%rcx,%rdx)
	movq	8(%rsp), %r15
	movq	%r15, 8(%rcx,%rdx)
	incq	%rsi
	movq	%rsi, 48(%rbx)
	incq	%rax
	movq	%rax, 64(%rbx)
	imulq	$88, %r14, %rax
	movq	32(%rsp), %rcx
	cmpb	$0, 72(%rcx,%rax)
	je	.LBB10_71
	movq	24(%rsp), %rdi
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB10_76
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB10_80
	movq	288(%rbp), %rdx
	movq	304(%rbp), %rsi
	movq	168(%rbp), %r11
	cmpq	%r13, %r11
	jbe	.LBB10_83
.LBB10_85:
	movq	152(%rbp), %rbx
	imulq	$152, %r13, %rdi
	movq	88(%rbx,%rdi), %rcx
	cmpq	%r12, %rcx
	jbe	.LBB10_127
	movss	(%rax), %xmm1
	leaq	(%rbx,%rdi), %r9
	addq	$88, %r9
	decq	%rcx
	movq	72(%rbx,%rdi), %rax
	movq	%r12, %r8
	shlq	$4, %r8
	movq	%rcx, %r10
	shlq	$4, %r10
	movl	8(%rax,%r8), %r13d
	movdqu	(%rax,%r10), %xmm0
	movdqu	%xmm0, (%rax,%r8)
	movq	%rcx, (%r9)
	cmpq	%r12, %rcx
	je	.LBB10_93
	jbe	.LBB10_128
	addq	%r8, %rax
	movq	(%rax), %rcx
	movl	%ecx, %r8d
	cmpq	16(%rbp), %r8
	jae	.LBB10_91
	movq	(%rbp), %rax
	shrq	$32, %rcx
	leaq	(%r8,%r8,4), %r8
	cmpl	%ecx, (%rax,%r8,4)
	jne	.LBB10_91
	cmpl	$-1, 4(%rax,%r8,4)
	je	.LBB10_91
	leaq	(%rax,%r8,4), %rax
	addq	$4, %rax
	movl	%r12d, 4(%rax)
.LBB10_93:
	movl	20(%rsp), %eax
	cmpq	%rax, %r11
	jbe	.LBB10_94
	movq	%r15, %r9
	shrq	$32, %r9
	movl	148(%rbx,%rdi), %edi
	imulq	$152, %rax, %r14
	leaq	(%rbx,%r14), %r8
	addq	$148, %r8
	movl	148(%rbx,%r14), %eax
	cmpl	%eax, %edi
	jne	.LBB10_96
	leaq	(%rbx,%r14), %r15
	addq	$72, %r15
	movq	88(%rbx,%r14), %r12
	movq	%r12, %rax
	cmpq	80(%rbx,%r14), %r12
	jne	.LBB10_118
	movq	%r15, %rdi
	movq	%r12, %rsi
	movss	%xmm1, 24(%rsp)
	movq	%r8, (%rsp)
	movq	%r9, 32(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	32(%rsp), %r9
	movq	(%rsp), %r8
	movss	24(%rsp), %xmm1
	movq	16(%r15), %rax
.LBB10_118:
	movq	(%r15), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	8(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%r9d, 4(%rcx,%rdx)
	movl	%r13d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 16(%r15)
	movl	144(%rbx,%r14), %ecx
	movl	(%r8), %edx
	jmp	.LBB10_123
.LBB10_96:
	cmpl	%eax, %edi
	movss	%xmm1, 24(%rsp)
	movq	%r11, 88(%rsp)
	movq	%r8, (%rsp)
	movq	%r9, 32(%rsp)
	jbe	.LBB10_97
	cmpq	%rdi, %rsi
	jb	.LBB10_101
	je	.LBB10_130
	leaq	(%rdi,%rdi,8), %rcx
	leaq	(%rdx,%rcx,8), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%rdx,%rax,8), %rcx
	jmp	.LBB10_109
.LBB10_71:
	movq	304(%rbp), %rsi
	movq	(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB10_126
	movq	288(%rbp), %rdx
	leaq	(%rdi,%rdi,8), %rax
	cmpq	%r14, 40(%rdx,%rax,8)
	jbe	.LBB10_75
	movq	32(%rdx,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB10_75
	shlq	$4, %r14
	cmpq	$0, (%rcx,%r14)
	je	.LBB10_75
	leaq	(%rdx,%rax,8), %rax
	movq	(%rax), %rdi
	movq	8(%rcx,%r14), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$5, %rcx
	movq	8(%rdi,%rcx), %rax
	imulq	96(%rsp), %rax
	addq	16(%rdi,%rcx), %rax
	movq	168(%rbp), %r11
	cmpq	%r13, %r11
	ja	.LBB10_85
.LBB10_83:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rdx
	movq	%r13, %rdi
	movq	%r11, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_97:
	cmpq	%rax, %rsi
	jb	.LBB10_98
	cmpl	%edi, %eax
	jbe	.LBB10_129
	cmpq	%rax, %rsi
	je	.LBB10_105
	leaq	(%rax,%rax,8), %rax
	leaq	(%rdx,%rax,8), %rcx
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%rdx,%rax,8), %rsi
.LBB10_109:
	leaq	48(%rsp), %rdi
	movl	%r13d, 20(%rsp)
	movl	%r13d, %edx
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movl	64(%rsp), %r15d
	leaq	(%rbx,%r14), %r13
	addq	$72, %r13
	movq	88(%rbx,%r14), %r12
	movq	%r12, %rax
	cmpq	80(%rbx,%r14), %r12
	jne	.LBB10_111
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	16(%r13), %rax
.LBB10_111:
	movq	(%r13), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	8(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movq	32(%rsp), %rsi
	movl	%esi, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 16(%r13)
	movl	144(%rbx,%r14), %ecx
	movq	(%rsp), %rax
	movl	(%rax), %edx
	cmpq	$0, 48(%rsp)
	movss	24(%rsp), %xmm1
	je	.LBB10_122
	movl	56(%rsp), %eax
	cmpq	%rax, 16(%rbp)
	jbe	.LBB10_115
	movq	(%rbp), %rsi
	leaq	(%rax,%rax,4), %rdi
	movl	(%rsi,%rdi,4), %eax
	cmpl	60(%rsp), %eax
	jne	.LBB10_115
	movl	4(%rsi,%rdi,4), %eax
	movl	$4294967295, %r8d
	cmpq	%r8, %rax
	je	.LBB10_115
	leaq	(%rsi,%rdi,4), %rsi
	addq	$4, %rsi
	movl	4(%rsi), %edi
	movq	96(%rsp), %r8
	movl	%r8d, 12(%rsi)
	movq	88(%rsp), %rsi
	cmpq	%rax, %rsi
	movl	20(%rsp), %r8d
	jbe	.LBB10_131
	imulq	$152, %rax, %rax
	movq	88(%rbx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB10_132
	addq	%rbx, %rax
	addq	$72, %rax
	movq	(%rax), %rax
	shlq	$4, %rdi
	movl	%r8d, 8(%rax,%rdi)
.LBB10_122:
	movl	%r15d, %r13d
	movq	8(%rsp), %rsi
.LBB10_123:
	movq	40(%rsp), %rax
	movl	%ecx, 16(%rax)
	movl	%r12d, 20(%rax)
	movl	%edx, 24(%rax)
	movl	%r13d, 28(%rax)
	movq	(%rbp), %rax
	movl	%esi, %esi
	leaq	(%rsi,%rsi,4), %rsi
	movl	%ecx, 4(%rax,%rsi,4)
	movl	%r12d, 8(%rax,%rsi,4)
	movl	%edx, 12(%rax,%rsi,4)
	movl	%r13d, 16(%rax,%rsi,4)
	movl	$1, %ebx
.LBB10_124:
	movl	%ebx, 48(%rsp)
	movss	%xmm1, 52(%rsp)
	leaq	48(%rsp), %rax
	#APP
	#NO_APP
	movl	48(%rsp), %eax
	movss	52(%rsp), %xmm0
	addq	$152, %rsp
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
.LBB10_31:
	.cfi_def_cfa_offset 208
	movq	-8(%rax,%r10,8), %rax
	movq	%r14, %rbx
	movq	%rax, %r14
.LBB10_32:
.Ltmp4:
	leaq	104(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp5:
	movq	104(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%r14, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 120(%rsp)
	movq	504(%rbp), %r14
	movq	%rcx, 144(%rsp)
	movdqu	104(%rsp), %xmm0
	movdqa	%xmm0, 128(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rsi
	leaq	48(%rsp), %rdi
	leaq	128(%rsp), %r8
	movl	$14, %edx
	movq	%rdi, (%rsp)
	movq	8(%rsp), %rcx
	movq	%r14, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	%r14, %rcx
	cmpq	496(%rbp), %r14
	jne	.LBB10_36
.Ltmp7:
	movq	40(%rsp), %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	504(%rbp), %rcx
.LBB10_36:
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
	andq	%rdx, %r12
	movdqu	(%rcx,%r12), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB10_39
	movl	$16, %edi
	.p2align	4, 0x90
.LBB10_38:
	addq	%rdi, %r12
	andq	%rdx, %r12
	movdqu	(%rcx,%r12), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB10_38
.LBB10_39:
	rep		bsfl	%esi, %esi
	addq	%r12, %rsi
	andq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %edi
	testb	%dil, %dil
	js	.LBB10_41
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rcx,%rsi), %edi
.LBB10_41:
	leaq	-16(%rsi), %r8
	andq	%rdx, %r8
	movb	$73, (%rcx,%rsi)
	movb	$73, 16(%r8,%rcx)
	andb	$1, %dil
	movzbl	%dil, %edx
	subq	%rdx, 528(%rbp)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	movq	%r15, -24(%rcx,%rdx,8)
	movq	%r13, -16(%rcx,%rdx,8)
	movq	%r14, -8(%rcx,%rdx,8)
	incq	536(%rbp)
	jmp	.LBB10_14
.LBB10_54:
	leaq	656(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r8, 88(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	movq	88(%rsp), %r8
	movq	656(%rbp), %rax
	movq	672(%rbp), %rcx
	jmp	.LBB10_55
.LBB10_6:
	leaq	512(%rbp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI10_0(%rip), %xmm3
	jmp	.LBB10_7
.LBB10_19:
	movq	%r14, %rbx
	cmpq	$0, 104(%rbp)
	jne	.LBB10_21
.Ltmp0:
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp1:
.LBB10_21:
	movq	80(%rbp), %r14
	movq	%r14, %rax
	cmpq	72(%rbp), %r14
	jne	.LBB10_24
.Ltmp2:
	movq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp3:
	movq	80(%rbp), %rax
.LBB10_24:
	movq	64(%rbp), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r13, 16(%rcx,%rdx)
	movq	%r15, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movq	$14, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%r14, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rbp)
	movq	88(%rbp), %rax
	movq	96(%rbp), %rcx
	movq	%rcx, %rdx
	andq	%r12, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB10_27
	movl	$16, %edi
.LBB10_26:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB10_26
.LBB10_27:
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB10_29
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB10_29:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$73, (%rax,%rsi)
	movb	$73, 16(%rdi,%rax)
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 104(%rbp)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rcx
	movq	%r15, -24(%rax,%rcx,8)
	movq	%r13, -16(%rax,%rcx,8)
	movq	%r14, -8(%rax,%rcx,8)
	incq	112(%rbp)
	jmp	.LBB10_32
.LBB10_94:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
	movq	%rax, %rdi
	movq	%r11, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_125:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_128:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.26(%rip), %rdx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_126:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_131:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_132:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.11(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_130:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.25(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_129:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	movq	%rax, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_105:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_91:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_17:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_127:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB10_115:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_75:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_76:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_80:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.16(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_101:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_98:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB10_42:
.Ltmp9:
	movq	%rax, %rbx
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB10_43
	jmp	.LBB10_44
.LBB10_45:
.Ltmp6:
	movq	%rax, %rbx
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_44
	leaq	104(%rsp), %rax
	movq	%rax, (%rsp)
.LBB10_43:
	movq	(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_44:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
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
	.uleb128 .Lfunc_end10-.Ltmp3
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.0,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 35

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"/rustc/82e1608dfa6e0b5569232559e3d385fea5a93112/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 76

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"L\000\000\000\000\000\000\000\262\005\000\000\r\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 102

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\376\002\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 43

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\002\003\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\020\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000%\003\000\000E\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\0000\003\000\000\033\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.10
	.asciz	"_\000\000\000\000\000\000\000\275\001\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\312\002\000\000=\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\214\006\000\000-\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\215\006\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\231\006\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\233\006\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 99

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"c\000\000\000\000\000\000\000Q\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000/\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"c\000\000\000\000\000\000\000N\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.25,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.25,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.25:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.20
	.asciz	"c\000\000\000\000\000\000\000O\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.25, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.26,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.26:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.10
	.asciz	"_\000\000\000\000\000\000\000\350\001\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.26, 24

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

	.text
	.file	"world_insert_or_spawn_batch.faf01fe67a04a636-cgu.0"
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	8(%rbx), %rcx
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	8(%rbx), %rcx
	shlq	$3, %rax
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	8(%rbx), %rcx
	imulq	$88, %rax, %rax
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

	.section	.text.bevy_ecs::bundle::BundleInserter::insert,"ax",@progbits
	.p2align	4, 0x90
	.type	bevy_ecs::bundle::BundleInserter::insert,@function
bevy_ecs::bundle::BundleInserter::insert:
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
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	(%rsi), %rax
	testq	%rax, %rax
	movq	%rdi, 48(%rsp)
	movss	%xmm1, 44(%rsp)
	je	.LBB6_4
	movq	%rdx, %r13
	movq	%rdx, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB6_32
	movq	24(%r14), %rbp
	movl	4(%r15), %edi
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_3
	decq	%rsi
	movq	80(%rbp), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r15d
	movups	(%rax,%rdx), %xmm2
	movups	%xmm2, (%rax,%rcx)
	movq	%rsi, 88(%rbp)
	cmpq	%rdi, %rsi
	je	.LBB6_42
	jbe	.LBB6_98
	addq	%rcx, %rax
	movl	4(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB6_42
	movl	(%rax), %r10d
	movq	32(%r14), %r11
	movq	8(%r11), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r11)
	jbe	.LBB6_41
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB6_41
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB6_31
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB6_41
.LBB6_4:
	movq	24(%r14), %rcx
	movq	40(%r14), %r13
	movq	24(%r13), %rax
	xorl	%r12d, %r12d
	cmpq	16(%rcx), %rax
	jae	.LBB6_7
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_7
	shlq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	xorl	%r12d, %r12d
	movabsq	$-9223372036854775808, %rsi
	cmpq	%rsi, (%rcx,%rax)
	cmovneq	%rdx, %r12
.LBB6_7:
	movq	48(%r14), %rbp
	movl	12(%r15), %ebx
	movl	72(%r14), %edx
	movss	%xmm0, 24(%rsp)
	movq	8(%r13), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 64(%rbp)
	jbe	.LBB6_12
	movq	56(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_12
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_10
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	24(%rbp), %r14
.LBB6_12:
	movl	%edx, 8(%rsp)
	movq	8(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB6_13
.LBB6_14:
	leaq	24(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB6_15
.LBB6_32:
	movq	24(%r14), %r12
	movl	4(%r15), %edi
	movq	88(%r12), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_3
	decq	%rsi
	movq	80(%r12), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %r8
	shlq	$4, %r8
	movl	8(%rax,%rcx), %edx
	movups	(%rax,%r8), %xmm2
	movups	%xmm2, (%rax,%rcx)
	movq	%rsi, 88(%r12)
	cmpq	%rdi, %rsi
	je	.LBB6_69
	jbe	.LBB6_98
	addq	%rcx, %rax
	movl	4(%rax), %r8d
	testl	%r8d, %r8d
	je	.LBB6_69
	movl	(%rax), %r10d
	movq	32(%r14), %r11
	movq	8(%r11), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r11)
	jbe	.LBB6_68
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB6_68
	movl	4(%rax,%rcx,4), %ebp
	cmpl	$-1, %ebp
	je	.LBB6_39
	leaq	(%rax,%rcx,4), %r8
	addq	$4, %r8
	movl	8(%r8), %esi
	movl	12(%r8), %r9d
	jmp	.LBB6_68
.LBB6_10:
	xorl	%r14d, %r14d
	movl	%edx, 8(%rsp)
	movq	8(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_14
.LBB6_13:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r14), %rdi
	leaq	24(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB6_15:
	movq	80(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movss	44(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movq	8(%r13), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 64(%rbp)
	jbe	.LBB6_20
	movq	56(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_20
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_18
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	24(%rbp), %r14
.LBB6_20:
	movq	8(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_21
.LBB6_22:
	leaq	24(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movq	48(%rsp), %rcx
	movl	8(%rsp), %edx
	jmp	.LBB6_23
.LBB6_18:
	xorl	%r14d, %r14d
	movq	8(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_22
.LBB6_21:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r14), %rdi
	leaq	24(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14), %rax
	movl	8(%rsp), %edx
	movl	%edx, (%rax,%rbx,4)
	movq	48(%rsp), %rcx
.LBB6_23:
	movq	80(%r14), %rax
	movl	%edx, (%rax,%rbx,4)
	movups	(%r15), %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB6_24
.LBB6_31:
.LBB6_41:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB6_42:
	movq	8(%r14), %r12
	movq	88(%r12), %rsi
	cmpq	72(%r12), %rsi
	movq	%rsi, 56(%rsp)
	jne	.LBB6_43
	leaq	72(%r12), %rdi
	movss	%xmm0, 8(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	56(%rsp), %rsi
	movss	8(%rsp), %xmm0
	movq	88(%r12), %rax
	jmp	.LBB6_45
.LBB6_43:
	movq	%rsi, %rax
.LBB6_45:
	movq	80(%r12), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %edi
	movl	148(%r12), %edx
	movq	32(%r14), %rax
	movq	8(%rax), %rax
	movl	%r13d, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edi, 4(%rax,%rcx,4)
	movl	%esi, 8(%rax,%rcx,4)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	40(%r14), %r12
	movq	24(%r12), %rax
	xorl	%r13d, %r13d
	cmpq	16(%rbp), %rax
	movl	%edx, 8(%rsp)
	movl	%edi, 16(%rsp)
	jae	.LBB6_48
	movq	8(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_48
	shlq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	xorl	%r13d, %r13d
	movabsq	$-9223372036854775808, %rsi
	cmpq	%rsi, (%rcx,%rax)
	cmovneq	%rdx, %r13
.LBB6_48:
	movq	48(%r14), %rbp
	movl	72(%r14), %r14d
	movss	%xmm0, 24(%rsp)
	movq	8(%r12), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 64(%rbp)
	jbe	.LBB6_53
	movq	56(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_53
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_51
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	24(%rbp), %rbx
.LBB6_53:
	movq	8(%r13), %rax
	cmpb	$0, (%rax)
	je	.LBB6_54
.LBB6_55:
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_56
.LBB6_51:
	xorl	%ebx, %ebx
	movq	8(%r13), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_55
.LBB6_54:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	24(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_56:
	movq	80(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	44(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 64(%rbp)
	jbe	.LBB6_57
	movq	56(%rbp), %rcx
	testq	%rcx, %rcx
	movq	48(%rsp), %r12
	je	.LBB6_62
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_60
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	24(%rbp), %rbx
	movq	8(%r13), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_64
	jmp	.LBB6_63
.LBB6_57:
	movq	48(%rsp), %r12
.LBB6_62:
	movq	8(%r13), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_63
.LBB6_64:
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_65
.LBB6_60:
	xorl	%ebx, %ebx
	movq	8(%r13), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_64
.LBB6_63:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	24(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_65:
	movq	80(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	16(%rsp), %eax
	movl	%eax, (%r12)
	movq	56(%rsp), %rax
	movl	%eax, 4(%r12)
	movl	8(%rsp), %eax
	jmp	.LBB6_66
.LBB6_39:
.LBB6_68:
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r9d, 16(%rax,%rcx,4)
.LBB6_69:
	movss	%xmm0, 8(%rsp)
	movq	16(%r14), %rcx
	movq	48(%r14), %rsi
	leaq	24(%rsp), %rdi
	movl	%edx, 16(%rsp)
	movq	%rcx, 56(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	8(%r14), %rbp
	movl	32(%rsp), %r15d
	movq	88(%rbp), %r8
	cmpq	72(%rbp), %r8
	jne	.LBB6_70
	leaq	72(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r12, 64(%rsp)
	movq	%r13, %r12
	movq	%rbx, %r13
	movq	%r15, %rbx
	movq	%r8, %r15
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%r15, %r8
	movq	%rbx, %r15
	movq	%r13, %rbx
	movq	%r12, %r13
	movq	64(%rsp), %r12
	movq	88(%rbp), %rax
	jmp	.LBB6_72
.LBB6_70:
	movq	%r8, %rax
.LBB6_72:
	movss	8(%rsp), %xmm0
	movq	80(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbp)
	movl	144(%rbp), %r10d
	movl	148(%rbp), %r9d
	movq	32(%r14), %rax
	movq	8(%rax), %rcx
	movl	%r13d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	%r8d, 8(%rcx,%rdx,4)
	movl	%r9d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpl	$0, 28(%rsp)
	je	.LBB6_77
	movl	24(%rsp), %ecx
	movq	8(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r12, %rcx
	cmpl	%edx, 144(%r12)
	je	.LBB6_75
	imulq	$152, %rdx, %rcx
	addq	64(%r14), %rcx
	cmpl	%edx, 144(%rbp)
	cmoveq	%rbp, %rcx
.LBB6_75:
	movl	16(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_99
	movq	80(%rcx), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB6_77:
	movq	40(%r14), %rbp
	movq	24(%rbp), %rax
	xorl	%r13d, %r13d
	cmpq	16(%r12), %rax
	jae	.LBB6_78
	movq	8(%r12), %rcx
	testq	%rcx, %rcx
	movq	48(%rsp), %r12
	je	.LBB6_81
	shlq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	xorl	%r13d, %r13d
	movabsq	$-9223372036854775808, %rsi
	cmpq	%rsi, (%rcx,%rax)
	cmovneq	%rdx, %r13
	jmp	.LBB6_81
.LBB6_78:
	movq	48(%rsp), %r12
.LBB6_81:
	movl	72(%r14), %r14d
	movss	%xmm0, 20(%rsp)
	movq	8(%rbp), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	movq	56(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB6_86
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_86
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_84
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	24(%rdx), %rbx
	jmp	.LBB6_86
.LBB6_84:
	xorl	%ebx, %ebx
.LBB6_86:
	movl	%r10d, 64(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	8(%r13), %rax
	cmpb	$0, (%rax)
	je	.LBB6_87
	leaq	20(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_89
.LBB6_87:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	20(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_89:
	movq	80(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	44(%rsp), %xmm0
	movss	%xmm0, 20(%rsp)
	movq	8(%rbp), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	movq	56(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB6_94
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_94
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_92
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	24(%rdx), %rbx
.LBB6_94:
	movq	8(%r13), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_95
.LBB6_96:
	leaq	20(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_97
.LBB6_92:
	xorl	%ebx, %ebx
	movq	8(%r13), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_96
.LBB6_95:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	20(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_97:
	movq	80(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	64(%rsp), %eax
	movl	%eax, (%r12)
	movq	8(%rsp), %rax
	movl	%eax, 4(%r12)
	movl	16(%rsp), %eax
.LBB6_66:
	movl	%eax, 8(%r12)
	movl	%r15d, 12(%r12)
.LBB6_24:
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
.LBB6_98:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB6_99:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB6_3:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
.Lfunc_end6:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end6-bevy_ecs::bundle::BundleInserter::insert
	.cfi_endproc

	.section	.text.bevy_ecs::component::Components::init_component_inner,"ax",@progbits
	.p2align	4, 0x90
	.type	bevy_ecs::component::Components::init_component_inner,@function
bevy_ecs::component::Components::init_component_inner:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	16(%rdi), %rbx
	movups	64(%rdx), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	%rbx, 80(%rsp)
	cmpb	$0, 72(%rsp)
	je	.LBB7_2
.Ltmp0:
	movq	%rsp, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp1:
.LBB7_2:
	movaps	(%rsp), %xmm0
	movaps	16(%rsp), %xmm1
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm1, 144(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	40(%rsp), %r15
	movq	48(%rsp), %r12
	movq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 120(%rsp)
	movups	56(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	%rbx, %rax
	cmpq	(%r14), %rbx
	jne	.LBB7_5
.Ltmp3:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp4:
	movq	16(%r14), %rax
.LBB7_5:
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rdx
	movq	160(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movaps	144(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	%r15, 40(%rcx,%rdx)
	movq	%r12, 48(%rcx,%rdx)
	movaps	96(%rsp), %xmm0
	movaps	112(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movups	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 16(%r14)
	movq	%rbx, %rax
	addq	$168, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_6:
	.cfi_def_cfa_offset 208
.Ltmp5:
	movq	%rax, %rbx
	leaq	(,%r15,2), %rax
	testq	%rax, %rax
	je	.LBB7_11
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	jmp	.LBB7_10
.LBB7_8:
.Ltmp2:
	movq	%rax, %rbx
	movq	40(%rsp), %rsi
	leaq	(,%rsi,2), %rax
	testq	%rax, %rax
	je	.LBB7_11
	movq	48(%rsp), %rdi
	movl	$1, %edx
.LBB7_10:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB7_11:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	bevy_ecs::component::Components::init_component_inner, .Lfunc_end7-bevy_ecs::component::Components::init_component_inner
	.cfi_endproc
	.section	.gcc_except_table.bevy_ecs::component::Components::init_component_inner,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Lfunc_end7-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	".text.hashbrown::map::VacantEntry<K,V,S,A>::insert","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::map::VacantEntry<K,V,S,A>::insert,@function
hashbrown::map::VacantEntry<K,V,S,A>::insert:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r15
	movq	(%r14), %rcx
	movq	8(%r14), %rax
	movq	%rax, %rsi
	andq	%r15, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB8_3
	movl	$16, %r8d
	.p2align	4, 0x90
.LBB8_2:
	addq	%r8, %rsi
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %r8
	testl	%edx, %edx
	je	.LBB8_2
.LBB8_3:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	cmpb	$0, (%rcx,%rdx)
	js	.LBB8_5
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB8_5:
	movq	24(%rdi), %r13
	movq	16(%rdi), %r12
	cmpq	$0, 16(%r14)
	jne	.LBB8_12
	testb	$1, (%rcx,%rdx)
	jne	.LBB8_7
.LBB8_12:
	movzbl	(%rcx,%rdx), %esi
	andl	$1, %esi
	subq	%rsi, 16(%r14)
	shrq	$57, %r15
	leaq	-16(%rdx), %rsi
	andq	%rax, %rsi
	movb	%r15b, (%rcx,%rdx)
	movb	%r15b, 16(%rsi,%rcx)
	incq	24(%r14)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	movq	%r13, -16(%rcx,%rdx,8)
	movq	%r12, -24(%rcx,%rdx,8)
	leaq	(%rcx,%rdx,8), %rax
	addq	$-8, %rax
	movq	%rbx, -8(%rcx,%rdx,8)
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB8_7:
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	movq	(%r14), %rcx
	movq	8(%r14), %rax
	movq	%rax, %rsi
	andq	%r15, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB8_10
	movl	$16, %edi
	.p2align	4, 0x90
.LBB8_9:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB8_9
.LBB8_10:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	cmpb	$0, (%rcx,%rdx)
	js	.LBB8_12
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	jmp	.LBB8_12
.Lfunc_end8:
	.size	hashbrown::map::VacantEntry<K,V,S,A>::insert, .Lfunc_end8-hashbrown::map::VacantEntry<K,V,S,A>::insert
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
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end9:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end9-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_0:
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
	je	.LBB10_12
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
	jbe	.LBB10_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB10_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB10_7
.LBB10_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB10_32
	movdqa	.LCPI10_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB10_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB10_31
.LBB10_32:
	cmpq	$16, %r8
	jae	.LBB10_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB10_34
	xorl	%eax, %eax
	jmp	.LBB10_50
.LBB10_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB10_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB10_7
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
.LBB10_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB10_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB10_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB10_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB10_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB10_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB10_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB10_34:
	xorl	%eax, %eax
	jmp	.LBB10_35
	.p2align	4, 0x90
.LBB10_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB10_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB10_49
.LBB10_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB10_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB10_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB10_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB10_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB10_39
.LBB10_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB10_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB10_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB10_52
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
	je	.LBB10_47
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
	jmp	.LBB10_37
	.p2align	4, 0x90
.LBB10_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB10_48
.LBB10_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB10_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB10_51
.LBB10_11:
	movl	$16, %r12d
.LBB10_15:
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
	je	.LBB10_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_25:
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
	je	.LBB10_26
.LBB10_17:
	testw	%r8w, %r8w
	jne	.LBB10_20
	.p2align	4, 0x90
.LBB10_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB10_18
	notl	%r8d
.LBB10_20:
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
	jne	.LBB10_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB10_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB10_22
.LBB10_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB10_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB10_25
.LBB10_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB10_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB10_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_51:
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
.LBB10_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end10:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end10-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI11_0:
	.zero	16,110
.LCPI11_1:
	.byte	94
	.byte	172
	.byte	2
	.byte	160
	.byte	110
	.byte	248
	.byte	137
	.byte	220
	.byte	186
	.byte	100
	.byte	56
	.byte	158
	.byte	55
	.byte	240
	.byte	131
	.byte	170
.LCPI11_2:
	.zero	16,38
.LCPI11_3:
	.zero	16,96
	.section	.text.world_insert_or_spawn_batch,"ax",@progbits
	.globl	world_insert_or_spawn_batch
	.p2align	4, 0x90
	.type	world_insert_or_spawn_batch,@function
world_insert_or_spawn_batch:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
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
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	(%rsi), %rax
	movq	%rax, 104(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	16(%rsi), %r12
.Ltmp6:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp7:
	movq	%r12, %rax
	shlq	$4, %rax
	addq	112(%rsp), %rax
	movq	%rax, 376(%rsp)
	movabsq	$-2555238159541425058, %rdx
	movl	760(%r15), %eax
	movl	%eax, 84(%rsp)
	leaq	488(%r15), %rbx
	leaq	64(%r15), %rax
	movq	%rax, 88(%rsp)
	leaq	216(%r15), %rax
	movq	%rax, 120(%rsp)
	leaq	512(%r15), %rax
	movq	%rax, 96(%rsp)
	movq	512(%r15), %r13
	movq	520(%r15), %r14
	leaq	-24(%r13), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI11_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI11_1(%rip), %xmm2
	movq	%r15, 136(%rsp)
.LBB11_2:
	andq	%r14, %rdx
	movdqu	(%r13,%rdx), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %esi
	.p2align	4, 0x90
.LBB11_3:
	testw	%si, %si
	je	.LBB11_4
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%r14, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movdqu	(%rax,%rdi,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r9d
	movl	%r8d, %esi
	cmpl	$65535, %r9d
	jne	.LBB11_3
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_4:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %esi
	testl	%esi, %esi
	jne	.LBB11_17
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB11_2
.LBB11_7:
	movq	-8(%r13,%rdi,8), %rbp
.LBB11_8:
	shlq	$5, %rbp
	addq	496(%r15), %rbp
	leaq	152(%r15), %rcx
.Ltmp28:
	movl	84(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	240(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movq	%rcx, 368(%rsp)
	movq	88(%rsp), %r8
	movq	120(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp29:
	movq	%rbp, 360(%rsp)
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqu	%xmm2, 184(%rsp)
	movdqu	%xmm1, 168(%rsp)
	movdqu	%xmm0, 152(%rsp)
	movq	$3, 144(%rsp)
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	testq	%r12, %r12
	je	.LBB11_12
	movl	224(%rsp), %eax
	movl	%eax, 128(%rsp)
	movq	112(%rsp), %rbp
	jmp	.LBB11_11
.LBB11_76:
	movq	40(%rsp), %rsi
.LBB11_77:
	movq	32(%rsp), %rax
	movq	%rbx, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 40(%rsp)
.LBB11_79:
	addq	$16, %rbp
	cmpq	376(%rsp), %rbp
	je	.LBB11_12
.LBB11_11:
	movq	(%rbp), %rbx
	movq	%rbx, %r12
	shrq	$32, %r12
	je	.LBB11_12
	movss	8(%rbp), %xmm0
	movss	%xmm0, 56(%rsp)
	movd	12(%rbp), %xmm0
	movd	%xmm0, 96(%rsp)
	movq	144(%rsp), %r13
	movq	160(%rsp), %r15
	cmpq	$3, %r13
	movq	176(%rsp), %r14
	movq	%r14, %rsi
	cmoveq	%r15, %rsi
.Ltmp31:
	leaq	388(%rsp), %rdi
	movq	%rbx, %rdx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp32:
	movl	388(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB11_74
	cmpl	$1, %eax
	jne	.LBB11_69
	cmpl	$3, %r13d
	jne	.LBB11_86
.Ltmp41:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
	movl	%eax, 48(%rsp)
.Ltmp42:
	movq	152(%rsp), %r13
	movq	88(%r13), %rsi
	movq	%rsi, %rax
	cmpq	72(%r13), %rsi
	movq	%rsi, 336(%rsp)
	jne	.LBB11_84
.Ltmp43:
	leaq	72(%r13), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp44:
	movq	88(%r13), %rax
.LBB11_84:
	movq	80(%r13), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%ebx, (%rcx,%rdx)
	movl	%r12d, 4(%rcx,%rdx)
	movl	48(%rsp), %edi
	movl	%edi, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r13)
	movl	144(%r13), %eax
	movl	%eax, 76(%rsp)
	movl	148(%r13), %eax
	movl	%eax, 80(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 328(%rsp)
	movl	192(%rsp), %ecx
	movl	%ecx, 64(%rsp)
	movss	56(%rsp), %xmm0
	movss	%xmm0, 240(%rsp)
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	24(%r14), %rdx
	movq	56(%r14), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movl	%edi, %r13d
	movq	%rdx, %rax
	movq	%rdx, 56(%rsp)
	movq	8(%rdx,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	16(%rax,%r12), %rdi
	leaq	240(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rsp), %rdx
	movq	56(%rdx,%r12), %rax
	movl	64(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
	movq	80(%rdx,%r12), %rax
	movl	%ecx, (%rax,%r13,4)
	movd	96(%rsp), %xmm0
	movd	%xmm0, 240(%rsp)
	movq	328(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%r14), %r12
	movq	56(%r14), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	movq	8(%r12,%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	16(%r12,%r14), %rdi
	leaq	240(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%r14), %rax
	movl	64(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
	movq	80(%r12,%r14), %rax
	movl	%ecx, (%rax,%r13,4)
	movl	%ebx, %eax
	movq	8(%r15), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	76(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	336(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	80(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	48(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	jmp	.LBB11_79
	.p2align	4, 0x90
.LBB11_74:
	movq	40(%rsp), %rsi
	cmpq	24(%rsp), %rsi
	jne	.LBB11_77
.Ltmp33:
	leaq	24(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp34:
	jmp	.LBB11_76
	.p2align	4, 0x90
.LBB11_69:
	movl	392(%rsp), %r14d
	cmpl	$3, %r13d
	je	.LBB11_71
	cmpl	128(%rsp), %r14d
	jne	.LBB11_71
	movl	128(%rsp), %eax
	movl	%eax, 240(%rsp)
	leaq	396(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	244(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp49:
	leaq	344(%rsp), %rdi
	leaq	144(%rsp), %rsi
	movq	%rbx, %rdx
	leaq	240(%rsp), %rcx
	movd	56(%rsp), %xmm0
	movd	96(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp50:
	jmp	.LBB11_79
.LBB11_86:
.Ltmp35:
	movl	84(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	240(%rsp), %rdi
	movq	360(%rsp), %rsi
	movq	136(%rsp), %rdx
	movq	368(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	120(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp36:
	movq	264(%rsp), %r13
.Ltmp37:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp38:
	movl	%eax, %r14d
	movq	240(%rsp), %r15
	movq	88(%r15), %rsi
	movq	%rsi, %rax
	cmpq	72(%r15), %rsi
	movq	%rsi, 64(%rsp)
	jne	.LBB11_91
.Ltmp39:
	leaq	72(%r15), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp40:
	movq	88(%r15), %rax
.LBB11_91:
	movq	80(%r15), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%ebx, (%rcx,%rdx)
	movl	%r12d, 4(%rcx,%rdx)
	movl	%r14d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r15)
	movl	144(%r15), %eax
	movl	%eax, 80(%rsp)
	movl	148(%r15), %eax
	movl	%eax, 336(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 328(%rsp)
	movl	280(%rsp), %ecx
	movl	%ecx, 48(%rsp)
	movss	56(%rsp), %xmm0
	movss	%xmm0, 344(%rsp)
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	%r14d, %edx
	movl	%r14d, 76(%rsp)
	movq	24(%r13), %r14
	movq	56(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movl	%edx, %r15d
	movq	8(%r14,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14,%r12), %rdi
	leaq	344(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14,%r12), %rax
	movl	48(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
	movq	80(%r14,%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	movss	96(%rsp), %xmm0
	movss	%xmm0, 344(%rsp)
	movq	328(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%r13), %r14
	movq	56(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movq	8(%r14,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14,%r12), %rdi
	leaq	344(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14,%r12), %rax
	movl	48(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
	movq	80(%r14,%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	movl	%ebx, %eax
	movq	248(%rsp), %rcx
	movq	8(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	80(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	64(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	336(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	76(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	leaq	152(%rsp), %rax
	movdqu	%xmm2, 32(%rax)
	movdqu	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	movq	$3, 144(%rsp)
	jmp	.LBB11_79
.LBB11_71:
.Ltmp45:
	movl	84(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%r14d, (%rsp)
	leaq	240(%rsp), %rdi
	movq	360(%rsp), %rsi
	movq	136(%rsp), %rdx
	movq	368(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	120(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp46:
	movl	%r14d, 344(%rsp)
	leaq	396(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	348(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp47:
	leaq	408(%rsp), %rdi
	leaq	240(%rsp), %rsi
	movq	%rbx, %rdx
	leaq	344(%rsp), %rcx
	movd	56(%rsp), %xmm0
	movd	96(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp48:
	movups	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqu	288(%rsp), %xmm3
	movaps	%xmm0, 144(%rsp)
	movdqa	%xmm1, 160(%rsp)
	movdqa	%xmm2, 176(%rsp)
	movdqa	%xmm3, 192(%rsp)
	movdqu	304(%rsp), %xmm0
	movdqa	%xmm0, 208(%rsp)
	movl	%r14d, 224(%rsp)
	movl	%r14d, 128(%rsp)
	jmp	.LBB11_79
.LBB11_12:
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB11_14
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_14:
	cmpq	$0, 40(%rsp)
	movq	24(%rsp), %rsi
	je	.LBB11_15
	leaq	(,%rsi,2), %rax
	testq	%rax, %rax
	je	.LBB11_98
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	addq	$424, %rsp
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
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_15:
	.cfi_def_cfa_offset 480
	testq	%rsi, %rsi
	je	.LBB11_98
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_98:
	addq	$424, %rsp
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
.LBB11_17:
	.cfi_def_cfa_offset 480
	movabsq	$-7590315529387700275, %rax
	movabsq	$5517044015297217078, %rcx
	movq	$0, 24(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rdx, 64(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	88(%r15), %rdx
	movq	%rdx, 48(%rsp)
	movq	88(%r15), %rdx
	movq	96(%r15), %rsi
	leaq	-24(%rdx), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI11_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB11_18:
	andq	%rsi, %r9
	movdqu	(%rdx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	.p2align	4, 0x90
.LBB11_19:
	testw	%r10w, %r10w
	je	.LBB11_20
	leal	-1(%r10), %ebp
	andl	%r10d, %ebp
	rep		bsfl	%r10d, %r10d
	addq	%r9, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r11
	movq	8(%rdi,%r11,8), %r10
	xorq	%rax, %r10
	movq	(%rdi,%r11,8), %r15
	xorq	%rcx, %r15
	orq	%r10, %r15
	movl	%ebp, %r10d
	jne	.LBB11_19
	jmp	.LBB11_23
.LBB11_20:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB11_24
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB11_18
.LBB11_23:
	leaq	(%rdx,%r11,8), %rax
	addq	$-8, %rax
.LBB11_26:
	movq	(%rax), %rbp
.Ltmp12:
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movabsq	$7503855989275972619, %rax
	movabsq	$-4554476610160251223, %rcx
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	%rsi, 128(%rsp)
	movq	%rbp, (%rsi,%rdx,8)
	incq	%rdx
	movq	%rdx, 56(%rsp)
	movq	%rdx, 40(%rsp)
	movq	136(%rsp), %rsi
	movq	88(%rsi), %rdx
	movq	96(%rsi), %rsi
	leaq	-24(%rdx), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI11_3(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB11_28:
	andq	%rsi, %r9
	movdqu	(%rdx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	.p2align	4, 0x90
.LBB11_29:
	testw	%r10w, %r10w
	je	.LBB11_30
	leal	-1(%r10), %ebp
	andl	%r10d, %ebp
	rep		bsfl	%r10d, %r10d
	addq	%r9, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r11
	movq	8(%rdi,%r11,8), %r10
	xorq	%rax, %r10
	movq	(%rdi,%r11,8), %r15
	xorq	%rcx, %r15
	orq	%r10, %r15
	movl	%ebp, %r10d
	jne	.LBB11_29
	jmp	.LBB11_33
.LBB11_30:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB11_34
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB11_28
.LBB11_33:
	leaq	(%rdx,%r11,8), %rax
	addq	$-8, %rax
.LBB11_36:
	movq	(%rax), %rbp
	movq	56(%rsp), %rsi
	cmpq	24(%rsp), %rsi
	jne	.LBB11_37
.Ltmp18:
	leaq	24(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp19:
	movq	32(%rsp), %rax
	movq	40(%rsp), %rsi
	jmp	.LBB11_40
.LBB11_37:
	movq	128(%rsp), %rax
.LBB11_40:
	movq	%rbp, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 40(%rsp)
	movq	136(%rsp), %r15
	movq	504(%r15), %rbp
	movq	%rsi, 256(%rsp)
	movdqu	24(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
.Ltmp21:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rsi
	leaq	144(%rsp), %rdi
	leaq	240(%rsp), %r8
	movl	$64, %edx
	movq	88(%rsp), %rcx
	movq	%rbp, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp22:
	movq	%rbp, %rax
	cmpq	(%rbx), %rbp
	jne	.LBB11_44
.Ltmp23:
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp24:
	movq	504(%r15), %rax
	movq	512(%r15), %r13
	movq	520(%r15), %r14
.LBB11_44:
	movq	496(%r15), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	144(%rsp), %xmm0
	movdqu	160(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%r15)
	movq	%r14, %rcx
	movabsq	$-2555238159541425058, %rax
	andq	%rax, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB11_47
	movl	$16, %edx
	.p2align	4, 0x90
.LBB11_46:
	addq	%rdx, %rcx
	andq	%r14, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB11_46
.LBB11_47:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r14, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB11_49
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB11_49:
	cmpq	$0, 528(%r15)
	jne	.LBB11_57
	testb	$1, (%r13,%rax)
	je	.LBB11_57
.Ltmp26:
	movq	96(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp27:
	movq	512(%r15), %r13
	movq	520(%r15), %r14
	movq	%r14, %rcx
	movabsq	$-2555238159541425058, %rax
	andq	%rax, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB11_55
	movl	$16, %edx
.LBB11_54:
	addq	%rdx, %rcx
	andq	%r14, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB11_54
.LBB11_55:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r14, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB11_57
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB11_57:
	movzbl	(%r13,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%r15)
	leaq	-16(%rax), %rcx
	andq	%r14, %rcx
	movb	$110, (%r13,%rax)
	movb	$110, 16(%rcx,%r13)
	incq	536(%r15)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-2555238159541425058, %rcx
	movq	%rcx, -24(%r13,%rax,8)
	movabsq	$-6159815743644343110, %rcx
	movq	%rcx, -16(%r13,%rax,8)
	movq	%rbp, -8(%r13,%rax,8)
	jmp	.LBB11_8
.LBB11_24:
	movq	48(%rsp), %rdx
	movq	%rdx, 248(%rsp)
	movq	%rcx, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rax, 272(%rsp)
	movq	$2, 240(%rsp)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 184(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8(%rip), %rdx
	movq	%rdx, 192(%rsp)
	movq	$30, 200(%rsp)
	movw	$256, 216(%rsp)
	movq	$1, 144(%rsp)
	movq	%rax, 160(%rsp)
	movq	%rcx, 152(%rsp)
	movq	$4, 168(%rsp)
	movq	$4, 176(%rsp)
	movq	$0, 208(%rsp)
.Ltmp8:
	leaq	144(%rsp), %rdx
	movq	88(%rsp), %rdi
	movq	120(%rsp), %rsi
	callq	bevy_ecs::component::Components::init_component_inner
.Ltmp9:
.Ltmp10:
	leaq	248(%rsp), %rdi
	movq	%rax, %rsi
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp11:
	jmp	.LBB11_26
.LBB11_34:
	movq	48(%rsp), %rdx
	movq	%rdx, 248(%rsp)
	movq	%rcx, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rax, 272(%rsp)
	movq	$2, 240(%rsp)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 184(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %rdx
	movq	%rdx, 192(%rsp)
	movq	$30, 200(%rsp)
	movw	$256, 216(%rsp)
	movq	$1, 144(%rsp)
	movq	%rax, 160(%rsp)
	movq	%rcx, 152(%rsp)
	movq	$4, 168(%rsp)
	movq	$4, 176(%rsp)
	movq	$0, 208(%rsp)
.Ltmp14:
	leaq	144(%rsp), %rdx
	movq	88(%rsp), %rdi
	movq	120(%rsp), %rsi
	callq	bevy_ecs::component::Components::init_component_inner
.Ltmp15:
.Ltmp16:
	leaq	248(%rsp), %rdi
	movq	%rax, %rsi
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp17:
	jmp	.LBB11_36
.LBB11_58:
.Ltmp25:
	movq	%rax, %rbx
	movq	144(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB11_93
	leaq	152(%rsp), %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB11_60
.LBB11_61:
.Ltmp20:
	movq	%rax, %rbx
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB11_93
.LBB11_60:
	movq	64(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB11_93
.LBB11_92:
.Ltmp30:
	movq	%rax, %rbx
.LBB11_93:
	cmpq	$0, 104(%rsp)
	je	.LBB11_96
	movq	104(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	jmp	.LBB11_95
.LBB11_64:
.Ltmp51:
	movq	%rax, %rbx
	cmpq	$0, 104(%rsp)
	je	.LBB11_62
	movq	104(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_62:
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB11_96
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
.LBB11_95:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_96:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end11:
	.size	world_insert_or_spawn_batch, .Lfunc_end11-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp29-.Ltmp6
	.uleb128 .Ltmp30-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp31-.Lfunc_begin1
	.uleb128 .Ltmp44-.Ltmp31
	.uleb128 .Ltmp51-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp44-.Lfunc_begin1
	.uleb128 .Ltmp33-.Ltmp44
	.byte	0
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin1
	.uleb128 .Ltmp40-.Ltmp33
	.uleb128 .Ltmp51-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp40-.Lfunc_begin1
	.uleb128 .Ltmp45-.Ltmp40
	.byte	0
	.byte	0
	.uleb128 .Ltmp45-.Lfunc_begin1
	.uleb128 .Ltmp48-.Ltmp45
	.uleb128 .Ltmp51-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp19-.Ltmp12
	.uleb128 .Ltmp20-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin1
	.uleb128 .Ltmp22-.Ltmp21
	.uleb128 .Ltmp30-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin1
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp30-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp8
	.uleb128 .Ltmp20-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin1
	.uleb128 .Lfunc_end11-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 76

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0
	.asciz	"L\000\000\000\000\000\000\000\264\005\000\000\r\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/94ab84e/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"_\000\000\000\000\000\000\000\275\001\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.6:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"_\000\000\000\000\000\000\000\350\001\000\000#\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.7,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.7:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.8,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.8:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.9,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.9:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9, 28

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.10:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10, 16

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.11,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.11:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11, 96

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.12:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12, 24

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

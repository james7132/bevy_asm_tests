	.text
	.file	"world_insert_or_spawn_batch.41a34067f0bc0b92-cgu.0"
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
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	(%rbx), %rcx
	shlq	$5, %rax
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
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
	movq	%rdi, %r13
	movq	(%rsi), %rax
	testq	%rax, %rax
	movq	%rdi, 32(%rsp)
	movss	%xmm1, 28(%rsp)
	je	.LBB6_4
	movq	%rdx, %r12
	movq	%rdx, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB6_29
	movq	24(%r14), %rbp
	movl	4(%r15), %edi
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_3
	decq	%rsi
	movq	72(%rbp), %rax
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
	jbe	.LBB6_28
	addq	%rcx, %rax
	movq	(%rax), %r9
	movq	32(%r14), %r10
	movl	%r9d, %r11d
	movq	(%r10), %rax
	leaq	(%r11,%r11,4), %rcx
	cmpq	16(%r10), %r11
	jae	.LBB6_41
	shrq	$32, %r9
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB6_41
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB6_39
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
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_7
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB6_7:
	movq	48(%r14), %rbp
	movl	12(%r15), %ebx
	movl	72(%r14), %eax
	movl	%eax, (%rsp)
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_12
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_12
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_10
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rbp), %r14
.LBB6_12:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB6_13
.LBB6_14:
	leaq	40(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB6_15
.LBB6_29:
	movq	24(%r14), %r13
	movl	4(%r15), %edi
	movq	88(%r13), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_3
	decq	%rsi
	movq	72(%r13), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %r8
	shlq	$4, %r8
	movl	8(%rax,%rcx), %edx
	movups	(%rax,%r8), %xmm2
	movups	%xmm2, (%rax,%rcx)
	movq	%rsi, 88(%r13)
	cmpq	%rdi, %rsi
	je	.LBB6_69
	jbe	.LBB6_28
	addq	%rcx, %rax
	movq	(%rax), %r8
	movq	32(%r14), %r10
	movl	%r8d, %r11d
	movq	(%r10), %rax
	leaq	(%r11,%r11,4), %rcx
	cmpq	16(%r10), %r11
	jae	.LBB6_68
	shrq	$32, %r8
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB6_68
	movl	4(%rax,%rcx,4), %ebp
	cmpl	$-1, %ebp
	je	.LBB6_35
	leaq	(%rax,%rcx,4), %r8
	addq	$4, %r8
	movl	8(%r8), %esi
	movl	12(%r8), %r9d
	jmp	.LBB6_68
.LBB6_10:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_14
.LBB6_13:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r14), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB6_15:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_16
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %r13
	je	.LBB6_21
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_19
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rbp), %r14
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_23
	jmp	.LBB6_22
.LBB6_16:
	movq	32(%rsp), %r13
.LBB6_21:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_22
.LBB6_23:
	leaq	40(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB6_24
.LBB6_19:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_23
.LBB6_22:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r14), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB6_24:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movups	(%r15), %xmm0
	movups	%xmm0, (%r13)
	jmp	.LBB6_25
.LBB6_39:
.LBB6_41:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB6_42:
	movq	8(%r14), %r13
	movq	88(%r13), %rsi
	cmpq	80(%r13), %rsi
	movq	%rsi, 16(%rsp)
	jne	.LBB6_43
	leaq	72(%r13), %rdi
	movq	16(%rsp), %rsi
	movss	%xmm0, (%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	16(%rsp), %rsi
	movss	(%rsp), %xmm0
	movq	88(%r13), %rax
	jmp	.LBB6_45
.LBB6_43:
	movq	%rsi, %rax
.LBB6_45:
	movq	72(%r13), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r12d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r13)
	movl	144(%r13), %edi
	movl	148(%r13), %edx
	movq	32(%r14), %rax
	movq	(%rax), %rax
	movl	%r12d, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edi, 4(%rax,%rcx,4)
	movl	%esi, 8(%rax,%rcx,4)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	40(%r14), %r13
	movq	24(%r13), %rax
	xorl	%r12d, %r12d
	cmpq	16(%rbp), %rax
	movl	%edx, (%rsp)
	movl	%edi, 8(%rsp)
	jae	.LBB6_48
	movq	(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_48
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB6_48:
	movq	48(%r14), %rbp
	movl	72(%r14), %r14d
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_53
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_53
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_51
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rbp), %rbx
.LBB6_53:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB6_54
.LBB6_55:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_56
.LBB6_51:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_55
.LBB6_54:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_56:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_57
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %r13
	je	.LBB6_62
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_60
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rbp), %rbx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_64
	jmp	.LBB6_63
.LBB6_57:
	movq	32(%rsp), %r13
.LBB6_62:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_63
.LBB6_64:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_65
.LBB6_60:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_64
.LBB6_63:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_65:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	8(%rsp), %eax
	movl	%eax, (%r13)
	movq	16(%rsp), %rax
	movl	%eax, 4(%r13)
	movl	(%rsp), %eax
	jmp	.LBB6_66
.LBB6_35:
.LBB6_68:
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r9d, 16(%rax,%rcx,4)
.LBB6_69:
	movss	%xmm0, (%rsp)
	movq	16(%r14), %rcx
	movq	48(%r14), %rsi
	leaq	40(%rsp), %rdi
	movl	%edx, 8(%rsp)
	movq	%rcx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	8(%r14), %rbp
	movl	56(%rsp), %r15d
	movq	88(%rbp), %r8
	cmpq	80(%rbp), %r8
	jne	.LBB6_70
	leaq	72(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r13, 64(%rsp)
	movq	%r12, %r13
	movq	%rbx, %r12
	movq	%r15, %rbx
	movq	%r8, %r15
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%r15, %r8
	movq	%rbx, %r15
	movq	%r12, %rbx
	movq	%r13, %r12
	movq	64(%rsp), %r13
	movq	88(%rbp), %rax
	jmp	.LBB6_72
.LBB6_70:
	movq	%r8, %rax
.LBB6_72:
	movss	(%rsp), %xmm0
	movq	72(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r12d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbp)
	movl	144(%rbp), %r10d
	movl	148(%rbp), %r9d
	movq	32(%r14), %rax
	movq	(%rax), %rcx
	movl	%r12d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	%r8d, 8(%rcx,%rdx,4)
	movl	%r9d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpq	$0, 40(%rsp)
	je	.LBB6_77
	movl	48(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r13, %rcx
	cmpl	%edx, 144(%r13)
	je	.LBB6_75
	imulq	$152, %rdx, %rcx
	addq	64(%r14), %rcx
	cmpl	%edx, 144(%rbp)
	cmoveq	%rbp, %rcx
.LBB6_75:
	movl	8(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_98
	movq	72(%rcx), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB6_77:
	movq	40(%r14), %rbp
	movq	24(%rbp), %rax
	xorl	%r12d, %r12d
	cmpq	16(%r13), %rax
	jae	.LBB6_78
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %r13
	movq	16(%rsp), %rdx
	je	.LBB6_81
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
	jmp	.LBB6_81
.LBB6_78:
	movq	32(%rsp), %r13
	movq	16(%rsp), %rdx
.LBB6_81:
	movl	72(%r14), %r14d
	movss	%xmm0, 12(%rsp)
	movq	(%rbp), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB6_86
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_86
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_84
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rdx), %rbx
	jmp	.LBB6_86
.LBB6_84:
	xorl	%ebx, %ebx
.LBB6_86:
	movl	%r10d, 64(%rsp)
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB6_87
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_89
.LBB6_87:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_89:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 12(%rsp)
	movq	(%rbp), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	movq	16(%rsp), %rdx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB6_94
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_94
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_92
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rdx), %rbx
.LBB6_94:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_95
.LBB6_96:
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_97
.LBB6_92:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_96
.LBB6_95:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_97:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	64(%rsp), %eax
	movl	%eax, (%r13)
	movq	(%rsp), %rax
	movl	%eax, 4(%r13)
	movl	8(%rsp), %eax
.LBB6_66:
	movl	%eax, 8(%r13)
	movl	%r15d, 12(%r13)
.LBB6_25:
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
.LBB6_28:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB6_98:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB6_3:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.Lfunc_end6:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end6-bevy_ecs::bundle::BundleInserter::insert
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
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
	jne	.LBB7_2
.LBB7_39:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB7_40:
	movq	%rax, %r12
	jmp	.LBB7_41
.LBB7_2:
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
	jbe	.LBB7_5
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	jae	.LBB7_11
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %rsi
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB7_15
	jmp	.LBB7_39
.LBB7_5:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB7_8
	movdqa	.LCPI7_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB7_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB7_7
.LBB7_8:
	cmpq	$16, %r8
	jae	.LBB7_20
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB7_21
	xorl	%eax, %eax
	jmp	.LBB7_36
.LBB7_11:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB7_37
	shlq	$3, %rcx
	movl	$1, %esi
	cmpq	$14, %rcx
	jb	.LBB7_14
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
.LBB7_14:
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jo	.LBB7_39
.LBB7_15:
	movq	%rax, %r13
	addq	$15, %r13
	andq	$-16, %r13
	leaq	16(%rsi), %rdx
	movq	%r13, %r15
	addq	%rdx, %r15
	jb	.LBB7_39
	movabsq	$-9223372036854775807, %r12
	leaq	-17(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB7_39
	testq	%r15, %r15
	movq	%rbp, 16(%rsp)
	movq	%r8, 32(%rsp)
	je	.LBB7_42
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
	jne	.LBB7_43
	movl	$16, %esi
	movl	$1, %edi
	movq	%r15, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB7_40
.LBB7_20:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB7_21:
	movabsq	$5871781006564002453, %rax
	xorl	%ecx, %ecx
	jmp	.LBB7_24
	.p2align	4, 0x90
.LBB7_22:
	shrq	$57, %r8
	leaq	-16(%rcx), %rdx
	andq	%rdx, %r9
	movb	%r8b, (%r12,%rcx)
	movq	(%rbx), %r12
	movb	%r8b, 16(%r9,%r12)
.LBB7_23:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB7_35
.LBB7_24:
	cmpb	$-128, (%r12,%rcx)
	jne	.LBB7_23
	leaq	(,%rcx,8), %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	addq	$-24, %rdx
	movq	%rcx, %rsi
	negq	%rsi
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB7_26:
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
	jne	.LBB7_29
	movl	$16, %r15d
	movq	%rdi, %r11
	.p2align	4, 0x90
.LBB7_28:
	addq	%r15, %r11
	andq	%r9, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r15
	testl	%r10d, %r10d
	je	.LBB7_28
.LBB7_29:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%r9, %r10
	cmpb	$0, (%r12,%r10)
	js	.LBB7_31
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB7_31:
	movq	%rcx, %r11
	subq	%rdi, %r11
	movq	%r10, %r15
	subq	%rdi, %r15
	xorq	%r11, %r15
	andq	%r9, %r15
	cmpq	$16, %r15
	jb	.LBB7_22
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
	je	.LBB7_34
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
	jmp	.LBB7_26
	.p2align	4, 0x90
.LBB7_34:
	leaq	-16(%rcx), %rsi
	andq	8(%rbx), %rsi
	movb	$-1, (%r12,%rcx)
	movb	$-1, 16(%rsi,%r12)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, (%rdi)
	jmp	.LBB7_23
.LBB7_35:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %rbp
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB7_36:
	subq	%rbp, %rax
	movabsq	$-9223372036854775807, %r12
	movq	%rax, 16(%rbx)
.LBB7_41:
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
.LBB7_37:
	.cfi_def_cfa_offset 96
	movq	%r8, %r15
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r12
	jne	.LBB7_41
	movq	%rdx, %rsi
	movq	%r15, %r8
	movl	$24, %ecx
	movq	%rsi, %rax
	mulq	%rcx
	jno	.LBB7_15
	jmp	.LBB7_39
.LBB7_42:
	movl	$16, %ebp
.LBB7_43:
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
	je	.LBB7_54
	movq	24(%rsp), %rsi
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	notl	%r9d
	leaq	-24(%rsi), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %r8
	jmp	.LBB7_46
	.p2align	4, 0x90
.LBB7_45:
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
	je	.LBB7_54
.LBB7_46:
	testw	%r9w, %r9w
	jne	.LBB7_49
	.p2align	4, 0x90
.LBB7_47:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r9d
	addq	$16, %rdx
	cmpl	$65535, %r9d
	je	.LBB7_47
	notl	%r9d
.LBB7_49:
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
	jne	.LBB7_52
	movl	$16, %ecx
	.p2align	4, 0x90
.LBB7_51:
	addq	%rcx, %r13
	andq	%r15, %r13
	movdqu	(%rbp,%r13), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB7_51
.LBB7_52:
	rep		bsfl	%eax, %eax
	addq	%r13, %rax
	andq	%r15, %rax
	cmpb	$0, (%rbp,%rax)
	js	.LBB7_45
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	jmp	.LBB7_45
.LBB7_54:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rbp, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB7_41
	movl	$24, %ecx
	movq	32(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB7_41
	movq	24(%rsp), %rdi
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB7_41
.Lfunc_end7:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end7-hashbrown::raw::RawTable<T,A>::reserve_rehash
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
	.zero	16,61
.LCPI9_1:
	.byte	238
	.byte	126
	.byte	60
	.byte	14
	.byte	193
	.byte	188
	.byte	171
	.byte	4
	.byte	190
	.byte	169
	.byte	133
	.byte	138
	.byte	213
	.byte	215
	.byte	193
	.byte	231
.LCPI9_2:
	.zero	16,97
	.section	.text.world_insert_or_spawn_batch,"ax",@progbits
	.globl	world_insert_or_spawn_batch
	.p2align	4, 0x90
	.type	world_insert_or_spawn_batch,@function
world_insert_or_spawn_batch:
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
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	(%rsi), %rax
	movq	%rax, 96(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 88(%rsp)
	movq	16(%rsi), %r13
.Ltmp0:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp1:
	movq	%r13, %rax
	shlq	$4, %rax
	addq	96(%rsp), %rax
	movq	%rax, 360(%rsp)
	movabsq	$8816830278648933510, %rbp
	movl	760(%r15), %eax
	movl	%eax, 76(%rsp)
	leaq	488(%r15), %rbx
	leaq	64(%r15), %rax
	movq	%rax, 80(%rsp)
	leaq	216(%r15), %rax
	movq	%rax, 144(%rsp)
	leaq	512(%r15), %rdi
	movq	512(%r15), %rcx
	movq	520(%r15), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI9_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI9_1(%rip), %xmm2
	movq	%rbp, %r8
	movq	%r15, 16(%rsp)
.LBB9_2:
	andq	%rax, %r8
	movdqu	(%rcx,%r8), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r9d
	.p2align	4, 0x90
.LBB9_3:
	testw	%r9w, %r9w
	je	.LBB9_4
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rax, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movdqu	(%rdx,%r10,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r14d
	movl	%r11d, %r9d
	cmpl	$65535, %r14d
	jne	.LBB9_3
	jmp	.LBB9_14
	.p2align	4, 0x90
.LBB9_4:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	jne	.LBB9_6
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB9_2
.LBB9_14:
	movq	(%rbx), %rax
	movq	-8(%rcx,%r10,8), %rsi
.LBB9_65:
	shlq	$5, %rsi
	addq	%rax, %rsi
	leaq	152(%r15), %rcx
.Ltmp22:
	movl	76(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	176(%rsp), %rdi
	movq	%rsi, 264(%rsp)
	movq	%r15, %rdx
	movq	%rcx, 256(%rsp)
	movq	80(%rsp), %r8
	movq	144(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp23:
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	movdqu	%xmm2, 312(%rsp)
	movdqu	%xmm1, 296(%rsp)
	movdqu	%xmm0, 280(%rsp)
	movq	$3, 272(%rsp)
	movq	$8, 32(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 40(%rsp)
	testq	%r13, %r13
	je	.LBB9_78
	movq	96(%rsp), %r14
	jmp	.LBB9_68
.LBB9_87:
	movq	48(%rsp), %rsi
.LBB9_88:
	movq	32(%rsp), %rax
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 48(%rsp)
.LBB9_90:
	addq	$16, %r14
	cmpq	360(%rsp), %r14
	je	.LBB9_78
.LBB9_68:
	movq	(%r14), %rdx
	movss	8(%r14), %xmm0
	movss	%xmm0, 24(%rsp)
	movd	12(%r14), %xmm0
	movd	%xmm0, 56(%rsp)
	movq	272(%rsp), %rbp
	movq	288(%rsp), %r13
	cmpq	$3, %rbp
	movq	304(%rsp), %r12
	movq	%r12, %rsi
	cmoveq	%r13, %rsi
.Ltmp25:
	leaq	372(%rsp), %rdi
	movq	%rdx, %r15
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp26:
	movl	372(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB9_85
	cmpl	$1, %eax
	jne	.LBB9_71
	cmpl	$3, %ebp
	movq	%r15, 112(%rsp)
	jne	.LBB9_97
.Ltmp35:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp36:
	movl	%eax, %ebp
	movq	280(%rsp), %rbx
	movq	88(%rbx), %rsi
	movq	%rsi, %rax
	cmpq	80(%rbx), %rsi
	movq	%rsi, 136(%rsp)
	jne	.LBB9_95
.Ltmp37:
	leaq	72(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp38:
	movq	88(%rbx), %rax
.LBB9_95:
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	72(%rbx), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	%r15d, (%rdx,%rsi)
	movl	%ecx, 4(%rdx,%rsi)
	movl	%ebp, 8(%rdx,%rsi)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 128(%rsp)
	movl	148(%rbx), %eax
	movl	%eax, 72(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 120(%rsp)
	movl	320(%rsp), %ecx
	movl	%ecx, 156(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 176(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%ebp, %edx
	movl	%ebp, 68(%rsp)
	movq	(%r12), %rbp
	movq	32(%r12), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	movl	%edx, %ebx
	movq	8(%rbp,%r15), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%rbp,%r15), %rdi
	leaq	176(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbp,%r15), %rax
	movl	156(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
	movq	72(%rbp,%r15), %rax
	movl	%ecx, (%rax,%rbx,4)
	movl	%ecx, %ebp
	movd	56(%rsp), %xmm0
	movd	%xmm0, 176(%rsp)
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%r12), %r15
	movq	32(%r12), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movq	8(%r15,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15,%r12), %rdi
	leaq	176(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r15,%r12), %rax
	movl	%ebp, (%rax,%rbx,4)
	movq	72(%r15,%r12), %rax
	movl	%ebp, (%rax,%rbx,4)
	movl	112(%rsp), %eax
	movq	(%r13), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	128(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	136(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	72(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	68(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	jmp	.LBB9_90
	.p2align	4, 0x90
.LBB9_85:
	movq	48(%rsp), %rsi
	cmpq	40(%rsp), %rsi
	jne	.LBB9_88
.Ltmp27:
	leaq	32(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp28:
	jmp	.LBB9_87
	.p2align	4, 0x90
.LBB9_71:
	movl	376(%rsp), %ebx
	cmpl	$3, %ebp
	je	.LBB9_73
	cmpl	104(%rsp), %ebx
	jne	.LBB9_73
	movl	104(%rsp), %eax
	movl	%eax, 176(%rsp)
	leaq	380(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	180(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp43:
	leaq	160(%rsp), %rdi
	leaq	272(%rsp), %rsi
	movq	%r15, %rdx
	leaq	176(%rsp), %rcx
	movd	24(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp44:
	jmp	.LBB9_90
.LBB9_97:
.Ltmp29:
	movl	76(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	176(%rsp), %rdi
	movq	264(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	256(%rsp), %rcx
	movq	80(%rsp), %r8
	movq	144(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp30:
	movq	200(%rsp), %rbp
.Ltmp31:
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp32:
	movl	%eax, %r12d
	movq	176(%rsp), %rbx
	movq	88(%rbx), %r13
	movq	%r13, %rax
	cmpq	80(%rbx), %r13
	jne	.LBB9_102
.Ltmp33:
	leaq	72(%rbx), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp34:
	movq	88(%rbx), %rax
.LBB9_102:
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	72(%rbx), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	%r15d, (%rdx,%rsi)
	movl	%ecx, 4(%rdx,%rsi)
	movl	%r12d, 8(%rdx,%rsi)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 72(%rsp)
	movl	148(%rbx), %eax
	movl	%eax, 136(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	%r13, 128(%rsp)
	movl	216(%rsp), %r13d
	movss	24(%rsp), %xmm0
	movss	%xmm0, 160(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rbp), %r15
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movl	%r12d, %ecx
	movl	%r12d, 68(%rsp)
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movl	%ecx, %ebx
	movq	8(%r15,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15,%r12), %rdi
	leaq	160(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r15,%r12), %rax
	movl	%r13d, (%rax,%rbx,4)
	movq	72(%r15,%r12), %rax
	movl	%r13d, (%rax,%rbx,4)
	movss	56(%rsp), %xmm0
	movss	%xmm0, 160(%rsp)
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rbp), %r15
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movq	8(%r15,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r15,%r12), %rdi
	leaq	160(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r15,%r12), %rax
	movl	%r13d, (%rax,%rbx,4)
	movq	72(%r15,%r12), %rax
	movl	%r13d, (%rax,%rbx,4)
	movl	112(%rsp), %eax
	movq	184(%rsp), %rcx
	movq	(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	72(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	128(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	136(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	68(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	leaq	280(%rsp), %rax
	movdqu	%xmm2, 32(%rax)
	movdqu	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	movq	$3, 272(%rsp)
	jmp	.LBB9_90
.LBB9_73:
.Ltmp39:
	movl	76(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	leaq	176(%rsp), %rdi
	movq	264(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	256(%rsp), %rcx
	movq	80(%rsp), %r8
	movq	144(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp40:
	movl	%ebx, 160(%rsp)
	leaq	380(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	164(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp41:
	leaq	392(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	%r15, %rdx
	leaq	160(%rsp), %rcx
	movd	24(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp42:
	movups	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	movdqu	224(%rsp), %xmm3
	movaps	%xmm0, 272(%rsp)
	movdqa	%xmm1, 288(%rsp)
	movdqa	%xmm2, 304(%rsp)
	movdqa	%xmm3, 320(%rsp)
	movdqu	240(%rsp), %xmm0
	movdqa	%xmm0, 336(%rsp)
	movl	%ebx, 352(%rsp)
	movl	%ebx, 104(%rsp)
	jmp	.LBB9_90
.LBB9_78:
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB9_80
	shlq	$4, %rsi
	movl	$8, %edx
	movq	96(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_80:
	cmpq	$0, 48(%rsp)
	je	.LBB9_81
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_110
	movq	40(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB9_110
	shlq	$3, %rsi
	movl	$8, %edx
	addq	$408, %rsp
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
.LBB9_81:
	.cfi_def_cfa_offset 464
	movq	40(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB9_110
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_110:
	addq	$408, %rsp
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
.LBB9_6:
	.cfi_def_cfa_offset 464
	cmpq	$0, 528(%r15)
	jne	.LBB9_8
.Ltmp2:
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp3:
.LBB9_8:
	movq	%r15, %rax
	movabsq	$8588863553114319161, %r15
	movabsq	$4436950722537832381, %r14
	movabsq	$-4422855136333137151, %rdx
	movq	$8, 32(%rsp)
	leaq	88(%rax), %rcx
	movq	%rcx, 104(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 40(%rsp)
	movq	88(%rax), %rsi
	movq	96(%rax), %r12
	leaq	-24(%rsi), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI9_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB9_9:
	andq	%r12, %rdx
	movq	%rsi, %r10
	movdqu	(%rsi,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB9_10:
	testw	%si, %si
	je	.LBB9_11
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%r12, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	8(%rax,%rdi,8), %rsi
	xorq	%r15, %rsi
	movq	(%rax,%rdi,8), %r9
	xorq	%r14, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB9_10
	jmp	.LBB9_27
.LBB9_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB9_15
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	movq	%r10, %rsi
	jmp	.LBB9_9
.LBB9_27:
	movq	-8(%r10,%rdi,8), %rax
	movq	%rax, 24(%rsp)
.LBB9_28:
.Ltmp8:
	movq	%r10, 56(%rsp)
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp9:
	movabsq	$8522471627436710533, %r14
	movabsq	$8643122815247738173, %r15
	movabsq	$125064361033813633, %rdx
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rax
	movq	%rcx, 112(%rsp)
	movq	24(%rsp), %rsi
	movq	%rsi, (%rcx,%rax,8)
	incq	%rax
	movq	%rax, 24(%rsp)
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rsi
	leaq	-24(%rsi), %rax
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB9_30:
	andq	%r12, %rdx
	movdqu	(%rsi,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB9_31:
	testw	%si, %si
	je	.LBB9_32
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%r12, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	8(%rax,%rdi,8), %rsi
	xorq	%r14, %rsi
	movq	(%rax,%rdi,8), %r9
	xorq	%r15, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB9_31
	jmp	.LBB9_46
.LBB9_32:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB9_34
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	movq	56(%rsp), %rsi
	jmp	.LBB9_30
.LBB9_46:
	movq	56(%rsp), %rax
	movq	-8(%rax,%rdi,8), %r12
	movq	16(%rsp), %r15
	movq	24(%rsp), %rsi
	cmpq	40(%rsp), %rsi
	movq	112(%rsp), %rax
	jne	.LBB9_50
.LBB9_48:
.Ltmp14:
	leaq	32(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp15:
	movq	32(%rsp), %rax
	movq	48(%rsp), %rsi
	movq	16(%rsp), %r15
.LBB9_50:
	movq	%r12, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 48(%rsp)
	movq	504(%r15), %r9
	movq	%rsi, 192(%rsp)
	movdqu	32(%rsp), %xmm0
	movdqa	%xmm0, 176(%rsp)
.Ltmp17:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rsi
	leaq	272(%rsp), %r14
	leaq	176(%rsp), %r8
	movl	$64, %edx
	movq	%r14, %rdi
	movq	80(%rsp), %rcx
	movq	%r9, %r12
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp18:
	movq	%r12, %rax
	movq	%r12, %rcx
	cmpq	496(%r15), %r12
	jne	.LBB9_54
.Ltmp19:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp20:
	movq	504(%r15), %rcx
.LBB9_54:
	movq	488(%r15), %rax
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movups	272(%rsp), %xmm0
	movdqu	288(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rdx)
	movups	%xmm0, (%rax,%rdx)
	incq	%rcx
	movq	%rcx, 504(%r15)
	movq	512(%r15), %rcx
	movq	%r15, %r9
	movq	520(%r15), %rdx
	andq	%rdx, %rbp
	movdqu	(%rcx,%rbp), %xmm0
	pmovmskb	%xmm0, %r8d
	testl	%r8d, %r8d
	je	.LBB9_60
	movq	%r12, %rsi
	jmp	.LBB9_62
.LBB9_60:
	movl	$16, %edi
	movq	%r12, %rsi
	.p2align	4, 0x90
.LBB9_61:
	addq	%rdi, %rbp
	andq	%rdx, %rbp
	movdqu	(%rcx,%rbp), %xmm0
	pmovmskb	%xmm0, %r8d
	addq	$16, %rdi
	testl	%r8d, %r8d
	je	.LBB9_61
.LBB9_62:
	movq	%r9, %r15
	rep		bsfl	%r8d, %r9d
	addq	%rbp, %r9
	andq	%rdx, %r9
	movzbl	(%rcx,%r9), %edi
	testb	%dil, %dil
	js	.LBB9_64
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edi
	rep		bsfl	%edi, %r9d
	movzbl	(%rcx,%r9), %edi
.LBB9_64:
	leaq	-16(%r9), %r8
	andq	%rdx, %r8
	movb	$61, (%rcx,%r9)
	movb	$61, 16(%r8,%rcx)
	negq	%r9
	leaq	(%r9,%r9,2), %rdx
	andb	$1, %dil
	movzbl	%dil, %edi
	subq	%rdi, 528(%r15)
	movabsq	$336570134522789614, %rdi
	movq	%rdi, -24(%rcx,%rdx,8)
	movabsq	$-1746877868291020354, %rdi
	movq	%rdi, -16(%rcx,%rdx,8)
	movq	%rsi, -8(%rcx,%rdx,8)
	incq	536(%r15)
	jmp	.LBB9_65
.LBB9_15:
	movq	16(%rsp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB9_17
.Ltmp4:
	movq	104(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp5:
.LBB9_17:
	movq	16(%rsp), %rdi
	movq	80(%rdi), %rsi
	movq	%rsi, %rax
	cmpq	72(%rdi), %rsi
	jne	.LBB9_20
.Ltmp6:
	movq	80(%rsp), %rdi
	movq	%rsi, %r12
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp7:
	movq	16(%rsp), %rdi
	movq	80(%rdi), %rax
	movq	%r12, %rsi
.LBB9_20:
	movq	64(%rdi), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r15, 16(%rcx,%rdx)
	movq	%r14, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %r8
	movq	%r8, 48(%rcx,%rdx)
	movq	$30, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%rsi, 24(%rsp)
	movq	%rsi, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rdi)
	movq	88(%rdi), %rax
	movq	96(%rdi), %r12
	movabsq	$-4422855136333137151, %rdi
	andq	%r12, %rdi
	movq	%rax, %rdx
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB9_23
	movl	$16, %ecx
	movq	%rdx, %rsi
.LBB9_22:
	addq	%rcx, %rdi
	andq	%r12, %rdi
	movdqu	(%rsi,%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB9_22
.LBB9_23:
	rep		bsfl	%eax, %eax
	addq	%rdi, %rax
	andq	%r12, %rax
	movq	%rdx, %rsi
	movzbl	(%rdx,%rax), %ecx
	testb	%cl, %cl
	js	.LBB9_25
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	movzbl	(%rsi,%rax), %ecx
.LBB9_25:
	leaq	-16(%rax), %rdx
	andq	%r12, %rdx
	movb	$97, (%rsi,%rax)
	movb	$97, 16(%rdx,%rsi)
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	16(%rsp), %rdx
	subq	%rcx, 104(%rdx)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	%r14, -24(%rsi,%rax,8)
	movq	%r15, -16(%rsi,%rax,8)
	movq	24(%rsp), %rcx
	movq	%rcx, -8(%rsi,%rax,8)
	incq	112(%rdx)
	movq	%rsi, %r10
	jmp	.LBB9_28
.LBB9_34:
	movq	16(%rsp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB9_36
.Ltmp10:
	movq	104(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp11:
.LBB9_36:
	movq	16(%rsp), %rdi
	movq	80(%rdi), %r12
	movq	%r12, %rax
	cmpq	72(%rdi), %r12
	jne	.LBB9_39
.Ltmp12:
	movq	80(%rsp), %rdi
	movq	%r12, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movq	16(%rsp), %rdi
	movq	80(%rdi), %rax
.LBB9_39:
	movq	64(%rdi), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r14, 16(%rcx,%rdx)
	movq	%r15, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6(%rip), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movq	$30, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%r12, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rdi)
	movq	88(%rdi), %rax
	movq	96(%rdi), %rcx
	movabsq	$125064361033813633, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB9_42
	movl	$16, %esi
.LBB9_41:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB9_41
.LBB9_42:
	rep		bsfl	%edx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB9_44
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB9_44:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$0, (%rax,%rdx)
	movb	$0, 16(%rdi,%rax)
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 104(%rsi)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r15, -24(%rax,%rcx,8)
	movq	%r14, -16(%rax,%rcx,8)
	movq	%r12, -8(%rax,%rcx,8)
	movq	%rsi, %r15
	incq	112(%rsi)
	movq	24(%rsp), %rsi
	cmpq	40(%rsp), %rsi
	movq	112(%rsp), %rax
	je	.LBB9_48
	jmp	.LBB9_50
.LBB9_56:
.Ltmp21:
	movq	%rax, %rbx
	movq	280(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB9_57
	jmp	.LBB9_104
.LBB9_58:
.Ltmp16:
	movq	%rax, %rbx
	movq	40(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB9_104
	leaq	32(%rsp), %r14
.LBB9_57:
	movq	(%r14), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB9_104
.LBB9_103:
.Ltmp24:
	movq	%rax, %rbx
.LBB9_104:
	cmpq	$0, 88(%rsp)
	je	.LBB9_107
	movq	88(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	96(%rsp), %rdi
	jmp	.LBB9_106
.LBB9_83:
.Ltmp45:
	movq	%rax, %rbx
	cmpq	$0, 88(%rsp)
	je	.LBB9_76
	movq	88(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	96(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_76:
	movq	40(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB9_107
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
.LBB9_106:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_107:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end9:
	.size	world_insert_or_spawn_batch, .Lfunc_end9-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp23-.Ltmp0
	.uleb128 .Ltmp24-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin0
	.uleb128 .Ltmp38-.Ltmp25
	.uleb128 .Ltmp45-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin0
	.uleb128 .Ltmp27-.Ltmp38
	.byte	0
	.byte	0
	.uleb128 .Ltmp27-.Lfunc_begin0
	.uleb128 .Ltmp34-.Ltmp27
	.uleb128 .Ltmp45-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp34-.Lfunc_begin0
	.uleb128 .Ltmp39-.Ltmp34
	.byte	0
	.byte	0
	.uleb128 .Ltmp39-.Lfunc_begin0
	.uleb128 .Ltmp42-.Ltmp39
	.uleb128 .Ltmp45-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp24-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin0
	.uleb128 .Ltmp15-.Ltmp8
	.uleb128 .Ltmp16-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp24-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin0
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Ltmp13-.Ltmp4
	.uleb128 .Ltmp16-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin0
	.uleb128 .Lfunc_end9-.Ltmp13
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"/rustc/82e1608dfa6e0b5569232559e3d385fea5a93112/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 76

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0
	.asciz	"L\000\000\000\000\000\000\000\262\005\000\000\r\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f2b84db/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2
	.asciz	"_\000\000\000\000\000\000\000\275\001\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2
	.asciz	"_\000\000\000\000\000\000\000\350\001\000\000#\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.6,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.6:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.7,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.7:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7, 30

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

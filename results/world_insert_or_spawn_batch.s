	.text
	.file	"world_insert_or_spawn_batch.4b065b5590baf203-cgu.0"
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	(%rbx), %rcx
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	(%rbx), %rcx
	shlq	$5, %rax
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	(%rbx), %rcx
	shlq	$4, %rax
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
	movq	%rdi, 56(%rsp)
	movss	%xmm1, 52(%rsp)
	je	.LBB6_4
	movq	%rdx, %r12
	movq	%rdx, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB6_33
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
	je	.LBB6_43
	jbe	.LBB6_99
	addq	%rcx, %rax
	movl	4(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB6_43
	movl	(%rax), %r10d
	movq	32(%r14), %r11
	movq	(%r11), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r11)
	jbe	.LBB6_42
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB6_42
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB6_32
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB6_42
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
	movl	%eax, 8(%rsp)
	movss	%xmm0, 32(%rsp)
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
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB6_15
.LBB6_33:
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
	je	.LBB6_70
	jbe	.LBB6_99
	addq	%rcx, %rax
	movl	4(%rax), %r8d
	testl	%r8d, %r8d
	je	.LBB6_70
	movl	(%rax), %r10d
	movq	32(%r14), %r11
	movq	(%r11), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r11)
	jbe	.LBB6_69
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB6_69
	movl	4(%rax,%rcx,4), %ebp
	cmpl	$-1, %ebp
	je	.LBB6_40
	leaq	(%rax,%rcx,4), %r8
	addq	$4, %r8
	movl	8(%r8), %esi
	movl	12(%r8), %r9d
	jmp	.LBB6_69
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
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB6_15:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_16
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	movq	56(%rsp), %r13
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
	movq	56(%rsp), %r13
.LBB6_21:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_22
.LBB6_23:
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
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
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB6_24:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movups	(%r15), %xmm0
	movups	%xmm0, (%r13)
	jmp	.LBB6_25
.LBB6_32:
.LBB6_42:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB6_43:
	movq	8(%r14), %r13
	movq	88(%r13), %rsi
	cmpq	80(%r13), %rsi
	movq	%rsi, 24(%rsp)
	jne	.LBB6_44
	leaq	72(%r13), %rdi
	movq	24(%rsp), %rsi
	movss	%xmm0, 8(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	24(%rsp), %rsi
	movss	8(%rsp), %xmm0
	movq	88(%r13), %rax
	jmp	.LBB6_46
.LBB6_44:
	movq	%rsi, %rax
.LBB6_46:
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
	movl	%edx, 8(%rsp)
	movl	%edi, 16(%rsp)
	jae	.LBB6_49
	movq	(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_49
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB6_49:
	movq	48(%r14), %rbp
	movl	72(%r14), %r14d
	movss	%xmm0, 32(%rsp)
	movq	(%r13), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_54
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB6_54
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_52
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rbp), %rbx
.LBB6_54:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB6_55
.LBB6_56:
	leaq	32(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_57
.LBB6_52:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_56
.LBB6_55:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_57:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rbp)
	jbe	.LBB6_58
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	movq	56(%rsp), %r13
	je	.LBB6_63
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_61
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rbp), %rbx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_65
	jmp	.LBB6_64
.LBB6_58:
	movq	56(%rsp), %r13
.LBB6_63:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_64
.LBB6_65:
	leaq	32(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_66
.LBB6_61:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_65
.LBB6_64:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_66:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	16(%rsp), %eax
	movl	%eax, (%r13)
	movq	24(%rsp), %rax
	movl	%eax, 4(%r13)
	movl	8(%rsp), %eax
	jmp	.LBB6_67
.LBB6_40:
.LBB6_69:
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r9d, 16(%rax,%rcx,4)
.LBB6_70:
	movss	%xmm0, 8(%rsp)
	movq	16(%r14), %rcx
	movq	48(%r14), %rsi
	leaq	32(%rsp), %rdi
	movl	%edx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	8(%r14), %rbp
	movl	40(%rsp), %r15d
	movq	88(%rbp), %r8
	cmpq	80(%rbp), %r8
	jne	.LBB6_71
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
	jmp	.LBB6_73
.LBB6_71:
	movq	%r8, %rax
.LBB6_73:
	movss	8(%rsp), %xmm0
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
	cmpl	$0, 36(%rsp)
	je	.LBB6_78
	movl	32(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r13, %rcx
	cmpl	%edx, 144(%r13)
	je	.LBB6_76
	imulq	$152, %rdx, %rcx
	addq	64(%r14), %rcx
	cmpl	%edx, 144(%rbp)
	cmoveq	%rbp, %rcx
.LBB6_76:
	movl	16(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB6_100
	movq	72(%rcx), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB6_78:
	movq	40(%r14), %rbp
	movq	24(%rbp), %rax
	xorl	%r12d, %r12d
	cmpq	16(%r13), %rax
	jae	.LBB6_79
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	movq	56(%rsp), %r13
	movq	24(%rsp), %rdx
	je	.LBB6_82
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
	jmp	.LBB6_82
.LBB6_79:
	movq	56(%rsp), %r13
	movq	24(%rsp), %rdx
.LBB6_82:
	movl	72(%r14), %r14d
	movss	%xmm0, 20(%rsp)
	movq	(%rbp), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB6_87
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_87
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_85
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rdx), %rbx
	jmp	.LBB6_87
.LBB6_85:
	xorl	%ebx, %ebx
.LBB6_87:
	movl	%r10d, 64(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB6_88
	leaq	20(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_90
.LBB6_88:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	20(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_90:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, 20(%rsp)
	movq	(%rbp), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	movq	24(%rsp), %rdx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB6_95
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_95
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB6_93
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rdx), %rbx
.LBB6_95:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB6_96
.LBB6_97:
	leaq	20(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB6_98
.LBB6_93:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB6_97
.LBB6_96:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	20(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB6_98:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	64(%rsp), %eax
	movl	%eax, (%r13)
	movq	8(%rsp), %rax
	movl	%eax, 4(%r13)
	movl	16(%rsp), %eax
.LBB6_67:
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
.LBB6_99:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB6_100:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB6_3:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.Lfunc_end6:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end6-bevy_ecs::bundle::BundleInserter::insert
	.cfi_endproc

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
	jne	.LBB7_3
	movl	$16, %r8d
	.p2align	4, 0x90
.LBB7_2:
	addq	%r8, %rsi
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %r8
	testl	%edx, %edx
	je	.LBB7_2
.LBB7_3:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	cmpb	$0, (%rcx,%rdx)
	js	.LBB7_5
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB7_5:
	movq	24(%rdi), %r13
	movq	16(%rdi), %r12
	cmpq	$0, 16(%r14)
	jne	.LBB7_12
	testb	$1, (%rcx,%rdx)
	jne	.LBB7_7
.LBB7_12:
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
.LBB7_7:
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
	jne	.LBB7_10
	movl	$16, %edi
	.p2align	4, 0x90
.LBB7_9:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB7_9
.LBB7_10:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	cmpb	$0, (%rcx,%rdx)
	js	.LBB7_12
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	jmp	.LBB7_12
.Lfunc_end7:
	.size	hashbrown::map::VacantEntry<K,V,S,A>::insert, .Lfunc_end7-hashbrown::map::VacantEntry<K,V,S,A>::insert
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
	ud2
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
	ud2
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
	ud2
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
	ud2
.Lfunc_end9:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end9-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_0:
	.zero	16,98
.LCPI10_1:
	.byte	111
	.byte	164
	.byte	1
	.byte	17
	.byte	28
	.byte	100
	.byte	118
	.byte	196
	.byte	199
	.byte	172
	.byte	221
	.byte	106
	.byte	114
	.byte	233
	.byte	99
	.byte	85
.LCPI10_2:
	.zero	16,35
.LCPI10_3:
	.zero	16,67
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
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	(%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 104(%rsp)
	movq	16(%rsi), %r13
.Ltmp0:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp1:
	movq	%r13, %rax
	shlq	$4, %rax
	addq	112(%rsp), %rax
	movq	%rax, 376(%rsp)
	movabsq	$-4290131523316636561, %rdx
	movl	760(%rbp), %eax
	movl	%eax, 92(%rsp)
	leaq	488(%rbp), %rbx
	leaq	64(%rbp), %rax
	movq	%rax, 96(%rsp)
	leaq	216(%rbp), %rax
	movq	%rax, 152(%rsp)
	leaq	512(%rbp), %r10
	movq	512(%rbp), %r12
	movq	520(%rbp), %r14
	leaq	-24(%r12), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI10_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI10_1(%rip), %xmm2
	movq	%rbp, 40(%rsp)
.LBB10_2:
	andq	%r14, %rdx
	movdqu	(%r12,%rdx), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %esi
	.p2align	4, 0x90
.LBB10_3:
	testw	%si, %si
	je	.LBB10_4
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
	jne	.LBB10_3
	jmp	.LBB10_7
	.p2align	4, 0x90
.LBB10_4:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %esi
	testl	%esi, %esi
	jne	.LBB10_17
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB10_2
.LBB10_7:
	movq	-8(%r12,%rdi,8), %rsi
.LBB10_8:
	shlq	$5, %rsi
	addq	488(%rbp), %rsi
	leaq	152(%rbp), %rcx
.Ltmp22:
	movl	92(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	272(%rsp), %rdi
	movq	%rsi, 368(%rsp)
	movq	%rbp, %rdx
	movq	%rcx, 360(%rsp)
	movq	96(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp23:
	movdqu	272(%rsp), %xmm0
	movdqu	288(%rsp), %xmm1
	movdqu	304(%rsp), %xmm2
	movdqu	%xmm2, 216(%rsp)
	movdqu	%xmm1, 200(%rsp)
	movdqu	%xmm0, 184(%rsp)
	movq	$3, 176(%rsp)
	movq	$8, 48(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 56(%rsp)
	testq	%r13, %r13
	je	.LBB10_12
	movl	256(%rsp), %eax
	movl	%eax, 120(%rsp)
	movq	112(%rsp), %rbp
	jmp	.LBB10_11
.LBB10_80:
	movq	64(%rsp), %rsi
.LBB10_81:
	movq	48(%rsp), %rax
	movq	%r14, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 64(%rsp)
.LBB10_83:
	addq	$16, %rbp
	cmpq	376(%rsp), %rbp
	je	.LBB10_12
.LBB10_11:
	movq	(%rbp), %r14
	movq	%r14, %r12
	shrq	$32, %r12
	je	.LBB10_12
	movss	8(%rbp), %xmm0
	movss	%xmm0, 72(%rsp)
	movd	12(%rbp), %xmm0
	movd	%xmm0, 24(%rsp)
	movq	176(%rsp), %r13
	movq	192(%rsp), %r15
	cmpq	$3, %r13
	movq	208(%rsp), %rbx
	movq	%rbx, %rsi
	cmoveq	%r15, %rsi
.Ltmp25:
	leaq	388(%rsp), %rdi
	movq	%r14, %rdx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp26:
	movl	388(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB10_78
	cmpl	$1, %eax
	jne	.LBB10_73
	cmpl	$3, %r13d
	jne	.LBB10_90
.Ltmp35:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
	movl	%eax, 32(%rsp)
.Ltmp36:
	movq	184(%rsp), %r13
	movq	88(%r13), %rsi
	movq	%rsi, %rax
	cmpq	80(%r13), %rsi
	movq	%rsi, 144(%rsp)
	jne	.LBB10_88
.Ltmp37:
	leaq	72(%r13), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp38:
	movq	88(%r13), %rax
.LBB10_88:
	movq	72(%r13), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r14d, (%rcx,%rdx)
	movl	%r12d, 4(%rcx,%rdx)
	movl	32(%rsp), %edi
	movl	%edi, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r13)
	movl	144(%r13), %eax
	movl	%eax, 84(%rsp)
	movl	148(%r13), %eax
	movl	%eax, 88(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 136(%rsp)
	movl	224(%rsp), %ecx
	movl	%ecx, 128(%rsp)
	movss	72(%rsp), %xmm0
	movss	%xmm0, 272(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rbx), %rdx
	movq	32(%rbx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movl	%edi, %r13d
	movq	%rdx, %rax
	movq	%rdx, 72(%rsp)
	movq	8(%rdx,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	16(%rax,%r12), %rdi
	leaq	272(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	72(%rsp), %rdx
	movq	48(%rdx,%r12), %rax
	movl	128(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
	movq	72(%rdx,%r12), %rax
	movl	%ecx, (%rax,%r13,4)
	movd	24(%rsp), %xmm0
	movd	%xmm0, 272(%rsp)
	movq	136(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rbx), %r12
	movq	32(%rbx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	8(%r12,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	16(%r12,%rbx), %rdi
	leaq	272(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r12,%rbx), %rax
	movl	128(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
	movq	72(%r12,%rbx), %rax
	movl	%ecx, (%rax,%r13,4)
	movl	%r14d, %eax
	movq	(%r15), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	84(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	144(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	88(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	32(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	jmp	.LBB10_83
	.p2align	4, 0x90
.LBB10_78:
	movq	64(%rsp), %rsi
	cmpq	56(%rsp), %rsi
	jne	.LBB10_81
.Ltmp27:
	leaq	48(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp28:
	jmp	.LBB10_80
	.p2align	4, 0x90
.LBB10_73:
	movl	392(%rsp), %ebx
	cmpl	$3, %r13d
	je	.LBB10_75
	cmpl	120(%rsp), %ebx
	jne	.LBB10_75
	movl	120(%rsp), %eax
	movl	%eax, 272(%rsp)
	leaq	396(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	276(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp43:
	leaq	160(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	%r14, %rdx
	leaq	272(%rsp), %rcx
	movd	72(%rsp), %xmm0
	movd	24(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp44:
	jmp	.LBB10_83
.LBB10_90:
.Ltmp29:
	movl	92(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	272(%rsp), %rdi
	movq	368(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	360(%rsp), %rcx
	movq	96(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp30:
	movq	296(%rsp), %r13
.Ltmp31:
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp32:
	movl	%eax, %ebx
	movq	272(%rsp), %r15
	movq	88(%r15), %rsi
	movq	%rsi, %rax
	cmpq	80(%r15), %rsi
	movq	%rsi, 128(%rsp)
	jne	.LBB10_95
.Ltmp33:
	leaq	72(%r15), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp34:
	movq	88(%r15), %rax
.LBB10_95:
	movq	72(%r15), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r14d, (%rcx,%rdx)
	movl	%r12d, 4(%rcx,%rdx)
	movl	%ebx, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r15)
	movl	144(%r15), %eax
	movl	%eax, 88(%rsp)
	movl	148(%r15), %eax
	movl	%eax, 144(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 136(%rsp)
	movl	312(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movss	72(%rsp), %xmm0
	movss	%xmm0, 160(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%ebx, %edx
	movl	%ebx, 84(%rsp)
	movq	(%r13), %rbx
	movq	32(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movl	%edx, %r15d
	movq	8(%rbx,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx,%r12), %rdi
	leaq	160(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx,%r12), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
	movq	72(%rbx,%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 160(%rsp)
	movq	136(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%r13), %rbx
	movq	32(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movq	8(%rbx,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx,%r12), %rdi
	leaq	160(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx,%r12), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
	movq	72(%rbx,%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	movl	%r14d, %eax
	movq	280(%rsp), %rcx
	movq	(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	88(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	128(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	144(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	84(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	movdqu	272(%rsp), %xmm0
	movdqu	288(%rsp), %xmm1
	movdqu	304(%rsp), %xmm2
	leaq	184(%rsp), %rax
	movdqu	%xmm2, 32(%rax)
	movdqu	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	movq	$3, 176(%rsp)
	jmp	.LBB10_83
.LBB10_75:
.Ltmp39:
	movl	92(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	leaq	272(%rsp), %rdi
	movq	368(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	360(%rsp), %rcx
	movq	96(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp40:
	movl	%ebx, 160(%rsp)
	leaq	396(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	164(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp41:
	leaq	408(%rsp), %rdi
	leaq	272(%rsp), %rsi
	movq	%r14, %rdx
	leaq	160(%rsp), %rcx
	movd	72(%rsp), %xmm0
	movd	24(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp42:
	movups	272(%rsp), %xmm0
	movdqu	288(%rsp), %xmm1
	movdqu	304(%rsp), %xmm2
	movdqu	320(%rsp), %xmm3
	movaps	%xmm0, 176(%rsp)
	movdqa	%xmm1, 192(%rsp)
	movdqa	%xmm2, 208(%rsp)
	movdqa	%xmm3, 224(%rsp)
	movdqu	336(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movl	%ebx, 256(%rsp)
	movl	%ebx, 120(%rsp)
	jmp	.LBB10_83
.LBB10_12:
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_14
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_14:
	cmpq	$0, 64(%rsp)
	je	.LBB10_15
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_103
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_103
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
.LBB10_15:
	.cfi_def_cfa_offset 480
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_103
	movq	48(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_103:
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
.LBB10_17:
	.cfi_def_cfa_offset 480
	movq	%r10, 120(%rsp)
	movabsq	$1850000033588045703, %r15
	movq	%rbp, %rcx
	movabsq	$5184673607666551929, %rbp
	movq	$8, 48(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 56(%rsp)
	leaq	88(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	88(%rcx), %rax
	movq	96(%rcx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI10_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rdi
.LBB10_18:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB10_19:
	testw	%r8w, %r8w
	je	.LBB10_20
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r15, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbp, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB10_19
	jmp	.LBB10_23
.LBB10_20:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB10_24
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB10_18
.LBB10_23:
	leaq	(%rax,%r9,8), %rax
	addq	$-8, %rax
.LBB10_28:
	movq	(%rax), %rax
	movq	%rax, 24(%rsp)
.Ltmp6:
	leaq	48(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp7:
	movabsq	$7880771034504155481, %r15
	movabsq	$-8732650112567788140, %rbp
	movq	48(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%rcx, 72(%rsp)
	movq	24(%rsp), %rdx
	movq	%rdx, (%rcx,%rax,8)
	incq	%rax
	movq	%rax, 24(%rsp)
	movq	%rax, 64(%rsp)
	movq	40(%rsp), %rcx
	movq	88(%rcx), %rax
	movq	96(%rcx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI10_3(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rdi
.LBB10_30:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB10_31:
	testw	%r8w, %r8w
	je	.LBB10_32
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r15, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbp, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB10_31
	jmp	.LBB10_35
.LBB10_32:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB10_36
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB10_30
.LBB10_35:
	leaq	(%rax,%r9,8), %rax
	addq	$-8, %rax
.LBB10_40:
	movq	(%rax), %r15
	movq	24(%rsp), %rsi
	cmpq	56(%rsp), %rsi
	jne	.LBB10_41
.Ltmp12:
	leaq	48(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movq	48(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	40(%rsp), %rbp
	jmp	.LBB10_44
.LBB10_41:
	movq	40(%rsp), %rbp
	movq	72(%rsp), %rax
.LBB10_44:
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 64(%rsp)
	movq	504(%rbp), %r9
	movq	%rsi, 288(%rsp)
	movdqu	48(%rsp), %xmm0
	movdqa	%xmm0, 272(%rsp)
.Ltmp15:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rsi
	leaq	176(%rsp), %rdi
	leaq	272(%rsp), %r8
	movl	$64, %edx
	movq	%rdi, 24(%rsp)
	movq	96(%rsp), %rcx
	movq	%r9, %r15
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp16:
	movq	%r15, %rcx
	movq	%r15, %rax
	cmpq	496(%rbp), %r15
	jne	.LBB10_48
.Ltmp17:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp18:
	movq	504(%rbp), %rax
	movq	512(%rbp), %r12
	movq	520(%rbp), %r14
.LBB10_48:
	movq	488(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%rbp)
	movq	%r14, %rcx
	movabsq	$-4290131523316636561, %rax
	andq	%rax, %rcx
	movdqu	(%r12,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB10_51
	movl	$16, %edx
	.p2align	4, 0x90
.LBB10_50:
	addq	%rdx, %rcx
	andq	%r14, %rcx
	movdqu	(%r12,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB10_50
.LBB10_51:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r14, %rax
	cmpb	$0, (%r12,%rax)
	js	.LBB10_53
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB10_53:
	cmpq	$0, 528(%rbp)
	jne	.LBB10_61
	testb	$1, (%r12,%rax)
	je	.LBB10_61
.Ltmp20:
	movq	120(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp21:
	movq	512(%rbp), %r12
	movq	520(%rbp), %r14
	movq	%r14, %rcx
	movabsq	$-4290131523316636561, %rax
	andq	%rax, %rcx
	movdqu	(%r12,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB10_59
	movl	$16, %edx
.LBB10_58:
	addq	%rdx, %rcx
	andq	%r14, %rcx
	movdqu	(%r12,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB10_58
.LBB10_59:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r14, %rax
	cmpb	$0, (%r12,%rax)
	js	.LBB10_61
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB10_61:
	movzbl	(%r12,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%rbp)
	leaq	-16(%rax), %rcx
	andq	%r14, %rcx
	movb	$98, (%r12,%rax)
	movb	$98, 16(%rcx,%r12)
	incq	536(%rbp)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-4290131523316636561, %rcx
	movq	%rcx, -24(%r12,%rax,8)
	movabsq	$6153018193546685639, %rcx
	movq	%rcx, -16(%r12,%rax,8)
	movq	%r15, %rsi
	movq	%r15, -8(%r12,%rax,8)
	jmp	.LBB10_8
.LBB10_24:
	movq	32(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	%rbp, 192(%rsp)
	movq	%rbp, 200(%rsp)
	movq	%r15, 208(%rsp)
	movq	$2, 176(%rsp)
	movq	40(%rsp), %r8
	movq	80(%r8), %rsi
	movq	%rsi, %rax
	cmpq	72(%r8), %rsi
	jne	.LBB10_27
.Ltmp2:
	movq	96(%rsp), %rdi
	movq	%rsi, 24(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp3:
	movq	40(%rsp), %r8
	movq	80(%r8), %rax
	movq	24(%rsp), %rsi
.LBB10_27:
	leaq	184(%rsp), %rdi
	movq	64(%r8), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r15, 16(%rcx,%rdx)
	movq	%rbp, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %r9
	movq	%r9, 48(%rcx,%rdx)
	movq	$30, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%rsi, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r8)
.Ltmp4:
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp5:
	jmp	.LBB10_28
.LBB10_36:
	movq	32(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	%rbp, 192(%rsp)
	movq	%rbp, 200(%rsp)
	movq	%r15, 208(%rsp)
	movq	$2, 176(%rsp)
	movq	40(%rsp), %r8
	movq	80(%r8), %rsi
	movq	%rsi, %rax
	cmpq	72(%r8), %rsi
	jne	.LBB10_39
.Ltmp8:
	movq	96(%rsp), %rdi
	movq	%rsi, 32(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp9:
	movq	40(%rsp), %r8
	movq	80(%r8), %rax
	movq	32(%rsp), %rsi
.LBB10_39:
	leaq	184(%rsp), %rdi
	movq	64(%r8), %rcx
	imulq	$88, %rax, %rdx
	movq	$1, (%rcx,%rdx)
	movq	%r15, 16(%rcx,%rdx)
	movq	%rbp, 8(%rcx,%rdx)
	movq	$4, 24(%rcx,%rdx)
	movq	$4, 32(%rcx,%rdx)
	movq	$0, 40(%rcx,%rdx)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8(%rip), %r9
	movq	%r9, 48(%rcx,%rdx)
	movq	$30, 56(%rcx,%rdx)
	movq	$0, 64(%rcx,%rdx)
	movw	$256, 72(%rcx,%rdx)
	movq	%rsi, 80(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r8)
.Ltmp10:
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp11:
	jmp	.LBB10_40
.LBB10_62:
.Ltmp19:
	movq	%rax, %rbx
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB10_63
	jmp	.LBB10_97
.LBB10_64:
.Ltmp14:
	movq	%rax, %rbx
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_97
	leaq	48(%rsp), %rax
	movq	%rax, 24(%rsp)
.LBB10_63:
	movq	24(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB10_97
.LBB10_96:
.Ltmp24:
	movq	%rax, %rbx
.LBB10_97:
	cmpq	$0, 104(%rsp)
	je	.LBB10_100
	movq	104(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	jmp	.LBB10_99
.LBB10_68:
.Ltmp45:
	movq	%rax, %rbx
	cmpq	$0, 104(%rsp)
	je	.LBB10_66
	movq	104(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_66:
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_100
	movq	48(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
.LBB10_99:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_100:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end10:
	.size	world_insert_or_spawn_batch, .Lfunc_end10-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
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
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Ltmp13-.Ltmp6
	.uleb128 .Ltmp14-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin0
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp24-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp20
	.uleb128 .Ltmp24-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp11-.Ltmp2
	.uleb128 .Ltmp14-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin0
	.uleb128 .Lfunc_end10-.Ltmp11
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
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.8,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.8:
	.ascii	"world_insert_or_spawn_batch::B"
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
	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

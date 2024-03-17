	.text
	.file	"world_insert_or_spawn_batch.f5927e3d839a841b-cgu.0"
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
	movabsq	$82351536043346213, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$112, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB1_2
	movq	8(%rbx), %rcx
	imulq	$112, %rax, %rax
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB2_2
	movq	8(%rbx), %rcx
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB3_2
	movq	8(%rbx), %rcx
	shlq	$4, %rax
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_2
	movq	8(%rbx), %rcx
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	8(%rbx), %rcx
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

	.section	.text.bevy_ecs::bundle::BundleSpawner::spawn_non_existent,"ax",@progbits
	.p2align	4, 0x90
	.type	bevy_ecs::bundle::BundleSpawner::spawn_non_existent,@function
bevy_ecs::bundle::BundleSpawner::spawn_non_existent:
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
	movss	%xmm1, 36(%rsp)
	movss	%xmm0, 24(%rsp)
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, 48(%rsp)
	movq	%rdx, %rbp
	shrq	$32, %rbp
	movq	(%rsi), %r12
	movq	8(%rsi), %rdi
	movq	16(%rsi), %r15
	movq	24(%rsi), %r14
	movl	%ebx, %eax
	movq	%rax, 64(%rsp)
	movq	%rdi, 56(%rsp)
	movq	%rdx, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
	movq	%r15, %rcx
	movl	%eax, %esi
	movq	88(%r15), %r15
	movq	%r15, %rax
	cmpq	72(%rcx), %r15
	movq	%rcx, 16(%rsp)
	jne	.LBB6_2
	leaq	72(%rcx), %rdi
	movl	%esi, 12(%rsp)
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movl	12(%rsp), %esi
	movq	16(%rsp), %rcx
	movq	88(%rcx), %rax
.LBB6_2:
	movq	80(%rcx), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%ebx, (%rcx,%rdx)
	movl	%ebp, 4(%rcx,%rdx)
	movl	%esi, 8(%rcx,%rdx)
	incq	%rax
	movq	16(%rsp), %rcx
	movq	%rax, 88(%rcx)
	movq	16(%rsp), %rax
	movl	144(%rax), %eax
	movq	16(%rsp), %rcx
	movl	148(%rcx), %ecx
	movq	48(%rsp), %rdx
	movl	%eax, (%rdx)
	movl	%r15d, 4(%rdx)
	movl	%ecx, 8(%rdx)
	movl	%esi, 12(%rdx)
	movl	32(%r13), %eax
	movl	%eax, 12(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	8(%r12), %rax
	movq	(%rax), %rax
	movq	56(%rsp), %r15
	movq	24(%r15), %rbp
	movq	56(%r15), %rcx
	movq	(%rcx,%rax,8), %rax
	notq	%rax
	movq	%r12, 24(%rsp)
	leaq	(%rax,%rax,2), %r12
	shlq	$5, %r12
	movl	%esi, %r13d
	movq	8(%rbp,%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	16(%rbp,%r12), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%r12), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
	movq	80(%rbp,%r12), %rax
	movl	%ecx, (%rax,%r13,4)
	movss	36(%rsp), %xmm0
	movss	%xmm0, 44(%rsp)
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%r15), %r12
	movq	56(%r15), %rcx
	movq	(%rcx,%rax,8), %rax
	notq	%rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	movq	8(%r12,%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	16(%r12,%rbp), %rdi
	leaq	44(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%rbp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, (%rax,%r13,4)
	movq	80(%r12,%rbp), %rax
	movl	%ecx, (%rax,%r13,4)
	movq	8(%r14), %rax
	movq	64(%rsp), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	48(%rsp), %rdx
	movups	(%rdx), %xmm0
	movups	%xmm0, 4(%rax,%rcx,4)
	movq	16(%rsp), %rax
	movl	152(%rax), %eax
	testb	$1, %al
	jne	.LBB6_7
	movq	24(%rsp), %rcx
	jmp	.LBB6_5
.LBB6_7:
	movq	24(%rsp), %rcx
	movq	16(%rcx), %r15
	testq	%r15, %r15
	je	.LBB6_5
	movq	%rcx, %rbp
	movq	8(%rcx), %r12
	shlq	$3, %r15
	xorl	%r13d, %r13d
	jmp	.LBB6_9
	.p2align	4, 0x90
.LBB6_11:
	addq	$8, %r13
	cmpq	%r13, %r15
	je	.LBB6_4
.LBB6_9:
	movq	(%r12,%r13), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	88(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB6_11
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rax
	jmp	.LBB6_11
.LBB6_4:
	movq	16(%rsp), %rax
	movl	152(%rax), %eax
	movq	%rbp, %rcx
.LBB6_5:
	testb	$2, %al
	je	.LBB6_6
	movq	16(%rcx), %r15
	testq	%r15, %r15
	je	.LBB6_6
	movq	8(%rcx), %r12
	shlq	$3, %r15
	xorl	%r13d, %r13d
	jmp	.LBB6_14
	.p2align	4, 0x90
.LBB6_16:
	addq	$8, %r13
	cmpq	%r13, %r15
	je	.LBB6_6
.LBB6_14:
	movq	(%r12,%r13), %rdx
	movq	72(%r14), %rax
	imulq	$112, %rdx, %rcx
	movq	96(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB6_16
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rax
	jmp	.LBB6_16
.LBB6_6:
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
.Lfunc_end6:
	.size	bevy_ecs::bundle::BundleSpawner::spawn_non_existent, .Lfunc_end6-bevy_ecs::bundle::BundleSpawner::spawn_non_existent
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rsi, %r13
	movq	(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rcx, 16(%rsp)
	movq	32(%rsi), %rcx
	movq	%rcx, 40(%rsp)
	movq	40(%rsi), %r9
	movq	48(%rsi), %r14
	testq	%rax, %rax
	movq	%rdx, 72(%rsp)
	movq	%rdi, 88(%rsp)
	movss	%xmm1, 68(%rsp)
	je	.LBB7_8
	movq	%rdx, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB7_25
	movq	8(%r13), %r10
	movq	56(%r13), %r15
	movl	4(%rbp), %eax
	movq	80(%r14), %rcx
	movq	88(%r14), %rsi
	decq	%rsi
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r8
	shlq	$4, %r8
	movl	8(%rcx,%rdx), %r12d
	movups	(%rcx,%r8), %xmm2
	movups	%xmm2, (%rcx,%rdx)
	movq	%rsi, 88(%r14)
	cmpq	%rax, %rsi
	movq	72(%rsp), %r14
	movq	%r10, 32(%rsp)
	je	.LBB7_33
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %r11
	shrq	$32, %r11
	je	.LBB7_33
	movq	%r9, %rbp
	movl	%ecx, %r10d
	movq	8(%r15), %rcx
	leaq	(%r10,%r10,4), %rdx
	cmpq	16(%r15), %r10
	jae	.LBB7_32
	cmpl	%r11d, (%rcx,%rdx,4)
	jne	.LBB7_32
	movl	4(%rcx,%rdx,4), %r9d
	cmpl	$-1, %r9d
	je	.LBB7_7
	leaq	(%rcx,%rdx,4), %rsi
	addq	$4, %rsi
	movl	8(%rsi), %r8d
	movl	12(%rsi), %esi
	jmp	.LBB7_32
.LBB7_8:
	movl	12(%rbp), %r12d
	movl	64(%r13), %eax
	movl	%eax, 8(%rsp)
	movss	%xmm0, 48(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%r15d, %r15d
	cmpq	%rax, 64(%r9)
	jbe	.LBB7_13
	movq	56(%r9), %rcx
	testq	%rcx, %rcx
	je	.LBB7_13
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_11
	notq	%rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	addq	24(%r9), %r15
	jmp	.LBB7_13
.LBB7_25:
	movq	8(%r13), %rax
	movq	%rax, 24(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	56(%r13), %r15
	movq	160(%r15), %rax
	movq	%rax, 96(%rsp)
	movl	4(%rbp), %eax
	movq	80(%r14), %rcx
	movq	88(%r14), %rsi
	decq	%rsi
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rsi, %r8
	shlq	$4, %r8
	movl	8(%rcx,%rdx), %ebp
	movups	(%rcx,%r8), %xmm2
	movups	%xmm2, (%rcx,%rdx)
	movq	%rsi, 88(%r14)
	cmpq	%rax, %rsi
	je	.LBB7_55
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %r11
	shrq	$32, %r11
	je	.LBB7_55
	movq	%r9, %r12
	movl	%ecx, %r10d
	movq	8(%r15), %rcx
	leaq	(%r10,%r10,4), %rdx
	cmpq	16(%r15), %r10
	jae	.LBB7_54
	cmpl	%r11d, (%rcx,%rdx,4)
	jne	.LBB7_54
	movl	4(%rcx,%rdx,4), %esi
	cmpl	$-1, %esi
	je	.LBB7_30
	leaq	(%rcx,%rdx,4), %r9
	addq	$4, %r9
	movl	8(%r9), %r8d
	movl	12(%r9), %r9d
	jmp	.LBB7_54
.LBB7_11:
	xorl	%r15d, %r15d
.LBB7_13:
	movq	%r9, %rbx
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_14
	leaq	48(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB7_16
.LBB7_14:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r15), %rdi
	leaq	48(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_16:
	movq	80(%r15), %rax
	movl	%ecx, (%rax,%r12,4)
	movss	68(%rsp), %xmm0
	movss	%xmm0, 48(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	xorl	%r15d, %r15d
	cmpq	%rax, 64(%rbx)
	jbe	.LBB7_21
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_21
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_19
	notq	%rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	addq	24(%rbx), %r15
.LBB7_21:
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_22
.LBB7_23:
	leaq	48(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB7_24
.LBB7_19:
	xorl	%r15d, %r15d
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_23
.LBB7_22:
	movq	8(%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r15), %rdi
	leaq	48(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_24:
	movq	80(%r15), %rax
	movl	%ecx, (%rax,%r12,4)
	movl	(%rbp), %edx
	movl	4(%rbp), %ecx
	movl	8(%rbp), %ebp
	movq	56(%r13), %r15
	movq	88(%rsp), %rax
	jmp	.LBB7_87
.LBB7_7:
.LBB7_32:
	movl	%r9d, 4(%rcx,%rdx,4)
	movl	%eax, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%esi, 16(%rcx,%rdx,4)
	movq	%rbp, %r9
	movq	32(%rsp), %r10
.LBB7_33:
	movq	88(%r10), %rsi
	cmpq	72(%r10), %rsi
	movq	%rsi, 24(%rsp)
	jne	.LBB7_34
	leaq	72(%r10), %rdi
	movq	%r9, %rbp
	movss	%xmm0, 8(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	32(%rsp), %r10
	movss	8(%rsp), %xmm0
	movq	%rbp, %r9
	movq	24(%rsp), %rsi
	movq	88(%r10), %rax
	jmp	.LBB7_36
.LBB7_34:
	movq	%rsi, %rax
.LBB7_36:
	movq	80(%r10), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r14d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r12d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r10)
	movl	144(%r10), %edx
	movl	148(%r10), %ebp
	movq	8(%r15), %rax
	movl	%r14d, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edx, 4(%rax,%rcx,4)
	movl	%esi, 8(%rax,%rcx,4)
	movl	%ebp, 12(%rax,%rcx,4)
	movl	%r12d, 16(%rax,%rcx,4)
	movl	64(%r13), %ebx
	movss	%xmm0, 48(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%r13d, %r13d
	cmpq	%rax, 64(%r9)
	jbe	.LBB7_41
	movq	56(%r9), %rcx
	testq	%rcx, %rcx
	je	.LBB7_41
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_39
	notq	%rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	addq	24(%r9), %r13
	jmp	.LBB7_41
.LBB7_39:
	xorl	%r13d, %r13d
.LBB7_41:
	movq	%r9, %r14
	movl	%edx, 8(%rsp)
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_42
	leaq	48(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_44
.LBB7_42:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r13), %rdi
	leaq	48(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_44:
	movq	80(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
	movss	68(%rsp), %xmm0
	movss	%xmm0, 48(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	xorl	%r13d, %r13d
	cmpq	%rax, 64(%r14)
	jbe	.LBB7_49
	movq	56(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB7_49
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_47
	notq	%rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	addq	24(%r14), %r13
.LBB7_49:
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_50
.LBB7_51:
	leaq	48(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_52
.LBB7_47:
	xorl	%r13d, %r13d
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_51
.LBB7_50:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r13), %rdi
	leaq	48(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_52:
	movq	80(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
	movq	32(%rsp), %r14
	movq	88(%rsp), %rax
	movq	24(%rsp), %rcx
	jmp	.LBB7_86
.LBB7_30:
.LBB7_54:
	movl	%esi, 4(%rcx,%rdx,4)
	movl	%eax, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r9d, 16(%rcx,%rdx,4)
	movq	%r12, %r9
.LBB7_55:
	movss	%xmm0, 8(%rsp)
	leaq	48(%rsp), %rdi
	movq	%r9, %rsi
	movl	%ebp, %edx
	movq	32(%rsp), %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	56(%rsp), %r12d
	movq	24(%rsp), %rsi
	movq	88(%rsi), %r10
	cmpq	72(%rsi), %r10
	movl	%ebp, 84(%rsp)
	jne	.LBB7_56
	leaq	72(%rsi), %rdi
	movq	%r10, %rsi
	movq	%r10, %rbp
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	24(%rsp), %rsi
	movq	%rbp, %r10
	movq	88(%rsi), %rax
	jmp	.LBB7_58
.LBB7_56:
	movq	%r10, %rax
.LBB7_58:
	movss	8(%rsp), %xmm0
	movq	72(%rsp), %rdi
	movq	80(%rsi), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%edi, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r12d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rsi)
	movl	144(%rsi), %r11d
	movq	%rdi, %rcx
	movl	148(%rsi), %ebp
	movq	8(%r15), %rax
	movl	%ecx, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%r11d, 4(%rax,%rcx,4)
	movl	%r10d, 8(%rax,%rcx,4)
	movl	%ebp, 12(%rax,%rcx,4)
	movl	%r12d, 16(%rax,%rcx,4)
	movl	52(%rsp), %edi
	testl	%edi, %edi
	je	.LBB7_69
	movl	48(%rsp), %r9d
	movq	8(%r15), %rcx
	leaq	(%r9,%r9,4), %rdx
	cmpq	%r9, 16(%r15)
	jbe	.LBB7_64
	cmpl	%edi, (%rcx,%rdx,4)
	jne	.LBB7_64
	movl	4(%rcx,%rdx,4), %eax
	cmpl	$-1, %eax
	je	.LBB7_62
	leaq	(%rcx,%rdx,4), %rdi
	addq	$4, %rdi
	movl	4(%rdi), %esi
	movl	8(%rdi), %r8d
	jmp	.LBB7_64
.LBB7_62:
.LBB7_64:
	movl	%eax, 4(%rcx,%rdx,4)
	movl	%esi, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	84(%rsp), %edi
	movl	%edi, 16(%rcx,%rdx,4)
	movl	%esi, %edi
	cmpl	%eax, 144(%r14)
	jne	.LBB7_65
	movq	88(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_98
	addq	$80, %r14
	jmp	.LBB7_68
.LBB7_65:
	movq	24(%rsp), %rcx
	cmpl	%eax, 144(%rcx)
	jne	.LBB7_66
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_98
	leaq	80(%rcx), %r14
	jmp	.LBB7_68
.LBB7_66:
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	96(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_98
	leaq	(%rcx,%rax), %r14
	addq	$72, %r14
	addq	$8, %r14
.LBB7_68:
	movq	(%r14), %rax
	shlq	$4, %rdi
	movl	84(%rsp), %ecx
	movl	%ecx, 8(%rax,%rdi)
.LBB7_69:
	movl	64(%r13), %ebx
	movss	%xmm0, 12(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	movq	32(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB7_74
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_74
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_72
	notq	%rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	24(%rdx), %r14
	jmp	.LBB7_74
.LBB7_72:
	xorl	%r14d, %r14d
.LBB7_74:
	movl	%r11d, 8(%rsp)
	movq	%r10, %r13
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_75
	leaq	12(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_77
.LBB7_75:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r14), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_77:
	movq	80(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
	movss	68(%rsp), %xmm0
	movss	%xmm0, 12(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	movq	32(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB7_82
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_82
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_80
	notq	%rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	24(%rdx), %r14
.LBB7_82:
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_83
.LBB7_84:
	leaq	12(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_85
.LBB7_80:
	xorl	%r14d, %r14d
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_84
.LBB7_83:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r14), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_85:
	movq	80(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
	movq	24(%rsp), %r14
	movq	88(%rsp), %rax
	movq	%r13, %rcx
.LBB7_86:
	movl	8(%rsp), %edx
.LBB7_87:
	movl	%edx, (%rax)
	movl	%ecx, 4(%rax)
	movl	%ebp, 8(%rax)
	movl	%r12d, 12(%rax)
	movl	152(%r14), %eax
	testb	$1, %al
	je	.LBB7_100
	movq	16(%rsp), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	movq	8(%rcx), %r12
	movq	16(%rcx), %r13
	cmpq	%r13, %rax
	cmovbq	%rax, %r13
	xorl	%ebp, %ebp
.LBB7_89:
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB7_90:
	cmpq	%r13, %rax
	jae	.LBB7_99
	leaq	1(%rax), %rbp
	cmpb	$0, (%r12,%rax)
	movq	%rbp, %rax
	jne	.LBB7_90
	movq	-8(%rbx,%rbp,8), %rdx
	movq	72(%r15), %rax
	imulq	$112, %rdx, %rcx
	movq	88(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_89
	movq	%r15, %rdi
	movq	72(%rsp), %rsi
	callq	*%rax
	jmp	.LBB7_89
.LBB7_99:
	movl	152(%r14), %eax
.LBB7_100:
	testb	$2, %al
	movq	72(%rsp), %r13
	je	.LBB7_106
	movq	16(%rsp), %rax
	movq	16(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_106
	movq	16(%rsp), %rax
	movq	8(%rax), %r14
	shlq	$3, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB7_103
	.p2align	4, 0x90
.LBB7_105:
	addq	$8, %r12
	cmpq	%r12, %rbx
	je	.LBB7_106
.LBB7_103:
	movq	(%r14,%r12), %rdx
	movq	72(%r15), %rax
	imulq	$112, %rdx, %rcx
	movq	96(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_105
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*%rax
	jmp	.LBB7_105
.LBB7_106:
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
.LBB7_98:
	.cfi_def_cfa_offset 160
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end7:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end7-bevy_ecs::bundle::BundleInserter::insert
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 256
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
	xorps	%xmm0, %xmm0
	movups	%xmm0, 88(%rsp)
	movq	$0, 104(%rsp)
	cmpb	$0, 72(%rsp)
	je	.LBB8_2
.Ltmp0:
	movq	%rsp, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp1:
.LBB8_2:
	movaps	(%rsp), %xmm0
	movaps	16(%rsp), %xmm1
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm1, 192(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	40(%rsp), %r15
	movq	48(%rsp), %r12
	movq	104(%rsp), %rax
	movq	%rax, 160(%rsp)
	movups	88(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 136(%rsp)
	movups	56(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	%rbx, %rax
	cmpq	(%r14), %rbx
	jne	.LBB8_5
.Ltmp3:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp4:
	movq	16(%r14), %rax
.LBB8_5:
	movq	8(%r14), %rcx
	imulq	$112, %rax, %rdx
	movq	208(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	176(%rsp), %xmm0
	movaps	192(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	%r15, 40(%rcx,%rdx)
	movq	%r12, 48(%rcx,%rdx)
	movaps	112(%rsp), %xmm0
	movaps	128(%rsp), %xmm1
	movaps	144(%rsp), %xmm2
	movups	%xmm0, 56(%rcx,%rdx)
	movups	%xmm1, 72(%rcx,%rdx)
	movups	%xmm2, 88(%rcx,%rdx)
	movq	160(%rsp), %rsi
	movq	%rsi, 104(%rcx,%rdx)
	incq	%rax
	movq	%rax, 16(%r14)
	movq	%rbx, %rax
	addq	$216, %rsp
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
.LBB8_6:
	.cfi_def_cfa_offset 256
.Ltmp5:
	movq	%rax, %rbx
	leaq	(,%r15,2), %rax
	testq	%rax, %rax
	je	.LBB8_11
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	jmp	.LBB8_10
.LBB8_8:
.Ltmp2:
	movq	%rax, %rbx
	movq	40(%rsp), %rsi
	leaq	(,%rsi,2), %rax
	testq	%rax, %rax
	je	.LBB8_11
	movq	48(%rsp), %rdi
	movl	$1, %edx
.LBB8_10:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB8_11:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	bevy_ecs::component::Components::init_component_inner, .Lfunc_end8-bevy_ecs::component::Components::init_component_inner
	.cfi_endproc
	.section	.gcc_except_table.bevy_ecs::component::Components::init_component_inner,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
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
	.uleb128 .Lfunc_end8-.Ltmp4
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
	jne	.LBB9_3
	movl	$16, %r8d
	.p2align	4, 0x90
.LBB9_2:
	addq	%r8, %rsi
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %r8
	testl	%edx, %edx
	je	.LBB9_2
.LBB9_3:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	cmpb	$0, (%rcx,%rdx)
	js	.LBB9_5
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
.LBB9_5:
	movq	24(%rdi), %r13
	movq	16(%rdi), %r12
	cmpq	$0, 16(%r14)
	jne	.LBB9_12
	testb	$1, (%rcx,%rdx)
	jne	.LBB9_7
.LBB9_12:
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
.LBB9_7:
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
	jne	.LBB9_10
	movl	$16, %edi
	.p2align	4, 0x90
.LBB9_9:
	addq	%rdi, %rsi
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rdi
	testl	%edx, %edx
	je	.LBB9_9
.LBB9_10:
	rep		bsfl	%edx, %edx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	cmpb	$0, (%rcx,%rdx)
	js	.LBB9_12
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	jmp	.LBB9_12
.Lfunc_end9:
	.size	hashbrown::map::VacantEntry<K,V,S,A>::insert, .Lfunc_end9-hashbrown::map::VacantEntry<K,V,S,A>::insert
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
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end10:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end10-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI11_0:
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
	je	.LBB11_12
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
	jbe	.LBB11_29
	incq	%rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	cmpq	$8, %rcx
	movq	%r15, (%rsp)
	jae	.LBB11_3
	xorl	%eax, %eax
	cmpq	$4, %rcx
	setae	%al
	leaq	4(,%rax,4), %r13
	jmp	.LBB11_7
.LBB11_29:
	movq	(%rbx), %r12
	movq	%r8, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r8b
	setne	%al
	addq	%rcx, %rax
	je	.LBB11_32
	movdqa	.LCPI11_0(%rip), %xmm0
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB11_31:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB11_31
.LBB11_32:
	cmpq	$16, %r8
	jae	.LBB11_33
	leaq	16(%r12), %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %r14
	jne	.LBB11_34
	xorl	%eax, %eax
	jmp	.LBB11_50
.LBB11_3:
	movq	%rcx, %rax
	shrq	$61, %rax
	jne	.LBB11_12
	shlq	$3, %rcx
	movl	$1, %r13d
	cmpq	$14, %rcx
	jb	.LBB11_7
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
.LBB11_7:
	movl	$24, %ecx
	movq	%r13, %rax
	mulq	%rcx
	jo	.LBB11_12
	movq	%rax, %r15
	addq	$15, %r15
	andq	$-16, %r15
	leaq	16(%r13), %rdx
	movq	%r15, %rbp
	addq	%rdx, %rbp
	jb	.LBB11_12
	movabsq	$9223372036854775792, %rax
	cmpq	%rax, %rbp
	ja	.LBB11_12
	movq	%r8, 56(%rsp)
	testq	%rbp, %rbp
	je	.LBB11_11
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rbp, %rdi
	movq	%rdx, %r12
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r12, %rdx
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB11_15
	movl	$16, %edi
	movq	%rbp, %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
.LBB11_33:
	movdqu	(%r12), %xmm0
	movdqu	%xmm0, (%r12,%r8)
.LBB11_34:
	xorl	%eax, %eax
	jmp	.LBB11_35
	.p2align	4, 0x90
.LBB11_52:
	shrq	$57, %rdi
	leaq	-16(%rax), %rcx
	andq	%rcx, %r8
	movb	%dil, (%r12,%rax)
	movq	(%rbx), %r12
	movb	%dil, 16(%r8,%r12)
.LBB11_48:
	leaq	1(%rax), %rcx
	cmpq	%r14, %rax
	movq	%rcx, %rax
	je	.LBB11_49
.LBB11_35:
	cmpb	$-128, (%r12,%rax)
	jne	.LBB11_48
	leaq	(,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	addq	$-24, %rcx
	movq	%rax, %rdx
	negq	%rdx
	movq	(%rbx), %rsi
	.p2align	4, 0x90
.LBB11_37:
	leaq	(%rdx,%rdx,2), %rdi
	movq	-24(%rsi,%rdi,8), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rsi
	andq	%rdi, %rsi
	movdqu	(%r12,%rsi), %xmm0
	pmovmskb	%xmm0, %r9d
	movq	%rsi, %r10
	testl	%r9d, %r9d
	jne	.LBB11_40
	movl	$16, %r11d
	movq	%rsi, %r10
	.p2align	4, 0x90
.LBB11_39:
	addq	%r11, %r10
	andq	%r8, %r10
	movdqu	(%r12,%r10), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r11
	testl	%r9d, %r9d
	je	.LBB11_39
.LBB11_40:
	rep		bsfl	%r9d, %r9d
	addq	%r10, %r9
	andq	%r8, %r9
	cmpb	$0, (%r12,%r9)
	js	.LBB11_42
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r9d
	rep		bsfl	%r9d, %r9d
.LBB11_42:
	movq	%rax, %r10
	subq	%rsi, %r10
	movq	%r9, %r11
	subq	%rsi, %r11
	xorq	%r10, %r11
	andq	%r8, %r11
	cmpq	$16, %r11
	jb	.LBB11_52
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
	je	.LBB11_47
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
	jmp	.LBB11_37
	.p2align	4, 0x90
.LBB11_47:
	leaq	-16(%rax), %rdx
	andq	8(%rbx), %rdx
	movb	$-1, (%r12,%rax)
	movb	$-1, 16(%rdx,%r12)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB11_48
.LBB11_49:
	movq	8(%rbx), %rcx
	movq	24(%rbx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
.LBB11_50:
	subq	%r15, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB11_51
.LBB11_11:
	movl	$16, %r12d
.LBB11_15:
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
	je	.LBB11_26
	movdqa	(%rdi), %xmm0
	pmovmskb	%xmm0, %r8d
	notl	%r8d
	leaq	-24(%rdi), %rax
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdi, %rsi
	jmp	.LBB11_17
	.p2align	4, 0x90
.LBB11_25:
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
	je	.LBB11_26
.LBB11_17:
	testw	%r8w, %r8w
	jne	.LBB11_20
	.p2align	4, 0x90
.LBB11_18:
	movdqa	16(%rsi), %xmm0
	addq	$16, %rsi
	pmovmskb	%xmm0, %r8d
	addq	$16, %rcx
	cmpl	$65535, %r8d
	je	.LBB11_18
	notl	%r8d
.LBB11_20:
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
	jne	.LBB11_23
	movl	$16, %r13d
	.p2align	4, 0x90
.LBB11_22:
	addq	%r13, %r11
	andq	%rbp, %r11
	movdqu	(%r12,%r11), %xmm0
	pmovmskb	%xmm0, %r15d
	addq	$16, %r13
	testl	%r15d, %r15d
	je	.LBB11_22
.LBB11_23:
	rep		bsfl	%r15d, %r15d
	addq	%r11, %r15
	andq	%rbp, %r15
	cmpb	$0, (%r12,%r15)
	js	.LBB11_25
	movdqa	(%r12), %xmm0
	pmovmskb	%xmm0, %r11d
	rep		bsfl	%r11d, %r15d
	jmp	.LBB11_25
.LBB11_26:
	movq	64(%rsp), %rax
	subq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	testq	%r14, %r14
	je	.LBB11_51
	movl	$24, %ecx
	movq	56(%rsp), %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB11_51
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_51:
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
.LBB11_12:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end11:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end11-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_0:
	.zero	16,69
.LCPI12_1:
	.byte	241
	.byte	190
	.byte	150
	.byte	2
	.byte	61
	.byte	45
	.byte	88
	.byte	139
	.byte	36
	.byte	133
	.byte	69
	.byte	198
	.byte	238
	.byte	90
	.byte	2
	.byte	46
.LCPI12_2:
	.zero	16,56
.LCPI12_3:
	.zero	16,28
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
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	(%rsi), %rax
	movq	%rax, 152(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 160(%rsp)
	movq	16(%rsi), %r12
.Ltmp6:
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
.Ltmp7:
	movq	%r12, %rax
	shlq	$4, %rax
	addq	160(%rsp), %rax
	movq	%rax, 296(%rsp)
	movabsq	$-8405918964427342095, %rdx
	movl	848(%rbp), %eax
	movl	%eax, 44(%rsp)
	leaq	488(%rbp), %rbx
	leaq	64(%rbp), %rax
	movq	%rax, 48(%rsp)
	leaq	216(%rbp), %rax
	movq	%rax, 184(%rsp)
	leaq	512(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	512(%rbp), %r13
	movq	520(%rbp), %r14
	leaq	-24(%r13), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI12_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI12_1(%rip), %xmm2
	movq	%rbp, 8(%rsp)
.LBB12_2:
	andq	%r14, %rdx
	movdqu	(%r13,%rdx), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %esi
	.p2align	4, 0x90
.LBB12_3:
	testw	%si, %si
	je	.LBB12_5
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
	jne	.LBB12_3
	jmp	.LBB12_7
	.p2align	4, 0x90
.LBB12_5:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %esi
	testl	%esi, %esi
	jne	.LBB12_56
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB12_2
.LBB12_7:
	movq	-8(%r13,%rdi,8), %r15
.LBB12_8:
	shlq	$5, %r15
	movq	496(%rbp), %r14
	movq	%r15, 176(%rsp)
	addq	%r15, %r14
	leaq	152(%rbp), %rsi
.Ltmp30:
	movq	%r14, %rdi
	movq	%rsi, 168(%rsp)
	movq	184(%rsp), %rdx
	movq	48(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
.Ltmp31:
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %rcx
	shlq	$5, %rcx
	addq	160(%rbp), %rcx
	xorl	%esi, %esi
	cmpq	%rax, 168(%rbp)
	cmovbeq	%rsi, %rcx
	movl	148(%rcx), %eax
	leaq	(%rax,%rax,8), %rdx
	shlq	$3, %rdx
	addq	296(%rbp), %rdx
	cmpq	%rax, 304(%rbp)
	movl	$0, %eax
	movq	%rax, 56(%rsp)
	cmovbeq	%rsi, %rdx
	movq	%r14, 200(%rsp)
	movq	%rdx, 208(%rsp)
	movq	%rcx, 216(%rsp)
	movq	%rbp, 224(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, 232(%rsp)
	movq	$3, 192(%rsp)
	movq	$0, 16(%rsp)
	movq	$8, 24(%rsp)
	movq	$0, 32(%rsp)
	testq	%r12, %r12
	je	.LBB12_48
	movl	$8, %ebx
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)
	movq	160(%rsp), %rbp
	jmp	.LBB12_14
.LBB12_11:
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rsi
.LBB12_12:
	movq	%r13, (%rbx,%rsi,8)
	incq	%rsi
	movq	%rsi, 56(%rsp)
	movq	%rsi, 32(%rsp)
.LBB12_13:
	addq	$16, %rbp
	cmpq	296(%rsp), %rbp
	je	.LBB12_48
.LBB12_14:
	movq	(%rbp), %r13
	movq	%r13, %rax
	shrq	$32, %rax
	je	.LBB12_48
	movss	8(%rbp), %xmm0
	movss	%xmm0, 64(%rsp)
	movd	12(%rbp), %xmm0
	movd	%xmm0, 72(%rsp)
	movq	192(%rsp), %r15
	cmpq	$3, %r15
	leaq	248(%rsp), %rax
	leaq	224(%rsp), %rcx
	cmoveq	%rcx, %rax
	movq	(%rax), %rsi
.Ltmp33:
	leaq	308(%rsp), %rdi
	movq	%r13, %rdx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp34:
	movl	308(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB12_20
	cmpl	$1, %eax
	jne	.LBB12_22
	cmpl	$3, %r15d
	jne	.LBB12_25
.Ltmp41:
	leaq	80(%rsp), %rdi
	leaq	200(%rsp), %rsi
	movq	%r13, %rdx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleSpawner::spawn_non_existent
.Ltmp42:
	jmp	.LBB12_13
	.p2align	4, 0x90
.LBB12_20:
	movq	56(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	jne	.LBB12_12
.Ltmp35:
	leaq	16(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp36:
	jmp	.LBB12_11
	.p2align	4, 0x90
.LBB12_22:
	movl	312(%rsp), %r14d
	cmpl	$3, %r15d
	je	.LBB12_28
	cmpl	264(%rsp), %r14d
	jne	.LBB12_28
	movl	%r14d, 80(%rsp)
	leaq	316(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	84(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp47:
	leaq	280(%rsp), %rdi
	leaq	192(%rsp), %rsi
	movq	%r13, %rdx
	leaq	80(%rsp), %rcx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp48:
	jmp	.LBB12_13
.LBB12_25:
	movq	8(%rsp), %rax
	movq	496(%rax), %r14
	addq	176(%rsp), %r14
.Ltmp37:
	movq	%r14, %rdi
	movq	168(%rsp), %rsi
	movq	184(%rsp), %rdx
	movq	48(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
.Ltmp38:
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %rcx
	shlq	$5, %rcx
	movq	8(%rsp), %rsi
	addq	160(%rsi), %rcx
	cmpq	%rax, 168(%rsi)
	movl	$0, %edi
	cmovbeq	%rdi, %rcx
	movl	148(%rcx), %eax
	leaq	(%rax,%rax,8), %rdx
	shlq	$3, %rdx
	addq	296(%rsi), %rdx
	cmpq	%rax, 304(%rsi)
	cmovbeq	%rdi, %rdx
	movq	%rsi, 104(%rsp)
	movq	%r14, 80(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, 112(%rsp)
.Ltmp39:
	leaq	280(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movq	%r13, %rdx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleSpawner::spawn_non_existent
.Ltmp40:
	movq	112(%rsp), %rax
	leaq	200(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx)
	movdqu	%xmm0, (%rcx)
	movq	$3, 192(%rsp)
	jmp	.LBB12_13
.LBB12_28:
	movq	8(%rsp), %rax
	movq	496(%rax), %r12
	movq	176(%rsp), %rax
	movq	24(%r12,%rax), %r15
	addq	%rax, %r12
.Ltmp43:
	movq	%r12, %rdi
	movq	168(%rsp), %rsi
	movq	184(%rsp), %rdx
	movq	48(%rsp), %rcx
	movl	%r14d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
.Ltmp44:
	movq	8(%rsp), %rdi
	movq	160(%rdi), %rdx
	leaq	(%r14,%r14,4), %rsi
	shlq	$5, %rsi
	leaq	(%rdx,%rsi), %rcx
	cmpl	%r14d, %eax
	jne	.LBB12_34
	cmpq	%r14, 168(%rdi)
	movl	$0, %eax
	cmovbeq	%rax, %rcx
	cmpq	16(%rcx), %r15
	jae	.LBB12_40
	movq	8(%rcx), %rdx
	movl	$0, %eax
	testq	%rdx, %rdx
	je	.LBB12_41
	shlq	$5, %r15
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, (%rdx,%r15)
	je	.LBB12_40
	addq	%r15, %rdx
	movq	%rdx, %rax
	jmp	.LBB12_41
.LBB12_34:
	cmpq	16(%rcx), %r15
	jae	.LBB12_42
	movq	8(%rcx), %r8
	movl	$0, %edi
	testq	%r8, %r8
	je	.LBB12_43
	shlq	$5, %r15
	movabsq	$-9223372036854775808, %rdi
	cmpq	%rdi, (%r8,%r15)
	je	.LBB12_42
	addq	%r15, %r8
	movq	%r8, %rdi
	jmp	.LBB12_43
.LBB12_40:
	xorl	%eax, %eax
.LBB12_41:
	movl	148(%rcx), %edx
	leaq	(%rdx,%rdx,8), %rsi
	shlq	$3, %rsi
	movq	8(%rsp), %rdi
	addq	296(%rdi), %rsi
	cmpq	%rdx, 304(%rdi)
	movl	$0, %edx
	cmovbeq	%rdx, %rsi
	movq	%rdi, 136(%rsp)
	movq	%r12, 104(%rsp)
	movq	%rax, 112(%rsp)
	movq	%rsi, 120(%rsp)
	movq	%rcx, 128(%rsp)
	movq	$0, 80(%rsp)
	jmp	.LBB12_46
.LBB12_42:
	xorl	%edi, %edi
.LBB12_43:
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %r8
	shlq	$5, %r8
	leaq	(%rdx,%r8), %rax
	movl	148(%rdx,%rsi), %esi
	movl	148(%rdx,%r8), %r8d
	movq	8(%rsp), %r10
	movq	296(%r10), %r9
	leaq	(%rsi,%rsi,8), %rdx
	leaq	(%r9,%rdx,8), %rdx
	cmpl	%r8d, %esi
	jne	.LBB12_45
	cmpq	%rsi, 304(%r10)
	movl	$0, %esi
	cmovbeq	%rsi, %rdx
	movq	%r10, 136(%rsp)
	movq	%r12, 104(%rsp)
	movq	%rdi, 112(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%rcx, 128(%rsp)
	movq	$1, 80(%rsp)
	movq	%rax, 88(%rsp)
	jmp	.LBB12_46
.LBB12_45:
	leaq	(%r8,%r8,8), %rsi
	leaq	(%r9,%rsi,8), %rsi
	movq	%r10, 136(%rsp)
	movq	%r12, 104(%rsp)
	movq	%rdi, 112(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%rcx, 128(%rsp)
	movq	$2, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rsi, 96(%rsp)
.LBB12_46:
	movl	44(%rsp), %eax
	movl	%eax, 144(%rsp)
	movl	%r14d, 280(%rsp)
	leaq	316(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	284(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp45:
	leaq	328(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movq	%r13, %rdx
	leaq	280(%rsp), %rcx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp46:
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	112(%rsp), %xmm2
	movdqu	128(%rsp), %xmm3
	movdqa	%xmm0, 192(%rsp)
	movdqa	%xmm1, 208(%rsp)
	movdqa	%xmm2, 224(%rsp)
	movdqa	%xmm3, 240(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 256(%rsp)
	movl	%r14d, 264(%rsp)
	jmp	.LBB12_13
.LBB12_48:
	movq	152(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_50
	shlq	$4, %rsi
	movl	$8, %edx
	movq	160(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_50:
	movq	16(%rsp), %rsi
	cmpq	$0, 56(%rsp)
	je	.LBB12_53
	leaq	(,%rsi,2), %rax
	testq	%rax, %rax
	je	.LBB12_55
	movq	24(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	addq	$344, %rsp
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
.LBB12_53:
	.cfi_def_cfa_offset 400
	testq	%rsi, %rsi
	je	.LBB12_55
	movq	24(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_55:
	addq	$344, %rsp
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
.LBB12_56:
	.cfi_def_cfa_offset 400
	movabsq	$-1755555405914624043, %rax
	movabsq	$8197716227768605395, %rcx
	movq	$0, 16(%rsp)
	leaq	24(%rsp), %rdx
	movq	%rdx, 168(%rsp)
	movq	$8, 24(%rsp)
	movq	$0, 32(%rsp)
	leaq	88(%rbp), %rdx
	movq	%rdx, 176(%rsp)
	movq	88(%rbp), %rdx
	movq	96(%rbp), %rsi
	leaq	-24(%rdx), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI12_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB12_57:
	andq	%rsi, %r9
	movdqu	(%rdx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	.p2align	4, 0x90
.LBB12_58:
	testw	%r10w, %r10w
	je	.LBB12_60
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
	jne	.LBB12_58
	jmp	.LBB12_62
.LBB12_60:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	movq	8(%rsp), %rbp
	jne	.LBB12_93
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB12_57
.LBB12_62:
	leaq	(%rdx,%r11,8), %rax
	addq	$-8, %rax
	movq	8(%rsp), %rbp
.LBB12_63:
	movq	(%rax), %r15
.Ltmp12:
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movabsq	$6469229426192139641, %rax
	movabsq	$4042170784981559102, %rcx
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rdx
	movq	%rsi, 56(%rsp)
	movq	%r15, (%rsi,%rdx,8)
	incq	%rdx
	movq	%rdx, 64(%rsp)
	movq	%rdx, 32(%rsp)
	movq	88(%rbp), %rdx
	movq	96(%rbp), %rsi
	leaq	-24(%rdx), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI12_3(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB12_65:
	andq	%rsi, %r9
	movdqu	(%rdx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	.p2align	4, 0x90
.LBB12_66:
	testw	%r10w, %r10w
	je	.LBB12_68
	leal	-1(%r10), %r15d
	andl	%r10d, %r15d
	rep		bsfl	%r10d, %r10d
	addq	%r9, %r10
	andq	%rsi, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r11
	movq	8(%rdi,%r11,8), %r10
	xorq	%rax, %r10
	movq	(%rdi,%r11,8), %rbp
	xorq	%rcx, %rbp
	orq	%r10, %rbp
	movq	8(%rsp), %rbp
	movl	%r15d, %r10d
	jne	.LBB12_66
	jmp	.LBB12_70
.LBB12_68:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB12_96
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB12_65
.LBB12_70:
	leaq	(%rdx,%r11,8), %rax
	addq	$-8, %rax
.LBB12_71:
	movq	(%rax), %r15
	movq	64(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	jne	.LBB12_74
.Ltmp20:
	leaq	16(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp21:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rsi
	jmp	.LBB12_75
.LBB12_74:
	movq	56(%rsp), %rax
.LBB12_75:
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 32(%rsp)
	movq	504(%rbp), %r9
	movq	%rsi, 96(%rsp)
	movdqu	16(%rsp), %xmm0
	movdqa	%xmm0, 80(%rsp)
.Ltmp23:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rsi
	leaq	192(%rsp), %rdi
	leaq	80(%rsp), %r8
	movl	$64, %edx
	movq	48(%rsp), %rcx
	movq	%r9, %r15
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp24:
	movq	%r15, %rcx
	movq	%r15, %rax
	cmpq	(%rbx), %r15
	jne	.LBB12_79
.Ltmp25:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp26:
	movq	504(%rbp), %rax
	movq	512(%rbp), %r13
	movq	520(%rbp), %r14
.LBB12_79:
	movq	496(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	192(%rsp), %xmm0
	movdqu	208(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%rbp)
	movq	%r14, %rcx
	movabsq	$-8405918964427342095, %rax
	andq	%rax, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB12_82
	movl	$16, %edx
	.p2align	4, 0x90
.LBB12_81:
	addq	%rdx, %rcx
	andq	%r14, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB12_81
.LBB12_82:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r14, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB12_84
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB12_84:
	cmpq	$0, 528(%rbp)
	jne	.LBB12_92
	testb	$1, (%r13,%rax)
	je	.LBB12_92
.Ltmp28:
	movq	72(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp29:
	movq	512(%rbp), %r13
	movq	520(%rbp), %r14
	movq	%r14, %rcx
	movabsq	$-8405918964427342095, %rax
	andq	%rax, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB12_90
	movl	$16, %edx
.LBB12_89:
	addq	%rdx, %rcx
	andq	%r14, %rcx
	movdqu	(%r13,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB12_89
.LBB12_90:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r14, %rax
	cmpb	$0, (%r13,%rax)
	js	.LBB12_92
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB12_92:
	movzbl	(%r13,%rax), %ecx
	andl	$1, %ecx
	subq	%rcx, 528(%rbp)
	leaq	-16(%rax), %rcx
	andq	%r14, %rcx
	movb	$69, (%r13,%rax)
	movb	$69, 16(%rcx,%r13)
	incq	536(%rbp)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-8405918964427342095, %rcx
	movq	%rcx, -24(%r13,%rax,8)
	movabsq	$3315312257273267492, %rcx
	movq	%rcx, -16(%r13,%rax,8)
	movq	%r15, -8(%r13,%rax,8)
	jmp	.LBB12_8
.LBB12_93:
	movq	176(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movq	$2, 80(%rsp)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 232(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %rdx
	movq	%rdx, 240(%rsp)
	movq	$30, 248(%rsp)
	movw	$256, 264(%rsp)
	movq	$1, 192(%rsp)
	movq	%rax, 208(%rsp)
	movq	%rcx, 200(%rsp)
	movq	$4, 216(%rsp)
	movq	$4, 224(%rsp)
	movq	$0, 256(%rsp)
.Ltmp8:
	leaq	192(%rsp), %rdx
	movq	48(%rsp), %rdi
	movq	184(%rsp), %rsi
	callq	bevy_ecs::component::Components::init_component_inner
.Ltmp9:
	movq	80(%rbp), %rsi
	cmpq	%rsi, %rax
	jae	.LBB12_99
.Ltmp10:
	leaq	88(%rsp), %rdi
	movq	%rax, %rsi
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp11:
	jmp	.LBB12_63
.LBB12_96:
	movq	176(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movq	$2, 80(%rsp)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 232(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6(%rip), %rdx
	movq	%rdx, 240(%rsp)
	movq	$30, 248(%rsp)
	movw	$256, 264(%rsp)
	movq	$1, 192(%rsp)
	movq	%rax, 208(%rsp)
	movq	%rcx, 200(%rsp)
	movq	$4, 216(%rsp)
	movq	$4, 224(%rsp)
	movq	$0, 256(%rsp)
.Ltmp14:
	leaq	192(%rsp), %rdx
	movq	48(%rsp), %rdi
	movq	184(%rsp), %rsi
	callq	bevy_ecs::component::Components::init_component_inner
.Ltmp15:
	movq	80(%rbp), %rsi
	cmpq	%rsi, %rax
	jae	.LBB12_99
.Ltmp18:
	leaq	88(%rsp), %rdi
	movq	%rax, %rsi
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp19:
	jmp	.LBB12_71
.LBB12_99:
.Ltmp16:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp17:
	ud2
.LBB12_101:
.Ltmp27:
	movq	%rax, %rbx
	movq	192(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_106
	leaq	200(%rsp), %rax
	movq	%rax, 168(%rsp)
	jmp	.LBB12_104
.LBB12_103:
.Ltmp22:
	movq	%rax, %rbx
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_106
.LBB12_104:
	movq	168(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB12_106
.LBB12_105:
.Ltmp32:
	movq	%rax, %rbx
.LBB12_106:
	cmpq	$0, 152(%rsp)
	je	.LBB12_113
	movq	152(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	160(%rsp), %rdi
	jmp	.LBB12_112
.LBB12_108:
.Ltmp49:
	movq	%rax, %rbx
	cmpq	$0, 152(%rsp)
	je	.LBB12_110
	movq	152(%rsp), %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	movq	160(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_110:
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_113
	movq	24(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
.LBB12_112:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_113:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end12:
	.size	world_insert_or_spawn_batch, .Lfunc_end12-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp31-.Ltmp6
	.uleb128 .Ltmp32-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin1
	.uleb128 .Ltmp46-.Ltmp33
	.uleb128 .Ltmp49-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp21-.Ltmp12
	.uleb128 .Ltmp22-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp32-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin1
	.uleb128 .Ltmp26-.Ltmp25
	.uleb128 .Ltmp27-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin1
	.uleb128 .Ltmp29-.Ltmp28
	.uleb128 .Ltmp32-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp8
	.uleb128 .Ltmp22-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin1
	.uleb128 .Lfunc_end12-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6304b0f/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1
	.asciz	"_\000\000\000\000\000\000\000\341\001\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6304b0f/crates/bevy_ecs/src/component.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"_\000\000\000\000\000\000\000*\002\000\0008\000\000"
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

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.8,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.8:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8, 28

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.9:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9, 16

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.10,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.10:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10, 96

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.11:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11, 24

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

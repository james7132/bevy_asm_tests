	.text
	.file	"world_insert_or_spawn_batch.1b70789798351c76-cgu.0"
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
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	8(%rbx), %rcx
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
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r11
	movq	(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rcx, 16(%rsp)
	movq	32(%rsi), %rcx
	movq	%rcx, 32(%rsp)
	movq	40(%rsi), %r10
	movq	48(%rsi), %r14
	testq	%rax, %rax
	movq	%rdx, 72(%rsp)
	movq	%rdi, 80(%rsp)
	movss	%xmm1, 60(%rsp)
	je	.LBB7_4
	movq	%rdx, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB7_28
	movl	4(%r15), %edi
	movq	88(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_3
	movq	8(%r13), %rbp
	movq	56(%r13), %r15
	decq	%rsi
	movq	80(%r14), %rax
	movq	%rdi, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r12d
	movups	(%rax,%rdx), %xmm2
	movups	%xmm2, (%rax,%rcx)
	movq	%rsi, 88(%r14)
	cmpq	%rdi, %rsi
	je	.LBB7_38
	jbe	.LBB7_112
	addq	%rcx, %rax
	movl	4(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB7_38
	movq	%r10, %r14
	movl	(%rax), %r10d
	movq	8(%r15), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r15)
	jbe	.LBB7_37
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB7_37
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB7_27
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB7_37
.LBB7_4:
	movl	12(%r15), %r12d
	movl	64(%r13), %eax
	movl	%eax, 8(%rsp)
	movss	%xmm0, 40(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%ebp, %ebp
	cmpq	%rax, 64(%r10)
	jbe	.LBB7_9
	movq	56(%r10), %rcx
	testq	%rcx, %rcx
	je	.LBB7_9
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_7
	notq	%rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	addq	24(%r10), %rbp
	jmp	.LBB7_9
.LBB7_28:
	movl	4(%r15), %edi
	movq	88(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_3
	movq	8(%r13), %rbp
	movq	16(%r13), %rcx
	movq	56(%r13), %r15
	movq	160(%r15), %rax
	movq	%rax, 96(%rsp)
	decq	%rsi
	movq	80(%r14), %rax
	movq	%rdi, %r8
	shlq	$4, %r8
	movq	%rsi, %r9
	shlq	$4, %r9
	movl	8(%rax,%r8), %edx
	movups	(%rax,%r9), %xmm2
	movups	%xmm2, (%rax,%r8)
	movq	%rsi, 88(%r14)
	cmpq	%rdi, %rsi
	movq	%rcx, 24(%rsp)
	je	.LBB7_60
	jbe	.LBB7_112
	addq	%r8, %rax
	movl	4(%rax), %r8d
	testl	%r8d, %r8d
	je	.LBB7_60
	movq	%r10, %r12
	movl	(%rax), %r10d
	movq	8(%r15), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	%r10, 16(%r15)
	jbe	.LBB7_59
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB7_59
	movl	4(%rax,%rcx,4), %esi
	cmpl	$-1, %esi
	je	.LBB7_35
	leaq	(%rax,%rcx,4), %r8
	addq	$4, %r8
	movl	8(%r8), %r10d
	movl	12(%r8), %r9d
	jmp	.LBB7_59
.LBB7_7:
	xorl	%ebp, %ebp
.LBB7_9:
	movq	%r10, %rbx
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_10
	leaq	40(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB7_12
.LBB7_10:
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_12:
	movq	80(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	movss	60(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	xorl	%ebp, %ebp
	cmpq	%rax, 64(%rbx)
	jbe	.LBB7_17
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_17
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_15
	notq	%rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	addq	24(%rbx), %rbp
.LBB7_17:
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_18
.LBB7_19:
	leaq	40(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB7_20
.LBB7_15:
	xorl	%ebp, %ebp
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_19
.LBB7_18:
	movq	8(%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%rbp), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB7_20:
	movq	80(%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	movl	(%r15), %ebp
	movl	4(%r15), %ecx
	movl	8(%r15), %edx
	movq	56(%r13), %r15
	movq	80(%rsp), %rax
	jmp	.LBB7_92
.LBB7_27:
.LBB7_37:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
	movq	%r14, %r10
.LBB7_38:
	movq	88(%rbp), %rsi
	cmpq	72(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	jne	.LBB7_39
	leaq	72(%rbp), %rdi
	movq	%r10, %r14
	movss	%xmm0, 8(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movss	8(%rsp), %xmm0
	movq	%r14, %r10
	movq	24(%rsp), %rsi
	movq	88(%rbp), %rax
	jmp	.LBB7_41
.LBB7_39:
	movq	%rsi, %rax
.LBB7_41:
	movq	80(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	72(%rsp), %rdi
	movl	%edi, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r12d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbp)
	movl	144(%rbp), %edx
	movl	148(%rbp), %r8d
	movq	8(%r15), %rax
	movl	%edi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edx, 64(%rsp)
	movl	%edx, 4(%rax,%rcx,4)
	movl	%esi, 8(%rax,%rcx,4)
	movl	%r8d, 12(%rax,%rcx,4)
	movl	%r12d, 16(%rax,%rcx,4)
	movl	64(%r13), %ebx
	movss	%xmm0, 40(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%r13d, %r13d
	cmpq	%rax, 64(%r10)
	jbe	.LBB7_46
	movq	56(%r10), %rcx
	testq	%rcx, %rcx
	je	.LBB7_46
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_44
	notq	%rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	addq	24(%r10), %r13
	jmp	.LBB7_46
.LBB7_44:
	xorl	%r13d, %r13d
.LBB7_46:
	movq	%r10, %r14
	movl	%r8d, 8(%rsp)
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_47
	leaq	40(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_49
.LBB7_47:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r13), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_49:
	movq	80(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
	movss	60(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	xorl	%r13d, %r13d
	cmpq	%rax, 64(%r14)
	jbe	.LBB7_54
	movq	56(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB7_54
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_52
	notq	%rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	addq	24(%r14), %r13
.LBB7_54:
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_55
.LBB7_56:
	leaq	40(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_57
.LBB7_52:
	xorl	%r13d, %r13d
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_56
.LBB7_55:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r13), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_57:
	movq	80(%r13), %rax
	movl	%ebx, (%rax,%r12,4)
	movq	%rbp, %r14
	movq	80(%rsp), %rax
	movq	24(%rsp), %rcx
	movl	64(%rsp), %ebp
	jmp	.LBB7_91
.LBB7_35:
.LBB7_59:
	movl	%esi, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%r10d, 12(%rax,%rcx,4)
	movl	%r9d, 16(%rax,%rcx,4)
	movq	%r12, %r10
	movq	24(%rsp), %rcx
.LBB7_60:
	movss	%xmm0, 8(%rsp)
	leaq	40(%rsp), %rdi
	movq	%r10, %rsi
	movl	%edx, 92(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movl	48(%rsp), %r12d
	movq	88(%rbp), %r10
	cmpq	72(%rbp), %r10
	movq	%rbp, 64(%rsp)
	jne	.LBB7_61
	leaq	72(%rbp), %rdi
	movq	%r10, %rsi
	movq	%r10, %rbp
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%rbp, %r10
	movq	64(%rsp), %rbp
	movq	88(%rbp), %rax
	jmp	.LBB7_63
.LBB7_61:
	movq	%r10, %rax
.LBB7_63:
	movss	8(%rsp), %xmm0
	movq	80(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	72(%rsp), %rsi
	movl	%esi, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r12d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbp)
	movq	%rbp, %rax
	movl	144(%rbp), %ebp
	movl	148(%rax), %r11d
	movq	8(%r15), %rax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%r10d, 8(%rax,%rcx,4)
	movl	%r11d, 12(%rax,%rcx,4)
	movl	%r12d, 16(%rax,%rcx,4)
	movl	44(%rsp), %edi
	testl	%edi, %edi
	movq	24(%rsp), %rdx
	je	.LBB7_74
	movl	40(%rsp), %r9d
	movq	8(%r15), %rcx
	leaq	(%r9,%r9,4), %rdx
	cmpq	%r9, 16(%r15)
	movl	92(%rsp), %r9d
	jbe	.LBB7_69
	cmpl	%edi, (%rcx,%rdx,4)
	jne	.LBB7_69
	movl	4(%rcx,%rdx,4), %eax
	cmpl	$-1, %eax
	je	.LBB7_67
	leaq	(%rcx,%rdx,4), %rdi
	addq	$4, %rdi
	movl	4(%rdi), %esi
	movl	8(%rdi), %r8d
	jmp	.LBB7_69
.LBB7_67:
.LBB7_69:
	movl	%eax, 4(%rcx,%rdx,4)
	movl	%esi, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r9d, 16(%rcx,%rdx,4)
	movl	%esi, %edi
	cmpl	%eax, 144(%r14)
	jne	.LBB7_70
	movq	88(%r14), %rsi
	cmpq	%rdi, %rsi
	movq	24(%rsp), %rdx
	jbe	.LBB7_103
	addq	$80, %r14
	jmp	.LBB7_73
.LBB7_70:
	movq	64(%rsp), %rcx
	cmpl	%eax, 144(%rcx)
	movq	24(%rsp), %rdx
	jne	.LBB7_71
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_103
	leaq	80(%rcx), %r14
	jmp	.LBB7_73
.LBB7_71:
	movl	%eax, %eax
	leaq	(%rax,%rax,4), %rax
	shlq	$5, %rax
	movq	96(%rsp), %rcx
	movq	88(%rcx,%rax), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB7_103
	leaq	(%rcx,%rax), %r14
	addq	$72, %r14
	addq	$8, %r14
.LBB7_73:
	movq	(%r14), %rax
	shlq	$4, %rdi
	movl	%r9d, 8(%rax,%rdi)
.LBB7_74:
	movl	64(%r13), %ebx
	movss	%xmm0, 12(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 64(%rdx)
	jbe	.LBB7_79
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_79
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_77
	notq	%rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	24(%rdx), %r14
	jmp	.LBB7_79
.LBB7_77:
	xorl	%r14d, %r14d
.LBB7_79:
	movl	%r11d, 8(%rsp)
	movq	%r10, %r13
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB7_80
	leaq	12(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_82
.LBB7_80:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r14), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_82:
	movq	80(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
	movss	60(%rsp), %xmm0
	movss	%xmm0, 12(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	movq	24(%rsp), %rdx
	cmpq	%rax, 64(%rdx)
	jbe	.LBB7_87
	movq	56(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_87
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB7_85
	notq	%rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	24(%rdx), %r14
.LBB7_87:
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB7_88
.LBB7_89:
	leaq	12(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB7_90
.LBB7_85:
	xorl	%r14d, %r14d
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB7_89
.LBB7_88:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r14), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
.LBB7_90:
	movq	80(%r14), %rax
	movl	%ebx, (%rax,%r12,4)
	movq	64(%rsp), %r14
	movq	80(%rsp), %rax
	movq	%r13, %rcx
.LBB7_91:
	movl	8(%rsp), %edx
.LBB7_92:
	movl	%ebp, (%rax)
	movl	%ecx, 4(%rax)
	movl	%edx, 8(%rax)
	movl	%r12d, 12(%rax)
	movl	152(%r14), %eax
	testb	$1, %al
	je	.LBB7_105
	movq	16(%rsp), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rax
	movq	32(%rsp), %rcx
	movq	8(%rcx), %r12
	movq	16(%rcx), %r13
	cmpq	%r13, %rax
	cmovbq	%rax, %r13
	xorl	%ebp, %ebp
.LBB7_94:
	movq	%rbp, %rax
	.p2align	4, 0x90
.LBB7_95:
	cmpq	%r13, %rax
	jae	.LBB7_104
	leaq	1(%rax), %rbp
	cmpb	$0, (%r12,%rax)
	movq	%rbp, %rax
	jne	.LBB7_95
	movq	-8(%rbx,%rbp,8), %rdx
	movq	72(%r15), %rax
	imulq	$112, %rdx, %rcx
	movq	88(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_94
	movq	%r15, %rdi
	movq	72(%rsp), %rsi
	callq	*%rax
	jmp	.LBB7_94
.LBB7_104:
	movl	152(%r14), %eax
.LBB7_105:
	testb	$2, %al
	movq	72(%rsp), %r13
	je	.LBB7_111
	movq	16(%rsp), %rax
	movq	16(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_111
	movq	16(%rsp), %rax
	movq	8(%rax), %r14
	shlq	$3, %rbx
	xorl	%r12d, %r12d
	jmp	.LBB7_108
	.p2align	4, 0x90
.LBB7_110:
	addq	$8, %r12
	cmpq	%r12, %rbx
	je	.LBB7_111
.LBB7_108:
	movq	(%r14,%r12), %rdx
	movq	72(%r15), %rax
	imulq	$112, %rdx, %rcx
	movq	96(%rax,%rcx), %rax
	testq	%rax, %rax
	je	.LBB7_110
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*%rax
	jmp	.LBB7_110
.LBB7_111:
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
.LBB7_112:
	.cfi_def_cfa_offset 160
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.24(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_103:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.LBB7_3:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rdx
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
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
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.30(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.32(%rip), %rsi
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
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.30(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	$1, 16(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6(%rip), %rax
	movq	%rax, 24(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.32(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end11:
	.size	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash, .Lfunc_end11-hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_0:
	.zero	16,90
.LCPI12_1:
	.byte	118
	.byte	24
	.byte	0
	.byte	44
	.byte	94
	.byte	45
	.byte	165
	.byte	181
	.byte	224
	.byte	203
	.byte	1
	.byte	223
	.byte	170
	.byte	246
	.byte	252
	.byte	40
.LCPI12_2:
	.zero	16,103
.LCPI12_3:
	.zero	16,75
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
	movq	%rdi, %r15
	movq	(%rsi), %rbp
	movq	8(%rsi), %rax
	movq	%rax, 152(%rsp)
	movq	16(%rsi), %r13
.Ltmp6:
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
.Ltmp7:
	movq	%r13, %rax
	shlq	$4, %rax
	addq	152(%rsp), %rax
	movq	%rax, 296(%rsp)
	movabsq	$-5357826299198957450, %rdx
	movl	848(%r15), %eax
	movl	%eax, 52(%rsp)
	leaq	488(%r15), %r14
	leaq	64(%r15), %rax
	movq	%rax, 56(%rsp)
	leaq	216(%r15), %rax
	movq	%rax, 176(%rsp)
	leaq	512(%r15), %rax
	movq	%rax, 40(%rsp)
	movq	512(%r15), %rbx
	movq	%r15, (%rsp)
	movq	520(%r15), %r12
	leaq	-24(%rbx), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI12_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI12_1(%rip), %xmm2
	movq	%rbp, 8(%rsp)
.LBB12_2:
	andq	%r12, %rdx
	movdqu	(%rbx,%rdx), %xmm3
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
	andq	%r12, %rsi
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
	jne	.LBB12_75
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	jmp	.LBB12_2
.LBB12_7:
	movq	-8(%rbx,%rdi,8), %r15
	movq	(%rsp), %r14
.LBB12_8:
	shlq	$5, %r15
	movq	496(%r14), %rbx
	movq	%r15, 168(%rsp)
	addq	%r15, %rbx
	leaq	152(%r14), %rsi
.Ltmp30:
	movq	%rbx, %rdi
	movq	%rsi, 160(%rsp)
	movq	176(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
.Ltmp31:
	movl	%eax, %edi
	movq	168(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB12_120
	movq	%r14, %rdx
	movq	160(%r14), %rax
	movq	304(%r14), %rsi
	leaq	(%rdi,%rdi,4), %rcx
	shlq	$5, %rcx
	movl	148(%rax,%rcx), %edi
	cmpq	%rdi, %rsi
	jbe	.LBB12_121
	addq	%rcx, %rax
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	addq	296(%rdx), %rcx
	movq	%rbx, 200(%rsp)
	movq	%rcx, 208(%rsp)
	movq	%rax, 216(%rsp)
	movq	%rdx, 224(%rsp)
	movl	52(%rsp), %eax
	movl	%eax, 232(%rsp)
	movq	$3, 192(%rsp)
	movq	$0, 16(%rsp)
	movq	$8, 24(%rsp)
	movq	$0, 32(%rsp)
	testq	%r13, %r13
	je	.LBB12_66
	movl	$8, %ebx
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.19(%rip), %rax
	movq	%rax, 184(%rsp)
	xorl	%r14d, %r14d
	movq	152(%rsp), %rbp
	jmp	.LBB12_15
.LBB12_13:
.Ltmp43:
	leaq	80(%rsp), %rdi
	leaq	200(%rsp), %rsi
	movq	%r12, %rdx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleSpawner::spawn_non_existent
.Ltmp44:
.LBB12_14:
	movq	40(%rsp), %r14
	addq	$16, %rbp
	cmpq	296(%rsp), %rbp
	je	.LBB12_67
.LBB12_15:
	movq	(%rbp), %r12
	movq	%r12, %rax
	shrq	$32, %rax
	je	.LBB12_67
	movq	%r14, 40(%rsp)
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
.Ltmp35:
	leaq	308(%rsp), %rdi
	movq	%r12, %rdx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp36:
	movl	308(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB12_25
	cmpl	$1, %eax
	jne	.LBB12_29
	cmpl	$3, %r15d
	je	.LBB12_13
	movq	(%rsp), %rax
	movq	496(%rax), %r13
	addq	168(%rsp), %r13
.Ltmp39:
	movq	%r13, %rdi
	movq	160(%rsp), %rsi
	movq	176(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
.Ltmp40:
	movl	%eax, %r14d
	movq	(%rsp), %rdx
	movq	168(%rdx), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB12_118
	movq	160(%rdx), %rax
	movq	304(%rdx), %rsi
	leaq	(%r14,%r14,4), %rcx
	shlq	$5, %rcx
	movl	148(%rax,%rcx), %r14d
	cmpq	%r14, %rsi
	jbe	.LBB12_119
	addq	%rcx, %rax
	leaq	(%r14,%r14,8), %rcx
	shlq	$3, %rcx
	addq	296(%rdx), %rcx
	movq	%rdx, 104(%rsp)
	movq	%r13, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rax, 96(%rsp)
	movl	52(%rsp), %eax
	movl	%eax, 112(%rsp)
.Ltmp41:
	leaq	280(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movq	%r12, %rdx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleSpawner::spawn_non_existent
.Ltmp42:
	movq	112(%rsp), %rax
	leaq	200(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx)
	movdqu	%xmm0, (%rcx)
	movq	$3, 192(%rsp)
	jmp	.LBB12_14
	.p2align	4, 0x90
.LBB12_25:
	movq	40(%rsp), %r14
	cmpq	16(%rsp), %r14
	jne	.LBB12_28
.Ltmp37:
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp38:
	movq	24(%rsp), %rbx
	movq	32(%rsp), %r14
.LBB12_28:
	movq	%r12, (%rbx,%r14,8)
	incq	%r14
	movq	%r14, 32(%rsp)
	addq	$16, %rbp
	cmpq	296(%rsp), %rbp
	jne	.LBB12_15
	jmp	.LBB12_67
	.p2align	4, 0x90
.LBB12_29:
	movl	312(%rsp), %r14d
	cmpl	$3, %r15d
	je	.LBB12_32
	cmpl	264(%rsp), %r14d
	jne	.LBB12_32
	movl	%r14d, 80(%rsp)
	leaq	316(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	84(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp54:
	leaq	280(%rsp), %rdi
	leaq	192(%rsp), %rsi
	movq	%r12, %rdx
	leaq	80(%rsp), %rcx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp55:
	jmp	.LBB12_14
.LBB12_32:
	movq	(%rsp), %rax
	movq	496(%rax), %r13
	movq	168(%rsp), %rax
	movq	24(%r13,%rax), %r15
	addq	%rax, %r13
.Ltmp45:
	movq	%r13, %rdi
	movq	160(%rsp), %rsi
	movq	176(%rsp), %rdx
	movq	56(%rsp), %rcx
	movl	%r14d, %r8d
	callq	*bevy_ecs::bundle::BundleInfo::add_bundle_to_archetype@GOTPCREL(%rip)
.Ltmp46:
	movq	(%rsp), %rcx
	movq	168(%rcx), %rsi
	cmpl	%r14d, %eax
	jne	.LBB12_38
	cmpq	%r14, %rsi
	jbe	.LBB12_123
	movq	(%rsp), %rax
	movq	160(%rax), %rax
	leaq	(%r14,%r14,4), %rcx
	shlq	$5, %rcx
	cmpq	16(%rax,%rcx), %r15
	jae	.LBB12_56
	movq	8(%rax,%rcx), %rsi
	movl	$0, %edx
	testq	%rsi, %rsi
	je	.LBB12_57
	shlq	$5, %r15
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, (%rsi,%r15)
	leaq	(%rsi,%r15), %rsi
	movl	$0, %edx
	cmovneq	%rsi, %rdx
	jmp	.LBB12_57
.LBB12_38:
	movq	160(%rcx), %rdx
	movl	%eax, %edi
	jae	.LBB12_44
	cmpq	%r14, %rsi
	jb	.LBB12_135
	je	.LBB12_126
	leaq	(%r14,%r14,4), %rcx
	shlq	$5, %rcx
	addq	%rdx, %rcx
	leaq	(%rdi,%rdi,4), %rax
	shlq	$5, %rax
	addq	%rdx, %rax
	cmpq	16(%rcx), %r15
	jae	.LBB12_48
.LBB12_42:
	movq	8(%rcx), %rsi
	movl	$0, %edx
	testq	%rsi, %rsi
	je	.LBB12_49
	shlq	$5, %r15
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, (%rsi,%r15)
	leaq	(%rsi,%r15), %rsi
	movl	$0, %edx
	cmovneq	%rsi, %rdx
	jmp	.LBB12_49
.LBB12_44:
	cmpq	%rdi, %rsi
	jb	.LBB12_139
	cmpl	%r14d, %eax
	jbe	.LBB12_125
	cmpq	%rdi, %rsi
	je	.LBB12_127
	leaq	(%rdi,%rdi,4), %rax
	shlq	$5, %rax
	addq	%rdx, %rax
	leaq	(%r14,%r14,4), %rcx
	shlq	$5, %rcx
	addq	%rdx, %rcx
	cmpq	16(%rcx), %r15
	jb	.LBB12_42
.LBB12_48:
	xorl	%edx, %edx
.LBB12_49:
	movl	148(%rcx), %edi
	movl	148(%rax), %r8d
	movq	(%rsp), %r9
	movq	304(%r9), %rsi
	cmpl	%r8d, %edi
	jne	.LBB12_52
	cmpq	%rdi, %rsi
	jbe	.LBB12_128
	leaq	(%rdi,%rdi,8), %rsi
	shlq	$3, %rsi
	movq	(%rsp), %rdi
	addq	296(%rdi), %rsi
	movq	%rdi, 136(%rsp)
	movq	%r13, 104(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rsi, 120(%rsp)
	movq	%rcx, 128(%rsp)
	movq	$1, 80(%rsp)
	movq	%rax, 88(%rsp)
	jmp	.LBB12_64
.LBB12_52:
	movq	296(%r9), %r9
	cmpl	%r8d, %edi
	jbe	.LBB12_59
	cmpq	%rdi, %rsi
	jb	.LBB12_136
	je	.LBB12_129
	leaq	(%rdi,%rdi,8), %rsi
	leaq	(%r9,%rsi,8), %rdi
	leaq	(%r8,%r8,8), %rsi
	leaq	(%r9,%rsi,8), %rsi
	jmp	.LBB12_63
.LBB12_56:
	xorl	%edx, %edx
.LBB12_57:
	movl	148(%rax,%rcx), %edi
	movq	(%rsp), %r8
	movq	304(%r8), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB12_124
	addq	%rcx, %rax
	leaq	(%rdi,%rdi,8), %rcx
	shlq	$3, %rcx
	addq	296(%r8), %rcx
	movq	%r8, 136(%rsp)
	movq	%r13, 104(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	movq	$0, 80(%rsp)
	jmp	.LBB12_64
.LBB12_59:
	cmpq	%r8, %rsi
	jb	.LBB12_137
	cmpl	%edi, %r8d
	jbe	.LBB12_130
	cmpq	%r8, %rsi
	je	.LBB12_131
	leaq	(%r8,%r8,8), %rsi
	leaq	(%r9,%rsi,8), %rsi
	leaq	(%rdi,%rdi,8), %rdi
	leaq	(%r9,%rdi,8), %rdi
.LBB12_63:
	movq	(%rsp), %r8
	movq	%r8, 136(%rsp)
	movq	%r13, 104(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rdi, 120(%rsp)
	movq	%rcx, 128(%rsp)
	movq	$2, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rsi, 96(%rsp)
.LBB12_64:
	movl	52(%rsp), %eax
	movl	%eax, 144(%rsp)
	movl	%r14d, 280(%rsp)
	leaq	316(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	284(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp52:
	leaq	328(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movq	%r12, %rdx
	leaq	280(%rsp), %rcx
	movd	64(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp53:
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
	jmp	.LBB12_14
.LBB12_66:
	xorl	%r14d, %r14d
.LBB12_67:
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_69
	shlq	$4, %rsi
	movl	$8, %edx
	movq	152(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_69:
	movq	16(%rsp), %rsi
	testq	%r14, %r14
	je	.LBB12_72
	leaq	(,%rsi,2), %rax
	testq	%rax, %rax
	je	.LBB12_74
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
.LBB12_72:
	.cfi_def_cfa_offset 400
	testq	%rsi, %rsi
	je	.LBB12_74
	movq	24(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_74:
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
.LBB12_75:
	.cfi_def_cfa_offset 400
	movabsq	$638901356373693068, %rax
	movabsq	$-3535763698845787200, %rcx
	movq	$0, 16(%rsp)
	leaq	24(%rsp), %rdx
	movq	%rdx, 160(%rsp)
	movq	$8, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	(%rsp), %rsi
	leaq	88(%rsi), %rdx
	movq	%rdx, 168(%rsp)
	movq	88(%rsi), %rdx
	movq	96(%rsi), %rsi
	leaq	-24(%rdx), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI12_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB12_76:
	andq	%rsi, %r9
	movdqu	(%rdx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	.p2align	4, 0x90
.LBB12_77:
	testw	%r10w, %r10w
	je	.LBB12_79
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
	movq	8(%rsp), %rbp
	jne	.LBB12_77
	jmp	.LBB12_81
.LBB12_79:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB12_112
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB12_76
.LBB12_81:
	leaq	(%rdx,%r11,8), %rax
	addq	$-8, %rax
.LBB12_82:
	movq	(%rax), %r15
.Ltmp12:
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movabsq	$-7689713379243229917, %rax
	movabsq	$-7606651292042896445, %rcx
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rdx
	movq	%rsi, 64(%rsp)
	movq	%r15, (%rsi,%rdx,8)
	incq	%rdx
	movq	%rdx, 72(%rsp)
	movq	%rdx, 32(%rsp)
	movq	(%rsp), %rsi
	movq	88(%rsi), %rdx
	movq	96(%rsi), %rsi
	leaq	-24(%rdx), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI12_3(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rcx, %r9
.LBB12_84:
	andq	%rsi, %r9
	movdqu	(%rdx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r10d
	.p2align	4, 0x90
.LBB12_85:
	testw	%r10w, %r10w
	je	.LBB12_87
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
	jne	.LBB12_85
	jmp	.LBB12_89
.LBB12_87:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	jne	.LBB12_115
	addq	%r8, %r9
	addq	$16, %r9
	addq	$16, %r8
	jmp	.LBB12_84
.LBB12_89:
	leaq	(%rdx,%r11,8), %rax
	addq	$-8, %rax
.LBB12_90:
	movq	(%rax), %r15
	movq	72(%rsp), %rsi
	cmpq	16(%rsp), %rsi
	jne	.LBB12_93
.Ltmp20:
	leaq	16(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp21:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rsi
	jmp	.LBB12_94
.LBB12_93:
	movq	64(%rsp), %rax
.LBB12_94:
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 32(%rsp)
	movq	(%rsp), %rax
	movq	504(%rax), %r9
	movq	%rsi, 96(%rsp)
	movdqu	16(%rsp), %xmm0
	movdqa	%xmm0, 80(%rsp)
.Ltmp23:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12(%rip), %rsi
	leaq	192(%rsp), %rdi
	leaq	80(%rsp), %r8
	movl	$64, %edx
	movq	56(%rsp), %rcx
	movq	%r9, %r15
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp24:
	movq	%r15, %rcx
	movq	%r15, %rax
	cmpq	(%r14), %r15
	jne	.LBB12_98
.Ltmp25:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp26:
	movq	(%rsp), %rcx
	movq	504(%rcx), %rax
	movq	512(%rcx), %rbx
	movq	520(%rcx), %r12
.LBB12_98:
	movq	(%rsp), %rsi
	movq	496(%rsi), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movups	192(%rsp), %xmm0
	movdqu	208(%rsp), %xmm1
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 504(%rsi)
	movq	%r12, %rcx
	movabsq	$-5357826299198957450, %rax
	andq	%rax, %rcx
	movdqu	(%rbx,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB12_101
	movl	$16, %edx
	.p2align	4, 0x90
.LBB12_100:
	addq	%rdx, %rcx
	andq	%r12, %rcx
	movdqu	(%rbx,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB12_100
.LBB12_101:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r12, %rax
	cmpb	$0, (%rbx,%rax)
	js	.LBB12_103
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB12_103:
	movq	(%rsp), %rcx
	cmpq	$0, 528(%rcx)
	jne	.LBB12_111
	testb	$1, (%rbx,%rax)
	je	.LBB12_111
.Ltmp28:
	movq	40(%rsp), %rdi
	callq	hashbrown::raw::inner::RawTable<T,A>::reserve_rehash
.Ltmp29:
	movq	(%rsp), %rax
	movq	512(%rax), %rbx
	movq	520(%rax), %r12
	movq	%r12, %rcx
	movabsq	$-5357826299198957450, %rax
	andq	%rax, %rcx
	movdqu	(%rbx,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB12_109
	movl	$16, %edx
.LBB12_108:
	addq	%rdx, %rcx
	andq	%r12, %rcx
	movdqu	(%rbx,%rcx), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rdx
	testl	%eax, %eax
	je	.LBB12_108
.LBB12_109:
	rep		bsfl	%eax, %eax
	addq	%rcx, %rax
	andq	%r12, %rax
	cmpb	$0, (%rbx,%rax)
	js	.LBB12_111
	movdqa	(%rbx), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
.LBB12_111:
	movzbl	(%rbx,%rax), %ecx
	andl	$1, %ecx
	movq	(%rsp), %r14
	subq	%rcx, 528(%r14)
	leaq	-16(%rax), %rcx
	andq	%r12, %rcx
	movb	$90, (%rbx,%rax)
	movb	$90, 16(%rcx,%rbx)
	incq	536(%r14)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movabsq	$-5357826299198957450, %rcx
	movq	%rcx, -24(%rbx,%rax,8)
	movabsq	$2953506669394512864, %rcx
	movq	%rcx, -16(%rbx,%rax,8)
	movq	%r15, -8(%rbx,%rax,8)
	jmp	.LBB12_8
.LBB12_112:
	movq	168(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movq	$2, 80(%rsp)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 232(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.27(%rip), %rdx
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
	movq	56(%rsp), %rdi
	movq	176(%rsp), %rsi
	callq	bevy_ecs::component::Components::init_component_inner
.Ltmp9:
	movq	(%rsp), %rcx
	movq	80(%rcx), %rsi
	cmpq	%rsi, %rax
	jae	.LBB12_134
.Ltmp10:
	leaq	88(%rsp), %rdi
	movq	%rax, %rsi
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp11:
	jmp	.LBB12_82
.LBB12_115:
	movq	168(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movq	$2, 80(%rsp)
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 232(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.28(%rip), %rdx
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
	movq	56(%rsp), %rdi
	movq	176(%rsp), %rsi
	callq	bevy_ecs::component::Components::init_component_inner
.Ltmp15:
	movq	(%rsp), %rcx
	movq	80(%rcx), %rsi
	cmpq	%rsi, %rax
	jae	.LBB12_134
.Ltmp18:
	leaq	88(%rsp), %rdi
	movq	%rax, %rsi
	callq	hashbrown::map::VacantEntry<K,V,S,A>::insert
.Ltmp19:
	jmp	.LBB12_90
.LBB12_118:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rdx
	jmp	.LBB12_132
.LBB12_119:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	jmp	.LBB12_132
.LBB12_120:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rdx
	jmp	.LBB12_122
.LBB12_121:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
.LBB12_122:
.Ltmp32:
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp33:
	jmp	.LBB12_140
.LBB12_123:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8(%rip), %rdx
	jmp	.LBB12_132
.LBB12_124:
	movq	%rdi, %r14
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9(%rip), %rdx
	jmp	.LBB12_132
.LBB12_125:
	movq	%rdi, %rsi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.20(%rip), %rdx
	jmp	.LBB12_132
.LBB12_126:
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	8(%rsp), %r15
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.23(%rip), %rdx
	jmp	.LBB12_133
.LBB12_127:
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.21(%rip), %rdx
	jmp	.LBB12_132
.LBB12_128:
	movq	%rdi, %r14
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %rdx
	jmp	.LBB12_132
.LBB12_129:
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.18(%rip), %rdx
	jmp	.LBB12_132
.LBB12_130:
	movq	%rdi, %r14
	movq	%r8, %rsi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.15(%rip), %rdx
	jmp	.LBB12_132
.LBB12_131:
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.16(%rip), %rdx
.LBB12_132:
	movq	8(%rsp), %r15
.LBB12_133:
.Ltmp49:
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp50:
	jmp	.LBB12_140
.LBB12_134:
.Ltmp16:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.26(%rip), %rdx
	movq	%rax, %rdi
	movq	8(%rsp), %rbp
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp17:
	jmp	.LBB12_140
.LBB12_135:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.22(%rip), %rax
	jmp	.LBB12_138
.LBB12_136:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.17(%rip), %rax
	jmp	.LBB12_138
.LBB12_137:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.14(%rip), %rax
.LBB12_138:
	movq	%rax, 184(%rsp)
.LBB12_139:
.Ltmp47:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rdi
	movl	$35, %esi
	movq	184(%rsp), %rdx
	movq	8(%rsp), %r15
	callq	*core::panicking::panic@GOTPCREL(%rip)
.Ltmp48:
.LBB12_140:
	ud2
.LBB12_141:
.Ltmp27:
	movq	%rax, %rbx
	movq	192(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB12_143
	movq	8(%rsp), %rbp
	jmp	.LBB12_148
.LBB12_143:
	leaq	200(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	8(%rsp), %rbp
	jmp	.LBB12_145
.LBB12_144:
.Ltmp22:
	movq	%rax, %rbx
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_148
.LBB12_145:
	movq	160(%rsp), %rax
	movq	(%rax), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB12_148
.LBB12_146:
.Ltmp56:
	movq	%rax, %rbx
	movq	8(%rsp), %r15
	jmp	.LBB12_151
.LBB12_147:
.Ltmp34:
	movq	%rax, %rbx
.LBB12_148:
	testq	%rbp, %rbp
	je	.LBB12_156
	shlq	$4, %rbp
	movl	$8, %edx
	movq	152(%rsp), %rdi
	movq	%rbp, %rsi
	jmp	.LBB12_155
.LBB12_150:
.Ltmp51:
	movq	%rax, %rbx
.LBB12_151:
	testq	%r15, %r15
	je	.LBB12_153
	shlq	$4, %r15
	movl	$8, %edx
	movq	152(%rsp), %rdi
	movq	%r15, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_153:
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_156
	movq	24(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
.LBB12_155:
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB12_156:
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
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp43-.Lfunc_begin1
	.uleb128 .Ltmp53-.Ltmp43
	.uleb128 .Ltmp56-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp21-.Ltmp12
	.uleb128 .Ltmp22-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin1
	.uleb128 .Ltmp26-.Ltmp25
	.uleb128 .Ltmp27-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin1
	.uleb128 .Ltmp29-.Ltmp28
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Ltmp19-.Ltmp8
	.uleb128 .Ltmp22-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin1
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp49-.Lfunc_begin1
	.uleb128 .Ltmp50-.Ltmp49
	.uleb128 .Ltmp51-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp22-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp47-.Lfunc_begin1
	.uleb128 .Ltmp48-.Ltmp47
	.uleb128 .Ltmp51-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp48-.Lfunc_begin1
	.uleb128 .Lfunc_end12-.Ltmp48
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2, 0x0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 35

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.ascii	"/rustc/07dca489ac2d933c78d3c5158e3f43beefeb02ce/library/alloc/src/vec/mod.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 76

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1
	.asciz	"L\000\000\000\000\000\000\000\264\005\000\000\r\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/bundle.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 92

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"\\\000\000\000\000\000\000\000U\003\000\000.\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"\\\000\000\000\000\000\000\000V\003\000\000/\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.6,"a",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.6:
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6, 0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.7:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"\\\000\000\000\000\000\000\000X\002\000\0007\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.8:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"\\\000\000\000\000\000\000\0008\002\000\0002\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.9:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"\\\000\000\000\000\000\000\000A\002\000\0003\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.10,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.10:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.11:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\337\001\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.12,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.12:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.13,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.13:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13, 99

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.14,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.14:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13
	.asciz	"c\000\000\000\000\000\000\000Q\003\000\0002\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.14, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.15,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.15:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000\023\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.15, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.16,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.16,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.16:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13
	.asciz	"c\000\000\000\000\000\000\000R\003\000\000/\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.16, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.17,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.17:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13
	.asciz	"c\000\000\000\000\000\000\000N\003\000\0002\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.17, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.18,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.18,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.18:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13
	.asciz	"c\000\000\000\000\000\000\000O\003\000\000\023\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.18, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.19,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.19:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\366\002\000\0006\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.19, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.20,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.20:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\367\002\000\000\023\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.20, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.21,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.21:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\367\002\000\000,\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.21, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.22,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.22:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\363\002\000\0006\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.22, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.23,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.23:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\364\002\000\000\023\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.23, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.24,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.24:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10
	.asciz	"_\000\000\000\000\000\000\000\n\002\000\000#\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.24, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.25,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.25,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.25:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/6a08976/crates/bevy_ecs/src/component.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.25, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.26,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.26,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.26:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.25
	.asciz	"_\000\000\000\000\000\000\000*\002\000\0008\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.26, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.27,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.27,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.27:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.27, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.28,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.28,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.28:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.28, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.29,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.29,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.29:
	.ascii	"Hash table capacity overflow"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.29, 28

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.30,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.30,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.30:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.29
	.asciz	"\034\000\000\000\000\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.30, 16

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.31,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.31,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.31:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/hashbrown-0.14.3/src/raw/mod.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.31, 96

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.32,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.32,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.32:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.31
	.asciz	"`\000\000\000\000\000\000\000V\000\000\000(\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.32, 24

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

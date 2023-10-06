	.text
	.file	"query_state_iter_sparse.afa52019e70b91a3-cgu.0"
	.section	".text.<&T as core::fmt::Display>::fmt","ax",@progbits
	.p2align	4, 0x90
	.type	<&T as core::fmt::Display>::fmt,@function
<&T as core::fmt::Display>::fmt:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*<str as core::fmt::Display>::fmt@GOTPCREL(%rip)
.Lfunc_end0:
	.size	<&T as core::fmt::Display>::fmt, .Lfunc_end0-<&T as core::fmt::Display>::fmt
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>,@function
core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>:
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
	movq	%rdi, %rbx
	movq	32(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB1_2
	movq	24(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_2:
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_4
	movq	56(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_4:
	movq	(%rbx), %r14
	movq	16(%rbx), %r15
	testq	%r15, %r15
	je	.LBB1_11
	leaq	40(%r14), %r12
	movq	__rust_dealloc@GOTPCREL(%rip), %r13
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_10:
	addq	$64, %r12
	decq	%r15
	je	.LBB1_11
.LBB1_6:
	movq	-32(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB1_8
	movq	-40(%r12), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*%r13
.LBB1_8:
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB1_10
	movq	-8(%r12), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*%r13
	jmp	.LBB1_10
.LBB1_11:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_12
	shlq	$6, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
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
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_12:
	.cfi_def_cfa_offset 48
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
.Lfunc_end1:
	.size	core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>,@function
core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
	movq	16(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_2:
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_4
	movq	48(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_4:
	movq	88(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_6
	movq	80(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_6:
	movq	120(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_8
	movq	112(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_8:
	leaq	152(%rbx), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>
	movq	256(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_10
	movq	248(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_10:
	movq	280(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_11
	movq	272(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_11:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>
	.cfi_endproc

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
	je	.LBB3_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB3_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB3_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB3_11
.LBB3_4:
	movq	%r15, 8(%r14)
	jmp	.LBB3_5
.LBB3_7:
	testq	%rbx, %rbx
	je	.LBB3_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB3_4
.LBB3_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_12
.LBB3_6:
	movq	$0, 8(%r14)
.LBB3_5:
	movl	$1, %eax
.LBB3_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB3_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB3_11
	jmp	.LBB3_4
.Lfunc_end3:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end3-alloc::raw_vec::finish_grow
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
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB4_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB4_4
.LBB4_3:
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
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB5_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB5_4
.LBB5_3:
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

	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	cmpq	752(%rsi), %rax
	movq	%rdi, (%rsp)
	jne	.LBB6_75
	movq	%rdi, %r13
	movq	%rsi, 104(%rsp)
	movq	168(%rsi), %rsi
	movq	8(%rdi), %r15
	movq	%rsi, 8(%rdi)
	cmpq	%rsi, %r15
	movq	%rsi, 128(%rsp)
	jae	.LBB6_37
	leaq	80(%r13), %rcx
	leaq	104(%r13), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%r13), %rax
	movq	%rax, 120(%rsp)
	leaq	136(%r13), %rax
	movq	%rax, 112(%rsp)
	leaq	312(%r13), %rax
	movq	%rax, 168(%rsp)
	leaq	48(%r13), %rax
	movq	%rax, 160(%rsp)
	leaq	72(%r13), %rax
	movq	%rax, 96(%rsp)
	leaq	272(%r13), %rax
	movq	%rax, 144(%rsp)
	leaq	16(%r13), %rax
	movq	%rax, 152(%rsp)
	leaq	40(%r13), %rax
	movq	%rax, 88(%rsp)
	leaq	248(%r13), %rax
	movq	%rax, 136(%rsp)
	movq	104(%rsp), %rax
	movq	152(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 72(%rsp)
	jmp	.LBB6_6
.LBB6_3:
	movq	(%rsp), %r13
	movq	264(%r13), %rsi
.LBB6_4:
	movq	248(%r13), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r13)
	.p2align	4, 0x90
.LBB6_5:
	incq	%r15
	movq	128(%rsp), %rsi
	cmpq	%r15, %rsi
	je	.LBB6_37
.LBB6_6:
	movl	%r15d, %edi
	cmpq	%rsi, %rdi
	jae	.LBB6_65
	imulq	$152, %rdi, %rsi
	movq	296(%r13), %rax
	movq	8(%rsp), %rcx
	movq	136(%rcx,%rsi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB6_5
	movq	8(%rsp), %rdx
	movq	128(%rdx,%rsi), %r14
	testq	%r14, %r14
	je	.LBB6_5
	shlq	$4, %rax
	cmpq	$0, (%r14,%rax)
	je	.LBB6_5
	movq	304(%r13), %r12
	cmpq	%r12, %rcx
	jbe	.LBB6_5
	shlq	$4, %r12
	cmpq	$0, (%r14,%r12)
	je	.LBB6_5
	movq	8(%rsp), %rcx
	movq	%rsi, 80(%rsp)
	movq	96(%rcx,%rsi), %rcx
	movq	8(%r14,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 176(%rsp)
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rbx
.Ltmp2:
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp3:
	movq	%r13, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB6_66
	movq	%rbx, %rsi
	movq	%r13, %rbp
	shrq	$5, %rbp
	movl	$1, %ebx
	movl	%r13d, %ecx
	shll	%cl, %ebx
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
.Ltmp4:
	movq	120(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp5:
	movq	%r13, 48(%rsp)
	movq	112(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB6_67
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
	leaq	(%r14,%r12), %rax
	cmpq	$0, (%rax)
	movq	72(%rsp), %rdx
	je	.LBB6_20
	movq	8(%r14,%r12), %rax
	shlq	$4, %rax
	movq	176(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
.Ltmp6:
	movq	%rdx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp7:
	movq	%r13, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB6_66
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	72(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r13
	orl	%eax, (%rcx,%r13,4)
.LBB6_20:
.Ltmp8:
	movq	8(%rsp), %rax
	movq	80(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	168(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp9:
	movq	8(%rsp), %rax
	movq	80(%rsp), %rcx
	movl	144(%rax,%rcx), %ebp
	movl	%ebp, %r14d
	shrl	$5, %r14d
	movq	(%rsp), %r13
	cmpq	64(%r13), %r14
	jae	.LBB6_24
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.LBB6_24
	movl	(%rax,%r14,4), %eax
	btl	%ebp, %eax
	jb	.LBB6_30
.LBB6_24:
	leaq	1(%rbp), %rsi
.Ltmp10:
	movq	160(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp11:
	movq	%rbp, 48(%rsp)
	movq	96(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB6_69
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r13
	movq	48(%r13), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	288(%r13), %rsi
	cmpq	280(%r13), %rsi
	jne	.LBB6_29
.Ltmp12:
	movq	144(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movq	(%rsp), %r13
	movq	288(%r13), %rsi
.LBB6_29:
	movq	272(%r13), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r13)
	movq	80(%rsp), %rcx
.LBB6_30:
	movq	8(%rsp), %rax
	movl	148(%rax,%rcx), %ebp
	movl	%ebp, %ebx
	shrl	$5, %ebx
	cmpq	32(%r13), %rbx
	jae	.LBB6_33
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB6_33
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB6_5
.LBB6_33:
	leaq	1(%rbp), %rsi
.Ltmp14:
	movq	152(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%rbp, 48(%rsp)
	movq	88(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB6_70
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r13
	movq	16(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r13), %rsi
	cmpq	256(%r13), %rsi
	jne	.LBB6_4
.Ltmp19:
	movq	136(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp20:
	jmp	.LBB6_3
.LBB6_37:
	movq	296(%r13), %rcx
	movq	304(%r13), %rdx
	movq	104(%rsp), %r9
	movq	264(%r9), %r8
	movq	280(%r9), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB6_41
	testq	%r8, %r8
	je	.LBB6_41
	shlq	$4, %rcx
	cmpq	$0, (%r8,%rcx)
	je	.LBB6_45
	movq	8(%r8,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	216(%r9), %rax
.LBB6_41:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB6_47
.LBB6_42:
	testq	%r8, %r8
	je	.LBB6_47
	shlq	$4, %rdx
	cmpq	$0, (%r8,%rdx)
	je	.LBB6_46
	movq	8(%r8,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r9), %rcx
	jmp	.LBB6_47
.LBB6_45:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB6_42
	jmp	.LBB6_47
.LBB6_46:
	xorl	%ecx, %ecx
.LBB6_47:
	movl	760(%r9), %edx
	movl	%edx, 8(%rsp)
	movq	272(%r13), %rdx
	movq	288(%r13), %rdi
	leaq	(%rdx,%rdi,4), %rdi
	movq	152(%r9), %r8
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.8(%rip), %r11
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	jmp	.LBB6_50
	.p2align	4, 0x90
.LBB6_48:
	xorl	%r13d, %r13d
.LBB6_49:
	incq	%rbx
	movss	(%r13), %xmm0
	movl	8(%rsp), %esi
	movl	%esi, (%r14)
	addss	(%r15), %xmm0
	movss	%xmm0, (%r15)
	movq	(%rsp), %r13
	movq	128(%rsp), %rsi
.LBB6_50:
	cmpq	%r10, %rbx
	jne	.LBB6_54
	.p2align	4, 0x90
.LBB6_51:
	cmpq	%rdi, %rdx
	je	.LBB6_64
	movl	(%rdx), %r10d
	addq	$4, %rdx
	imulq	$152, %r10, %r11
	addq	%r8, %r11
	cmpq	%r10, %rsi
	cmovbeq	%r9, %r11
	movq	88(%r11), %r10
	testq	%r10, %r10
	je	.LBB6_51
	movq	72(%r11), %r11
	xorl	%ebx, %ebx
.LBB6_54:
	leaq	(%rbx,%rbx,2), %r14
	movl	4(%r11,%r14,4), %r12d
	cmpq	%r12, 136(%rax)
	jbe	.LBB6_58
	movq	120(%rax), %r13
	movl	$0, %r15d
	testq	%r13, %r13
	je	.LBB6_59
	cmpl	$0, (%r13,%r12,8)
	je	.LBB6_58
	movl	4(%r13,%r12,8), %r14d
	movq	8(%rax), %r15
	imulq	%r14, %r15
	addq	16(%rax), %r15
	shlq	$2, %r14
	addq	72(%rax), %r14
	jmp	.LBB6_59
	.p2align	4, 0x90
.LBB6_58:
	xorl	%r15d, %r15d
.LBB6_59:
	cmpq	%r12, 136(%rcx)
	jbe	.LBB6_48
	movq	120(%rcx), %rbp
	movl	$0, %r13d
	testq	%rbp, %rbp
	je	.LBB6_49
	cmpl	$0, (%rbp,%r12,8)
	je	.LBB6_48
	movl	4(%rbp,%r12,8), %r13d
	imulq	8(%rcx), %r13
	addq	16(%rcx), %r13
	jmp	.LBB6_49
.LBB6_64:
	movq	%r13, %rdi
	addq	$232, %rsp
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
	jmp	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>
.LBB6_65:
	.cfi_def_cfa_offset 288
.Ltmp0:
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.15(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB6_74
.LBB6_66:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rcx
	jmp	.LBB6_68
.LBB6_67:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	112(%rsp), %rcx
.LBB6_68:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.6(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.7(%rip), %rsi
	jmp	.LBB6_72
.LBB6_69:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	96(%rsp), %rcx
	jmp	.LBB6_71
.LBB6_70:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	88(%rsp), %rcx
.LBB6_71:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.2(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.4(%rip), %rsi
.LBB6_72:
	movl	$2, %eax
	leaq	16(%rsp), %rcx
.LBB6_73:
	leaq	184(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rax, 24(%rdi)
.Ltmp16:
	movq	(%rsp), %r13
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp17:
.LBB6_74:
	ud2
.LBB6_75:
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.12(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$98, 24(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.11(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.14(%rip), %rsi
	movl	$1, %eax
	leaq	48(%rsp), %rcx
	jmp	.LBB6_73
.LBB6_76:
.Ltmp21:
	movq	%rax, %r14
	movq	(%rsp), %r13
	jmp	.LBB6_78
.LBB6_77:
.Ltmp18:
	movq	%rax, %r14
.LBB6_78:
	movq	%r13, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end6:
	.size	query_iter, .Lfunc_end6-query_iter
	.cfi_endproc
	.section	.gcc_except_table.query_iter,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp20-.Ltmp2
	.uleb128 .Ltmp21-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp17-.Ltmp0
	.uleb128 .Ltmp18-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin0
	.uleb128 .Lfunc_end6-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.0,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.0,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.0:
	.ascii	"set at index "
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.0, 13

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.1,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.1,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.1, 24

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.2,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.2:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.2, 32

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.3,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.3,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.3, 93

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.4,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.4:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.4, 24

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.a01df851b6197f632189e2f0fa818bdd.5:
	.ascii	"insert at index "
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.5, 16

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.6,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.6:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.6, 32

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.7,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.7:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.7, 24

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.8,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.8,"a",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.8:
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.8, 0

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.9,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.9,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.9:
	.ascii	"Attempted to use "
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.9, 17

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.10,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.10,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.10:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.10, 93

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.11,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.11:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.9
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.10
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.11, 32

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.12,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.12,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.12:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A, &query_state_iter_sparse::B)>"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.12, 98

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.13,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.13,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.13:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.13, 97

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.14,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.14:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.13
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.14, 24

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.15,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.15,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.15:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.13
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000+\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.15, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits

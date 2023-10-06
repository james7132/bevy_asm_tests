	.text
	.file	"query_state_get_sparse.5b125cb0c1a00837-cgu.0"
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

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>,@function
core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>:
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
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>
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

	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, 92(%rsp)
	movq	%rsi, 208(%rsp)
	movq	(%rdi), %rax
	cmpq	752(%rcx), %rax
	movq	%rdi, (%rsp)
	jne	.LBB6_80
	movq	%rdi, %r15
	movq	%rcx, 160(%rsp)
	movq	168(%rcx), %rsi
	movq	8(%rdi), %rbp
	movq	%rsi, 8(%rdi)
	cmpq	%rsi, %rbp
	jae	.LBB6_38
	leaq	80(%r15), %rax
	movq	%rax, 72(%rsp)
	leaq	104(%r15), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%r15), %rax
	movq	%rax, 184(%rsp)
	leaq	136(%r15), %rax
	movq	%rax, 168(%rsp)
	leaq	312(%r15), %rax
	movq	%rax, 232(%rsp)
	leaq	48(%r15), %rax
	movq	%rax, 224(%rsp)
	leaq	72(%r15), %rax
	movq	%rax, 152(%rsp)
	leaq	272(%r15), %rax
	movq	%rax, 200(%rsp)
	leaq	16(%r15), %rax
	movq	%rax, 216(%rsp)
	leaq	40(%r15), %rax
	movq	%rax, 144(%rsp)
	leaq	248(%r15), %rax
	movq	%rax, 192(%rsp)
	movq	160(%rsp), %rax
	movq	152(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 176(%rsp)
	jmp	.LBB6_6
.LBB6_3:
	movq	(%rsp), %r15
	movq	264(%r15), %rsi
.LBB6_4:
	movq	248(%r15), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r15)
	movq	176(%rsp), %rsi
	.p2align	4, 0x90
.LBB6_5:
	incq	%rbp
	cmpq	%rbp, %rsi
	je	.LBB6_38
.LBB6_6:
	movl	%ebp, %edi
	cmpq	%rsi, %rdi
	jae	.LBB6_70
	imulq	$152, %rdi, %rdi
	movq	296(%r15), %rax
	movq	8(%rsp), %rcx
	movq	136(%rcx,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB6_5
	movq	8(%rsp), %rdx
	movq	128(%rdx,%rdi), %r12
	testq	%r12, %r12
	je	.LBB6_5
	shlq	$4, %rax
	cmpq	$0, (%r12,%rax)
	je	.LBB6_5
	movq	304(%r15), %r13
	cmpq	%r13, %rcx
	jbe	.LBB6_5
	shlq	$4, %r13
	cmpq	$0, (%r12,%r13)
	je	.LBB6_5
	movq	8(%rsp), %rcx
	movq	%rdi, 80(%rsp)
	movq	96(%rcx,%rdi), %rcx
	movq	8(%r12,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 240(%rsp)
	movq	(%rcx,%rax), %r15
	leaq	1(%r15), %rbx
.Ltmp2:
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp3:
	movq	%r15, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB6_71
	movq	%rbx, %rsi
	movq	%r15, %r14
	shrq	$5, %r14
	movl	$1, %ebx
	movl	%r15d, %ecx
	shll	%cl, %ebx
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r14,4)
.Ltmp4:
	movq	184(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp5:
	movq	%r15, 48(%rsp)
	movq	168(%rsp), %rax
	cmpq	%r15, (%rax)
	jbe	.LBB6_72
	movq	184(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r14,4)
	leaq	(%r12,%r13), %rax
	cmpq	$0, (%rax)
	movq	72(%rsp), %rdx
	je	.LBB6_20
	movq	8(%r12,%r13), %rax
	shlq	$4, %rax
	movq	240(%rsp), %rcx
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
.Ltmp6:
	movq	%rdx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp7:
	movq	%r14, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB6_71
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	72(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r14
	orl	%eax, (%rcx,%r14,4)
.LBB6_20:
.Ltmp8:
	movq	8(%rsp), %rax
	movq	80(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	232(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp9:
	movq	8(%rsp), %rax
	movq	80(%rsp), %rdx
	movl	144(%rax,%rdx), %r14d
	movl	%r14d, %r15d
	shrl	$5, %r15d
	movq	(%rsp), %rcx
	cmpq	64(%rcx), %r15
	jae	.LBB6_24
	movq	48(%rcx), %rax
	testq	%rax, %rax
	je	.LBB6_24
	movl	(%rax,%r15,4), %eax
	btl	%r14d, %eax
	jb	.LBB6_31
.LBB6_24:
	leaq	1(%r14), %rsi
.Ltmp10:
	movq	224(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp11:
	movq	%r14, 48(%rsp)
	movq	152(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB6_74
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%rsp), %rdx
	movq	48(%rdx), %rcx
	orl	%eax, (%rcx,%r15,4)
	movq	288(%rdx), %rsi
	cmpq	280(%rdx), %rsi
	jne	.LBB6_29
.Ltmp12:
	movq	200(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movq	(%rsp), %rcx
	movq	288(%rcx), %rsi
	jmp	.LBB6_30
.LBB6_29:
	movq	%rdx, %rcx
.LBB6_30:
	movq	272(%rcx), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%rcx)
	movq	80(%rsp), %rdx
.LBB6_31:
	movq	8(%rsp), %rax
	movl	148(%rax,%rdx), %r14d
	movl	%r14d, %ebx
	shrl	$5, %ebx
	cmpq	32(%rcx), %rbx
	movq	176(%rsp), %rsi
	jae	.LBB6_34
	movq	%rcx, %r15
	movq	16(%rcx), %rax
	testq	%rax, %rax
	je	.LBB6_34
	movl	(%rax,%rbx,4), %eax
	btl	%r14d, %eax
	jb	.LBB6_5
.LBB6_34:
	leaq	1(%r14), %rsi
.Ltmp14:
	movq	216(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%r14, 48(%rsp)
	movq	144(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB6_75
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r15
	movq	16(%r15), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r15), %rsi
	cmpq	256(%r15), %rsi
	jne	.LBB6_4
.Ltmp19:
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp20:
	jmp	.LBB6_3
.LBB6_38:
	movq	160(%rsp), %rbx
	movl	760(%rbx), %eax
	movl	764(%rbx), %ecx
	movl	92(%rsp), %edx
	cmpq	%rdx, 16(%rbx)
	movq	208(%rsp), %r11
	jbe	.LBB6_48
	movq	(%rbx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%r11d, (%rsi,%rdi,4)
	jne	.LBB6_48
	movl	4(%rsi,%rdi,4), %esi
	movl	$4294967295, %edi
	cmpq	%rdi, %rsi
	je	.LBB6_48
	movl	%esi, %edi
	shrl	$5, %edi
	cmpq	64(%r15), %rdi
	jae	.LBB6_51
	movq	48(%r15), %r8
	testq	%r8, %r8
	je	.LBB6_51
	movl	(%r8,%rdi,4), %edi
	btl	%esi, %edi
	jae	.LBB6_51
	movq	296(%r15), %r8
	movq	304(%r15), %rsi
	movq	264(%rbx), %rdi
	movq	280(%rbx), %r10
	xorl	%r9d, %r9d
	cmpq	%r8, %r10
	jbe	.LBB6_53
	testq	%rdi, %rdi
	je	.LBB6_53
	shlq	$4, %r8
	cmpq	$0, (%rdi,%r8)
	je	.LBB6_52
	movq	8(%rdi,%r8), %r8
	leaq	(%r8,%r8,8), %r9
	shlq	$4, %r9
	addq	216(%rbx), %r9
	jmp	.LBB6_53
.LBB6_48:
	shlq	$32, %r11
	orq	$1, %r11
.LBB6_49:
	xorl	%esi, %esi
	movq	%rdx, %rdi
.LBB6_50:
	movq	%rsi, 96(%rsp)
	movq	%r11, 104(%rsp)
	movq	%rdi, 112(%rsp)
	movl	%ecx, 120(%rsp)
	movl	%eax, 124(%rsp)
	movq	%r9, 128(%rsp)
	leaq	96(%rsp), %rax
	#APP
	#NO_APP
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>
	addq	$248, %rsp
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
.LBB6_51:
	.cfi_def_cfa_offset 304
	shlq	$32, %r11
	jmp	.LBB6_49
.LBB6_52:
	xorl	%r9d, %r9d
.LBB6_53:
	xorl	%r8d, %r8d
	cmpq	%rsi, %r10
	jbe	.LBB6_58
	testq	%rdi, %rdi
	je	.LBB6_58
	shlq	$4, %rsi
	cmpq	$0, (%rdi,%rsi)
	je	.LBB6_57
	movq	8(%rdi,%rsi), %rsi
	leaq	(%rsi,%rsi,8), %r8
	shlq	$4, %r8
	addq	216(%rbx), %r8
	jmp	.LBB6_58
.LBB6_57:
	xorl	%r8d, %r8d
.LBB6_58:
	xorl	%esi, %esi
	cmpq	%rdx, 136(%r9)
	jbe	.LBB6_64
	movq	120(%r9), %r10
	testq	%r10, %r10
	je	.LBB6_65
	cmpl	$0, (%r10,%rdx,8)
	je	.LBB6_63
	movl	4(%r10,%rdx,8), %edi
	movq	8(%r9), %rsi
	imulq	%rdi, %rsi
	addq	16(%r9), %rsi
	shlq	$2, %rdi
	movq	48(%r9), %r11
	addq	%rdi, %r11
	addq	72(%r9), %rdi
	jmp	.LBB6_65
.LBB6_63:
	xorl	%esi, %esi
.LBB6_64:
.LBB6_65:
	xorl	%r9d, %r9d
	cmpq	%rdx, 136(%r8)
	jbe	.LBB6_50
	movq	120(%r8), %r10
	testq	%r10, %r10
	je	.LBB6_50
	cmpl	$0, (%r10,%rdx,8)
	je	.LBB6_69
	movl	4(%r10,%rdx,8), %r9d
	imulq	8(%r8), %r9
	addq	16(%r8), %r9
	jmp	.LBB6_50
.LBB6_69:
	xorl	%r9d, %r9d
	jmp	.LBB6_50
.LBB6_70:
.Ltmp0:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB6_79
.LBB6_71:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rcx
	jmp	.LBB6_73
.LBB6_72:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	168(%rsp), %rcx
.LBB6_73:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7(%rip), %rsi
	jmp	.LBB6_77
.LBB6_74:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	152(%rsp), %rcx
	jmp	.LBB6_76
.LBB6_75:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	144(%rsp), %rcx
.LBB6_76:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4(%rip), %rsi
.LBB6_77:
	movl	$2, %eax
	leaq	16(%rsp), %rcx
.LBB6_78:
	leaq	96(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rax, 24(%rdi)
.Ltmp16:
	movq	(%rsp), %r15
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp17:
.LBB6_79:
	ud2
.LBB6_80:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$96, 24(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13(%rip), %rsi
	movl	$1, %eax
	leaq	48(%rsp), %rcx
	jmp	.LBB6_78
.LBB6_81:
.Ltmp21:
	movq	%rax, %r14
	movq	(%rsp), %r15
	jmp	.LBB6_83
.LBB6_82:
.Ltmp18:
	movq	%rax, %r14
.LBB6_83:
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A,&query_state_get_sparse::B)>>
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end6:
	.size	query_get, .Lfunc_end6-query_get
	.cfi_endproc
	.section	.gcc_except_table.query_get,"a",@progbits
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

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.0,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.0:
	.ascii	"set at index "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0, 13

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.1,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.2:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2, 32

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.3,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3, 93

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.4:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.161d7961c923b4e842c0f6e55225f2ee.5:
	.ascii	"insert at index "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.5, 16

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.6:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6, 32

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.7:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.8,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.8:
	.ascii	"Attempted to use "
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8, 17

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.9,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.9:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9, 93

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.10:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10, 32

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.11,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.11:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_get_sparse::A, &query_state_get_sparse::B)>"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11, 96

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12,@object
	.section	.rodata..Lanon.161d7961c923b4e842c0f6e55225f2ee.12,"a",@progbits
.Lanon.161d7961c923b4e842c0f6e55225f2ee.12:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12, 97

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.13:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.14:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.12
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000+\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14, 24

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

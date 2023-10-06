	.text
	.file	"query_state_get.6c02b58474821a84-cgu.0"
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

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>,@function
core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>:
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
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>
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
	jne	.LBB6_1
	movq	%rdi, %rbp
	movq	%rcx, 160(%rsp)
	movq	168(%rcx), %rsi
	movq	8(%rdi), %r15
	movq	%rsi, 8(%rdi)
	cmpq	%rsi, %r15
	jae	.LBB6_48
	leaq	80(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	104(%rbp), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%rbp), %rax
	movq	%rax, 184(%rsp)
	leaq	136(%rbp), %rax
	movq	%rax, 168(%rsp)
	leaq	312(%rbp), %rax
	movq	%rax, 232(%rsp)
	leaq	48(%rbp), %rax
	movq	%rax, 224(%rsp)
	leaq	72(%rbp), %rax
	movq	%rax, 152(%rsp)
	leaq	272(%rbp), %rax
	movq	%rax, 200(%rsp)
	leaq	16(%rbp), %rax
	movq	%rax, 216(%rsp)
	leaq	40(%rbp), %rax
	movq	%rax, 144(%rsp)
	leaq	248(%rbp), %rax
	movq	%rax, 192(%rsp)
	movq	160(%rsp), %rax
	movq	152(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 176(%rsp)
	jmp	.LBB6_6
.LBB6_45:
	movq	(%rsp), %rbp
	movq	264(%rbp), %rsi
.LBB6_46:
	movq	248(%rbp), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%rbp)
	movq	176(%rsp), %rsi
	.p2align	4, 0x90
.LBB6_47:
	incq	%r15
	cmpq	%r15, %rsi
	je	.LBB6_48
.LBB6_6:
	movl	%r15d, %edi
	cmpq	%rsi, %rdi
	jae	.LBB6_7
	imulq	$152, %rdi, %rdi
	movq	296(%rbp), %rax
	movq	8(%rsp), %rcx
	movq	136(%rcx,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB6_47
	movq	8(%rsp), %rdx
	movq	128(%rdx,%rdi), %r12
	testq	%r12, %r12
	je	.LBB6_47
	shlq	$4, %rax
	cmpq	$0, (%r12,%rax)
	je	.LBB6_47
	movq	304(%rbp), %r13
	cmpq	%r13, %rcx
	jbe	.LBB6_47
	shlq	$4, %r13
	cmpq	$0, (%r12,%r13)
	je	.LBB6_47
	movq	8(%rsp), %rcx
	movq	%rdi, 80(%rsp)
	movq	96(%rcx,%rdi), %rcx
	movq	8(%r12,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 240(%rsp)
	movq	(%rcx,%rax), %rbp
	leaq	1(%rbp), %rbx
.Ltmp2:
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp3:
	movq	%rbp, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB6_15
	movq	%rbx, %rsi
	movq	%rbp, %r14
	shrq	$5, %r14
	movl	$1, %ebx
	movl	%ebp, %ecx
	shll	%cl, %ebx
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r14,4)
.Ltmp4:
	movq	184(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp5:
	movq	%rbp, 48(%rsp)
	movq	168(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB6_20
	movq	184(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r14,4)
	leaq	(%r12,%r13), %rax
	cmpq	$0, (%rax)
	movq	72(%rsp), %rdx
	je	.LBB6_25
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
	jbe	.LBB6_15
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	72(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r14
	orl	%eax, (%rcx,%r14,4)
.LBB6_25:
.Ltmp8:
	movq	8(%rsp), %rax
	movq	80(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	232(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp9:
	movq	8(%rsp), %rax
	movq	80(%rsp), %rcx
	movl	144(%rax,%rcx), %r14d
	movl	%r14d, %r12d
	shrl	$5, %r12d
	movq	(%rsp), %rbp
	cmpq	64(%rbp), %r12
	jae	.LBB6_35
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB6_35
	movl	(%rax,%r12,4), %eax
	btl	%r14d, %eax
	jb	.LBB6_29
.LBB6_35:
	leaq	1(%r14), %rsi
.Ltmp10:
	movq	224(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp11:
	movq	%r14, 48(%rsp)
	movq	152(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB6_37
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%rsp), %rbp
	movq	48(%rbp), %rcx
	orl	%eax, (%rcx,%r12,4)
	movq	288(%rbp), %rsi
	cmpq	280(%rbp), %rsi
	jne	.LBB6_42
.Ltmp12:
	movq	200(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp13:
	movq	(%rsp), %rbp
	movq	288(%rbp), %rsi
.LBB6_42:
	movq	272(%rbp), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%rbp)
	movq	80(%rsp), %rcx
.LBB6_29:
	movq	8(%rsp), %rax
	movl	148(%rax,%rcx), %r14d
	movl	%r14d, %ebx
	shrl	$5, %ebx
	cmpq	32(%rbp), %rbx
	movq	176(%rsp), %rsi
	jae	.LBB6_32
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.LBB6_32
	movl	(%rax,%rbx,4), %eax
	btl	%r14d, %eax
	jb	.LBB6_47
.LBB6_32:
	leaq	1(%r14), %rsi
.Ltmp14:
	movq	216(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%r14, 48(%rsp)
	movq	144(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB6_34
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	(%rsp), %rbp
	movq	16(%rbp), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%rbp), %rsi
	cmpq	256(%rbp), %rsi
	jne	.LBB6_46
.Ltmp19:
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp20:
	jmp	.LBB6_45
.LBB6_48:
	movq	160(%rsp), %rbx
	movl	760(%rbx), %eax
	movl	764(%rbx), %ecx
	movl	92(%rsp), %edx
	cmpq	%rdx, 16(%rbx)
	movq	208(%rsp), %r11
	jbe	.LBB6_58
	movq	(%rbx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%r11d, (%rsi,%rdi,4)
	jne	.LBB6_58
	movl	4(%rsi,%rdi,4), %r8d
	movl	$4294967295, %r9d
	cmpq	%r9, %r8
	je	.LBB6_58
	movl	%r8d, %r9d
	shrl	$5, %r9d
	cmpq	64(%rbp), %r9
	jae	.LBB6_59
	movq	48(%rbp), %r10
	testq	%r10, %r10
	je	.LBB6_59
	movl	(%r10,%r9,4), %r9d
	btl	%r8d, %r9d
	jae	.LBB6_59
	leaq	(%rsi,%rdi,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %edi
	leaq	(%rdi,%rdi,8), %r8
	shlq	$3, %r8
	addq	288(%rbx), %r8
	movl	12(%rdx), %esi
	xorl	%edx, %edx
	cmpq	%rdi, 304(%rbx)
	cmovaq	%r8, %rdx
	movq	296(%rbp), %rdi
	movq	304(%rbp), %r8
	movq	(%rdx), %r9
	movq	32(%rdx), %rdx
	shlq	$4, %rdi
	movq	8(%rdx,%rdi), %rdi
	leaq	(%rdi,%rdi,2), %r10
	shlq	$5, %r10
	shlq	$4, %r8
	movq	8(%rdx,%r8), %rdx
	leaq	(%rdx,%rdx,2), %r8
	shlq	$5, %r8
	shlq	$2, %rsi
	movq	16(%r9,%r10), %rdi
	addq	%rsi, %rdi
	movq	48(%r9,%r10), %r11
	addq	%rsi, %r11
	movq	72(%r9,%r10), %rdx
	addq	%rsi, %rdx
	addq	16(%r9,%r8), %rsi
	jmp	.LBB6_61
.LBB6_58:
	shlq	$32, %r11
	orq	$1, %r11
.LBB6_60:
	xorl	%edi, %edi
.LBB6_61:
	movq	%rdi, 96(%rsp)
	movq	%r11, 104(%rsp)
	movq	%rdx, 112(%rsp)
	movl	%ecx, 120(%rsp)
	movl	%eax, 124(%rsp)
	movq	%rsi, 128(%rsp)
	leaq	96(%rsp), %rax
	#APP
	#NO_APP
	movq	%rbp, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>
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
.LBB6_59:
	.cfi_def_cfa_offset 304
	shlq	$32, %r11
	jmp	.LBB6_60
.LBB6_7:
.Ltmp0:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.14(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB6_3
.LBB6_15:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rcx
	jmp	.LBB6_16
.LBB6_20:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	168(%rsp), %rcx
.LBB6_16:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7(%rip), %rsi
	jmp	.LBB6_17
.LBB6_37:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	152(%rsp), %rcx
	jmp	.LBB6_38
.LBB6_34:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	144(%rsp), %rcx
.LBB6_38:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4(%rip), %rsi
.LBB6_17:
	movl	$2, %eax
	leaq	16(%rsp), %rcx
.LBB6_2:
	leaq	96(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rax, 24(%rdi)
.Ltmp16:
	movq	(%rsp), %rbp
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp17:
.LBB6_3:
	ud2
.LBB6_1:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$82, 24(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.13(%rip), %rsi
	movl	$1, %eax
	leaq	48(%rsp), %rcx
	jmp	.LBB6_2
.LBB6_55:
.Ltmp21:
	movq	%rax, %r14
	movq	(%rsp), %rbp
	jmp	.LBB6_57
.LBB6_56:
.Ltmp18:
	movq	%rax, %r14
.LBB6_57:
	movq	%rbp, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>
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
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_get::A, &query_state_get::B)>"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.11, 82

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

	.text
	.file	"query_state_iter_sparse.e3bb7334da839560-cgu.0"
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
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
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
.Ltmp0:
	callq	core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>
.Ltmp1:
	movq	256(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_11
	movq	248(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_11:
	movq	280(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_16
	movq	272(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_16:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_13:
	.cfi_def_cfa_offset 32
.Ltmp2:
	movq	%rax, %r14
	movq	248(%rbx), %rdi
	movq	256(%rbx), %rsi
.Ltmp3:
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>
.Ltmp4:
	movq	272(%rbx), %rdi
	movq	280(%rbx), %rsi
.Ltmp5:
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>
.Ltmp6:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB2_17:
.Ltmp7:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end2:
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp6-.Ltmp3
	.uleb128 .Ltmp7-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Lfunc_end2-.Ltmp6
	.byte	0
	.byte	0
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB3_1
	shlq	$2, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_1:
	retq
.Lfunc_end3:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>, .Lfunc_end3-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB4_1
	shlq	$2, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB4_1:
	retq
.Lfunc_end4:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>, .Lfunc_end4-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>
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
	je	.LBB5_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB5_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB5_11
.LBB5_4:
	movq	%r15, 8(%r14)
	jmp	.LBB5_5
.LBB5_7:
	testq	%rbx, %rbx
	je	.LBB5_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB5_4
.LBB5_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB5_12
.LBB5_6:
	movq	$0, 8(%r14)
.LBB5_5:
	movl	$1, %eax
.LBB5_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB5_11
	jmp	.LBB5_4
.Lfunc_end5:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end5-alloc::raw_vec::finish_grow
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
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$61, %rcx
	sete	%sil
	leaq	(,%r14,4), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB6_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB6_4
.LBB6_3:
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
	je	.LBB7_10
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
	je	.LBB7_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB7_4
.LBB7_3:
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
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end7-alloc::raw_vec::RawVec<T,A>::reserve_for_push
	.cfi_endproc

	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
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
	jne	.LBB8_75
	movq	%rdi, %r13
	movq	%rsi, 64(%rsp)
	movq	168(%rsi), %rsi
	movq	8(%rdi), %r15
	movq	%rsi, 8(%rdi)
	cmpq	%rsi, %r15
	movq	%rsi, 128(%rsp)
	jae	.LBB8_37
	leaq	80(%r13), %rcx
	leaq	104(%r13), %rax
	movq	%rax, 72(%rsp)
	leaq	112(%r13), %rax
	movq	%rax, 120(%rsp)
	leaq	136(%r13), %rax
	movq	%rax, 112(%rsp)
	leaq	312(%r13), %rax
	movq	%rax, 168(%rsp)
	leaq	48(%r13), %rax
	movq	%rax, 160(%rsp)
	leaq	72(%r13), %rax
	movq	%rax, 104(%rsp)
	leaq	272(%r13), %rax
	movq	%rax, 144(%rsp)
	leaq	16(%r13), %rax
	movq	%rax, 152(%rsp)
	leaq	40(%r13), %rax
	movq	%rax, 96(%rsp)
	leaq	248(%r13), %rax
	movq	%rax, 136(%rsp)
	movq	64(%rsp), %rax
	movq	152(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, 80(%rsp)
	jmp	.LBB8_6
.LBB8_3:
	movq	(%rsp), %r13
	movq	264(%r13), %rsi
.LBB8_4:
	movq	248(%r13), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r13)
	.p2align	4, 0x90
.LBB8_5:
	incq	%r15
	movq	128(%rsp), %rsi
	cmpq	%r15, %rsi
	je	.LBB8_37
.LBB8_6:
	movl	%r15d, %edi
	cmpq	%rsi, %rdi
	jae	.LBB8_65
	imulq	$152, %rdi, %rsi
	movq	296(%r13), %rax
	movq	8(%rsp), %rcx
	movq	136(%rcx,%rsi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB8_5
	movq	8(%rsp), %rdx
	movq	128(%rdx,%rsi), %r14
	testq	%r14, %r14
	je	.LBB8_5
	shlq	$4, %rax
	cmpq	$0, (%r14,%rax)
	je	.LBB8_5
	movq	304(%r13), %r12
	cmpq	%r12, %rcx
	jbe	.LBB8_5
	shlq	$4, %r12
	cmpq	$0, (%r14,%r12)
	je	.LBB8_5
	movq	8(%rsp), %rcx
	movq	%rsi, 88(%rsp)
	movq	96(%rcx,%rsi), %rcx
	movq	8(%r14,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 176(%rsp)
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rbx
.Ltmp10:
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp11:
	movq	%r13, 48(%rsp)
	movq	72(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB8_66
	movq	%rbx, %rsi
	movq	%r13, %rbp
	shrq	$5, %rbp
	movl	$1, %ebx
	movl	%r13d, %ecx
	shll	%cl, %ebx
	movq	80(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
.Ltmp12:
	movq	120(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp13:
	movq	%r13, 48(%rsp)
	movq	112(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB8_67
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
	leaq	(%r14,%r12), %rax
	cmpq	$0, (%rax)
	movq	80(%rsp), %rdx
	je	.LBB8_20
	movq	8(%r14,%r12), %rax
	shlq	$4, %rax
	movq	176(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
.Ltmp14:
	movq	%rdx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%r13, 48(%rsp)
	movq	72(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB8_66
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	80(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r13
	orl	%eax, (%rcx,%r13,4)
.LBB8_20:
.Ltmp16:
	movq	8(%rsp), %rax
	movq	88(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	168(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp17:
	movq	8(%rsp), %rax
	movq	88(%rsp), %rcx
	movl	144(%rax,%rcx), %ebp
	movq	%rbp, %r14
	shrq	$5, %r14
	movq	(%rsp), %r13
	cmpq	64(%r13), %r14
	jae	.LBB8_24
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.LBB8_24
	movl	(%rax,%r14,4), %eax
	btl	%ebp, %eax
	jb	.LBB8_30
.LBB8_24:
	leaq	1(%rbp), %rsi
.Ltmp18:
	movq	160(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp19:
	movq	%rbp, 48(%rsp)
	movq	104(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB8_69
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r13
	movq	48(%r13), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	288(%r13), %rsi
	cmpq	280(%r13), %rsi
	jne	.LBB8_29
.Ltmp20:
	movq	144(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp21:
	movq	(%rsp), %r13
	movq	288(%r13), %rsi
.LBB8_29:
	movq	272(%r13), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r13)
	movq	88(%rsp), %rcx
.LBB8_30:
	movq	8(%rsp), %rax
	movl	148(%rax,%rcx), %ebp
	movq	%rbp, %rbx
	shrq	$5, %rbx
	cmpq	32(%r13), %rbx
	jae	.LBB8_33
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB8_33
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB8_5
.LBB8_33:
	leaq	1(%rbp), %rsi
.Ltmp22:
	movq	152(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp23:
	movq	%rbp, 48(%rsp)
	movq	96(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB8_70
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r13
	movq	16(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r13), %rsi
	cmpq	256(%r13), %rsi
	jne	.LBB8_4
.Ltmp27:
	movq	136(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp28:
	jmp	.LBB8_3
.LBB8_37:
	movq	296(%r13), %r8
	movq	304(%r13), %rax
	movq	64(%rsp), %r9
	movq	264(%r9), %rdx
	movq	280(%r9), %rdi
	xorl	%ecx, %ecx
	cmpq	%r8, %rdi
	jbe	.LBB8_41
	testq	%rdx, %rdx
	je	.LBB8_41
	shlq	$4, %r8
	cmpq	$0, (%rdx,%r8)
	je	.LBB8_45
	movq	8(%rdx,%r8), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r9), %rcx
.LBB8_41:
	xorl	%r15d, %r15d
	cmpq	%rax, %rdi
	jbe	.LBB8_47
.LBB8_42:
	testq	%rdx, %rdx
	je	.LBB8_47
	shlq	$4, %rax
	cmpq	$0, (%rdx,%rax)
	je	.LBB8_46
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,8), %r15
	shlq	$4, %r15
	movq	64(%rsp), %rax
	addq	216(%rax), %r15
	jmp	.LBB8_47
.LBB8_45:
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	cmpq	%rax, %rdi
	ja	.LBB8_42
	jmp	.LBB8_47
.LBB8_46:
	xorl	%r15d, %r15d
.LBB8_47:
	movq	64(%rsp), %rdx
	movl	760(%rdx), %eax
	movl	%eax, 8(%rsp)
	movq	272(%r13), %r8
	movq	288(%r13), %rax
	leaq	(%r8,%rax,4), %r9
	movq	152(%rdx), %r10
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.8(%rip), %rdi
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB8_50
	.p2align	4, 0x90
.LBB8_48:
	xorl	%r13d, %r13d
.LBB8_49:
	incq	%r12
	movss	(%r13), %xmm0
	movl	8(%rsp), %esi
	movl	%esi, (%rax)
	addss	(%rdx), %xmm0
	movss	%xmm0, (%rdx)
	movq	(%rsp), %r13
	movq	128(%rsp), %rsi
.LBB8_50:
	cmpq	%rbx, %r12
	jne	.LBB8_54
	.p2align	4, 0x90
.LBB8_51:
	cmpq	%r9, %r8
	je	.LBB8_64
	movl	(%r8), %edx
	addq	$4, %r8
	imulq	$152, %rdx, %rax
	addq	%r10, %rax
	cmpq	%rdx, %rsi
	cmovbeq	%r11, %rax
	movq	88(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_51
	movq	72(%rax), %rdi
	xorl	%r12d, %r12d
.LBB8_54:
	leaq	(%r12,%r12,2), %rax
	movl	4(%rdi,%rax,4), %r14d
	cmpq	%r14, 136(%rcx)
	jbe	.LBB8_58
	movq	120(%rcx), %r13
	movl	$0, %edx
	testq	%r13, %r13
	je	.LBB8_59
	cmpl	$0, (%r13,%r14,8)
	je	.LBB8_58
	movl	4(%r13,%r14,8), %eax
	movq	8(%rcx), %rdx
	imulq	%rax, %rdx
	addq	16(%rcx), %rdx
	shlq	$2, %rax
	addq	72(%rcx), %rax
	jmp	.LBB8_59
	.p2align	4, 0x90
.LBB8_58:
	xorl	%edx, %edx
.LBB8_59:
	cmpq	%r14, 136(%r15)
	jbe	.LBB8_48
	movq	120(%r15), %rbp
	movl	$0, %r13d
	testq	%rbp, %rbp
	je	.LBB8_49
	cmpl	$0, (%rbp,%r14,8)
	je	.LBB8_48
	movl	4(%rbp,%r14,8), %r13d
	imulq	8(%r15), %r13
	addq	16(%r15), %r13
	jmp	.LBB8_49
.LBB8_64:
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
.LBB8_65:
	.cfi_def_cfa_offset 288
.Ltmp8:
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.15(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp9:
	jmp	.LBB8_74
.LBB8_66:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	72(%rsp), %rcx
	jmp	.LBB8_68
.LBB8_67:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	112(%rsp), %rcx
.LBB8_68:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.6(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.7(%rip), %rsi
	jmp	.LBB8_72
.LBB8_69:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	104(%rsp), %rcx
	jmp	.LBB8_71
.LBB8_70:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	96(%rsp), %rcx
.LBB8_71:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.2(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.4(%rip), %rsi
.LBB8_72:
	movl	$2, %eax
	leaq	16(%rsp), %rcx
.LBB8_73:
	leaq	184(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rax, 24(%rdi)
.Ltmp24:
	movq	(%rsp), %r13
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp25:
.LBB8_74:
	ud2
.LBB8_75:
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
	jmp	.LBB8_73
.LBB8_76:
.Ltmp29:
	movq	%rax, %r14
	movq	(%rsp), %r13
	jmp	.LBB8_78
.LBB8_77:
.Ltmp26:
	movq	%rax, %r14
.LBB8_78:
.Ltmp30:
	movq	%r13, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_iter_sparse::A,&query_state_iter_sparse::B)>>
.Ltmp31:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB8_80:
.Ltmp32:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end8:
	.size	query_iter, .Lfunc_end8-query_iter
	.cfi_endproc
	.section	.gcc_except_table.query_iter,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp28-.Ltmp10
	.uleb128 .Ltmp29-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin1
	.uleb128 .Ltmp8-.Ltmp28
	.byte	0
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Ltmp25-.Ltmp8
	.uleb128 .Ltmp26-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp30-.Lfunc_begin1
	.uleb128 .Ltmp31-.Ltmp30
	.uleb128 .Ltmp32-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp31-.Lfunc_begin1
	.uleb128 .Lfunc_end8-.Ltmp31
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
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
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000!\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.15, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

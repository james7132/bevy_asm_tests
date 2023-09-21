	.text
	.file	"query_state_for_each.d4b616e02f9ccc6f-cgu.0"
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

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>,@function
core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>:
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
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>","a",@progbits
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

	.section	.text.query_state_for_each,"ax",@progbits
	.globl	query_state_for_each
	.p2align	4, 0x90
	.type	query_state_for_each,@function
query_state_for_each:
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
	jne	.LBB8_1
	movq	%rdi, %r15
	movq	%rsi, 96(%rsp)
	movq	168(%rsi), %r8
	movq	8(%rdi), %r13
	movq	%r8, 8(%rdi)
	cmpq	%r8, %r13
	jae	.LBB8_48
	leaq	80(%r15), %rax
	movq	%rax, 80(%rsp)
	leaq	104(%r15), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%r15), %rax
	movq	%rax, 128(%rsp)
	leaq	136(%r15), %rax
	movq	%rax, 120(%rsp)
	leaq	312(%r15), %rax
	movq	%rax, 168(%rsp)
	leaq	48(%r15), %rax
	movq	%rax, 160(%rsp)
	leaq	72(%r15), %rax
	movq	%rax, 112(%rsp)
	leaq	272(%r15), %rax
	movq	%rax, 144(%rsp)
	leaq	16(%r15), %rax
	movq	%rax, 152(%rsp)
	leaq	40(%r15), %rax
	movq	%rax, 104(%rsp)
	leaq	248(%r15), %rax
	movq	%rax, 136(%rsp)
	movq	96(%rsp), %rax
	movq	152(%rax), %rdx
	movq	%r8, 88(%rsp)
	movq	%rdx, 8(%rsp)
	jmp	.LBB8_6
.LBB8_45:
	movq	(%rsp), %r15
	movq	264(%r15), %rsi
.LBB8_46:
	movq	88(%rsp), %r8
	movq	8(%rsp), %rdx
	movq	248(%r15), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r15)
	.p2align	4, 0x90
.LBB8_47:
	incq	%r13
	cmpq	%r13, %r8
	je	.LBB8_48
.LBB8_6:
	movl	%r13d, %edi
	cmpq	%r8, %rdi
	jae	.LBB8_7
	imulq	$152, %rdi, %rsi
	movq	296(%r15), %rax
	movq	136(%rdx,%rsi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB8_47
	movq	128(%rdx,%rsi), %rbx
	testq	%rbx, %rbx
	je	.LBB8_47
	shlq	$4, %rax
	cmpq	$0, (%rbx,%rax)
	je	.LBB8_47
	movq	304(%r15), %r12
	cmpq	%r12, %rcx
	jbe	.LBB8_47
	shlq	$4, %r12
	cmpq	$0, (%rbx,%r12)
	je	.LBB8_47
	movq	%rsi, 72(%rsp)
	movq	96(%rdx,%rsi), %rcx
	movq	8(%rbx,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 176(%rsp)
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %r15
.Ltmp10:
	movq	80(%rsp), %rdi
	movq	%r15, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp11:
	movq	%r14, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB8_15
	movq	%r15, %rsi
	movq	%r14, %rbp
	shrq	$5, %rbp
	movl	$1, %r15d
	movl	%r14d, %ecx
	shll	%cl, %r15d
	movq	80(%rsp), %rax
	movq	(%rax), %rax
	orl	%r15d, (%rax,%rbp,4)
.Ltmp12:
	movq	128(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp13:
	movq	%r14, 48(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB8_20
	movq	128(%rsp), %rax
	movq	(%rax), %rax
	orl	%r15d, (%rax,%rbp,4)
	leaq	(%rbx,%r12), %rax
	cmpq	$0, (%rax)
	movq	80(%rsp), %rdx
	je	.LBB8_25
	movq	8(%rbx,%r12), %rax
	shlq	$4, %rax
	movq	176(%rsp), %rcx
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
.Ltmp14:
	movq	%rdx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%r14, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB8_15
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	80(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r14
	orl	%eax, (%rcx,%r14,4)
.LBB8_25:
.Ltmp16:
	movq	8(%rsp), %rax
	movq	72(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	168(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp17:
	movq	8(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	144(%rdx,%rcx), %ebp
	movq	%rbp, %rbx
	shrq	$5, %rbx
	movq	(%rsp), %r15
	cmpq	64(%r15), %rbx
	jae	.LBB8_35
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.LBB8_35
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB8_29
.LBB8_35:
	leaq	1(%rbp), %rsi
.Ltmp18:
	movq	160(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp19:
	movq	%rbp, 48(%rsp)
	movq	112(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB8_37
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r15
	movq	48(%r15), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	288(%r15), %rsi
	cmpq	280(%r15), %rsi
	jne	.LBB8_42
.Ltmp20:
	movq	144(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp21:
	movq	(%rsp), %r15
	movq	288(%r15), %rsi
.LBB8_42:
	movq	8(%rsp), %rdx
	movq	72(%rsp), %rcx
	movq	272(%r15), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r15)
.LBB8_29:
	movl	148(%rdx,%rcx), %ebp
	movq	%rbp, %rbx
	shrq	$5, %rbx
	cmpq	32(%r15), %rbx
	movq	88(%rsp), %r8
	jae	.LBB8_32
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB8_32
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB8_47
.LBB8_32:
	leaq	1(%rbp), %rsi
.Ltmp22:
	movq	152(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp23:
	movq	%rbp, 48(%rsp)
	movq	104(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB8_34
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	(%rsp), %r15
	movq	16(%r15), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r15), %rsi
	cmpq	256(%r15), %rsi
	jne	.LBB8_46
.Ltmp27:
	movq	136(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp28:
	jmp	.LBB8_45
.LBB8_48:
	movq	264(%r15), %rdx
	testq	%rdx, %rdx
	je	.LBB8_58
	movq	96(%rsp), %r9
	movl	760(%r9), %eax
	movq	(%rsp), %rdi
	movq	248(%rdi), %rcx
	leaq	(%rcx,%rdx,4), %rdx
	movq	296(%rdi), %rsi
	movq	304(%rdi), %rdi
	movq	288(%r9), %r8
	movq	304(%r9), %r9
	xorl	%r10d, %r10d
	shlq	$4, %rsi
	shlq	$4, %rdi
	jmp	.LBB8_51
	.p2align	4, 0x90
.LBB8_50:
	cmpq	%rdx, %rcx
	je	.LBB8_58
.LBB8_51:
	movl	(%rcx), %r11d
	addq	$4, %rcx
	cmpq	%r11, %r9
	leaq	(%r11,%r11,8), %r11
	leaq	(%r8,%r11,8), %rbx
	cmovbeq	%r10, %rbx
	movq	64(%rbx), %r11
	testq	%r11, %r11
	je	.LBB8_50
	movq	(%rbx), %r15
	movq	32(%rbx), %r12
	movq	8(%r12,%rsi), %rbx
	leaq	(%rbx,%rbx,2), %r14
	shlq	$5, %r14
	movq	16(%r15,%r14), %rbx
	movq	72(%r15,%r14), %r14
	movq	8(%r12,%rdi), %r12
	leaq	(%r12,%r12,2), %r12
	shlq	$5, %r12
	movq	16(%r15,%r12), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB8_53:
	movl	%r12d, %r13d
	shlq	$2, %r13
	movss	(%r15,%r13), %xmm0
	movl	%eax, (%r14,%r13)
	addss	(%rbx,%r13), %xmm0
	leaq	1(%r12), %rbp
	movss	%xmm0, (%rbx,%r13)
	movq	%rbp, %r12
	cmpq	%rbp, %r11
	jne	.LBB8_53
	jmp	.LBB8_50
.LBB8_58:
	movq	(%rsp), %rdi
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
	jmp	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>
.LBB8_7:
	.cfi_def_cfa_offset 288
.Ltmp8:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14(%rip), %rdx
	movq	%r8, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp9:
	jmp	.LBB8_3
.LBB8_15:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rcx
	jmp	.LBB8_16
.LBB8_20:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rcx
.LBB8_16:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7(%rip), %rsi
	jmp	.LBB8_17
.LBB8_37:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	112(%rsp), %rcx
	jmp	.LBB8_38
.LBB8_34:
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	104(%rsp), %rcx
.LBB8_38:
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4(%rip), %rsi
.LBB8_17:
	movl	$2, %eax
	leaq	16(%rsp), %rcx
.LBB8_2:
	leaq	184(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rax, 24(%rdi)
.Ltmp24:
	movq	(%rsp), %r15
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp25:
.LBB8_3:
	ud2
.LBB8_1:
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$92, 24(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13(%rip), %rsi
	movl	$1, %eax
	leaq	48(%rsp), %rcx
	jmp	.LBB8_2
.LBB8_54:
.Ltmp29:
	movq	%rax, %r14
	movq	(%rsp), %r15
	jmp	.LBB8_56
.LBB8_55:
.Ltmp26:
	movq	%rax, %r14
.LBB8_56:
.Ltmp30:
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A,&query_state_for_each::B)>>
.Ltmp31:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB8_59:
.Ltmp32:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end8:
	.size	query_state_for_each, .Lfunc_end8-query_state_for_each
	.cfi_endproc
	.section	.gcc_except_table.query_state_for_each,"a",@progbits
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

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.0,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.0:
	.ascii	"set at index "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0, 13

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.1,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.2:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.2, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.3,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3, 93

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.4:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.4, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.6dae6fee9a6576153fd5b36d700139f2.5:
	.ascii	"insert at index "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5, 16

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.6:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.6, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.7:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.7, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.8,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.8:
	.ascii	"Attempted to use "
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8, 17

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.9,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.9:
	.ascii	" with a mismatched World. QueryStates can only be used with the World they were created from."
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9, 93

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.10:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.8
	.asciz	"\021\000\000\000\000\000\000"
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.9
	.asciz	"]\000\000\000\000\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.10, 32

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.11,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.11:
	.ascii	"bevy_ecs::query::state::QueryState<(&mut query_state_for_each::A, &query_state_for_each::B)>"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.11, 92

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12,@object
	.section	.rodata..Lanon.6dae6fee9a6576153fd5b36d700139f2.12,"a",@progbits
.Lanon.6dae6fee9a6576153fd5b36d700139f2.12:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12, 97

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.13:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12
	.asciz	"a\000\000\000\000\000\000\000\344\000\000\000\t\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.13, 24

	.type	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14,@object
	.section	.data.rel.ro..Lanon.6dae6fee9a6576153fd5b36d700139f2.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.6dae6fee9a6576153fd5b36d700139f2.14:
	.quad	.Lanon.6dae6fee9a6576153fd5b36d700139f2.12
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000!\000\000"
	.size	.Lanon.6dae6fee9a6576153fd5b36d700139f2.14, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

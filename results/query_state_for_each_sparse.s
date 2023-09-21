	.text
	.file	"query_state_for_each_sparse.6d9d99475cb59000-cgu.0"
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
	je	.LBB0_2
	movq	24(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_2:
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_4
	movq	56(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_4:
	movq	(%rbx), %r14
	movq	16(%rbx), %r15
	testq	%r15, %r15
	je	.LBB0_11
	leaq	40(%r14), %r12
	movq	__rust_dealloc@GOTPCREL(%rip), %r13
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_10:
	addq	$64, %r12
	decq	%r15
	je	.LBB0_11
.LBB0_6:
	movq	-32(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB0_8
	movq	-40(%r12), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*%r13
.LBB0_8:
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB0_10
	movq	-8(%r12), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*%r13
	jmp	.LBB0_10
.LBB0_11:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_12
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
.LBB0_12:
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
.Lfunc_end0:
	.size	core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>, .Lfunc_end0-core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>,@function
core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>:
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
	je	.LBB1_2
	movq	16(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_2:
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_4
	movq	48(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_4:
	movq	88(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_6
	movq	80(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_6:
	movq	120(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_8
	movq	112(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_8:
	leaq	152(%rbx), %rdi
.Ltmp0:
	callq	core::ptr::drop_in_place<bevy_ecs::query::access::FilteredAccess<bevy_ecs::component::ComponentId>>
.Ltmp1:
	movq	256(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_11
	movq	248(%rbx), %rdi
	shlq	$2, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_11:
	movq	280(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_16
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
.LBB1_16:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_13:
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
.LBB1_17:
.Ltmp7:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end1:
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
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
	.uleb128 .Lfunc_end1-.Ltmp6
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
	je	.LBB2_1
	shlq	$2, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_1:
	retq
.Lfunc_end2:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>, .Lfunc_end2-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::archetype::ArchetypeId>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB3_1
	shlq	$2, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_1:
	retq
.Lfunc_end3:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>, .Lfunc_end3-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::storage::table::TableId>>
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
	je	.LBB4_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB4_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB4_11
.LBB4_4:
	movq	%r15, 8(%r14)
	jmp	.LBB4_5
.LBB4_7:
	testq	%rbx, %rbx
	je	.LBB4_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB4_4
.LBB4_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB4_12
.LBB4_6:
	movq	$0, 8(%r14)
.LBB4_5:
	movl	$1, %eax
.LBB4_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB4_11
	jmp	.LBB4_4
.Lfunc_end4:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end4-alloc::raw_vec::finish_grow
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

	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
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
	movq	%rsi, %rax
	movq	%rdi, %r13
	movq	752(%rsi), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB7_5
	movq	%rax, 112(%rsp)
	movq	168(%rax), %rsi
	movq	8(%r13), %r15
	movq	%rsi, 8(%r13)
	cmpq	%rsi, %r15
	movq	%r13, 8(%rsp)
	movq	%rsi, 88(%rsp)
	jae	.LBB7_47
	leaq	80(%r13), %rcx
	leaq	104(%r13), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%r13), %rax
	movq	%rax, 128(%rsp)
	leaq	136(%r13), %rax
	movq	%rax, 120(%rsp)
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
	movq	112(%rsp), %rax
	movq	152(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rcx, 72(%rsp)
	jmp	.LBB7_3
.LBB7_44:
	movq	8(%rsp), %r13
	movq	264(%r13), %rsi
.LBB7_45:
	movq	248(%r13), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%r13)
	movq	88(%rsp), %rsi
	.p2align	4, 0x90
.LBB7_46:
	incq	%r15
	cmpq	%r15, %rsi
	je	.LBB7_47
.LBB7_3:
	movl	%r15d, %edi
	cmpq	%rsi, %rdi
	jae	.LBB7_4
	imulq	$152, %rdi, %rdi
	movq	296(%r13), %rax
	movq	24(%rsp), %rcx
	movq	136(%rcx,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB7_46
	movq	24(%rsp), %rdx
	movq	128(%rdx,%rdi), %r14
	testq	%r14, %r14
	je	.LBB7_46
	shlq	$4, %rax
	cmpq	$0, (%r14,%rax)
	je	.LBB7_46
	movq	304(%r13), %r12
	cmpq	%r12, %rcx
	jbe	.LBB7_46
	shlq	$4, %r12
	cmpq	$0, (%r14,%r12)
	je	.LBB7_46
	movq	24(%rsp), %rcx
	movq	%rdi, 80(%rsp)
	movq	96(%rcx,%rdi), %rcx
	movq	8(%r14,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 176(%rsp)
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rbx
.Ltmp12:
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp13:
	movq	%r13, 16(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB7_14
	movq	%rbx, %rsi
	movq	%r13, %rbp
	shrq	$5, %rbp
	movl	$1, %ebx
	movl	%r13d, %ecx
	shll	%cl, %ebx
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
.Ltmp14:
	movq	128(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%r13, 16(%rsp)
	movq	120(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB7_19
	movq	128(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%rbp,4)
	leaq	(%r14,%r12), %rax
	cmpq	$0, (%rax)
	movq	72(%rsp), %rdx
	je	.LBB7_24
	movq	8(%r14,%r12), %rax
	shlq	$4, %rax
	movq	176(%rsp), %rcx
	movq	(%rcx,%rax), %r13
	leaq	1(%r13), %rsi
.Ltmp16:
	movq	%rdx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp17:
	movq	%r13, 16(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r13, (%rax)
	jbe	.LBB7_14
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movq	72(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r13
	orl	%eax, (%rcx,%r13,4)
.LBB7_24:
.Ltmp18:
	movq	24(%rsp), %rax
	movq	80(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	168(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp19:
	movq	24(%rsp), %rax
	movq	80(%rsp), %rcx
	movl	144(%rax,%rcx), %ebp
	movq	%rbp, %r14
	shrq	$5, %r14
	movq	8(%rsp), %r13
	cmpq	64(%r13), %r14
	jae	.LBB7_34
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.LBB7_34
	movl	(%rax,%r14,4), %eax
	btl	%ebp, %eax
	jb	.LBB7_28
.LBB7_34:
	leaq	1(%rbp), %rsi
.Ltmp20:
	movq	160(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp21:
	movq	%rbp, 16(%rsp)
	movq	104(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB7_36
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	8(%rsp), %r13
	movq	48(%r13), %rcx
	orl	%eax, (%rcx,%r14,4)
	movq	288(%r13), %rsi
	cmpq	280(%r13), %rsi
	jne	.LBB7_41
.Ltmp22:
	movq	144(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp23:
	movq	8(%rsp), %r13
	movq	288(%r13), %rsi
.LBB7_41:
	movq	272(%r13), %rax
	movl	%ebp, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%r13)
	movq	80(%rsp), %rcx
.LBB7_28:
	movq	24(%rsp), %rax
	movl	148(%rax,%rcx), %ebp
	movq	%rbp, %rbx
	shrq	$5, %rbx
	cmpq	32(%r13), %rbx
	movq	88(%rsp), %rsi
	jae	.LBB7_31
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB7_31
	movl	(%rax,%rbx,4), %eax
	btl	%ebp, %eax
	jb	.LBB7_46
.LBB7_31:
	leaq	1(%rbp), %rsi
.Ltmp24:
	movq	152(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp25:
	movq	%rbp, 16(%rsp)
	movq	96(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB7_33
	movl	$1, %eax
	movl	%ebp, %ecx
	shll	%cl, %eax
	movq	8(%rsp), %r13
	movq	16(%r13), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%r13), %rsi
	cmpq	256(%r13), %rsi
	jne	.LBB7_45
.Ltmp29:
	movq	136(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp30:
	jmp	.LBB7_44
.LBB7_47:
	movq	296(%r13), %rcx
	movq	304(%r13), %rdx
	movq	112(%rsp), %r8
	movq	264(%r8), %rsi
	movq	280(%r8), %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jbe	.LBB7_52
	testq	%rsi, %rsi
	je	.LBB7_52
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB7_50
	movq	8(%rsi,%rcx), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	addq	216(%r8), %rax
.LBB7_52:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	jbe	.LBB7_57
.LBB7_53:
	testq	%rsi, %rsi
	je	.LBB7_57
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB7_55
	movq	8(%rsi,%rdx), %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	addq	216(%r8), %rcx
	jmp	.LBB7_57
.LBB7_50:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, %rdi
	ja	.LBB7_53
	jmp	.LBB7_57
.LBB7_55:
	xorl	%ecx, %ecx
.LBB7_57:
	movq	288(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB7_67
	movl	760(%r8), %edx
	movq	8(%rsp), %rsi
	movq	272(%rsi), %rsi
	leaq	(%rsi,%rdi,4), %rdi
	movq	152(%r8), %r8
	jmp	.LBB7_60
	.p2align	4, 0x90
.LBB7_59:
	cmpq	%rdi, %rsi
	je	.LBB7_67
.LBB7_60:
	movl	(%rsi), %r10d
	addq	$4, %rsi
	imulq	$152, %r10, %r11
	addq	%r8, %r11
	cmpq	%r10, 88(%rsp)
	movl	$0, %r9d
	cmovbeq	%r9, %r11
	movq	88(%r11), %r10
	testq	%r10, %r10
	je	.LBB7_59
	movq	72(%r11), %r11
	addq	$4, %r11
	.p2align	4, 0x90
.LBB7_62:
	movl	(%r11), %ebx
	movq	120(%rax), %r14
	movl	4(%r14,%rbx,8), %r14d
	movq	8(%rax), %r15
	imulq	%r14, %r15
	movq	16(%rax), %r12
	movq	72(%rax), %r13
	movq	16(%rcx), %rbp
	movq	120(%rcx), %r9
	movl	4(%r9,%rbx,8), %r9d
	imulq	8(%rcx), %r9
	movss	(%rbp,%r9), %xmm0
	movl	%edx, (%r13,%r14,4)
	addss	(%r12,%r15), %xmm0
	movss	%xmm0, (%r12,%r15)
	addq	$12, %r11
	decq	%r10
	jne	.LBB7_62
	jmp	.LBB7_59
.LBB7_67:
	movq	8(%rsp), %rdi
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
	jmp	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>
.LBB7_4:
	.cfi_def_cfa_offset 288
.Ltmp10:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp11:
	jmp	.LBB7_6
.LBB7_14:
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rcx
	jmp	.LBB7_15
.LBB7_19:
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	120(%rsp), %rcx
.LBB7_15:
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7(%rip), %rsi
	jmp	.LBB7_16
.LBB7_36:
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	104(%rsp), %rcx
	jmp	.LBB7_37
.LBB7_33:
	leaq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	96(%rsp), %rcx
.LBB7_37:
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2(%rip), %rax
	movq	%rax, 184(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4(%rip), %rsi
.LBB7_16:
	leaq	32(%rsp), %rax
	leaq	184(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rax, 16(%rdi)
	movq	$2, 24(%rdi)
.Ltmp26:
	movq	8(%rsp), %r13
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp27:
	jmp	.LBB7_6
.LBB7_5:
.Ltmp8:
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<Q,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.Ltmp9:
.LBB7_6:
	ud2
.LBB7_63:
.Ltmp31:
	movq	%rax, %r14
	movq	8(%rsp), %r13
	jmp	.LBB7_65
.LBB7_64:
.Ltmp28:
	movq	%rax, %r14
.LBB7_65:
.Ltmp32:
	movq	%r13, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_for_each_sparse::A,&query_state_for_each_sparse::B)>>
.Ltmp33:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB7_68:
.Ltmp34:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end7:
	.size	query_for_each, .Lfunc_end7-query_for_each
	.cfi_endproc
	.section	.gcc_except_table.query_for_each,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp30-.Ltmp12
	.uleb128 .Ltmp31-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp30-.Lfunc_begin1
	.uleb128 .Ltmp10-.Ltmp30
	.byte	0
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp9-.Ltmp10
	.uleb128 .Ltmp28-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin1
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp33-.Lfunc_begin1
	.uleb128 .Lfunc_end7-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.0,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0:
	.ascii	"set at index "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0, 13

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.1,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1:
	.ascii	" exceeds fixbitset size "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0
	.asciz	"\r\000\000\000\000\000\000"
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2, 32

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.3,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/fixedbitset-0.4.2/src/lib.rs"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3, 93

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3
	.asciz	"]\000\000\000\000\000\000\000\002\001\000\000\t\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5:
	.ascii	"insert at index "
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5, 16

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.5
	.asciz	"\020\000\000\000\000\000\000"
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1
	.asciz	"\030\000\000\000\000\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.6, 32

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3
	.asciz	"]\000\000\000\000\000\000\000\320\000\000\000\t\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.7, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.8,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-41530a2346942c86/c9f9133/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8, 97

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000!\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.9, 24

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.8
	.asciz	"a\000\000\000\000\000\000\000\321\000\000\000\016\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.10, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

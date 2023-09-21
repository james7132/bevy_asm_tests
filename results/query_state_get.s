	.text
	.file	"query_state_get.202507d028312342-cgu.0"
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

	.section	".text.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>,@function
core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>:
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
	.size	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>","a",@progbits
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

	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
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
	movq	%rdi, %rbp
	movq	752(%rcx), %rsi
	movq	(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB7_5
	movq	%rcx, 112(%rsp)
	movq	168(%rcx), %rsi
	movq	8(%rbp), %r15
	movq	%rsi, 8(%rbp)
	cmpq	%rsi, %r15
	jae	.LBB7_47
	leaq	80(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	104(%rbp), %rax
	movq	%rax, 64(%rsp)
	leaq	112(%rbp), %rax
	movq	%rax, 136(%rsp)
	leaq	136(%rbp), %rax
	movq	%rax, 120(%rsp)
	leaq	312(%rbp), %rax
	movq	%rax, 232(%rsp)
	leaq	48(%rbp), %rax
	movq	%rax, 224(%rsp)
	leaq	72(%rbp), %rax
	movq	%rax, 104(%rsp)
	leaq	272(%rbp), %rax
	movq	%rax, 200(%rsp)
	leaq	16(%rbp), %rax
	movq	%rax, 216(%rsp)
	leaq	40(%rbp), %rax
	movq	%rax, 96(%rsp)
	leaq	248(%rbp), %rax
	movq	%rax, 192(%rsp)
	movq	112(%rsp), %rax
	movq	152(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rsi, 128(%rsp)
	jmp	.LBB7_3
.LBB7_44:
	movq	16(%rsp), %rbp
	movq	264(%rbp), %rsi
.LBB7_45:
	movq	248(%rbp), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 264(%rbp)
	movq	128(%rsp), %rsi
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
	movq	296(%rbp), %rax
	movq	24(%rsp), %rcx
	movq	136(%rcx,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB7_46
	movq	24(%rsp), %rdx
	movq	128(%rdx,%rdi), %r12
	testq	%r12, %r12
	je	.LBB7_46
	shlq	$4, %rax
	cmpq	$0, (%r12,%rax)
	je	.LBB7_46
	movq	304(%rbp), %r13
	cmpq	%r13, %rcx
	jbe	.LBB7_46
	shlq	$4, %r13
	cmpq	$0, (%r12,%r13)
	je	.LBB7_46
	movq	24(%rsp), %rcx
	movq	%rdi, 80(%rsp)
	movq	96(%rcx,%rdi), %rcx
	movq	8(%r12,%rax), %rax
	shlq	$4, %rax
	movq	%rcx, 240(%rsp)
	movq	(%rcx,%rax), %rbp
	leaq	1(%rbp), %rbx
.Ltmp12:
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp13:
	movq	%rbp, 8(%rsp)
	movq	64(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB7_14
	movq	%rbx, %rsi
	movq	%rbp, %r14
	shrq	$5, %r14
	movl	$1, %ebx
	movl	%ebp, %ecx
	shll	%cl, %ebx
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r14,4)
.Ltmp14:
	movq	136(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp15:
	movq	%rbp, 8(%rsp)
	movq	120(%rsp), %rax
	cmpq	%rbp, (%rax)
	jbe	.LBB7_19
	movq	136(%rsp), %rax
	movq	(%rax), %rax
	orl	%ebx, (%rax,%r14,4)
	leaq	(%r12,%r13), %rax
	cmpq	$0, (%rax)
	movq	72(%rsp), %rdx
	je	.LBB7_24
	movq	8(%r12,%r13), %rax
	shlq	$4, %rax
	movq	240(%rsp), %rcx
	movq	(%rcx,%rax), %r14
	leaq	1(%r14), %rsi
.Ltmp16:
	movq	%rdx, %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp17:
	movq	%r14, 8(%rsp)
	movq	64(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB7_14
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	72(%rsp), %rdx
	movq	(%rdx), %rcx
	shrq	$5, %r14
	orl	%eax, (%rcx,%r14,4)
.LBB7_24:
.Ltmp18:
	movq	24(%rsp), %rax
	movq	80(%rsp), %rcx
	leaq	(%rax,%rcx), %rsi
	movq	232(%rsp), %rdi
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::update_archetype_component_access@GOTPCREL(%rip)
.Ltmp19:
	movq	24(%rsp), %rax
	movq	80(%rsp), %rcx
	movl	144(%rax,%rcx), %r14d
	movq	%r14, %r12
	shrq	$5, %r12
	movq	16(%rsp), %rbp
	cmpq	64(%rbp), %r12
	jae	.LBB7_34
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB7_34
	movl	(%rax,%r12,4), %eax
	btl	%r14d, %eax
	jb	.LBB7_28
.LBB7_34:
	leaq	1(%r14), %rsi
.Ltmp20:
	movq	224(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp21:
	movq	%r14, 8(%rsp)
	movq	104(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB7_36
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	16(%rsp), %rbp
	movq	48(%rbp), %rcx
	orl	%eax, (%rcx,%r12,4)
	movq	288(%rbp), %rsi
	cmpq	280(%rbp), %rsi
	jne	.LBB7_41
.Ltmp22:
	movq	200(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp23:
	movq	16(%rsp), %rbp
	movq	288(%rbp), %rsi
.LBB7_41:
	movq	272(%rbp), %rax
	movl	%r14d, (%rax,%rsi,4)
	incq	%rsi
	movq	%rsi, 288(%rbp)
	movq	80(%rsp), %rcx
.LBB7_28:
	movq	24(%rsp), %rax
	movl	148(%rax,%rcx), %r14d
	movq	%r14, %rbx
	shrq	$5, %rbx
	cmpq	32(%rbp), %rbx
	movq	128(%rsp), %rsi
	jae	.LBB7_31
	movq	16(%rbp), %rax
	testq	%rax, %rax
	je	.LBB7_31
	movl	(%rax,%rbx,4), %eax
	btl	%r14d, %eax
	jb	.LBB7_46
.LBB7_31:
	leaq	1(%r14), %rsi
.Ltmp24:
	movq	216(%rsp), %rdi
	callq	*fixedbitset::FixedBitSet::grow@GOTPCREL(%rip)
.Ltmp25:
	movq	%r14, 8(%rsp)
	movq	96(%rsp), %rax
	cmpq	%r14, (%rax)
	jbe	.LBB7_33
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movq	16(%rsp), %rbp
	movq	16(%rbp), %rcx
	orl	%eax, (%rcx,%rbx,4)
	movq	264(%rbp), %rsi
	cmpq	256(%rbp), %rsi
	jne	.LBB7_45
.Ltmp29:
	movq	192(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp30:
	jmp	.LBB7_44
.LBB7_47:
	movq	112(%rsp), %rbx
	movl	760(%rbx), %eax
	movl	764(%rbx), %ecx
	movl	92(%rsp), %edx
	cmpq	%rdx, 16(%rbx)
	movq	208(%rsp), %r11
	jbe	.LBB7_58
	movq	(%rbx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	cmpl	%r11d, (%rsi,%rdi,4)
	jne	.LBB7_58
	movl	4(%rsi,%rdi,4), %r8d
	movl	$4294967295, %r9d
	cmpq	%r9, %r8
	je	.LBB7_58
	movq	%r8, %r9
	shrq	$5, %r9
	cmpq	64(%rbp), %r9
	jae	.LBB7_59
	movq	48(%rbp), %r10
	testq	%r10, %r10
	je	.LBB7_59
	movl	(%r10,%r9,4), %r9d
	btl	%r8d, %r9d
	jae	.LBB7_59
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
	jmp	.LBB7_61
.LBB7_58:
	shlq	$32, %r11
	orq	$1, %r11
.LBB7_60:
	xorl	%edi, %edi
.LBB7_61:
	movq	%rdi, 144(%rsp)
	movq	%r11, 152(%rsp)
	movq	%rdx, 160(%rsp)
	movl	%ecx, 168(%rsp)
	movl	%eax, 172(%rsp)
	movq	%rsi, 176(%rsp)
	leaq	144(%rsp), %rax
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
.LBB7_59:
	.cfi_def_cfa_offset 304
	shlq	$32, %r11
	jmp	.LBB7_60
.LBB7_4:
.Ltmp10:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp11:
	jmp	.LBB7_6
.LBB7_14:
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rcx
	jmp	.LBB7_15
.LBB7_19:
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	120(%rsp), %rcx
.LBB7_15:
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.6(%rip), %rax
	movq	%rax, 144(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.7(%rip), %rsi
	jmp	.LBB7_16
.LBB7_36:
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	104(%rsp), %rcx
	jmp	.LBB7_37
.LBB7_33:
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	96(%rsp), %rcx
.LBB7_37:
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.2(%rip), %rax
	movq	%rax, 144(%rsp)
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.4(%rip), %rsi
.LBB7_16:
	leaq	32(%rsp), %rax
	leaq	144(%rsp), %rdi
	movq	$2, 8(%rdi)
	movq	$0, 32(%rdi)
	movq	%rax, 16(%rdi)
	movq	$2, 24(%rdi)
.Ltmp26:
	movq	16(%rsp), %rbp
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Ltmp27:
	jmp	.LBB7_6
.LBB7_5:
.Ltmp8:
	leaq	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10(%rip), %rdx
	callq	*bevy_ecs::query::state::QueryState<Q,F>::validate_world::panic_mismatched@GOTPCREL(%rip)
.Ltmp9:
.LBB7_6:
	ud2
.LBB7_54:
.Ltmp31:
	movq	%rax, %r14
	movq	16(%rsp), %rbp
	jmp	.LBB7_56
.LBB7_55:
.Ltmp28:
	movq	%rax, %r14
.LBB7_56:
.Ltmp32:
	movq	%rbp, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::query::state::QueryState<(&mut query_state_get::A,&query_state_get::B)>>
.Ltmp33:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB7_62:
.Ltmp34:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end7:
	.size	query_get, .Lfunc_end7-query_get
	.cfi_endproc
	.section	.gcc_except_table.query_get,"a",@progbits
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
	.ascii	"/home/james/.cargo/git/checkouts/bevy-41530a2346942c86/c9f9133/crates/bevy_ecs/src/query/state.rs"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8, 97

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.9:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8
	.asciz	"a\000\000\000\000\000\000\000\330\000\000\000!\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.9, 24

	.type	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10,@object
	.section	.data.rel.ro..Lanon.161d7961c923b4e842c0f6e55225f2ee.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.161d7961c923b4e842c0f6e55225f2ee.10:
	.quad	.Lanon.161d7961c923b4e842c0f6e55225f2ee.8
	.asciz	"a\000\000\000\000\000\000\000\321\000\000\000\016\000\000"
	.size	.Lanon.161d7961c923b4e842c0f6e55225f2ee.10, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

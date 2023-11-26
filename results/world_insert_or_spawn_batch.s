	.text
	.file	"world_insert_or_spawn_batch.68ff602252dd4b2a-cgu.0"
	.section	".text.core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>,@function
core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB0_1
	shlq	$4, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_1:
	retq
.Lfunc_end0:
	.size	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>, .Lfunc_end0-core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>,@function
core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB1_1
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_1:
	retq
.Lfunc_end1:
	.size	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>,@function
core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.LBB2_2
	testq	%rsi, %rsi
	je	.LBB2_2
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_2:
	retq
.Lfunc_end2:
	.size	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB3_1
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_1:
	retq
.Lfunc_end3:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>, .Lfunc_end3-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB4_1
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB4_1:
	retq
.Lfunc_end4:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>, .Lfunc_end4-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB6_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB6_4
.LBB6_2:
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB7_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB7_4
.LBB7_2:
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
	je	.LBB8_10
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
	je	.LBB8_2
	movq	(%rbx), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB8_4
.LBB8_2:
	movq	$0, 16(%rsp)
.LBB8_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB8_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB8_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_5:
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
.LBB8_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB8_9
.LBB8_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB8_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end8:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end8-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	je	.LBB9_10
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
	je	.LBB9_2
	movq	(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB9_4
.LBB9_2:
	movq	$0, 16(%rsp)
.LBB9_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB9_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB9_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB9_5:
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
.LBB9_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB9_9
.LBB9_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB9_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end9:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end9-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	je	.LBB10_10
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
	je	.LBB10_2
	movq	(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB10_4
.LBB10_2:
	movq	$0, 16(%rsp)
.LBB10_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB10_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB10_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB10_5:
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
.LBB10_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB10_9
.LBB10_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB10_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end10:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end10-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	movq	%rdi, 32(%rsp)
	movss	%xmm1, 28(%rsp)
	je	.LBB11_4
	movq	%rdx, %r12
	movq	%rdx, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB11_29
	movq	24(%r14), %rbp
	movl	4(%r15), %edi
	movq	88(%rbp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB11_3
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
	je	.LBB11_42
	jbe	.LBB11_28
	addq	%rcx, %rax
	movq	(%rax), %r9
	movq	32(%r14), %r10
	movl	%r9d, %r11d
	movq	(%r10), %rax
	leaq	(%r11,%r11,4), %rcx
	cmpq	16(%r10), %r11
	jae	.LBB11_41
	shrq	$32, %r9
	cmpl	%r9d, (%rax,%rcx,4)
	jne	.LBB11_41
	movl	4(%rax,%rcx,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB11_39
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB11_41
.LBB11_4:
	movq	24(%r14), %rcx
	movq	40(%r14), %r13
	movq	24(%r13), %rax
	xorl	%r12d, %r12d
	cmpq	16(%rcx), %rax
	jae	.LBB11_7
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_7
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB11_7:
	movq	48(%r14), %rbp
	movl	12(%r15), %ebx
	movl	72(%r14), %eax
	movl	%eax, (%rsp)
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB11_12
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_12
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_10
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rbp), %r14
.LBB11_12:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB11_13
.LBB11_14:
	leaq	40(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB11_15
.LBB11_29:
	movq	24(%r14), %r13
	movl	4(%r15), %edi
	movq	88(%r13), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB11_3
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
	je	.LBB11_69
	jbe	.LBB11_28
	addq	%rcx, %rax
	movq	(%rax), %r8
	movq	32(%r14), %r10
	movl	%r8d, %r11d
	movq	(%r10), %rax
	leaq	(%r11,%r11,4), %rcx
	cmpq	16(%r10), %r11
	jae	.LBB11_68
	shrq	$32, %r8
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB11_68
	movl	4(%rax,%rcx,4), %ebp
	cmpl	$-1, %ebp
	je	.LBB11_35
	leaq	(%rax,%rcx,4), %r8
	addq	$4, %r8
	movl	8(%r8), %esi
	movl	12(%r8), %r9d
	jmp	.LBB11_68
.LBB11_10:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB11_14
.LBB11_13:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r14), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB11_15:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB11_16
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %r13
	je	.LBB11_21
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_19
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rbp), %r14
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_23
	jmp	.LBB11_22
.LBB11_16:
	movq	32(%rsp), %r13
.LBB11_21:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_22
.LBB11_23:
	leaq	40(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB11_24
.LBB11_19:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_23
.LBB11_22:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%rbx, %rdi
	addq	16(%r14), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%rbx,4)
.LBB11_24:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%rbx,4)
	movups	(%r15), %xmm0
	movups	%xmm0, (%r13)
	jmp	.LBB11_25
.LBB11_39:
.LBB11_41:
	movl	%r8d, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB11_42:
	movq	8(%r14), %r13
	movq	88(%r13), %rsi
	cmpq	80(%r13), %rsi
	movq	%rsi, 16(%rsp)
	jne	.LBB11_43
	leaq	72(%r13), %rdi
	movq	16(%rsp), %rsi
	movss	%xmm0, (%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	16(%rsp), %rsi
	movss	(%rsp), %xmm0
	movq	88(%r13), %rax
	jmp	.LBB11_45
.LBB11_43:
	movq	%rsi, %rax
.LBB11_45:
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
	movl	%edx, (%rsp)
	movl	%edi, 8(%rsp)
	jae	.LBB11_48
	movq	(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_48
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB11_48:
	movq	48(%r14), %rbp
	movl	72(%r14), %r14d
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rbp)
	jbe	.LBB11_53
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_53
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_51
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rbp), %rbx
.LBB11_53:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB11_54
.LBB11_55:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_56
.LBB11_51:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB11_55
.LBB11_54:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB11_56:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rbp)
	jbe	.LBB11_57
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %r13
	je	.LBB11_62
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_60
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rbp), %rbx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_64
	jmp	.LBB11_63
.LBB11_57:
	movq	32(%rsp), %r13
.LBB11_62:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_63
.LBB11_64:
	leaq	40(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_65
.LBB11_60:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_64
.LBB11_63:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	40(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB11_65:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	8(%rsp), %eax
	movl	%eax, (%r13)
	movq	16(%rsp), %rax
	movl	%eax, 4(%r13)
	movl	(%rsp), %eax
	jmp	.LBB11_66
.LBB11_35:
.LBB11_68:
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r9d, 16(%rax,%rcx,4)
.LBB11_69:
	movss	%xmm0, (%rsp)
	movq	16(%r14), %rcx
	movq	48(%r14), %rsi
	leaq	40(%rsp), %rdi
	movl	%edx, 8(%rsp)
	movq	%rcx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	8(%r14), %rbp
	movl	56(%rsp), %r15d
	movq	88(%rbp), %r8
	cmpq	80(%rbp), %r8
	jne	.LBB11_70
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
	jmp	.LBB11_72
.LBB11_70:
	movq	%r8, %rax
.LBB11_72:
	movss	(%rsp), %xmm0
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
	cmpq	$0, 40(%rsp)
	je	.LBB11_77
	movl	48(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r13, %rcx
	cmpl	%edx, 144(%r13)
	je	.LBB11_75
	imulq	$152, %rdx, %rcx
	addq	64(%r14), %rcx
	cmpl	%edx, 144(%rbp)
	cmoveq	%rbp, %rcx
.LBB11_75:
	movl	8(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB11_98
	movq	72(%rcx), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB11_77:
	movq	40(%r14), %rbp
	movq	24(%rbp), %rax
	xorl	%r12d, %r12d
	cmpq	16(%r13), %rax
	jae	.LBB11_78
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	movq	32(%rsp), %r13
	movq	16(%rsp), %rdx
	je	.LBB11_81
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
	jmp	.LBB11_81
.LBB11_78:
	movq	32(%rsp), %r13
	movq	16(%rsp), %rdx
.LBB11_81:
	movl	72(%r14), %r14d
	movss	%xmm0, 12(%rsp)
	movq	(%rbp), %rax
	movq	(%rax), %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB11_86
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_86
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_84
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rdx), %rbx
	jmp	.LBB11_86
.LBB11_84:
	xorl	%ebx, %ebx
.LBB11_86:
	movl	%r10d, 64(%rsp)
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB11_87
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_89
.LBB11_87:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB11_89:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 12(%rsp)
	movq	(%rbp), %rax
	movq	8(%rax), %rax
	xorl	%ebx, %ebx
	movq	16(%rsp), %rdx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB11_94
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_94
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_92
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	addq	(%rdx), %rbx
.LBB11_94:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_95
.LBB11_96:
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_97
.LBB11_92:
	xorl	%ebx, %ebx
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_96
.LBB11_95:
	movq	8(%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB11_97:
	movq	72(%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	64(%rsp), %eax
	movl	%eax, (%r13)
	movq	(%rsp), %rax
	movl	%eax, 4(%r13)
	movl	8(%rsp), %eax
.LBB11_66:
	movl	%eax, 8(%r13)
	movl	%r15d, 12(%r13)
.LBB11_25:
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
.LBB11_28:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB11_98:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB11_3:
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end11-bevy_ecs::bundle::BundleInserter::insert
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_0:
	.zero	16,128
	.section	".text.unlikely.hashbrown::raw::RawTable<T,A>::reserve_rehash","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::RawTable<T,A>::reserve_rehash,@function
hashbrown::raw::RawTable<T,A>::reserve_rehash:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	24(%rdi), %rsi
	movq	%rsi, %rax
	incq	%rax
	jne	.LBB12_2
.LBB12_38:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB12_39:
	movq	%rax, %r13
	jmp	.LBB12_40
.LBB12_2:
	movq	%rdi, %rbp
	movq	8(%rdi), %rbx
	leaq	1(%rbx), %r12
	movq	%r12, %rcx
	shrq	$3, %rcx
	movq	%r12, %r15
	andq	$-8, %r15
	subq	%rcx, %r15
	cmpq	$8, %rbx
	cmovbq	%rbx, %r15
	movq	%r15, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jbe	.LBB12_5
	incq	%r15
	cmpq	%r15, %rax
	cmovaq	%rax, %r15
	cmpq	$8, %r15
	jae	.LBB12_12
	movq	%rbp, (%rsp)
	xorl	%eax, %eax
	cmpq	$4, %r15
	setae	%al
	leaq	4(,%rax,4), %rdi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB12_16
	jmp	.LBB12_38
.LBB12_5:
	movq	(%rbp), %r13
	movq	%r12, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r12b
	setne	%al
	addq	%rcx, %rax
	je	.LBB12_8
	movdqa	.LCPI12_0(%rip), %xmm0
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB12_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB12_7
.LBB12_8:
	cmpq	$16, %r12
	movq	%rsi, 8(%rsp)
	jae	.LBB12_21
	leaq	16(%r13), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %rbx
	jne	.LBB12_22
	xorl	%r15d, %r15d
.LBB12_11:
	movabsq	$-9223372036854775807, %r13
	subq	8(%rsp), %r15
	movq	%r15, 16(%rbp)
.LBB12_40:
	movq	%r13, %rax
	addq	$24, %rsp
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
.LBB12_12:
	.cfi_def_cfa_offset 80
	movq	%r15, %rax
	shrq	$61, %rax
	jne	.LBB12_36
	movq	%rbp, (%rsp)
	shlq	$3, %r15
	movl	$1, %edi
	cmpq	$14, %r15
	jb	.LBB12_15
	movabsq	$2635249153387078803, %rcx
	movq	%r15, %rax
	mulq	%rcx
	subq	%rdx, %r15
	shrq	%r15
	addq	%rdx, %r15
	shrq	$2, %r15
	decq	%r15
	bsrq	%r15, %rcx
	notl	%ecx
	movq	$-1, %rdi
	shrq	%cl, %rdi
	incq	%rdi
.LBB12_15:
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jo	.LBB12_38
.LBB12_16:
	movq	%rax, %rbp
	addq	$15, %rbp
	andq	$-16, %rbp
	leaq	16(%rdi), %rdx
	movq	%rbp, %r14
	addq	%rdx, %r14
	jb	.LBB12_38
	movabsq	$-9223372036854775807, %r13
	leaq	-17(%r13), %rax
	cmpq	%rax, %r14
	ja	.LBB12_38
	testq	%r14, %r14
	movq	%rsi, 8(%rsp)
	je	.LBB12_41
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rdi, 16(%rsp)
	movq	%r14, %rdi
	movq	%rdx, %r15
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r15, %rdx
	movq	16(%rsp), %rdi
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB12_42
	movl	$16, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB12_39
.LBB12_21:
	movdqu	(%r13), %xmm0
	movdqu	%xmm0, (%r13,%r12)
.LBB12_22:
	movabsq	$5871781006564002453, %rax
	leaq	-24(%r13), %rcx
	xorl	%edx, %edx
	jmp	.LBB12_25
	.p2align	4, 0x90
.LBB12_23:
	shrq	$57, %r9
	leaq	-16(%rdx), %rsi
	andq	%rbx, %rsi
	movb	%r9b, (%r13,%rdx)
	movb	%r9b, 16(%rsi,%r13)
.LBB12_24:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB12_11
.LBB12_25:
	cmpb	$-128, (%r13,%rdx)
	jne	.LBB12_24
	leaq	(,%rdx,8), %rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	%r13, %rsi
	subq	%rdi, %rsi
	addq	$-24, %rsi
	movq	%rdx, %rdi
	negq	%rdi
	leaq	(%rdi,%rdi,2), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	.p2align	4, 0x90
.LBB12_27:
	movq	(%rdi), %r9
	imulq	%rax, %r9
	movq	%r9, %r8
	andq	%rbx, %r8
	movdqu	(%r13,%r8), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%r8, %r11
	testl	%r10d, %r10d
	jne	.LBB12_30
	movl	$16, %r14d
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB12_29:
	addq	%r14, %r11
	andq	%rbx, %r11
	movdqu	(%r13,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r14
	testl	%r10d, %r10d
	je	.LBB12_29
.LBB12_30:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%rbx, %r10
	cmpb	$0, (%r13,%r10)
	js	.LBB12_32
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB12_32:
	movq	%rdx, %r11
	subq	%r8, %r11
	movq	%r10, %r14
	subq	%r8, %r14
	xorq	%r11, %r14
	andq	%rbx, %r14
	cmpq	$16, %r14
	jb	.LBB12_23
	leaq	(,%r10,8), %r8
	leaq	(%r8,%r8,2), %r8
	negq	%r8
	addq	%r13, %r8
	addq	$-24, %r8
	movzbl	(%r13,%r10), %r11d
	shrq	$57, %r9
	leaq	-16(%r10), %r14
	andq	%rbx, %r14
	movb	%r9b, (%r13,%r10)
	movb	%r9b, 16(%r14,%r13)
	cmpb	$-1, %r11b
	je	.LBB12_35
	movzbl	(%rsi), %r9d
	movzbl	(%r8), %r10d
	movb	%r10b, (%rsi)
	movb	%r9b, (%r8)
	movzbl	1(%rsi), %r9d
	movzbl	1(%r8), %r10d
	movb	%r10b, 1(%rsi)
	movb	%r9b, 1(%r8)
	movzbl	2(%rsi), %r9d
	movzbl	2(%r8), %r10d
	movb	%r10b, 2(%rsi)
	movb	%r9b, 2(%r8)
	movzbl	3(%rsi), %r9d
	movzbl	3(%r8), %r10d
	movb	%r10b, 3(%rsi)
	movb	%r9b, 3(%r8)
	movzbl	4(%rsi), %r9d
	movzbl	4(%r8), %r10d
	movb	%r10b, 4(%rsi)
	movb	%r9b, 4(%r8)
	movzbl	5(%rsi), %r9d
	movzbl	5(%r8), %r10d
	movb	%r10b, 5(%rsi)
	movb	%r9b, 5(%r8)
	movzbl	6(%rsi), %r9d
	movzbl	6(%r8), %r10d
	movb	%r10b, 6(%rsi)
	movb	%r9b, 6(%r8)
	movzbl	7(%rsi), %r9d
	movzbl	7(%r8), %r10d
	movb	%r10b, 7(%rsi)
	movb	%r9b, 7(%r8)
	movzbl	8(%rsi), %r9d
	movzbl	8(%r8), %r10d
	movb	%r10b, 8(%rsi)
	movb	%r9b, 8(%r8)
	movzbl	9(%rsi), %r9d
	movzbl	9(%r8), %r10d
	movb	%r10b, 9(%rsi)
	movb	%r9b, 9(%r8)
	movzbl	10(%rsi), %r9d
	movzbl	10(%r8), %r10d
	movb	%r10b, 10(%rsi)
	movb	%r9b, 10(%r8)
	movzbl	11(%rsi), %r9d
	movzbl	11(%r8), %r10d
	movb	%r10b, 11(%rsi)
	movb	%r9b, 11(%r8)
	movzbl	12(%rsi), %r9d
	movzbl	12(%r8), %r10d
	movb	%r10b, 12(%rsi)
	movb	%r9b, 12(%r8)
	movzbl	13(%rsi), %r9d
	movzbl	13(%r8), %r10d
	movb	%r10b, 13(%rsi)
	movb	%r9b, 13(%r8)
	movzbl	14(%rsi), %r9d
	movzbl	14(%r8), %r10d
	movb	%r10b, 14(%rsi)
	movb	%r9b, 14(%r8)
	movzbl	15(%rsi), %r9d
	movzbl	15(%r8), %r10d
	movb	%r10b, 15(%rsi)
	movb	%r9b, 15(%r8)
	movzbl	16(%rsi), %r9d
	movzbl	16(%r8), %r10d
	movb	%r10b, 16(%rsi)
	movb	%r9b, 16(%r8)
	movzbl	17(%rsi), %r9d
	movzbl	17(%r8), %r10d
	movb	%r10b, 17(%rsi)
	movb	%r9b, 17(%r8)
	movzbl	18(%rsi), %r9d
	movzbl	18(%r8), %r10d
	movb	%r10b, 18(%rsi)
	movb	%r9b, 18(%r8)
	movzbl	19(%rsi), %r9d
	movzbl	19(%r8), %r10d
	movb	%r10b, 19(%rsi)
	movb	%r9b, 19(%r8)
	movzbl	20(%rsi), %r9d
	movzbl	20(%r8), %r10d
	movb	%r10b, 20(%rsi)
	movb	%r9b, 20(%r8)
	movzbl	21(%rsi), %r9d
	movzbl	21(%r8), %r10d
	movb	%r10b, 21(%rsi)
	movb	%r9b, 21(%r8)
	movzbl	22(%rsi), %r9d
	movzbl	22(%r8), %r10d
	movb	%r10b, 22(%rsi)
	movb	%r9b, 22(%r8)
	movzbl	23(%rsi), %r9d
	movzbl	23(%r8), %r10d
	movb	%r10b, 23(%rsi)
	movb	%r9b, 23(%r8)
	jmp	.LBB12_27
	.p2align	4, 0x90
.LBB12_35:
	leaq	-16(%rdx), %rdi
	andq	%rbx, %rdi
	movb	$-1, (%r13,%rdx)
	movb	$-1, 16(%rdi,%r13)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%r8)
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%r8)
	jmp	.LBB12_24
.LBB12_36:
	movq	%rsi, %r14
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r13
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r13
	jne	.LBB12_40
	movq	%rdx, %rdi
	movq	%rbp, (%rsp)
	movq	%r14, %rsi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB12_16
	jmp	.LBB12_38
.LBB12_41:
	movl	$16, %r15d
.LBB12_42:
	leaq	-1(%rdi), %r14
	movq	%rdi, %rax
	shrq	$3, %rax
	andq	$-8, %rdi
	subq	%rax, %rdi
	cmpq	$8, %r14
	cmovbq	%r14, %rdi
	addq	%rbp, %r15
	movq	%rdi, %rbp
	movq	%r15, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	subq	8(%rsp), %rbp
	movq	(%rsp), %r11
	movq	(%r11), %rdi
	cmpq	$-1, %rbx
	je	.LBB12_53
	movabsq	$5871781006564002453, %rax
	leaq	-24(%rdi), %rcx
	xorl	%edx, %edx
	jmp	.LBB12_46
	.p2align	4, 0x90
.LBB12_44:
	shrq	$57, %rsi
	leaq	-16(%r9), %r8
	andq	%r14, %r8
	movb	%sil, (%r15,%r9)
	movb	%sil, 16(%r8,%r15)
	leaq	(,%rdx,8), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rdi, %r8
	subq	%rsi, %r8
	shlq	$3, %r9
	leaq	(%r9,%r9,2), %rsi
	movq	%r15, %r9
	subq	%rsi, %r9
	negq	%rsi
	movdqu	-24(%r8), %xmm0
	movdqu	%xmm0, -24(%r15,%rsi)
	movq	-8(%r8), %rsi
	movq	%rsi, -8(%r9)
.LBB12_45:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB12_52
.LBB12_46:
	cmpb	$0, (%rdi,%rdx)
	js	.LBB12_45
	movq	%rdx, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	(%rcx,%rsi,8), %rsi
	imulq	%rax, %rsi
	movq	%rsi, %r8
	andq	%r14, %r8
	movdqu	(%r15,%r8), %xmm0
	pmovmskb	%xmm0, %r9d
	testl	%r9d, %r9d
	jne	.LBB12_50
	movl	$16, %r10d
	.p2align	4, 0x90
.LBB12_49:
	addq	%r10, %r8
	andq	%r14, %r8
	movdqu	(%r15,%r8), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r10
	testl	%r9d, %r9d
	je	.LBB12_49
.LBB12_50:
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%r14, %r9
	cmpb	$0, (%r15,%r9)
	js	.LBB12_44
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %r8d
	rep		bsfl	%r8d, %r9d
	jmp	.LBB12_44
.LBB12_52:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
	testq	%rbx, %rbx
	jne	.LBB12_54
	jmp	.LBB12_40
.LBB12_53:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
.LBB12_54:
	movl	$24, %ecx
	movq	%r12, %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %rbx
	addq	$17, %rbx
	je	.LBB12_40
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB12_40
.Lfunc_end12:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end12-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI13_0:
	.zero	16,128
	.section	".text.unlikely.hashbrown::raw::RawTable<T,A>::reserve_rehash","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::RawTable<T,A>::reserve_rehash,@function
hashbrown::raw::RawTable<T,A>::reserve_rehash:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	24(%rdi), %rsi
	movq	%rsi, %rax
	incq	%rax
	jne	.LBB13_2
.LBB13_38:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB13_39:
	movq	%rax, %r13
	jmp	.LBB13_40
.LBB13_2:
	movq	%rdi, %rbp
	movq	8(%rdi), %rbx
	leaq	1(%rbx), %r12
	movq	%r12, %rcx
	shrq	$3, %rcx
	movq	%r12, %r15
	andq	$-8, %r15
	subq	%rcx, %r15
	cmpq	$8, %rbx
	cmovbq	%rbx, %r15
	movq	%r15, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jbe	.LBB13_5
	incq	%r15
	cmpq	%r15, %rax
	cmovaq	%rax, %r15
	cmpq	$8, %r15
	jae	.LBB13_12
	movq	%rbp, (%rsp)
	xorl	%eax, %eax
	cmpq	$4, %r15
	setae	%al
	leaq	4(,%rax,4), %rdi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB13_16
	jmp	.LBB13_38
.LBB13_5:
	movq	(%rbp), %r13
	movq	%r12, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r12b
	setne	%al
	addq	%rcx, %rax
	je	.LBB13_8
	movdqa	.LCPI13_0(%rip), %xmm0
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB13_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB13_7
.LBB13_8:
	cmpq	$16, %r12
	movq	%rsi, 8(%rsp)
	jae	.LBB13_21
	leaq	16(%r13), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %rbx
	jne	.LBB13_22
	xorl	%r15d, %r15d
.LBB13_11:
	movabsq	$-9223372036854775807, %r13
	subq	8(%rsp), %r15
	movq	%r15, 16(%rbp)
.LBB13_40:
	movq	%r13, %rax
	addq	$24, %rsp
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
.LBB13_12:
	.cfi_def_cfa_offset 80
	movq	%r15, %rax
	shrq	$61, %rax
	jne	.LBB13_36
	movq	%rbp, (%rsp)
	shlq	$3, %r15
	movl	$1, %edi
	cmpq	$14, %r15
	jb	.LBB13_15
	movabsq	$2635249153387078803, %rcx
	movq	%r15, %rax
	mulq	%rcx
	subq	%rdx, %r15
	shrq	%r15
	addq	%rdx, %r15
	shrq	$2, %r15
	decq	%r15
	bsrq	%r15, %rcx
	notl	%ecx
	movq	$-1, %rdi
	shrq	%cl, %rdi
	incq	%rdi
.LBB13_15:
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jo	.LBB13_38
.LBB13_16:
	movq	%rax, %rbp
	addq	$15, %rbp
	andq	$-16, %rbp
	leaq	16(%rdi), %rdx
	movq	%rbp, %r14
	addq	%rdx, %r14
	jb	.LBB13_38
	movabsq	$-9223372036854775807, %r13
	leaq	-17(%r13), %rax
	cmpq	%rax, %r14
	ja	.LBB13_38
	testq	%r14, %r14
	movq	%rsi, 8(%rsp)
	je	.LBB13_41
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movl	$16, %esi
	movq	%rdi, 16(%rsp)
	movq	%r14, %rdi
	movq	%rdx, %r15
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%r15, %rdx
	movq	16(%rsp), %rdi
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB13_42
	movl	$16, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB13_39
.LBB13_21:
	movdqu	(%r13), %xmm0
	movdqu	%xmm0, (%r13,%r12)
.LBB13_22:
	movabsq	$5871781006564002453, %rax
	leaq	-24(%r13), %rcx
	xorl	%edx, %edx
	jmp	.LBB13_25
	.p2align	4, 0x90
.LBB13_23:
	shrq	$57, %r9
	leaq	-16(%rdx), %rsi
	andq	%rbx, %rsi
	movb	%r9b, (%r13,%rdx)
	movb	%r9b, 16(%rsi,%r13)
.LBB13_24:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB13_11
.LBB13_25:
	cmpb	$-128, (%r13,%rdx)
	jne	.LBB13_24
	leaq	(,%rdx,8), %rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	%r13, %rsi
	subq	%rdi, %rsi
	addq	$-24, %rsi
	movq	%rdx, %rdi
	negq	%rdi
	leaq	(%rdi,%rdi,2), %rdi
	leaq	(%rcx,%rdi,8), %rdi
	.p2align	4, 0x90
.LBB13_27:
	movq	(%rdi), %r9
	imulq	%rax, %r9
	movq	%r9, %r8
	andq	%rbx, %r8
	movdqu	(%r13,%r8), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%r8, %r11
	testl	%r10d, %r10d
	jne	.LBB13_30
	movl	$16, %r14d
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB13_29:
	addq	%r14, %r11
	andq	%rbx, %r11
	movdqu	(%r13,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r14
	testl	%r10d, %r10d
	je	.LBB13_29
.LBB13_30:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%rbx, %r10
	cmpb	$0, (%r13,%r10)
	js	.LBB13_32
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB13_32:
	movq	%rdx, %r11
	subq	%r8, %r11
	movq	%r10, %r14
	subq	%r8, %r14
	xorq	%r11, %r14
	andq	%rbx, %r14
	cmpq	$16, %r14
	jb	.LBB13_23
	leaq	(,%r10,8), %r8
	leaq	(%r8,%r8,2), %r8
	negq	%r8
	addq	%r13, %r8
	addq	$-24, %r8
	movzbl	(%r13,%r10), %r11d
	shrq	$57, %r9
	leaq	-16(%r10), %r14
	andq	%rbx, %r14
	movb	%r9b, (%r13,%r10)
	movb	%r9b, 16(%r14,%r13)
	cmpb	$-1, %r11b
	je	.LBB13_35
	movzbl	(%rsi), %r9d
	movzbl	(%r8), %r10d
	movb	%r10b, (%rsi)
	movb	%r9b, (%r8)
	movzbl	1(%rsi), %r9d
	movzbl	1(%r8), %r10d
	movb	%r10b, 1(%rsi)
	movb	%r9b, 1(%r8)
	movzbl	2(%rsi), %r9d
	movzbl	2(%r8), %r10d
	movb	%r10b, 2(%rsi)
	movb	%r9b, 2(%r8)
	movzbl	3(%rsi), %r9d
	movzbl	3(%r8), %r10d
	movb	%r10b, 3(%rsi)
	movb	%r9b, 3(%r8)
	movzbl	4(%rsi), %r9d
	movzbl	4(%r8), %r10d
	movb	%r10b, 4(%rsi)
	movb	%r9b, 4(%r8)
	movzbl	5(%rsi), %r9d
	movzbl	5(%r8), %r10d
	movb	%r10b, 5(%rsi)
	movb	%r9b, 5(%r8)
	movzbl	6(%rsi), %r9d
	movzbl	6(%r8), %r10d
	movb	%r10b, 6(%rsi)
	movb	%r9b, 6(%r8)
	movzbl	7(%rsi), %r9d
	movzbl	7(%r8), %r10d
	movb	%r10b, 7(%rsi)
	movb	%r9b, 7(%r8)
	movzbl	8(%rsi), %r9d
	movzbl	8(%r8), %r10d
	movb	%r10b, 8(%rsi)
	movb	%r9b, 8(%r8)
	movzbl	9(%rsi), %r9d
	movzbl	9(%r8), %r10d
	movb	%r10b, 9(%rsi)
	movb	%r9b, 9(%r8)
	movzbl	10(%rsi), %r9d
	movzbl	10(%r8), %r10d
	movb	%r10b, 10(%rsi)
	movb	%r9b, 10(%r8)
	movzbl	11(%rsi), %r9d
	movzbl	11(%r8), %r10d
	movb	%r10b, 11(%rsi)
	movb	%r9b, 11(%r8)
	movzbl	12(%rsi), %r9d
	movzbl	12(%r8), %r10d
	movb	%r10b, 12(%rsi)
	movb	%r9b, 12(%r8)
	movzbl	13(%rsi), %r9d
	movzbl	13(%r8), %r10d
	movb	%r10b, 13(%rsi)
	movb	%r9b, 13(%r8)
	movzbl	14(%rsi), %r9d
	movzbl	14(%r8), %r10d
	movb	%r10b, 14(%rsi)
	movb	%r9b, 14(%r8)
	movzbl	15(%rsi), %r9d
	movzbl	15(%r8), %r10d
	movb	%r10b, 15(%rsi)
	movb	%r9b, 15(%r8)
	movzbl	16(%rsi), %r9d
	movzbl	16(%r8), %r10d
	movb	%r10b, 16(%rsi)
	movb	%r9b, 16(%r8)
	movzbl	17(%rsi), %r9d
	movzbl	17(%r8), %r10d
	movb	%r10b, 17(%rsi)
	movb	%r9b, 17(%r8)
	movzbl	18(%rsi), %r9d
	movzbl	18(%r8), %r10d
	movb	%r10b, 18(%rsi)
	movb	%r9b, 18(%r8)
	movzbl	19(%rsi), %r9d
	movzbl	19(%r8), %r10d
	movb	%r10b, 19(%rsi)
	movb	%r9b, 19(%r8)
	movzbl	20(%rsi), %r9d
	movzbl	20(%r8), %r10d
	movb	%r10b, 20(%rsi)
	movb	%r9b, 20(%r8)
	movzbl	21(%rsi), %r9d
	movzbl	21(%r8), %r10d
	movb	%r10b, 21(%rsi)
	movb	%r9b, 21(%r8)
	movzbl	22(%rsi), %r9d
	movzbl	22(%r8), %r10d
	movb	%r10b, 22(%rsi)
	movb	%r9b, 22(%r8)
	movzbl	23(%rsi), %r9d
	movzbl	23(%r8), %r10d
	movb	%r10b, 23(%rsi)
	movb	%r9b, 23(%r8)
	jmp	.LBB13_27
	.p2align	4, 0x90
.LBB13_35:
	leaq	-16(%rdx), %rdi
	andq	%rbx, %rdi
	movb	$-1, (%r13,%rdx)
	movb	$-1, 16(%rdi,%r13)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%r8)
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%r8)
	jmp	.LBB13_24
.LBB13_36:
	movq	%rsi, %r14
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r13
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r13
	jne	.LBB13_40
	movq	%rdx, %rdi
	movq	%rbp, (%rsp)
	movq	%r14, %rsi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB13_16
	jmp	.LBB13_38
.LBB13_41:
	movl	$16, %r15d
.LBB13_42:
	leaq	-1(%rdi), %r14
	movq	%rdi, %rax
	shrq	$3, %rax
	andq	$-8, %rdi
	subq	%rax, %rdi
	cmpq	$8, %r14
	cmovbq	%r14, %rdi
	addq	%rbp, %r15
	movq	%rdi, %rbp
	movq	%r15, %rdi
	movl	$255, %esi
	callq	*memset@GOTPCREL(%rip)
	subq	8(%rsp), %rbp
	movq	(%rsp), %r11
	movq	(%r11), %rdi
	cmpq	$-1, %rbx
	je	.LBB13_53
	movabsq	$5871781006564002453, %rax
	leaq	-24(%rdi), %rcx
	xorl	%edx, %edx
	jmp	.LBB13_46
	.p2align	4, 0x90
.LBB13_44:
	shrq	$57, %rsi
	leaq	-16(%r9), %r8
	andq	%r14, %r8
	movb	%sil, (%r15,%r9)
	movb	%sil, 16(%r8,%r15)
	leaq	(,%rdx,8), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rdi, %r8
	subq	%rsi, %r8
	shlq	$3, %r9
	leaq	(%r9,%r9,2), %rsi
	movq	%r15, %r9
	subq	%rsi, %r9
	negq	%rsi
	movdqu	-24(%r8), %xmm0
	movdqu	%xmm0, -24(%r15,%rsi)
	movq	-8(%r8), %rsi
	movq	%rsi, -8(%r9)
.LBB13_45:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB13_52
.LBB13_46:
	cmpb	$0, (%rdi,%rdx)
	js	.LBB13_45
	movq	%rdx, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	(%rcx,%rsi,8), %rsi
	imulq	%rax, %rsi
	movq	%rsi, %r8
	andq	%r14, %r8
	movdqu	(%r15,%r8), %xmm0
	pmovmskb	%xmm0, %r9d
	testl	%r9d, %r9d
	jne	.LBB13_50
	movl	$16, %r10d
	.p2align	4, 0x90
.LBB13_49:
	addq	%r10, %r8
	andq	%r14, %r8
	movdqu	(%r15,%r8), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r10
	testl	%r9d, %r9d
	je	.LBB13_49
.LBB13_50:
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%r14, %r9
	cmpb	$0, (%r15,%r9)
	js	.LBB13_44
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %r8d
	rep		bsfl	%r8d, %r9d
	jmp	.LBB13_44
.LBB13_52:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
	testq	%rbx, %rbx
	jne	.LBB13_54
	jmp	.LBB13_40
.LBB13_53:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
.LBB13_54:
	movl	$24, %ecx
	movq	%r12, %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %rbx
	addq	$17, %rbx
	je	.LBB13_40
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB13_40
.Lfunc_end13:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end13-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI14_0:
	.zero	16,114
.LCPI14_1:
	.byte	196
	.byte	7
	.byte	5
	.byte	32
	.byte	212
	.byte	30
	.byte	253
	.byte	80
	.byte	160
	.byte	241
	.byte	19
	.byte	226
	.byte	108
	.byte	234
	.byte	33
	.byte	134
.LCPI14_2:
	.zero	16,22
.LCPI14_3:
	.zero	16,36
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
	movq	%rdi, %r12
	movq	(%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 352(%rsp)
	movq	16(%rsi), %r13
.Ltmp0:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp1:
	movq	%r13, %rax
	shlq	$4, %rax
	addq	112(%rsp), %rax
	movq	%rax, 400(%rsp)
	movabsq	$-1947929242297488108, %rbx
	movl	760(%r12), %eax
	movl	%eax, 68(%rsp)
	leaq	488(%r12), %rbp
	leaq	64(%r12), %rax
	movq	%rax, 104(%rsp)
	leaq	216(%r12), %rax
	movq	%rax, 120(%rsp)
	leaq	512(%r12), %rdi
	movq	512(%r12), %rcx
	movq	520(%r12), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI14_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI14_1(%rip), %xmm2
	movq	%rbx, %r8
	movq	%r12, 32(%rsp)
.LBB14_2:
	andq	%rax, %r8
	movdqu	(%rcx,%r8), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r9d
	.p2align	4, 0x90
.LBB14_3:
	testw	%r9w, %r9w
	je	.LBB14_5
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rax, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movdqu	(%rdx,%r10,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r14d
	movl	%r11d, %r9d
	cmpl	$65535, %r14d
	jne	.LBB14_3
	jmp	.LBB14_7
	.p2align	4, 0x90
.LBB14_5:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	jne	.LBB14_47
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB14_2
.LBB14_7:
	movq	(%rbp), %rax
	movq	-8(%rcx,%r10,8), %r14
.LBB14_8:
	shlq	$5, %r14
	addq	%rax, %r14
	leaq	152(%r12), %rcx
.Ltmp34:
	movl	68(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	176(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rcx, 48(%rsp)
	movq	104(%rsp), %r8
	movq	120(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp35:
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	movdqu	%xmm2, 296(%rsp)
	movdqu	%xmm1, 280(%rsp)
	movdqu	%xmm0, 264(%rsp)
	movq	$3, 256(%rsp)
	movq	$8, 128(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 136(%rsp)
	testq	%r13, %r13
	je	.LBB14_38
	movq	112(%rsp), %r12
	movq	%r14, 40(%rsp)
	jmp	.LBB14_13
	.p2align	4, 0x90
.LBB14_11:
	movq	128(%rsp), %rax
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 144(%rsp)
.LBB14_12:
	addq	$16, %r12
	cmpq	400(%rsp), %r12
	je	.LBB14_38
.LBB14_13:
	movq	(%r12), %r15
	movss	8(%r12), %xmm0
	movss	%xmm0, 24(%rsp)
	movd	12(%r12), %xmm0
	movd	%xmm0, 16(%rsp)
.Ltmp37:
	leaq	256(%rsp), %rdi
	callq	*bevy_ecs::world::World::insert_or_spawn_batch::SpawnOrInsert::entities@GOTPCREL(%rip)
.Ltmp38:
.Ltmp39:
	leaq	368(%rsp), %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp40:
	movl	368(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB14_23
	cmpl	$1, %eax
	jne	.LBB14_26
	cmpl	$3, 256(%rsp)
	jne	.LBB14_29
	movq	288(%rsp), %r13
.Ltmp49:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp50:
	movl	%eax, %ebp
	movq	264(%rsp), %rbx
	movq	88(%rbx), %r14
	movq	%r14, %rax
	cmpq	80(%rbx), %r14
	jne	.LBB14_22
.Ltmp51:
	leaq	72(%rbx), %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp52:
	movq	88(%rbx), %rax
.LBB14_22:
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	72(%rbx), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	%r15d, (%rdx,%rsi)
	movl	%ecx, 4(%rdx,%rsi)
	movl	%ebp, 8(%rdx,%rsi)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 64(%rsp)
	movl	148(%rbx), %eax
	movl	%eax, 96(%rsp)
	movq	280(%rsp), %rax
	movq	%rax, 360(%rsp)
	movl	304(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 176(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%ebp, %edx
	movl	%ebp, 60(%rsp)
	movq	(%r13), %rbp
	movq	32(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	%r14, 24(%rsp)
	movl	%edx, %r14d
	movq	8(%rbp,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r14, %rdi
	addq	16(%rbp,%rbx), %rdi
	leaq	176(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbp,%rbx), %rax
	movl	56(%rsp), %ecx
	movl	%ecx, (%rax,%r14,4)
	movq	72(%rbp,%rbx), %rax
	movl	%ecx, (%rax,%r14,4)
	movl	%ecx, %ebp
	movd	16(%rsp), %xmm0
	movd	%xmm0, 176(%rsp)
	movq	360(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%r13), %rbx
	movq	32(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	movq	8(%rbx,%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r14, %rdi
	addq	16(%rbx,%r13), %rdi
	leaq	176(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx,%r13), %rax
	movl	%ebp, (%rax,%r14,4)
	movq	72(%rbx,%r13), %rax
	movl	%ebp, (%rax,%r14,4)
	movq	40(%rsp), %r14
	movl	%r15d, %eax
	movq	272(%rsp), %rcx
	movq	(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	64(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	24(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	96(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	60(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	jmp	.LBB14_12
	.p2align	4, 0x90
.LBB14_23:
	movq	144(%rsp), %rsi
	cmpq	136(%rsp), %rsi
	jne	.LBB14_11
.Ltmp41:
	leaq	128(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp42:
	movq	144(%rsp), %rsi
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_26:
	movl	372(%rsp), %ebx
	cmpl	$3, 256(%rsp)
	je	.LBB14_35
	cmpl	336(%rsp), %ebx
	jne	.LBB14_35
	movl	%ebx, 176(%rsp)
	leaq	376(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	180(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp57:
	leaq	72(%rsp), %rdi
	leaq	256(%rsp), %rsi
	movq	%r15, %rdx
	leaq	176(%rsp), %rcx
	movd	24(%rsp), %xmm0
	movd	16(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp58:
	jmp	.LBB14_12
.LBB14_29:
.Ltmp43:
	movl	68(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	176(%rsp), %rdi
	movq	%r14, %rsi
	movq	32(%rsp), %rdx
	movq	48(%rsp), %rcx
	movq	104(%rsp), %r8
	movq	120(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp44:
	movq	200(%rsp), %r13
.Ltmp45:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp46:
	movl	%eax, %ebp
	movq	176(%rsp), %rbx
	movq	88(%rbx), %r14
	movq	%r14, %rax
	cmpq	80(%rbx), %r14
	jne	.LBB14_34
.Ltmp47:
	leaq	72(%rbx), %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp48:
	movq	88(%rbx), %rax
.LBB14_34:
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	72(%rbx), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	%r15d, (%rdx,%rsi)
	movl	%ecx, 4(%rdx,%rsi)
	movl	%ebp, 8(%rdx,%rsi)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 64(%rsp)
	movl	148(%rbx), %eax
	movl	%eax, 96(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 360(%rsp)
	movl	216(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 72(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%ebp, %edx
	movl	%ebp, 60(%rsp)
	movq	(%r13), %rbp
	movq	32(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	%r14, 24(%rsp)
	movl	%edx, %r14d
	movq	8(%rbp,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r14, %rdi
	addq	16(%rbp,%rbx), %rdi
	leaq	72(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbp,%rbx), %rax
	movl	56(%rsp), %ecx
	movl	%ecx, (%rax,%r14,4)
	movq	72(%rbp,%rbx), %rax
	movl	%ecx, (%rax,%r14,4)
	movl	%ecx, %ebp
	movss	16(%rsp), %xmm0
	movss	%xmm0, 72(%rsp)
	movq	360(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%r13), %rbx
	movq	32(%r13), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	movq	8(%rbx,%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r14, %rdi
	addq	16(%rbx,%r13), %rdi
	leaq	72(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%rbx,%r13), %rax
	movl	%ebp, (%rax,%r14,4)
	movq	72(%rbx,%r13), %rax
	movl	%ebp, (%rax,%r14,4)
	movq	40(%rsp), %r14
	movl	%r15d, %eax
	movq	184(%rsp), %rcx
	movq	(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	64(%rsp), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	24(%rsp), %rdx
	movl	%edx, 8(%rcx,%rax,4)
	movl	96(%rsp), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movl	60(%rsp), %edx
	movl	%edx, 16(%rcx,%rax,4)
	movdqu	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	leaq	264(%rsp), %rax
	movdqu	%xmm2, 32(%rax)
	movdqu	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	movq	$3, 256(%rsp)
	jmp	.LBB14_12
.LBB14_35:
.Ltmp53:
	movl	68(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	leaq	176(%rsp), %rdi
	movq	%r14, %rsi
	movq	32(%rsp), %rdx
	movq	48(%rsp), %rcx
	movq	104(%rsp), %r8
	movq	120(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp54:
	movl	%ebx, 72(%rsp)
	leaq	376(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	76(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp55:
	leaq	408(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	%r15, %rdx
	leaq	72(%rsp), %rcx
	movd	24(%rsp), %xmm0
	movd	16(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp56:
	movups	176(%rsp), %xmm0
	movdqu	192(%rsp), %xmm1
	movdqu	208(%rsp), %xmm2
	movdqu	224(%rsp), %xmm3
	movaps	%xmm0, 256(%rsp)
	movdqa	%xmm1, 272(%rsp)
	movdqa	%xmm2, 288(%rsp)
	movdqa	%xmm3, 304(%rsp)
	movdqu	240(%rsp), %xmm0
	movdqa	%xmm0, 320(%rsp)
	movl	%ebx, 336(%rsp)
	jmp	.LBB14_12
.LBB14_38:
	movq	352(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB14_40
	shlq	$4, %rsi
	movl	$8, %edx
	movq	112(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB14_40:
	cmpq	$0, 144(%rsp)
	je	.LBB14_43
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB14_46
	movq	136(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB14_45
	jmp	.LBB14_46
.LBB14_43:
	movq	136(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB14_46
	movq	128(%rsp), %rdi
.LBB14_45:
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB14_46:
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
.LBB14_47:
	.cfi_def_cfa_offset 480
	cmpq	$0, 528(%r12)
	jne	.LBB14_49
.Ltmp2:
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp3:
.LBB14_49:
	movabsq	$1769259620248700641, %r14
	movq	%r12, %rax
	movabsq	$-6840475779580282862, %r12
	movabsq	$3308358876398179962, %rdx
	movq	$8, 72(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 80(%rsp)
	leaq	88(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	88(%rax), %rsi
	movq	96(%rax), %r15
	leaq	-24(%rsi), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI14_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB14_50:
	andq	%r15, %rdx
	movq	%rsi, %r10
	movdqu	(%rsi,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB14_51:
	testw	%si, %si
	je	.LBB14_53
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%r15, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	8(%rax,%rdi,8), %rsi
	xorq	%r14, %rsi
	movq	(%rax,%rdi,8), %r9
	xorq	%r12, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB14_51
	jmp	.LBB14_55
.LBB14_53:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB14_76
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	movq	%r10, %rsi
	jmp	.LBB14_50
.LBB14_55:
	movq	-8(%r10,%rdi,8), %rax
	movq	%rax, 24(%rsp)
.LBB14_56:
.Ltmp14:
	movq	%r10, 16(%rsp)
	leaq	72(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp15:
	movabsq	$8912440467798014387, %r12
	movabsq	$5173752524513778012, %r14
	movabsq	$5197202707100392076, %rdx
	movq	72(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	24(%rsp), %rsi
	movq	%rsi, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 24(%rsp)
	movq	%rcx, 88(%rsp)
	movq	16(%rsp), %rsi
	leaq	-24(%rsi), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI14_3(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB14_58:
	andq	%r15, %rdx
	movdqu	(%rsi,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB14_59:
	testw	%si, %si
	je	.LBB14_61
	leal	-1(%rsi), %r8d
	andl	%esi, %r8d
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%r15, %rsi
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	8(%rax,%rdi,8), %rsi
	xorq	%r12, %rsi
	movq	(%rax,%rdi,8), %r9
	xorq	%r14, %r9
	orq	%rsi, %r9
	movl	%r8d, %esi
	jne	.LBB14_59
	jmp	.LBB14_63
.LBB14_61:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %esi
	testl	%esi, %esi
	jne	.LBB14_90
	addq	%rcx, %rdx
	addq	$16, %rdx
	addq	$16, %rcx
	movq	16(%rsp), %rsi
	jmp	.LBB14_58
.LBB14_63:
	movq	16(%rsp), %rax
	movq	-8(%rax,%rdi,8), %r14
	movq	32(%rsp), %r12
	movq	24(%rsp), %rsi
	cmpq	80(%rsp), %rsi
	movq	48(%rsp), %rax
	jne	.LBB14_66
.LBB14_64:
.Ltmp26:
	leaq	72(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp27:
	movq	72(%rsp), %rax
	movq	88(%rsp), %rsi
	movq	32(%rsp), %r12
.LBB14_66:
	movq	%r14, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 88(%rsp)
	movq	504(%r12), %r14
	movq	%rsi, 192(%rsp)
	movdqu	72(%rsp), %xmm0
	movdqa	%xmm0, 176(%rsp)
.Ltmp29:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rsi
	leaq	256(%rsp), %rdi
	leaq	176(%rsp), %r8
	movl	$64, %edx
	movq	104(%rsp), %rcx
	movq	%r14, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp30:
	movq	256(%rsp), %r15
	movq	%r14, %rax
	movq	264(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%r14, %rcx
	cmpq	496(%r12), %r14
	jne	.LBB14_70
.Ltmp31:
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp32:
	movq	504(%r12), %rcx
.LBB14_70:
	movq	488(%r12), %rax
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movq	%r15, (%rax,%rdx)
	movq	16(%rsp), %rsi
	movq	%rsi, 8(%rax,%rdx)
	movups	272(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rdx)
	incq	%rcx
	movq	%rcx, 504(%r12)
	movq	512(%r12), %rcx
	movq	520(%r12), %rdx
	andq	%rdx, %rbx
	movdqu	(%rcx,%rbx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB14_73
	movl	$16, %edi
	.p2align	4, 0x90
.LBB14_72:
	addq	%rdi, %rbx
	andq	%rdx, %rbx
	movdqu	(%rcx,%rbx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB14_72
.LBB14_73:
	rep		bsfl	%esi, %esi
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %edi
	testb	%dil, %dil
	js	.LBB14_75
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rcx,%rsi), %edi
.LBB14_75:
	leaq	-16(%rsi), %r8
	andq	%rdx, %r8
	movb	$114, (%rcx,%rsi)
	movb	$114, 16(%r8,%rcx)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	andb	$1, %dil
	movzbl	%dil, %esi
	subq	%rsi, 528(%r12)
	movabsq	$5835854588561131460, %rsi
	movq	%rsi, -24(%rcx,%rdx,8)
	movabsq	$-8781480045025431136, %rsi
	movq	%rsi, -16(%rcx,%rdx,8)
	movq	%r14, -8(%rcx,%rdx,8)
	incq	536(%r12)
	jmp	.LBB14_8
.LBB14_76:
	movq	32(%rsp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB14_78
.Ltmp4:
	movq	40(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp5:
.LBB14_78:
	movq	$0, 216(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rax
	movq	%rax, 224(%rsp)
	movq	$30, 232(%rsp)
	movw	$256, 248(%rsp)
	movq	$1, 176(%rsp)
	movq	%r12, 184(%rsp)
	movq	%r14, 192(%rsp)
	movq	$4, 200(%rsp)
	movq	$4, 208(%rsp)
	movq	$0, 240(%rsp)
	movq	32(%rsp), %rax
	movq	80(%rax), %rsi
.Ltmp6:
	leaq	256(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movq	%rsi, 24(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp7:
	cmpb	$0, 328(%rsp)
	je	.LBB14_81
.Ltmp8:
	leaq	256(%rsp), %rsi
	movq	120(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp9:
.LBB14_81:
	movups	256(%rsp), %xmm0
	movdqu	272(%rsp), %xmm1
	movaps	%xmm0, 128(%rsp)
	movdqa	%xmm1, 144(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	296(%rsp), %r15
	movq	304(%rsp), %rax
	movq	%rax, 16(%rsp)
	movups	328(%rsp), %xmm0
	movaps	%xmm0, 384(%rsp)
	movdqu	312(%rsp), %xmm0
	movdqa	%xmm0, 368(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, %rax
	movq	32(%rsp), %rdi
	cmpq	72(%rdi), %rcx
	jne	.LBB14_84
.Ltmp11:
	movq	104(%rsp), %rdi
	movq	24(%rsp), %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp12:
	movq	32(%rsp), %rdi
	movq	80(%rdi), %rax
.LBB14_84:
	movq	64(%rdi), %rcx
	imulq	$88, %rax, %rdx
	movq	160(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movaps	144(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	%r15, 40(%rcx,%rdx)
	movq	16(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	368(%rsp), %xmm0
	movdqa	384(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rdi)
	movq	88(%rdi), %rax
	movq	96(%rdi), %r15
	movabsq	$3308358876398179962, %rdi
	andq	%r15, %rdi
	movq	%rax, %rdx
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB14_87
	movl	$16, %ecx
	movq	%rdx, %rsi
.LBB14_86:
	addq	%rcx, %rdi
	andq	%r15, %rdi
	movdqu	(%rsi,%rdi), %xmm0
	pmovmskb	%xmm0, %eax
	addq	$16, %rcx
	testl	%eax, %eax
	je	.LBB14_86
.LBB14_87:
	rep		bsfl	%eax, %eax
	addq	%rdi, %rax
	andq	%r15, %rax
	movq	%rdx, %rsi
	movzbl	(%rdx,%rax), %ecx
	testb	%cl, %cl
	js	.LBB14_89
	movdqa	(%rsi), %xmm0
	pmovmskb	%xmm0, %eax
	rep		bsfl	%eax, %eax
	movzbl	(%rsi,%rax), %ecx
.LBB14_89:
	leaq	-16(%rax), %rdx
	andq	%r15, %rdx
	movb	$22, (%rsi,%rax)
	movb	$22, 16(%rdx,%rsi)
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	32(%rsp), %rdx
	subq	%rcx, 104(%rdx)
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	movq	%r12, -24(%rsi,%rax,8)
	movq	%r14, -16(%rsi,%rax,8)
	movq	24(%rsp), %rcx
	movq	%rcx, -8(%rsi,%rax,8)
	incq	112(%rdx)
	movq	%rsi, %r10
	jmp	.LBB14_56
.LBB14_90:
	movq	32(%rsp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB14_92
.Ltmp16:
	movq	40(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp17:
.LBB14_92:
	movq	$0, 216(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rax
	movq	%rax, 224(%rsp)
	movq	$30, 232(%rsp)
	movw	$256, 248(%rsp)
	movq	$1, 176(%rsp)
	movq	%r14, 184(%rsp)
	movq	%r12, 192(%rsp)
	movq	$4, 200(%rsp)
	movq	$4, 208(%rsp)
	movq	$0, 240(%rsp)
	movq	32(%rsp), %rax
	movq	80(%rax), %r15
.Ltmp18:
	leaq	256(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp19:
	movq	%r15, 16(%rsp)
	cmpb	$0, 328(%rsp)
	movabsq	$5197202707100392076, %r15
	je	.LBB14_95
.Ltmp20:
	leaq	256(%rsp), %rsi
	movq	120(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp21:
.LBB14_95:
	movups	256(%rsp), %xmm0
	movdqu	272(%rsp), %xmm1
	movaps	%xmm0, 128(%rsp)
	movdqa	%xmm1, 144(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 40(%rsp)
	movups	328(%rsp), %xmm0
	movaps	%xmm0, 384(%rsp)
	movdqu	312(%rsp), %xmm0
	movdqa	%xmm0, 368(%rsp)
	movq	16(%rsp), %rcx
	movq	%rcx, %rax
	movq	32(%rsp), %rdi
	cmpq	72(%rdi), %rcx
	jne	.LBB14_98
.Ltmp23:
	movq	104(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp24:
	movq	32(%rsp), %rdi
	movq	80(%rdi), %rax
.LBB14_98:
	movq	64(%rdi), %rcx
	imulq	$88, %rax, %rdx
	movq	160(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movaps	144(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	96(%rsp), %rsi
	movq	%rsi, 40(%rcx,%rdx)
	movq	40(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	368(%rsp), %xmm0
	movdqa	384(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rdi)
	movq	88(%rdi), %rax
	movq	96(%rdi), %rcx
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB14_101
	movl	$16, %esi
.LBB14_100:
	addq	%rsi, %r15
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB14_100
.LBB14_101:
	rep		bsfl	%edx, %edx
	addq	%r15, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB14_103
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB14_103:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$36, (%rax,%rdx)
	movb	$36, 16(%rdi,%rax)
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	32(%rsp), %rsi
	subq	%rcx, 104(%rsi)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%r14, -24(%rax,%rcx,8)
	movq	%r12, -16(%rax,%rcx,8)
	movq	%rsi, %r12
	movq	16(%rsp), %r14
	movq	%r14, -8(%rax,%rcx,8)
	incq	112(%rsi)
	movq	24(%rsp), %rsi
	cmpq	80(%rsp), %rsi
	movq	48(%rsp), %rax
	je	.LBB14_64
	jmp	.LBB14_66
.LBB14_104:
.Ltmp25:
	movq	%rax, %rbx
	movq	96(%rsp), %rdi
	movq	40(%rsp), %rsi
	jmp	.LBB14_107
.LBB14_105:
.Ltmp13:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	16(%rsp), %rsi
	jmp	.LBB14_109
.LBB14_106:
.Ltmp22:
	movq	%rax, %rbx
	movq	296(%rsp), %rdi
	movq	304(%rsp), %rsi
.LBB14_107:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB14_113
.LBB14_108:
.Ltmp10:
	movq	%rax, %rbx
	movq	296(%rsp), %rdi
	movq	304(%rsp), %rsi
.LBB14_109:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	movl	$8, %eax
	jmp	.LBB14_112
.LBB14_110:
.Ltmp33:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	16(%rsp), %rsi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB14_115
.LBB14_111:
.Ltmp28:
	movq	%rax, %rbx
	movq	72(%rsp), %rax
.LBB14_112:
	movq	%rax, 48(%rsp)
.LBB14_113:
	movq	80(%rsp), %rsi
	movq	48(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
	jmp	.LBB14_115
.LBB14_114:
.Ltmp36:
	movq	%rax, %rbx
.LBB14_115:
	movq	112(%rsp), %rdi
	movq	352(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_116:
.Ltmp59:
	movq	%rax, %rbx
	movq	112(%rsp), %rdi
	movq	352(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	movq	128(%rsp), %rdi
	movq	136(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end14:
	.size	world_insert_or_spawn_batch, .Lfunc_end14-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp35-.Ltmp0
	.uleb128 .Ltmp36-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp37-.Lfunc_begin0
	.uleb128 .Ltmp52-.Ltmp37
	.uleb128 .Ltmp59-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp52-.Lfunc_begin0
	.uleb128 .Ltmp41-.Ltmp52
	.byte	0
	.byte	0
	.uleb128 .Ltmp41-.Lfunc_begin0
	.uleb128 .Ltmp48-.Ltmp41
	.uleb128 .Ltmp59-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp48-.Lfunc_begin0
	.uleb128 .Ltmp53-.Ltmp48
	.byte	0
	.byte	0
	.uleb128 .Ltmp53-.Lfunc_begin0
	.uleb128 .Ltmp56-.Ltmp53
	.uleb128 .Ltmp59-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp36-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin0
	.uleb128 .Ltmp27-.Ltmp14
	.uleb128 .Ltmp28-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp29-.Lfunc_begin0
	.uleb128 .Ltmp30-.Ltmp29
	.uleb128 .Ltmp36-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp31-.Lfunc_begin0
	.uleb128 .Ltmp32-.Ltmp31
	.uleb128 .Ltmp33-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp4
	.uleb128 .Ltmp28-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin0
	.uleb128 .Ltmp9-.Ltmp8
	.uleb128 .Ltmp10-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin0
	.uleb128 .Ltmp12-.Ltmp11
	.uleb128 .Ltmp13-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin0
	.uleb128 .Ltmp19-.Ltmp16
	.uleb128 .Ltmp28-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp20
	.uleb128 .Ltmp22-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin0
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin0
	.uleb128 .Lfunc_end14-.Ltmp24
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/381bfbb/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0
	.asciz	"_\000\000\000\000\000\000\000\275\001\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0
	.asciz	"_\000\000\000\000\000\000\000\350\001\000\000#\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 30

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

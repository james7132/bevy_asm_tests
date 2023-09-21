	.text
	.file	"world_insert_or_spawn_batch.bb1a85a00ff01800-cgu.0"
	.section	".text.core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>,@function
core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB0_1
	shlq	$4, %rsi
	movl	$4, %edx
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
	movl	$4, %edx
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
	movabsq	$768614336404564651, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	leaq	(,%r14,4), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB6_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB7_3
	movq	(%rbx), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB8_3
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB8_4
.LBB8_3:
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB9_3
	movq	(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB9_4
.LBB9_3:
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
	je	.LBB10_3
	movq	(%rbx), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB10_4
.LBB10_3:
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
	movq	%r8, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r9
	movq	(%rsi), %rax
	testq	%rax, %rax
	movq	%rdi, 56(%rsp)
	movss	%xmm1, 52(%rsp)
	je	.LBB11_9
	movl	%ecx, %ebp
	movl	%edx, %r12d
	cmpl	$1, %eax
	jne	.LBB11_18
	movq	24(%r14), %r13
	movl	4(%rbx), %edi
	movq	88(%r13), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB11_99
	decq	%rsi
	movq	72(%r13), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	8(%rax,%rcx,4), %r15d
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%rax,%rdx,4), %r8d
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rcx,4)
	movl	%r8d, 8(%rax,%rcx,4)
	movq	%rsi, 88(%r13)
	cmpq	%rdi, %rsi
	je	.LBB11_40
	jbe	.LBB11_97
	leaq	(%rax,%rcx,4), %rdx
	movl	4(%rdx), %esi
	movq	32(%r14), %rcx
	leaq	(%rsi,%rsi,4), %rax
	cmpq	%rsi, 16(%rcx)
	jbe	.LBB11_25
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	cmpl	(%rdx), %esi
	jne	.LBB11_38
	movl	4(%rcx,%rax,4), %r8d
	cmpl	$-1, %r8d
	je	.LBB11_38
	leaq	(%rcx,%rax,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB11_39
.LBB11_9:
	movq	24(%r14), %rcx
	movq	40(%r14), %r13
	movq	24(%r13), %rax
	xorl	%r12d, %r12d
	cmpq	16(%rcx), %rax
	jae	.LBB11_12
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_12
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB11_12:
	movq	48(%r14), %rbp
	movl	12(%rbx), %r15d
	movl	72(%r14), %eax
	movl	%eax, 8(%rsp)
	movss	%xmm0, 32(%rsp)
	movq	(%r13), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB11_16
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_16
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_27
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rbp), %r14
.LBB11_16:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB11_28
.LBB11_17:
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB11_29
.LBB11_18:
	movl	%r12d, 16(%rsp)
	movq	24(%r14), %r12
	movl	4(%rbx), %edi
	movq	88(%r12), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB11_99
	decq	%rsi
	movq	72(%r12), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	8(%rax,%rcx,4), %ebx
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%rax,%rdx,4), %r8d
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rcx,4)
	movl	%r8d, 8(%rax,%rcx,4)
	movq	%rsi, 88(%r12)
	cmpq	%rdi, %rsi
	je	.LBB11_66
	jbe	.LBB11_97
	leaq	(%rax,%rcx,4), %rdx
	movl	4(%rdx), %esi
	movq	32(%r14), %rcx
	leaq	(%rsi,%rsi,4), %rax
	cmpq	%rsi, 16(%rcx)
	jbe	.LBB11_26
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	cmpl	(%rdx), %esi
	jne	.LBB11_64
	movl	4(%rcx,%rax,4), %edx
	cmpl	$-1, %edx
	je	.LBB11_64
	leaq	(%rcx,%rax,4), %r8
	addq	$4, %r8
	movl	8(%r8), %esi
	movl	12(%r8), %r8d
	jmp	.LBB11_65
.LBB11_25:
	movq	(%rcx), %rcx
.LBB11_38:
.LBB11_39:
	movl	%r8d, 4(%rcx,%rax,4)
	movl	%edi, 8(%rcx,%rax,4)
	movl	%esi, 12(%rcx,%rax,4)
	movl	%edx, 16(%rcx,%rax,4)
.LBB11_40:
	movq	8(%r14), %rbx
	movq	88(%rbx), %rsi
	cmpq	80(%rbx), %rsi
	movq	%rsi, 24(%rsp)
	jne	.LBB11_42
	leaq	72(%rbx), %rdi
	movq	24(%rsp), %rsi
	movss	%xmm0, 8(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	24(%rsp), %rsi
	movss	8(%rsp), %xmm0
	movq	88(%rbx), %rax
	jmp	.LBB11_43
.LBB11_42:
	movq	%rsi, %rax
.LBB11_43:
	movq	72(%rbx), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r12d, (%rcx,%rdx,4)
	movl	%ebp, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 88(%rbx)
	movl	144(%rbx), %edi
	movl	148(%rbx), %edx
	movq	32(%r14), %rax
	movq	(%rax), %rax
	movl	%ebp, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edi, 16(%rsp)
	movl	%edi, 4(%rax,%rcx,4)
	movl	%esi, 8(%rax,%rcx,4)
	movl	%edx, 8(%rsp)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	40(%r14), %rbx
	movq	24(%rbx), %rax
	xorl	%r12d, %r12d
	cmpq	16(%r13), %rax
	jae	.LBB11_46
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB11_46
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r12
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r12
.LBB11_46:
	movq	48(%r14), %r13
	movl	72(%r14), %ebp
	movss	%xmm0, 32(%rsp)
	movq	(%rbx), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%r13)
	jbe	.LBB11_50
	movq	32(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB11_50
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_52
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%r13), %r14
.LBB11_50:
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB11_53
.LBB11_51:
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_54
.LBB11_26:
	movq	(%rcx), %rcx
.LBB11_64:
.LBB11_65:
	movl	%edx, 4(%rcx,%rax,4)
	movl	%edi, 8(%rcx,%rax,4)
	movl	%esi, 12(%rcx,%rax,4)
	movl	%r8d, 16(%rcx,%rax,4)
.LBB11_66:
	movss	%xmm0, 8(%rsp)
	movq	16(%r14), %rcx
	movq	48(%r14), %rsi
	leaq	32(%rsp), %rdi
	movl	%ebx, %edx
	movq	%rcx, 24(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	8(%r14), %r13
	movl	44(%rsp), %r15d
	movq	88(%r13), %r8
	cmpq	80(%r13), %r8
	jne	.LBB11_68
	leaq	72(%r13), %rdi
	movq	%r8, %rsi
	movq	%r12, 64(%rsp)
	movq	%r15, %r12
	movl	%ebx, %r15d
	movl	%ebp, %ebx
	movq	%r8, %rbp
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%rbp, %r8
	movl	%ebx, %ebp
	movl	%r15d, %ebx
	movq	%r12, %r15
	movq	64(%rsp), %r12
	movq	88(%r13), %rax
	jmp	.LBB11_69
.LBB11_68:
	movq	%r8, %rax
.LBB11_69:
	movss	8(%rsp), %xmm0
	movq	72(%r13), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	16(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	%ebp, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 88(%r13)
	movl	144(%r13), %r9d
	movl	148(%r13), %r10d
	movq	32(%r14), %rax
	movq	(%rax), %rcx
	movl	%ebp, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%r9d, 4(%rcx,%rdx,4)
	movl	%r8d, 8(%rcx,%rdx,4)
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpl	$0, 32(%rsp)
	je	.LBB11_74
	movl	40(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r12, %rcx
	cmpl	%edx, 144(%r12)
	je	.LBB11_72
	imulq	$152, %rdx, %rcx
	addq	64(%r14), %rcx
	cmpl	%edx, 144(%r13)
	cmoveq	%r13, %rcx
.LBB11_72:
	movl	%ebx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB11_98
	movq	72(%rcx), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	%ebx, 8(%rax,%rcx,4)
.LBB11_74:
	movq	40(%r14), %rbp
	movq	24(%rbp), %rax
	xorl	%r13d, %r13d
	cmpq	16(%r12), %rax
	jae	.LBB11_77
	movq	(%r12), %rcx
	testq	%rcx, %rcx
	movq	24(%rsp), %rdx
	je	.LBB11_78
	shlq	$5, %rax
	leaq	(%rcx,%rax), %r13
	movq	(%rcx,%rax), %rax
	testq	%rax, %rax
	cmoveq	%rax, %r13
	jmp	.LBB11_78
.LBB11_77:
	movq	24(%rsp), %rdx
.LBB11_78:
	movl	72(%r14), %r12d
	movss	%xmm0, 20(%rsp)
	movq	(%rbp), %rax
	movq	(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rdx)
	jbe	.LBB11_83
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_83
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_82
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rdx), %r14
	jmp	.LBB11_83
.LBB11_27:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB11_17
.LBB11_28:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB11_29:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%rbp)
	jbe	.LBB11_33
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_33
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_35
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rbp), %r14
.LBB11_33:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_36
.LBB11_34:
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB11_37
.LBB11_35:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_34
.LBB11_36:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB11_37:
	movq	72(%r14), %rax
	movl	%ecx, (%rax,%r15,4)
	movups	(%rbx), %xmm0
	movq	56(%rsp), %rax
	movups	%xmm0, (%rax)
	jmp	.LBB11_96
.LBB11_52:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, (%rax)
	jne	.LBB11_51
.LBB11_53:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	%ebp, (%rax,%r15,4)
.LBB11_54:
	movq	72(%r14), %rax
	movl	%ebp, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, 40(%r13)
	jbe	.LBB11_58
	movq	32(%r13), %rcx
	testq	%rcx, %rcx
	movl	8(%rsp), %ebx
	je	.LBB11_59
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_61
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%r13), %r14
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_60
.LBB11_62:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	%ebp, (%rax,%r15,4)
	jmp	.LBB11_63
.LBB11_58:
	movl	8(%rsp), %ebx
.LBB11_59:
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_62
.LBB11_60:
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
.LBB11_63:
	movl	16(%rsp), %ecx
	movq	72(%r14), %rax
	movl	%ebp, (%rax,%r15,4)
	movq	56(%rsp), %rax
	movl	%ecx, (%rax)
	movq	24(%rsp), %rcx
	movl	%ecx, 4(%rax)
	movl	%ebx, 8(%rax)
	jmp	.LBB11_95
.LBB11_61:
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_60
	jmp	.LBB11_62
.LBB11_82:
	xorl	%r14d, %r14d
.LBB11_83:
	movl	%r10d, 16(%rsp)
	movl	%r9d, %ebx
	movq	%r8, 8(%rsp)
	movq	(%r13), %rax
	cmpb	$0, (%rax)
	je	.LBB11_85
	leaq	20(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_86
.LBB11_85:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14), %rdi
	leaq	20(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	%r12d, (%rax,%r15,4)
.LBB11_86:
	movq	72(%r14), %rax
	movl	%r12d, (%rax,%r15,4)
	movss	52(%rsp), %xmm0
	movss	%xmm0, 20(%rsp)
	movq	(%rbp), %rax
	movq	8(%rax), %rax
	xorl	%r14d, %r14d
	movq	24(%rsp), %rdx
	cmpq	%rax, 40(%rdx)
	jbe	.LBB11_90
	movq	32(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_90
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_92
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	addq	(%rdx), %r14
.LBB11_90:
	movq	(%r13), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_93
.LBB11_91:
	leaq	20(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_94
.LBB11_92:
	xorl	%r14d, %r14d
	movq	(%r13), %rax
	cmpb	$0, 1(%rax)
	jne	.LBB11_91
.LBB11_93:
	movq	8(%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r14), %rdi
	leaq	20(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14), %rax
	movl	%r12d, (%rax,%r15,4)
.LBB11_94:
	movq	72(%r14), %rax
	movl	%r12d, (%rax,%r15,4)
	movq	56(%rsp), %rax
	movl	%ebx, (%rax)
	movq	8(%rsp), %rcx
	movl	%ecx, 4(%rax)
	movl	16(%rsp), %ecx
	movl	%ecx, 8(%rax)
.LBB11_95:
	movl	%r15d, 12(%rax)
.LBB11_96:
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
.LBB11_97:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB11_98:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB11_99:
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
	.zero	16,103
.LCPI14_1:
	.byte	150
	.byte	101
	.byte	94
	.byte	52
	.byte	240
	.byte	159
	.byte	119
	.byte	58
	.byte	239
	.byte	31
	.byte	177
	.byte	171
	.byte	213
	.byte	46
	.byte	138
	.byte	156
.LCPI14_2:
	.zero	16,3
.LCPI14_3:
	.zero	16,126
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
	subq	$392, %rsp
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%rsi), %rax
	movq	%rax, 184(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 328(%rsp)
	movq	16(%rsi), %r13
.Ltmp0:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp1:
	movq	%r13, %rax
	shlq	$4, %rax
	addq	184(%rsp), %rax
	movq	%rax, 352(%rsp)
	movabsq	$-3568677092711924658, %r12
	movl	760(%r14), %eax
	movl	%eax, 68(%rsp)
	leaq	488(%r14), %rbp
	leaq	64(%r14), %rax
	movq	%rax, 72(%rsp)
	leaq	216(%r14), %rax
	movq	%rax, 200(%rsp)
	leaq	512(%r14), %rdi
	movq	512(%r14), %rax
	movq	520(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI14_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI14_1(%rip), %xmm2
	movq	%r12, %r8
	movq	%r14, 16(%rsp)
.LBB14_2:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm3
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
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movdqu	(%rdx,%r10,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %ebx
	movl	%r11d, %r9d
	cmpl	$65535, %ebx
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
	leaq	(%rax,%r10,8), %rcx
	addq	$-8, %rcx
.LBB14_8:
	movq	(%rcx), %rsi
	shlq	$5, %rsi
	addq	488(%r14), %rsi
	leaq	152(%r14), %rcx
.Ltmp37:
	movl	68(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	80(%rsp), %rdi
	movq	%rsi, 48(%rsp)
	movq	%r14, %rdx
	movq	%rcx, 192(%rsp)
	movq	72(%rsp), %r8
	movq	200(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp38:
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	112(%rsp), %xmm2
	movdqu	%xmm2, 280(%rsp)
	movdqu	%xmm1, 264(%rsp)
	movdqu	%xmm0, 248(%rsp)
	movq	$3, 240(%rsp)
	movq	$4, 208(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 216(%rsp)
	testq	%r13, %r13
	movq	352(%rsp), %r13
	je	.LBB14_38
	movq	184(%rsp), %rbx
	jmp	.LBB14_13
	.p2align	4, 0x90
.LBB14_11:
	movq	208(%rsp), %rax
	movl	%r14d, (%rax,%rsi,8)
	movl	%r15d, 4(%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 224(%rsp)
.LBB14_12:
	addq	$16, %rbx
	cmpq	%r13, %rbx
	je	.LBB14_38
.LBB14_13:
	movl	(%rbx), %r14d
	movl	4(%rbx), %r15d
	movss	8(%rbx), %xmm0
	movss	%xmm0, 24(%rsp)
	movd	12(%rbx), %xmm0
	movd	%xmm0, 40(%rsp)
.Ltmp40:
	leaq	240(%rsp), %rdi
	callq	*bevy_ecs::world::World::insert_or_spawn_batch::SpawnOrInsert::entities@GOTPCREL(%rip)
.Ltmp41:
.Ltmp42:
	leaq	160(%rsp), %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp43:
	movl	160(%rsp), %eax
	cmpq	$2, %rax
	je	.LBB14_23
	cmpl	$1, %eax
	jne	.LBB14_26
	cmpl	$3, 240(%rsp)
	jne	.LBB14_29
	movq	272(%rsp), %rbp
.Ltmp52:
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp53:
	movl	%eax, %r13d
	movq	248(%rsp), %r12
	movq	88(%r12), %rsi
	movq	%rsi, %rax
	cmpq	80(%r12), %rsi
	movq	%rsi, 344(%rsp)
	jne	.LBB14_22
.Ltmp54:
	leaq	72(%r12), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp55:
	movq	88(%r12), %rax
.LBB14_22:
	movq	72(%r12), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r14d, (%rcx,%rdx,4)
	movl	%r15d, 4(%rcx,%rdx,4)
	movl	%r13d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %eax
	movl	%eax, 60(%rsp)
	movl	148(%r12), %eax
	movl	%eax, 64(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 336(%rsp)
	movl	288(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%r13d, %edx
	movl	%r13d, 56(%rsp)
	movq	(%rbp), %r13
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	movl	%edx, %r12d
	movq	8(%r13,%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r13,%r14), %rdi
	leaq	80(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r13,%r14), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	72(%r13,%r14), %rax
	movl	%ecx, (%rax,%r12,4)
	movd	40(%rsp), %xmm0
	movd	%xmm0, 80(%rsp)
	movq	336(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rbp), %r14
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	movq	8(%r14,%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r14,%r13), %rdi
	leaq	80(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14,%r13), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	72(%r14,%r13), %rax
	movq	352(%rsp), %r13
	movl	%ecx, (%rax,%r12,4)
	movq	256(%rsp), %rax
	movq	(%rax), %rax
	leaq	(%r15,%r15,4), %rcx
	movl	60(%rsp), %edx
	movl	%edx, 4(%rax,%rcx,4)
	movq	344(%rsp), %rdx
	movl	%edx, 8(%rax,%rcx,4)
	movl	64(%rsp), %edx
	movl	%edx, 12(%rax,%rcx,4)
	movl	56(%rsp), %edx
	movl	%edx, 16(%rax,%rcx,4)
	jmp	.LBB14_12
	.p2align	4, 0x90
.LBB14_23:
	movq	224(%rsp), %rsi
	cmpq	216(%rsp), %rsi
	jne	.LBB14_11
.Ltmp44:
	leaq	208(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp45:
	movq	224(%rsp), %rsi
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_26:
	movl	164(%rsp), %ebp
	cmpl	$3, 240(%rsp)
	je	.LBB14_35
	cmpl	320(%rsp), %ebp
	jne	.LBB14_35
	movl	%ebp, 80(%rsp)
	leaq	168(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	84(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp60:
	leaq	360(%rsp), %rdi
	leaq	240(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	leaq	80(%rsp), %r8
	movd	24(%rsp), %xmm0
	movd	40(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp61:
	jmp	.LBB14_12
.LBB14_29:
.Ltmp46:
	movl	68(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	80(%rsp), %rdi
	movq	48(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	192(%rsp), %rcx
	movq	72(%rsp), %r8
	movq	200(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp47:
	movq	104(%rsp), %rbp
.Ltmp48:
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp49:
	movl	%eax, %r13d
	movq	80(%rsp), %r12
	movq	88(%r12), %rsi
	movq	%rsi, %rax
	cmpq	80(%r12), %rsi
	movq	%rsi, 344(%rsp)
	jne	.LBB14_34
.Ltmp50:
	leaq	72(%r12), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp51:
	movq	88(%r12), %rax
.LBB14_34:
	movq	72(%r12), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r14d, (%rcx,%rdx,4)
	movl	%r15d, 4(%rcx,%rdx,4)
	movl	%r13d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %eax
	movl	%eax, 60(%rsp)
	movl	148(%r12), %eax
	movl	%eax, 64(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 336(%rsp)
	movl	120(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 360(%rsp)
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%r13d, %edx
	movl	%r13d, 56(%rsp)
	movq	(%rbp), %r13
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	movl	%edx, %r12d
	movq	8(%r13,%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r13,%r14), %rdi
	leaq	360(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r13,%r14), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	72(%r13,%r14), %rax
	movl	%ecx, (%rax,%r12,4)
	movss	40(%rsp), %xmm0
	movss	%xmm0, 360(%rsp)
	movq	336(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rbp), %r14
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	movq	8(%r14,%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	16(%r14,%r13), %rdi
	leaq	360(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r14,%r13), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	72(%r14,%r13), %rax
	movq	352(%rsp), %r13
	movl	%ecx, (%rax,%r12,4)
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	leaq	(%r15,%r15,4), %rcx
	movl	60(%rsp), %edx
	movl	%edx, 4(%rax,%rcx,4)
	movq	344(%rsp), %rdx
	movl	%edx, 8(%rax,%rcx,4)
	movl	64(%rsp), %edx
	movl	%edx, 12(%rax,%rcx,4)
	movl	56(%rsp), %edx
	movl	%edx, 16(%rax,%rcx,4)
	movdqu	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	112(%rsp), %xmm2
	leaq	248(%rsp), %rax
	movdqu	%xmm2, 32(%rax)
	movdqu	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	movq	$3, 240(%rsp)
	jmp	.LBB14_12
.LBB14_35:
.Ltmp56:
	movl	68(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	leaq	80(%rsp), %rdi
	movq	48(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	192(%rsp), %rcx
	movq	72(%rsp), %r8
	movq	200(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp57:
	movl	%ebp, 360(%rsp)
	leaq	168(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	364(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp58:
	leaq	376(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	leaq	360(%rsp), %r8
	movd	24(%rsp), %xmm0
	movd	40(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp59:
	movups	80(%rsp), %xmm0
	movdqu	96(%rsp), %xmm1
	movdqu	112(%rsp), %xmm2
	movdqu	128(%rsp), %xmm3
	movaps	%xmm0, 240(%rsp)
	movdqa	%xmm1, 256(%rsp)
	movdqa	%xmm2, 272(%rsp)
	movdqa	%xmm3, 288(%rsp)
	movdqu	144(%rsp), %xmm0
	movdqa	%xmm0, 304(%rsp)
	movl	%ebp, 320(%rsp)
	jmp	.LBB14_12
.LBB14_38:
	movq	328(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB14_40
	shlq	$4, %rsi
	movl	$4, %edx
	movq	184(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB14_40:
	cmpq	$0, 224(%rsp)
	je	.LBB14_43
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB14_46
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB14_45
	jmp	.LBB14_46
.LBB14_43:
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB14_46
	movq	208(%rsp), %rdi
.LBB14_45:
	shlq	$3, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB14_46:
	addq	$392, %rsp
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
	.cfi_def_cfa_offset 448
	cmpq	$0, 528(%r14)
	jne	.LBB14_49
.Ltmp2:
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp3:
.LBB14_49:
	movabsq	$19979787217326158, %rbx
	movq	%r14, %rcx
	movabsq	$-735620314498484544, %r15
	movabsq	$512786625045126592, %r14
	movq	$8, 160(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 168(%rsp)
	leaq	88(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	88(%rcx), %rax
	movq	96(%rcx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI14_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r14, %rdi
.LBB14_50:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB14_51:
	testw	%r8w, %r8w
	je	.LBB14_53
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%rbx, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%r15, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB14_51
	jmp	.LBB14_55
.LBB14_53:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB14_66
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB14_50
.LBB14_55:
	leaq	(%rax,%r9,8), %rcx
	addq	$-8, %rcx
.LBB14_56:
	movq	(%rcx), %r15
.Ltmp14:
	leaq	160(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp15:
	movabsq	$-4171830141351967397, %rbx
	movabsq	$616562911678838443, %r14
	movabsq	$-244722698453483641, %rdi
	movq	160(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, 24(%rsp)
	movq	%r15, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	movq	%rcx, 176(%rsp)
	movq	16(%rsp), %r15
	movq	88(%r15), %rax
	movq	96(%r15), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI14_3(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB14_58:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	.p2align	4, 0x90
.LBB14_59:
	testw	%r8w, %r8w
	je	.LBB14_61
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%rbx, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%r14, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB14_59
	jmp	.LBB14_63
.LBB14_61:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB14_80
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB14_58
.LBB14_63:
	leaq	(%rax,%r9,8), %rcx
	addq	$-8, %rcx
	movq	(%rcx), %rbx
	movq	40(%rsp), %rsi
	cmpq	168(%rsp), %rsi
	jne	.LBB14_94
.LBB14_64:
.Ltmp26:
	leaq	160(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp27:
	movq	160(%rsp), %rcx
	movq	176(%rsp), %rsi
	movq	16(%rsp), %r15
	jmp	.LBB14_95
.LBB14_66:
	movq	16(%rsp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB14_68
.Ltmp4:
	movq	32(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp5:
.LBB14_68:
	movq	16(%rsp), %rax
	movq	80(%rax), %rsi
	movq	$1, 80(%rsp)
	movq	%rbx, 96(%rsp)
	movq	%r15, 88(%rsp)
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 120(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rax
	movq	%rax, 128(%rsp)
	movq	$30, 136(%rsp)
	movq	$0, 144(%rsp)
	movw	$256, 152(%rsp)
.Ltmp6:
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rsi, 40(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp7:
	cmpb	$0, 312(%rsp)
	je	.LBB14_71
.Ltmp8:
	leaq	240(%rsp), %rsi
	movq	200(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp9:
.LBB14_71:
	movups	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movaps	%xmm0, 80(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movq	272(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	280(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 24(%rsp)
	movups	312(%rsp), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqu	296(%rsp), %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, %rax
	movq	16(%rsp), %rdi
	cmpq	72(%rdi), %rcx
	jne	.LBB14_74
.Ltmp11:
	movq	72(%rsp), %rdi
	movq	40(%rsp), %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp12:
	movq	16(%rsp), %rdi
	movq	80(%rdi), %rax
.LBB14_74:
	movq	64(%rdi), %rcx
	imulq	$88, %rax, %rdx
	movq	112(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	48(%rsp), %rsi
	movq	%rsi, 40(%rcx,%rdx)
	movq	24(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	208(%rsp), %xmm0
	movdqa	224(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%rdi)
	movq	88(%rdi), %rax
	movq	96(%rdi), %rcx
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB14_77
	movl	$16, %esi
.LBB14_76:
	addq	%rsi, %r14
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB14_76
.LBB14_77:
	rep		bsfl	%edx, %edx
	addq	%r14, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB14_79
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB14_79:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$3, (%rax,%rdx)
	movb	$3, 16(%rdi,%rax)
	negq	%rdx
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 104(%rsi)
	leaq	(%rdx,%rdx,2), %rdx
	movq	%r15, -24(%rax,%rdx,8)
	movq	%rbx, -16(%rax,%rdx,8)
	leaq	(%rax,%rdx,8), %rcx
	addq	$-8, %rcx
	movq	40(%rsp), %rdi
	movq	%rdi, -8(%rax,%rdx,8)
	incq	112(%rsi)
	jmp	.LBB14_56
.LBB14_80:
	cmpq	$0, 104(%r15)
	jne	.LBB14_82
.Ltmp16:
	movq	32(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp17:
.LBB14_82:
	movq	16(%rsp), %rax
	movq	80(%rax), %rsi
	movq	$1, 80(%rsp)
	movq	%rbx, 96(%rsp)
	movq	%r14, 88(%rsp)
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 120(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rax
	movq	%rax, 128(%rsp)
	movq	$30, 136(%rsp)
	movq	$0, 144(%rsp)
	movw	$256, 152(%rsp)
.Ltmp18:
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rsi, 32(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp19:
	cmpb	$0, 312(%rsp)
	je	.LBB14_85
.Ltmp20:
	leaq	240(%rsp), %rsi
	movq	200(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp21:
.LBB14_85:
	movups	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movaps	%xmm0, 80(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movq	272(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	280(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 48(%rsp)
	movups	312(%rsp), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqu	296(%rsp), %xmm0
	movdqa	%xmm0, 208(%rsp)
	movq	32(%rsp), %rcx
	movq	%rcx, %rax
	movq	16(%rsp), %r15
	cmpq	72(%r15), %rcx
	jne	.LBB14_88
.Ltmp23:
	movq	72(%rsp), %rdi
	movq	32(%rsp), %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp24:
	movq	80(%r15), %rax
.LBB14_88:
	movq	64(%r15), %rcx
	imulq	$88, %rax, %rdx
	movq	112(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	192(%rsp), %rsi
	movq	%rsi, 40(%rcx,%rdx)
	movq	48(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	208(%rsp), %xmm0
	movdqa	224(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r15)
	movq	88(%r15), %rax
	movq	96(%r15), %rcx
	movabsq	$-244722698453483641, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB14_91
	movl	$16, %esi
.LBB14_90:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB14_90
.LBB14_91:
	rep		bsfl	%edx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB14_93
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB14_93:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$126, (%rax,%rdx)
	movb	$126, 16(%rdi,%rax)
	negq	%rdx
	andb	$1, %sil
	movzbl	%sil, %ecx
	subq	%rcx, 104(%r15)
	leaq	(%rdx,%rdx,2), %rdx
	movq	%r14, -24(%rax,%rdx,8)
	movq	%rbx, -16(%rax,%rdx,8)
	leaq	(%rax,%rdx,8), %rcx
	addq	$-8, %rcx
	movq	32(%rsp), %rsi
	movq	%rsi, -8(%rax,%rdx,8)
	incq	112(%r15)
	movq	(%rcx), %rbx
	movq	40(%rsp), %rsi
	cmpq	168(%rsp), %rsi
	je	.LBB14_64
.LBB14_94:
	movq	24(%rsp), %rcx
.LBB14_95:
	movq	%rbx, (%rcx,%rsi,8)
	incq	%rsi
	movq	%rsi, 176(%rsp)
	movq	504(%r15), %rbx
	movq	%rsi, 96(%rsp)
	movdqu	160(%rsp), %xmm0
	movdqa	%xmm0, 80(%rsp)
.Ltmp32:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rsi
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %r8
	movl	$64, %edx
	movq	72(%rsp), %rcx
	movq	%rbx, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp33:
	movq	%r15, %rax
	movq	240(%rsp), %r15
	movq	248(%rsp), %r14
	movq	504(%rax), %rsi
	cmpq	496(%rax), %rsi
	jne	.LBB14_99
.Ltmp34:
	movq	%rbp, %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp35:
	movq	16(%rsp), %rdi
	movq	504(%rdi), %rsi
	jmp	.LBB14_100
.LBB14_99:
	movq	16(%rsp), %rdi
.LBB14_100:
	movq	488(%rdi), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movq	%r15, (%rax,%rcx)
	movq	%r14, 8(%rax,%rcx)
	movups	256(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 504(%rdi)
	movq	512(%rdi), %rax
	movq	520(%rdi), %rcx
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	movq	%rdi, %r14
	jne	.LBB14_103
	movl	$16, %esi
	.p2align	4, 0x90
.LBB14_102:
	addq	%rsi, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB14_102
.LBB14_103:
	rep		bsfl	%edx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB14_105
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB14_105:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$103, (%rax,%rdx)
	movb	$103, 16(%rdi,%rax)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rdx
	andb	$1, %sil
	movzbl	%sil, %ecx
	subq	%rcx, 528(%r14)
	movabsq	$4213011830447957398, %rcx
	movq	%rcx, -24(%rax,%rdx,8)
	movabsq	$-7166864361763299345, %rcx
	movq	%rcx, -16(%rax,%rdx,8)
	leaq	(%rax,%rdx,8), %rcx
	addq	$-8, %rcx
	movq	%rbx, -8(%rax,%rdx,8)
	incq	536(%r14)
	jmp	.LBB14_8
.LBB14_106:
.Ltmp25:
	movq	%rax, %r13
	movq	192(%rsp), %rdi
	movq	48(%rsp), %rsi
	jmp	.LBB14_109
.LBB14_107:
.Ltmp13:
	movq	%rax, %r13
	movq	48(%rsp), %rdi
	movq	24(%rsp), %rsi
	jmp	.LBB14_111
.LBB14_108:
.Ltmp22:
	movq	%rax, %r13
	movq	280(%rsp), %rdi
	movq	288(%rsp), %rsi
.LBB14_109:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB14_115
.LBB14_110:
.Ltmp10:
	movq	%rax, %r13
	movq	280(%rsp), %rdi
	movq	288(%rsp), %rsi
.LBB14_111:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	movl	$8, %eax
	jmp	.LBB14_114
.LBB14_112:
.Ltmp36:
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB14_118
.LBB14_113:
.Ltmp28:
	movq	%rax, %r13
	movq	160(%rsp), %rax
.LBB14_114:
	movq	%rax, 24(%rsp)
.LBB14_115:
	movq	168(%rsp), %rsi
.Ltmp29:
	movq	24(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp30:
	jmp	.LBB14_118
.LBB14_116:
.Ltmp31:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.LBB14_117:
.Ltmp39:
	movq	%rax, %r13
.LBB14_118:
	movq	184(%rsp), %rdi
	movq	328(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	jmp	.LBB14_120
.LBB14_119:
.Ltmp62:
	movq	%rax, %r13
	movq	184(%rsp), %rdi
	movq	328(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	movq	208(%rsp), %rdi
	movq	216(%rsp), %rsi
.Ltmp63:
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
.Ltmp64:
.LBB14_120:
	movq	%r13, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_121:
.Ltmp65:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end14:
	.size	world_insert_or_spawn_batch, .Lfunc_end14-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp38-.Ltmp0
	.uleb128 .Ltmp39-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp40-.Lfunc_begin0
	.uleb128 .Ltmp55-.Ltmp40
	.uleb128 .Ltmp62-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp55-.Lfunc_begin0
	.uleb128 .Ltmp44-.Ltmp55
	.byte	0
	.byte	0
	.uleb128 .Ltmp44-.Lfunc_begin0
	.uleb128 .Ltmp51-.Ltmp44
	.uleb128 .Ltmp62-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp51-.Lfunc_begin0
	.uleb128 .Ltmp56-.Ltmp51
	.byte	0
	.byte	0
	.uleb128 .Ltmp56-.Lfunc_begin0
	.uleb128 .Ltmp59-.Ltmp56
	.uleb128 .Ltmp62-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp39-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp14
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
	.uleb128 .Ltmp32-.Lfunc_begin0
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp39-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp34-.Lfunc_begin0
	.uleb128 .Ltmp35-.Ltmp34
	.uleb128 .Ltmp36-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp29-.Lfunc_begin0
	.uleb128 .Ltmp30-.Ltmp29
	.uleb128 .Ltmp31-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp63-.Lfunc_begin0
	.uleb128 .Ltmp64-.Ltmp63
	.uleb128 .Ltmp65-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp64-.Lfunc_begin0
	.uleb128 .Lfunc_end14-.Ltmp64
	.byte	0
	.byte	0
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-41530a2346942c86/c9f9133/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0
	.asciz	"_\000\000\000\000\000\000\000\260\001\000\000\t\000\000"
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
	.asciz	"_\000\000\000\000\000\000\000\333\001\000\000\026\000\000"
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
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"world_insert_or_spawn_batch.12730213-cgu.0"
	.section	".text.core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>,@function
core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_1
	movq	24(%rdi), %rdi
	shlq	$4, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_1:
	retq
.Lfunc_end0:
	.size	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>, .Lfunc_end0-core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>,@function
core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>:
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r14
	movq	16(%rdi), %r13
	testq	%r14, %r14
	je	.LBB1_5
	movq	(%r13), %r15
	cmpq	$-1, %r15
	je	.LBB1_5
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	negq	%rbx
	negq	%r15
	movq	$-16, %rbp
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_4:
	subq	%r12, %rbx
	leaq	(%r15,%rbp), %rax
	incq	%rax
	incq	%rbp
	cmpq	$-15, %rax
	je	.LBB1_5
.LBB1_3:
	movq	24(%r13), %rax
	cmpb	$-128, 16(%rax,%rbp)
	jne	.LBB1_4
	movq	(%r13), %rcx
	andq	%rbp, %rcx
	movb	$-1, 16(%rax,%rbp)
	movb	$-1, 16(%rcx,%rax)
	movq	24(%r13), %rdi
	addq	%rbx, %rdi
	callq	*%r14
	decq	16(%r13)
	jmp	.LBB1_4
.LBB1_5:
	movq	(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andq	$-8, %rcx
	subq	%rdx, %rcx
	cmpq	$8, %rax
	cmovbq	%rax, %rcx
	subq	16(%r13), %rcx
	movq	%rcx, 8(%r13)
	addq	$8, %rsp
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
.Lfunc_end1:
	.size	core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>, .Lfunc_end1-core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>,@function
core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_1
	movq	16(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_1:
	retq
.Lfunc_end2:
	.size	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>,@function
core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>:
	.cfi_startproc
	cmpq	$0, (%rdi)
	je	.LBB3_2
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_2
	movq	16(%rdi), %rdi
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_2:
	retq
.Lfunc_end3:
	.size	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>, .Lfunc_end3-core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_1
	movq	8(%rdi), %rdi
	shlq	$3, %rsi
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB4_1:
	retq
.Lfunc_end4:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>, .Lfunc_end4-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB5_1
	movq	8(%rdi), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_1:
	retq
.Lfunc_end5:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>, .Lfunc_end5-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB6_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB6_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB6_11
.LBB6_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB6_6
.LBB6_7:
	testq	%r14, %r14
	je	.LBB6_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB6_4
.LBB6_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB6_12
.LBB6_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB6_6:
	movl	$1, %eax
.LBB6_12:
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB6_11
	jmp	.LBB6_4
.Lfunc_end6:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end6-alloc::raw_vec::finish_grow
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
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$2, %rdx
	testq	%rax, %rax
	je	.LBB7_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	jmp	.LBB7_4
.LBB7_3:
	movq	$0, 24(%rsp)
.LBB7_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB7_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
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
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB7_9
.LBB7_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB7_9:
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
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB8_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB8_4
.LBB8_3:
	movq	$0, 24(%rsp)
.LBB8_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB8_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
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
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB8_9
.LBB8_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB8_9:
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
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$58, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$5, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB9_3
	movq	8(%r14), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	$0, 24(%rsp)
.LBB9_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB9_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
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
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB9_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB9_9
.LBB9_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB9_9:
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
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	movabsq	$104811045873349726, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setb	%dl
	imulq	$88, %rbx, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB10_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB10_4
.LBB10_3:
	movq	$0, 24(%rsp)
.LBB10_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB10_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
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
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB10_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB10_9
.LBB10_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB10_9:
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm1, 36(%rsp)
	movq	%r8, %r15
	movq	%rsi, %rbx
	movq	%rdi, 72(%rsp)
	movq	48(%rsi), %rax
	testq	%rax, %rax
	je	.LBB11_30
	movl	%ecx, %r13d
	movl	%edx, %ebp
	movss	%xmm0, 40(%rsp)
	cmpl	$1, %eax
	jne	.LBB11_4
	movq	8(%rbx), %rsi
	movl	4(%r15), %r14d
	leaq	48(%rsp), %rdi
	movq	%rsi, 24(%rsp)
	movl	%r14d, %edx
	callq	*bevy_ecs::archetype::Archetype::swap_remove@GOTPCREL(%rip)
	cmpl	$1, 52(%rsp)
	jne	.LBB11_3
	movl	56(%rsp), %edx
	movl	60(%rsp), %r12d
	movq	16(%rbx), %r15
	movq	%rsp, %rdi
	movq	%r15, %rsi
	movl	%r12d, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	movl	4(%rsp), %eax
	movq	12(%rsp), %rcx
	movl	%eax, (%rsp)
	movl	%r14d, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsp, %rdx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	jmp	.LBB11_22
.LBB11_30:
	movq	8(%rbx), %rax
	movq	24(%rbx), %r12
	movq	(%r12), %rcx
	movq	56(%rax), %rax
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rdx
	addq	$8, %rdx
	movq	%rdx, 40(%rsp)
	movq	8(%rax,%rcx), %rax
	movq	32(%rbx), %rbp
	movl	12(%r15), %r13d
	movl	72(%rbx), %ecx
	movl	%ecx, 24(%rsp)
	movss	%xmm0, (%rsp)
	movq	16(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rbp), %r14
	movq	32(%rbp), %rdx
	shlq	$4, %rcx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rbx
	shlq	$5, %rbx
	leaq	(%r14,%rbx), %rdi
	cmpb	$0, (%rax)
	je	.LBB11_29
	movq	%rsp, %rdx
	movq	%r13, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	24(%rsp), %edx
	jmp	.LBB11_32
.LBB11_4:
	movl	%ebp, 64(%rsp)
	movq	8(%rbx), %rsi
	movl	4(%r15), %ebp
	leaq	104(%rsp), %rdi
	movq	%rsi, 24(%rsp)
	movl	%ebp, %edx
	callq	*bevy_ecs::archetype::Archetype::swap_remove@GOTPCREL(%rip)
	cmpl	$1, 108(%rsp)
	jne	.LBB11_5
	movl	112(%rsp), %edx
	movl	116(%rsp), %r15d
	movq	16(%rbx), %r14
	movq	%rsp, %rdi
	movq	%r14, %rsi
	movl	%r15d, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	movl	4(%rsp), %eax
	movq	12(%rsp), %rcx
	movl	%eax, (%rsp)
	movl	%ebp, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsp, %rdx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	jmp	.LBB11_7
.LBB11_3:
	movq	16(%rbx), %r15
.LBB11_22:
	movq	56(%rbx), %rsi
	movl	48(%rsp), %r12d
	leaq	88(%rsp), %rdi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
	movups	88(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	movq	24(%rbx), %r15
	movq	32(%rbx), %rbp
	movq	(%r15), %rax
	movq	24(%rsp), %rcx
	movq	56(%rcx), %rcx
	shlq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	addq	$8, %rdx
	movq	%rdx, 24(%rsp)
	movq	8(%rcx,%rax), %rax
	movl	72(%rbx), %r13d
	movss	40(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r15), %rcx
	movq	(%rcx), %rcx
	movq	(%rbp), %rbx
	movq	32(%rbp), %rdx
	shlq	$4, %rcx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r14
	shlq	$5, %r14
	leaq	(%rbx,%r14), %rdi
	cmpb	$0, (%rax)
	je	.LBB11_23
	movq	%rsp, %rdx
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_25
.LBB11_5:
	movq	16(%rbx), %r14
.LBB11_7:
	movl	104(%rsp), %edx
	movq	32(%rbx), %rsi
	movq	64(%rbx), %r12
	leaq	48(%rsp), %rdi
	movl	%edx, 84(%rsp)
	movq	%r12, %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	56(%rbx), %rbp
	movl	48(%rsp), %r15d
	leaq	88(%rsp), %rdi
	movq	%rbp, %rsi
	movl	64(%rsp), %edx
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
	movups	88(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdx
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	cmpl	$1, 52(%rsp)
	jne	.LBB11_12
	movl	56(%rsp), %edx
	movl	60(%rsp), %ecx
	movq	%rsp, %rdi
	movq	%r14, 64(%rsp)
	movq	%r14, %rsi
	movl	%ecx, 80(%rsp)
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	movl	4(%rsp), %eax
	movl	8(%rsp), %r14d
	movl	12(%rsp), %ecx
	movq	24(%rsp), %rdx
	movq	%rdx, %r13
	cmpl	%eax, 144(%rdx)
	je	.LBB11_10
	imulq	$152, %rax, %r13
	addq	(%rbx), %r13
	cmpl	%eax, 144(%rbp)
	cmoveq	%rbp, %r13
.LBB11_10:
	movl	%eax, (%rsp)
	movl	%r14d, 4(%rsp)
	movl	%ecx, 8(%rsp)
	movl	84(%rsp), %ebp
	movl	%ebp, 12(%rsp)
	movq	%rsp, %rdx
	movq	64(%rsp), %rdi
	movl	80(%rsp), %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	movq	136(%r13), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB11_36
	movq	128(%r13), %rax
	leaq	(%r14,%r14,2), %rcx
	movl	%ebp, 8(%rax,%rcx,4)
.LBB11_12:
	movq	24(%rbx), %rbp
	movq	(%rbp), %rax
	movq	24(%rsp), %rcx
	movq	56(%rcx), %rcx
	shlq	$5, %rax
	leaq	(%rcx,%rax), %rdx
	addq	$8, %rdx
	movq	%rdx, 24(%rsp)
	movq	8(%rcx,%rax), %rax
	movl	72(%rbx), %r13d
	movss	40(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%r12), %rbx
	movq	32(%r12), %rdx
	shlq	$4, %rcx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r14
	shlq	$5, %r14
	leaq	(%rbx,%r14), %rdi
	cmpb	$0, (%rax)
	je	.LBB11_13
	movq	%rsp, %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_15
.LBB11_29:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r13, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r14,%rbx), %rax
	movl	24(%rsp), %edx
	movl	%edx, (%rax,%r13,4)
.LBB11_32:
	movq	80(%r14,%rbx), %rax
	movl	%edx, (%rax,%r13,4)
	movss	36(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rbp), %rbx
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	movq	40(%rsp), %rax
	movq	(%rax), %rax
	cmpb	$0, 1(%rax)
	movl	%edx, %r14d
	je	.LBB11_33
	movq	%rsp, %rdx
	movq	%r13, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_35
.LBB11_23:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r12, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%r14), %rax
	movl	%r13d, (%rax,%r12,4)
.LBB11_25:
	movq	80(%rbx,%r14), %rax
	movl	%r13d, (%rax,%r12,4)
	movss	36(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rbp), %rbx
	movq	32(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_26
	movq	%rsp, %rdx
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_28
.LBB11_33:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r13, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	%r14d, (%rax,%r13,4)
.LBB11_35:
	movq	80(%rbx,%rbp), %rax
	movl	%r14d, (%rax,%r13,4)
	movups	(%r15), %xmm0
	jmp	.LBB11_20
.LBB11_26:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r12, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	%r13d, (%rax,%r12,4)
.LBB11_28:
	movq	80(%rbx,%rbp), %rax
	movl	%r13d, (%rax,%r12,4)
	jmp	.LBB11_19
.LBB11_13:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%r14), %rax
	movl	%r13d, (%rax,%r15,4)
.LBB11_15:
	movq	80(%rbx,%r14), %rax
	movl	%r13d, (%rax,%r15,4)
	movss	36(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%r12), %rbp
	movq	32(%r12), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %rdi
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	cmpb	$0, 1(%rax)
	je	.LBB11_16
	movq	%rsp, %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB11_18
.LBB11_16:
	movq	(%rdi), %rdx
	movq	%r15, %rax
	imulq	%rdx, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r13d, (%rax,%r15,4)
.LBB11_18:
	movq	80(%rbp,%rbx), %rax
	movl	%r13d, (%rax,%r15,4)
.LBB11_19:
	movups	88(%rsp), %xmm0
.LBB11_20:
	movq	72(%rsp), %rax
	movups	%xmm0, (%rax)
	addq	$120, %rsp
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
.LBB11_36:
	.cfi_def_cfa_offset 176
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end11-bevy_ecs::bundle::BundleInserter::insert
	.cfi_endproc

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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rdi), %rbx
	movq	%rbx, %rcx
	incq	%rcx
	jne	.LBB12_2
.LBB12_1:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB12_29
.LBB12_2:
	movq	%rdi, %r15
	movq	(%rdi), %r14
	leaq	1(%r14), %r13
	movq	%r13, %rdx
	shrq	$3, %rdx
	movq	%r13, %rax
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %r14
	cmovbq	%r14, %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rdx, %rcx
	jbe	.LBB12_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB12_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB12_8
.LBB12_16:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB12_29:
	movq	%r12, %rax
	addq	$40, %rsp
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
.LBB12_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB12_5
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB12_29
	jmp	.LBB12_8
.LBB12_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB12_8
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	xorl	$63, %ecx
	movq	$-1, %r8
	shrq	%cl, %r8
	incq	%r8
.LBB12_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB12_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB12_1
	je	.LBB12_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB12_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB12_29
.LBB12_11:
	movl	$16, %eax
.LBB12_12:
	movabsq	$-9223372036854775807, %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, (%rsp)
	leaq	-1(%r8), %r13
	movq	%r8, %rcx
	shrq	$3, %rcx
	andq	$-8, %r8
	subq	%rcx, %r8
	cmpq	$8, %r13
	cmovbq	%r13, %r8
	addq	%rax, %rbp
	movq	%rbp, %rdi
	movl	$255, %esi
	movq	%r8, %rbx
	callq	*memset@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	subq	%rdx, %rbx
	movq	16(%rsp), %rsi
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.LBB12_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_24:
	shrq	$57, %r11
	leaq	-16(%rbx), %rdx
	andq	%r13, %rdx
	movb	%r11b, (%rbp,%rbx)
	movb	%r11b, 16(%rdx,%rbp)
	movq	%rdi, %rdx
	subq	%r10, %rdx
	shlq	$4, %rbx
	negq	%rbx
	movdqu	-16(%rdx), %xmm0
	movdqu	%xmm0, -16(%rbp,%rbx)
.LBB12_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB12_26
.LBB12_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB12_25
	movq	%rcx, %r10
	shlq	$4, %r10
	movq	%r9, %rdx
	subq	%r10, %rdx
	movq	(%rdx), %r11
	imulq	%r8, %r11
	movq	%r11, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB12_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB12_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB12_21
.LBB12_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB12_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB12_24
.LBB12_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB12_27
	jmp	.LBB12_29
.LBB12_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB12_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB12_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB12_29
.Lfunc_end12:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end12-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rdi), %rbx
	movq	%rbx, %rcx
	incq	%rcx
	jne	.LBB13_2
.LBB13_1:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB13_29
.LBB13_2:
	movq	%rdi, %r15
	movq	(%rdi), %r14
	leaq	1(%r14), %r13
	movq	%r13, %rdx
	shrq	$3, %rdx
	movq	%r13, %rax
	andq	$-8, %rax
	subq	%rdx, %rax
	cmpq	$8, %r14
	cmovbq	%r14, %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rdx, %rcx
	jbe	.LBB13_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB13_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB13_8
.LBB13_16:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB13_29:
	movq	%r12, %rax
	addq	$40, %rsp
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
.LBB13_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB13_5
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB13_29
	jmp	.LBB13_8
.LBB13_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB13_8
	movabsq	$2635249153387078803, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$2, %rcx
	decq	%rcx
	bsrq	%rcx, %rcx
	xorl	$63, %ecx
	movq	$-1, %r8
	shrq	%cl, %r8
	incq	%r8
.LBB13_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB13_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB13_1
	je	.LBB13_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB13_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB13_29
.LBB13_11:
	movl	$16, %eax
.LBB13_12:
	movabsq	$-9223372036854775807, %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, (%rsp)
	leaq	-1(%r8), %r13
	movq	%r8, %rcx
	shrq	$3, %rcx
	andq	$-8, %r8
	subq	%rcx, %r8
	cmpq	$8, %r13
	cmovbq	%r13, %r8
	addq	%rax, %rbp
	movq	%rbp, %rdi
	movl	$255, %esi
	movq	%r8, %rbx
	callq	*memset@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	subq	%rdx, %rbx
	movq	16(%rsp), %rsi
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.LBB13_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB13_18
	.p2align	4, 0x90
.LBB13_24:
	shrq	$57, %r11
	leaq	-16(%rbx), %rdx
	andq	%r13, %rdx
	movb	%r11b, (%rbp,%rbx)
	movb	%r11b, 16(%rdx,%rbp)
	movq	%rdi, %rdx
	subq	%r10, %rdx
	shlq	$4, %rbx
	negq	%rbx
	movdqu	-16(%rdx), %xmm0
	movdqu	%xmm0, -16(%rbp,%rbx)
.LBB13_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB13_26
.LBB13_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB13_25
	movq	%rcx, %r10
	shlq	$4, %r10
	movq	%r9, %rdx
	subq	%r10, %rdx
	movq	(%rdx), %r11
	imulq	%r8, %r11
	movq	%r11, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	testl	%ebx, %ebx
	jne	.LBB13_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB13_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB13_21
.LBB13_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB13_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB13_24
.LBB13_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB13_27
	jmp	.LBB13_29
.LBB13_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB13_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB13_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB13_29
.Lfunc_end13:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end13-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	".text.hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}},@function
hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end14:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}, .Lfunc_end14-hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
	.cfi_endproc

	.section	".text.hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}},@function
hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}:
	.cfi_startproc
	movq	24(%rsi), %rcx
	shlq	$4, %rdx
	subq	%rdx, %rcx
	movabsq	$5871781006564002453, %rax
	imulq	-16(%rcx), %rax
	retq
.Lfunc_end15:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}, .Lfunc_end15-hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI16_0:
	.zero	16,128
	.section	".text.hashbrown::raw::RawTableInner<A>::rehash_in_place","ax",@progbits
	.p2align	4, 0x90
	.type	hashbrown::raw::RawTableInner<A>::rehash_in_place,@function
hashbrown::raw::RawTableInner<A>::rehash_in_place:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%rdi), %rdx
	movq	24(%rdi), %rsi
	incq	%rdx
	xorl	%eax, %eax
	movdqa	.LCPI16_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB16_1
	.p2align	4, 0x90
.LBB16_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB16_7
.LBB16_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB16_1:
	testb	$1, %dil
	je	.LBB16_6
	addq	$15, %rax
	jb	.LBB16_7
	cmpq	%rdx, %rax
	jae	.LBB16_7
	leaq	1(%rax), %rcx
	jmp	.LBB16_5
.LBB16_7:
	cmpq	$16, %rdx
	jae	.LBB16_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB16_10
.LBB16_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB16_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB16_11
	xorl	%r13d, %r13d
	jmp	.LBB16_15
	.p2align	4, 0x90
.LBB16_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB16_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB16_12
.LBB16_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB16_28
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %rbp
	addq	$-16, %rbp
	.p2align	4, 0x90
.LBB16_17:
.Ltmp0:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	*%r14
.Ltmp1:
	movq	(%r12), %rdx
	movq	24(%r12), %rcx
	movq	%rdx, %r8
	andq	%rax, %r8
	movdqu	(%rcx,%r8), %xmm0
	pmovmskb	%xmm0, %edi
	movq	%r8, %rsi
	testl	%edi, %edi
	jne	.LBB16_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB16_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB16_20
.LBB16_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB16_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB16_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB16_24
	movq	%rbx, %rdi
	shlq	$4, %rdi
	movq	%rcx, %rsi
	subq	%rdi, %rsi
	addq	$-16, %rsi
	movzbl	(%rcx,%rbx), %r8d
	shrq	$57, %rax
	leaq	-16(%rbx), %rdi
	andq	%rdx, %rdi
	movb	%al, (%rcx,%rbx)
	movb	%al, 16(%rdi,%rcx)
	cmpb	$-1, %r8b
	je	.LBB16_27
	movzbl	(%rbp), %eax
	movzbl	(%rsi), %ecx
	movb	%cl, (%rbp)
	movb	%al, (%rsi)
	movzbl	1(%rbp), %eax
	movzbl	1(%rsi), %ecx
	movb	%cl, 1(%rbp)
	movb	%al, 1(%rsi)
	movzbl	2(%rbp), %eax
	movzbl	2(%rsi), %ecx
	movb	%cl, 2(%rbp)
	movb	%al, 2(%rsi)
	movzbl	3(%rbp), %eax
	movzbl	3(%rsi), %ecx
	movb	%cl, 3(%rbp)
	movb	%al, 3(%rsi)
	movzbl	4(%rbp), %eax
	movzbl	4(%rsi), %ecx
	movb	%cl, 4(%rbp)
	movb	%al, 4(%rsi)
	movzbl	5(%rbp), %eax
	movzbl	5(%rsi), %ecx
	movb	%cl, 5(%rbp)
	movb	%al, 5(%rsi)
	movzbl	6(%rbp), %eax
	movzbl	6(%rsi), %ecx
	movb	%cl, 6(%rbp)
	movb	%al, 6(%rsi)
	movzbl	7(%rbp), %eax
	movzbl	7(%rsi), %ecx
	movb	%cl, 7(%rbp)
	movb	%al, 7(%rsi)
	movzbl	8(%rbp), %eax
	movzbl	8(%rsi), %ecx
	movb	%cl, 8(%rbp)
	movb	%al, 8(%rsi)
	movzbl	9(%rbp), %eax
	movzbl	9(%rsi), %ecx
	movb	%cl, 9(%rbp)
	movb	%al, 9(%rsi)
	movzbl	10(%rbp), %eax
	movzbl	10(%rsi), %ecx
	movb	%cl, 10(%rbp)
	movb	%al, 10(%rsi)
	movzbl	11(%rbp), %eax
	movzbl	11(%rsi), %ecx
	movb	%cl, 11(%rbp)
	movb	%al, 11(%rsi)
	movzbl	12(%rbp), %eax
	movzbl	12(%rsi), %ecx
	movb	%cl, 12(%rbp)
	movb	%al, 12(%rsi)
	movzbl	13(%rbp), %eax
	movzbl	13(%rsi), %ecx
	movb	%cl, 13(%rbp)
	movb	%al, 13(%rsi)
	movzbl	14(%rbp), %eax
	movzbl	14(%rsi), %ecx
	movb	%cl, 14(%rbp)
	movb	%al, 14(%rsi)
	movzbl	15(%rbp), %eax
	movzbl	15(%rsi), %ecx
	movb	%cl, 15(%rbp)
	movb	%al, 15(%rsi)
	jmp	.LBB16_17
	.p2align	4, 0x90
.LBB16_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB16_28
.LBB16_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB16_13
.LBB16_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB16_13:
	cmpq	$8, %rcx
	cmovbq	%rcx, %rax
	subq	16(%r12), %rax
	movq	%rax, 8(%r12)
	addq	$40, %rsp
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
.LBB16_29:
	.cfi_def_cfa_offset 96
.Ltmp2:
	movq	%rax, %rbx
.Ltmp3:
	leaq	16(%rsp), %rdi
	callq	core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>
.Ltmp4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB16_31:
.Ltmp5:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end16:
	.size	hashbrown::raw::RawTableInner<A>::rehash_in_place, .Lfunc_end16-hashbrown::raw::RawTableInner<A>::rehash_in_place
	.cfi_endproc
	.section	".gcc_except_table.hashbrown::raw::RawTableInner<A>::rehash_in_place","a",@progbits
	.p2align	2
GCC_except_table16:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Lfunc_end16-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI17_0:
	.zero	16,123
.LCPI17_1:
	.zero	16,58
.LCPI17_2:
	.zero	16,120
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
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	shlq	$4, %rdx
	addq	%rcx, %rdx
	movq	%rcx, 432(%rsp)
	movq	%rax, 408(%rsp)
	movq	%rcx, 416(%rsp)
	movq	%rdx, 424(%rsp)
.Ltmp6:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp7:
	movl	888(%r13), %edi
.Ltmp8:
	callq	*bevy_ecs::component::Tick::new@GOTPCREL(%rip)
	movl	%eax, 60(%rsp)
.Ltmp9:
	movabsq	$-382895083529600496, %r15
	movabsq	$-698656662001724592, %r12
	leaq	472(%r13), %rax
	movq	%rax, 64(%rsp)
	leaq	160(%r13), %rax
	movq	%rax, 200(%rsp)
	leaq	688(%r13), %rdi
	movq	688(%r13), %r9
	movq	712(%r13), %rbp
	xorl	%r8d, %r8d
	movdqa	.LCPI17_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %rsi
.LBB17_3:
	andq	%r9, %rsi
	movdqu	(%rbp,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB17_4:
	testw	%bx, %bx
	je	.LBB17_6
	bsfw	%bx, %cx
	movzwl	%cx, %edx
	leal	-1(%rbx), %eax
	andl	%ebx, %eax
	addq	%rsi, %rdx
	andq	%r9, %rdx
	shlq	$4, %rdx
	movq	%rbp, %rcx
	subq	%rdx, %rcx
	movl	%eax, %ebx
	cmpq	%r15, -16(%rcx)
	jne	.LBB17_4
	jmp	.LBB17_8
	.p2align	4, 0x90
.LBB17_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB17_48
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB17_3
.LBB17_8:
	addq	$-8, %rcx
.LBB17_9:
	movq	(%rcx), %rsi
	shlq	$5, %rsi
	addq	728(%r13), %rsi
	leaq	64(%r13), %rcx
.Ltmp45:
	movl	60(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	240(%rsp), %rdi
	movq	%rsi, 368(%rsp)
	movq	%r13, %rdx
	movq	%rcx, 360(%rsp)
	movq	64(%rsp), %r8
	movq	200(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp46:
	movups	240(%rsp), %xmm0
	movups	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqa	%xmm2, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	$3, 128(%rsp)
	movq	$0, 336(%rsp)
	movq	$4, 344(%rsp)
	movq	$0, 352(%rsp)
	movdqu	408(%rsp), %xmm0
	movdqu	424(%rsp), %xmm1
	movdqa	%xmm0, 208(%rsp)
	movdqa	%xmm1, 224(%rsp)
	movq	216(%rsp), %r14
	movq	224(%rsp), %rax
	movq	%rax, 376(%rsp)
	cmpq	%rax, %r14
	je	.LBB17_38
	movq	%r13, 24(%rsp)
	addq	$16, %r14
	movl	$4, %ecx
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rbp
	jmp	.LBB17_15
.LBB17_12:
	movq	344(%rsp), %rcx
	movq	352(%rsp), %rax
	movq	%rax, 40(%rsp)
.LBB17_13:
	movq	40(%rsp), %rax
	movl	%r12d, (%rcx,%rax,8)
	movl	%r13d, 4(%rcx,%rax,8)
	incq	%rax
	movq	%rax, 40(%rsp)
	movq	%rax, 352(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 376(%rsp)
.LBB17_14:
	leaq	-16(%r14), %rax
	addq	$16, %r14
	addq	$16, %rax
	cmpq	376(%rsp), %rax
	je	.LBB17_39
.LBB17_15:
	movq	%rcx, 48(%rsp)
	movl	-16(%r14), %r12d
	movl	-12(%r14), %r13d
	movss	-8(%r14), %xmm0
	movss	%xmm0, 32(%rsp)
	movd	-4(%r14), %xmm0
	movd	%xmm0, 72(%rsp)
.Ltmp48:
	movq	%rbp, %rdi
	callq	*bevy_ecs::world::World::insert_or_spawn_batch::SpawnOrInsert::entities@GOTPCREL(%rip)
.Ltmp49:
.Ltmp50:
	leaq	384(%rsp), %rdi
	movq	%rax, %rsi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp51:
	movl	384(%rsp), %eax
	testq	%rax, %rax
	je	.LBB17_23
	cmpl	$1, %eax
	jne	.LBB17_27
	cmpl	$3, 128(%rsp)
	jne	.LBB17_29
	movq	104(%rsp), %rbp
.Ltmp62:
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp63:
	movl	%eax, %ebx
	movq	80(%rsp), %rsi
.Ltmp64:
	leaq	176(%rsp), %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%eax, %r8d
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
.Ltmp65:
	movq	96(%rsp), %rax
	movq	%rax, 328(%rsp)
	movl	120(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	movss	32(%rsp), %xmm0
	movss	%xmm0, 240(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	%ebx, %edx
	movq	%rbp, %rbx
	movq	(%rbp), %rbp
	movq	32(%rbx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	movl	%edx, %r12d
	movq	(%rbp,%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbp,%r15), %rdi
	leaq	240(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%r15), %rax
	movl	56(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	80(%rbp,%r15), %rax
	movl	%ecx, (%rax,%r12,4)
	movl	%ecx, %r15d
	movss	72(%rsp), %xmm0
	movss	%xmm0, 240(%rsp)
	movq	328(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rbx), %rbp
	movq	32(%rbx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	(%rbp,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbp,%rbx), %rdi
	leaq	240(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r15d, (%rax,%r12,4)
	movq	80(%rbp,%rbx), %rax
	leaq	80(%rsp), %rbp
	movl	%r15d, (%rax,%r12,4)
	movq	88(%rsp), %rdi
	movdqu	176(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
.Ltmp66:
	movl	%r13d, %esi
	leaq	240(%rsp), %rdx
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
.Ltmp67:
	jmp	.LBB17_34
	.p2align	4, 0x90
.LBB17_23:
	movl	388(%rsp), %ebx
	cmpl	$3, 128(%rsp)
	je	.LBB17_35
	cmpl	160(%rsp), %ebx
	jne	.LBB17_35
	movl	%ebx, 240(%rsp)
	leaq	392(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	244(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp72:
	leaq	176(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	leaq	240(%rsp), %r8
	movd	32(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp73:
	jmp	.LBB17_34
	.p2align	4, 0x90
.LBB17_27:
	movq	40(%rsp), %rax
	cmpq	336(%rsp), %rax
	movq	48(%rsp), %rcx
	jne	.LBB17_13
.Ltmp52:
	leaq	336(%rsp), %rdi
	movq	40(%rsp), %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp53:
	jmp	.LBB17_12
.LBB17_29:
.Ltmp54:
	movl	60(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	240(%rsp), %rdi
	movq	368(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	360(%rsp), %rcx
	movq	64(%rsp), %r8
	movq	200(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp55:
	movq	264(%rsp), %rbp
.Ltmp56:
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp57:
	movl	%eax, %ebx
	movq	240(%rsp), %rsi
.Ltmp58:
	leaq	440(%rsp), %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%eax, %r8d
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
.Ltmp59:
	movq	256(%rsp), %rax
	movq	%rax, 328(%rsp)
	movl	280(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	movss	32(%rsp), %xmm0
	movss	%xmm0, 176(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	%ebx, %edx
	movq	%rbp, %rbx
	movq	(%rbp), %rbp
	movq	32(%rbx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	movl	%edx, %r12d
	movq	(%rbp,%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbp,%r15), %rdi
	leaq	176(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%r15), %rax
	movl	56(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	80(%rbp,%r15), %rax
	movl	%ecx, (%rax,%r12,4)
	movl	%ecx, %r15d
	movss	72(%rsp), %xmm0
	movss	%xmm0, 176(%rsp)
	movq	328(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rbx), %rbp
	movq	32(%rbx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	(%rbp,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbp,%rbx), %rdi
	leaq	176(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r15d, (%rax,%r12,4)
	movq	80(%rbp,%rbx), %rax
	leaq	80(%rsp), %rbp
	movl	%r15d, (%rax,%r12,4)
	movq	248(%rsp), %rdi
	movdqu	440(%rsp), %xmm0
	movdqa	%xmm0, 176(%rsp)
.Ltmp60:
	movl	%r13d, %esi
	leaq	176(%rsp), %rdx
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
.Ltmp61:
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqa	%xmm0, 80(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm2, 112(%rsp)
	movq	$3, 128(%rsp)
.LBB17_34:
	movq	48(%rsp), %rcx
	jmp	.LBB17_14
.LBB17_35:
.Ltmp68:
	movl	60(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	leaq	240(%rsp), %rdi
	movq	368(%rsp), %rsi
	movq	24(%rsp), %rdx
	movq	360(%rsp), %rcx
	movq	64(%rsp), %r8
	movq	200(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp69:
	movl	%ebx, 176(%rsp)
	leaq	392(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	180(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp70:
	leaq	440(%rsp), %rdi
	leaq	240(%rsp), %rsi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	leaq	176(%rsp), %r8
	movd	32(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp71:
	movups	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqu	288(%rsp), %xmm3
	movaps	%xmm0, 80(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm2, 112(%rsp)
	movdqa	%xmm3, 128(%rsp)
	movdqu	304(%rsp), %xmm0
	movdqa	%xmm0, 144(%rsp)
	movl	%ebx, 160(%rsp)
	movq	48(%rsp), %rcx
	jmp	.LBB17_14
.LBB17_38:
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)
.LBB17_39:
	movq	208(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB17_41
	movq	232(%rsp), %rdi
	shlq	$4, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB17_41:
	movq	336(%rsp), %rsi
	cmpq	$0, 40(%rsp)
	je	.LBB17_44
	movq	344(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB17_47
	testq	%rsi, %rsi
	jne	.LBB17_46
	jmp	.LBB17_47
.LBB17_44:
	testq	%rsi, %rsi
	je	.LBB17_47
	movq	344(%rsp), %rdi
.LBB17_46:
	shlq	$3, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB17_47:
	addq	$456, %rsp
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
.LBB17_48:
	.cfi_def_cfa_offset 512
	cmpq	$0, 696(%r13)
	jne	.LBB17_50
.Ltmp10:
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp11:
.LBB17_50:
	movq	%r13, %rcx
	movabsq	$-6929321740737228807, %r13
	movabsq	$8370109361563059693, %r14
	leaq	720(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 208(%rsp)
	movq	$8, 216(%rsp)
	movq	$0, 224(%rsp)
	movq	472(%rcx), %rax
	movq	%rcx, 24(%rsp)
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI17_1(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r14, %rsi
.LBB17_51:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB17_52:
	testw	%bx, %bx
	je	.LBB17_54
	bsfw	%bx, %di
	movzwl	%di, %edx
	leal	-1(%rbx), %ebp
	andl	%ebx, %ebp
	addq	%rsi, %rdx
	andq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	movl	%ebp, %ebx
	cmpq	%r13, -16(%rdi)
	jne	.LBB17_52
	jmp	.LBB17_56
.LBB17_54:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB17_77
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB17_51
.LBB17_56:
	addq	$-8, %rdi
.LBB17_57:
	movq	(%rdi), %rbp
.Ltmp22:
	leaq	208(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp23:
	movabsq	$-1072536784805126839, %rsi
	movabsq	$10356675192229605, %r14
	movq	216(%rsp), %rax
	movq	224(%rsp), %r13
	movq	%rax, 48(%rsp)
	movq	%rbp, (%rax,%r13,8)
	incq	%r13
	movq	%r13, 224(%rsp)
	movq	24(%rsp), %rcx
	movq	472(%rcx), %rax
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI17_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB17_59:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB17_60:
	testw	%bp, %bp
	je	.LBB17_62
	bsfw	%bp, %di
	movzwl	%di, %ebx
	leal	-1(%rbp), %edx
	andl	%ebp, %edx
	addq	%rsi, %rbx
	andq	%rax, %rbx
	shlq	$4, %rbx
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	%edx, %ebp
	cmpq	%r14, -16(%rdi)
	jne	.LBB17_60
	jmp	.LBB17_64
.LBB17_62:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB17_91
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB17_59
.LBB17_64:
	addq	$-8, %rdi
	movq	(%rdi), %rbp
	cmpq	208(%rsp), %r13
	movq	48(%rsp), %rcx
	jne	.LBB17_67
.LBB17_65:
.Ltmp34:
	leaq	208(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp35:
	movq	216(%rsp), %rcx
	movq	224(%rsp), %r13
.LBB17_67:
	movq	%rbp, (%rcx,%r13,8)
	incq	%r13
	movq	%r13, 224(%rsp)
	movq	24(%rsp), %rax
	movq	736(%rax), %r14
	movq	%r13, 96(%rsp)
	movq	%rax, %r13
	movdqu	208(%rsp), %xmm0
	movdqa	%xmm0, 80(%rsp)
.Ltmp40:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rsi
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %r8
	movl	$64, %edx
	movq	64(%rsp), %rcx
	movq	%r14, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp41:
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	736(%r13), %rsi
	cmpq	720(%r13), %rsi
	jne	.LBB17_71
.Ltmp42:
	movq	72(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp43:
	movq	736(%r13), %rsi
.LBB17_71:
	movq	728(%r13), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 736(%r13)
	movq	688(%r13), %rcx
	movq	712(%r13), %rax
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB17_74
	movl	$16, %esi
	.p2align	4, 0x90
.LBB17_73:
	addq	%rsi, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB17_73
.LBB17_74:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB17_76
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB17_76:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$123, (%rax,%rdx)
	movb	$123, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rcx
	andb	$1, %sil
	movzbl	%sil, %esi
	subq	%rsi, 696(%r13)
	subq	%rdx, %rcx
	negq	%rdx
	movq	%r15, -16(%rax,%rdx)
	movq	%r14, -8(%rcx)
	addq	$-8, %rcx
	incq	704(%r13)
	jmp	.LBB17_9
.LBB17_77:
	movq	24(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB17_79
.Ltmp12:
	movq	64(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp13:
.LBB17_79:
	movq	24(%rsp), %rax
	movq	552(%rax), %rbp
	movq	$0, 80(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$30, 96(%rsp)
	movq	$4, 112(%rsp)
	movq	$4, 120(%rsp)
	movq	$1, 128(%rsp)
	movq	%r13, 136(%rsp)
	movq	$0, 144(%rsp)
	movw	$256, 152(%rsp)
.Ltmp14:
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 32(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp15:
	cmpb	$0, 312(%rsp)
	je	.LBB17_82
.Ltmp16:
	leaq	240(%rsp), %rbx
	movq	200(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp17:
.LBB17_82:
	movq	24(%rsp), %rbx
	leaq	536(%rbx), %rdi
	movq	320(%rsp), %rax
	movq	%rax, 160(%rsp)
	movups	304(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqu	288(%rsp), %xmm3
	movdqa	%xmm3, 128(%rsp)
	movdqa	%xmm2, 112(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	%rbp, %rax
	cmpq	(%rdi), %rbp
	jne	.LBB17_85
.Ltmp19:
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp20:
	movq	24(%rsp), %rbx
	movq	552(%rbx), %rax
.LBB17_85:
	movq	544(%rbx), %rcx
	imulq	$88, %rax, %rdx
	movq	160(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	80(%rsp), %xmm0
	movdqa	96(%rsp), %xmm1
	movdqa	112(%rsp), %xmm2
	movdqa	128(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%rbx)
	movq	472(%rbx), %rcx
	movq	496(%rbx), %rax
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB17_88
	movl	$16, %esi
.LBB17_87:
	addq	%rsi, %r14
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB17_87
.LBB17_88:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r14, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB17_90
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB17_90:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$58, (%rax,%rdx)
	movb	$58, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	24(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r13, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	jmp	.LBB17_57
.LBB17_91:
	movq	24(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB17_93
.Ltmp24:
	movq	64(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp25:
.LBB17_93:
	movq	24(%rsp), %rax
	movq	552(%rax), %rbx
	movq	$0, 80(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$30, 96(%rsp)
	movq	$4, 112(%rsp)
	movq	$4, 120(%rsp)
	movq	$1, 128(%rsp)
	movq	%r14, 136(%rsp)
	movq	$0, 144(%rsp)
	movw	$256, 152(%rsp)
.Ltmp26:
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 32(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp27:
	cmpb	$0, 312(%rsp)
	je	.LBB17_96
.Ltmp28:
	leaq	240(%rsp), %rbp
	movq	200(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp29:
.LBB17_96:
	movq	24(%rsp), %rbp
	leaq	536(%rbp), %rdi
	movq	320(%rsp), %rax
	movq	%rax, 160(%rsp)
	movups	304(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqu	288(%rsp), %xmm3
	movdqa	%xmm3, 128(%rsp)
	movdqa	%xmm2, 112(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB17_99
.Ltmp31:
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp32:
	movq	24(%rsp), %rbp
	movq	552(%rbp), %rax
.LBB17_99:
	movq	544(%rbp), %rcx
	imulq	$88, %rax, %rdx
	movq	160(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	144(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	80(%rsp), %xmm0
	movdqa	96(%rsp), %xmm1
	movdqa	112(%rsp), %xmm2
	movdqa	128(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%rbp)
	movq	472(%rbp), %rcx
	movq	496(%rbp), %rax
	movabsq	$-1072536784805126839, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB17_102
	movl	$16, %esi
.LBB17_101:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB17_101
.LBB17_102:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB17_104
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB17_104:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$120, (%rax,%rdx)
	movb	$120, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	24(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	movq	(%rdi), %rbp
	cmpq	208(%rsp), %r13
	movq	48(%rsp), %rcx
	je	.LBB17_65
	jmp	.LBB17_67
.LBB17_105:
.Ltmp33:
	movq	%rax, %rbp
	jmp	.LBB17_109
.LBB17_106:
.Ltmp21:
	movq	%rax, %rbp
	jmp	.LBB17_109
.LBB17_107:
.Ltmp30:
	movq	%rbp, %rcx
	movq	%rax, %rbp
	movq	%rcx, 32(%rsp)
	jmp	.LBB17_109
.LBB17_108:
.Ltmp18:
	movq	%rax, %rbp
	movq	%rbx, 32(%rsp)
.LBB17_109:
	movq	32(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB17_112
.LBB17_110:
.Ltmp44:
	movq	%rax, %rbp
	leaq	80(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB17_115
.LBB17_111:
.Ltmp36:
	movq	%rax, %rbp
.LBB17_112:
.Ltmp37:
	leaq	208(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp38:
	jmp	.LBB17_115
.LBB17_113:
.Ltmp39:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.LBB17_114:
.Ltmp47:
	movq	%rax, %rbp
.LBB17_115:
	leaq	408(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	jmp	.LBB17_117
.LBB17_116:
.Ltmp74:
	movq	%rax, %rbp
	movq	%r14, 216(%rsp)
	leaq	208(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
.Ltmp75:
	leaq	336(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
.Ltmp76:
.LBB17_117:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB17_118:
.Ltmp77:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end17:
	.size	world_insert_or_spawn_batch, .Lfunc_end17-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2
GCC_except_table17:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp46-.Ltmp6
	.uleb128 .Ltmp47-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp48-.Lfunc_begin1
	.uleb128 .Ltmp65-.Ltmp48
	.uleb128 .Ltmp74-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp65-.Lfunc_begin1
	.uleb128 .Ltmp66-.Ltmp65
	.byte	0
	.byte	0
	.uleb128 .Ltmp66-.Lfunc_begin1
	.uleb128 .Ltmp59-.Ltmp66
	.uleb128 .Ltmp74-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp59-.Lfunc_begin1
	.uleb128 .Ltmp60-.Ltmp59
	.byte	0
	.byte	0
	.uleb128 .Ltmp60-.Lfunc_begin1
	.uleb128 .Ltmp71-.Ltmp60
	.uleb128 .Ltmp74-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp47-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin1
	.uleb128 .Ltmp35-.Ltmp22
	.uleb128 .Ltmp36-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp40-.Lfunc_begin1
	.uleb128 .Ltmp41-.Ltmp40
	.uleb128 .Ltmp47-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp42-.Lfunc_begin1
	.uleb128 .Ltmp43-.Ltmp42
	.uleb128 .Ltmp44-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp15-.Ltmp12
	.uleb128 .Ltmp36-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp18-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin1
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin1
	.uleb128 .Ltmp27-.Ltmp24
	.uleb128 .Ltmp36-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin1
	.uleb128 .Ltmp29-.Ltmp28
	.uleb128 .Ltmp30-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp31-.Lfunc_begin1
	.uleb128 .Ltmp32-.Ltmp31
	.uleb128 .Ltmp33-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp37-.Lfunc_begin1
	.uleb128 .Ltmp38-.Ltmp37
	.uleb128 .Ltmp39-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp75-.Lfunc_begin1
	.uleb128 .Ltmp76-.Ltmp75
	.uleb128 .Ltmp77-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp76-.Lfunc_begin1
	.uleb128 .Lfunc_end17-.Ltmp76
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/6dda873/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"_\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"world_insert_or_spawn_batch.3cba37e8-cgu.0"
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
	shrq	$58, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$5, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB8_3
	movq	8(%r14), %rcx
	shlq	$5, %rax
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
	movabsq	$104811045873349726, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setb	%dl
	imulq	$88, %rbx, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB9_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
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
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$60, %rcx
	sete	%dl
	leaq	(,%rbx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB10_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
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

	.section	.text.bevy_ecs::bundle::BundleSpawner::spawn_non_existent,"ax",@progbits
	.p2align	4, 0x90
	.type	bevy_ecs::bundle::BundleSpawner::spawn_non_existent,@function
bevy_ecs::bundle::BundleSpawner::spawn_non_existent:
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm1, 8(%rsp)
	movss	%xmm0, 12(%rsp)
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	24(%rsi), %r12
	movq	%r12, %rdi
	movl	%edx, %esi
	movl	%ecx, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
	movl	%eax, %r13d
	movq	(%rbp), %rsi
	movq	%r15, 48(%rsp)
	movq	%r15, %rdi
	movl	%r14d, %edx
	movl	%ebx, 4(%rsp)
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
	movq	16(%rbp), %rax
	movq	%rbp, 40(%rsp)
	movl	40(%rbp), %ebx
	movq	%rax, %rbp
	movss	12(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, 40(%r12)
	jbe	.LBB11_7
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB11_7
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_7
	movq	(%r12), %r15
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %r14
	shlq	$5, %r14
	movl	%r13d, %r13d
	movq	(%r15,%r14), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	40(%r15,%r14), %rdi
	leaq	16(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%r14), %rax
	movl	%ebx, (%rax,%r13,4)
	movq	80(%r15,%r14), %rax
	movl	%ebx, (%rax,%r13,4)
	movss	8(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%r12)
	jbe	.LBB11_7
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB11_7
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB11_7
	movl	%ebx, %r14d
	movq	(%r12), %rbp
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	(%rbp,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%r13, %rdi
	addq	40(%rbp,%rbx), %rdi
	leaq	16(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
	movq	80(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r13,4)
	movq	40(%rsp), %rax
	movq	8(%rax), %rdi
	movq	48(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdx
	movl	4(%rsp), %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	addq	$56, %rsp
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
.LBB11_7:
	.cfi_def_cfa_offset 112
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	bevy_ecs::bundle::BundleSpawner::spawn_non_existent, .Lfunc_end11-bevy_ecs::bundle::BundleSpawner::spawn_non_existent
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rsi, %rbx
	movq	48(%rsi), %rax
	testq	%rax, %rax
	movq	%rdi, 80(%rsp)
	movss	%xmm1, 60(%rsp)
	je	.LBB12_7
	movl	%ecx, %r13d
	movss	%xmm0, 40(%rsp)
	cmpl	$1, %eax
	movl	%edx, 32(%rsp)
	jne	.LBB12_10
	movq	8(%rbx), %r15
	movl	4(%r12), %ebp
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*bevy_ecs::archetype::Archetype::swap_remove@GOTPCREL(%rip)
	cmpl	$1, 68(%rsp)
	jne	.LBB12_3
	movl	72(%rsp), %edx
	movl	76(%rsp), %r14d
	movq	16(%rbx), %r12
	movq	%rsp, %rdi
	movq	%r12, %rsi
	movl	%r14d, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB12_42
	movl	4(%rsp), %eax
	movq	12(%rsp), %rcx
	movl	%eax, (%rsp)
	movl	%ebp, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsp, %rdx
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	jmp	.LBB12_4
.LBB12_7:
	movq	8(%rbx), %rax
	movq	24(%rbx), %rsi
	movq	(%rsi), %r13
	cmpq	64(%rax), %r13
	jae	.LBB12_9
	movq	56(%rax), %rax
	shlq	$5, %r13
	movq	8(%rax,%r13), %r8
	testq	%r8, %r8
	je	.LBB12_9
	movq	32(%rbx), %rbp
	movl	12(%r12), %r14d
	movl	72(%rbx), %ecx
	movl	%ecx, 32(%rsp)
	movss	%xmm0, (%rsp)
	movq	16(%rsi), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rbp)
	jbe	.LBB12_29
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB12_29
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB12_29
	movq	%rsi, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	(%rbp), %rbx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r15
	shlq	$5, %r15
	leaq	(%rbx,%r15), %rdi
	cmpb	$0, (%r8)
	je	.LBB12_62
	movq	%rsp, %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	32(%rsp), %ecx
	jmp	.LBB12_64
.LBB12_10:
	movq	8(%rbx), %rsi
	movl	4(%r12), %ebp
	leaq	112(%rsp), %rdi
	movq	%rsi, 48(%rsp)
	movl	%ebp, %edx
	callq	*bevy_ecs::archetype::Archetype::swap_remove@GOTPCREL(%rip)
	cmpl	$1, 116(%rsp)
	jne	.LBB12_11
	movl	120(%rsp), %edx
	movl	124(%rsp), %r14d
	movq	16(%rbx), %r15
	movq	%rsp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB12_15
	movl	4(%rsp), %eax
	movq	12(%rsp), %rcx
	movl	%eax, (%rsp)
	movl	%ebp, 4(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsp, %rdx
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	jmp	.LBB12_12
.LBB12_3:
	movq	16(%rbx), %r12
.LBB12_4:
	movq	56(%rbx), %rsi
	movl	64(%rsp), %r14d
	leaq	96(%rsp), %rdi
	movl	32(%rsp), %edx
	movl	%r13d, %ecx
	movl	%r14d, %r8d
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
	movups	96(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	movq	24(%rbx), %r13
	movq	(%r13), %r12
	cmpq	64(%r15), %r12
	jae	.LBB12_6
	movq	56(%r15), %rsi
	shlq	$5, %r12
	movq	8(%rsi,%r12), %rax
	testq	%rax, %rax
	je	.LBB12_6
	movq	32(%rbx), %rbp
	movl	72(%rbx), %ecx
	movl	%ecx, 32(%rsp)
	movss	40(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r13), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%rbp)
	jbe	.LBB12_29
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB12_29
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB12_29
	movq	%rsi, 40(%rsp)
	movq	(%rbp), %rbx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r15
	shlq	$5, %r15
	leaq	(%rbx,%r15), %rdi
	cmpb	$0, (%rax)
	je	.LBB12_49
	movq	%rsp, %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	32(%rsp), %ecx
	jmp	.LBB12_51
.LBB12_11:
	movq	16(%rbx), %r15
.LBB12_12:
	movl	112(%rsp), %edx
	movq	32(%rbx), %rsi
	movq	64(%rbx), %r12
	leaq	64(%rsp), %rdi
	movl	%edx, 92(%rsp)
	movq	%r12, %rcx
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	56(%rbx), %r14
	movl	64(%rsp), %r8d
	leaq	96(%rsp), %rdi
	movq	%r14, %rsi
	movl	32(%rsp), %edx
	movl	%r13d, %ecx
	movq	%r8, 32(%rsp)
	callq	*bevy_ecs::archetype::Archetype::allocate@GOTPCREL(%rip)
	movups	96(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	cmpl	$1, 68(%rsp)
	jne	.LBB12_19
	movl	72(%rsp), %edx
	movl	76(%rsp), %ebp
	movq	%rsp, %rdi
	movq	%r15, 128(%rsp)
	movq	%r15, %rsi
	movl	%ebp, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB12_14
	movl	%ebp, %esi
	movl	4(%rsp), %eax
	movl	8(%rsp), %r15d
	movl	12(%rsp), %ecx
	movq	48(%rsp), %rdx
	movq	%rdx, %r13
	cmpl	%eax, 144(%rdx)
	je	.LBB12_24
	imulq	$152, %rax, %r13
	addq	(%rbx), %r13
	cmpl	%eax, 144(%r14)
	cmoveq	%r14, %r13
.LBB12_24:
	movl	%eax, (%rsp)
	movl	%r15d, 4(%rsp)
	movl	%ecx, 8(%rsp)
	movl	92(%rsp), %ebp
	movl	%ebp, 12(%rsp)
	movq	%rsp, %rdx
	movq	128(%rsp), %rdi
	callq	*bevy_ecs::entity::Entities::set@GOTPCREL(%rip)
	movq	136(%r13), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB12_71
	movq	128(%r13), %rax
	leaq	(%r15,%r15,2), %rcx
	movl	%ebp, 8(%rax,%rcx,4)
.LBB12_19:
	movq	24(%rbx), %r14
	movq	(%r14), %rbp
	movq	48(%rsp), %rax
	cmpq	64(%rax), %rbp
	jae	.LBB12_21
	movq	56(%rax), %rsi
	shlq	$5, %rbp
	movq	8(%rsi,%rbp), %rax
	testq	%rax, %rax
	je	.LBB12_21
	movl	72(%rbx), %ecx
	movl	%ecx, 48(%rsp)
	movss	40(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r14), %rcx
	movq	(%rcx), %rcx
	cmpq	%rcx, 40(%r12)
	jbe	.LBB12_29
	movq	32(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB12_29
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB12_29
	movq	%rsi, 40(%rsp)
	movq	(%r12), %rbx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r13
	shlq	$5, %r13
	leaq	(%rbx,%r13), %rdi
	cmpb	$0, (%rax)
	je	.LBB12_31
	movq	%rsp, %rdx
	movq	32(%rsp), %r15
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	48(%rsp), %ecx
	jmp	.LBB12_33
.LBB12_62:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r14, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%r15), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r14,4)
.LBB12_64:
	movq	80(%rbx,%r15), %rax
	movl	%ecx, (%rax,%r14,4)
	movss	60(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%rbp)
	movq	40(%rsp), %rdx
	jbe	.LBB12_29
	movl	%ecx, %r15d
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB12_29
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB12_29
	addq	%r13, %rdx
	addq	$8, %rdx
	movq	(%rbp), %rbx
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	movq	(%rdx), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_68
	movq	%rsp, %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_70
.LBB12_49:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r14, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%r15), %rax
	movl	32(%rsp), %ecx
	movl	%ecx, (%rax,%r14,4)
.LBB12_51:
	movq	80(%rbx,%r15), %rax
	movl	%ecx, (%rax,%r14,4)
	movss	60(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r13), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%rbp)
	movq	40(%rsp), %rdx
	jbe	.LBB12_29
	movl	%ecx, %r15d
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB12_29
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB12_29
	addq	%r12, %rdx
	addq	$8, %rdx
	movq	(%rbp), %rbp
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %rdi
	movq	(%rdx), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_55
	movq	%rsp, %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_57
.LBB12_68:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r14, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	%r15d, (%rax,%r14,4)
.LBB12_70:
	movq	80(%rbx,%rbp), %rax
	movl	%r15d, (%rax,%r14,4)
	movups	(%r12), %xmm0
	jmp	.LBB12_41
.LBB12_55:
	movq	(%rdi), %rdx
	movq	%r14, %rax
	imulq	%rdx, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r15d, (%rax,%r14,4)
.LBB12_57:
	movq	80(%rbp,%rbx), %rax
	movl	%r15d, (%rax,%r14,4)
	jmp	.LBB12_40
.LBB12_31:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	32(%rsp), %r15
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%r13), %rax
	movl	48(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB12_33:
	movq	80(%rbx,%r13), %rax
	movl	%ecx, (%rax,%r15,4)
	movss	60(%rsp), %xmm0
	movss	%xmm0, (%rsp)
	movq	16(%r14), %rax
	movq	8(%rax), %rax
	cmpq	%rax, 40(%r12)
	jbe	.LBB12_29
	movl	%ecx, %r14d
	movq	32(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB12_29
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB12_29
	movq	40(%rsp), %rdx
	addq	%rbp, %rdx
	addq	$8, %rdx
	movq	(%r12), %rbp
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %rdi
	movq	(%rdx), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_37
	movq	%rsp, %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_39
.LBB12_37:
	movq	(%rdi), %rdx
	movq	%r15, %rax
	imulq	%rdx, %rax
	addq	40(%rdi), %rax
	movq	%rsp, %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB12_39:
	movq	80(%rbp,%rbx), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB12_40:
	movups	96(%rsp), %xmm0
.LBB12_41:
	movq	80(%rsp), %rax
	movups	%xmm0, (%rax)
	addq	$136, %rsp
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
.LBB12_71:
	.cfi_def_cfa_offset 192
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7(%rip), %rdx
	movq	%r15, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB12_29:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB12_9:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB12_6:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB12_21:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB12_42:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB12_15:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB12_14:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3(%rip), %rdi
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	bevy_ecs::bundle::BundleInserter::insert, .Lfunc_end12-bevy_ecs::bundle::BundleInserter::insert
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
	jne	.LBB14_2
.LBB14_1:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB14_29
.LBB14_2:
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
	jbe	.LBB14_16
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB14_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB14_8
.LBB14_16:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB14_29:
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
.LBB14_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB14_5
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB14_29
	jmp	.LBB14_8
.LBB14_5:
	movq	%rax, %rcx
	movl	$1, %r8d
	cmpq	$14, %rax
	jb	.LBB14_8
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
.LBB14_8:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB14_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB14_1
	je	.LBB14_11
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, (%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB14_12
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB14_29
.LBB14_11:
	movl	$16, %eax
.LBB14_12:
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
	je	.LBB14_13
	movq	%rbx, 8(%rsp)
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB14_18
	.p2align	4, 0x90
.LBB14_24:
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
.LBB14_25:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB14_26
.LBB14_18:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB14_25
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
	jne	.LBB14_22
	movl	$16, %esi
	.p2align	4, 0x90
.LBB14_21:
	addq	%rsi, %rdx
	andq	%r13, %rdx
	movdqu	(%rbp,%rdx), %xmm0
	pmovmskb	%xmm0, %ebx
	addq	$16, %rsi
	testl	%ebx, %ebx
	je	.LBB14_21
.LBB14_22:
	bsfw	%bx, %si
	movzwl	%si, %ebx
	addq	%rdx, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB14_24
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB14_24
.LBB14_26:
	movq	%r13, (%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB14_27
	jmp	.LBB14_29
.LBB14_13:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rdx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB14_27:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB14_29
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB14_29
.Lfunc_end14:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end14-hashbrown::raw::RawTable<T,A>::reserve_rehash
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
.Lfunc_end16:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}, .Lfunc_end16-hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI17_0:
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
	movdqa	.LCPI17_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB17_1
	.p2align	4, 0x90
.LBB17_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB17_7
.LBB17_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB17_1:
	testb	$1, %dil
	je	.LBB17_6
	addq	$15, %rax
	jb	.LBB17_7
	cmpq	%rdx, %rax
	jae	.LBB17_7
	leaq	1(%rax), %rcx
	jmp	.LBB17_5
.LBB17_7:
	cmpq	$16, %rdx
	jae	.LBB17_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB17_10
.LBB17_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB17_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB17_11
	xorl	%r13d, %r13d
	jmp	.LBB17_15
	.p2align	4, 0x90
.LBB17_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB17_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB17_12
.LBB17_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB17_28
	movq	%r13, %rax
	shlq	$4, %rax
	subq	%rax, %rbp
	addq	$-16, %rbp
	.p2align	4, 0x90
.LBB17_17:
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
	jne	.LBB17_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB17_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB17_20
.LBB17_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB17_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB17_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB17_24
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
	je	.LBB17_27
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
	jmp	.LBB17_17
	.p2align	4, 0x90
.LBB17_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB17_28
.LBB17_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB17_13
.LBB17_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB17_13:
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
.LBB17_29:
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
.LBB17_31:
.Ltmp5:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end17:
	.size	hashbrown::raw::RawTableInner<A>::rehash_in_place, .Lfunc_end17-hashbrown::raw::RawTableInner<A>::rehash_in_place
	.cfi_endproc
	.section	".gcc_except_table.hashbrown::raw::RawTableInner<A>::rehash_in_place","a",@progbits
	.p2align	2
GCC_except_table17:
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
	.uleb128 .Lfunc_end17-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI18_0:
	.zero	16,69
.LCPI18_1:
	.zero	16,51
.LCPI18_2:
	.zero	16,46
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
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
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
	movq	%rcx, 384(%rsp)
	movq	%rax, 360(%rsp)
	movq	%rcx, 368(%rsp)
	movq	%rdx, 376(%rsp)
.Ltmp6:
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
.Ltmp7:
	movl	760(%r13), %edi
.Ltmp8:
	callq	*bevy_ecs::component::Tick::new@GOTPCREL(%rip)
	movl	%eax, 28(%rsp)
.Ltmp9:
	movabsq	$-8466478450839782591, %r12
	movabsq	$59852087845711613, %r15
	leaq	560(%r13), %rdi
	leaq	472(%r13), %rax
	movq	%rax, 32(%rsp)
	leaq	160(%r13), %rax
	movq	%rax, 152(%rsp)
	movq	560(%r13), %r9
	movq	584(%r13), %rbp
	xorl	%r8d, %r8d
	movdqa	.LCPI18_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %rsi
.LBB18_3:
	andq	%r9, %rsi
	movdqu	(%rbp,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB18_4:
	testw	%bx, %bx
	je	.LBB18_5
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
	jne	.LBB18_4
	jmp	.LBB18_15
	.p2align	4, 0x90
.LBB18_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB18_7
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_3
.LBB18_15:
	addq	$-8, %rcx
.LBB18_16:
	movq	(%rcx), %rsi
	shlq	$5, %rsi
	addq	600(%r13), %rsi
	leaq	64(%r13), %rcx
.Ltmp45:
	movl	28(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	216(%rsp), %rdi
	movq	%rsi, 312(%rsp)
	movq	%r13, %rdx
	movq	%rcx, 304(%rsp)
	movq	32(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp46:
	movups	216(%rsp), %xmm0
	movups	232(%rsp), %xmm1
	movdqu	248(%rsp), %xmm2
	movdqa	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$3, 112(%rsp)
	movq	$0, 192(%rsp)
	movq	$4, 200(%rsp)
	movq	$0, 208(%rsp)
	movdqu	360(%rsp), %xmm0
	movdqu	376(%rsp), %xmm1
	movdqa	%xmm1, 176(%rsp)
	movdqa	%xmm0, 160(%rsp)
	movq	176(%rsp), %rax
	movq	168(%rsp), %r12
	movq	%rax, 40(%rsp)
	cmpq	%rax, %r12
	je	.LBB18_18
	movq	%r13, 16(%rsp)
	addq	$16, %r12
	movl	$4, %ebp
	xorl	%r14d, %r14d
	jmp	.LBB18_85
.LBB18_99:
	movq	200(%rsp), %rbp
	movq	208(%rsp), %r14
.LBB18_100:
	movl	%r13d, (%rbp,%r14,8)
	movl	%ebx, 4(%rbp,%r14,8)
	incq	%r14
	movq	%r14, 208(%rsp)
.LBB18_101:
	leaq	-16(%r12), %rax
	addq	$16, %r12
	addq	$16, %rax
	cmpq	40(%rsp), %rax
	je	.LBB18_19
.LBB18_85:
	movl	-16(%r12), %r13d
	movl	-12(%r12), %ebx
	movss	-8(%r12), %xmm0
	movss	%xmm0, 48(%rsp)
	movd	-4(%r12), %xmm0
	movd	%xmm0, 56(%rsp)
.Ltmp48:
	leaq	64(%rsp), %rdi
	callq	*bevy_ecs::world::World::insert_or_spawn_batch::SpawnOrInsert::entities@GOTPCREL(%rip)
.Ltmp49:
.Ltmp50:
	leaq	336(%rsp), %rdi
	movq	%rax, %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp51:
	movl	336(%rsp), %eax
	testq	%rax, %rax
	je	.LBB18_92
	cmpl	$1, %eax
	jne	.LBB18_97
	cmpl	$3, 112(%rsp)
	jne	.LBB18_102
.Ltmp58:
	leaq	216(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleSpawner::spawn_non_existent
.Ltmp59:
	jmp	.LBB18_101
	.p2align	4, 0x90
.LBB18_92:
	movl	340(%rsp), %r15d
	cmpl	$3, 112(%rsp)
	je	.LBB18_94
	cmpl	144(%rsp), %r15d
	jne	.LBB18_94
	movl	%r15d, 216(%rsp)
	leaq	344(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	220(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp64:
	leaq	320(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	leaq	216(%rsp), %r8
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp65:
	jmp	.LBB18_101
	.p2align	4, 0x90
.LBB18_97:
	cmpq	192(%rsp), %r14
	jne	.LBB18_100
.Ltmp52:
	leaq	192(%rsp), %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp53:
	jmp	.LBB18_99
.LBB18_102:
.Ltmp54:
	movl	28(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	216(%rsp), %rdi
	movq	312(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	304(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp55:
.Ltmp56:
	leaq	320(%rsp), %rdi
	leaq	216(%rsp), %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleSpawner::spawn_non_existent
.Ltmp57:
	movdqu	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	movdqu	248(%rsp), %xmm2
	movdqa	%xmm0, 64(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movq	$3, 112(%rsp)
	jmp	.LBB18_101
.LBB18_94:
.Ltmp60:
	movl	28(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	leaq	216(%rsp), %rdi
	movq	312(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	304(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	152(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp61:
	movl	%r15d, 320(%rsp)
	leaq	344(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	324(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp62:
	leaq	392(%rsp), %rdi
	leaq	216(%rsp), %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	leaq	320(%rsp), %r8
	movd	48(%rsp), %xmm0
	movd	56(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp63:
	movups	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	movdqu	248(%rsp), %xmm2
	movdqu	264(%rsp), %xmm3
	movaps	%xmm0, 64(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movdqa	%xmm3, 112(%rsp)
	movdqu	280(%rsp), %xmm0
	movdqa	%xmm0, 128(%rsp)
	movl	%r15d, 144(%rsp)
	jmp	.LBB18_101
.LBB18_18:
	xorl	%r14d, %r14d
.LBB18_19:
	movq	160(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB18_21
	movq	184(%rsp), %rdi
	shlq	$4, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_21:
	movq	192(%rsp), %rsi
	testq	%r14, %r14
	je	.LBB18_22
	movq	200(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB18_113
	testq	%rsi, %rsi
	jne	.LBB18_112
	jmp	.LBB18_113
.LBB18_22:
	testq	%rsi, %rsi
	je	.LBB18_113
	movq	200(%rsp), %rdi
.LBB18_112:
	shlq	$3, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_113:
	addq	$408, %rsp
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
.LBB18_7:
	.cfi_def_cfa_offset 464
	cmpq	$0, 568(%r13)
	jne	.LBB18_9
.Ltmp10:
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp11:
.LBB18_9:
	movabsq	$7474135272137635638, %r14
	movq	%r13, %rcx
	movabsq	$5845125549349233374, %r13
	leaq	592(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	$0, 160(%rsp)
	movq	$8, 168(%rsp)
	movq	$0, 176(%rsp)
	movq	472(%rcx), %rax
	movq	%rcx, 16(%rsp)
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_1(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r14, %rsi
.LBB18_10:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB18_11:
	testw	%bx, %bx
	je	.LBB18_12
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
	jne	.LBB18_11
	jmp	.LBB18_38
.LBB18_12:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB18_24
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_10
.LBB18_38:
	addq	$-8, %rdi
.LBB18_39:
	movq	(%rdi), %rbp
.Ltmp22:
	leaq	160(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp23:
	movabsq	$-3761927119122844677, %r14
	movabsq	$6772986914493042455, %rsi
	movq	168(%rsp), %rax
	movq	176(%rsp), %r13
	movq	%rax, 56(%rsp)
	movq	%rbp, (%rax,%r13,8)
	incq	%r13
	movq	%r13, 176(%rsp)
	movq	16(%rsp), %rcx
	movq	472(%rcx), %rax
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB18_41:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB18_42:
	testw	%bp, %bp
	je	.LBB18_43
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
	jne	.LBB18_42
	jmp	.LBB18_63
.LBB18_43:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB18_49
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_41
.LBB18_63:
	addq	$-8, %rdi
	movq	(%rdi), %rbp
	cmpq	160(%rsp), %r13
	movq	56(%rsp), %rcx
	jne	.LBB18_67
.LBB18_65:
.Ltmp34:
	leaq	160(%rsp), %rdi
	movq	%r13, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp35:
	movq	168(%rsp), %rcx
	movq	176(%rsp), %r13
.LBB18_67:
	movq	%rbp, (%rcx,%r13,8)
	incq	%r13
	movq	%r13, 176(%rsp)
	movq	16(%rsp), %rax
	movq	608(%rax), %r14
	movq	%r13, 80(%rsp)
	movq	%rax, %r13
	movdqu	160(%rsp), %xmm0
	movdqa	%xmm0, 64(%rsp)
.Ltmp40:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rsi
	leaq	216(%rsp), %rdi
	leaq	64(%rsp), %r8
	movl	$64, %edx
	movq	32(%rsp), %rcx
	movq	%r14, %r9
	callq	*bevy_ecs::bundle::initialize_bundle@GOTPCREL(%rip)
.Ltmp41:
	movdqu	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	608(%r13), %rsi
	cmpq	592(%r13), %rsi
	jne	.LBB18_71
.Ltmp42:
	movq	48(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp43:
	movq	608(%r13), %rsi
.LBB18_71:
	movq	600(%r13), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 608(%r13)
	movq	560(%r13), %rcx
	movq	584(%r13), %rax
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_74
	movl	$16, %esi
	.p2align	4, 0x90
.LBB18_73:
	addq	%rsi, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_73
.LBB18_74:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB18_76
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB18_76:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$69, (%rax,%rdx)
	movb	$69, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rcx
	andb	$1, %sil
	movzbl	%sil, %esi
	subq	%rsi, 568(%r13)
	subq	%rdx, %rcx
	negq	%rdx
	movq	%r15, -16(%rax,%rdx)
	movq	%r14, -8(%rcx)
	addq	$-8, %rcx
	incq	576(%r13)
	jmp	.LBB18_16
.LBB18_24:
	movq	16(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB18_26
.Ltmp12:
	movq	32(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp13:
.LBB18_26:
	movq	16(%rsp), %rax
	movq	552(%rax), %rbp
	movq	$0, 64(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$30, 80(%rsp)
	movq	$4, 96(%rsp)
	movq	$4, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%r13, 120(%rsp)
	movq	$0, 128(%rsp)
	movw	$256, 136(%rsp)
.Ltmp14:
	leaq	216(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 40(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp15:
	cmpb	$0, 288(%rsp)
	je	.LBB18_28
.Ltmp16:
	leaq	216(%rsp), %rbx
	movq	152(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp17:
.LBB18_28:
	movq	16(%rsp), %rbx
	leaq	536(%rbx), %rdi
	movq	296(%rsp), %rax
	movq	%rax, 144(%rsp)
	movups	280(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqu	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	movdqu	248(%rsp), %xmm2
	movdqu	264(%rsp), %xmm3
	movdqa	%xmm3, 112(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	%rbp, %rax
	cmpq	(%rdi), %rbp
	jne	.LBB18_31
.Ltmp19:
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp20:
	movq	16(%rsp), %rbx
	movq	552(%rbx), %rax
.LBB18_31:
	movq	544(%rbx), %rcx
	imulq	$88, %rax, %rdx
	movq	144(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
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
	jne	.LBB18_34
	movl	$16, %esi
.LBB18_33:
	addq	%rsi, %r14
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_33
.LBB18_34:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r14, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB18_36
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB18_36:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$51, (%rax,%rdx)
	movb	$51, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r13, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	jmp	.LBB18_39
.LBB18_49:
	movq	16(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB18_51
.Ltmp24:
	movq	32(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp25:
.LBB18_51:
	movq	16(%rsp), %rax
	movq	552(%rax), %rbx
	movq	$0, 64(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	$30, 80(%rsp)
	movq	$4, 96(%rsp)
	movq	$4, 104(%rsp)
	movq	$1, 112(%rsp)
	movq	%r14, 120(%rsp)
	movq	$0, 128(%rsp)
	movw	$256, 136(%rsp)
.Ltmp26:
	leaq	216(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 40(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp27:
	cmpb	$0, 288(%rsp)
	je	.LBB18_53
.Ltmp28:
	leaq	216(%rsp), %rbp
	movq	152(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp29:
.LBB18_53:
	movq	16(%rsp), %rbp
	leaq	536(%rbp), %rdi
	movq	296(%rsp), %rax
	movq	%rax, 144(%rsp)
	movups	280(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqu	216(%rsp), %xmm0
	movdqu	232(%rsp), %xmm1
	movdqu	248(%rsp), %xmm2
	movdqu	264(%rsp), %xmm3
	movdqa	%xmm3, 112(%rsp)
	movdqa	%xmm2, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movq	%rbx, %rax
	cmpq	(%rdi), %rbx
	jne	.LBB18_56
.Ltmp31:
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp32:
	movq	16(%rsp), %rbp
	movq	552(%rbp), %rax
.LBB18_56:
	movq	544(%rbp), %rcx
	imulq	$88, %rax, %rdx
	movq	144(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	96(%rsp), %xmm2
	movdqa	112(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%rbp)
	movq	472(%rbp), %rcx
	movq	496(%rbp), %rax
	movabsq	$6772986914493042455, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_59
	movl	$16, %esi
.LBB18_58:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_58
.LBB18_59:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB18_61
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB18_61:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$46, (%rax,%rdx)
	movb	$46, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	movq	(%rdi), %rbp
	cmpq	160(%rsp), %r13
	movq	56(%rsp), %rcx
	je	.LBB18_65
	jmp	.LBB18_67
.LBB18_78:
.Ltmp33:
	movq	%rax, %rbp
	jmp	.LBB18_48
.LBB18_46:
.Ltmp21:
	movq	%rax, %rbp
	jmp	.LBB18_48
.LBB18_79:
.Ltmp30:
	movq	%rbp, %rcx
	movq	%rax, %rbp
	movq	%rcx, 40(%rsp)
	jmp	.LBB18_48
.LBB18_47:
.Ltmp18:
	movq	%rax, %rbp
	movq	%rbx, 40(%rsp)
.LBB18_48:
	movq	40(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB18_82
.LBB18_80:
.Ltmp44:
	movq	%rax, %rbp
	leaq	64(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB18_108
.LBB18_81:
.Ltmp36:
	movq	%rax, %rbp
.LBB18_82:
.Ltmp37:
	leaq	160(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp38:
	jmp	.LBB18_108
.LBB18_83:
.Ltmp39:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.LBB18_107:
.Ltmp47:
	movq	%rax, %rbp
.LBB18_108:
	leaq	360(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	jmp	.LBB18_109
.LBB18_91:
.Ltmp66:
	movq	%rax, %rbp
	movq	%r12, 168(%rsp)
	leaq	160(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
.Ltmp67:
	leaq	192(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
.Ltmp68:
.LBB18_109:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB18_106:
.Ltmp69:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end18:
	.size	world_insert_or_spawn_batch, .Lfunc_end18-world_insert_or_spawn_batch
	.cfi_endproc
	.section	.gcc_except_table.world_insert_or_spawn_batch,"a",@progbits
	.p2align	2
GCC_except_table18:
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
	.uleb128 .Ltmp63-.Ltmp48
	.uleb128 .Ltmp66-.Lfunc_begin1
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
	.uleb128 .Ltmp67-.Lfunc_begin1
	.uleb128 .Ltmp68-.Ltmp67
	.uleb128 .Ltmp69-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp68-.Lfunc_begin1
	.uleb128 .Lfunc_end18-.Ltmp68
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
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 43

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/e77eb00/crates/bevy_ecs/src/bundle.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 92

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000\214\001\000\000E\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.6,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.6:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/e77eb00/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.7,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.7:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.6
	.asciz	"_\000\000\000\000\000\000\000\254\001\000\000\t\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.7, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.8,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.8:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000\207\002\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.8, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.9,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.9:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000h\002\000\000N\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.9, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.10,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.10:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000S\002\000\000N\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.10, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.11,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.11:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000A\002\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.11, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.12,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.12:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000.\002\000\000N\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.12, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.13,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.13:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4
	.asciz	"\\\000\000\000\000\000\000\000\037\002\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.13, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

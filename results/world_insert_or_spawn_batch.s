	.text
	.file	"world_insert_or_spawn_batch.23499888-cgu.0"
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
	movq	%rsi, %rdx
	notq	%rdx
	shrq	$63, %rdx
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
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB7_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
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
	movabsq	$104811045873349725, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setbe	%dl
	imulq	$88, %rbx, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB8_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
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
	movabsq	$768614336404564650, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setbe	%dl
	leaq	(,%rbx,4), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$2, %rdx
	testq	%rax, %rax
	je	.LBB9_3
	movq	8(%r14), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
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
	shrq	$58, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$5, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB10_3
	movq	8(%r14), %rcx
	shlq	$5, %rax
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
	je	.LBB11_10
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
	je	.LBB11_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	jmp	.LBB11_4
.LBB11_3:
	movq	$0, 24(%rsp)
.LBB11_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB11_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB11_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB11_5:
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
.LBB11_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB11_9
.LBB11_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB11_9:
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end11-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	movq	%r8, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r8
	movq	48(%rsi), %rax
	testq	%rax, %rax
	movq	%rdi, 56(%rsp)
	movss	%xmm1, 44(%rsp)
	je	.LBB12_37
	movl	%ecx, %r13d
	movl	%edx, %r12d
	cmpl	$1, %eax
	jne	.LBB12_6
	movq	8(%rbx), %r14
	movl	4(%r15), %edi
	movq	136(%r14), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB12_43
	decq	%rsi
	movq	128(%r14), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	8(%rax,%rcx,4), %r15d
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%rax,%rdx,4), %ebp
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rcx,4)
	movl	%ebp, 8(%rax,%rcx,4)
	movq	%rsi, 136(%r14)
	cmpq	%rdi, %rsi
	je	.LBB12_27
	jbe	.LBB12_5
	leaq	(%rax,%rcx,4), %rax
	movl	4(%rax), %eax
	movq	16(%rbx), %rcx
	movq	16(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	%edi, 8(%rcx,%rax,4)
.LBB12_27:
	movq	56(%rbx), %rbp
	movq	136(%rbp), %rsi
	movq	%rsi, %rax
	cmpq	120(%rbp), %rsi
	movq	%rsi, 8(%rsp)
	jne	.LBB12_29
	leaq	120(%rbp), %rdi
	movq	8(%rsp), %rsi
	movss	%xmm0, 16(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	8(%rsp), %rsi
	movss	16(%rsp), %xmm0
	movq	136(%rbp), %rax
.LBB12_29:
	movq	128(%rbp), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r12d, (%rcx,%rdx,4)
	movl	%r13d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 136(%rbp)
	movl	144(%rbp), %edi
	movl	148(%rbp), %edx
	movq	16(%rbx), %rax
	movq	16(%rax), %rax
	movl	%r13d, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%edi, 48(%rsp)
	movl	%edi, 4(%rax,%rcx,4)
	movl	%esi, 8(%rax,%rcx,4)
	movl	%edx, 16(%rsp)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	24(%rbx), %rax
	movq	32(%rbx), %rcx
	movq	(%rax), %rdx
	movq	56(%r14), %rsi
	shlq	$5, %rdx
	movq	8(%rsi,%rdx), %r14
	movl	72(%rbx), %edx
	movl	%edx, (%rsp)
	movss	%xmm0, 24(%rsp)
	movq	16(%rax), %r12
	movq	(%r12), %rax
	movq	(%rcx), %rbx
	movq	32(%rcx), %r13
	shlq	$4, %rax
	movq	8(%r13,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	cmpb	$0, (%r14)
	je	.LBB12_30
	leaq	24(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB12_32
.LBB12_37:
	movq	8(%rbx), %rax
	movq	24(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	56(%rax), %rax
	shlq	$5, %rdx
	movq	8(%rax,%rdx), %rdx
	movq	32(%rbx), %rax
	movl	12(%r15), %r12d
	movl	72(%rbx), %esi
	movl	%esi, 8(%rsp)
	movss	%xmm0, 24(%rsp)
	movq	16(%rcx), %r13
	movq	(%r13), %rcx
	movq	(%rax), %rbx
	movq	32(%rax), %r14
	shlq	$4, %rcx
	movq	8(%r14,%rcx), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	movq	%rdx, 16(%rsp)
	cmpb	$0, (%rdx)
	je	.LBB12_36
	leaq	24(%rsp), %rdx
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	8(%rsp), %ecx
	jmp	.LBB12_39
.LBB12_6:
	movl	%r12d, 8(%rsp)
	movq	8(%rbx), %r12
	movl	4(%r15), %edi
	movq	136(%r12), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB12_43
	movss	%xmm0, 16(%rsp)
	decq	%rsi
	movq	128(%r12), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	8(%rax,%rcx,4), %r14d
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%rax,%rdx,4), %ebp
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rcx,4)
	movl	%ebp, 8(%rax,%rcx,4)
	movq	%rsi, 136(%r12)
	cmpq	%rdi, %rsi
	je	.LBB12_10
	jbe	.LBB12_5
	leaq	(%rax,%rcx,4), %rax
	movl	4(%rax), %eax
	movq	16(%rbx), %rcx
	movq	16(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	%edi, 8(%rcx,%rax,4)
.LBB12_10:
	movq	32(%rbx), %rsi
	movq	64(%rbx), %rcx
	leaq	24(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rcx, 48(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	56(%rbx), %rbp
	movl	24(%rsp), %r15d
	movq	136(%rbp), %r8
	movq	%r8, %rax
	cmpq	120(%rbp), %r8
	jne	.LBB12_12
	leaq	120(%rbp), %rdi
	movq	%r8, %rsi
	movl	%r14d, (%rsp)
	movq	%r8, %r14
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	%r14, %r8
	movl	(%rsp), %r14d
	movq	136(%rbp), %rax
.LBB12_12:
	movq	128(%rbp), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	8(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	%r13d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 136(%rbp)
	movl	144(%rbp), %r10d
	movl	148(%rbp), %r9d
	movq	16(%rbx), %rax
	movq	16(%rax), %rcx
	movl	%r13d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	%r8d, 8(%rcx,%rdx,4)
	movl	%r9d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpl	$1, 28(%rsp)
	movss	16(%rsp), %xmm0
	jne	.LBB12_17
	movl	36(%rsp), %ecx
	movq	16(%rax), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rdx,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rdx,%rcx,4), %esi
	movl	8(%rdx,%rcx,4), %edi
	movl	12(%rdx,%rcx,4), %edx
	movq	%r12, %rcx
	cmpl	%esi, 144(%r12)
	je	.LBB12_15
	imulq	$152, %rsi, %rcx
	addq	(%rbx), %rcx
	cmpl	%esi, 144(%rbp)
	cmoveq	%rbp, %rcx
.LBB12_15:
	movl	%edi, 4(%rax)
	movl	%edx, 8(%rax)
	movl	%r14d, 12(%rax)
	movq	136(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB12_44
	movq	128(%rcx), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	%r14d, 8(%rax,%rcx,4)
.LBB12_17:
	movl	%r10d, 68(%rsp)
	movl	%r9d, (%rsp)
	movq	%r8, 8(%rsp)
	movq	24(%rbx), %rax
	movq	(%rax), %rcx
	movq	56(%r12), %rdx
	shlq	$5, %rcx
	movq	8(%rdx,%rcx), %rdx
	movl	72(%rbx), %r12d
	movss	%xmm0, 4(%rsp)
	movq	16(%rax), %rbx
	movq	(%rbx), %rax
	movq	48(%rsp), %rcx
	movq	(%rcx), %rbp
	movq	32(%rcx), %r14
	shlq	$4, %rax
	movq	8(%r14,%rax), %rax
	leaq	(%rax,%rax,2), %r13
	shlq	$5, %r13
	movq	%rbp, %rdi
	addq	%r13, %rdi
	movq	%rdx, 16(%rsp)
	cmpb	$0, (%rdx)
	je	.LBB12_18
	leaq	4(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_20
.LBB12_36:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r12, %rax
	addq	40(%rdi), %rax
	leaq	24(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	8(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
.LBB12_39:
	movq	80(%rbx,%rbp), %rax
	movl	%ecx, (%rax,%r12,4)
	movss	44(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movq	8(%r13), %rax
	shlq	$4, %rax
	movq	8(%r14,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	movq	16(%rsp), %rax
	cmpb	$0, 1(%rax)
	movl	%ecx, %r14d
	je	.LBB12_40
	leaq	24(%rsp), %rdx
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_42
.LBB12_40:
	movq	(%rdi), %rdx
	movq	%r12, %rax
	imulq	%rdx, %rax
	addq	40(%rdi), %rax
	leaq	24(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	%r14d, (%rax,%r12,4)
.LBB12_42:
	movq	80(%rbx,%rbp), %rax
	movl	%r14d, (%rax,%r12,4)
	movups	(%r15), %xmm0
	movq	56(%rsp), %rax
	movups	%xmm0, (%rax)
	jmp	.LBB12_25
.LBB12_30:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	leaq	24(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB12_32:
	movq	80(%rbx,%rbp), %rax
	movl	%ecx, (%rax,%r15,4)
	movss	44(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movq	8(%r12), %rax
	shlq	$4, %rax
	movq	8(%r13,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%rbx,%rbp), %rdi
	cmpb	$0, 1(%r14)
	movl	%ecx, %r14d
	je	.LBB12_33
	leaq	24(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_35
.LBB12_33:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	leaq	24(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbx,%rbp), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB12_35:
	movl	16(%rsp), %edx
	movl	48(%rsp), %ecx
	movq	80(%rbx,%rbp), %rax
	movl	%r14d, (%rax,%r15,4)
	movq	56(%rsp), %rax
	movl	%ecx, (%rax)
	movq	8(%rsp), %rcx
	movl	%ecx, 4(%rax)
	movl	%edx, 8(%rax)
	jmp	.LBB12_24
.LBB12_18:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	leaq	4(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%r13), %rax
	movl	%r12d, (%rax,%r15,4)
.LBB12_20:
	movq	80(%rbp,%r13), %rax
	movl	%r12d, (%rax,%r15,4)
	movss	44(%rsp), %xmm0
	movss	%xmm0, 4(%rsp)
	movq	8(%rbx), %rax
	shlq	$4, %rax
	movq	8(%r14,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %rdi
	movq	16(%rsp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB12_21
	leaq	4(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB12_23
.LBB12_21:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	leaq	4(%rsp), %rsi
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%rbp,%rbx), %rax
	movl	%r12d, (%rax,%r15,4)
.LBB12_23:
	movq	80(%rbp,%rbx), %rax
	movl	%r12d, (%rax,%r15,4)
	movq	56(%rsp), %rax
	movl	68(%rsp), %ecx
	movl	%ecx, (%rax)
	movq	8(%rsp), %rcx
	movl	%ecx, 4(%rax)
	movl	(%rsp), %ecx
	movl	%ecx, 8(%rax)
.LBB12_24:
	movl	%r15d, 12(%rax)
.LBB12_25:
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
.LBB12_5:
	.cfi_def_cfa_offset 128
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB12_44:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB12_43:
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
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
	jmp	.LBB13_28
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
	jbe	.LBB13_15
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB13_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB13_7
.LBB13_15:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB13_28:
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
	jne	.LBB13_28
	jmp	.LBB13_7
.LBB13_5:
	movq	%rax, %rcx
	movabsq	$2635249153387078803, %rdx
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
.LBB13_7:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB13_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB13_1
	je	.LBB13_10
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, 16(%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	16(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB13_11
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB13_28
.LBB13_10:
	movl	$16, %eax
.LBB13_11:
	movabsq	$-9223372036854775807, %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, 8(%rsp)
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
	movq	8(%rsp), %rcx
	subq	%rcx, %rbx
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.LBB13_12
	movq	%rbx, %r11
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB13_17
	.p2align	4, 0x90
.LBB13_23:
	shrq	$57, %r10
	leaq	-16(%rbx), %rsi
	andq	%r13, %rsi
	movb	%r10b, (%rbp,%rbx)
	movb	%r10b, 16(%rsi,%rbp)
	movq	%rcx, %rdx
	notq	%rdx
	shlq	$4, %rdx
	notq	%rbx
	shlq	$4, %rbx
	movdqu	(%rdi,%rdx), %xmm0
	movdqu	%xmm0, (%rbp,%rbx)
.LBB13_24:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB13_25
.LBB13_17:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB13_24
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movq	%r9, %rdx
	subq	%rsi, %rdx
	movq	(%rdx), %r10
	imulq	%r8, %r10
	movq	%r10, %rsi
	andq	%r13, %rsi
	movdqu	(%rbp,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB13_21
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB13_20:
	addq	%rbx, %rsi
	andq	%r13, %rsi
	movdqu	(%rbp,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB13_20
.LBB13_21:
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	addq	%rsi, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB13_23
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB13_23
.LBB13_25:
	movq	%r13, (%r15)
	movq	%r11, 8(%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB13_26
	jmp	.LBB13_28
.LBB13_12:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB13_26:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB13_28
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB13_28
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
	jmp	.LBB14_28
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
	jbe	.LBB14_15
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB14_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB14_7
.LBB14_15:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB14_28:
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
	jne	.LBB14_28
	jmp	.LBB14_7
.LBB14_5:
	movq	%rax, %rcx
	movabsq	$2635249153387078803, %rdx
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
.LBB14_7:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB14_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB14_1
	je	.LBB14_10
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, 16(%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	16(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB14_11
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB14_28
.LBB14_10:
	movl	$16, %eax
.LBB14_11:
	movabsq	$-9223372036854775807, %r12
	movq	%r13, 16(%rsp)
	movq	%rbx, 8(%rsp)
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
	movq	8(%rsp), %rcx
	subq	%rcx, %rbx
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.LBB14_12
	movq	%rbx, %r11
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB14_17
	.p2align	4, 0x90
.LBB14_23:
	shrq	$57, %r10
	leaq	-16(%rbx), %rsi
	andq	%r13, %rsi
	movb	%r10b, (%rbp,%rbx)
	movb	%r10b, 16(%rsi,%rbp)
	movq	%rcx, %rdx
	notq	%rdx
	shlq	$4, %rdx
	notq	%rbx
	shlq	$4, %rbx
	movdqu	(%rdi,%rdx), %xmm0
	movdqu	%xmm0, (%rbp,%rbx)
.LBB14_24:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB14_25
.LBB14_17:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB14_24
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movq	%r9, %rdx
	subq	%rsi, %rdx
	movq	(%rdx), %r10
	imulq	%r8, %r10
	movq	%r10, %rsi
	andq	%r13, %rsi
	movdqu	(%rbp,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB14_21
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB14_20:
	addq	%rbx, %rsi
	andq	%r13, %rsi
	movdqu	(%rbp,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB14_20
.LBB14_21:
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	addq	%rsi, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB14_23
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB14_23
.LBB14_25:
	movq	%r13, (%r15)
	movq	%r11, 8(%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB14_26
	jmp	.LBB14_28
.LBB14_12:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB14_26:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB14_28
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB14_28
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
	notq	%rax
	shlq	$4, %rax
	addq	%rax, %rbp
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
	movq	%rbx, %rsi
	notq	%rsi
	shlq	$4, %rsi
	addq	%rcx, %rsi
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
	.zero	16,88
.LCPI18_1:
	.zero	16,93
.LCPI18_2:
	.zero	16,103
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
	movq	%rdi, %r14
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
	movabsq	$-5717993199360751243, %r15
	movabsq	$372905292693039969, %r13
	movl	888(%r14), %eax
	movl	%eax, 60(%rsp)
	leaq	472(%r14), %rax
	movq	%rax, 64(%rsp)
	leaq	160(%r14), %rax
	movq	%rax, 168(%rsp)
	leaq	720(%r14), %r12
	leaq	688(%r14), %rdi
	movq	688(%r14), %r9
	movq	712(%r14), %rbp
	xorl	%r8d, %r8d
	movdqa	.LCPI18_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r15, %rsi
	movq	%r14, 16(%rsp)
.LBB18_2:
	andq	%r9, %rsi
	movdqu	(%rbp,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB18_3:
	testw	%bx, %bx
	je	.LBB18_4
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
	cmpq	%r13, -16(%rcx)
	jne	.LBB18_3
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_4:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %ecx
	testl	%ecx, %ecx
	jne	.LBB18_6
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_2
.LBB18_14:
	addq	$-8, %rcx
.LBB18_15:
	movq	(%rcx), %rsi
	shlq	$5, %rsi
	addq	728(%r14), %rsi
	leaq	64(%r14), %rcx
.Ltmp43:
	movl	60(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	240(%rsp), %rdi
	movq	%rsi, 40(%rsp)
	movq	%r14, %rdx
	movq	%rcx, 368(%rsp)
	movq	64(%rsp), %r8
	movq	168(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp44:
	movups	240(%rsp), %xmm0
	movups	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqa	%xmm2, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	$3, 128(%rsp)
	movq	$0, 216(%rsp)
	movq	$4, 224(%rsp)
	movq	$0, 232(%rsp)
	movdqu	408(%rsp), %xmm0
	movdqu	424(%rsp), %xmm1
	movdqa	%xmm0, 176(%rsp)
	movdqa	%xmm1, 192(%rsp)
	movq	184(%rsp), %r13
	movq	192(%rsp), %rax
	movq	%rax, 32(%rsp)
	cmpq	%rax, %r13
	je	.LBB18_88
	addq	$16, %r13
	leaq	80(%rsp), %r15
	jmp	.LBB18_18
	.p2align	4, 0x90
.LBB18_102:
	movq	224(%rsp), %rax
	movl	%r12d, (%rax,%rsi,8)
	movl	%r14d, 4(%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 232(%rsp)
.LBB18_103:
	leaq	-16(%r13), %rax
	addq	$16, %r13
	addq	$16, %rax
	cmpq	32(%rsp), %rax
	je	.LBB18_88
.LBB18_18:
	movl	-16(%r13), %r12d
	movl	-12(%r13), %r14d
	movss	-8(%r13), %xmm0
	movss	%xmm0, 24(%rsp)
	movd	-4(%r13), %xmm0
	movd	%xmm0, 72(%rsp)
.Ltmp46:
	movq	%r15, %rdi
	callq	*bevy_ecs::world::World::insert_or_spawn_batch::SpawnOrInsert::entities@GOTPCREL(%rip)
.Ltmp47:
.Ltmp48:
	leaq	384(%rsp), %rdi
	movq	%rax, %rsi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	*bevy_ecs::entity::Entities::alloc_at_without_replacement@GOTPCREL(%rip)
.Ltmp49:
	movl	384(%rsp), %eax
	testq	%rax, %rax
	je	.LBB18_94
	cmpl	$1, %eax
	jne	.LBB18_99
	cmpl	$3, 128(%rsp)
	jne	.LBB18_104
	movq	104(%rsp), %rbp
.Ltmp58:
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp59:
	movl	%eax, %r15d
	movq	80(%rsp), %rbx
	movq	136(%rbx), %rsi
	movq	%rsi, %rax
	cmpq	120(%rbx), %rsi
	movq	%rsi, 336(%rsp)
	jne	.LBB18_27
.Ltmp60:
	leaq	120(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp61:
	movq	136(%rbx), %rax
.LBB18_27:
	movq	128(%rbx), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r12d, (%rcx,%rdx,4)
	movl	%r14d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 136(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 52(%rsp)
	movl	148(%rbx), %eax
	movl	%eax, 56(%rsp)
	movq	96(%rsp), %rax
	movl	120(%rsp), %ecx
	movl	%ecx, 364(%rsp)
	movss	24(%rsp), %xmm0
	movss	%xmm0, 240(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rax), %rax
	movq	(%rbp), %rbx
	movq	32(%rbp), %rcx
	movq	%rcx, 376(%rsp)
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movl	%r15d, %ecx
	movl	%r15d, 328(%rsp)
	leaq	(%rax,%rax,2), %r15
	shlq	$5, %r15
	movl	%ecx, %r12d
	movq	(%rbx,%r15), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbx,%r15), %rdi
	leaq	240(%rsp), %rsi
	movq	memcpy@GOTPCREL(%rip), %rbp
	callq	*%rbp
	movq	%rbp, %r8
	movq	56(%rbx,%r15), %rax
	movl	364(%rsp), %ecx
	movl	%ecx, (%rax,%r12,4)
	movq	80(%rbx,%r15), %rax
	movl	%ecx, (%rax,%r12,4)
	movl	%ecx, %r15d
	movd	72(%rsp), %xmm0
	movd	%xmm0, 240(%rsp)
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$4, %rax
	movq	376(%rsp), %rcx
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	movq	(%rbx,%rbp), %rdx
	movq	%rdx, %rdi
	imulq	%r12, %rdi
	addq	40(%rbx,%rbp), %rdi
	leaq	240(%rsp), %rsi
	callq	*%r8
	movq	56(%rbx,%rbp), %rax
	movl	%r15d, (%rax,%r12,4)
	movq	80(%rbx,%rbp), %rax
	movl	%r15d, (%rax,%r12,4)
	leaq	80(%rsp), %r15
	movq	88(%rsp), %rax
	movq	16(%rax), %rax
	leaq	(%r14,%r14,4), %rcx
	movl	52(%rsp), %edx
	movl	%edx, 4(%rax,%rcx,4)
	movq	336(%rsp), %rdx
	movl	%edx, 8(%rax,%rcx,4)
	movl	56(%rsp), %edx
	movl	%edx, 12(%rax,%rcx,4)
	movl	328(%rsp), %edx
	movl	%edx, 16(%rax,%rcx,4)
	jmp	.LBB18_103
	.p2align	4, 0x90
.LBB18_94:
	movl	388(%rsp), %ebx
	cmpl	$3, 128(%rsp)
	je	.LBB18_96
	cmpl	160(%rsp), %ebx
	jne	.LBB18_96
	movl	%ebx, 240(%rsp)
	leaq	392(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	244(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp66:
	leaq	344(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	leaq	240(%rsp), %r8
	movd	24(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp67:
	jmp	.LBB18_103
	.p2align	4, 0x90
.LBB18_99:
	movq	232(%rsp), %rsi
	cmpq	216(%rsp), %rsi
	jne	.LBB18_102
.Ltmp50:
	leaq	216(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp51:
	movq	232(%rsp), %rsi
	jmp	.LBB18_102
.LBB18_104:
.Ltmp52:
	movl	60(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	240(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	368(%rsp), %rcx
	movq	64(%rsp), %r8
	movq	168(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_spawner@GOTPCREL(%rip)
.Ltmp53:
	movq	264(%rsp), %rbp
.Ltmp54:
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	*bevy_ecs::storage::table::Table::allocate@GOTPCREL(%rip)
.Ltmp55:
	movl	%eax, %r15d
	movq	240(%rsp), %rbx
	movq	136(%rbx), %rsi
	movq	%rsi, %rax
	cmpq	120(%rbx), %rsi
	movq	%rsi, 32(%rsp)
	jne	.LBB18_109
.Ltmp56:
	leaq	120(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp57:
	movq	136(%rbx), %rax
.LBB18_109:
	movq	128(%rbx), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r12d, (%rcx,%rdx,4)
	movl	%r14d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 136(%rbx)
	movl	144(%rbx), %eax
	movl	%eax, 56(%rsp)
	movl	148(%rbx), %eax
	movl	%eax, 336(%rsp)
	movq	256(%rsp), %rax
	movl	280(%rsp), %r12d
	movss	24(%rsp), %xmm0
	movss	%xmm0, 344(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	(%rax), %rax
	movl	%r15d, %ecx
	movl	%r15d, 52(%rsp)
	movq	(%rbp), %r15
	movq	32(%rbp), %rdx
	movq	%rdx, 328(%rsp)
	shlq	$4, %rax
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movl	%ecx, %ebp
	movq	(%r15,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%rbp, %rdi
	addq	40(%r15,%rbx), %rdi
	leaq	344(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%rbx), %rax
	movl	%r12d, (%rax,%rbp,4)
	movq	80(%r15,%rbx), %rax
	movl	%r12d, (%rax,%rbp,4)
	movss	72(%rsp), %xmm0
	movss	%xmm0, 344(%rsp)
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$4, %rax
	movq	328(%rsp), %rcx
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbx
	shlq	$5, %rbx
	movq	(%r15,%rbx), %rdx
	movq	%rdx, %rdi
	imulq	%rbp, %rdi
	addq	40(%r15,%rbx), %rdi
	leaq	344(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r15,%rbx), %rax
	movl	%r12d, (%rax,%rbp,4)
	movq	80(%r15,%rbx), %rax
	leaq	80(%rsp), %r15
	movl	%r12d, (%rax,%rbp,4)
	movq	248(%rsp), %rax
	movq	16(%rax), %rax
	leaq	(%r14,%r14,4), %rcx
	movl	56(%rsp), %edx
	movl	%edx, 4(%rax,%rcx,4)
	movq	32(%rsp), %rdx
	movl	%edx, 8(%rax,%rcx,4)
	movl	336(%rsp), %edx
	movl	%edx, 12(%rax,%rcx,4)
	movl	52(%rsp), %edx
	movl	%edx, 16(%rax,%rcx,4)
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	272(%rsp), %xmm2
	movdqa	%xmm2, 112(%rsp)
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	$3, 128(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB18_103
.LBB18_96:
.Ltmp62:
	movl	60(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	leaq	240(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	368(%rsp), %rcx
	movq	64(%rsp), %r8
	movq	168(%rsp), %r9
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
.Ltmp63:
	movl	%ebx, 344(%rsp)
	leaq	392(%rsp), %rcx
	movl	8(%rcx), %eax
	leaq	348(%rsp), %rdx
	movl	%eax, 8(%rdx)
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
.Ltmp64:
	leaq	440(%rsp), %rdi
	leaq	240(%rsp), %rsi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	leaq	344(%rsp), %r8
	movd	24(%rsp), %xmm0
	movd	72(%rsp), %xmm1
	callq	bevy_ecs::bundle::BundleInserter::insert
.Ltmp65:
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
	jmp	.LBB18_103
.LBB18_88:
	movq	176(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB18_90
	movq	200(%rsp), %rdi
	shlq	$4, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_90:
	cmpq	$0, 232(%rsp)
	movq	216(%rsp), %rsi
	je	.LBB18_91
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB18_118
	testq	%rsi, %rsi
	jne	.LBB18_117
	jmp	.LBB18_118
.LBB18_91:
	testq	%rsi, %rsi
	je	.LBB18_118
	movq	224(%rsp), %rdi
.LBB18_117:
	shlq	$3, %rsi
	movl	$4, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_118:
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
.LBB18_6:
	.cfi_def_cfa_offset 512
	cmpq	$0, 696(%r14)
	jne	.LBB18_8
.Ltmp8:
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp9:
.LBB18_8:
	movabsq	$-4960261354937240200, %rsi
	movq	%r14, %rcx
	movabsq	$172711937178008, %r14
	movq	$0, 176(%rsp)
	movq	$8, 184(%rsp)
	movq	$0, 192(%rsp)
	leaq	536(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	472(%rcx), %rax
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_1(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB18_9:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB18_10:
	testw	%bp, %bp
	je	.LBB18_11
	bsfw	%bp, %di
	movzwl	%di, %edx
	leal	-1(%rbp), %ebx
	andl	%ebp, %ebx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	movl	%ebx, %ebp
	cmpq	%r14, -16(%rdi)
	jne	.LBB18_10
	jmp	.LBB18_42
.LBB18_11:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB18_28
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_9
.LBB18_42:
	addq	$-8, %rdi
.LBB18_43:
	movq	(%rdi), %rbp
.Ltmp20:
	leaq	176(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp21:
	movabsq	$-3597755997830336113, %rsi
	movabsq	$4607038733241984659, %r14
	movq	184(%rsp), %rcx
	movq	192(%rsp), %rax
	movq	%rcx, 24(%rsp)
	movq	%rbp, (%rcx,%rax,8)
	incq	%rax
	movq	%rax, 72(%rsp)
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rcx
	movq	472(%rcx), %rax
	movq	496(%rcx), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_2(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
.LBB18_45:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB18_46:
	testw	%bp, %bp
	je	.LBB18_47
	bsfw	%bp, %di
	movzwl	%di, %edx
	leal	-1(%rbp), %ebx
	andl	%ebp, %ebx
	addq	%rsi, %rdx
	andq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	movl	%ebx, %ebp
	cmpq	%r14, -16(%rdi)
	jne	.LBB18_46
	jmp	.LBB18_67
.LBB18_47:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB18_53
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_45
.LBB18_67:
	addq	$-8, %rdi
	movq	16(%rsp), %r14
.LBB18_68:
	movq	(%rdi), %rbx
	movq	72(%rsp), %rsi
	cmpq	176(%rsp), %rsi
	movq	24(%rsp), %rcx
	jne	.LBB18_71
.Ltmp32:
	leaq	176(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp33:
	movq	184(%rsp), %rcx
	movq	192(%rsp), %rsi
	movq	16(%rsp), %r14
.LBB18_71:
	movq	%rbx, (%rcx,%rsi,8)
	incq	%rsi
	movq	%rsi, 192(%rsp)
	movq	736(%r14), %rbp
	movq	%rsi, 96(%rsp)
	movdqu	176(%rsp), %xmm0
	movdqa	%xmm0, 80(%rsp)
.Ltmp38:
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2(%rip), %rsi
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %r8
	movl	$64, %edx
	movq	64(%rsp), %rcx
	movq	%rbp, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
.Ltmp39:
	movdqu	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqa	%xmm1, 96(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movq	736(%r14), %rsi
	cmpq	720(%r14), %rsi
	jne	.LBB18_75
.Ltmp40:
	movq	%r12, %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp41:
	movq	736(%r14), %rsi
.LBB18_75:
	movq	728(%r14), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	240(%rsp), %xmm0
	movdqu	256(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 736(%r14)
	movq	688(%r14), %rcx
	movq	712(%r14), %rax
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_78
	movl	$16, %esi
	.p2align	4, 0x90
.LBB18_77:
	addq	%rsi, %r15
	andq	%rcx, %r15
	movdqu	(%rax,%r15), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_77
.LBB18_78:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r15, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB18_80
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB18_80:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$88, (%rax,%rdx)
	movb	$88, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rcx
	andb	$1, %bl
	movzbl	%bl, %esi
	subq	%rsi, 696(%r14)
	subq	%rdx, %rcx
	negq	%rdx
	movq	%r13, -16(%rax,%rdx)
	movq	%rbp, -8(%rcx)
	addq	$-8, %rcx
	incq	704(%r14)
	jmp	.LBB18_15
.LBB18_28:
	movq	16(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB18_30
.Ltmp10:
	movq	64(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp11:
.LBB18_30:
	movq	16(%rsp), %rax
	movq	552(%rax), %rbp
	movq	$0, 80(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$30, 96(%rsp)
	movq	$4, 112(%rsp)
	movq	$4, 120(%rsp)
	movq	$1, 128(%rsp)
	movq	%r14, 136(%rsp)
	movq	$0, 144(%rsp)
	movw	$256, 152(%rsp)
.Ltmp12:
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 40(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp13:
	cmpb	$0, 312(%rsp)
	je	.LBB18_32
.Ltmp14:
	leaq	240(%rsp), %rbx
	movq	168(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp15:
.LBB18_32:
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
	movq	32(%rsp), %rcx
	cmpq	(%rcx), %rbp
	jne	.LBB18_35
.Ltmp17:
	movq	32(%rsp), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp18:
	movq	16(%rsp), %rax
	movq	552(%rax), %rax
.LBB18_35:
	movq	16(%rsp), %rdi
	movq	544(%rdi), %rcx
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
	movq	%rax, 552(%rdi)
	movq	472(%rdi), %rcx
	movq	496(%rdi), %rax
	movabsq	$-4960261354937240200, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_38
	movl	$16, %esi
.LBB18_37:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_37
.LBB18_38:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB18_40
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB18_40:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$93, (%rax,%rdx)
	movb	$93, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	jmp	.LBB18_43
.LBB18_53:
	movq	16(%rsp), %rax
	cmpq	$0, 480(%rax)
	jne	.LBB18_55
.Ltmp22:
	movq	64(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp23:
.LBB18_55:
	movq	16(%rsp), %rax
	movq	552(%rax), %rbx
	movq	$0, 80(%rsp)
	leaq	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$30, 96(%rsp)
	movq	$4, 112(%rsp)
	movq	$4, 120(%rsp)
	movq	$1, 128(%rsp)
	movq	%r14, 136(%rsp)
	movq	$0, 144(%rsp)
	movw	$256, 152(%rsp)
.Ltmp24:
	leaq	240(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, 40(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp25:
	cmpb	$0, 312(%rsp)
	je	.LBB18_57
.Ltmp26:
	leaq	240(%rsp), %rbp
	movq	168(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp27:
.LBB18_57:
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
	movq	32(%rsp), %rdi
	cmpq	(%rdi), %rbx
	jne	.LBB18_60
.Ltmp29:
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp30:
	movq	16(%rsp), %rax
	movq	552(%rax), %rax
.LBB18_60:
	movq	16(%rsp), %rdi
	movq	544(%rdi), %rcx
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
	movq	%rax, 552(%rdi)
	movq	472(%rdi), %rcx
	movq	496(%rdi), %rax
	movabsq	$-3597755997830336113, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_63
	movl	$16, %esi
.LBB18_62:
	addq	%rsi, %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_62
.LBB18_63:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB18_65
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB18_65:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$103, (%rax,%rdx)
	movb	$103, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	movq	16(%rsp), %rsi
	subq	%rcx, 480(%rsi)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r14, -16(%rax,%rdx)
	movq	%rsi, %r14
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%rsi)
	jmp	.LBB18_68
.LBB18_82:
.Ltmp31:
	movq	%rax, %rbx
	jmp	.LBB18_52
.LBB18_50:
.Ltmp19:
	movq	%rax, %rbx
	jmp	.LBB18_52
.LBB18_83:
.Ltmp28:
	movq	%rax, %rbx
	movq	%rbp, 40(%rsp)
	jmp	.LBB18_52
.LBB18_51:
.Ltmp16:
	movq	%rbx, %rcx
	movq	%rax, %rbx
	movq	%rcx, 40(%rsp)
.LBB18_52:
	movq	40(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB18_86
.LBB18_84:
.Ltmp42:
	movq	%rax, %rbx
	leaq	80(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB18_113
.LBB18_85:
.Ltmp34:
	movq	%rax, %rbx
.LBB18_86:
.Ltmp35:
	leaq	176(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp36:
	jmp	.LBB18_113
.LBB18_87:
.Ltmp37:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.LBB18_112:
.Ltmp45:
	movq	%rax, %rbx
.LBB18_113:
	leaq	408(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
	jmp	.LBB18_114
.LBB18_93:
.Ltmp68:
	movq	%rax, %rbx
	movq	%r13, 184(%rsp)
	leaq	176(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::into_iter::IntoIter<(bevy_ecs::entity::Entity,(world_insert_or_spawn_batch::A,world_insert_or_spawn_batch::B))>>
.Ltmp69:
	leaq	216(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::entity::Entity>>
.Ltmp70:
.LBB18_114:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB18_111:
.Ltmp71:
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
	.uleb128 .Ltmp44-.Ltmp6
	.uleb128 .Ltmp45-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp46-.Lfunc_begin1
	.uleb128 .Ltmp61-.Ltmp46
	.uleb128 .Ltmp68-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp61-.Lfunc_begin1
	.uleb128 .Ltmp66-.Ltmp61
	.byte	0
	.byte	0
	.uleb128 .Ltmp66-.Lfunc_begin1
	.uleb128 .Ltmp57-.Ltmp66
	.uleb128 .Ltmp68-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp57-.Lfunc_begin1
	.uleb128 .Ltmp62-.Ltmp57
	.byte	0
	.byte	0
	.uleb128 .Ltmp62-.Lfunc_begin1
	.uleb128 .Ltmp65-.Ltmp62
	.uleb128 .Ltmp68-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Ltmp9-.Ltmp8
	.uleb128 .Ltmp45-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin1
	.uleb128 .Ltmp33-.Ltmp20
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin1
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp45-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp40-.Lfunc_begin1
	.uleb128 .Ltmp41-.Ltmp40
	.uleb128 .Ltmp42-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp13-.Ltmp10
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin1
	.uleb128 .Ltmp15-.Ltmp14
	.uleb128 .Ltmp16-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin1
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp19-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin1
	.uleb128 .Ltmp25-.Ltmp22
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin1
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp28-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp29-.Lfunc_begin1
	.uleb128 .Ltmp30-.Ltmp29
	.uleb128 .Ltmp31-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp35-.Lfunc_begin1
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp37-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp69-.Lfunc_begin1
	.uleb128 .Ltmp70-.Ltmp69
	.uleb128 .Ltmp71-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp70-.Lfunc_begin1
	.uleb128 .Lfunc_end18-.Ltmp70
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.0,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.0:
	.ascii	"world_insert_or_spawn_batch::A"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.0, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.1,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.1:
	.ascii	"world_insert_or_spawn_batch::B"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.1, 30

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.2,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.2:
	.ascii	"(world_insert_or_spawn_batch::A, world_insert_or_spawn_batch::B)"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.2, 64

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3,@object
	.section	.rodata..Lanon.ec88cfe8160c27a9dec3209ea7295488.3,"a",@progbits
.Lanon.ec88cfe8160c27a9dec3209ea7295488.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/2ec38d1/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3, 95

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.4,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.4:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"_\000\000\000\000\000\000\000\255\001\000\000\t\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.4, 24

	.type	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5,@object
	.section	.data.rel.ro..Lanon.ec88cfe8160c27a9dec3209ea7295488.5,"aw",@progbits
	.p2align	3
.Lanon.ec88cfe8160c27a9dec3209ea7295488.5:
	.quad	.Lanon.ec88cfe8160c27a9dec3209ea7295488.3
	.asciz	"_\000\000\000\000\000\000\000\330\001\000\000\026\000\000"
	.size	.Lanon.ec88cfe8160c27a9dec3209ea7295488.5, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

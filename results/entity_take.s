	.text
	.file	"entity_take.6fd9380c-cgu.0"
	.section	".text.core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>,@function
core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
	movq	16(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_2:
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	48(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_3:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>, .Lfunc_end0-core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>
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

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>:
	.cfi_startproc
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_1
	movq	8(%rdi), %rdi
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB5_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB5_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB5_11
.LBB5_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB5_6
.LBB5_7:
	testq	%r14, %r14
	je	.LBB5_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB5_4
.LBB5_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_12
.LBB5_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB5_6:
	movl	$1, %eax
.LBB5_12:
	movq	%rax, (%rbx)
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
	je	.LBB6_3
	movq	8(%r14), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	jmp	.LBB6_4
.LBB6_3:
	movq	$0, 24(%rsp)
.LBB6_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB6_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
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
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB6_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB6_9
.LBB6_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB6_9:
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
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$59, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$4, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB8_3
	movq	8(%r14), %rcx
	shlq	$4, %rax
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
	movabsq	$104811045873349725, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setbe	%dl
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
	movabsq	$128102389400760775, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setbe	%dl
	leaq	(,%rbx,8), %rcx
	leaq	(%rcx,%rcx,8), %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB11_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
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

	.section	".text.unlikely.alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle","ax",@progbits
	.p2align	4, 0x90
	.type	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle,@function
alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB12_10
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
	shrq	$59, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$4, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB12_3
	movq	8(%r14), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB12_4
.LBB12_3:
	movq	$0, 24(%rsp)
.LBB12_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB12_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB12_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB12_5:
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
.LBB12_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB12_9
.LBB12_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB12_9:
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end12:
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end12-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
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
	.zero	16,62
	.section	.text.entity_remove,"ax",@progbits
	.globl	entity_remove
	.p2align	4, 0x90
	.type	entity_remove,@function
entity_remove:
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
	subq	$280, %rsp
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movabsq	$-6621950424576738418, %r15
	movabsq	$9023028438193747366, %r14
	movq	%rdi, 160(%rsp)
	movq	24(%rdi), %r13
	leaq	64(%r13), %rax
	movq	%rax, 32(%rsp)
	leaq	160(%r13), %rax
	movq	%rax, 16(%rsp)
	leaq	472(%r13), %r12
	leaq	744(%r13), %rax
	movq	%rax, 152(%rsp)
	leaq	720(%r13), %r9
	movq	688(%r13), %rax
	movq	712(%r13), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI18_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r14, %rsi
.LBB18_1:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebp
	.p2align	4, 0x90
.LBB18_2:
	testw	%bp, %bp
	je	.LBB18_3
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
	cmpq	%r15, -16(%rdi)
	jne	.LBB18_2
	jmp	.LBB18_13
	.p2align	4, 0x90
.LBB18_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB18_5
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_1
.LBB18_13:
	addq	$-8, %rdi
.LBB18_14:
	movq	728(%r13), %rbp
	movq	(%rdi), %rbx
	shlq	$5, %rbx
	leaq	(%rbx,%rbp), %r8
	movq	160(%rsp), %rax
	movl	(%rax), %r14d
	movl	4(%rax), %ecx
	movq	%rcx, 8(%rsp)
	movl	8(%rax), %ecx
	movq	%rcx, (%rsp)
	movl	12(%rax), %eax
	movq	%rax, 40(%rsp)
	xorl	%r15d, %r15d
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	xorl	%r9d, %r9d
	callq	*bevy_ecs::world::entity_ref::remove_bundle_from_archetype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.LBB18_138
	cmpl	%r14d, %edx
	je	.LBB18_138
	movl	%edx, 28(%rsp)
	cmpq	$0, 24(%rbp,%rbx)
	je	.LBB18_17
	movq	16(%rbp,%rbx), %rax
	movq	160(%rsp), %rcx
	movl	16(%rcx), %edx
	movl	%edx, 32(%rsp)
	movl	20(%rcx), %r15d
	movq	(%rax), %r12
	movq	544(%r13), %rax
	movq	%rax, 144(%rsp)
	movq	808(%r13), %rbp
	cmpq	%r12, %rbp
	jbe	.LBB18_58
	movq	800(%r13), %rax
	movq	%r12, %rcx
	shlq	$4, %rcx
	cmpq	$0, (%rax,%rcx)
	je	.LBB18_58
	movq	8(%rax,%rcx), %rax
	leaq	(%rax,%rax,8), %rbp
	shlq	$3, %rbp
	addq	752(%r13), %rbp
	movq	56(%rbp), %rsi
	movq	64(%rbp), %rbx
	cmpq	40(%rbp), %rsi
	je	.LBB18_83
.LBB18_57:
	movq	%rbx, %rax
	jmp	.LBB18_84
.LBB18_58:
	movq	%r15, %rbx
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 192(%rsp)
	movq	$8, 208(%rsp)
	movdqu	%xmm0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$8, 240(%rsp)
	movdqu	%xmm0, 248(%rsp)
	movq	760(%r13), %r15
	cmpq	%r12, %rbp
	ja	.LBB18_59
	leaq	1(%r12), %rax
	movq	%rax, %rdx
	subq	%rbp, %rdx
	jbe	.LBB18_71
	leaq	792(%r13), %rdi
	movq	(%rdi), %rax
	subq	%rbp, %rax
	cmpq	%rdx, %rax
	jae	.LBB18_69
.Ltmp25:
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp26:
	movq	808(%r13), %rax
	jmp	.LBB18_66
.LBB18_69:
	movq	%rbp, %rax
	testq	%rdx, %rdx
	je	.LBB18_70
.LBB18_66:
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	800(%r13), %rcx
	movq	%r12, %rdx
	notq	%rdx
	addq	%rbp, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB18_67:
	movq	$0, (%rcx)
	decq	%rsi
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jne	.LBB18_67
	subq	%rsi, %rax
.LBB18_71:
	movq	%rax, 808(%r13)
	movq	%rax, %rbp
.LBB18_59:
	cmpq	%r12, %rbp
	jbe	.LBB18_60
	movq	800(%r13), %rax
	movq	%r12, %rcx
	shlq	$4, %rcx
	movq	$1, (%rax,%rcx)
	movq	%r15, 8(%rax,%rcx)
	movq	784(%r13), %rsi
	cmpq	768(%r13), %rsi
	jne	.LBB18_75
.Ltmp29:
	leaq	768(%r13), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp30:
	movq	784(%r13), %rsi
.LBB18_75:
	movq	776(%r13), %rax
	movq	%r12, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 784(%r13)
	movq	256(%rsp), %rax
	movq	%rax, 112(%rsp)
	movdqa	192(%rsp), %xmm0
	movdqa	208(%rsp), %xmm1
	movdqa	224(%rsp), %xmm2
	movdqa	240(%rsp), %xmm3
	movdqa	%xmm3, 96(%rsp)
	movdqa	%xmm2, 80(%rsp)
	movdqa	%xmm1, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	760(%r13), %rsi
	cmpq	744(%r13), %rsi
	jne	.LBB18_78
.Ltmp35:
	movq	152(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp36:
	movq	760(%r13), %rsi
.LBB18_78:
	movq	752(%r13), %rax
	leaq	(%rsi,%rsi,8), %rcx
	movq	256(%rsp), %rdx
	movq	%rdx, 64(%rax,%rcx,8)
	movaps	192(%rsp), %xmm0
	movdqa	208(%rsp), %xmm1
	movdqa	224(%rsp), %xmm2
	movdqa	240(%rsp), %xmm3
	movdqu	%xmm3, 48(%rax,%rcx,8)
	movdqu	%xmm2, 32(%rax,%rcx,8)
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	incq	%rsi
	movq	%rsi, 760(%r13)
	leaq	(%r15,%r15,8), %rcx
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbx, %r15
	movq	56(%rbp), %rsi
	movq	64(%rbp), %rbx
	cmpq	40(%rbp), %rsi
	jne	.LBB18_57
.LBB18_83:
	leaq	40(%rbp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	56(%rbp), %rsi
	movq	64(%rbp), %rax
.LBB18_84:
	movq	48(%rbp), %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%rbx, (%rcx,%rdx)
	movl	32(%rsp), %edi
	movl	%edi, 8(%rcx,%rdx)
	movl	%r15d, 12(%rcx,%rdx)
	incq	%rsi
	movq	%rsi, 56(%rbp)
	incq	%rax
	movq	%rax, 64(%rbp)
	imulq	$88, %r12, %rax
	movq	144(%rsp), %rcx
	cmpb	$0, 72(%rcx,%rax)
	je	.LBB18_85
	movq	16(%rsp), %rdi
	movq	%r12, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB18_90
	movq	%rax, %rdi
	movl	32(%rsp), %esi
	movl	%r15d, %edx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	testq	%rax, %rax
	movq	8(%rsp), %rdi
	je	.LBB18_93
	movq	304(%r13), %r8
	movq	312(%r13), %rsi
	movq	152(%r13), %r12
	cmpq	%r14, %r12
	jbe	.LBB18_96
.LBB18_98:
	movq	%r15, 16(%rsp)
	movq	144(%r13), %r15
	imulq	$152, %r14, %r10
	movq	136(%r15,%r10), %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB18_140
	movss	(%rax), %xmm0
	movq	16(%r13), %r14
	movq	24(%r13), %r13
	leaq	(%r15,%r10), %r9
	addq	$136, %r9
	decq	%rcx
	movq	128(%r15,%r10), %rax
	leaq	(%rdi,%rdi,2), %rbx
	movl	8(%rax,%rbx,4), %edx
	leaq	(%rcx,%rcx,2), %rbp
	movl	8(%rax,%rbp,4), %r11d
	movq	(%rax,%rbp,4), %rbp
	movq	%rbp, (%rax,%rbx,4)
	movl	%r11d, 8(%rax,%rbx,4)
	movq	%rcx, (%r9)
	cmpq	%rdi, %rcx
	je	.LBB18_106
	jbe	.LBB18_141
	leaq	(%rax,%rbx,4), %rbx
	movl	4(%rbx), %ebp
	xorl	%ecx, %ecx
	leaq	(,%rbp,4), %rax
	addq	%rbp, %rax
	leaq	(%r14,%rax,4), %r9
	cmpq	%rbp, %r13
	cmovaq	%r9, %rcx
	jbe	.LBB18_104
	movl	(%rbx), %ebp
	cmpl	%ebp, (%rcx)
	jne	.LBB18_104
	movl	4(%rcx), %ebx
	cmpl	$-1, %ebx
	je	.LBB18_104
	movq	12(%rcx), %rcx
	movl	%ebx, 4(%r14,%rax,4)
	movl	%edi, 8(%r14,%rax,4)
	movq	%rcx, 12(%r14,%rax,4)
.LBB18_106:
	movl	28(%rsp), %eax
	cmpq	%rax, %r12
	jbe	.LBB18_107
	movq	%r12, 152(%rsp)
	movl	148(%r15,%r10), %edi
	imulq	$152, %rax, %r12
	leaq	(%r15,%r12), %rax
	addq	$148, %rax
	movq	%rax, 8(%rsp)
	movl	148(%r15,%r12), %eax
	cmpl	%eax, %edi
	jne	.LBB18_109
	leaq	(%r15,%r12), %r13
	addq	$136, %r13
	movq	136(%r15,%r12), %rbx
	movq	%rbx, %rax
	cmpq	120(%r15,%r12), %rbx
	jne	.LBB18_132
	leaq	(%r15,%r12), %rdi
	addq	$120, %rdi
	movq	%rbx, %rsi
	movss	%xmm0, (%rsp)
	movl	%edx, %ebp
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movl	%ebp, %edx
	movss	(%rsp), %xmm0
	movq	(%r13), %rax
	movq	8(%rsp), %rcx
	movl	(%rcx), %edi
.LBB18_132:
	movq	128(%r15,%r12), %rcx
	leaq	(%rax,%rax,2), %rbp
	movl	32(%rsp), %esi
	movl	%esi, (%rcx,%rbp,4)
	movq	16(%rsp), %rsi
	movl	%esi, 4(%rcx,%rbp,4)
	movl	%edx, 8(%rcx,%rbp,4)
	incq	%rax
	movq	%rax, (%r13)
	movl	144(%r15,%r12), %r9d
	jmp	.LBB18_137
.LBB18_109:
	cmpl	%eax, %edi
	movss	%xmm0, (%rsp)
	movq	%r13, 144(%rsp)
	jbe	.LBB18_110
	cmpq	%rdi, %rsi
	jb	.LBB18_114
	je	.LBB18_116
	leaq	(%rdi,%rdi,8), %rcx
	leaq	(%r8,%rcx,8), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%r8,%rax,8), %rcx
	jmp	.LBB18_123
.LBB18_85:
	movq	312(%r13), %rsi
	movq	(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB18_139
	movq	304(%r13), %r8
	leaq	(%rdi,%rdi,8), %rax
	cmpq	%r12, 40(%r8,%rax,8)
	jbe	.LBB18_88
	leaq	(%r8,%rax,8), %rax
	movq	32(%rax), %rcx
	shlq	$4, %r12
	cmpq	$0, (%rcx,%r12)
	je	.LBB18_88
	movq	(%rax), %rdi
	movq	8(%rcx,%r12), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$5, %rcx
	movq	(%rdi,%rcx), %rax
	imulq	40(%rsp), %rax
	addq	40(%rdi,%rcx), %rax
	movq	8(%rsp), %rdi
	movq	152(%r13), %r12
	cmpq	%r14, %r12
	ja	.LBB18_98
.LBB18_96:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.8(%rip), %rdx
	movq	%r14, %rdi
	jmp	.LBB18_97
.LBB18_110:
	cmpq	%rax, %rsi
	jb	.LBB18_111
	cmpl	%edi, %eax
	jbe	.LBB18_142
	cmpq	%rax, %rsi
	je	.LBB18_121
	leaq	(%rax,%rax,8), %rax
	leaq	(%r8,%rax,8), %rcx
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%r8,%rax,8), %rsi
.LBB18_123:
	leaq	48(%rsp), %rdi
	movl	%edx, 28(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movl	48(%rsp), %r10d
	leaq	(%r15,%r12), %r13
	addq	$136, %r13
	movq	136(%r15,%r12), %rbx
	movq	%rbx, %rax
	cmpq	120(%r15,%r12), %rbx
	jne	.LBB18_125
	leaq	(%r15,%r12), %rdi
	addq	$120, %rdi
	movq	%rbx, %rsi
	movl	%r10d, %ebp
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movl	%ebp, %r10d
	movq	(%r13), %rax
.LBB18_125:
	movq	128(%r15,%r12), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	32(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movq	16(%rsp), %rsi
	movl	%esi, 4(%rcx,%rdx,4)
	movl	%r10d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, (%r13)
	movl	144(%r15,%r12), %r9d
	movq	8(%rsp), %rax
	movl	(%rax), %edi
	cmpl	$1, 52(%rsp)
	movss	(%rsp), %xmm0
	jne	.LBB18_136
	movl	60(%rsp), %eax
	xorl	%ecx, %ecx
	leaq	(%rax,%rax,4), %rsi
	leaq	(%r14,%rsi,4), %rbp
	cmpq	%rax, 144(%rsp)
	cmovaq	%rbp, %rcx
	jbe	.LBB18_129
	movl	56(%rsp), %eax
	cmpl	%eax, (%rcx)
	jne	.LBB18_129
	movl	4(%rcx), %eax
	movl	$4294967295, %ebp
	cmpq	%rbp, %rax
	je	.LBB18_129
	movl	8(%rcx), %r8d
	movl	12(%rcx), %ecx
	movl	%eax, 4(%r14,%rsi,4)
	movl	%r8d, 8(%r14,%rsi,4)
	movl	%ecx, 12(%r14,%rsi,4)
	movq	40(%rsp), %rcx
	movl	%ecx, 16(%r14,%rsi,4)
	movq	152(%rsp), %rsi
	cmpq	%rax, %rsi
	movl	28(%rsp), %edx
	jbe	.LBB18_143
	imulq	$152, %rax, %rax
	movq	136(%r15,%rax), %rsi
	cmpq	%r8, %rsi
	jbe	.LBB18_144
	addq	%r15, %rax
	addq	$120, %rax
	movq	8(%rax), %rax
	leaq	(%r8,%r8,2), %rcx
	movl	%edx, 8(%rax,%rcx,4)
.LBB18_136:
	movl	%r10d, %edx
	movq	16(%rsp), %rsi
.LBB18_137:
	movq	160(%rsp), %rax
	movl	%r9d, (%rax)
	movl	%ebx, 4(%rax)
	movl	%edi, 8(%rax)
	movl	%edx, 12(%rax)
	leaq	(%rsi,%rsi,4), %rax
	movl	%r9d, 4(%r14,%rax,4)
	movl	%ebx, 8(%r14,%rax,4)
	movl	%edi, 12(%r14,%rax,4)
	movl	%edx, 16(%r14,%rax,4)
	movl	$1, %r15d
.LBB18_138:
	movl	%r15d, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	leaq	48(%rsp), %rax
	#APP
	#NO_APP
	movl	48(%rsp), %eax
	movss	52(%rsp), %xmm0
	addq	$280, %rsp
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
.LBB18_5:
	.cfi_def_cfa_offset 336
	cmpq	$0, 696(%r13)
	movq	%r9, 8(%rsp)
	je	.LBB18_6
.LBB18_7:
	movq	$0, 168(%rsp)
	movq	$8, 176(%rsp)
	movq	$0, 184(%rsp)
	leaq	536(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	472(%r13), %rax
	movq	496(%r13), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r14, %rsi
.LBB18_8:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebp
	.p2align	4, 0x90
.LBB18_9:
	testw	%bp, %bp
	je	.LBB18_10
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
	cmpq	%r15, -16(%rdi)
	jne	.LBB18_9
	jmp	.LBB18_33
.LBB18_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB18_19
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB18_8
.LBB18_33:
	addq	$-8, %rdi
.LBB18_34:
	movq	(%rdi), %rbx
.Ltmp16:
	leaq	168(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp17:
	movq	176(%rsp), %rax
	movq	184(%rsp), %rcx
	movq	%rbx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 184(%rsp)
	movq	736(%r13), %rbp
	movq	%rcx, 64(%rsp)
	movups	168(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rsi
	leaq	192(%rsp), %rdi
	leaq	48(%rsp), %r8
	movl	$14, %edx
	movq	%r12, %rcx
	movq	%rbp, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movdqu	192(%rsp), %xmm0
	movdqu	208(%rsp), %xmm1
	movdqa	%xmm1, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	736(%r13), %rsi
	cmpq	720(%r13), %rsi
	jne	.LBB18_38
.Ltmp22:
	movq	8(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp23:
	movq	736(%r13), %rsi
.LBB18_38:
	movq	728(%r13), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	192(%rsp), %xmm0
	movdqu	208(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 736(%r13)
	movq	688(%r13), %rcx
	movq	712(%r13), %rax
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB18_41
	movl	$16, %esi
	.p2align	4, 0x90
.LBB18_40:
	addq	%rsi, %r14
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB18_40
.LBB18_41:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r14, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %ebx
	testb	%bl, %bl
	js	.LBB18_43
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %ebx
.LBB18_43:
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$62, (%rax,%rdx)
	movb	$62, 16(%rsi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %bl
	movzbl	%bl, %ecx
	subq	%rcx, 696(%r13)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r15, -16(%rax,%rdx)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	704(%r13)
	jmp	.LBB18_14
.LBB18_70:
	movq	%rbp, %rax
	jmp	.LBB18_71
.LBB18_6:
	leaq	688(%r13), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI18_0(%rip), %xmm3
	jmp	.LBB18_7
.LBB18_19:
	cmpq	$0, 480(%r13)
	jne	.LBB18_21
.Ltmp6:
	movq	%r12, %rdi
	movq	%r12, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp7:
.LBB18_21:
	movq	552(%r13), %rbx
	movq	$0, 48(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$14, 64(%rsp)
	movq	$4, 80(%rsp)
	movq	$4, 88(%rsp)
	movq	$1, 96(%rsp)
	movq	%r15, 104(%rsp)
	movq	$0, 112(%rsp)
	movw	$256, 120(%rsp)
.Ltmp8:
	leaq	192(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rdx, (%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 264(%rsp)
	movq	40(%rsp), %rbp
	je	.LBB18_23
.Ltmp10:
	leaq	192(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp11:
.LBB18_23:
	movq	272(%rsp), %rax
	movq	%rax, 128(%rsp)
	movups	256(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqu	192(%rsp), %xmm0
	movdqu	208(%rsp), %xmm1
	movdqu	224(%rsp), %xmm2
	movdqu	240(%rsp), %xmm3
	movdqa	%xmm3, 96(%rsp)
	movdqa	%xmm2, 80(%rsp)
	movdqa	%xmm1, 64(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movq	%rbx, %rax
	cmpq	(%rbp), %rbx
	jne	.LBB18_26
.Ltmp13:
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp14:
	movq	552(%r13), %rax
.LBB18_26:
	movq	544(%r13), %rcx
	imulq	$88, %rax, %rdx
	movq	128(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	48(%rsp), %xmm0
	movdqa	64(%rsp), %xmm1
	movdqa	80(%rsp), %xmm2
	movdqa	96(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%r13)
	movq	472(%r13), %rcx
	movq	496(%r13), %rax
	movq	%rcx, %rdx
	andq	%r14, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB18_29
	movl	$16, %edi
.LBB18_28:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB18_28
.LBB18_29:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB18_31
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB18_31:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$62, (%rax,%rsi)
	movb	$62, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r13)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r15, -16(%rax,%rsi)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r13)
	jmp	.LBB18_34
.LBB18_107:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movq	%rax, %rdi
.LBB18_97:
	movq	%r12, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_60:
.Ltmp27:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rdx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp28:
	ud2
.LBB18_141:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	movq	%rcx, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_139:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_116:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rdx
	jmp	.LBB18_117
.LBB18_142:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	movq	%rax, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_121:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rdx
.LBB18_117:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_143:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_144:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rdx
	movq	%r8, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB18_104:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rdx
	jmp	.LBB18_18
.LBB18_17:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rdx
	jmp	.LBB18_18
.LBB18_140:
	movq	%rcx, %rsi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB18_88:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
	jmp	.LBB18_18
.LBB18_129:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rdx
	jmp	.LBB18_18
.LBB18_90:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
	jmp	.LBB18_18
.LBB18_93:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rdx
.LBB18_18:
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB18_114:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rdx
	jmp	.LBB18_112
.LBB18_111:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.1(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rdx
.LBB18_112:
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB18_45:
.Ltmp15:
	movq	%rax, %rbx
	jmp	.LBB18_47
.LBB18_46:
.Ltmp12:
	movq	%rax, %rbx
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
.LBB18_47:
	movq	(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB18_51
.LBB18_48:
.Ltmp24:
	movq	%rax, %rbx
	leaq	48(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB18_49
.LBB18_50:
.Ltmp18:
	movq	%rax, %rbx
.LBB18_51:
.Ltmp19:
	leaq	168(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp20:
	jmp	.LBB18_49
.LBB18_52:
.Ltmp21:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.LBB18_79:
.Ltmp37:
	movq	%rax, %rbx
.Ltmp38:
	leaq	48(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>
.Ltmp39:
	jmp	.LBB18_49
.LBB18_80:
.Ltmp40:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.LBB18_81:
.Ltmp31:
	movq	%rax, %rbx
.Ltmp32:
	leaq	192(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>
.Ltmp33:
.LBB18_49:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB18_82:
.Ltmp34:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end18:
	.size	entity_remove, .Lfunc_end18-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2
GCC_except_table18:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1
	.uleb128 .Ltmp25-.Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin1
	.uleb128 .Ltmp30-.Ltmp25
	.uleb128 .Ltmp31-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp35-.Lfunc_begin1
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp37-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin1
	.uleb128 .Ltmp16-.Ltmp36
	.byte	0
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp18-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin1
	.uleb128 .Ltmp22-.Ltmp17
	.byte	0
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin1
	.uleb128 .Ltmp23-.Ltmp22
	.uleb128 .Ltmp24-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp6-.Ltmp23
	.byte	0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp9-.Ltmp6
	.uleb128 .Ltmp18-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp12-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin1
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin1
	.uleb128 .Ltmp27-.Ltmp14
	.byte	0
	.byte	0
	.uleb128 .Ltmp27-.Lfunc_begin1
	.uleb128 .Ltmp28-.Ltmp27
	.uleb128 .Ltmp31-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin1
	.uleb128 .Ltmp19-.Ltmp28
	.byte	0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin1
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin1
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp40-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin1
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin1
	.uleb128 .Lfunc_end18-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.0,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 35

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 43

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f133ef4/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 102

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\272\003\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\270\003\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\253\003\000\000\036\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\254\003\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\310\001\000\000\"\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\332\001\000\000\"\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\372\001\000\000\021\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.11,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f133ef4/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"_\000\000\000\000\000\000\000\255\001\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\357\001\000\000E\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\314\001\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.15,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.3
	.asciz	"f\000\000\000\000\000\000\000\224\001\000\000=\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f133ef4/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\t\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f133ef4/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 99

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000J\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000K\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000M\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.11
	.asciz	"_\000\000\000\000\000\000\000\330\001\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

	.text
	.file	"entity_take.e1f563da1d5a4fa8-cgu.0"
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
	movq	(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_2:
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	32(%rbx), %rdi
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

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB3_1
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_1:
	retq
.Lfunc_end3:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>, .Lfunc_end3-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
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
	shrq	$58, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$5, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_3
	movq	(%rbx), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB6_3
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
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
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB7_3
	movq	(%rbx), %rcx
	shlq	$3, %rax
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
	movabsq	$128102389400760776, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	leaq	(,%r14,8), %rcx
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB8_3
	movq	(%rbx), %rcx
	shlq	$3, %rax
	leaq	(%rax,%rax,8), %rax
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB9_3
	movq	(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
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
	movabsq	$768614336404564651, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	leaq	(,%r14,4), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB10_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
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
	jb	.LBB11_10
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
	je	.LBB11_3
	movq	(%rbx), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB11_4
.LBB11_3:
	movq	$0, 16(%rsp)
.LBB11_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB11_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
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
	movq	%rdi, (%rbx)
	movq	%r14, 8(%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB11_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB11_9
.LBB11_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB11_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end11:
	.size	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle, .Lfunc_end11-alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
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
	.zero	16,64
	.section	.text.entity_remove,"ax",@progbits
	.globl	entity_remove
	.p2align	4, 0x90
	.type	entity_remove,@function
entity_remove:
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
	subq	$360, %rsp
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movabsq	$-8040244238740938972, %r14
	movabsq	$-924698300427751188, %rbp
	movabsq	$-9121358631825034916, %r12
	movq	(%rdi), %r13
	leaq	488(%r13), %r15
	leaq	64(%r13), %rax
	movq	%rax, 24(%rsp)
	leaq	216(%r13), %rax
	movq	%rax, 40(%rsp)
	movq	512(%r13), %rcx
	movq	520(%r13), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI14_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %rdi
.LBB14_1:
	andq	%rax, %rdi
	movdqu	(%rcx,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	.p2align	4, 0x90
.LBB14_2:
	testw	%r8w, %r8w
	je	.LBB14_3
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rax, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r14, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbp, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB14_2
	jmp	.LBB14_13
	.p2align	4, 0x90
.LBB14_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB14_5
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB14_1
.LBB14_13:
	movq	(%r15), %rax
	movq	-8(%rcx,%r9,8), %r15
.LBB14_14:
	shlq	$5, %r15
	addq	%rax, %r15
	movl	16(%rbx), %r14d
	movl	20(%rbx), %eax
	movq	%rax, 32(%rsp)
	movl	24(%rbx), %ebp
	movq	%rbx, 16(%rsp)
	movl	28(%rbx), %eax
	movq	%rax, 152(%rsp)
	leaq	152(%r13), %rdi
	xorl	%ebx, %ebx
	movq	40(%rsp), %rsi
	movq	24(%rsp), %rdx
	movl	%r14d, %ecx
	movq	%r15, %r8
	xorl	%r9d, %r9d
	callq	*bevy_ecs::world::entity_ref::remove_bundle_from_archetype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.LBB14_137
	cmpl	%r14d, %edx
	je	.LBB14_137
	movq	%rbp, 184(%rsp)
	movl	%edx, 52(%rsp)
	cmpq	$0, 16(%r15)
	je	.LBB14_17
	movq	16(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 24(%rsp)
	movl	12(%rax), %eax
	movq	%rax, 8(%rsp)
	leaq	608(%r13), %r12
	movq	(%r15), %rax
	movq	(%rax), %r15
	movq	64(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	656(%r13), %rax
	movq	672(%r13), %rbp
	cmpq	%r15, %rbp
	jbe	.LBB14_59
	testq	%rax, %rax
	je	.LBB14_59
	movq	%r15, %rcx
	shlq	$4, %rcx
	cmpq	$0, (%rax,%rcx)
	je	.LBB14_59
	movq	8(%rax,%rcx), %rax
	leaq	(%rax,%rax,8), %rbx
	shlq	$3, %rbx
	addq	(%r12), %rbx
	movq	48(%rbx), %rsi
	movq	64(%rbx), %rbp
	cmpq	40(%rbx), %rsi
	je	.LBB14_82
.LBB14_57:
	movq	%rbp, %rax
	jmp	.LBB14_83
.LBB14_59:
	movq	$8, 64(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$8, 96(%rsp)
	movdqu	%xmm0, 104(%rsp)
	movdqu	%xmm0, 120(%rsp)
	movq	624(%r13), %rbx
	cmpq	%r15, %rbp
	ja	.LBB14_60
	leaq	1(%r15), %rcx
	movq	%rcx, %rdx
	subq	%rbp, %rdx
	jbe	.LBB14_72
	movq	664(%r13), %rcx
	subq	%rbp, %rcx
	cmpq	%rdx, %rcx
	jae	.LBB14_70
.Ltmp16:
	leaq	656(%r13), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp17:
	movq	656(%r13), %rax
	movq	672(%r13), %rcx
	jmp	.LBB14_67
.LBB14_70:
	movq	%rbp, %rcx
	testq	%rdx, %rdx
	je	.LBB14_71
.LBB14_67:
	movq	%rcx, %rdx
	shlq	$4, %rdx
	addq	%rax, %rdx
	movq	%r15, %rsi
	notq	%rsi
	addq	%rbp, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB14_68:
	movq	$0, (%rdx)
	decq	%rdi
	addq	$16, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB14_68
	subq	%rdi, %rcx
.LBB14_72:
	movq	%rcx, 672(%r13)
	movq	%rcx, %rbp
.LBB14_60:
	cmpq	%r15, %rbp
	jbe	.LBB14_61
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	$1, (%rax,%rcx)
	movq	%rbx, 8(%rax,%rcx)
	movq	648(%r13), %rsi
	cmpq	640(%r13), %rsi
	jne	.LBB14_76
.Ltmp20:
	leaq	632(%r13), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp21:
	movq	648(%r13), %rsi
.LBB14_76:
	movq	632(%r13), %rax
	movq	%r15, (%rax,%rsi,8)
	incq	%rsi
	movq	%rsi, 648(%r13)
	movq	624(%r13), %rsi
	cmpq	616(%r13), %rsi
	jne	.LBB14_79
.Ltmp23:
	movq	%r12, %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp24:
	movq	624(%r13), %rsi
.LBB14_79:
	movq	608(%r13), %rax
	leaq	(%rsi,%rsi,8), %rcx
	movq	128(%rsp), %rdx
	movq	%rdx, 64(%rax,%rcx,8)
	movups	64(%rsp), %xmm0
	movdqu	80(%rsp), %xmm1
	movdqu	96(%rsp), %xmm2
	movdqu	112(%rsp), %xmm3
	movdqu	%xmm3, 48(%rax,%rcx,8)
	movdqu	%xmm2, 32(%rax,%rcx,8)
	movdqu	%xmm1, 16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	incq	%rsi
	movq	%rsi, 624(%r13)
	leaq	(%rbx,%rbx,8), %rcx
	leaq	(%rax,%rcx,8), %rbx
	movq	48(%rbx), %rsi
	movq	64(%rbx), %rbp
	cmpq	40(%rbx), %rsi
	jne	.LBB14_57
.LBB14_82:
	leaq	32(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	48(%rbx), %rsi
	movq	64(%rbx), %rax
.LBB14_83:
	movq	32(%rbx), %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	%rbp, (%rcx,%rdx)
	movl	24(%rsp), %edi
	movl	%edi, 8(%rcx,%rdx)
	movq	8(%rsp), %rbp
	movl	%ebp, 12(%rcx,%rdx)
	incq	%rsi
	movq	%rsi, 48(%rbx)
	incq	%rax
	movq	%rax, 64(%rbx)
	imulq	$88, %r15, %rax
	movq	56(%rsp), %rcx
	cmpb	$0, 72(%rcx,%rax)
	je	.LBB14_84
	movq	40(%rsp), %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_mut@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB14_89
	movq	%rax, %rdi
	movl	24(%rsp), %esi
	movl	%ebp, %edx
	callq	*bevy_ecs::storage::sparse_set::ComponentSparseSet::remove_and_forget@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB14_93
	movq	288(%r13), %r12
	movq	304(%r13), %rsi
	movq	168(%r13), %r15
	cmpq	%r14, %r15
	jbe	.LBB14_96
.LBB14_98:
	movq	152(%r13), %rbx
	imulq	$152, %r14, %r14
	movq	88(%rbx,%r14), %rcx
	movq	32(%rsp), %rdi
	cmpq	%rdi, %rcx
	jbe	.LBB14_139
	movss	(%rax), %xmm0
	leaq	(%rbx,%r14), %r9
	addq	$88, %r9
	decq	%rcx
	movq	72(%rbx,%r14), %rax
	leaq	(%rdi,%rdi,2), %r8
	movl	8(%rax,%r8,4), %edx
	leaq	(%rcx,%rcx,2), %r10
	movl	8(%rax,%r10,4), %r11d
	movq	(%rax,%r10,4), %r10
	movq	%r10, (%rax,%r8,4)
	movl	%r11d, 8(%rax,%r8,4)
	movq	%rcx, (%r9)
	cmpq	%rdi, %rcx
	je	.LBB14_106
	jbe	.LBB14_140
	leaq	(%rax,%r8,4), %rcx
	movl	4(%rcx), %r8d
	cmpq	%r8, 16(%r13)
	jbe	.LBB14_104
	movq	(%r13), %rax
	leaq	(%r8,%r8,4), %r8
	movl	(%rax,%r8,4), %r9d
	cmpl	(%rcx), %r9d
	jne	.LBB14_104
	cmpl	$-1, 4(%rax,%r8,4)
	je	.LBB14_104
	leaq	(%rax,%r8,4), %rax
	addq	$4, %rax
	movl	%edi, 4(%rax)
.LBB14_106:
	movl	52(%rsp), %eax
	cmpq	%rax, %r15
	jbe	.LBB14_107
	movl	148(%rbx,%r14), %edi
	imulq	$152, %rax, %rbp
	leaq	(%rbx,%rbp), %r8
	addq	$148, %r8
	movl	148(%rbx,%rbp), %eax
	cmpl	%eax, %edi
	jne	.LBB14_109
	movl	%edx, %r12d
	leaq	(%rbx,%rbp), %r15
	addq	$72, %r15
	movq	88(%rbx,%rbp), %r14
	movq	%r14, %rax
	cmpq	80(%rbx,%rbp), %r14
	jne	.LBB14_131
	movq	%r15, %rdi
	movq	%r14, %rsi
	movss	%xmm0, 40(%rsp)
	movq	%r8, 32(%rsp)
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	32(%rsp), %r8
	movss	40(%rsp), %xmm0
	movq	16(%r15), %rax
.LBB14_131:
	movq	(%r15), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	24(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movq	8(%rsp), %rsi
	movl	%esi, 4(%rcx,%rdx,4)
	movl	%r12d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 16(%r15)
	movl	%r12d, %r15d
	movl	144(%rbx,%rbp), %ecx
	movl	(%r8), %edx
	jmp	.LBB14_136
.LBB14_109:
	cmpl	%eax, %edi
	movss	%xmm0, 40(%rsp)
	movq	%r15, 56(%rsp)
	movq	%r8, 32(%rsp)
	jbe	.LBB14_110
	cmpq	%rdi, %rsi
	jb	.LBB14_114
	je	.LBB14_142
	leaq	(%rdi,%rdi,8), %rcx
	leaq	(%r12,%rcx,8), %rsi
	leaq	(%rax,%rax,8), %rax
	leaq	(%r12,%rax,8), %rcx
	jmp	.LBB14_122
.LBB14_84:
	movq	304(%r13), %rsi
	movq	184(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB14_138
	movq	288(%r13), %r12
	leaq	(%rdi,%rdi,8), %rax
	cmpq	%r15, 40(%r12,%rax,8)
	jbe	.LBB14_88
	movq	32(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB14_88
	shlq	$4, %r15
	cmpq	$0, (%rcx,%r15)
	je	.LBB14_88
	leaq	(%r12,%rax,8), %rax
	movq	(%rax), %rdi
	movq	8(%rcx,%r15), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$5, %rcx
	movq	8(%rdi,%rcx), %rax
	imulq	152(%rsp), %rax
	addq	16(%rdi,%rcx), %rax
	movq	168(%r13), %r15
	cmpq	%r14, %r15
	ja	.LBB14_98
.LBB14_96:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.2(%rip), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_110:
	cmpq	%rax, %rsi
	jb	.LBB14_111
	cmpl	%edi, %eax
	jbe	.LBB14_141
	cmpq	%rax, %rsi
	je	.LBB14_118
	leaq	(%rax,%rax,8), %rax
	leaq	(%r12,%rax,8), %rcx
	leaq	(%rdi,%rdi,8), %rax
	leaq	(%r12,%rax,8), %rsi
.LBB14_122:
	leaq	64(%rsp), %rdi
	movl	%edx, 52(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_and_forget_missing_unchecked@GOTPCREL(%rip)
	movl	76(%rsp), %r15d
	leaq	(%rbx,%rbp), %r12
	addq	$72, %r12
	movq	88(%rbx,%rbp), %r14
	movq	%r14, %rax
	cmpq	80(%rbx,%rbp), %r14
	jne	.LBB14_124
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	16(%r12), %rax
.LBB14_124:
	movq	(%r12), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	24(%rsp), %esi
	movl	%esi, (%rcx,%rdx,4)
	movq	8(%rsp), %rsi
	movl	%esi, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 16(%r12)
	movl	144(%rbx,%rbp), %ecx
	movq	32(%rsp), %rax
	movl	(%rax), %edx
	cmpl	$0, 64(%rsp)
	movss	40(%rsp), %xmm0
	je	.LBB14_135
	movl	72(%rsp), %esi
	cmpq	%rsi, 16(%r13)
	jbe	.LBB14_128
	movq	(%r13), %rax
	leaq	(%rsi,%rsi,4), %rsi
	movl	(%rax,%rsi,4), %edi
	cmpl	68(%rsp), %edi
	jne	.LBB14_128
	movl	4(%rax,%rsi,4), %edi
	movl	$4294967295, %r8d
	cmpq	%r8, %rdi
	je	.LBB14_128
	leaq	(%rax,%rsi,4), %rsi
	addq	$4, %rsi
	movl	4(%rsi), %eax
	movq	152(%rsp), %r8
	movl	%r8d, 12(%rsi)
	movq	56(%rsp), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB14_143
	imulq	$152, %rdi, %rdi
	movq	88(%rbx,%rdi), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB14_144
	leaq	(%rbx,%rdi), %rsi
	addq	$72, %rsi
	movq	(%rsi), %rsi
	leaq	(%rax,%rax,2), %rax
	movl	52(%rsp), %edi
	movl	%edi, 8(%rsi,%rax,4)
.LBB14_135:
	movq	8(%rsp), %rsi
.LBB14_136:
	movq	16(%rsp), %rax
	movl	%ecx, 16(%rax)
	movl	%r14d, 20(%rax)
	movl	%edx, 24(%rax)
	movl	%r15d, 28(%rax)
	movq	(%r13), %rax
	leaq	(%rsi,%rsi,4), %rsi
	movl	%ecx, 4(%rax,%rsi,4)
	movl	%r14d, 8(%rax,%rsi,4)
	movl	%edx, 12(%rax,%rsi,4)
	movl	%r15d, 16(%rax,%rsi,4)
	movl	$1, %ebx
.LBB14_137:
	movl	%ebx, 64(%rsp)
	movss	%xmm0, 68(%rsp)
	leaq	64(%rsp), %rax
	#APP
	#NO_APP
	movl	64(%rsp), %eax
	movss	68(%rsp), %xmm0
	addq	$360, %rsp
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
.LBB14_5:
	.cfi_def_cfa_offset 416
	movq	%r15, 32(%rsp)
	cmpq	$0, 528(%r13)
	je	.LBB14_6
.LBB14_7:
	movq	%rbx, %r15
	movq	$8, 160(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 168(%rsp)
	leaq	88(%r13), %rdi
	movq	88(%r13), %rax
	movq	96(%r13), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %r8
.LBB14_8:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	.p2align	4, 0x90
.LBB14_9:
	testw	%r9w, %r9w
	je	.LBB14_10
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%r14, %r9
	movq	(%rdx,%r10,8), %rbx
	xorq	%rbp, %rbx
	orq	%r9, %rbx
	movl	%r11d, %r9d
	jne	.LBB14_9
	jmp	.LBB14_34
.LBB14_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB14_19
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB14_8
.LBB14_34:
	movq	-8(%rax,%r10,8), %rax
	movq	%r15, %rbx
	movq	%rax, %r15
.LBB14_35:
.Ltmp10:
	leaq	160(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp11:
	movq	160(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%r15, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 176(%rsp)
	movq	504(%r13), %r15
	movq	%rcx, 208(%rsp)
	movups	160(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rsi
	leaq	64(%rsp), %rdi
	leaq	192(%rsp), %r8
	movl	$14, %edx
	movq	24(%rsp), %rcx
	movq	%r15, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, %rcx
	cmpq	496(%r13), %r15
	jne	.LBB14_39
.Ltmp13:
	movq	32(%rsp), %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp14:
	movq	504(%r13), %rcx
.LBB14_39:
	movq	488(%r13), %rax
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movq	8(%rsp), %rsi
	movq	%rsi, (%rax,%rdx)
	movq	16(%rsp), %rsi
	movq	%rsi, 8(%rax,%rdx)
	movups	80(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rdx)
	incq	%rcx
	movq	%rcx, 504(%r13)
	movq	512(%r13), %rcx
	movq	520(%r13), %rdx
	andq	%rdx, %r12
	movdqu	(%rcx,%r12), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB14_42
	movl	$16, %edi
	.p2align	4, 0x90
.LBB14_41:
	addq	%rdi, %r12
	andq	%rdx, %r12
	movdqu	(%rcx,%r12), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB14_41
.LBB14_42:
	rep		bsfl	%esi, %esi
	addq	%r12, %rsi
	andq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %edi
	testb	%dil, %dil
	js	.LBB14_44
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rcx,%rsi), %edi
.LBB14_44:
	leaq	-16(%rsi), %r8
	andq	%rdx, %r8
	movb	$64, (%rcx,%rsi)
	movb	$64, 16(%r8,%rcx)
	andb	$1, %dil
	movzbl	%dil, %edx
	subq	%rdx, 528(%r13)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	movq	%rbp, -24(%rcx,%rdx,8)
	movq	%r14, -16(%rcx,%rdx,8)
	movq	%r15, -8(%rcx,%rdx,8)
	incq	536(%r13)
	jmp	.LBB14_14
.LBB14_71:
	movq	%rbp, %rcx
	jmp	.LBB14_72
.LBB14_6:
	leaq	512(%r13), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI14_0(%rip), %xmm3
	jmp	.LBB14_7
.LBB14_19:
	movq	%r15, %rbx
	cmpq	$0, 104(%r13)
	jne	.LBB14_21
.Ltmp0:
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp1:
.LBB14_21:
	movq	$0, 232(%rsp)
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.15(%rip), %rax
	movq	%rax, 240(%rsp)
	movq	$14, 248(%rsp)
	movw	$256, 264(%rsp)
	movq	$1, 192(%rsp)
	movq	%rbp, 200(%rsp)
	movq	%r14, 208(%rsp)
	movq	$4, 216(%rsp)
	movq	$4, 224(%rsp)
	movq	$0, 256(%rsp)
	movq	80(%r13), %r15
.Ltmp2:
	leaq	64(%rsp), %rdi
	leaq	192(%rsp), %rdx
	movq	%r15, %rsi
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp3:
	cmpb	$0, 136(%rsp)
	je	.LBB14_24
.Ltmp4:
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp5:
.LBB14_24:
	movups	64(%rsp), %xmm0
	movdqu	80(%rsp), %xmm1
	movaps	%xmm0, 272(%rsp)
	movdqa	%xmm1, 288(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 304(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 16(%rsp)
	movups	136(%rsp), %xmm0
	movaps	%xmm0, 336(%rsp)
	movdqu	120(%rsp), %xmm0
	movdqa	%xmm0, 320(%rsp)
	movq	%r15, %rax
	cmpq	72(%r13), %r15
	jne	.LBB14_27
.Ltmp7:
	movq	24(%rsp), %rdi
	movq	%r15, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	80(%r13), %rax
.LBB14_27:
	movq	64(%r13), %rcx
	imulq	$88, %rax, %rdx
	movq	304(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	272(%rsp), %xmm0
	movaps	288(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	8(%rsp), %rsi
	movq	%rsi, 40(%rcx,%rdx)
	movq	16(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	320(%rsp), %xmm0
	movdqa	336(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r13)
	movq	88(%r13), %rax
	movq	96(%r13), %rcx
	movq	%rcx, %rdx
	andq	%r12, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB14_30
	movl	$16, %edi
.LBB14_29:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB14_29
.LBB14_30:
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB14_32
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB14_32:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$64, (%rax,%rsi)
	movb	$64, 16(%rdi,%rax)
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 104(%r13)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rcx
	movq	%rbp, -24(%rax,%rcx,8)
	movq	%r14, -16(%rax,%rcx,8)
	movq	%r15, -8(%rax,%rcx,8)
	incq	112(%r13)
	jmp	.LBB14_35
.LBB14_107:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.5(%rip), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_61:
.Ltmp18:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.17(%rip), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp19:
	ud2
.LBB14_140:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.24(%rip), %rdx
	movq	%rcx, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_138:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.11(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_143:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.7(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_144:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.9(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_142:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.23(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_141:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.20(%rip), %rdx
	movq	%rax, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_118:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.21(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_104:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.4(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_17:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.10(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_139:
	movq	%rcx, %rsi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB14_128:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.6(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_88:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.12(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_89:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.13(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_93:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.3(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.14(%rip), %rdx
	movl	$43, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_114:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.22(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_111:
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.0(%rip), %rdi
	leaq	.Lanon.ddd9cd1641521d33379e20f985469fcb.19(%rip), %rdx
	movl	$35, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
	ud2
.LBB14_45:
.Ltmp9:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	jmp	.LBB14_46
.LBB14_47:
.Ltmp6:
	movq	%rax, %rbx
	movq	104(%rsp), %rdi
	movq	112(%rsp), %rsi
.LBB14_46:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	movl	$8, %edi
	xorl	%esi, %esi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_48:
.Ltmp15:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_50:
.Ltmp12:
	movq	%rax, %rbx
	movq	160(%rsp), %rdi
	movq	168(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_58:
.Ltmp25:
	jmp	.LBB14_81
.LBB14_80:
.Ltmp22:
.LBB14_81:
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::event::Events<bevy_ecs::removal_detection::RemovedComponentEntity>>
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end14:
	.size	entity_remove, .Lfunc_end14-entity_remove
	.cfi_endproc
	.section	.gcc_except_table.entity_remove,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp16-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp16
	.uleb128 .Ltmp22-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp23-.Lfunc_begin0
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin0
	.uleb128 .Ltmp10-.Ltmp24
	.byte	0
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin0
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp12-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin0
	.uleb128 .Ltmp13-.Ltmp11
	.byte	0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin0
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin0
	.uleb128 .Ltmp0-.Ltmp14
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp0
	.uleb128 .Ltmp12-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp4
	.uleb128 .Ltmp6-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp7-.Lfunc_begin0
	.uleb128 .Ltmp8-.Ltmp7
	.uleb128 .Ltmp9-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp8
	.byte	0
	.byte	0
	.uleb128 .Ltmp18-.Lfunc_begin0
	.uleb128 .Ltmp19-.Ltmp18
	.uleb128 .Ltmp22-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin0
	.uleb128 .Lfunc_end14-.Ltmp19
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.0,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.0,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.0:
	.ascii	"assertion failed: mid <= self.len()"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.0, 35

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.1,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.1,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.1:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/world/entity_ref.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.1, 102

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.2,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.2:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\376\002\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.2, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.3,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.3,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.3:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.3, 43

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.4,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.4:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\002\003\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.4, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.5,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.5:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\020\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.5, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.6,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.6:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000%\003\000\000E\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.6, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.7,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.7:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\0000\003\000\000\033\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.7, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.8,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.8,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.8:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.8, 95

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.9,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.9,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.9:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.8
	.asciz	"_\000\000\000\000\000\000\000\260\001\000\000\026\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.9, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.10,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.10:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\312\002\000\000=\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.10, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.11,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.11:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\277\004\000\000-\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.11, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.12,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.12,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.12:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\300\004\000\000A\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.12, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.13,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.13,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.13:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\314\004\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.13, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.14,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.14,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.14:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.1
	.asciz	"f\000\000\000\000\000\000\000\316\004\000\000\016\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.14, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.15,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.15,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.15:
	.ascii	"entity_take::A"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.15, 14

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.16,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.16,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.16:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.16, 104

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.17,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.17,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.17:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.16
	.asciz	"h\000\000\000\000\000\000\000L\000\000\000\024\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.17, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.18,@object
	.section	.rodata..Lanon.ddd9cd1641521d33379e20f985469fcb.18,"a",@progbits
.Lanon.ddd9cd1641521d33379e20f985469fcb.18:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/0607116/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.18, 99

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.19,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.19,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.19:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000M\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.19, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.20,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.20,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.20:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.20, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.21,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.21,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.21:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000N\003\000\000,\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.21, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.22,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.22,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.22:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000J\003\000\0002\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.22, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.23,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.23,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.23:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.18
	.asciz	"c\000\000\000\000\000\000\000K\003\000\000\023\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.23, 24

	.type	.Lanon.ddd9cd1641521d33379e20f985469fcb.24,@object
	.section	.data.rel.ro..Lanon.ddd9cd1641521d33379e20f985469fcb.24,"aw",@progbits
	.p2align	3, 0x0
.Lanon.ddd9cd1641521d33379e20f985469fcb.24:
	.quad	.Lanon.ddd9cd1641521d33379e20f985469fcb.8
	.asciz	"_\000\000\000\000\000\000\000\333\001\000\000#\000\000"
	.size	.Lanon.ddd9cd1641521d33379e20f985469fcb.24, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.73.0 (cc66ad468 2023-10-03)"
	.section	".note.GNU-stack","",@progbits

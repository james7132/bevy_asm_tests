	.text
	.file	"entity_insert.6bfbfb4d-cgu.0"
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
	je	.LBB0_5
	movq	(%r13), %r15
	cmpq	$-1, %r15
	je	.LBB0_5
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	negq	%rbx
	negq	%r15
	movq	$-16, %rbp
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:
	subq	%r12, %rbx
	leaq	(%r15,%rbp), %rax
	incq	%rax
	incq	%rbp
	cmpq	$-15, %rax
	je	.LBB0_5
.LBB0_3:
	movq	24(%r13), %rax
	cmpb	$-128, 16(%rax,%rbp)
	jne	.LBB0_4
	movq	(%r13), %rcx
	andq	%rbp, %rcx
	movb	$-1, 16(%rax,%rbp)
	movb	$-1, 16(%rcx,%rax)
	movq	24(%r13), %rdi
	addq	%rbx, %rdi
	callq	*%r14
	decq	16(%r13)
	jmp	.LBB0_4
.LBB0_5:
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
.Lfunc_end0:
	.size	core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>, .Lfunc_end0-core::ptr::drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner<alloc::alloc::Global>,hashbrown::raw::RawTableInner<alloc::alloc::Global>::rehash_in_place::{{closure}}>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>,@function
core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB1_1
	movq	16(%rdi), %rdi
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
	cmpq	$0, (%rdi)
	je	.LBB2_2
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
	movq	16(%rdi), %rdi
	movq	%rsi, %rdx
	notq	%rdx
	shrq	$63, %rdx
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
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_1
	movq	8(%rdi), %rdi
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB4_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB4_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB4_11
.LBB4_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB4_6
.LBB4_7:
	testq	%r14, %r14
	je	.LBB4_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB4_4
.LBB4_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB4_12
.LBB4_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB4_6:
	movl	$1, %eax
.LBB4_12:
	movq	%rax, (%rbx)
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
	je	.LBB5_3
	movq	8(%r14), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB5_4
.LBB5_3:
	movq	$0, 24(%rsp)
.LBB5_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB5_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
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
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB5_9
.LBB5_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB5_9:
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
	je	.LBB6_3
	movq	8(%r14), %rcx
	shlq	$3, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
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
	movabsq	$768614336404564650, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %rbx
	setbe	%dl
	leaq	(,%rbx,4), %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$2, %rdx
	testq	%rax, %rax
	je	.LBB7_3
	movq	8(%r14), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
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
	jne	.LBB9_2
.LBB9_1:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB9_28
.LBB9_2:
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
	jbe	.LBB9_15
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB9_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB9_7
.LBB9_15:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB9_28:
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
.LBB9_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB9_5
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB9_28
	jmp	.LBB9_7
.LBB9_5:
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
.LBB9_7:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB9_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB9_1
	je	.LBB9_10
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, 16(%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	16(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB9_11
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB9_28
.LBB9_10:
	movl	$16, %eax
.LBB9_11:
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
	je	.LBB9_12
	movq	%rbx, %r11
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB9_17
	.p2align	4, 0x90
.LBB9_23:
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
.LBB9_24:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB9_25
.LBB9_17:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB9_24
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
	jne	.LBB9_21
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB9_20:
	addq	%rbx, %rsi
	andq	%r13, %rsi
	movdqu	(%rbp,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB9_20
.LBB9_21:
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	addq	%rsi, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB9_23
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB9_23
.LBB9_25:
	movq	%r13, (%r15)
	movq	%r11, 8(%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB9_26
	jmp	.LBB9_28
.LBB9_12:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB9_26:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB9_28
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB9_28
.Lfunc_end9:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end9-hashbrown::raw::RawTable<T,A>::reserve_rehash
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
	jne	.LBB10_2
.LBB10_1:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB10_28
.LBB10_2:
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
	jbe	.LBB10_15
	incq	%rax
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	cmpq	$8, %rax
	jae	.LBB10_4
	xorl	%ecx, %ecx
	cmpq	$4, %rax
	setae	%cl
	leaq	4(,%rcx,4), %r8
	jmp	.LBB10_7
.LBB10_15:
	movabsq	$-9223372036854775807, %r12
	leaq	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	hashbrown::raw::RawTableInner<A>::rehash_in_place
.LBB10_28:
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
.LBB10_4:
	.cfi_def_cfa_offset 96
	movl	$8, %ecx
	mulq	%rcx
	jno	.LBB10_5
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r8
	movq	%rdx, %r12
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdx
	jne	.LBB10_28
	jmp	.LBB10_7
.LBB10_5:
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
.LBB10_7:
	movl	$16, %ecx
	movq	%r8, %rax
	mulq	%rcx
	jo	.LBB10_1
	movq	%rax, %rbp
	leaq	16(%r8), %rdx
	movq	%rax, %r12
	addq	%rdx, %r12
	jb	.LBB10_1
	je	.LBB10_10
	movl	$16, %esi
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	movq	%rdx, 16(%rsp)
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	16(%rsp), %rdx
	movq	8(%rsp), %r8
	testq	%rax, %rax
	jne	.LBB10_11
	movl	$16, %edx
	movl	$1, %edi
	movq	%r12, %rsi
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	movq	%rdx, %r12
	jmp	.LBB10_28
.LBB10_10:
	movl	$16, %eax
.LBB10_11:
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
	je	.LBB10_12
	movq	%rbx, %r11
	movq	24(%r15), %rdi
	leaq	-16(%rdi), %r9
	xorl	%ecx, %ecx
	movabsq	$5871781006564002453, %r8
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_23:
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
.LBB10_24:
	leaq	1(%rcx), %rdx
	cmpq	%r14, %rcx
	movq	%rdx, %rcx
	je	.LBB10_25
.LBB10_17:
	cmpb	$0, (%rdi,%rcx)
	js	.LBB10_24
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
	jne	.LBB10_21
	movl	$16, %ebx
	.p2align	4, 0x90
.LBB10_20:
	addq	%rbx, %rsi
	andq	%r13, %rsi
	movdqu	(%rbp,%rsi), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rbx
	testl	%edx, %edx
	je	.LBB10_20
.LBB10_21:
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	addq	%rsi, %rbx
	andq	%r13, %rbx
	cmpb	$0, (%rbp,%rbx)
	js	.LBB10_23
	movdqa	(%rbp), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %ebx
	jmp	.LBB10_23
.LBB10_25:
	movq	%r13, (%r15)
	movq	%r11, 8(%r15)
	movq	8(%rsp), %rcx
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
	testq	%r14, %r14
	jne	.LBB10_26
	jmp	.LBB10_28
.LBB10_12:
	movq	24(%r15), %rdi
	movq	%r13, (%r15)
	movq	%rbx, 8(%r15)
	movq	%rcx, 16(%r15)
	movq	%rbp, 24(%r15)
.LBB10_26:
	movl	$16, %ecx
	mulq	%rcx
	addq	%rax, %r14
	addq	$17, %r14
	je	.LBB10_28
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB10_28
.Lfunc_end10:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end10-hashbrown::raw::RawTable<T,A>::reserve_rehash
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
.Lfunc_end11:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}, .Lfunc_end11-hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
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
.Lfunc_end12:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}, .Lfunc_end12-hashbrown::raw::RawTable<T,A>::reserve_rehash::{{closure}}
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI13_0:
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
	movdqa	.LCPI13_0(%rip), %xmm0
	xorl	%edi, %edi
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_6:
	cmpq	%rdx, %rax
	movq	%rax, %rcx
	adcq	$0, %rcx
	cmpq	%rdx, %rax
	jae	.LBB13_7
.LBB13_5:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rsi,%rax), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rsi,%rax)
	movb	$1, %dil
	movq	%rcx, %rax
.LBB13_1:
	testb	$1, %dil
	je	.LBB13_6
	addq	$15, %rax
	jb	.LBB13_7
	cmpq	%rdx, %rax
	jae	.LBB13_7
	leaq	1(%rax), %rcx
	jmp	.LBB13_5
.LBB13_7:
	cmpq	$16, %rdx
	jae	.LBB13_8
	leaq	16(%rsi), %rdi
	callq	*memmove@GOTPCREL(%rip)
	jmp	.LBB13_10
.LBB13_8:
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%rsi,%rdx)
.LBB13_10:
	movq	$0, 16(%rsp)
	movq	$16, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	(%r12), %rax
	movq	%rax, 8(%rsp)
	cmpq	$-1, %rax
	je	.LBB13_11
	xorl	%r13d, %r13d
	jmp	.LBB13_15
	.p2align	4, 0x90
.LBB13_24:
	shrq	$57, %rax
	leaq	-16(%r13), %rsi
	andq	%rsi, %rdx
	movb	%al, (%rcx,%r13)
	movb	%al, 16(%rdx,%rcx)
.LBB13_28:
	leaq	1(%r13), %rax
	cmpq	8(%rsp), %r13
	movq	%rax, %r13
	je	.LBB13_12
.LBB13_15:
	movq	24(%r12), %rbp
	cmpb	$-128, (%rbp,%r13)
	jne	.LBB13_28
	movq	%r13, %rax
	notq	%rax
	shlq	$4, %rax
	addq	%rax, %rbp
	.p2align	4, 0x90
.LBB13_17:
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
	jne	.LBB13_21
	movl	$16, %ebx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB13_20:
	addq	%rbx, %rsi
	andq	%rdx, %rsi
	movdqu	(%rcx,%rsi), %xmm0
	pmovmskb	%xmm0, %edi
	addq	$16, %rbx
	testl	%edi, %edi
	je	.LBB13_20
.LBB13_21:
	bsfw	%di, %di
	movzwl	%di, %ebx
	addq	%rsi, %rbx
	andq	%rdx, %rbx
	cmpb	$0, (%rcx,%rbx)
	js	.LBB13_23
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	bsfw	%si, %si
	movzwl	%si, %ebx
.LBB13_23:
	movq	%r13, %rsi
	subq	%r8, %rsi
	movq	%rbx, %rdi
	subq	%r8, %rdi
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	cmpq	$15, %rdi
	jbe	.LBB13_24
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
	je	.LBB13_27
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
	jmp	.LBB13_17
	.p2align	4, 0x90
.LBB13_27:
	movq	24(%r12), %rax
	leaq	-16(%r13), %rcx
	andq	(%r12), %rcx
	movb	$-1, (%rax,%r13)
	movb	$-1, 16(%rcx,%rax)
	movdqu	(%rbp), %xmm0
	movdqu	%xmm0, (%rsi)
	jmp	.LBB13_28
.LBB13_12:
	movq	(%r12), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	andq	$-8, %rax
	subq	%rdx, %rax
	jmp	.LBB13_13
.LBB13_11:
	movq	$-1, %rcx
	xorl	%eax, %eax
.LBB13_13:
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
.LBB13_29:
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
.LBB13_31:
.Ltmp5:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end13:
	.size	hashbrown::raw::RawTableInner<A>::rehash_in_place, .Lfunc_end13-hashbrown::raw::RawTableInner<A>::rehash_in_place
	.cfi_endproc
	.section	".gcc_except_table.hashbrown::raw::RawTableInner<A>::rehash_in_place","a",@progbits
	.p2align	2
GCC_except_table13:
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
	.uleb128 .Lfunc_end13-.Ltmp4
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI14_0:
	.zero	16,118
	.section	.text.entity_insert,"ax",@progbits
	.globl	entity_insert
	.p2align	4, 0x90
	.type	entity_insert,@function
entity_insert:
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
	movd	%xmm0, 12(%rsp)
	movabsq	$-1331250795769834374, %r14
	movabsq	$-2894916137146761710, %r13
	movq	%rdi, 24(%rsp)
	movq	24(%rdi), %r12
	movl	888(%r12), %r15d
	leaq	472(%r12), %rax
	movq	%rax, (%rsp)
	leaq	160(%r12), %rax
	movq	%rax, 16(%rsp)
	leaq	720(%r12), %r9
	movq	688(%r12), %rax
	movq	712(%r12), %rcx
	xorl	%r8d, %r8d
	movdqa	.LCPI14_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r14, %rsi
.LBB14_1:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebp
	.p2align	4, 0x90
.LBB14_2:
	testw	%bp, %bp
	je	.LBB14_3
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
	cmpq	%r13, -16(%rdi)
	jne	.LBB14_2
	jmp	.LBB14_13
	.p2align	4, 0x90
.LBB14_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB14_5
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB14_1
.LBB14_13:
	addq	$-8, %rdi
	movq	24(%rsp), %rbp
.LBB14_14:
	movq	(%rdi), %rsi
	shlq	$5, %rsi
	addq	728(%r12), %rsi
	leaq	64(%r12), %rcx
	movl	(%rbp), %r13d
	.cfi_escape 0x2e, 0x10
	leaq	32(%rsp), %rdi
	movq	%r12, %rdx
	movq	(%rsp), %r8
	movq	16(%rsp), %r9
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	4(%rbp), %ebx
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.LBB14_81
	movl	16(%rbp), %r13d
	movl	20(%rbp), %r12d
	cmpl	$1, %eax
	jne	.LBB14_58
	movq	40(%rsp), %r14
	movq	136(%r14), %rsi
	cmpq	%rbx, %rsi
	jbe	.LBB14_17
	decq	%rsi
	movq	128(%r14), %rax
	leaq	(%rbx,%rbx,2), %rcx
	movl	8(%rax,%rcx,4), %r15d
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%rax,%rdx,4), %edi
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movq	%rsi, 136(%r14)
	cmpq	%rbx, %rsi
	je	.LBB14_76
	jbe	.LBB14_56
	leaq	(%rax,%rcx,4), %rax
	movl	4(%rax), %eax
	movq	48(%rsp), %rcx
	movq	16(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	%ebx, 8(%rcx,%rax,4)
.LBB14_76:
	movq	88(%rsp), %rbp
	movq	136(%rbp), %rbx
	movq	%rbx, %rax
	cmpq	120(%rbp), %rbx
	jne	.LBB14_78
	leaq	120(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	136(%rbp), %rax
.LBB14_78:
	movq	128(%rbp), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r13d, (%rcx,%rdx,4)
	movl	%r12d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 136(%rbp)
	movl	144(%rbp), %r13d
	movl	148(%rbp), %edx
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	leaq	(%r12,%r12,4), %rcx
	movl	%r13d, 4(%rax,%rcx,4)
	movl	%ebx, 8(%rax,%rcx,4)
	movl	%edx, (%rsp)
	movl	%edx, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	(%rax), %rdx
	movq	56(%r14), %rsi
	shlq	$5, %rdx
	movq	8(%rsi,%rdx), %rdx
	movl	104(%rsp), %r14d
	movss	12(%rsp), %xmm0
	movss	%xmm0, 152(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rcx), %r12
	movq	32(%rcx), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%r12,%rbp), %rdi
	cmpb	$0, (%rdx)
	je	.LBB14_79
	.cfi_escape 0x2e, 0x00
	jmp	.LBB14_83
.LBB14_81:
	movl	8(%rbp), %eax
	movl	%eax, (%rsp)
	movl	12(%rbp), %r15d
	movq	40(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	56(%rax), %rax
	shlq	$5, %rdx
	movq	8(%rax,%rdx), %rax
	movq	64(%rsp), %rdx
	movl	104(%rsp), %r14d
	movss	12(%rsp), %xmm0
	movss	%xmm0, 152(%rsp)
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rdx), %r12
	movq	32(%rdx), %rdx
	shlq	$4, %rcx
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rbp
	shlq	$5, %rbp
	leaq	(%r12,%rbp), %rdi
	cmpb	$0, (%rax)
	je	.LBB14_79
	.cfi_escape 0x2e, 0x00
.LBB14_83:
	leaq	152(%rsp), %rdx
	jmp	.LBB14_84
.LBB14_58:
	movq	40(%rsp), %r14
	movq	136(%r14), %rsi
	cmpq	%rbx, %rsi
	jbe	.LBB14_59
	decq	%rsi
	movq	128(%r14), %rax
	leaq	(%rbx,%rbx,2), %rcx
	movl	8(%rax,%rcx,4), %edx
	leaq	(%rsi,%rsi,2), %rbp
	movl	8(%rax,%rbp,4), %edi
	movq	(%rax,%rbp,4), %rbp
	movq	%rbp, (%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movq	%rsi, 136(%r14)
	cmpq	%rbx, %rsi
	je	.LBB14_64
	jbe	.LBB14_62
	leaq	(%rax,%rcx,4), %rax
	movl	4(%rax), %eax
	movq	48(%rsp), %rcx
	movq	16(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	%ebx, 8(%rcx,%rax,4)
.LBB14_64:
	movq	64(%rsp), %rsi
	movq	96(%rsp), %rcx
	.cfi_escape 0x2e, 0x00
	leaq	152(%rsp), %rdi
	movl	%edx, (%rsp)
	movq	%rcx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	88(%rsp), %rbp
	movl	152(%rsp), %r15d
	movq	136(%rbp), %rbx
	movq	%rbx, %rax
	cmpq	120(%rbp), %rbx
	jne	.LBB14_66
	leaq	120(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	136(%rbp), %rax
.LBB14_66:
	movq	128(%rbp), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r13d, (%rcx,%rdx,4)
	movl	%r12d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 136(%rbp)
	movl	144(%rbp), %r13d
	movl	148(%rbp), %r8d
	movq	48(%rsp), %rax
	movq	16(%rax), %rcx
	leaq	(%r12,%r12,4), %rdx
	movl	%r13d, 4(%rcx,%rdx,4)
	movl	%ebx, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpl	$1, 156(%rsp)
	jne	.LBB14_71
	movl	164(%rsp), %ecx
	movq	16(%rax), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rdx,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rdx,%rcx,4), %esi
	movl	8(%rdx,%rcx,4), %edi
	movl	12(%rdx,%rcx,4), %edx
	movq	%r14, %rcx
	cmpl	%esi, 144(%r14)
	je	.LBB14_69
	imulq	$152, %rsi, %rcx
	addq	32(%rsp), %rcx
	cmpl	%esi, 144(%rbp)
	cmoveq	%rbp, %rcx
.LBB14_69:
	movl	%edi, 4(%rax)
	movl	%edx, 8(%rax)
	movl	(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	136(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB14_86
	movq	128(%rcx), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	%edx, 8(%rax,%rcx,4)
.LBB14_71:
	movl	%r8d, (%rsp)
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	56(%r14), %rdx
	shlq	$5, %rcx
	movq	8(%rdx,%rcx), %rcx
	movl	104(%rsp), %r14d
	movss	12(%rsp), %xmm0
	movss	%xmm0, 120(%rsp)
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	16(%rsp), %rdx
	movq	(%rdx), %r12
	movq	32(%rdx), %rdx
	shlq	$4, %rax
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	leaq	(%r12,%rbp), %rdi
	cmpb	$0, (%rcx)
	je	.LBB14_72
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdx
.LBB14_84:
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB14_85
.LBB14_79:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	152(%rsp), %rsi
	jmp	.LBB14_73
.LBB14_72:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	imulq	%r15, %rax
	addq	40(%rdi), %rax
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rsi
.LBB14_73:
	movq	%rax, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	movq	56(%r12,%rbp), %rax
	movl	%r14d, (%rax,%r15,4)
.LBB14_85:
	movq	80(%r12,%rbp), %rax
	movl	%r14d, (%rax,%r15,4)
	movl	(%rsp), %ecx
	movq	24(%rsp), %rax
	movl	%r13d, (%rax)
	movl	%ebx, 4(%rax)
	movl	%ecx, 8(%rax)
	movl	%r15d, 12(%rax)
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
.LBB14_5:
	.cfi_def_cfa_offset 304
	cmpq	$0, 696(%r12)
	je	.LBB14_6
.LBB14_7:
	movq	$0, 120(%rsp)
	movq	$8, 128(%rsp)
	movq	$0, 136(%rsp)
	leaq	536(%r12), %r10
	movq	472(%r12), %rax
	movq	496(%r12), %rcx
	xorl	%r8d, %r8d
	pcmpeqd	%xmm0, %xmm0
	movq	%r14, %rsi
	movq	%r9, 240(%rsp)
.LBB14_8:
	andq	%rax, %rsi
	movdqu	(%rcx,%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %ebp
	.p2align	4, 0x90
.LBB14_9:
	testw	%bp, %bp
	je	.LBB14_10
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
	cmpq	%r13, -16(%rdi)
	jne	.LBB14_9
	jmp	.LBB14_33
.LBB14_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB14_19
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB14_8
.LBB14_33:
	addq	$-8, %rdi
.LBB14_34:
	movq	(%rdi), %rbp
.Ltmp16:
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	movq	%rbp, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 136(%rsp)
	movq	736(%r12), %r9
	movq	%rcx, 48(%rsp)
	movups	120(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rsi
	leaq	152(%rsp), %rdi
	leaq	32(%rsp), %r8
	movl	$16, %edx
	movq	(%rsp), %rcx
	movq	%r9, %rbx
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movdqu	152(%rsp), %xmm0
	movdqu	168(%rsp), %xmm1
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	736(%r12), %rsi
	cmpq	720(%r12), %rsi
	jne	.LBB14_36
.Ltmp22:
	.cfi_escape 0x2e, 0x00
	movq	240(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp23:
	movq	24(%rsp), %rbp
	movq	736(%r12), %rsi
	jmp	.LBB14_43
.LBB14_36:
	movq	24(%rsp), %rbp
.LBB14_43:
	movq	728(%r12), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movups	152(%rsp), %xmm0
	movdqu	168(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%rsi
	movq	%rsi, 736(%r12)
	movq	688(%r12), %rcx
	movq	712(%r12), %rax
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB14_46
	movl	$16, %esi
	.p2align	4, 0x90
.LBB14_45:
	addq	%rsi, %r14
	andq	%rcx, %r14
	movdqu	(%rax,%r14), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB14_45
.LBB14_46:
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	addq	%r14, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB14_48
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB14_48:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$118, (%rax,%rdx)
	movb	$118, 16(%rdi,%rax)
	shlq	$4, %rdx
	movq	%rax, %rdi
	andb	$1, %sil
	movzbl	%sil, %ecx
	subq	%rcx, 696(%r12)
	subq	%rdx, %rdi
	negq	%rdx
	movq	%r13, -16(%rax,%rdx)
	movq	%rbx, -8(%rdi)
	addq	$-8, %rdi
	incq	704(%r12)
	jmp	.LBB14_14
.LBB14_6:
	leaq	688(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%rdi, %rsi
	movq	%r9, %rbx
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI14_0(%rip), %xmm3
	movq	%rbx, %r9
	jmp	.LBB14_7
.LBB14_19:
	movq	%r10, %rbx
	cmpq	$0, 480(%r12)
	jne	.LBB14_21
.Ltmp6:
	.cfi_escape 0x2e, 0x00
	movq	(%rsp), %rdi
	movq	%rdi, %rsi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp7:
.LBB14_21:
	movq	552(%r12), %rbp
	movq	$0, 32(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.0(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$16, 48(%rsp)
	movq	$4, 64(%rsp)
	movq	$4, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	%r13, 88(%rsp)
	movq	$0, 96(%rsp)
	movw	$256, 104(%rsp)
.Ltmp8:
	.cfi_escape 0x2e, 0x00
	leaq	152(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 144(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp9:
	cmpb	$0, 224(%rsp)
	je	.LBB14_23
.Ltmp10:
	.cfi_escape 0x2e, 0x00
	leaq	152(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp11:
.LBB14_23:
	movq	232(%rsp), %rax
	movq	%rax, 112(%rsp)
	movups	216(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqu	152(%rsp), %xmm0
	movdqu	168(%rsp), %xmm1
	movdqu	184(%rsp), %xmm2
	movdqu	200(%rsp), %xmm3
	movdqa	%xmm3, 80(%rsp)
	movdqa	%xmm2, 64(%rsp)
	movdqa	%xmm1, 48(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movq	%rbp, %rax
	cmpq	(%rbx), %rbp
	jne	.LBB14_26
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp14:
	movq	552(%r12), %rax
.LBB14_26:
	movq	544(%r12), %rcx
	imulq	$88, %rax, %rdx
	movq	112(%rsp), %rsi
	movq	%rsi, 80(%rcx,%rdx)
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 64(%rcx,%rdx)
	movaps	32(%rsp), %xmm0
	movdqa	48(%rsp), %xmm1
	movdqa	64(%rsp), %xmm2
	movdqa	80(%rsp), %xmm3
	movdqu	%xmm3, 48(%rcx,%rdx)
	movdqu	%xmm2, 32(%rcx,%rdx)
	movdqu	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	incq	%rax
	movq	%rax, 552(%r12)
	movq	472(%r12), %rcx
	movq	496(%r12), %rax
	movq	%rcx, %rdx
	andq	%r14, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB14_29
	movl	$16, %edi
.LBB14_28:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB14_28
.LBB14_29:
	bsfw	%si, %si
	movzwl	%si, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB14_31
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	bsfw	%dx, %dx
	movzwl	%dx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB14_31:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$118, (%rax,%rsi)
	movb	$118, 16(%rdi,%rax)
	shlq	$4, %rsi
	movq	%rax, %rdi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 480(%r12)
	subq	%rsi, %rdi
	negq	%rsi
	movq	%r13, -16(%rax,%rsi)
	movq	%rbp, -8(%rdi)
	addq	$-8, %rdi
	incq	488(%r12)
	jmp	.LBB14_34
.LBB14_56:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB14_57
.LBB14_62:
	.cfi_escape 0x2e, 0x00
.LBB14_57:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	movq	%rbx, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_86:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB14_17:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB14_18
.LBB14_59:
	.cfi_escape 0x2e, 0x00
.LBB14_18:
	movq	%rbx, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB14_38:
.Ltmp15:
	movq	%rax, %rbx
	jmp	.LBB14_40
.LBB14_39:
.Ltmp12:
	movq	%rax, %rbx
	leaq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
.LBB14_40:
	.cfi_escape 0x2e, 0x00
	movq	144(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	jmp	.LBB14_52
.LBB14_49:
.Ltmp24:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB14_50
.LBB14_51:
.Ltmp18:
	movq	%rax, %rbx
.LBB14_52:
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	leaq	120(%rsp), %rdi
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp20:
.LBB14_50:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB14_53:
.Ltmp21:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end14:
	.size	entity_insert, .Lfunc_end14-entity_insert
	.cfi_endproc
	.section	.gcc_except_table.entity_insert,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1
	.uleb128 .Ltmp16-.Lfunc_begin1
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
	.uleb128 .Ltmp19-.Ltmp14
	.byte	0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin1
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin1
	.uleb128 .Lfunc_end14-.Ltmp20
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.1,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/2ec38d1/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.2,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.1
	.asciz	"_\000\000\000\000\000\000\000\255\001\000\000\t\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.1
	.asciz	"_\000\000\000\000\000\000\000\330\001\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

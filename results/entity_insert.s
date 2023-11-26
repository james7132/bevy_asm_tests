	.text
	.file	"entity_insert.279d0394fe9609a3-cgu.0"
	.section	".text.core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>,@function
core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB0_1
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_1:
	retq
.Lfunc_end0:
	.size	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>, .Lfunc_end0-core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>,@function
core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.LBB1_2
	testq	%rsi, %rsi
	je	.LBB1_2
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_2:
	retq
.Lfunc_end1:
	.size	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>, .Lfunc_end1-core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>,@function
core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.LBB2_1
	shlq	$3, %rsi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB2_1:
	retq
.Lfunc_end2:
	.size	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>, .Lfunc_end2-core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
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
	je	.LBB3_6
	movq	%rsi, %r15
	cmpq	$0, 8(%rcx)
	je	.LBB3_7
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB3_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB3_11
.LBB3_4:
	movq	%r15, 8(%r14)
	jmp	.LBB3_5
.LBB3_7:
	testq	%rbx, %rbx
	je	.LBB3_8
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movzbl	(%rax), %eax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB3_4
.LBB3_11:
	movq	%rax, 8(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_12
.LBB3_6:
	movq	$0, 8(%r14)
.LBB3_5:
	movl	$1, %eax
.LBB3_12:
	movq	%rbx, 16(%r14)
	movq	%rax, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB3_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB3_11
	jmp	.LBB3_4
.Lfunc_end3:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end3-alloc::raw_vec::finish_grow
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
	je	.LBB4_10
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
	je	.LBB4_2
	movq	(%rbx), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB4_4
.LBB4_2:
	movq	$0, 16(%rsp)
.LBB4_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB4_5
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rdi
	jne	.LBB4_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_5:
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
.LBB4_8:
	.cfi_def_cfa_offset 80
	testq	%rdi, %rdi
	jne	.LBB4_9
.LBB4_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB4_9:
	movq	48(%rsp), %rsi
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end4-alloc::raw_vec::RawVec<T,A>::reserve_for_push
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
	movabsq	$104811045873349726, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	imulq	$88, %r14, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB5_2
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB5_4
.LBB5_2:
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
	shrq	$59, %rcx
	sete	%sil
	movq	%r14, %rdx
	shlq	$4, %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB6_2
	movq	(%rbx), %rcx
	shlq	$4, %rax
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
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
	jne	.LBB8_2
.LBB8_38:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB8_39:
	movq	%rax, %r13
	jmp	.LBB8_40
.LBB8_2:
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
	jbe	.LBB8_5
	incq	%r15
	cmpq	%r15, %rax
	cmovaq	%rax, %r15
	cmpq	$8, %r15
	jae	.LBB8_12
	movq	%rbp, (%rsp)
	xorl	%eax, %eax
	cmpq	$4, %r15
	setae	%al
	leaq	4(,%rax,4), %rdi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB8_16
	jmp	.LBB8_38
.LBB8_5:
	movq	(%rbp), %r13
	movq	%r12, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r12b
	setne	%al
	addq	%rcx, %rax
	je	.LBB8_8
	movdqa	.LCPI8_0(%rip), %xmm0
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB8_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB8_7
.LBB8_8:
	cmpq	$16, %r12
	movq	%rsi, 8(%rsp)
	jae	.LBB8_21
	leaq	16(%r13), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %rbx
	jne	.LBB8_22
	xorl	%r15d, %r15d
.LBB8_11:
	movabsq	$-9223372036854775807, %r13
	subq	8(%rsp), %r15
	movq	%r15, 16(%rbp)
.LBB8_40:
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
.LBB8_12:
	.cfi_def_cfa_offset 80
	movq	%r15, %rax
	shrq	$61, %rax
	jne	.LBB8_36
	movq	%rbp, (%rsp)
	shlq	$3, %r15
	movl	$1, %edi
	cmpq	$14, %r15
	jb	.LBB8_15
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
.LBB8_15:
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jo	.LBB8_38
.LBB8_16:
	movq	%rax, %rbp
	addq	$15, %rbp
	andq	$-16, %rbp
	leaq	16(%rdi), %rdx
	movq	%rbp, %r14
	addq	%rdx, %r14
	jb	.LBB8_38
	movabsq	$-9223372036854775807, %r13
	leaq	-17(%r13), %rax
	cmpq	%rax, %r14
	ja	.LBB8_38
	testq	%r14, %r14
	movq	%rsi, 8(%rsp)
	je	.LBB8_41
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
	jne	.LBB8_42
	movl	$16, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB8_39
.LBB8_21:
	movdqu	(%r13), %xmm0
	movdqu	%xmm0, (%r13,%r12)
.LBB8_22:
	movabsq	$5871781006564002453, %rax
	leaq	-24(%r13), %rcx
	xorl	%edx, %edx
	jmp	.LBB8_25
	.p2align	4, 0x90
.LBB8_23:
	shrq	$57, %r9
	leaq	-16(%rdx), %rsi
	andq	%rbx, %rsi
	movb	%r9b, (%r13,%rdx)
	movb	%r9b, 16(%rsi,%r13)
.LBB8_24:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB8_11
.LBB8_25:
	cmpb	$-128, (%r13,%rdx)
	jne	.LBB8_24
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
.LBB8_27:
	movq	(%rdi), %r9
	imulq	%rax, %r9
	movq	%r9, %r8
	andq	%rbx, %r8
	movdqu	(%r13,%r8), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%r8, %r11
	testl	%r10d, %r10d
	jne	.LBB8_30
	movl	$16, %r14d
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB8_29:
	addq	%r14, %r11
	andq	%rbx, %r11
	movdqu	(%r13,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r14
	testl	%r10d, %r10d
	je	.LBB8_29
.LBB8_30:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%rbx, %r10
	cmpb	$0, (%r13,%r10)
	js	.LBB8_32
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB8_32:
	movq	%rdx, %r11
	subq	%r8, %r11
	movq	%r10, %r14
	subq	%r8, %r14
	xorq	%r11, %r14
	andq	%rbx, %r14
	cmpq	$16, %r14
	jb	.LBB8_23
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
	je	.LBB8_35
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
	jmp	.LBB8_27
	.p2align	4, 0x90
.LBB8_35:
	leaq	-16(%rdx), %rdi
	andq	%rbx, %rdi
	movb	$-1, (%r13,%rdx)
	movb	$-1, 16(%rdi,%r13)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%r8)
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%r8)
	jmp	.LBB8_24
.LBB8_36:
	movq	%rsi, %r14
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r13
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r13
	jne	.LBB8_40
	movq	%rdx, %rdi
	movq	%rbp, (%rsp)
	movq	%r14, %rsi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB8_16
	jmp	.LBB8_38
.LBB8_41:
	movl	$16, %r15d
.LBB8_42:
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
	je	.LBB8_53
	movabsq	$5871781006564002453, %rax
	leaq	-24(%rdi), %rcx
	xorl	%edx, %edx
	jmp	.LBB8_46
	.p2align	4, 0x90
.LBB8_44:
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
.LBB8_45:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB8_52
.LBB8_46:
	cmpb	$0, (%rdi,%rdx)
	js	.LBB8_45
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
	jne	.LBB8_50
	movl	$16, %r10d
	.p2align	4, 0x90
.LBB8_49:
	addq	%r10, %r8
	andq	%r14, %r8
	movdqu	(%r15,%r8), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r10
	testl	%r9d, %r9d
	je	.LBB8_49
.LBB8_50:
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%r14, %r9
	cmpb	$0, (%r15,%r9)
	js	.LBB8_44
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %r8d
	rep		bsfl	%r8d, %r9d
	jmp	.LBB8_44
.LBB8_52:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
	testq	%rbx, %rbx
	jne	.LBB8_54
	jmp	.LBB8_40
.LBB8_53:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
.LBB8_54:
	movl	$24, %ecx
	movq	%r12, %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %rbx
	addq	$17, %rbx
	je	.LBB8_40
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB8_40
.Lfunc_end8:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end8-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_0:
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
	jne	.LBB9_2
.LBB9_38:
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
.LBB9_39:
	movq	%rax, %r13
	jmp	.LBB9_40
.LBB9_2:
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
	jbe	.LBB9_5
	incq	%r15
	cmpq	%r15, %rax
	cmovaq	%rax, %r15
	cmpq	$8, %r15
	jae	.LBB9_12
	movq	%rbp, (%rsp)
	xorl	%eax, %eax
	cmpq	$4, %r15
	setae	%al
	leaq	4(,%rax,4), %rdi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB9_16
	jmp	.LBB9_38
.LBB9_5:
	movq	(%rbp), %r13
	movq	%r12, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	testb	$15, %r12b
	setne	%al
	addq	%rcx, %rax
	je	.LBB9_8
	movdqa	.LCPI9_0(%rip), %xmm0
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB9_7:
	pxor	%xmm1, %xmm1
	pcmpgtb	(%rcx), %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, (%rcx)
	addq	$16, %rcx
	decq	%rax
	jne	.LBB9_7
.LBB9_8:
	cmpq	$16, %r12
	movq	%rsi, 8(%rsp)
	jae	.LBB9_21
	leaq	16(%r13), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*memmove@GOTPCREL(%rip)
	cmpq	$-1, %rbx
	jne	.LBB9_22
	xorl	%r15d, %r15d
.LBB9_11:
	movabsq	$-9223372036854775807, %r13
	subq	8(%rsp), %r15
	movq	%r15, 16(%rbp)
.LBB9_40:
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
.LBB9_12:
	.cfi_def_cfa_offset 80
	movq	%r15, %rax
	shrq	$61, %rax
	jne	.LBB9_36
	movq	%rbp, (%rsp)
	shlq	$3, %r15
	movl	$1, %edi
	cmpq	$14, %r15
	jb	.LBB9_15
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
.LBB9_15:
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jo	.LBB9_38
.LBB9_16:
	movq	%rax, %rbp
	addq	$15, %rbp
	andq	$-16, %rbp
	leaq	16(%rdi), %rdx
	movq	%rbp, %r14
	addq	%rdx, %r14
	jb	.LBB9_38
	movabsq	$-9223372036854775807, %r13
	leaq	-17(%r13), %rax
	cmpq	%rax, %r14
	ja	.LBB9_38
	testq	%r14, %r14
	movq	%rsi, 8(%rsp)
	je	.LBB9_41
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
	jne	.LBB9_42
	movl	$16, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	callq	*hashbrown::raw::Fallibility::alloc_err@GOTPCREL(%rip)
	jmp	.LBB9_39
.LBB9_21:
	movdqu	(%r13), %xmm0
	movdqu	%xmm0, (%r13,%r12)
.LBB9_22:
	movabsq	$5871781006564002453, %rax
	leaq	-24(%r13), %rcx
	xorl	%edx, %edx
	jmp	.LBB9_25
	.p2align	4, 0x90
.LBB9_23:
	shrq	$57, %r9
	leaq	-16(%rdx), %rsi
	andq	%rbx, %rsi
	movb	%r9b, (%r13,%rdx)
	movb	%r9b, 16(%rsi,%r13)
.LBB9_24:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB9_11
.LBB9_25:
	cmpb	$-128, (%r13,%rdx)
	jne	.LBB9_24
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
.LBB9_27:
	movq	(%rdi), %r9
	imulq	%rax, %r9
	movq	%r9, %r8
	andq	%rbx, %r8
	movdqu	(%r13,%r8), %xmm0
	pmovmskb	%xmm0, %r10d
	movq	%r8, %r11
	testl	%r10d, %r10d
	jne	.LBB9_30
	movl	$16, %r14d
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB9_29:
	addq	%r14, %r11
	andq	%rbx, %r11
	movdqu	(%r13,%r11), %xmm0
	pmovmskb	%xmm0, %r10d
	addq	$16, %r14
	testl	%r10d, %r10d
	je	.LBB9_29
.LBB9_30:
	rep		bsfl	%r10d, %r10d
	addq	%r11, %r10
	andq	%rbx, %r10
	cmpb	$0, (%r13,%r10)
	js	.LBB9_32
	movdqa	(%r13), %xmm0
	pmovmskb	%xmm0, %r10d
	rep		bsfl	%r10d, %r10d
.LBB9_32:
	movq	%rdx, %r11
	subq	%r8, %r11
	movq	%r10, %r14
	subq	%r8, %r14
	xorq	%r11, %r14
	andq	%rbx, %r14
	cmpq	$16, %r14
	jb	.LBB9_23
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
	je	.LBB9_35
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
	jmp	.LBB9_27
	.p2align	4, 0x90
.LBB9_35:
	leaq	-16(%rdx), %rdi
	andq	%rbx, %rdi
	movb	$-1, (%r13,%rdx)
	movb	$-1, 16(%rdi,%r13)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%r8)
	movdqu	(%rsi), %xmm0
	movdqu	%xmm0, (%r8)
	jmp	.LBB9_24
.LBB9_36:
	movq	%rsi, %r14
	movl	$1, %edi
	callq	*hashbrown::raw::Fallibility::capacity_overflow@GOTPCREL(%rip)
	movq	%rax, %r13
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %r13
	jne	.LBB9_40
	movq	%rdx, %rdi
	movq	%rbp, (%rsp)
	movq	%r14, %rsi
	movl	$24, %ecx
	movq	%rdi, %rax
	mulq	%rcx
	jno	.LBB9_16
	jmp	.LBB9_38
.LBB9_41:
	movl	$16, %r15d
.LBB9_42:
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
	je	.LBB9_53
	movabsq	$5871781006564002453, %rax
	leaq	-24(%rdi), %rcx
	xorl	%edx, %edx
	jmp	.LBB9_46
	.p2align	4, 0x90
.LBB9_44:
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
.LBB9_45:
	leaq	1(%rdx), %rsi
	cmpq	%rbx, %rdx
	movq	%rsi, %rdx
	je	.LBB9_52
.LBB9_46:
	cmpb	$0, (%rdi,%rdx)
	js	.LBB9_45
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
	jne	.LBB9_50
	movl	$16, %r10d
	.p2align	4, 0x90
.LBB9_49:
	addq	%r10, %r8
	andq	%r14, %r8
	movdqu	(%r15,%r8), %xmm0
	pmovmskb	%xmm0, %r9d
	addq	$16, %r10
	testl	%r9d, %r9d
	je	.LBB9_49
.LBB9_50:
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%r14, %r9
	cmpb	$0, (%r15,%r9)
	js	.LBB9_44
	movdqa	(%r15), %xmm0
	pmovmskb	%xmm0, %r8d
	rep		bsfl	%r8d, %r9d
	jmp	.LBB9_44
.LBB9_52:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
	testq	%rbx, %rbx
	jne	.LBB9_54
	jmp	.LBB9_40
.LBB9_53:
	movq	%r15, (%r11)
	movq	%r14, 8(%r11)
	movq	%rbp, 16(%r11)
.LBB9_54:
	movl	$24, %ecx
	movq	%r12, %rax
	mulq	%rcx
	addq	$15, %rax
	andq	$-16, %rax
	addq	%rax, %rbx
	addq	$17, %rbx
	je	.LBB9_40
	subq	%rax, %rdi
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB9_40
.Lfunc_end9:
	.size	hashbrown::raw::RawTable<T,A>::reserve_rehash, .Lfunc_end9-hashbrown::raw::RawTable<T,A>::reserve_rehash
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_0:
	.zero	16,78
	.section	.text.entity_insert,"ax",@progbits
	.globl	entity_insert
	.p2align	4, 0x90
	.type	entity_insert,@function
entity_insert:
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
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movd	%xmm0, 12(%rsp)
	movabsq	$2758610063297525376, %r12
	movabsq	$-3495184891886458242, %r15
	movabsq	$-7096007880625674410, %r13
	movq	%rdi, (%rsp)
	movq	(%rdi), %r14
	movl	760(%r14), %eax
	movq	%rax, 248(%rsp)
	leaq	488(%r14), %rbx
	leaq	64(%r14), %rax
	movq	%rax, 16(%rsp)
	leaq	216(%r14), %rax
	movq	%rax, 40(%rsp)
	movq	512(%r14), %rcx
	movq	520(%r14), %rax
	leaq	-24(%rcx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI10_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %rdi
.LBB10_1:
	andq	%rax, %rdi
	movdqu	(%rcx,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	.p2align	4, 0x90
.LBB10_2:
	testw	%r8w, %r8w
	je	.LBB10_3
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rax, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r12, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%r15, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB10_2
	jmp	.LBB10_13
	.p2align	4, 0x90
.LBB10_3:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB10_5
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB10_1
.LBB10_13:
	movq	(%rbx), %rax
	movq	-8(%rcx,%r9,8), %rbp
.LBB10_40:
	movq	(%rsp), %r13
	shlq	$5, %rbp
	addq	%rax, %rbp
	leaq	152(%r14), %rcx
	movl	16(%r13), %ebx
	.cfi_escape 0x2e, 0x10
	leaq	48(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	16(%rsp), %r8
	movq	40(%rsp), %r9
	pushq	248(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	20(%r13), %r14d
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.LBB10_52
	movq	8(%r13), %r13
	movq	%r13, %rbx
	shrq	$32, %rbx
	cmpl	$1, %eax
	jne	.LBB10_69
	movq	72(%rsp), %r12
	movq	88(%r12), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB10_43
	decq	%rsi
	movq	72(%r12), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movl	8(%rax,%rcx), %r15d
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%r12)
	cmpq	%r14, %rsi
	je	.LBB10_80
	jbe	.LBB10_67
	addq	%rcx, %rax
	movq	(%rax), %r8
	movq	80(%rsp), %r9
	movl	%r8d, %r10d
	movq	(%r9), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	16(%r9), %r10
	jae	.LBB10_79
	shrq	$32, %r8
	cmpl	%r8d, (%rax,%rcx,4)
	jne	.LBB10_79
	movl	4(%rax,%rcx,4), %edi
	cmpl	$-1, %edi
	je	.LBB10_77
	leaq	(%rax,%rcx,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB10_79
.LBB10_52:
	movq	72(%rsp), %rsi
	movq	88(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%rsi), %rdx
	jae	.LBB10_55
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB10_55
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
.LBB10_55:
	movl	28(%r13), %r15d
	movl	24(%r13), %ebp
	movq	96(%rsp), %rdx
	movl	120(%rsp), %esi
	movl	%esi, (%rsp)
	movss	12(%rsp), %xmm0
	movss	%xmm0, 160(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB10_60
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_60
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB10_58
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	(%rdx), %r12
.LBB10_60:
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB10_61
.LBB10_62:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB10_63
.LBB10_69:
	movq	72(%rsp), %rbp
	movq	88(%rbp), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB10_70
	decq	%rsi
	movq	72(%rbp), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rdi
	shlq	$4, %rdi
	movl	8(%rax,%rcx), %edx
	movups	(%rax,%rdi), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	%rsi, 88(%rbp)
	cmpq	%r14, %rsi
	je	.LBB10_100
	jbe	.LBB10_73
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	80(%rsp), %r9
	movl	%edi, %r10d
	movq	(%r9), %rax
	leaq	(%r10,%r10,4), %rcx
	cmpq	16(%r9), %r10
	jae	.LBB10_99
	shrq	$32, %rdi
	cmpl	%edi, (%rax,%rcx,4)
	jne	.LBB10_99
	movl	4(%rax,%rcx,4), %r11d
	cmpl	$-1, %r11d
	je	.LBB10_97
	leaq	(%rax,%rcx,4), %rdi
	addq	$4, %rdi
	movl	8(%rdi), %esi
	movl	12(%rdi), %r8d
	jmp	.LBB10_99
.LBB10_58:
	xorl	%r12d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_62
	jmp	.LBB10_61
.LBB10_5:
	cmpq	$0, 528(%r14)
	je	.LBB10_6
.LBB10_7:
	movq	$8, 136(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 144(%rsp)
	leaq	88(%r14), %rdi
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %r8
.LBB10_8:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	.p2align	4, 0x90
.LBB10_9:
	testw	%r9w, %r9w
	je	.LBB10_10
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%r12, %r9
	movq	%rbx, %rbp
	movq	(%rdx,%r10,8), %rbx
	xorq	%r15, %rbx
	orq	%r9, %rbx
	movq	%rbp, %rbx
	movl	%r11d, %r9d
	jne	.LBB10_9
	jmp	.LBB10_29
.LBB10_10:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB10_14
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB10_8
.LBB10_29:
	movq	-8(%rax,%r10,8), %rbp
.LBB10_30:
.Ltmp10:
	.cfi_escape 0x2e, 0x00
	leaq	136(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp11:
	movq	136(%rsp), %rax
	movq	152(%rsp), %rcx
	movq	%rbp, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 152(%rsp)
	movq	504(%r14), %rbp
	movq	%rcx, 176(%rsp)
	movups	136(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rsi
	leaq	48(%rsp), %rdi
	leaq	160(%rsp), %r8
	movl	$16, %edx
	movq	16(%rsp), %rcx
	movq	%rbp, %r9
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	48(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rbp, %rcx
	cmpq	496(%r14), %rbp
	jne	.LBB10_34
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp14:
	movq	504(%r14), %rcx
.LBB10_34:
	movq	488(%r14), %rax
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movq	24(%rsp), %rsi
	movq	%rsi, (%rax,%rdx)
	movq	32(%rsp), %rsi
	movq	%rsi, 8(%rax,%rdx)
	movups	64(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rdx)
	incq	%rcx
	movq	%rcx, 504(%r14)
	movq	512(%r14), %rcx
	movq	520(%r14), %rdx
	andq	%rdx, %r13
	movdqu	(%rcx,%r13), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB10_37
	movl	$16, %edi
	.p2align	4, 0x90
.LBB10_36:
	addq	%rdi, %r13
	andq	%rdx, %r13
	movdqu	(%rcx,%r13), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB10_36
.LBB10_37:
	rep		bsfl	%esi, %esi
	addq	%r13, %rsi
	andq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %edi
	testb	%dil, %dil
	js	.LBB10_39
	movdqa	(%rcx), %xmm0
	pmovmskb	%xmm0, %esi
	rep		bsfl	%esi, %esi
	movzbl	(%rcx,%rsi), %edi
.LBB10_39:
	leaq	-16(%rsi), %r8
	andq	%rdx, %r8
	movb	$78, (%rcx,%rsi)
	movb	$78, 16(%r8,%rcx)
	andb	$1, %dil
	movzbl	%dil, %edx
	subq	%rdx, 528(%r14)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rdx
	movq	%r15, -24(%rcx,%rdx,8)
	movq	%r12, -16(%rcx,%rdx,8)
	movq	%rbp, -8(%rcx,%rdx,8)
	incq	536(%r14)
	jmp	.LBB10_40
.LBB10_77:
.LBB10_79:
	movl	%edi, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%edx, 16(%rax,%rcx,4)
.LBB10_80:
	movq	56(%rsp), %rbp
	movq	88(%rbp), %r14
	cmpq	80(%rbp), %r14
	jne	.LBB10_81
	leaq	72(%rbp), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%rbp), %rax
	jmp	.LBB10_83
.LBB10_81:
	movq	%r14, %rax
.LBB10_83:
	movq	72(%rbp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%rbp)
	movl	144(%rbp), %ebx
	movl	148(%rbp), %ebp
	movq	80(%rsp), %rax
	movq	(%rax), %rax
	movl	%r13d, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%ebx, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%ebp, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	88(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%r12), %rdx
	jae	.LBB10_84
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	movq	(%rsp), %r13
	je	.LBB10_87
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
	jmp	.LBB10_87
.LBB10_84:
	movq	(%rsp), %r13
.LBB10_87:
	movq	96(%rsp), %rdx
	movl	120(%rsp), %esi
	movl	%esi, (%rsp)
	movss	12(%rsp), %xmm0
	movss	%xmm0, 160(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB10_92
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_92
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB10_90
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	(%rdx), %r12
.LBB10_92:
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB10_61
.LBB10_93:
	.cfi_escape 0x2e, 0x00
.LBB10_63:
	leaq	160(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB10_64
.LBB10_90:
	xorl	%r12d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_93
.LBB10_61:
	movq	8(%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	160(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r12), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB10_64:
	movq	72(%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	jmp	.LBB10_121
.LBB10_97:
.LBB10_99:
	movl	%r11d, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%esi, 12(%rax,%rcx,4)
	movl	%r8d, 16(%rax,%rcx,4)
.LBB10_100:
	movq	64(%rsp), %rcx
	movq	96(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
	leaq	160(%rsp), %rdi
	movl	%edx, 40(%rsp)
	movq	%rcx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	56(%rsp), %r12
	movl	176(%rsp), %r15d
	movq	88(%r12), %r14
	cmpq	80(%r12), %r14
	jne	.LBB10_101
	leaq	72(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%r12), %rax
	jmp	.LBB10_103
.LBB10_101:
	movq	%r14, %rax
.LBB10_103:
	movq	72(%r12), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movl	%r13d, (%rcx,%rdx)
	movl	%ebx, 4(%rcx,%rdx)
	movl	%r15d, 8(%rcx,%rdx)
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %ebx
	movl	148(%r12), %r8d
	movq	80(%rsp), %rax
	movq	(%rax), %rcx
	movl	%r13d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movl	%ebx, 4(%rcx,%rdx,4)
	movl	%r14d, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpq	$0, 160(%rsp)
	je	.LBB10_108
	movl	168(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%rbp, %rcx
	cmpl	%edx, 144(%rbp)
	je	.LBB10_106
	imulq	$152, %rdx, %rcx
	addq	112(%rsp), %rcx
	cmpl	%edx, 144(%r12)
	cmoveq	%r12, %rcx
.LBB10_106:
	movl	40(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB10_122
	movq	72(%rcx), %rax
	shlq	$4, %rdi
	movl	%edx, 8(%rax,%rdi)
.LBB10_108:
	movq	88(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%rbp), %rdx
	jae	.LBB10_109
	movq	(%rbp), %rsi
	testq	%rsi, %rsi
	movq	16(%rsp), %rdi
	je	.LBB10_112
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
	jmp	.LBB10_112
.LBB10_109:
	movq	16(%rsp), %rdi
.LBB10_112:
	movl	120(%rsp), %ebp
	movss	12(%rsp), %xmm0
	movss	%xmm0, 256(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r13d, %r13d
	cmpq	%rcx, 40(%rdi)
	jbe	.LBB10_117
	movq	32(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB10_117
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB10_115
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r13
	shlq	$5, %r13
	addq	(%rdi), %r13
.LBB10_117:
	movl	%r8d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB10_118
.LBB10_119:
	.cfi_escape 0x2e, 0x00
	leaq	256(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	jmp	.LBB10_120
.LBB10_115:
	xorl	%r13d, %r13d
	movl	%r8d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_119
.LBB10_118:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r13), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	256(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r13), %rax
	movl	%ebp, (%rax,%r15,4)
.LBB10_120:
	movq	72(%r13), %rax
	movl	%ebp, (%rax,%r15,4)
	movq	(%rsp), %r13
	movl	%r12d, %ebp
.LBB10_121:
	movl	%ebx, 16(%r13)
	movl	%r14d, 20(%r13)
	movl	%ebp, 24(%r13)
	movl	%r15d, 28(%r13)
	addq	$344, %rsp
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
.LBB10_6:
	.cfi_def_cfa_offset 400
	leaq	512(%r14), %rdi
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI10_0(%rip), %xmm3
	jmp	.LBB10_7
.LBB10_14:
	cmpq	$0, 104(%r14)
	jne	.LBB10_16
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp1:
.LBB10_16:
	movq	$0, 200(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rax
	movq	%rax, 208(%rsp)
	movq	$16, 216(%rsp)
	movw	$256, 232(%rsp)
	movq	$1, 160(%rsp)
	movq	%r15, 168(%rsp)
	movq	%r12, 176(%rsp)
	movq	$4, 184(%rsp)
	movq	$4, 192(%rsp)
	movq	$0, 224(%rsp)
	movq	80(%r14), %rbp
.Ltmp2:
	.cfi_escape 0x2e, 0x00
	leaq	48(%rsp), %rdi
	leaq	160(%rsp), %rdx
	movq	%rbp, %rsi
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp3:
	cmpb	$0, 120(%rsp)
	je	.LBB10_19
.Ltmp4:
	.cfi_escape 0x2e, 0x00
	leaq	48(%rsp), %rsi
	movq	40(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp5:
.LBB10_19:
	movups	48(%rsp), %xmm0
	movdqu	64(%rsp), %xmm1
	movaps	%xmm0, 256(%rsp)
	movdqa	%xmm1, 272(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 288(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 32(%rsp)
	movups	120(%rsp), %xmm0
	movaps	%xmm0, 320(%rsp)
	movdqu	104(%rsp), %xmm0
	movdqa	%xmm0, 304(%rsp)
	movq	%rbp, %rax
	cmpq	72(%r14), %rbp
	jne	.LBB10_22
.Ltmp7:
	.cfi_escape 0x2e, 0x00
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	80(%r14), %rax
.LBB10_22:
	movq	64(%r14), %rcx
	imulq	$88, %rax, %rdx
	movq	288(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	256(%rsp), %xmm0
	movaps	272(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	24(%rsp), %rsi
	movq	%rsi, 40(%rcx,%rdx)
	movq	32(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	304(%rsp), %xmm0
	movdqa	320(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r14)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rdx
	andq	%r13, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB10_25
	movl	$16, %edi
.LBB10_24:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB10_24
.LBB10_25:
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB10_27
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB10_27:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$78, (%rax,%rsi)
	movb	$78, 16(%rdi,%rax)
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 104(%r14)
	negq	%rsi
	leaq	(%rsi,%rsi,2), %rcx
	movq	%r15, -24(%rax,%rcx,8)
	movq	%r12, -16(%rax,%rcx,8)
	movq	%rbp, -8(%rax,%rcx,8)
	incq	112(%r14)
	jmp	.LBB10_30
.LBB10_122:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_67:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_73:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_43:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB10_70:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB10_45:
.Ltmp9:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movq	24(%rsp), %rdi
	movq	32(%rsp), %rsi
	jmp	.LBB10_46
.LBB10_47:
.Ltmp6:
	movq	%rax, %rbx
	movq	88(%rsp), %rdi
	movq	96(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
.LBB10_46:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	movl	$8, %edi
	xorl	%esi, %esi
	.cfi_escape 0x2e, 0x00
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB10_48:
.Ltmp15:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movq	24(%rsp), %rdi
	movq	32(%rsp), %rsi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB10_50:
.Ltmp12:
	movq	%rax, %rbx
	movq	136(%rsp), %rdi
	movq	144(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end10:
	.size	entity_insert, .Lfunc_end10-entity_insert
	.cfi_endproc
	.section	.gcc_except_table.entity_insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp10-.Lfunc_begin0
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
	.uleb128 .Lfunc_end10-.Ltmp8
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.0,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/89d652b/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"_\000\000\000\000\000\000\000\275\001\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.1, 24

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.2,@object
	.section	.rodata.cst16,"aM",@progbits,16
.Lanon.83959b72e5b8236df4a28836bf490603.2:
	.ascii	"entity_insert::A"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.2, 16

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.3,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.3:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"_\000\000\000\000\000\000\000\350\001\000\000#\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

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

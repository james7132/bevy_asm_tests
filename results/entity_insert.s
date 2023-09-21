	.text
	.file	"entity_insert.7f2f46508634b226-cgu.0"
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
	je	.LBB4_3
	movq	(%rbx), %rcx
	shlq	$5, %rax
	movq	%rcx, 8(%rsp)
	movq	$8, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB4_4
.LBB4_3:
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
	je	.LBB5_3
	movq	(%rbx), %rcx
	imulq	$88, %rax, %rax
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
	xorl	%esi, %esi
	movq	%r14, %rcx
	shrq	$60, %rcx
	sete	%sil
	leaq	(,%r14,8), %rdx
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB6_3
	movq	(%rbx), %rcx
	shlq	$3, %rax
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
	movabsq	$768614336404564651, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, %r14
	setb	%sil
	leaq	(,%r14,4), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$2, %rsi
	testq	%rax, %rax
	je	.LBB7_3
	movq	(%rbx), %rcx
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	movq	%rcx, 8(%rsp)
	movq	$4, 16(%rsp)
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
	.zero	16,99
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
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movd	%xmm0, 28(%rsp)
	movq	%rdi, %rbx
	movabsq	$-992953597639325079, %r13
	movabsq	$-6961215283856886765, %rbp
	movabsq	$-4130630350342222577, %r12
	movq	(%rdi), %r14
	movl	760(%r14), %r15d
	leaq	488(%r14), %rax
	movq	%rax, 48(%rsp)
	leaq	64(%r14), %rax
	movq	%rax, (%rsp)
	leaq	216(%r14), %rax
	movq	%rax, 16(%rsp)
	movq	512(%r14), %rax
	movq	520(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI10_0(%rip), %xmm3
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %rdi
.LBB10_1:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	.p2align	4, 0x90
.LBB10_2:
	testw	%r8w, %r8w
	je	.LBB10_4
	leal	-1(%r8), %r10d
	andl	%r8d, %r10d
	rep		bsfl	%r8d, %r8d
	addq	%rdi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r9
	movq	8(%rdx,%r9,8), %r8
	xorq	%r13, %r8
	movq	(%rdx,%r9,8), %r11
	xorq	%rbp, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	jne	.LBB10_2
	jmp	.LBB10_6
	.p2align	4, 0x90
.LBB10_4:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB10_77
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB10_1
.LBB10_6:
	leaq	(%rax,%r9,8), %rcx
	addq	$-8, %rcx
.LBB10_7:
	movq	(%rcx), %rsi
	shlq	$5, %rsi
	addq	488(%r14), %rsi
	leaq	152(%r14), %rcx
	movl	16(%rbx), %ebp
	.cfi_escape 0x2e, 0x10
	leaq	56(%rsp), %rdi
	movq	%r14, %rdx
	movq	(%rsp), %r8
	movq	16(%rsp), %r9
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*bevy_ecs::bundle::BundleInfo::get_bundle_inserter@GOTPCREL(%rip)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	20(%rbx), %r14d
	movq	56(%rsp), %rax
	testq	%rax, %rax
	je	.LBB10_16
	movl	8(%rbx), %r9d
	movl	12(%rbx), %r8d
	cmpl	$1, %eax
	jne	.LBB10_25
	movq	80(%rsp), %r12
	movq	88(%r12), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB10_114
	decq	%rsi
	movq	72(%r12), %rax
	leaq	(%r14,%r14,2), %rcx
	movl	8(%rax,%rcx,4), %r15d
	leaq	(%rsi,%rsi,2), %rdx
	movl	8(%rax,%rdx,4), %edi
	movq	(%rax,%rdx,4), %rdx
	movq	%rdx, (%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movq	%rsi, 88(%r12)
	cmpq	%r14, %rsi
	je	.LBB10_37
	jbe	.LBB10_111
	leaq	(%rax,%rcx,4), %rdx
	movl	4(%rdx), %esi
	movq	88(%rsp), %rcx
	leaq	(%rsi,%rsi,4), %rax
	cmpq	%rsi, 16(%rcx)
	jbe	.LBB10_32
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	cmpl	(%rdx), %esi
	jne	.LBB10_35
	movl	4(%rcx,%rax,4), %edi
	cmpl	$-1, %edi
	je	.LBB10_35
	leaq	(%rcx,%rax,4), %rdx
	addq	$4, %rdx
	movl	8(%rdx), %esi
	movl	12(%rdx), %edx
	jmp	.LBB10_36
.LBB10_16:
	movq	80(%rsp), %rsi
	movq	96(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%rsi), %rdx
	jae	.LBB10_19
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB10_19
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
.LBB10_19:
	movl	28(%rbx), %r15d
	movl	24(%rbx), %r13d
	movq	104(%rsp), %rdx
	movl	128(%rsp), %esi
	movl	%esi, (%rsp)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 144(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB10_23
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_23
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB10_34
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	(%rdx), %r12
.LBB10_23:
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB10_51
.LBB10_24:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB10_49
.LBB10_25:
	movq	80(%rsp), %r13
	movq	88(%r13), %rsi
	cmpq	%r14, %rsi
	jbe	.LBB10_115
	decq	%rsi
	movq	72(%r13), %rax
	leaq	(%r14,%r14,2), %rcx
	movl	8(%rax,%rcx,4), %edx
	leaq	(%rsi,%rsi,2), %r10
	movl	8(%rax,%r10,4), %edi
	movq	(%rax,%r10,4), %r10
	movq	%r10, (%rax,%rcx,4)
	movl	%edi, 8(%rax,%rcx,4)
	movq	%rsi, 88(%r13)
	cmpq	%r14, %rsi
	je	.LBB10_55
	jbe	.LBB10_112
	leaq	(%rax,%rcx,4), %rdi
	movl	4(%rdi), %esi
	movq	88(%rsp), %rcx
	leaq	(%rsi,%rsi,4), %rax
	cmpq	%rsi, 16(%rcx)
	jbe	.LBB10_33
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	cmpl	(%rdi), %esi
	jne	.LBB10_53
	movl	4(%rcx,%rax,4), %r10d
	cmpl	$-1, %r10d
	je	.LBB10_53
	leaq	(%rcx,%rax,4), %rdi
	addq	$4, %rdi
	movl	8(%rdi), %esi
	movl	12(%rdi), %edi
	jmp	.LBB10_54
.LBB10_32:
	movq	(%rcx), %rcx
.LBB10_35:
.LBB10_36:
	movl	%edi, 4(%rcx,%rax,4)
	movl	%r14d, 8(%rcx,%rax,4)
	movl	%esi, 12(%rcx,%rax,4)
	movl	%edx, 16(%rcx,%rax,4)
.LBB10_37:
	movq	64(%rsp), %r13
	movq	88(%r13), %r14
	cmpq	80(%r13), %r14
	jne	.LBB10_39
	leaq	72(%r13), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	movq	%r8, %rbp
	movq	%r15, (%rsp)
	movq	%r14, %r15
	movq	%rbx, %r14
	movl	%r9d, %ebx
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movl	%ebx, %r9d
	movq	%r14, %rbx
	movq	%r15, %r14
	movq	(%rsp), %r15
	movq	%rbp, %r8
	movq	88(%r13), %rax
	jmp	.LBB10_40
.LBB10_39:
	movq	%r14, %rax
.LBB10_40:
	movq	72(%r13), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%r9d, (%rcx,%rdx,4)
	movl	%r8d, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 88(%r13)
	movl	144(%r13), %ebp
	movl	148(%r13), %r13d
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	leaq	(%r8,%r8,4), %rcx
	movl	%ebp, 4(%rax,%rcx,4)
	movl	%r14d, 8(%rax,%rcx,4)
	movl	%r13d, 12(%rax,%rcx,4)
	movl	%r15d, 16(%rax,%rcx,4)
	movq	96(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%r12), %rdx
	jae	.LBB10_43
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB10_43
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
.LBB10_43:
	movq	104(%rsp), %rdx
	movl	128(%rsp), %esi
	movl	%esi, (%rsp)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 144(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r12d, %r12d
	cmpq	%rcx, 40(%rdx)
	jbe	.LBB10_47
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_47
	shlq	$4, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB10_50
	movq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r12
	shlq	$5, %r12
	addq	(%rdx), %r12
.LBB10_47:
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB10_51
.LBB10_48:
	.cfi_escape 0x2e, 0x00
.LBB10_49:
	leaq	144(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	(%rsp), %ecx
	jmp	.LBB10_52
.LBB10_33:
	movq	(%rcx), %rcx
.LBB10_53:
.LBB10_54:
	movl	%r10d, 4(%rcx,%rax,4)
	movl	%r14d, 8(%rcx,%rax,4)
	movl	%esi, 12(%rcx,%rax,4)
	movl	%edi, 16(%rcx,%rax,4)
.LBB10_55:
	movq	%rbx, (%rsp)
	movl	%r9d, %ebx
	movq	%r8, %rbp
	movq	72(%rsp), %rcx
	movq	104(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdi
	movl	%edx, 48(%rsp)
	movq	%rcx, 16(%rsp)
	callq	*bevy_ecs::storage::table::Table::move_to_superset_unchecked@GOTPCREL(%rip)
	movq	64(%rsp), %r12
	movl	156(%rsp), %r15d
	movq	88(%r12), %r14
	cmpq	80(%r12), %r14
	jne	.LBB10_57
	leaq	72(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	88(%r12), %rax
	jmp	.LBB10_58
.LBB10_57:
	movq	%r14, %rax
.LBB10_58:
	movq	%rbp, %rsi
	movq	72(%r12), %rcx
	leaq	(%rax,%rax,2), %rdx
	movl	%ebx, (%rcx,%rdx,4)
	movl	%esi, 4(%rcx,%rdx,4)
	movl	%r15d, 8(%rcx,%rdx,4)
	incq	%rax
	movq	%rax, 88(%r12)
	movl	144(%r12), %ebp
	movl	148(%r12), %r8d
	movq	88(%rsp), %rax
	movq	(%rax), %rcx
	leaq	(%rsi,%rsi,4), %rdx
	movl	%ebp, 4(%rcx,%rdx,4)
	movl	%r14d, 8(%rcx,%rdx,4)
	movl	%r8d, 12(%rcx,%rdx,4)
	movl	%r15d, 16(%rcx,%rdx,4)
	cmpl	$0, 144(%rsp)
	movq	(%rsp), %rbx
	je	.LBB10_63
	movl	152(%rsp), %ecx
	movq	(%rax), %rsi
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rsi,%rcx,4), %rax
	addq	$4, %rax
	movl	4(%rsi,%rcx,4), %edx
	movl	8(%rsi,%rcx,4), %edi
	movq	%r13, %rcx
	cmpl	%edx, 144(%r13)
	je	.LBB10_61
	imulq	$152, %rdx, %rcx
	addq	120(%rsp), %rcx
	cmpl	%edx, 144(%r12)
	cmoveq	%r12, %rcx
.LBB10_61:
	movl	48(%rsp), %edx
	movl	%edx, 12(%rax)
	movq	88(%rcx), %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB10_110
	movq	72(%rcx), %rax
	leaq	(%rdi,%rdi,2), %rcx
	movl	%edx, 8(%rax,%rcx,4)
.LBB10_63:
	movq	96(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%eax, %eax
	cmpq	16(%r13), %rdx
	jae	.LBB10_66
	movq	(%r13), %rsi
	testq	%rsi, %rsi
	movq	16(%rsp), %rdi
	je	.LBB10_67
	shlq	$5, %rdx
	leaq	(%rsi,%rdx), %rax
	movq	(%rsi,%rdx), %rdx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rax
	jmp	.LBB10_67
.LBB10_66:
	movq	16(%rsp), %rdi
.LBB10_67:
	movl	128(%rsp), %edx
	movl	%edx, 16(%rsp)
	movss	28(%rsp), %xmm0
	movss	%xmm0, 256(%rsp)
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorl	%r13d, %r13d
	cmpq	%rcx, 40(%rdi)
	jbe	.LBB10_71
	movq	32(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB10_71
	shlq	$4, %rcx
	cmpq	$0, (%rdx,%rcx)
	je	.LBB10_73
	movq	8(%rdx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %r13
	shlq	$5, %r13
	addq	(%rdi), %r13
.LBB10_71:
	movl	%r8d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB10_74
.LBB10_72:
	.cfi_escape 0x2e, 0x00
	leaq	256(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
	movl	16(%rsp), %ecx
	jmp	.LBB10_75
.LBB10_34:
	xorl	%r12d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_24
	jmp	.LBB10_51
.LBB10_50:
	xorl	%r12d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_48
.LBB10_51:
	movq	8(%r12), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r12), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r12), %rax
	movl	(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB10_52:
	movq	72(%r12), %rax
	movl	%ecx, (%rax,%r15,4)
	jmp	.LBB10_76
.LBB10_73:
	xorl	%r13d, %r13d
	movl	%r8d, %r12d
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_72
.LBB10_74:
	movq	8(%r13), %rdx
	movq	%rdx, %rdi
	imulq	%r15, %rdi
	addq	16(%r13), %rdi
	.cfi_escape 0x2e, 0x00
	leaq	256(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movq	48(%r13), %rax
	movl	16(%rsp), %ecx
	movl	%ecx, (%rax,%r15,4)
.LBB10_75:
	movq	72(%r13), %rax
	movl	%ecx, (%rax,%r15,4)
	movl	%r12d, %r13d
.LBB10_76:
	movl	%ebp, 16(%rbx)
	movl	%r14d, 20(%rbx)
	movl	%r13d, 24(%rbx)
	movl	%r15d, 28(%rbx)
	addq	$296, %rsp
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
.LBB10_77:
	.cfi_def_cfa_offset 352
	cmpq	$0, 528(%r14)
	je	.LBB10_95
.LBB10_78:
	movq	$8, 232(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 240(%rsp)
	leaq	88(%r14), %rax
	movq	%rax, 8(%rsp)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	leaq	-24(%rax), %rdx
	xorl	%edi, %edi
	pcmpeqd	%xmm0, %xmm0
	movq	%r12, %r8
.LBB10_79:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	.p2align	4, 0x90
.LBB10_80:
	testw	%r9w, %r9w
	je	.LBB10_82
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%r8, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movq	8(%rdx,%r10,8), %r9
	xorq	%r13, %r9
	movq	(%rdx,%r10,8), %rsi
	xorq	%rbp, %rsi
	orq	%r9, %rsi
	movl	%r11d, %r9d
	jne	.LBB10_80
	jmp	.LBB10_84
.LBB10_82:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB10_96
	addq	%rdi, %r8
	addq	$16, %r8
	addq	$16, %rdi
	jmp	.LBB10_79
.LBB10_84:
	leaq	(%rax,%r10,8), %rcx
	addq	$-8, %rcx
.LBB10_85:
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
.Ltmp10:
	.cfi_escape 0x2e, 0x00
	leaq	232(%rsp), %rdi
	xorl	%esi, %esi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp11:
	movq	232(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	incq	%rcx
	movq	%rcx, 248(%rsp)
	movq	504(%r14), %r9
	movq	%rcx, 160(%rsp)
	movdqu	232(%rsp), %xmm0
	movdqa	%xmm0, 144(%rsp)
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rsi
	leaq	56(%rsp), %rdi
	leaq	144(%rsp), %r8
	movl	$16, %edx
	movq	(%rsp), %rcx
	movq	%r9, 40(%rsp)
	callq	*bevy_ecs::bundle::BundleInfo::new@GOTPCREL(%rip)
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	504(%r14), %rsi
	cmpq	496(%r14), %rsi
	jne	.LBB10_89
.Ltmp16:
	.cfi_escape 0x2e, 0x00
	movq	48(%rsp), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp17:
	movq	504(%r14), %rsi
.LBB10_89:
	movq	488(%r14), %rax
	movq	%rsi, %rcx
	shlq	$5, %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax,%rcx)
	movq	8(%rsp), %rdx
	movq	%rdx, 8(%rax,%rcx)
	movups	72(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 504(%r14)
	movq	512(%r14), %rax
	movq	520(%r14), %rcx
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB10_92
	movl	$16, %esi
	.p2align	4, 0x90
.LBB10_91:
	addq	%rsi, %r12
	andq	%rcx, %r12
	movdqu	(%rax,%r12), %xmm0
	pmovmskb	%xmm0, %edx
	addq	$16, %rsi
	testl	%edx, %edx
	je	.LBB10_91
.LBB10_92:
	rep		bsfl	%edx, %edx
	addq	%r12, %rdx
	andq	%rcx, %rdx
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	js	.LBB10_94
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
.LBB10_94:
	leaq	-16(%rdx), %rdi
	andq	%rcx, %rdi
	movb	$99, (%rax,%rdx)
	movb	$99, 16(%rdi,%rax)
	negq	%rdx
	andb	$1, %sil
	movzbl	%sil, %ecx
	subq	%rcx, 528(%r14)
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rbp, -24(%rax,%rdx,8)
	movq	%r13, -16(%rax,%rdx,8)
	leaq	(%rax,%rdx,8), %rcx
	addq	$-8, %rcx
	movq	40(%rsp), %rsi
	movq	%rsi, -8(%rax,%rdx,8)
	incq	536(%r14)
	jmp	.LBB10_7
.LBB10_95:
	leaq	512(%r14), %rdi
	.cfi_escape 0x2e, 0x00
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
	movdqa	.LCPI10_0(%rip), %xmm3
	jmp	.LBB10_78
.LBB10_96:
	cmpq	$0, 104(%r14)
	jne	.LBB10_98
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	movq	8(%rsp), %rdi
	callq	hashbrown::raw::RawTable<T,A>::reserve_rehash
.Ltmp1:
.LBB10_98:
	movq	80(%r14), %rsi
	movq	$1, 144(%rsp)
	movq	%r13, 160(%rsp)
	movq	%rbp, 152(%rsp)
	movq	$4, 168(%rsp)
	movq	$4, 176(%rsp)
	movq	$0, 184(%rsp)
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.2(%rip), %rax
	movq	%rax, 192(%rsp)
	movq	$16, 200(%rsp)
	movq	$0, 208(%rsp)
	movw	$256, 216(%rsp)
.Ltmp2:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	144(%rsp), %rdx
	movq	%rsi, 8(%rsp)
	callq	*bevy_ecs::component::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp3:
	cmpb	$0, 128(%rsp)
	je	.LBB10_101
.Ltmp4:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get_or_insert@GOTPCREL(%rip)
.Ltmp5:
.LBB10_101:
	movups	56(%rsp), %xmm0
	movdqu	72(%rsp), %xmm1
	movaps	%xmm0, 144(%rsp)
	movdqa	%xmm1, 160(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 32(%rsp)
	movups	128(%rsp), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqu	112(%rsp), %xmm0
	movdqa	%xmm0, 256(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, %rax
	cmpq	72(%r14), %rcx
	jne	.LBB10_104
.Ltmp7:
	.cfi_escape 0x2e, 0x00
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
.Ltmp8:
	movq	80(%r14), %rax
.LBB10_104:
	movq	64(%r14), %rcx
	imulq	$88, %rax, %rdx
	movq	176(%rsp), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movaps	144(%rsp), %xmm0
	movaps	160(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	movq	40(%rsp), %rsi
	movq	%rsi, 40(%rcx,%rdx)
	movq	32(%rsp), %rsi
	movq	%rsi, 48(%rcx,%rdx)
	movaps	256(%rsp), %xmm0
	movdqa	272(%rsp), %xmm1
	movups	%xmm0, 56(%rcx,%rdx)
	movdqu	%xmm1, 72(%rcx,%rdx)
	incq	%rax
	movq	%rax, 80(%r14)
	movq	88(%r14), %rax
	movq	96(%r14), %rcx
	movq	%rcx, %rdx
	andq	%r12, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB10_107
	movl	$16, %edi
.LBB10_106:
	addq	%rdi, %rdx
	andq	%rcx, %rdx
	movdqu	(%rax,%rdx), %xmm0
	pmovmskb	%xmm0, %esi
	addq	$16, %rdi
	testl	%esi, %esi
	je	.LBB10_106
.LBB10_107:
	rep		bsfl	%esi, %esi
	addq	%rdx, %rsi
	andq	%rcx, %rsi
	movzbl	(%rax,%rsi), %edx
	testb	%dl, %dl
	js	.LBB10_109
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %esi
	movzbl	(%rax,%rsi), %edx
.LBB10_109:
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movb	$99, (%rax,%rsi)
	movb	$99, 16(%rdi,%rax)
	negq	%rsi
	andb	$1, %dl
	movzbl	%dl, %ecx
	subq	%rcx, 104(%r14)
	leaq	(%rsi,%rsi,2), %rdx
	movq	%rbp, -24(%rax,%rdx,8)
	movq	%r13, -16(%rax,%rdx,8)
	leaq	(%rax,%rdx,8), %rcx
	addq	$-8, %rcx
	movq	8(%rsp), %rsi
	movq	%rsi, -8(%rax,%rdx,8)
	incq	112(%r14)
	jmp	.LBB10_85
.LBB10_110:
	.cfi_escape 0x2e, 0x00
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.1(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_111:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB10_113
.LBB10_112:
	.cfi_escape 0x2e, 0x00
.LBB10_113:
	leaq	.Lanon.83959b72e5b8236df4a28836bf490603.3(%rip), %rdx
	movq	%r14, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB10_114:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB10_116
.LBB10_115:
	.cfi_escape 0x2e, 0x00
.LBB10_116:
	movq	%r14, %rdi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.LBB10_117:
.Ltmp9:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rsi
	jmp	.LBB10_119
.LBB10_118:
.Ltmp6:
	movq	%rax, %rbx
	movq	96(%rsp), %rdi
	movq	104(%rsp), %rsi
	.cfi_escape 0x2e, 0x00
.LBB10_119:
	callq	core::ptr::drop_in_place<bevy_ecs::component::ComponentInfo>
	movl	$8, %edi
	xorl	%esi, %esi
	jmp	.LBB10_122
.LBB10_120:
.Ltmp18:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movq	32(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	core::ptr::drop_in_place<bevy_ecs::bundle::BundleInfo>
	jmp	.LBB10_123
.LBB10_121:
.Ltmp12:
	movq	%rax, %rbx
	movq	232(%rsp), %rdi
	movq	240(%rsp), %rsi
.LBB10_122:
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	callq	core::ptr::drop_in_place<alloc::vec::Vec<bevy_ecs::component::ComponentId>>
.Ltmp14:
.LBB10_123:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB10_124:
.Ltmp15:
	.cfi_escape 0x2e, 0x00
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
	ud2
.Lfunc_end10:
	.size	entity_insert, .Lfunc_end10-entity_insert
	.cfi_endproc
	.section	.gcc_except_table.entity_insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.uleb128 .Ltmp16-.Ltmp11
	.byte	0
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin0
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp18-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin0
	.uleb128 .Ltmp0-.Ltmp17
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
	.uleb128 .Ltmp13-.Ltmp8
	.byte	0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin0
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp14-.Lfunc_begin0
	.uleb128 .Lfunc_end10-.Ltmp14
	.byte	0
	.byte	0
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.0,@object
	.section	.rodata..Lanon.83959b72e5b8236df4a28836bf490603.0,"a",@progbits
.Lanon.83959b72e5b8236df4a28836bf490603.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-41530a2346942c86/c9f9133/crates/bevy_ecs/src/archetype.rs"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.0, 95

	.type	.Lanon.83959b72e5b8236df4a28836bf490603.1,@object
	.section	.data.rel.ro..Lanon.83959b72e5b8236df4a28836bf490603.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.83959b72e5b8236df4a28836bf490603.1:
	.quad	.Lanon.83959b72e5b8236df4a28836bf490603.0
	.asciz	"_\000\000\000\000\000\000\000\260\001\000\000\t\000\000"
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
	.asciz	"_\000\000\000\000\000\000\000\333\001\000\000\026\000\000"
	.size	.Lanon.83959b72e5b8236df4a28836bf490603.3, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

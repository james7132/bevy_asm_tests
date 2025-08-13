	.file	"resource_insert.b056c5c1492d0c5-cgu.0"
	.section	".text.core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>,@function
core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB0_2:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	8(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB0_3:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>, .Lfunc_end0-core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>,@function
core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>:
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_2
	movq	24(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_2:
	movq	8(%rbx), %r14
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_7
	movl	$1, %r13d
	subq	%rax, %r13
	movq	$-32, %r15
	xorl	%r12d, %r12d
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %rbp
	jmp	.LBB1_4
	.p2align	4
.LBB1_6:
	addq	$-32, %r15
	incq	%r13
	addq	$32, %r12
	cmpq	$1, %r13
	je	.LBB1_7
.LBB1_4:
	movq	(%r14,%r12), %rax
	lock		decq	(%rax)
	jne	.LBB1_6
	leaq	(%r14,%r12), %rdi
	#MEMBARRIER
.Ltmp0:
	callq	*%rbp
.Ltmp1:
	jmp	.LBB1_6
.LBB1_7:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_17
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
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
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_17:
	.cfi_def_cfa_offset 64
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
.LBB1_9:
	.cfi_def_cfa_offset 64
.Ltmp2:
	movq	%rax, (%rsp)
	testq	%r13, %r13
	jne	.LBB1_10
.LBB1_14:
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_16
	shlq	$5, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_16:
	movq	(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB1_10:
	movq	%r14, %r12
	subq	%r15, %r12
	negq	%r13
	jmp	.LBB1_11
	.p2align	4
.LBB1_13:
	addq	$32, %r12
	decq	%r13
	je	.LBB1_14
.LBB1_11:
	movq	(%r12), %rax
	lock		decq	(%rax)
	jne	.LBB1_13
	#MEMBARRIER
.Ltmp3:
	movq	%r12, %rdi
	callq	*%rbp
.Ltmp4:
	jmp	.LBB1_13
.LBB1_18:
.Ltmp5:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end1:
	.size	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>, .Lfunc_end1-core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp1
	.byte	0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin0
	.byte	1
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	".text.core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>,@function
core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	addq	$72, %rdi
.Ltmp6:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp7:
	leaq	128(%rbx), %rdi
.Ltmp12:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp13:
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_4
	movq	208(%rbx), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_4:
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_10
	movq	192(%rbx), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_10:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_8:
	.cfi_def_cfa_offset 32
.Ltmp14:
	movq	%rax, %r14
	jmp	.LBB2_9
.LBB2_6:
.Ltmp8:
	movq	%rax, %r14
	leaq	128(%rbx), %rdi
.Ltmp9:
	callq	core::ptr::drop_in_place<indexmap::map::IndexMap<bevy_ecs::component::info::ComponentId,bevy_ecs::component::required::RequiredComponent,bevy_platform::hash::FixedHasher>>
.Ltmp10:
.LBB2_9:
	addq	$184, %rbx
	movq	%rbx, %rdi
	callq	core::ptr::drop_in_place<indexmap::set::IndexSet<bevy_ecs::component::info::ComponentId,bevy_platform::hash::FixedHasher>>
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB2_7:
.Ltmp11:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end2:
	.size	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>, .Lfunc_end2-core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>","a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp13-.Ltmp12
	.uleb128 .Ltmp14-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin1
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp11-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Lfunc_end2-.Ltmp10
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	.text.unlikely.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$0, 8(%rcx)
	je	.LBB3_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB3_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB3_7
.LBB3_3:
	testq	%rbx, %rbx
	je	.LBB3_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB3_7
.LBB3_4:
	movq	%r15, %rax
.LBB3_7:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmovneq	%rax, %r15
	sete	%cl
	movq	%r15, 8(%r14)
	movq	%rbx, 16(%r14)
	movq	%rcx, (%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end3-alloc::raw_vec::finish_grow
	.cfi_endproc

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle,@function
alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle:
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
	jb	.LBB4_8
	movq	%rdi, %rbx
	movq	(%rdi), %r8
	leaq	(%r8,%r8), %rax
	cmpq	%rax, %rsi
	cmovaq	%rsi, %rax
	cmpq	$5, %rax
	movl	$4, %r14d
	cmovaeq	%rax, %r14
	leal	7(%rcx), %eax
	andl	$1016, %eax
	xorl	%edi, %edi
	mulq	%r14
	jo	.LBB4_9
	movabsq	$9223372036854775800, %rdx
	cmpq	%rdx, %rax
	ja	.LBB4_11
	testq	%r8, %r8
	jne	.LBB4_5
	xorl	%ecx, %ecx
	jmp	.LBB4_6
.LBB4_5:
	movq	8(%rbx), %rdx
	imulq	%rcx, %r8
	movq	%rdx, 32(%rsp)
	movq	%r8, 48(%rsp)
	movl	$8, %ecx
.LBB4_6:
	movq	%rcx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rcx
	movl	$8, %esi
	movq	%rax, %rdx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB4_10
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_8:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
.LBB4_9:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB4_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB4_11:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end4:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end4-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_0:
	.zero	16,55
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4
	.type	resource_insert,@function
resource_insert:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
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
	movd	%xmm0, 12(%rsp)
	movq	%rdi, %rbx
	movabsq	$-1865750250851032886, %rbp
	movabsq	$8065388401821676653, %r11
	leaq	56(%rdi), %r15
	leaq	1440(%rdi), %rax
	movq	%r15, 112(%rsp)
	movq	%rax, 120(%rsp)
	movq	$0, 88(%rsp)
	movq	$8, 96(%rsp)
	movq	$0, 104(%rsp)
	cmpq	$0, 136(%rdi)
	je	.LBB5_8
	movq	112(%rbx), %rcx
	movq	120(%rbx), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI5_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r11, %rdi
.LBB5_2:
	andq	%rdx, %rdi
	movdqu	(%rcx,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB5_6
.LBB5_3:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rdx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	cmpq	%rbp, -24(%rcx,%r9,8)
	jne	.LBB5_5
	cmpq	%r11, -16(%rcx,%r9,8)
	je	.LBB5_55
.LBB5_5:
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB5_3
	.p2align	4
.LBB5_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB5_8
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB5_2
.LBB5_8:
	movzbl	152(%rbx), %ecx
	movq	216(%rbx), %rcx
	movq	224(%rbx), %rdx
	xorl	%edi, %edi
	pcmpeqd	%xmm0, %xmm0
	movq	%r11, %r8
.LBB5_9:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	.LCPI5_0(%rip), %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB5_13
.LBB5_10:
	rep		bsfl	%r9d, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	movq	%r10, %rsi
	negq	%rsi
	imulq	$112, %rsi, %rsi
	cmpq	%rbp, -112(%rcx,%rsi)
	jne	.LBB5_12
	cmpq	%r11, -104(%rcx,%rsi)
	je	.LBB5_15
.LBB5_12:
	leal	-1(%r9), %esi
	andw	%r9w, %si
	movl	%esi, %r9d
	jne	.LBB5_10
	.p2align	4
.LBB5_13:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %esi
	testl	%esi, %esi
	jne	.LBB5_20
	addq	%rdi, %r8
	addq	$16, %r8
	addq	$16, %rdi
	jmp	.LBB5_9
.LBB5_55:
	leaq	(%rcx,%r9,8), %rax
	movq	-8(%rax), %r14
	jmp	.LBB5_56
.LBB5_15:
	addq	%rcx, %rsi
	imulq	$112, %r10, %r8
	sarq	$4, %r8
	movabsq	$7905747460161236407, %rdi
	imulq	%r8, %rdi
	leaq	-16(%rdi), %r8
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %edx
	movdqu	(%rcx,%rdi), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r9d
	movw	$31, %r10w
	bsrw	%dx, %r10w
	xorl	$15, %r10d
	orl	$65536, %r9d
	rep		bsfl	%r9d, %r9d
	addl	%r10d, %r9d
	movb	$-128, %dl
	cmpw	$15, %r9w
	ja	.LBB5_17
	incq	232(%rbx)
	movb	$-1, %dl
.LBB5_17:
	movb	%dl, (%rcx,%rdi)
	movb	%dl, 16(%rcx,%r8)
	decq	240(%rbx)
	movq	-96(%rsi), %rcx
	cmpq	$2, %rcx
	jne	.LBB5_18
.LBB5_20:
	movq	(%rax), %r14
	leaq	1(%r14), %r12
	movq	%r12, (%rax)
	movw	$256, 80(%rsp)
	movq	$1, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$4, 56(%rsp)
	movq	$4, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$1, 82(%rsp)
	movq	$0, 40(%rsp)
.Ltmp17:
	leaq	128(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
.Ltmp18:
	movq	72(%rbx), %r13
	subq	%r13, %r12
	jbe	.LBB5_22
	movq	(%r15), %rax
	subq	%r13, %rax
	movq	%r13, %rcx
	cmpq	%rax, %r12
	ja	.LBB5_24
.LBB5_26:
	movq	64(%rbx), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%r14, %rsi
	notq	%rsi
	addq	%r13, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB5_27:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB5_27
	subq	%rdi, %rcx
	movq	%rcx, 72(%rbx)
	jmp	.LBB5_29
.LBB5_22:
	movq	64(%rbx), %rax
.LBB5_29:
	leaq	(%r14,%r14,8), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %r15
	cmpl	$2, (%rax,%rcx)
	movabsq	$8065388401821676653, %r13
	je	.LBB5_31
.Ltmp25:
	movq	%r15, %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp26:
.LBB5_31:
	leaq	128(%rsp), %rsi
	movl	$288, %edx
	movq	%r15, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	cmpq	$0, 128(%rbx)
	je	.LBB5_32
.LBB5_33:
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%r13, %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI5_0(%rip), %xmm3
.LBB5_34:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB5_38
.LBB5_35:
	rep		bsfl	%r9d, %r10d
	addq	%rdi, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r11
	cmpq	%rbp, -24(%rax,%r11,8)
	jne	.LBB5_37
	cmpq	%r13, -16(%rax,%r11,8)
	je	.LBB5_51
.LBB5_37:
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB5_35
.LBB5_38:
	cmpq	$1, %r8
	je	.LBB5_45
	pmovmskb	%xmm1, %edx
	testl	%edx, %edx
	je	.LBB5_40
	rep		bsfl	%edx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
.LBB5_45:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r8d
	testl	%r8d, %r8d
	jne	.LBB5_48
	movl	$1, %r8d
	jmp	.LBB5_47
.LBB5_40:
	xorl	%r8d, %r8d
.LBB5_47:
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB5_34
.LBB5_18:
	movups	-88(%rsi), %xmm0
	movdqu	-72(%rsi), %xmm1
	movdqu	-56(%rsi), %xmm2
	movdqu	-40(%rsi), %xmm3
	movdqu	%xmm3, 184(%rsp)
	movdqu	%xmm2, 168(%rsp)
	movdqu	%xmm1, 152(%rsp)
	movups	%xmm0, 136(%rsp)
	movdqu	-24(%rsi), %xmm0
	movq	-8(%rsi), %rax
	movq	%rcx, 128(%rsp)
	movdqu	%xmm0, 200(%rsp)
	movq	%rax, 216(%rsp)
.Ltmp15:
	leaq	128(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
.Ltmp16:
	movq	%rax, %r14
	jmp	.LBB5_56
.LBB5_48:
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB5_49
.LBB5_50:
	andb	$1, %sil
	movzbl	%sil, %esi
	subq	%rsi, 128(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$55, (%rax,%rdx)
	movb	$55, 16(%rax,%rsi)
	incq	136(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%rbp, -24(%rax,%rcx,8)
	movq	%r13, -16(%rax,%rcx,8)
	movq	%rdx, %r10
.LBB5_51:
	leaq	(%r10,%r10,2), %rcx
	movq	%r14, -8(%rax,%rcx,8)
.LBB5_56:
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB5_58
	movq	96(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB5_58:
	movd	12(%rsp), %xmm0
	movd	%xmm0, 88(%rsp)
	movl	1448(%rbx), %ebp
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	64(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	528(%rbx), %r12
	cmpq	%r12, %r14
	jae	.LBB5_63
	movq	520(%rbx), %rdx
	movq	(%rdx,%r14,8), %r15
	testq	%r15, %r15
	je	.LBB5_63
	notq	%r15
	shlq	$6, %r15
	addq	472(%rbx), %r15
	cmpq	$0, 32(%r15)
	jne	.LBB5_62
.LBB5_85:
	cmpq	$0, 24(%r15)
	je	.LBB5_87
	xorl	%edi, %edi
.LBB5_88:
	leaq	1(%rdi), %rax
	movq	%rax, 32(%r15)
	movq	8(%r15), %rdx
	imulq	%rdx, %rdi
	addq	16(%r15), %rdi
	leaq	88(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movl	%ebp, 56(%r15)
	jmp	.LBB5_89
.LBB5_63:
	cmpq	%rcx, %r14
	jae	.LBB5_90
	leaq	(%r14,%r14,8), %rcx
	shlq	$5, %rcx
	cmpl	$2, (%rax,%rcx)
	je	.LBB5_90
	addq	%rcx, %rax
	cmpb	$0, 65(%rax)
	je	.LBB5_92
	movq	40(%rax), %rsi
	movq	48(%rax), %rdx
	movq	56(%rax), %rcx
	leaq	16(%rsp), %rdi
	movl	$1, %r8d
	callq	*bevy_ecs::storage::blob_vec::BlobVec::new@GOTPCREL(%rip)
	movq	%r14, %r13
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 64(%rsp)
	movq	480(%rbx), %r15
	subq	%r12, %r13
	jb	.LBB5_71
	leaq	512(%rbx), %rdi
	incq	%r13
	movq	(%rdi), %rax
	subq	%r12, %rax
	cmpq	%rax, %r13
	ja	.LBB5_68
.LBB5_70:
	leaq	(,%r12,8), %rdi
	addq	520(%rbx), %rdi
	leaq	(,%r13,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%r13, %r12
	movq	%r12, 528(%rbx)
.LBB5_71:
	cmpq	%r12, %r14
	jae	.LBB5_72
	movq	%r15, %rax
	notq	%rax
	movq	520(%rbx), %rcx
	movq	%rax, (%rcx,%r14,8)
	movq	504(%rbx), %r12
	cmpq	488(%rbx), %r12
	jne	.LBB5_77
.Ltmp36:
	leaq	488(%rbx), %rdi
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.3(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp37:
.LBB5_77:
	movq	496(%rbx), %rax
	movq	%r14, (%rax,%r12,8)
	incq	%r12
	movq	%r12, 504(%rbx)
	movdqu	16(%rsp), %xmm0
	movdqu	32(%rsp), %xmm1
	movdqu	48(%rsp), %xmm2
	movdqu	64(%rsp), %xmm3
	movdqa	%xmm3, 176(%rsp)
	movdqa	%xmm2, 160(%rsp)
	movdqa	%xmm1, 144(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movq	480(%rbx), %r14
	cmpq	464(%rbx), %r14
	jne	.LBB5_79
.Ltmp42:
	leaq	464(%rbx), %rdi
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.4(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.Ltmp43:
.LBB5_79:
	movq	472(%rbx), %rax
	movq	%r14, %rcx
	shlq	$6, %rcx
	movdqu	16(%rsp), %xmm0
	movdqu	32(%rsp), %xmm1
	movdqu	48(%rsp), %xmm2
	movdqu	64(%rsp), %xmm3
	movdqu	%xmm3, 48(%rax,%rcx)
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movdqu	%xmm0, (%rax,%rcx)
	incq	%r14
	movq	%r14, 480(%rbx)
	shlq	$6, %r15
	addq	472(%rbx), %r15
	cmpq	$0, 32(%r15)
	je	.LBB5_85
.LBB5_62:
	leaq	88(%rsp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
.LBB5_89:
	movl	%ebp, 60(%r15)
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
.LBB5_90:
	.cfi_def_cfa_offset 480
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.7(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB5_92:
	leaq	11(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	<bevy_utils::debug_info::DebugName as core::fmt::Display>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.10(%rip), %rax
	movq	%rax, 128(%rsp)
	movq	$2, 136(%rsp)
	movq	$0, 160(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	$1, 152(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.11(%rip), %rsi
	leaq	128(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB5_32:
	leaq	112(%rbx), %rdi
	leaq	144(%rbx), %rdx
.Ltmp28:
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
.Ltmp29:
	jmp	.LBB5_33
.LBB5_87:
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::reserve::do_reserve@GOTPCREL(%rip)
	movq	32(%r15), %rdi
	jmp	.LBB5_88
.LBB5_68:
.Ltmp31:
	movl	$8, %ecx
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp32:
	movq	528(%rbx), %r12
	jmp	.LBB5_70
.LBB5_24:
.Ltmp19:
	movl	$288, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
.Ltmp20:
	movq	72(%rbx), %rcx
	jmp	.LBB5_26
.LBB5_49:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB5_50
.LBB5_72:
.Ltmp33:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.5(%rip), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Ltmp34:
	ud2
.LBB5_42:
.Ltmp21:
	movq	%rax, %rbx
.Ltmp22:
	leaq	128(%rsp), %rdi
	callq	core::ptr::drop_in_place<bevy_ecs::component::info::ComponentInfo>
.Ltmp23:
	jmp	.LBB5_53
.LBB5_43:
.Ltmp24:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB5_41:
.Ltmp27:
	movq	%rax, %rbx
	leaq	128(%rsp), %rsi
	movl	$288, %edx
	movq	%r15, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	jmp	.LBB5_53
.LBB5_80:
.Ltmp44:
	movq	%rax, %rbx
.Ltmp45:
	leaq	128(%rsp), %rdi
	callq	*<bevy_ecs::storage::blob_vec::BlobVec as core::ops::drop::Drop>::drop@GOTPCREL(%rip)
.Ltmp46:
	jmp	.LBB5_84
.LBB5_81:
.Ltmp47:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB5_82:
.Ltmp38:
	jmp	.LBB5_83
.LBB5_52:
.Ltmp30:
	movq	%rax, %rbx
.LBB5_53:
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB5_84
	movq	96(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB5_74:
.Ltmp35:
.LBB5_83:
	movq	%rax, %rbx
.Ltmp39:
	leaq	16(%rsp), %rdi
	callq	*<bevy_ecs::storage::blob_vec::BlobVec as core::ops::drop::Drop>::drop@GOTPCREL(%rip)
.Ltmp40:
.LBB5_84:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB5_91:
.Ltmp41:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.Lfunc_end5:
	.size	resource_insert, .Lfunc_end5-resource_insert
	.cfi_endproc
	.section	.gcc_except_table.resource_insert,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255
	.byte	155
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp17-.Lfunc_begin2
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp30-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp25-.Lfunc_begin2
	.uleb128 .Ltmp26-.Ltmp25
	.uleb128 .Ltmp27-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin2
	.uleb128 .Ltmp15-.Ltmp26
	.byte	0
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin2
	.uleb128 .Ltmp16-.Ltmp15
	.uleb128 .Ltmp30-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin2
	.uleb128 .Ltmp36-.Ltmp16
	.byte	0
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin2
	.uleb128 .Ltmp37-.Ltmp36
	.uleb128 .Ltmp38-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp42-.Lfunc_begin2
	.uleb128 .Ltmp43-.Ltmp42
	.uleb128 .Ltmp44-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp43-.Lfunc_begin2
	.uleb128 .Ltmp28-.Ltmp43
	.byte	0
	.byte	0
	.uleb128 .Ltmp28-.Lfunc_begin2
	.uleb128 .Ltmp29-.Ltmp28
	.uleb128 .Ltmp30-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp29-.Lfunc_begin2
	.uleb128 .Ltmp31-.Ltmp29
	.byte	0
	.byte	0
	.uleb128 .Ltmp31-.Lfunc_begin2
	.uleb128 .Ltmp32-.Ltmp31
	.uleb128 .Ltmp35-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin2
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin2
	.uleb128 .Ltmp34-.Ltmp33
	.uleb128 .Ltmp35-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin2
	.uleb128 .Ltmp23-.Ltmp22
	.uleb128 .Ltmp24-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp23-.Lfunc_begin2
	.uleb128 .Ltmp45-.Ltmp23
	.byte	0
	.byte	0
	.uleb128 .Ltmp45-.Lfunc_begin2
	.uleb128 .Ltmp46-.Ltmp45
	.uleb128 .Ltmp47-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp46-.Lfunc_begin2
	.uleb128 .Ltmp39-.Ltmp46
	.byte	0
	.byte	0
	.uleb128 .Ltmp39-.Lfunc_begin2
	.uleb128 .Ltmp40-.Ltmp39
	.uleb128 .Ltmp41-.Lfunc_begin2
	.byte	1
	.uleb128 .Ltmp40-.Lfunc_begin2
	.uleb128 .Lfunc_end5-.Ltmp40
	.byte	0
	.byte	0
.Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.0:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.0, 81

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.1,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.1:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.0
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.1, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.2:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.2, 105

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.3,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.3:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.2
	.asciz	"i\000\000\000\000\000\000\000\003\002\000\000\032\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.3, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.4,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.4:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.2
	.asciz	"i\000\000\000\000\000\000\000\004\002\000\000\030\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.4, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.5,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.5:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.2
	.asciz	"i\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.5, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.6:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/resource.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.6, 103

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.7,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.7:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"g\000\000\000\000\000\000\000g\001\000\000D\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.7, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.8,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.8,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.8:
	.ascii	"Send + Sync resource "
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.8, 21

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.9,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.9,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.9:
	.ascii	" initialized as non_send. It may have been inserted via World::insert_non_send_resource by accident. Try using World::insert_resource instead."
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.9, 142

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.10,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.10:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.8
	.asciz	"\025\000\000\000\000\000\000"
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.9
	.asciz	"\216\000\000\000\000\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.10, 32

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.11,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.11:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"g\000\000\000\000\000\000\000i\001\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.11, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

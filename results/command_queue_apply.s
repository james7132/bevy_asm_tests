	.file	"command_queue_apply.5325a0e37fefcbc7-cgu.0"
	.section	".text.<alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend","ax",@progbits
	.p2align	4
	.type	<alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend,@function
<alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	subq	%rsi, %rbx
	movq	(%rdi), %rax
	movq	16(%rdi), %r15
	subq	%r15, %rax
	cmpq	%rax, %rbx
	ja	.LBB0_1
.LBB0_2:
	movq	8(%r14), %rdi
	addq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	addq	%rbx, %r15
	movq	%r15, 16(%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	movq	%rsi, %r12
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	%r12, %rsi
	movq	16(%r14), %r15
	jmp	.LBB0_2
.Lfunc_end0:
	.size	<alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend, .Lfunc_end0-<alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>","ax",@progbits
	.p2align	4
	.type	core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>,@function
core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
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
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB1_2
.Ltmp0:
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp1:
.LBB1_2:
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_3
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_3:
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_4:
	.cfi_def_cfa_offset 32
.Ltmp2:
	movq	%rax, %r15
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_6
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB1_6:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>, .Lfunc_end1-core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>
	.cfi_endproc
	.section	".gcc_except_table.core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>","a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end1-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	".text.alloc::vec::Vec<T,A>::append_elements","ax",@progbits
	.p2align	4
	.type	alloc::vec::Vec<T,A>::append_elements,@function
alloc::vec::Vec<T,A>::append_elements:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rax
	movq	16(%rdi), %r15
	subq	%r15, %rax
	cmpq	%rax, %rdx
	ja	.LBB2_1
.LBB2_2:
	movq	8(%r14), %rdi
	addq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*memcpy@GOTPCREL(%rip)
	addq	%rbx, %r15
	movq	%r15, 16(%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB2_1:
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	movq	%rsi, %r12
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	%r12, %rsi
	movq	16(%r14), %r15
	jmp	.LBB2_2
.Lfunc_end2:
	.size	alloc::vec::Vec<T,A>::append_elements, .Lfunc_end2-alloc::vec::Vec<T,A>::append_elements
	.cfi_endproc

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
	jb	.LBB4_1
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	cmpq	$9, %rcx
	movl	$8, %r14d
	cmovaeq	%rcx, %r14
	testq	%r14, %r14
	js	.LBB4_1
	testq	%rax, %rax
	jne	.LBB4_5
	xorl	%eax, %eax
	jmp	.LBB4_6
.LBB4_5:
	movq	8(%rbx), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, 48(%rsp)
	movl	$1, %eax
.LBB4_6:
	movq	%rax, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rcx
	movl	$1, %esi
	movq	%r14, %rdx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB4_7
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
.LBB4_1:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
	leaq	.Lanon.f64071cb774cefebe3366eea033ea36d.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB4_7:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	leaq	.Lanon.f64071cb774cefebe3366eea033ea36d.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end4:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end4-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.text.command_queue_apply,"ax",@progbits
	.globl	command_queue_apply
	.p2align	4
	.type	command_queue_apply,@function
command_queue_apply:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	leaq	.Lanon.f64071cb774cefebe3366eea033ea36d.3(%rip), %rsi
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r12, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	16(%rbx), %r15
	movq	48(%rbx), %r14
	movq	%r14, (%rsp)
	movq	%r15, 48(%rbx)
	cmpq	%r15, %r14
	jae	.LBB5_4
	leaq	24(%rbx), %r13
	movq	%rsp, %rbp
	movq	%r14, %rax
	.p2align	4
.LBB5_2:
	movq	8(%rbx), %rcx
	movq	(%rcx,%rax), %r8
	leaq	8(%rax), %rdx
	movq	%rdx, (%rsp)
	leaq	(%rcx,%rax), %rdi
	addq	$8, %rdi
.Ltmp3:
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	*%r8
.Ltmp4:
.LBB5_3:
	movq	(%rsp), %rax
	cmpq	%r15, %rax
	jb	.LBB5_2
	jmp	.LBB5_4
.LBB5_6:
.Ltmp5:
.Ltmp6:
	movq	%rax, %rdi
	callq	*std::panicking::catch_unwind::cleanup@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
.Ltmp7:
	cmpq	$0, 8(%rsp)
	je	.LBB5_3
	movq	16(%rbx), %rdx
	movq	(%rsp), %rsi
	cmpq	%rsi, %rdx
	jb	.LBB5_9
	movq	8(%rbx), %rax
	addq	%rax, %rsi
	addq	%rax, %rdx
.Ltmp9:
	movq	%r13, %rdi
	callq	<alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
.Ltmp10:
	movq	%r14, 16(%rbx)
	movq	%r14, 48(%rbx)
	testq	%r14, %r14
	jne	.LBB5_15
	movq	32(%rbx), %rsi
	movq	40(%rbx), %rdx
.Ltmp11:
	movq	%rbx, %rdi
	callq	alloc::vec::Vec<T,A>::append_elements
.Ltmp12:
	movq	$0, 40(%rbx)
.LBB5_15:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	*std::panic::resume_unwind@GOTPCREL(%rip)
.LBB5_4:
	movq	%r14, 16(%rbx)
	movq	%r14, 48(%rbx)
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
.LBB5_9:
	.cfi_def_cfa_offset 80
.Ltmp13:
	leaq	.Lanon.f64071cb774cefebe3366eea033ea36d.4(%rip), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	*core::slice::index::slice_index_order_fail@GOTPCREL(%rip)
.Ltmp14:
	ud2
.LBB5_16:
.Ltmp15:
	movq	%rax, %rbx
.Ltmp16:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	core::ptr::drop_in_place<alloc::boxed::Box<dyn core::any::Any+core::marker::Send>>
.Ltmp17:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB5_18:
.Ltmp18:
	callq	*core::panicking::panic_in_cleanup@GOTPCREL(%rip)
.LBB5_5:
.Ltmp8:
	callq	*core::panicking::panic_cannot_unwind@GOTPCREL(%rip)
.Lfunc_end5:
	.size	command_queue_apply, .Lfunc_end5-command_queue_apply
	.cfi_endproc
	.section	.gcc_except_table.command_queue_apply,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1
	.uleb128 .Ltmp3-.Lfunc_begin1
	.byte	0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin1
	.uleb128 .Ltmp4-.Ltmp3
	.uleb128 .Ltmp5-.Lfunc_begin1
	.byte	3
	.uleb128 .Ltmp6-.Lfunc_begin1
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp9-.Lfunc_begin1
	.uleb128 .Ltmp12-.Ltmp9
	.uleb128 .Ltmp15-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp12-.Lfunc_begin1
	.uleb128 .Ltmp13-.Ltmp12
	.byte	0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin1
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp16-.Lfunc_begin1
	.uleb128 .Ltmp17-.Ltmp16
	.uleb128 .Ltmp18-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp17-.Lfunc_begin1
	.uleb128 .Lfunc_end5-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.byte	1
	.byte	0
	.p2align	2, 0x0
	.long	0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.f64071cb774cefebe3366eea033ea36d.0:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.0, 81

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.1,@object
	.section	.data.rel.ro..Lanon.f64071cb774cefebe3366eea033ea36d.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.f64071cb774cefebe3366eea033ea36d.1:
	.quad	.Lanon.f64071cb774cefebe3366eea033ea36d.0
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.1, 24

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.f64071cb774cefebe3366eea033ea36d.2:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.2, 106

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.3,@object
	.section	.data.rel.ro..Lanon.f64071cb774cefebe3366eea033ea36d.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.f64071cb774cefebe3366eea033ea36d.3:
	.quad	.Lanon.f64071cb774cefebe3366eea033ea36d.2
	.asciz	"j\000\000\000\000\000\000\000W\000\000\000\017\000\000"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.3, 24

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.4,@object
	.section	.data.rel.ro..Lanon.f64071cb774cefebe3366eea033ea36d.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.f64071cb774cefebe3366eea033ea36d.4:
	.quad	.Lanon.f64071cb774cefebe3366eea033ea36d.2
	.asciz	"j\000\000\000\000\000\000\000\033\001\000\000<\000\000"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.4, 24

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

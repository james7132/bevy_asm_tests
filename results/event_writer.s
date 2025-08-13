	.file	"event_writer.d2ec1b3ce9809b23-cgu.0"
	.section	.text.unlikely.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::finish_grow,@function
alloc::raw_vec::finish_grow:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$0, 8(%rcx)
	je	.LBB0_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB0_7
.LBB0_3:
	testq	%rbx, %rbx
	je	.LBB0_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB0_7
.LBB0_4:
	movq	%r15, %rax
.LBB0_7:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmovneq	%rax, %r15
	sete	%cl
	movq	%r15, 8(%r14)
	movq	%rbx, 16(%r14)
	movq	%rcx, (%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end0-alloc::raw_vec::finish_grow

	.section	".text.alloc::raw_vec::RawVec<T,A>::grow_one","ax",@progbits
	.globl	alloc::raw_vec::RawVec<T,A>::grow_one
	.p2align	4
	.type	alloc::raw_vec::RawVec<T,A>::grow_one,@function
alloc::raw_vec::RawVec<T,A>::grow_one:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	testq	%rax, %rax
	movl	$1, %edx
	cmovneq	%rcx, %rdx
	cmpq	$5, %rdx
	movl	$4, %r15d
	cmovaeq	%rdx, %r15
	xorl	%edi, %edi
	shrq	$60, %rdx
	jne	.LBB1_1
	movq	%r15, %rdx
	shlq	$4, %rdx
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rdx
	ja	.LBB1_8
	testq	%rax, %rax
	jne	.LBB1_5
	xorl	%eax, %eax
	jmp	.LBB1_6
.LBB1_5:
	movq	8(%r14), %rcx
	shlq	$4, %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 40(%rsp)
	movl	$8, %eax
.LBB1_6:
	movq	%rax, 32(%rsp)
	movq	%rsp, %rdi
	leaq	24(%rsp), %rcx
	movl	$8, %esi
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, (%rsp)
	je	.LBB1_7
	movq	8(%rsp), %rax
	movq	%rax, 8(%r14)
	movq	%r15, (%r14)
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:
	.cfi_def_cfa_offset 80
	movq	%rbx, %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB1_7:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
.LBB1_8:
	movq	%rbx, %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end1:
	.size	alloc::raw_vec::RawVec<T,A>::grow_one, .Lfunc_end1-alloc::raw_vec::RawVec<T,A>::grow_one
	.cfi_endproc

	.section	.text.event_writer,"ax",@progbits
	.globl	event_writer
	.p2align	4
	.type	event_writer,@function
event_writer:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	28(%rdi), %eax
	movq	16(%rdi), %rcx
	movl	%eax, (%rcx)
	movq	(%rdi), %rbx
	movq	48(%rbx), %r15
	movq	64(%rbx), %r14
	cmpq	32(%rbx), %r15
	jne	.LBB2_2
	leaq	32(%rbx), %rdi
	leaq	.Lanon.149b4dcd263d693906737b881a8ca959.1(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB2_2:
	movq	40(%rbx), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	%r14, (%rax,%rcx)
	movl	$0, 8(%rax,%rcx)
	incq	%r15
	movq	%r15, 48(%rbx)
	incq	64(%rbx)
	movq	%r14, 8(%rsp)
	leaq	8(%rsp), %rax
	#APP
	#NO_APP
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	event_writer, .Lfunc_end2-event_writer
	.cfi_endproc

	.type	.Lanon.149b4dcd263d693906737b881a8ca959.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.149b4dcd263d693906737b881a8ca959.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/event/collections.rs"
	.size	.Lanon.149b4dcd263d693906737b881a8ca959.0, 104

	.type	.Lanon.149b4dcd263d693906737b881a8ca959.1,@object
	.section	.data.rel.ro..Lanon.149b4dcd263d693906737b881a8ca959.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.149b4dcd263d693906737b881a8ca959.1:
	.quad	.Lanon.149b4dcd263d693906737b881a8ca959.0
	.asciz	"h\000\000\000\000\000\000\000\214\000\000\000\027\000\000"
	.size	.Lanon.149b4dcd263d693906737b881a8ca959.1, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

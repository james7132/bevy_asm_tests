	.file	"event_reader.e2cc235b1f533352-cgu.0"
	.section	.text.event_reader,"ax",@progbits
	.globl	event_reader
	.p2align	4
	.type	event_reader,@function
event_reader:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	8(%rdi), %r8
	movq	(%rax), %r10
	xorl	%r9d, %r9d
	movq	%r10, %rdx
	subq	24(%r8), %rdx
	cmovbq	%r9, %rdx
	subq	56(%r8), %r10
	cmovbq	%r9, %r10
	movq	%rdx, %rdi
	shlq	$4, %rdi
	addq	8(%r8), %rdi
	movq	16(%r8), %rcx
	subq	%rdx, %rcx
	cmovbq	%r9, %rcx
	movl	$8, %r11d
	cmovbq	%r11, %rdi
	movq	%r10, %rdx
	shlq	$4, %rdx
	addq	40(%r8), %rdx
	movq	48(%r8), %rsi
	subq	%r10, %rsi
	cmovbq	%r11, %rdx
	cmovbq	%r9, %rsi
	movq	64(%r8), %r8
	subq	%rsi, %r8
	subq	%rcx, %r8
	movq	%r8, (%rax)
	shlq	$4, %rcx
	addq	%rdi, %rcx
	shlq	$4, %rsi
	addq	%rdx, %rsi
	leaq	-8(%rsp), %r8
	jmp	.LBB0_1
	.p2align	4
.LBB0_3:
	leaq	16(%rdi), %r9
.LBB0_7:
	incq	(%rax)
	addq	$8, %rdi
	movq	%rdi, -8(%rsp)
	#APP
	#NO_APP
	movq	%r9, %rdi
.LBB0_1:
	testq	%rdi, %rdi
	je	.LBB0_4
	cmpq	%rcx, %rdi
	jne	.LBB0_3
.LBB0_4:
	testq	%rdx, %rdx
	je	.LBB0_8
	cmpq	%rsi, %rdx
	je	.LBB0_8
	movq	%rdx, %rdi
	addq	$16, %rdx
	xorl	%r9d, %r9d
	jmp	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	event_reader, .Lfunc_end0-event_reader
	.cfi_endproc

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

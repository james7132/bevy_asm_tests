	.text
	.file	"event_reader.a8563a8c55e2ba2-cgu.0"
	.section	.text.event_reader,"ax",@progbits
	.globl	event_reader
	.p2align	4, 0x90
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
	addq	(%r8), %rdi
	movq	16(%r8), %rcx
	subq	%rdx, %rcx
	cmovbq	%r9, %rcx
	movq	48(%r8), %rdx
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.0(%rip), %r11
	cmovbq	%r11, %rdi
	movq	%r10, %rsi
	shlq	$4, %rsi
	addq	32(%r8), %rsi
	cmpq	%rdx, %r10
	cmovaq	%r11, %rsi
	subq	%r10, %rdx
	cmovbq	%r9, %rdx
	movq	64(%r8), %r8
	subq	%rdx, %r8
	subq	%rcx, %r8
	movq	%r8, (%rax)
	shlq	$4, %rcx
	addq	%rdi, %rcx
	shlq	$4, %rdx
	addq	%rsi, %rdx
	leaq	-8(%rsp), %r8
	jmp	.LBB0_1
	.p2align	4, 0x90
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
	testq	%rsi, %rsi
	je	.LBB0_8
	cmpq	%rdx, %rsi
	je	.LBB0_8
	movq	%rsi, %rdi
	addq	$16, %rsi
	xorl	%r9d, %r9d
	jmp	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	event_reader, .Lfunc_end0-event_reader
	.cfi_endproc

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.0,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.5729158841f6a0a43c5f462d65065398.0:
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.0, 0

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

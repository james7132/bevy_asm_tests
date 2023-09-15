	.text
	.file	"event_reader.5f1b1415aff01095-cgu.0"
	.section	.text.event_reader,"ax",@progbits
	.globl	event_reader
	.p2align	4, 0x90
	.type	event_reader,@function
event_reader:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	movq	(%rax), %r9
	xorl	%r8d, %r8d
	movq	%r9, %rsi
	subq	24(%rdi), %rsi
	cmovbq	%r8, %rsi
	subq	56(%rdi), %r9
	cmovbq	%r8, %r9
	movq	%rsi, %rdx
	shlq	$4, %rdx
	addq	(%rdi), %rdx
	movq	16(%rdi), %rcx
	subq	%rsi, %rcx
	cmovbq	%r8, %rcx
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.0(%rip), %r10
	cmovbq	%r10, %rdx
	movq	%r9, %r11
	shlq	$4, %r11
	addq	32(%rdi), %r11
	movq	48(%rdi), %rsi
	subq	%r9, %rsi
	cmovbq	%r10, %r11
	cmovbq	%r8, %rsi
	movq	64(%rdi), %rdi
	subq	%rsi, %rdi
	subq	%rcx, %rdi
	movq	%rdi, (%rax)
	shlq	$4, %rcx
	addq	%rdx, %rcx
	shlq	$4, %rsi
	addq	%r11, %rsi
	movq	%rdx, -24(%rsp)
	movq	%r11, -16(%rsp)
	leaq	-16(%rsp), %rdi
	leaq	-8(%rsp), %r8
	leaq	-24(%rsp), %r9
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_7:
	leaq	16(%rdx), %r11
	movq	%r11, (%r10)
	incq	(%rax)
	addq	$8, %rdx
	movq	%rdx, -8(%rsp)
	#APP
	#NO_APP
	movq	-24(%rsp), %rdx
.LBB0_1:
	testq	%rdx, %rdx
	je	.LBB0_4
	movq	%r9, %r10
	cmpq	%rcx, %rdx
	jne	.LBB0_7
	movq	$0, -24(%rsp)
.LBB0_4:
	movq	-16(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB0_6
	movq	%rdi, %r10
	cmpq	%rsi, %rdx
	jne	.LBB0_7
.LBB0_6:
	retq
.Lfunc_end0:
	.size	event_reader, .Lfunc_end0-event_reader
	.cfi_endproc

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.0,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.5729158841f6a0a43c5f462d65065398.0:
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.0, 0

	.section	".note.GNU-stack","",@progbits

	.text
	.file	"event_reader.2af838f9-cgu.0"
	.section	.text.event_reader,"ax",@progbits
	.globl	event_reader
	.p2align	4, 0x90
	.type	event_reader,@function
event_reader:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %r8
	movq	32(%rdi), %rax
	movq	(%rax), %rdi
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	subq	(%r8), %rdx
	cmovbq	%r9, %rdx
	subq	32(%r8), %rdi
	cmovbq	%r9, %rdi
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	16(%r8), %rsi
	movq	24(%r8), %rcx
	subq	%rdx, %rcx
	cmovbq	%r9, %rcx
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.0(%rip), %r11
	cmovbq	%r11, %rsi
	movq	%rdi, %rdx
	shlq	$4, %rdx
	addq	48(%r8), %rdx
	movq	56(%r8), %r10
	subq	%rdi, %r10
	cmovbq	%r11, %rdx
	cmovbq	%r9, %r10
	movq	64(%r8), %r8
	subq	%r10, %r8
	subq	%rcx, %r8
	movq	%r8, (%rax)
	shlq	$4, %rcx
	addq	%rsi, %rcx
	shlq	$4, %r10
	addq	%rdx, %r10
	movq	%rsp, %r8
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:
	leaq	16(%rsi), %rdi
.LBB0_7:
	incq	(%rax)
	addq	$8, %rsi
	movq	%rsi, (%rsp)
	#APP
	#NO_APP
	movq	%rdi, %rsi
.LBB0_1:
	testq	%rsi, %rsi
	je	.LBB0_4
	cmpq	%rcx, %rsi
	jne	.LBB0_3
.LBB0_4:
	testq	%rdx, %rdx
	je	.LBB0_8
	cmpq	%r10, %rdx
	je	.LBB0_8
	movq	%rdx, %rsi
	addq	$16, %rdx
	xorl	%edi, %edi
	jmp	.LBB0_7
.LBB0_8:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	event_reader, .Lfunc_end0-event_reader
	.cfi_endproc

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.0,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.0,"a",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.0:
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.0, 0

	.section	".note.GNU-stack","",@progbits

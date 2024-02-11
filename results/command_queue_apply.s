	.text
	.file	"command_queue_apply.4bb41cbbdd0c62c2-cgu.0"
	.section	.text.command_queue_apply,"ax",@progbits
	.globl	command_queue_apply
	.p2align	4, 0x90
	.type	command_queue_apply,@function
command_queue_apply:
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	*bevy_ecs::world::World::flush@GOTPCREL(%rip)
	movq	(%r14), %r15
	movq	16(%r14), %r12
	movq	$0, 16(%r14)
	testq	%r12, %r12
	jle	.LBB0_3
	addq	%r15, %r12
	.p2align	4, 0x90
.LBB0_2:
	leaq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	*(%r15)
	addq	%rax, %r15
	addq	$8, %r15
	cmpq	%r12, %r15
	jb	.LBB0_2
.LBB0_3:
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
.Lfunc_end0:
	.size	command_queue_apply, .Lfunc_end0-command_queue_apply
	.cfi_endproc

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

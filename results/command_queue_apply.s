	.file	"command_queue_apply.e83bb1cf75422232-cgu.0"
	.section	.text.command_queue_apply,"ax",@progbits
	.globl	command_queue_apply
	.p2align	4
	.type	command_queue_apply,@function
command_queue_apply:
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	.Lanon.f64071cb774cefebe3366eea033ea36d.1(%rip), %rsi
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_entities@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	*bevy_ecs::world::World::flush_commands@GOTPCREL(%rip)
	movq	16(%rbx), %r13
	movq	48(%rbx), %r12
	cmpq	%r13, %r12
	jae	.LBB0_3
	movq	8(%rbx), %rbp
	movq	%rsp, %r15
	movq	%r12, %rax
	.p2align	4
.LBB0_2:
	movq	(%rbp,%rax), %rcx
	leaq	8(%rax), %rdx
	movq	%rdx, (%rsp)
	leaq	(%rax,%rbp), %rdi
	addq	$8, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%rcx
	movq	(%rsp), %rax
	cmpq	%r13, %rax
	jb	.LBB0_2
.LBB0_3:
	movq	%r12, 16(%rbx)
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
.Lfunc_end0:
	.size	command_queue_apply, .Lfunc_end0-command_queue_apply
	.cfi_endproc

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.f64071cb774cefebe3366eea033ea36d.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/ed0f047/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.0, 106

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.1,@object
	.section	.data.rel.ro..Lanon.f64071cb774cefebe3366eea033ea36d.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.f64071cb774cefebe3366eea033ea36d.1:
	.quad	.Lanon.f64071cb774cefebe3366eea033ea36d.0
	.asciz	"i\000\000\000\000\000\000\000f\000\000\000\017\000\000"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.1, 24

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

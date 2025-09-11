	.file	"command_queue_apply.f21f8ca77a12ae7d-cgu.0"
	.section	.text.command_queue_apply,"ax",@progbits
	.globl	command_queue_apply
	.p2align	4
	.type	command_queue_apply,@function
command_queue_apply:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
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
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	command_queue_apply, .Lfunc_end0-command_queue_apply

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.f64071cb774cefebe3366eea033ea36d.0:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-91340e2100a853f9/b051573/crates/bevy_ecs/src/world/command_queue.rs"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.0, 106

	.type	.Lanon.f64071cb774cefebe3366eea033ea36d.1,@object
	.section	.data.rel.ro..Lanon.f64071cb774cefebe3366eea033ea36d.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.f64071cb774cefebe3366eea033ea36d.1:
	.quad	.Lanon.f64071cb774cefebe3366eea033ea36d.0
	.asciz	"j\000\000\000\000\000\000\000W\000\000\000\017\000\000"
	.size	.Lanon.f64071cb774cefebe3366eea033ea36d.1, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

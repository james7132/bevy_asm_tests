	.text
	.file	"query_get.defe3bb1-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	(%rdi), %r13
	movq	8(%rdi), %r14
	movl	16(%rdi), %r15d
	movl	20(%rdi), %r12d
	movq	%rsp, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	movl	%ebp, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	cmpl	$0, (%rsp)
	je	.LBB0_4
	movl	4(%rsp), %eax
	movq	%rax, %rcx
	shrq	$5, %rcx
	cmpq	72(%r14), %rcx
	jae	.LBB0_6
	movq	64(%r14), %rdx
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jae	.LBB0_6
	movl	12(%rsp), %ebx
	movl	16(%rsp), %ebp
	leaq	352(%r14), %rsi
	movq	%r13, %rdi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::init_fetch@GOTPCREL(%rip)
	movq	304(%r13), %rax
	leaq	(%rbx,%rbx,8), %rcx
	movq	336(%r14), %rdx
	movq	344(%r14), %rsi
	movq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rax
	shlq	$4, %rdx
	movq	8(%rax,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	shlq	$4, %rsi
	movq	8(%rax,%rsi), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$5, %rdx
	shlq	$2, %rbp
	movq	40(%rdi,%rcx), %rax
	addq	%rbp, %rax
	movq	56(%rdi,%rcx), %rbx
	addq	%rbp, %rbx
	movq	80(%rdi,%rcx), %rcx
	addq	%rbp, %rcx
	addq	40(%rdi,%rdx), %rbp
	jmp	.LBB0_8
.LBB0_6:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_4:
	movl	$1, %eax
.LBB0_7:
	shlq	$32, %rbx
	orq	%rax, %rbx
	movl	%ebp, %ecx
	xorl	%eax, %eax
.LBB0_8:
	movq	%rsp, %rdx
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 28(%rsp)
	movq	%rbp, 32(%rsp)
	#APP
	#NO_APP
	addq	$40, %rsp
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
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

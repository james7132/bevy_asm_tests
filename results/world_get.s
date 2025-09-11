	.file	"world_get.9a797bcd79a79c55-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,110
	.section	.text.world_get,"ax",@progbits
	.globl	world_get
	.p2align	4
	.type	world_get,@function
world_get:
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
	movl	%esi, %eax
	notl	%eax
	cmpq	%rax, 16(%rdi)
	jbe	.LBB0_14
	shrq	$32, %rsi
	movq	8(%rdi), %rcx
	leaq	(%rax,%rax,2), %rax
	cmpl	%esi, 16(%rcx,%rax,8)
	jne	.LBB0_14
	leaq	(%rcx,%rax,8), %rax
	cmpl	$0, (%rax)
	je	.LBB0_14
	cmpq	$0, 104(%rdi)
	je	.LBB0_14
	movl	4(%rax), %r15d
	movl	12(%rax), %eax
	movl	1448(%rdi), %r13d
	movl	1452(%rdi), %ebp
	movabsq	$-2548271346467615167, %rdx
	movq	80(%rdi), %rcx
	movq	88(%rdi), %rsi
	xorl	%ebx, %ebx
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-7946021563690567857, %r8
	movq	%rdx, %r9
	xorl	%r10d, %r10d
.LBB0_5:
	andq	%rsi, %r9
	movdqu	(%rcx,%r9), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB0_9
.LBB0_6:
	rep		bsfl	%r11d, %r14d
	addq	%r9, %r14
	andq	%rsi, %r14
	negq	%r14
	leaq	(%r14,%r14,2), %r14
	cmpq	%r8, -24(%rcx,%r14,8)
	jne	.LBB0_8
	cmpq	%rdx, -16(%rcx,%r14,8)
	je	.LBB0_11
.LBB0_8:
	leal	-1(%r11), %r14d
	andw	%r11w, %r14w
	movl	%r14d, %r11d
	jne	.LBB0_6
.LBB0_9:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB0_15
	addq	%r10, %r9
	addq	$16, %r9
	addq	$16, %r10
	jmp	.LBB0_5
.LBB0_11:
	cmpq	%rax, 424(%rdi)
	jbe	.LBB0_14
	leaq	(%rcx,%r14,8), %rcx
	movl	%r15d, %r14d
	movq	-8(%rcx), %r15
	leaq	(%rax,%rax,8), %r12
	shlq	$3, %r12
	addq	416(%rdi), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	*bevy_ecs::storage::table::Table::get_component@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_14
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	*bevy_ecs::storage::table::Table::get_added_tick@GOTPCREL(%rip)
	movl	%r14d, %edx
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*bevy_ecs::storage::table::Table::get_changed_tick@GOTPCREL(%rip)
	jmp	.LBB0_16
.LBB0_14:
	xorl	%ebx, %ebx
.LBB0_15:
.LBB0_16:
	movq	%rbx, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	%rax, 24(%rsp)
	movl	%ebp, 32(%rsp)
	movl	%r13d, 36(%rsp)
	leaq	8(%rsp), %rax
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
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

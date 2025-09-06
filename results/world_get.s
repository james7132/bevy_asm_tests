	.file	"world_get.1dbcda46c86773ec-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,109
.LCPI0_1:
	.byte	86
	.byte	126
	.byte	158
	.byte	150
	.byte	111
	.byte	102
	.byte	244
	.byte	110
	.byte	103
	.byte	212
	.byte	169
	.byte	230
	.byte	220
	.byte	102
	.byte	61
	.byte	218
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
	cmpq	16(%rdi), %rax
	jae	.LBB0_13
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	8(%rdi), %rax
	shrq	$32, %rsi
	cmpl	%esi, 16(%rax)
	jne	.LBB0_13
	cmpl	$0, (%rax)
	je	.LBB0_13
	cmpq	$0, 104(%rdi)
	je	.LBB0_13
	movl	4(%rax), %r15d
	movl	12(%rax), %eax
	movl	1448(%rdi), %r13d
	movl	1452(%rdi), %ebp
	movq	80(%rdi), %rcx
	movq	88(%rdi), %rdx
	leaq	-24(%rcx), %rsi
	movabsq	$-2720905500913183641, %r8
	xorl	%ebx, %ebx
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm2
	xorl	%r9d, %r9d
.LBB0_5:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r10d
	testl	%r10d, %r10d
	je	.LBB0_8
.LBB0_6:
	rep		bsfl	%r10d, %r11d
	addq	%r8, %r11
	andq	%rdx, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r11
	movdqu	(%rsi,%r11,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r14d
	cmpl	$65535, %r14d
	je	.LBB0_10
	leal	-1(%r10), %r11d
	andw	%r10w, %r11w
	movl	%r11d, %r10d
	jne	.LBB0_6
.LBB0_8:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	jne	.LBB0_14
	addq	%r9, %r8
	addq	$16, %r8
	addq	$16, %r9
	jmp	.LBB0_5
.LBB0_10:
	cmpq	%rax, 424(%rdi)
	jbe	.LBB0_13
	movl	%r15d, %r14d
	movq	-8(%rcx,%r11,8), %r15
	leaq	(%rax,%rax,8), %r12
	shlq	$3, %r12
	addq	416(%rdi), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	*bevy_ecs::storage::table::Table::get_component@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_13
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
	jmp	.LBB0_15
.LBB0_13:
	xorl	%ebx, %ebx
.LBB0_14:
.LBB0_15:
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

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

	.file	"resource_get.affcf6f79e56c1d7-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,90
.LCPI0_1:
	.byte	192
	.byte	227
	.byte	4
	.byte	244
	.byte	98
	.byte	21
	.byte	8
	.byte	19
	.byte	125
	.byte	12
	.byte	26
	.byte	84
	.byte	29
	.byte	246
	.byte	84
	.byte	180
	.section	.text.resource_get,"ax",@progbits
	.globl	resource_get
	.p2align	4
	.type	resource_get,@function
resource_get:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rax
	cmpq	$0, 136(%rsi)
	je	.LBB0_11
	movq	112(%rsi), %rcx
	movq	120(%rsi), %rdx
	leaq	-24(%rcx), %rdi
	movabsq	$-5452462643013350275, %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm2
.LBB0_2:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r10d
	testl	%r10d, %r10d
	je	.LBB0_5
.LBB0_3:
	rep		bsfl	%r10d, %r11d
	addq	%r8, %r11
	andq	%rdx, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r11
	movdqu	(%rdi,%r11,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %ebx
	cmpl	$65535, %ebx
	je	.LBB0_7
	leal	-1(%r10), %r11d
	andw	%r10w, %r11w
	movl	%r11d, %r10d
	jne	.LBB0_3
	.p2align	4
.LBB0_5:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r10d
	testl	%r10d, %r10d
	jne	.LBB0_11
	addq	%r9, %r8
	addq	$16, %r8
	addq	$16, %r9
	jmp	.LBB0_2
.LBB0_7:
	movq	-8(%rcx,%r11,8), %rcx
	cmpq	528(%rsi), %rcx
	jae	.LBB0_11
	movq	520(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_11
	movq	472(%rsi), %rcx
	notq	%rdx
	imulq	$56, %rdx, %rdx
	cmpb	$0, 48(%rcx,%rdx)
	je	.LBB0_11
	addq	%rdx, %rcx
	movq	16(%rcx), %rdx
	leaq	40(%rcx), %rdi
	addq	$44, %rcx
	movl	1452(%rsi), %r8d
	movl	1448(%rsi), %esi
	movq	%rdx, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rcx, 16(%rax)
	movl	%r8d, 24(%rax)
	movl	%esi, 28(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_11:
	.cfi_def_cfa_offset 16
	movq	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	resource_get, .Lfunc_end0-resource_get
	.cfi_endproc

	.ident	"rustc version 1.92.0-nightly (2cb4e7dce 2025-10-04)"
	.section	".note.GNU-stack","",@progbits

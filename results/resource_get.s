	.text
	.file	"resource_get.5367997d3910c307-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,1
.LCPI0_1:
	.byte	112
	.byte	28
	.byte	31
	.byte	31
	.byte	1
	.byte	169
	.byte	128
	.byte	2
	.byte	198
	.byte	240
	.byte	243
	.byte	111
	.byte	206
	.byte	108
	.byte	134
	.byte	158
	.section	.text.resource_get,"ax",@progbits
	.globl	resource_get
	.p2align	4, 0x90
	.type	resource_get,@function
resource_get:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rax
	cmpq	$0, 144(%rsi)
	je	.LBB0_11
	movq	120(%rsi), %rcx
	movq	128(%rsi), %rdx
	leaq	-24(%rcx), %rdi
	movabsq	$238141458951433520, %r8
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
	.p2align	4, 0x90
.LBB0_3:
	testw	%r10w, %r10w
	je	.LBB0_4
	leal	-1(%r10), %ebx
	andl	%r10d, %ebx
	rep		bsfl	%r10d, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r11
	movdqu	(%rdi,%r11,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %ebp
	movl	%ebx, %r10d
	cmpl	$65535, %ebp
	jne	.LBB0_3
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_4:
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
	cmpq	%rcx, 408(%rsi)
	jbe	.LBB0_11
	movq	392(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_11
	shlq	$4, %rcx
	cmpq	$0, (%rdi,%rcx)
	je	.LBB0_11
	movq	344(%rsi), %rdx
	movq	8(%rdi,%rcx), %rcx
	movq	%rcx, %rdi
	shlq	$7, %rdi
	leaq	(%rdi,%rcx,8), %rcx
	cmpq	$0, 32(%rdx,%rcx)
	je	.LBB0_11
	addq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	48(%rdx), %rdi
	movq	72(%rdx), %rdx
	movl	764(%rsi), %r8d
	movl	760(%rsi), %esi
	movq	%rcx, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rdx, 16(%rax)
	movl	%r8d, 24(%rax)
	movl	%esi, 28(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_11:
	.cfi_def_cfa_offset 24
	movq	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	resource_get, .Lfunc_end0-resource_get
	.cfi_endproc

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

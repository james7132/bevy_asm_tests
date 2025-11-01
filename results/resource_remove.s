	.file	"resource_remove.de908de2bd6e7bc3-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,99
.LCPI0_1:
	.byte	137
	.byte	34
	.byte	155
	.byte	229
	.byte	9
	.byte	127
	.byte	6
	.byte	39
	.byte	232
	.byte	105
	.byte	183
	.byte	217
	.byte	193
	.byte	12
	.byte	84
	.byte	198
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4
	.type	resource_insert,@function
resource_insert:
	.cfi_startproc
	cmpq	$0, 136(%rdi)
	je	.LBB0_1
	movq	112(%rdi), %rcx
	movq	120(%rdi), %rdx
	leaq	-24(%rcx), %rsi
	movabsq	$-4155682529435227672, %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm1
	pcmpeqd	%xmm2, %xmm2
	movdqa	.LCPI0_1(%rip), %xmm3
.LBB0_5:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm0
	movdqa	%xmm0, %xmm4
	pcmpeqb	%xmm1, %xmm4
	pmovmskb	%xmm4, %eax
	testl	%eax, %eax
	je	.LBB0_8
.LBB0_6:
	rep		bsfl	%eax, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movdqu	(%rsi,%r10,8), %xmm4
	pcmpeqb	%xmm3, %xmm4
	pmovmskb	%xmm4, %r11d
	cmpl	$65535, %r11d
	je	.LBB0_10
	leal	-1(%rax), %r10d
	andw	%ax, %r10w
	movl	%r10d, %eax
	jne	.LBB0_6
	.p2align	4
.LBB0_8:
	pcmpeqb	%xmm2, %xmm0
	pmovmskb	%xmm0, %r10d
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jne	.LBB0_3
	addq	%r9, %r8
	addq	$16, %r8
	addq	$16, %r9
	jmp	.LBB0_5
.LBB0_10:
	movq	-8(%rcx,%r10,8), %rcx
	xorl	%eax, %eax
	cmpq	528(%rdi), %rcx
	jae	.LBB0_2
	movq	520(%rdi), %rdx
	movq	(%rdx,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_2
	movq	472(%rdi), %rcx
	notq	%rdx
	imulq	$56, %rdx, %rdx
	cmpb	$1, 48(%rcx,%rdx)
	jne	.LBB0_3
	addq	%rdx, %rcx
	movb	$0, 48(%rcx)
	movq	16(%rcx), %rax
	movss	(%rax), %xmm0
	movl	$1, %eax
	retq
.LBB0_1:
	xorl	%eax, %eax
.LBB0_2:
.LBB0_3:
	retq
.Lfunc_end0:
	.size	resource_insert, .Lfunc_end0-resource_insert
	.cfi_endproc

	.ident	"rustc version 1.93.0-nightly (82ae0ee64 2025-10-31)"
	.section	".note.GNU-stack","",@progbits

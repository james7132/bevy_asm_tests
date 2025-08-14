	.file	"resource_remove.f0218e9d0446910b-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,119
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4
	.type	resource_insert,@function
resource_insert:
	cmpq	$0, 136(%rdi)
	je	.LBB0_1
	movabsq	$-1206908914721681528, %rdx
	movq	112(%rdi), %rcx
	movq	120(%rdi), %rsi
	xorl	%r8d, %r8d
	movdqa	.LCPI0_0(%rip), %xmm1
	pcmpeqd	%xmm2, %xmm2
	movabsq	$-8874904863680095772, %r9
	movq	%rdx, %r10
.LBB0_5:
	andq	%rsi, %r10
	movdqu	(%rcx,%r10), %xmm0
	movdqa	%xmm0, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %eax
	testl	%eax, %eax
	je	.LBB0_9
.LBB0_6:
	rep		bsfl	%eax, %r11d
	addq	%r10, %r11
	andq	%rsi, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r11
	cmpq	%r9, -24(%rcx,%r11,8)
	jne	.LBB0_8
	cmpq	%rdx, -16(%rcx,%r11,8)
	je	.LBB0_11
.LBB0_8:
	leal	-1(%rax), %r11d
	andw	%ax, %r11w
	movl	%r11d, %eax
	jne	.LBB0_6
	.p2align	4
.LBB0_9:
	pcmpeqb	%xmm2, %xmm0
	pmovmskb	%xmm0, %r11d
	xorl	%eax, %eax
	testl	%r11d, %r11d
	jne	.LBB0_3
	addq	%r8, %r10
	addq	$16, %r10
	addq	$16, %r8
	jmp	.LBB0_5
.LBB0_11:
	leaq	(%rcx,%r11,8), %rax
	movq	-8(%rax), %rcx
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
	movq	16(%rcx), %rax
	movb	$0, 48(%rcx)
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

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

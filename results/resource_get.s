	.file	"resource_get.db3329db97447095-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,53
	.section	.text.resource_get,"ax",@progbits
	.globl	resource_get
	.p2align	4
	.type	resource_get,@function
resource_get:
	pushq	%rbx
	movq	%rdi, %rax
	cmpq	$0, 136(%rsi)
	je	.LBB0_12
	movabsq	$7782078152620641532, %rdx
	movq	112(%rsi), %rcx
	movq	120(%rsi), %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$4348043799489247969, %r9
	movq	%rdx, %r10
.LBB0_2:
	andq	%rdi, %r10
	movdqu	(%rcx,%r10), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r11d
	testl	%r11d, %r11d
	je	.LBB0_6
.LBB0_3:
	rep		bsfl	%r11d, %ebx
	addq	%r10, %rbx
	andq	%rdi, %rbx
	negq	%rbx
	leaq	(%rbx,%rbx,2), %rbx
	cmpq	%r9, -24(%rcx,%rbx,8)
	jne	.LBB0_5
	cmpq	%rdx, -16(%rcx,%rbx,8)
	je	.LBB0_8
.LBB0_5:
	leal	-1(%r11), %ebx
	andw	%r11w, %bx
	movl	%ebx, %r11d
	jne	.LBB0_3
	.p2align	4
.LBB0_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r11d
	testl	%r11d, %r11d
	jne	.LBB0_12
	addq	%r8, %r10
	addq	$16, %r10
	addq	$16, %r8
	jmp	.LBB0_2
.LBB0_8:
	leaq	(%rcx,%rbx,8), %rcx
	movq	-8(%rcx), %rcx
	cmpq	528(%rsi), %rcx
	jae	.LBB0_12
	movq	520(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_12
	movq	472(%rsi), %rcx
	notq	%rdx
	shlq	$6, %rdx
	cmpq	$0, 32(%rcx,%rdx)
	je	.LBB0_12
	addq	%rdx, %rcx
	movq	16(%rcx), %rdx
	leaq	56(%rcx), %rdi
	addq	$60, %rcx
	movl	1452(%rsi), %r8d
	movl	1448(%rsi), %esi
	movq	%rdx, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rcx, 16(%rax)
	movl	%r8d, 24(%rax)
	movl	%esi, 28(%rax)
	popq	%rbx
	retq
.LBB0_12:
	movq	$0, (%rax)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	resource_get, .Lfunc_end0-resource_get

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

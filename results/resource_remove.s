	.text
	.file	"resource_remove.9394ac9250d8d38d-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,29
.LCPI0_1:
	.byte	250
	.byte	117
	.byte	187
	.byte	45
	.byte	216
	.byte	28
	.byte	124
	.byte	58
	.byte	250
	.byte	39
	.byte	25
	.byte	36
	.byte	94
	.byte	229
	.byte	170
	.byte	239
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4, 0x90
	.type	resource_insert,@function
resource_insert:
	.cfi_startproc
	cmpq	$0, 144(%rdi)
	je	.LBB0_16
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	120(%rdi), %rax
	movq	128(%rdi), %rcx
	leaq	-24(%rax), %rdx
	movabsq	$4214275066117715450, %rsi
	xorl	%r8d, %r8d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm2
.LBB0_2:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r9d
	.p2align	4, 0x90
.LBB0_3:
	testw	%r9w, %r9w
	je	.LBB0_5
	leal	-1(%r9), %r11d
	andl	%r9d, %r11d
	rep		bsfl	%r9d, %r9d
	addq	%rsi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r10
	movdqu	(%rdx,%r10,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %ebx
	movl	%r11d, %r9d
	cmpl	$65535, %ebx
	jne	.LBB0_3
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_5:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	jne	.LBB0_20
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB0_2
.LBB0_7:
	movq	-8(%rax,%r10,8), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 408(%rdi)
	jbe	.LBB0_19
	movq	400(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_19
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB0_19
	movq	352(%rdi), %rcx
	movq	8(%rsi,%rdx), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	32(%rcx,%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_19
	addq	%rdx, %rcx
	movq	16(%rcx), %rdx
	decq	%rsi
	je	.LBB0_17
	movq	8(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_17
	movq	%rdi, %rax
	imulq	%rsi, %rax
	leaq	(%rdx,%rax), %r8
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_14:
	movzbl	(%rdx,%r9), %r10d
	movzbl	(%r8,%r9), %r11d
	movb	%r11b, (%rdx,%r9)
	movb	%r10b, (%r8,%r9)
	incq	%r9
	cmpq	%r9, %rdi
	jne	.LBB0_14
	movq	%rsi, 32(%rcx)
	movss	(%rdx,%rax), %xmm0
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB0_16:
	xorl	%eax, %eax
	retq
.LBB0_17:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, 32(%rcx)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_19
	movss	(%rdx,%rax), %xmm0
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB0_19:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB0_20:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end0:
	.size	resource_insert, .Lfunc_end0-resource_insert
	.cfi_endproc

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

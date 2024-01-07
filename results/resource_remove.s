	.text
	.file	"resource_remove.2f558a79ef3c90d4-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,87
.LCPI0_1:
	.byte	12
	.byte	67
	.byte	206
	.byte	32
	.byte	122
	.byte	20
	.byte	238
	.byte	95
	.byte	131
	.byte	60
	.byte	245
	.byte	121
	.byte	234
	.byte	178
	.byte	198
	.byte	46
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4, 0x90
	.type	resource_insert,@function
resource_insert:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	$0, 144(%rdi)
	je	.LBB0_25
	movq	120(%rdi), %rax
	movq	128(%rdi), %rcx
	leaq	-24(%rax), %rdx
	movabsq	$-5808392769495663108, %rsi
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
	jne	.LBB0_25
	addq	%r8, %rsi
	addq	$16, %rsi
	addq	$16, %r8
	jmp	.LBB0_2
.LBB0_7:
	movq	-8(%rax,%r10,8), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 408(%rdi)
	jbe	.LBB0_15
	movq	392(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_15
	shlq	$4, %rdx
	cmpq	$0, (%rsi,%rdx)
	je	.LBB0_15
	movq	344(%rdi), %rcx
	movq	8(%rsi,%rdx), %rdx
	movq	%rdx, %rsi
	shlq	$7, %rsi
	leaq	(%rsi,%rdx,8), %rdx
	movq	32(%rcx,%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_15
	addq	%rdx, %rcx
	movq	16(%rcx), %rax
	decq	%rsi
	je	.LBB0_20
	movq	8(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_20
	movq	%rdi, %rdx
	imulq	%rsi, %rdx
	leaq	(%rax,%rdx), %r8
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_14:
	movzbl	(%rax,%r9), %r10d
	movzbl	(%r8,%r9), %r11d
	movb	%r11b, (%rax,%r9)
	movb	%r10b, (%r8,%r9)
	incq	%r9
	cmpq	%r9, %rdi
	jne	.LBB0_14
	jmp	.LBB0_21
.LBB0_15:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_20:
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
.LBB0_21:
	movq	%rsi, 32(%rcx)
	movq	64(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_26
	movq	48(%rcx), %rdi
	movl	-4(%rdi,%rsi,4), %r8d
	decq	%rsi
	movl	%r8d, (%rdi)
	movq	%rsi, 64(%rcx)
	movq	88(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_26
	movq	72(%rcx), %rdi
	movl	-4(%rdi,%rsi,4), %r8d
	decq	%rsi
	movl	%r8d, (%rdi)
	movq	%rsi, 88(%rcx)
	testq	%rax, %rax
	je	.LBB0_25
	movss	(%rax,%rdx), %xmm0
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_25:
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_26:
	.cfi_def_cfa_offset 16
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.1(%rip), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*alloc::vec::Vec<T,A>::swap_remove::assert_failed@GOTPCREL(%rip)
	ud2
.Lfunc_end0:
	.size	resource_insert, .Lfunc_end0-resource_insert
	.cfi_endproc

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.0,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.0,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.0:
	.ascii	"/rustc/82e1608dfa6e0b5569232559e3d385fea5a93112/library/alloc/src/vec/mod.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.0, 76

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.1,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.1:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.0
	.asciz	"L\000\000\000\000\000\000\000\262\005\000\000\r\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.1, 24

	.ident	"rustc version 1.75.0 (82e1608df 2023-12-21)"
	.section	".note.GNU-stack","",@progbits

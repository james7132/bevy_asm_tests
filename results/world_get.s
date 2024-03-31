	.text
	.file	"world_get.85d60bbc68fbb9a1-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,120
.LCPI0_1:
	.byte	92
	.byte	237
	.byte	15
	.byte	114
	.byte	64
	.byte	86
	.byte	193
	.byte	241
	.byte	13
	.byte	105
	.byte	51
	.byte	140
	.byte	247
	.byte	16
	.byte	230
	.byte	205
	.section	.text.world_get,"ax",@progbits
	.globl	world_get
	.p2align	4, 0x90
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ecx
	cmpq	16(%rdi), %rcx
	jae	.LBB0_15
	shrq	$32, %rsi
	movq	8(%rdi), %rax
	leaq	(%rcx,%rcx,4), %rcx
	cmpl	%esi, (%rax,%rcx,4)
	jne	.LBB0_15
	cmpl	$-1, 4(%rax,%rcx,4)
	je	.LBB0_15
	testq	%rsi, %rsi
	je	.LBB0_15
	leaq	(%rax,%rcx,4), %rax
	addq	$4, %rax
	movl	8(%rax), %r8d
	movl	12(%rax), %edx
	movl	780(%rdi), %ecx
	movl	776(%rdi), %eax
	cmpq	$0, 112(%rdi)
	je	.LBB0_15
	movq	88(%rdi), %r9
	movq	96(%rdi), %r10
	leaq	-24(%r9), %r11
	movabsq	$-1026444405272220324, %rbx
	xorl	%esi, %esi
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm2
	xorl	%r14d, %r14d
.LBB0_6:
	andq	%r10, %rbx
	movdqu	(%r9,%rbx), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r12d
	.p2align	4, 0x90
.LBB0_7:
	testw	%r12w, %r12w
	je	.LBB0_9
	leal	-1(%r12), %ebp
	andl	%r12d, %ebp
	rep		bsfl	%r12d, %r15d
	addq	%rbx, %r15
	andq	%r10, %r15
	negq	%r15
	leaq	(%r15,%r15,2), %r15
	movdqu	(%r11,%r15,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r13d
	movl	%ebp, %r12d
	cmpl	$65535, %r13d
	jne	.LBB0_7
	jmp	.LBB0_11
.LBB0_9:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_16
	addq	%r14, %rbx
	addq	$16, %rbx
	addq	$16, %r14
	jmp	.LBB0_6
.LBB0_11:
	leaq	(%r8,%r8,8), %r10
	shlq	$3, %r10
	addq	296(%rdi), %r10
	xorl	%esi, %esi
	cmpq	%r8, 304(%rdi)
	cmovbeq	%rsi, %r10
	movq	-8(%r9,%r15,8), %r8
	cmpq	%r8, 64(%r10)
	jbe	.LBB0_16
	movq	56(%r10), %r9
	testq	%r9, %r9
	je	.LBB0_17
	movq	(%r9,%r8,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_15
	movq	24(%r10), %r8
	notq	%rsi
	leaq	(%rsi,%rsi,2), %r9
	shlq	$5, %r9
	movq	8(%r8,%r9), %rsi
	imulq	%rdx, %rsi
	addq	16(%r8,%r9), %rsi
	shlq	$2, %rdx
	movq	56(%r8,%r9), %rdi
	addq	%rdx, %rdi
	addq	80(%r8,%r9), %rdx
	jmp	.LBB0_17
.LBB0_15:
	xorl	%esi, %esi
.LBB0_16:
.LBB0_17:
	movq	%rsi, -32(%rsp)
	movq	%rdi, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movl	%ecx, -8(%rsp)
	movl	%eax, -4(%rsp)
	leaq	-32(%rsp), %rax
	#APP
	#NO_APP
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

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

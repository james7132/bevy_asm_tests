	.text
	.file	"world_get_sparse.38308d1b-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,13
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	leaq	(%r12,%r12,4), %rax
	shlq	$2, %rax
	addq	16(%rdi), %rax
	xorl	%r11d, %r11d
	cmpq	%r12, 24(%rdi)
	cmovbeq	%r11, %rax
	jbe	.LBB0_17
	cmpl	%esi, (%rax)
	jne	.LBB0_16
	cmpl	$-1, 4(%rax)
	je	.LBB0_16
	movl	892(%rdi), %r10d
	movl	888(%rdi), %r9d
	cmpq	$0, 488(%rdi)
	je	.LBB0_16
	movq	472(%rdi), %rsi
	movq	496(%rdi), %r8
	leaq	-16(%r8), %r13
	movabsq	$1875383519155916600, %rdx
	xorl	%r11d, %r11d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-3107199966482744232, %r15
	xorl	%r14d, %r14d
.LBB0_5:
	andq	%rsi, %rdx
	movdqu	(%r8,%rdx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %eax
	.p2align	4, 0x90
.LBB0_6:
	testw	%ax, %ax
	je	.LBB0_8
	bsfw	%ax, %bx
	movzwl	%bx, %ebx
	leal	-1(%rax), %ebp
	andl	%eax, %ebp
	addq	%rdx, %rbx
	andq	%rsi, %rbx
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	%r13, %rcx
	subq	%rax, %rcx
	movl	%ebp, %eax
	cmpq	%r15, (%rcx)
	jne	.LBB0_6
	jmp	.LBB0_11
.LBB0_8:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	jne	.LBB0_17
	addq	%r14, %rdx
	addq	$16, %rdx
	addq	$16, %r14
	jmp	.LBB0_5
.LBB0_11:
	negq	%rbx
	shlq	$4, %rbx
	movq	-8(%r8,%rbx), %rax
	cmpq	%rax, 224(%rdi)
	jbe	.LBB0_16
	movq	216(%rdi), %rcx
	shlq	$4, %rax
	cmpq	$0, (%rcx,%rax)
	je	.LBB0_16
	movq	168(%rdi), %rdx
	movq	8(%rcx,%rax), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	cmpq	%r12, 136(%rdx,%rax)
	jbe	.LBB0_16
	movq	128(%rdx,%rax), %rcx
	cmpl	$0, (%rcx,%r12,8)
	je	.LBB0_16
	addq	%rax, %rdx
	movl	4(%rcx,%r12,8), %eax
	movq	(%rdx), %r11
	imulq	%rax, %r11
	addq	40(%rdx), %r11
	shlq	$2, %rax
	movq	56(%rdx), %rcx
	addq	%rax, %rcx
	addq	80(%rdx), %rax
	jmp	.LBB0_18
.LBB0_16:
	xorl	%r11d, %r11d
.LBB0_17:
.LBB0_18:
	movq	%r11, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 28(%rsp)
	movq	%rsp, %rax
	#APP
	#NO_APP
	addq	$32, %rsp
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

	.section	".note.GNU-stack","",@progbits

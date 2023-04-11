	.text
	.file	"world_get_sparse.bc9a443c-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,120
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rax
	movl	%edx, %ebx
	leaq	(%rbx,%rbx,4), %rdi
	shlq	$2, %rdi
	addq	16(%rax), %rdi
	xorl	%r13d, %r13d
	cmpq	%rbx, 24(%rax)
	cmovbeq	%r13, %rdi
	jbe	.LBB0_17
	movl	%edx, %ecx
	movl	%esi, %edx
	cmpl	%esi, (%rdi)
	jne	.LBB0_16
	cmpl	$-1, 4(%rdi)
	je	.LBB0_16
	addq	$4, %rdi
	movdqu	(%rdi), %xmm0
	movdqa	%xmm0, 32(%rsp)
	movq	%rsp, %rdi
	leaq	32(%rsp), %r8
	movq	%rax, %rsi
	callq	*bevy_ecs::world::unsafe_world_cell::UnsafeEntityCell::new@GOTPCREL(%rip)
	movq	16(%rsp), %r15
	movl	28(%rsp), %r8d
	movl	892(%r15), %r11d
	movl	888(%r15), %r10d
	cmpq	$0, 488(%r15)
	je	.LBB0_16
	movq	472(%r15), %rdx
	movq	496(%r15), %r9
	leaq	-16(%r9), %rsi
	movabsq	$-1124919657574247764, %rcx
	xorl	%r13d, %r13d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$8204007897802787068, %r12
	xorl	%r14d, %r14d
.LBB0_5:
	andq	%rdx, %rcx
	movdqu	(%r9,%rcx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebx
	.p2align	4, 0x90
.LBB0_6:
	testw	%bx, %bx
	je	.LBB0_8
	bsfw	%bx, %di
	movzwl	%di, %edi
	leal	-1(%rbx), %ebp
	andl	%ebx, %ebp
	addq	%rcx, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rbx
	shlq	$4, %rbx
	movq	%rsi, %rax
	subq	%rbx, %rax
	movl	%ebp, %ebx
	cmpq	%r12, (%rax)
	jne	.LBB0_6
	jmp	.LBB0_11
.LBB0_8:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB0_17
	addq	%r14, %rcx
	addq	$16, %rcx
	addq	$16, %r14
	jmp	.LBB0_5
.LBB0_11:
	negq	%rdi
	shlq	$4, %rdi
	movq	-8(%r9,%rdi), %rax
	cmpq	%rax, 224(%r15)
	jbe	.LBB0_16
	movq	216(%r15), %rdx
	shlq	$4, %rax
	cmpq	$0, (%rdx,%rax)
	je	.LBB0_16
	movq	168(%r15), %rcx
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	cmpq	%r8, 136(%rcx,%rax)
	jbe	.LBB0_16
	movq	128(%rcx,%rax), %rdx
	cmpl	$0, (%rdx,%r8,8)
	je	.LBB0_16
	addq	%rax, %rcx
	movl	4(%rdx,%r8,8), %edx
	movq	(%rcx), %r13
	imulq	%rdx, %r13
	addq	40(%rcx), %r13
	shlq	$2, %rdx
	movq	56(%rcx), %rax
	addq	%rdx, %rax
	addq	80(%rcx), %rdx
	jmp	.LBB0_18
.LBB0_16:
	xorl	%r13d, %r13d
.LBB0_17:
.LBB0_18:
	movq	%r13, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 28(%rsp)
	movq	%rsp, %rax
	#APP
	#NO_APP
	addq	$56, %rsp
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

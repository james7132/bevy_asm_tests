	.text
	.file	"world_get.00c8eb72-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,118
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,4), %rax
	shlq	$2, %rax
	addq	16(%rdi), %rax
	xorl	%r13d, %r13d
	cmpq	%rcx, 24(%rdi)
	cmovbeq	%r13, %rax
	jbe	.LBB0_16
	cmpl	%esi, (%rax)
	jne	.LBB0_15
	cmpl	$0, 4(%rax)
	je	.LBB0_15
	movl	12(%rax), %ecx
	movl	16(%rax), %r14d
	movl	892(%rdi), %r11d
	movl	888(%rdi), %r9d
	cmpq	$0, 488(%rdi)
	je	.LBB0_15
	movq	%rcx, (%rsp)
	movq	472(%rdi), %rsi
	movq	496(%rdi), %r10
	leaq	-16(%r10), %r8
	movabsq	$-1377274277322318824, %rbx
	xorl	%r13d, %r13d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-7660601660165276232, %r12
	xorl	%r15d, %r15d
.LBB0_5:
	andq	%rsi, %rbx
	movdqu	(%r10,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ecx
	.p2align	4, 0x90
.LBB0_6:
	testw	%cx, %cx
	je	.LBB0_8
	bsfw	%cx, %ax
	movzwl	%ax, %eax
	leal	-1(%rcx), %ebp
	andl	%ecx, %ebp
	addq	%rbx, %rax
	andq	%rsi, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%r8, %rdx
	subq	%rcx, %rdx
	movl	%ebp, %ecx
	cmpq	%r12, (%rdx)
	jne	.LBB0_6
	jmp	.LBB0_11
.LBB0_8:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	jne	.LBB0_16
	addq	%r15, %rbx
	addq	$16, %rbx
	addq	$16, %r15
	jmp	.LBB0_5
.LBB0_11:
	movq	312(%rdi), %rsi
	movq	(%rsp), %rbp
	cmpq	%rbp, %rsi
	jbe	.LBB0_18
	negq	%rax
	shlq	$4, %rax
	movq	-8(%r10,%rax), %rax
	movq	304(%rdi), %rcx
	leaq	(,%rbp,8), %rdx
	addq	%rbp, %rdx
	cmpq	%rax, 40(%rcx,%rdx,8)
	jbe	.LBB0_15
	leaq	(%rcx,%rdx,8), %rcx
	movq	32(%rcx), %rdx
	shlq	$4, %rax
	cmpq	$0, (%rdx,%rax)
	je	.LBB0_15
	movq	(%rcx), %rcx
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$5, %rdx
	movq	(%rcx,%rdx), %r13
	imulq	%r14, %r13
	addq	40(%rcx,%rdx), %r13
	shlq	$2, %r14
	movq	56(%rcx,%rdx), %rax
	addq	%r14, %rax
	addq	80(%rcx,%rdx), %r14
	jmp	.LBB0_17
.LBB0_15:
	xorl	%r13d, %r13d
.LBB0_16:
.LBB0_17:
	movq	%r13, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	%r11d, 32(%rsp)
	movl	%r9d, 36(%rsp)
	leaq	8(%rsp), %rax
	#APP
	#NO_APP
	addq	$40, %rsp
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
.LBB0_18:
	.cfi_def_cfa_offset 96
	leaq	.Lanon.155300dae0580fe2c3564be8a13f3f51.1(%rip), %rdx
	movq	%rbp, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.0,@object
	.section	.rodata..Lanon.155300dae0580fe2c3564be8a13f3f51.0,"a",@progbits
.Lanon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/d3d2d9e/crates/bevy_ecs/src/world/unsafe_world_cell.rs"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.0, 109

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.1,@object
	.section	.data.rel.ro..Lanon.155300dae0580fe2c3564be8a13f3f51.1,"aw",@progbits
	.p2align	3
.Lanon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	.Lanon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"m\000\000\000\000\000\000\000\377\002\000\000\t\000\000"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.1, 24

	.section	".note.GNU-stack","",@progbits

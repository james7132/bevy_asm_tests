	.text
	.file	"world_get.6cf5fb37db2cd02d-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,125
.LCPI0_1:
	.byte	112
	.byte	49
	.byte	5
	.byte	214
	.byte	237
	.byte	170
	.byte	175
	.byte	6
	.byte	99
	.byte	54
	.byte	4
	.byte	35
	.byte	59
	.byte	139
	.byte	27
	.byte	244
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
	movl	%esi, %eax
	cmpq	16(%rdi), %rax
	jae	.LBB0_15
	shrq	$32, %rsi
	movq	(%rdi), %rcx
	leaq	(%rax,%rax,4), %rax
	cmpl	%esi, (%rcx,%rax,4)
	jne	.LBB0_15
	cmpl	$-1, 4(%rcx,%rax,4)
	je	.LBB0_15
	leaq	(%rcx,%rax,4), %rcx
	addq	$4, %rcx
	movl	8(%rcx), %eax
	movl	12(%rcx), %r8d
	movl	764(%rdi), %edx
	movl	760(%rdi), %ecx
	cmpq	$0, 112(%rdi)
	je	.LBB0_15
	movq	88(%rdi), %r9
	movq	96(%rdi), %r10
	leaq	-24(%r9), %r11
	movabsq	$-407359083468544464, %rbx
	xorl	%esi, %esi
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm2
	xorl	%r14d, %r14d
.LBB0_5:
	andq	%r10, %rbx
	movdqu	(%r9,%rbx), %xmm3
	movdqa	%xmm3, %xmm4
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %r15d
	.p2align	4, 0x90
.LBB0_6:
	testw	%r15w, %r15w
	je	.LBB0_8
	leal	-1(%r15), %ebp
	andl	%r15d, %ebp
	rep		bsfl	%r15d, %r15d
	addq	%rbx, %r15
	andq	%r10, %r15
	negq	%r15
	leaq	(%r15,%r15,2), %r12
	movdqu	(%r11,%r12,8), %xmm4
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm4, %r13d
	movl	%ebp, %r15d
	cmpl	$65535, %r13d
	jne	.LBB0_6
	jmp	.LBB0_10
.LBB0_8:
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm3, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_16
	addq	%r14, %rbx
	addq	$16, %rbx
	addq	$16, %r14
	jmp	.LBB0_5
.LBB0_10:
	movq	304(%rdi), %rsi
	cmpq	%rax, %rsi
	jbe	.LBB0_19
	movq	-8(%r9,%r12,8), %r9
	movq	288(%rdi), %rdi
	leaq	(%rax,%rax,8), %r10
	xorl	%esi, %esi
	cmpq	%r9, 40(%rdi,%r10,8)
	jbe	.LBB0_16
	movq	32(%rdi,%r10,8), %r11
	testq	%r11, %r11
	je	.LBB0_17
	shlq	$4, %r9
	cmpq	$0, (%r11,%r9)
	je	.LBB0_15
	leaq	(%rdi,%r10,8), %rax
	movq	(%rax), %rdi
	movq	8(%r11,%r9), %rax
	leaq	(%rax,%rax,2), %r9
	shlq	$5, %r9
	movq	8(%rdi,%r9), %rsi
	imulq	%r8, %rsi
	addq	16(%rdi,%r9), %rsi
	shlq	$2, %r8
	movq	48(%rdi,%r9), %rax
	addq	%r8, %rax
	addq	72(%rdi,%r9), %r8
	jmp	.LBB0_17
.LBB0_15:
	xorl	%esi, %esi
.LBB0_16:
.LBB0_17:
	movq	%rsi, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r8, 24(%rsp)
	movl	%edx, 32(%rsp)
	movl	%ecx, 36(%rsp)
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
.LBB0_19:
	.cfi_def_cfa_offset 96
	leaq	.Lanon.155300dae0580fe2c3564be8a13f3f51.1(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.0,@object
	.section	.rodata..Lanon.155300dae0580fe2c3564be8a13f3f51.0,"a",@progbits
.Lanon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/381bfbb/crates/bevy_ecs/src/world/unsafe_world_cell.rs"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.0, 109

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.1,@object
	.section	.data.rel.ro..Lanon.155300dae0580fe2c3564be8a13f3f51.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	.Lanon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"m\000\000\000\000\000\000\000\201\003\000\000*\000\000"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.1, 24

	.ident	"rustc version 1.74.0 (79e9716c9 2023-11-13)"
	.section	".note.GNU-stack","",@progbits

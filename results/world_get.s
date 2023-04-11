	.text
	.file	"world_get.ef6e49fd-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,90
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
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
	jbe	.LBB0_16
	movl	%edx, %ecx
	movl	%esi, %edx
	cmpl	%esi, (%rdi)
	jne	.LBB0_15
	cmpl	$-1, 4(%rdi)
	je	.LBB0_15
	addq	$4, %rdi
	movdqu	(%rdi), %xmm0
	movdqa	%xmm0, 48(%rsp)
	leaq	8(%rsp), %rdi
	leaq	48(%rsp), %r8
	movq	%rax, %rsi
	callq	*bevy_ecs::world::unsafe_world_cell::UnsafeEntityCell::new@GOTPCREL(%rip)
	movl	16(%rsp), %eax
	movl	20(%rsp), %r11d
	movq	24(%rsp), %r14
	movl	892(%r14), %r10d
	movl	888(%r14), %r8d
	cmpq	$0, 488(%r14)
	je	.LBB0_15
	movq	%rax, 40(%rsp)
	movq	472(%r14), %rcx
	movq	496(%r14), %r9
	leaq	-16(%r9), %r15
	movabsq	$-5461575491815293992, %rbx
	xorl	%r13d, %r13d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-544140509443576200, %r12
	xorl	%edi, %edi
.LBB0_5:
	andq	%rcx, %rbx
	movdqu	(%r9,%rbx), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %esi
	.p2align	4, 0x90
.LBB0_6:
	testw	%si, %si
	je	.LBB0_8
	bsfw	%si, %ax
	movzwl	%ax, %eax
	leal	-1(%rsi), %ebp
	andl	%esi, %ebp
	addq	%rbx, %rax
	andq	%rcx, %rax
	movq	%rax, %rsi
	shlq	$4, %rsi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	movl	%ebp, %esi
	cmpq	%r12, (%rdx)
	jne	.LBB0_6
	jmp	.LBB0_11
.LBB0_8:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	jne	.LBB0_16
	addq	%rdi, %rbx
	addq	$16, %rbx
	addq	$16, %rdi
	jmp	.LBB0_5
.LBB0_11:
	movq	312(%r14), %rsi
	movq	40(%rsp), %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB0_18
	negq	%rax
	shlq	$4, %rax
	movq	-8(%r9,%rax), %rax
	movq	304(%r14), %rcx
	leaq	(%rdi,%rdi,8), %rdx
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
	imulq	%r11, %r13
	addq	40(%rcx,%rdx), %r13
	shlq	$2, %r11
	movq	56(%rcx,%rdx), %rax
	addq	%r11, %rax
	addq	80(%rcx,%rdx), %r11
	jmp	.LBB0_17
.LBB0_15:
	xorl	%r13d, %r13d
.LBB0_16:
.LBB0_17:
	movq	%r13, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%r8d, 36(%rsp)
	leaq	8(%rsp), %rax
	#APP
	#NO_APP
	addq	$72, %rsp
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
	.cfi_def_cfa_offset 128
	leaq	.Lanon.155300dae0580fe2c3564be8a13f3f51.1(%rip), %rdx
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.0,@object
	.section	.rodata..Lanon.155300dae0580fe2c3564be8a13f3f51.0,"a",@progbits
.Lanon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/f133ef4/crates/bevy_ecs/src/world/unsafe_world_cell.rs"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.0, 109

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.1,@object
	.section	.data.rel.ro..Lanon.155300dae0580fe2c3564be8a13f3f51.1,"aw",@progbits
	.p2align	3
.Lanon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	.Lanon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"m\000\000\000\000\000\000\000\376\002\000\000\t\000\000"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.1, 24

	.section	".note.GNU-stack","",@progbits

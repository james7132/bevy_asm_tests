	.text
	.file	"world_get.cca1a8c3-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,18
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
	movl	%edx, %ebx
	movl	%esi, %ebp
	callq	*_ZN8bevy_ecs5world5World20as_unsafe_world_cell17h48b207706fa0d8dcE@GOTPCREL(%rip)
	leaq	16(%rsp), %r15
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	*_ZN8bevy_ecs5world17unsafe_world_cell15UnsafeWorldCell10get_entity17h0a559f64ee34be58E@GOTPCREL(%rip)
	cmpq	$0, 16(%rsp)
	je	.LBB0_13
	movl	32(%rsp), %r15d
	movl	36(%rsp), %r14d
	movq	40(%rsp), %r12
	movq	_ZN8bevy_ecs5world17unsafe_world_cell15UnsafeWorldCell14world_metadata17h7e79d5631d610fe9E@GOTPCREL(%rip), %rbp
	movq	%r12, %rdi
	callq	*%rbp
	movl	764(%rax), %r13d
	movq	%r12, %rdi
	callq	*%rbp
	movl	760(%rax), %ebx
	movq	%r12, %rdi
	callq	*%rbp
	cmpq	$0, 488(%rax)
	je	.LBB0_14
	movl	%ebx, 12(%rsp)
	movq	472(%rax), %rdx
	movq	496(%rax), %r10
	leaq	-16(%r10), %rbp
	movabsq	$2692656909827549579, %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-7066160543756846177, %r11
	xorl	%r9d, %r9d
.LBB0_3:
	andq	%rdx, %rdi
	movdqu	(%r10,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ecx
	.p2align	4, 0x90
.LBB0_4:
	testw	%cx, %cx
	je	.LBB0_6
	bsfw	%cx, %ax
	movzwl	%ax, %eax
	leal	-1(%rcx), %ebx
	andl	%ecx, %ebx
	addq	%rdi, %rax
	andq	%rdx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%rbp, %rsi
	subq	%rcx, %rsi
	movl	%ebx, %ecx
	cmpq	%r11, (%rsi)
	jne	.LBB0_4
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	jne	.LBB0_15
	addq	%r9, %rdi
	addq	$16, %rdi
	addq	$16, %r9
	jmp	.LBB0_3
.LBB0_8:
	negq	%rax
	shlq	$4, %rax
	movq	-8(%r10,%rax), %rbp
	movq	%r12, %rdi
	callq	*_ZN8bevy_ecs5world17unsafe_world_cell15UnsafeWorldCell12unsafe_world17hb02b6e97826b6e54E@GOTPCREL(%rip)
	movq	312(%rax), %rsi
	cmpq	%r15, %rsi
	jbe	.LBB0_17
	movq	304(%rax), %rcx
	leaq	(%r15,%r15,8), %rdx
	xorl	%r8d, %r8d
	cmpq	%rbp, 40(%rcx,%rdx,8)
	jbe	.LBB0_15
	movq	32(%rcx,%rdx,8), %rsi
	testq	%rsi, %rsi
	leaq	16(%rsp), %r15
	movl	12(%rsp), %edi
	je	.LBB0_16
	shlq	$4, %rbp
	cmpq	$0, (%rsi,%rbp)
	je	.LBB0_13
	leaq	(%rcx,%rdx,8), %rax
	movq	(%rax), %rcx
	movq	8(%rsi,%rbp), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$5, %rdx
	movq	(%rcx,%rdx), %r8
	imulq	%r14, %r8
	addq	40(%rcx,%rdx), %r8
	shlq	$2, %r14
	movq	56(%rcx,%rdx), %rax
	addq	%r14, %rax
	addq	80(%rcx,%rdx), %r14
	jmp	.LBB0_16
.LBB0_13:
	xorl	%r8d, %r8d
	jmp	.LBB0_16
.LBB0_14:
	xorl	%r8d, %r8d
.LBB0_15:
	leaq	16(%rsp), %r15
.LBB0_16:
	movq	%r8, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%edi, 44(%rsp)
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
.LBB0_17:
	.cfi_def_cfa_offset 112
	leaq	.Lanon.155300dae0580fe2c3564be8a13f3f51.1(%rip), %rdx
	movq	%r15, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h35d160a4cf1fb235E@GOTPCREL(%rip)
	ud2
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.0,@object
	.section	.rodata..Lanon.155300dae0580fe2c3564be8a13f3f51.0,"a",@progbits
.Lanon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"/home/james/.cargo/registry/src/index.crates.io-6f17d22bba15001f/bevy_ecs-0.10.0/src/world/unsafe_world_cell.rs"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.0, 111

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.1,@object
	.section	.data.rel.ro..Lanon.155300dae0580fe2c3564be8a13f3f51.1,"aw",@progbits
	.p2align	3
.Lanon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	.Lanon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"o\000\000\000\000\000\000\000\370\002\000\000\t\000\000"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.1, 24

	.section	".note.GNU-stack","",@progbits

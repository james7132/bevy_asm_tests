	.text
	.file	"world_get.16073d17-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,63
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
	callq	*bevy_ecs::world::World::as_unsafe_world_cell@GOTPCREL(%rip)
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	*bevy_ecs::world::unsafe_world_cell::UnsafeWorldCell::get_entity@GOTPCREL(%rip)
	cmpq	$0, 16(%rsp)
	je	.LBB0_13
	movl	32(%rsp), %r12d
	movl	36(%rsp), %r14d
	movq	40(%rsp), %r13
	movq	bevy_ecs::world::unsafe_world_cell::UnsafeWorldCell::world_metadata@GOTPCREL(%rip), %rbx
	movq	%r13, %rdi
	callq	*%rbx
	movl	892(%rax), %ebp
	movq	%r13, %rdi
	callq	*%rbx
	movl	888(%rax), %edi
	callq	*bevy_ecs::component::Tick::new@GOTPCREL(%rip)
	movl	%eax, %r15d
	movq	%r13, %rdi
	callq	*%rbx
	cmpq	$0, 488(%rax)
	je	.LBB0_14
	movl	%ebp, 12(%rsp)
	movq	472(%rax), %rdx
	movq	496(%rax), %r10
	leaq	-16(%r10), %rbx
	movabsq	$9118595683557307334, %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$1154216939020327214, %r11
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
	leal	-1(%rcx), %ebp
	andl	%ecx, %ebp
	addq	%rdi, %rax
	andq	%rdx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movl	%ebp, %ecx
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
	movq	-8(%r10,%rax), %rbx
	movq	%r13, %rdi
	callq	*bevy_ecs::world::unsafe_world_cell::UnsafeWorldCell::unsafe_world@GOTPCREL(%rip)
	movq	312(%rax), %rsi
	cmpq	%r12, %rsi
	jbe	.LBB0_17
	movq	304(%rax), %rcx
	leaq	(%r12,%r12,8), %rdx
	xorl	%r8d, %r8d
	cmpq	%rbx, 40(%rcx,%rdx,8)
	jbe	.LBB0_15
	movq	32(%rcx,%rdx,8), %rsi
	testq	%rsi, %rsi
	leaq	16(%rsp), %r12
	movl	12(%rsp), %edi
	je	.LBB0_16
	shlq	$4, %rbx
	cmpq	$0, (%rsi,%rbx)
	je	.LBB0_13
	leaq	(%rcx,%rdx,8), %rax
	movq	(%rax), %rcx
	movq	8(%rsi,%rbx), %rax
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
	leaq	16(%rsp), %r12
.LBB0_16:
	movq	%r8, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	%edi, 40(%rsp)
	movl	%r15d, 44(%rsp)
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
	movq	%r12, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.0,@object
	.section	.rodata..Lanon.155300dae0580fe2c3564be8a13f3f51.0,"a",@progbits
.Lanon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/6dda873/crates/bevy_ecs/src/world/unsafe_world_cell.rs"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.0, 109

	.type	.Lanon.155300dae0580fe2c3564be8a13f3f51.1,@object
	.section	.data.rel.ro..Lanon.155300dae0580fe2c3564be8a13f3f51.1,"aw",@progbits
	.p2align	3
.Lanon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	.Lanon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"m\000\000\000\000\000\000\000\371\002\000\000\t\000\000"
	.size	.Lanon.155300dae0580fe2c3564be8a13f3f51.1, 24

	.section	".note.GNU-stack","",@progbits

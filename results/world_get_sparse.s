	.text
	.file	"world_get_sparse.3d8e9ea4-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.zero	16,47
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
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	*bevy_ecs::world::unsafe_world_cell::UnsafeWorldCell::get_entity@GOTPCREL(%rip)
	cmpq	$0, 16(%rsp)
	je	.LBB0_12
	movq	40(%rsp), %r13
	movl	52(%rsp), %ebx
	movq	bevy_ecs::world::unsafe_world_cell::UnsafeWorldCell::world_metadata@GOTPCREL(%rip), %rbp
	movq	%r13, %rdi
	callq	*%rbp
	movl	764(%rax), %r12d
	movq	%r13, %rdi
	callq	*%rbp
	movl	760(%rax), %edi
	callq	*bevy_ecs::component::Tick::new@GOTPCREL(%rip)
	movl	%eax, %r15d
	movq	%r13, %rdi
	callq	*%rbp
	cmpq	$0, 488(%rax)
	je	.LBB0_12
	movl	%ebx, 12(%rsp)
	movq	472(%rax), %rdx
	movq	496(%rax), %r10
	leaq	-16(%r10), %rbp
	movabsq	$6847647775979049335, %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI0_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-717650336812927781, %r11
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
	je	.LBB0_5
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
.LBB0_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	jne	.LBB0_13
	addq	%r9, %rdi
	addq	$16, %rdi
	addq	$16, %r9
	jmp	.LBB0_3
.LBB0_8:
	negq	%rax
	shlq	$4, %rax
	movq	-8(%r10,%rax), %rbp
	movq	%r13, %rdi
	callq	*bevy_ecs::world::unsafe_world_cell::UnsafeWorldCell::unsafe_world@GOTPCREL(%rip)
	leaq	160(%rax), %rdi
	movq	%rbp, %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB0_12
	movq	%rax, %rbx
	movq	128(%rax), %r13
	movq	136(%rax), %rbp
	movl	12(%rsp), %eax
	movl	%eax, 16(%rsp)
	leaq	16(%rsp), %rdi
	callq	*<u32 as bevy_ecs::storage::sparse_set::SparseSetIndex>::sparse_set_index@GOTPCREL(%rip)
	cmpq	%rbp, %rax
	jae	.LBB0_12
	cmpl	$0, (%r13,%rax,8)
	je	.LBB0_12
	movl	4(%r13,%rax,8), %eax
	movq	(%rbx), %r8
	imulq	%rax, %r8
	addq	40(%rbx), %r8
	shlq	$2, %rax
	movq	56(%rbx), %rcx
	addq	%rax, %rcx
	addq	80(%rbx), %rax
	jmp	.LBB0_14
.LBB0_12:
	xorl	%r8d, %r8d
.LBB0_13:
.LBB0_14:
	movq	%r8, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	%r12d, 40(%rsp)
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
.Lfunc_end0:
	.size	world_get, .Lfunc_end0-world_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

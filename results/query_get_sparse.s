	.text
	.file	"query_get_sparse.b207f68c-cgu.0"
	.section	.text.query_get,"ax",@progbits
	.globl	query_get
	.p2align	4, 0x90
	.type	query_get,@function
query_get:
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
	movl	%edx, %r13d
	movl	%esi, %ebp
	movq	(%rdi), %r14
	movq	8(%rdi), %rbx
	movl	16(%rdi), %r15d
	movl	20(%rdi), %r12d
	leaq	24(%rsp), %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	callq	*bevy_ecs::entity::Entities::get@GOTPCREL(%rip)
	cmpl	$0, 24(%rsp)
	movl	$1, %eax
	je	.LBB0_2
	movl	28(%rsp), %eax
.LBB0_2:
	je	.LBB0_3
	movl	%eax, %ecx
	shrq	$5, %rcx
	cmpq	72(%rbx), %rcx
	jae	.LBB0_6
	movq	64(%rbx), %rdx
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jae	.LBB0_6
	movq	336(%rbx), %rsi
	movq	344(%rbx), %rax
	movq	%rax, 16(%rsp)
	leaq	160(%r14), %rbp
	movq	%rbp, %rdi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get@GOTPCREL(%rip)
	movl	%r15d, 12(%rsp)
	movq	%rax, %r15
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi
	callq	*bevy_ecs::storage::sparse_set::SparseSets::get@GOTPCREL(%rip)
	movq	%rax, 64(%rsp)
	addq	$352, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	12(%rsp), %edx
	movl	%r12d, %ecx
	callq	*<() as bevy_ecs::query::fetch::WorldQuery>::init_fetch@GOTPCREL(%rip)
	movq	128(%r15), %rbx
	movl	%r13d, 24(%rsp)
	movq	<u32 as bevy_ecs::storage::sparse_set::SparseSetIndex>::sparse_set_index@GOTPCREL(%rip), %rbp
	leaq	24(%rsp), %rdi
	callq	*%rbp
	movq	%rbp, %rcx
	movl	4(%rbx,%rax,8), %ebx
	movq	(%r15), %r14
	imulq	%rbx, %r14
	addq	40(%r15), %r14
	shlq	$2, %rbx
	movq	56(%r15), %rbp
	addq	%rbx, %rbp
	addq	80(%r15), %rbx
	movl	%r12d, 16(%rsp)
	movq	64(%rsp), %r12
	movq	128(%r12), %r15
	movl	%r13d, 24(%rsp)
	leaq	24(%rsp), %rdi
	callq	*%rcx
	movl	4(%r15,%rax,8), %eax
	movl	12(%rsp), %r15d
	movq	%r12, %rcx
	movl	16(%rsp), %r12d
	imulq	(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB0_9
.LBB0_6:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_3:
	movl	$1, %eax
.LBB0_7:
	shlq	$32, %rbp
	orq	%rax, %rbp
	movl	%r13d, %ebx
	xorl	%r14d, %r14d
.LBB0_9:
	leaq	24(%rsp), %rcx
	movq	%r14, 24(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movl	%r15d, 48(%rsp)
	movl	%r12d, 52(%rsp)
	movq	%rax, 56(%rsp)
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
.Lfunc_end0:
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

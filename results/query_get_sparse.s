	.text
	.file	"query_get_sparse.8f85f322-cgu.0"
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	%esi, %ebx
	movq	(%rdi), %r13
	movq	8(%rdi), %r14
	movl	16(%rdi), %r15d
	movl	20(%rdi), %eax
	movl	%eax, 4(%rsp)
	leaq	16(%rsp), %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	callq	*_ZN8bevy_ecs6entity8Entities3get17hb7da5c77bc66bcb4E@GOTPCREL(%rip)
	cmpl	$0, 16(%rsp)
	movl	28(%rsp), %ecx
	cmovel	%r12d, %ecx
	movl	$1, %eax
	cmovnel	20(%rsp), %eax
	je	.LBB0_7
	movq	%rax, %rcx
	shrq	$5, %rcx
	cmpq	72(%r14), %rcx
	jae	.LBB0_4
	movq	64(%r14), %rdx
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jae	.LBB0_4
	movq	336(%r14), %rsi
	movq	344(%r14), %rax
	movq	%rax, 8(%rsp)
	leaq	160(%r13), %rbx
	movq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17h7d8a255d7bbf9057E@GOTPCREL(%rip), %rbp
	movq	%rbx, %rdi
	callq	*%rbp
	movl	%r15d, (%rsp)
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi
	callq	*%rbp
	movq	%rax, 8(%rsp)
	addq	$352, %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	(%rsp), %edx
	movl	4(%rsp), %ecx
	callq	*_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h1826c046abe80838E@GOTPCREL(%rip)
	movq	128(%r15), %rbx
	movl	%r12d, 16(%rsp)
	movq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h7d15bf016e446bc2E@GOTPCREL(%rip), %rbp
	leaq	16(%rsp), %rdi
	callq	*%rbp
	movq	%rbp, %rcx
	movl	4(%rbx,%rax,8), %ebp
	movq	(%r15), %r14
	imulq	%rbp, %r14
	addq	40(%r15), %r14
	shlq	$2, %rbp
	movq	56(%r15), %rbx
	addq	%rbp, %rbx
	addq	80(%r15), %rbp
	movq	8(%rsp), %r13
	movq	128(%r13), %r15
	movl	%r12d, 16(%rsp)
	leaq	16(%rsp), %rdi
	callq	*%rcx
	movl	4(%r15,%rax,8), %eax
	movl	(%rsp), %r15d
	imulq	(%r13), %rax
	addq	40(%r13), %rax
	jmp	.LBB0_6
.LBB0_4:
	shlq	$32, %rbx
	movl	%r12d, %ebp
	jmp	.LBB0_5
.LBB0_7:
	shlq	$32, %rbx
	orq	%rax, %rbx
	movl	%ecx, %ebp
.LBB0_5:
	xorl	%r14d, %r14d
.LBB0_6:
	movq	%r14, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbp, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movl	4(%rsp), %ecx
	movl	%ecx, 44(%rsp)
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
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
	.size	query_get, .Lfunc_end0-query_get
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

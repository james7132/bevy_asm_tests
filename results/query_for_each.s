	.text
	.file	"query_for_each.d0245e55-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r14
	movq	8(%rdi), %r15
	movl	16(%rdi), %edx
	movl	20(%rdi), %r12d
	leaq	352(%r15), %rsi
	movq	%r14, %rdi
	movl	%r12d, %ecx
	callq	*_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h67fabdabaece8c19E@GOTPCREL(%rip)
	movq	304(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_6
	movq	296(%r15), %r9
	leaq	(%r9,%rcx,4), %r8
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%r8, %r9
	je	.LBB0_6
.LBB0_3:
	movl	(%r9), %edx
	addq	$4, %r9
	movq	304(%r14), %rcx
	leaq	(%rdx,%rdx,8), %rsi
	movq	64(%rcx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_2
	movq	336(%r15), %rdi
	movq	344(%r15), %rbx
	movq	(%rcx,%rsi,8), %rax
	movq	32(%rcx,%rsi,8), %rcx
	shlq	$4, %rdi
	movq	8(%rcx,%rdi), %rsi
	leaq	(%rsi,%rsi,2), %rdi
	shlq	$5, %rdi
	movq	40(%rax,%rdi), %rsi
	movq	80(%rax,%rdi), %rdi
	shlq	$4, %rbx
	movq	8(%rcx,%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	40(%rax,%rcx), %rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_5:
	movl	%ebx, %eax
	shlq	$2, %rax
	movss	(%rcx,%rax), %xmm0
	movl	%r12d, (%rdi,%rax)
	addss	(%rsi,%rax), %xmm0
	leaq	1(%rbx), %rbp
	movss	%xmm0, (%rsi,%rax)
	movq	%rbp, %rbx
	cmpq	%rbp, %rdx
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_6:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

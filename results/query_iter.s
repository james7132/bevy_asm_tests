	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_iter.c39650bf-cgu.0"
	.def	query_iter;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,query_iter
	.globl	query_iter
	.p2align	4, 0x90
query_iter:
.seh_proc query_iter
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	(%rcx), %rsi
	movq	8(%rcx), %r15
	movl	16(%rcx), %r8d
	movl	20(%rcx), %r14d
	leaq	352(%r15), %rdx
	movq	%rsi, %rcx
	movl	%r14d, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h20345ab9dc04a3a1E
	movq	288(%r15), %rax
	movq	304(%r15), %rcx
	leaq	(%rax,%rcx,8), %rcx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:
	movss	(%rbx,%rbp,4), %xmm0
	movl	%r14d, (%r8,%rbp,4)
	addss	(%rdi,%rbp,4), %xmm0
	movss	%xmm0, (%rdi,%rbp,4)
	incq	%rbp
.LBB0_1:
	cmpq	%rdx, %rbp
	jne	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%rcx, %rax
	je	.LBB0_6
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	312(%rsi), %rbp
	leaq	(%rdx,%rdx,8), %rbx
	movq	64(%rbp,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_2
	leaq	(,%rbx,8), %r8
	addq	%rbp, %r8
	movq	336(%r15), %rdi
	movq	344(%r15), %r9
	movq	32(%rbp,%rbx,8), %r10
	shlq	$4, %rdi
	movq	(%r8), %rbx
	movq	8(%r10,%rdi), %rdi
	leaq	(%rdi,%rdi,2), %rbp
	shlq	$5, %rbp
	movq	32(%rbx,%rbp), %rdi
	movq	72(%rbx,%rbp), %r8
	shlq	$4, %r9
	movq	8(%r10,%r9), %rbp
	leaq	(%rbp,%rbp,2), %rbp
	shlq	$5, %rbp
	movq	32(%rbx,%rbp), %rbx
	xorl	%ebp, %ebp
	jmp	.LBB0_5
.LBB0_6:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.globl	_fltused

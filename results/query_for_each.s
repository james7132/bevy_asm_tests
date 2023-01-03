	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_for_each.a13ab44f-cgu.0"
	.def	query_for_each;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,query_for_each
	.globl	query_for_each
	.p2align	4, 0x90
query_for_each:
.seh_proc query_for_each
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	(%rcx), %r14
	movq	8(%rcx), %r15
	movl	16(%rcx), %r8d
	movl	20(%rcx), %r12d
	leaq	352(%r15), %rdx
	movq	%r14, %rcx
	movl	%r12d, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h2634c7fb1d1468e5E
	movq	304(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_6
	movq	288(%r15), %r9
	leaq	(%r9,%rax,4), %r8
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	cmpq	%r8, %r9
	je	.LBB0_6
.LBB0_3:
	movl	(%r9), %ecx
	addq	$4, %r9
	movq	312(%r14), %rax
	leaq	(%rcx,%rcx,8), %rcx
	movq	64(%rax,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_2
	movq	336(%r15), %rbx
	movq	344(%r15), %r10
	movq	(%rax,%rcx,8), %r11
	movq	32(%rax,%rcx,8), %rax
	shlq	$4, %rbx
	movq	8(%rax,%rbx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	32(%r11,%rcx), %rsi
	movq	72(%r11,%rcx), %rcx
	shlq	$4, %r10
	movq	8(%rax,%r10), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	32(%r11,%rax), %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_5:
	movl	%eax, %edi
	shlq	$2, %rdi
	movss	(%rbx,%rdi), %xmm0
	movl	%r12d, (%rcx,%rdi)
	addss	(%rsi,%rdi), %xmm0
	leaq	1(%rax), %rbp
	movss	%xmm0, (%rsi,%rdi)
	movq	%rbp, %rax
	cmpq	%rbp, %rdx
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_6:
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.seh_endproc

	.globl	_fltused

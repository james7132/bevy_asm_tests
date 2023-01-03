	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"query_get.13224c48-cgu.0"
	.def	query_get;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,query_get
	.globl	query_get
	.p2align	4, 0x90
query_get:
.seh_proc query_get
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
	subq	$80, %rsp
	.seh_stackalloc 80
	.seh_endprologue
	movl	%r8d, %ebp
	movl	%edx, %ebx
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movl	16(%rcx), %r15d
	movl	20(%rcx), %r12d
	leaq	8(%rsi), %rdx
	leaq	40(%rsp), %r14
	movq	%r14, %rcx
	movl	%ebx, %r8d
	movl	%ebp, %r9d
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, 40(%rsp)
	je	.LBB0_4
	movl	44(%rsp), %eax
	movq	%rax, %rcx
	shrq	$5, %rcx
	cmpq	64(%rdi), %rcx
	jae	.LBB0_6
	movq	48(%rdi), %rdx
	movl	(%rdx,%rcx,4), %ecx
	btl	%eax, %ecx
	jae	.LBB0_6
	movl	52(%rsp), %ebx
	movl	56(%rsp), %ebp
	leaq	352(%rdi), %rdx
	movq	%rsi, %rcx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	callq	_ZN63_$LT$$LP$$RP$$u20$as$u20$bevy_ecs..query..fetch..WorldQuery$GT$10init_fetch17h2634c7fb1d1468e5E
	movq	312(%rsi), %rax
	leaq	(%rbx,%rbx,8), %rcx
	movq	336(%rdi), %rdx
	movq	344(%rdi), %rbx
	movq	(%rax,%rcx,8), %rdi
	movq	32(%rax,%rcx,8), %rax
	shlq	$4, %rdx
	movq	8(%rax,%rdx), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	shlq	$4, %rbx
	movq	8(%rax,%rbx), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$5, %rdx
	shlq	$2, %rbp
	movq	32(%rdi,%rcx), %rax
	addq	%rbp, %rax
	movq	48(%rdi,%rcx), %rbx
	addq	%rbp, %rbx
	movq	72(%rdi,%rcx), %rcx
	addq	%rbp, %rcx
	addq	32(%rdi,%rdx), %rbp
	jmp	.LBB0_8
.LBB0_6:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_4:
	movl	$1, %eax
.LBB0_7:
	shlq	$32, %rbx
	orq	%rax, %rbx
	movl	%ebp, %ecx
	xorl	%eax, %eax
.LBB0_8:
	movq	%rax, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movl	%r15d, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movq	%rbp, 72(%rsp)
	#APP
	#NO_APP
	addq	$80, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.seh_endproc


	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"world_get.a25d66c0-cgu.0"
	.def	world_get;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d
	.section	.rdata,"dr",discard,__xmm@6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d
	.p2align	4
__xmm@6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d:
	.zero	16,109
	.section	.text,"xr",one_only,world_get
	.globl	world_get
	.p2align	4, 0x90
world_get:
.seh_proc world_get
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
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
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movq	%rcx, %r13
	leaq	8(%rcx), %rdx
	leaq	40(%rsp), %rsi
	movq	%rsi, %rcx
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	cmpq	$0, 40(%rsp)
	je	.LBB0_8
	cmpq	$0, 120(%r13)
	je	.LBB0_8
	movq	48(%rsp), %r10
	movq	56(%rsp), %rcx
	movl	696(%r13), %eax
	movl	%eax, 36(%rsp)
	movl	700(%r13), %r9d
	movq	96(%r13), %rbx
	movq	104(%r13), %r11
	leaq	-16(%r11), %r8
	movabsq	$-2619184688480258489, %rsi
	xorl	%r15d, %r15d
	movdqa	__xmm@6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d6d(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$1878771034081780331, %rdx
	xorl	%r12d, %r12d
.LBB0_3:
	andq	%rbx, %rsi
	movdqu	(%r11,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ebp
	.p2align	4, 0x90
.LBB0_4:
	testw	%bp, %bp
	je	.LBB0_6
	bsfw	%bp, %di
	movzwl	%di, %edi
	leal	-1(%rbp), %r14d
	andl	%ebp, %r14d
	addq	%rsi, %rdi
	andq	%rbx, %rdi
	movq	%rdi, %rbp
	shlq	$4, %rbp
	movq	%r8, %rax
	subq	%rbp, %rax
	movl	%r14d, %ebp
	cmpq	%rdx, (%rax)
	jne	.LBB0_4
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB0_16
	addq	%r12, %rsi
	addq	$16, %rsi
	addq	$16, %r12
	jmp	.LBB0_3
.LBB0_8:
	xorl	%r15d, %r15d
	jmp	.LBB0_17
.LBB0_9:
	movq	176(%r13), %rdx
	cmpq	%r10, %rdx
	jbe	.LBB0_19
	movq	160(%r13), %rsi
	movq	328(%r13), %rdx
	leaq	(%r10,%r10,4), %rbx
	shlq	$5, %rbx
	movq	8(%rsi,%rbx), %rax
	cmpq	%rdx, %rax
	jae	.LBB0_20
	negq	%rdi
	shlq	$4, %rdi
	movq	-8(%r11,%rdi), %rdi
	movq	312(%r13), %rdx
	leaq	(%rax,%rax,8), %rax
	cmpq	%rdi, 40(%rdx,%rax,8)
	jbe	.LBB0_15
	leaq	(%rdx,%rax,8), %rax
	movq	32(%rax), %rbp
	shlq	$4, %rdi
	cmpq	$0, (%rbp,%rdi)
	je	.LBB0_15
	movq	104(%rsi,%rbx), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB0_21
	leaq	(%rsi,%rbx), %rdx
	addq	$88, %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rbx
	movq	8(%rbp,%rdi), %rax
	leaq	(%rax,%rax,2), %rbp
	shlq	$5, %rbp
	shlq	$4, %rcx
	movq	(%rdx,%rcx), %rax
	movq	(%rbx,%rbp), %r15
	imulq	%rax, %r15
	addq	32(%rbx,%rbp), %r15
	shlq	$2, %rax
	movq	48(%rbx,%rbp), %rcx
	addq	%rax, %rcx
	addq	72(%rbx,%rbp), %rax
	leaq	40(%rsp), %rsi
	movl	36(%rsp), %edx
	jmp	.LBB0_17
.LBB0_15:
	xorl	%r15d, %r15d
.LBB0_16:
	leaq	40(%rsp), %rsi
.LBB0_17:
	movq	%r15, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movl	%r9d, 64(%rsp)
	movl	%edx, 68(%rsp)
	#APP
	#NO_APP
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB0_19:
	leaq	anon.155300dae0580fe2c3564be8a13f3f51.1(%rip), %r8
	movq	%r10, %rcx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB0_20:
	leaq	anon.155300dae0580fe2c3564be8a13f3f51.2(%rip), %r8
	movq	%rax, %rcx
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
.LBB0_21:
	leaq	anon.155300dae0580fe2c3564be8a13f3f51.4(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
	.seh_endproc

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.0
anon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\world\\entity_ref.rs"

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.1
	.p2align	3
anon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	anon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"i\000\000\000\000\000\000\000\302\002\000\000\026\000\000"

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.2
	.p2align	3
anon.155300dae0580fe2c3564be8a13f3f51.2:
	.quad	anon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"i\000\000\000\000\000\000\000\303\002\000\000\022\000\000"

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.3
anon.155300dae0580fe2c3564be8a13f3f51.3:
	.ascii	"C:\\Users\\conta\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\f8e4b75\\crates\\bevy_ecs\\src\\archetype.rs"

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.4
	.p2align	3
anon.155300dae0580fe2c3564be8a13f3f51.4:
	.quad	anon.155300dae0580fe2c3564be8a13f3f51.3
	.asciz	"b\000\000\000\000\000\000\000\245\001\000\000\t\000\000"


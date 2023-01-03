	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"world_get.3faa8847-cgu.0"
	.def	world_get;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@15151515151515151515151515151515
	.section	.rdata,"dr",discard,__xmm@15151515151515151515151515151515
	.p2align	4
__xmm@15151515151515151515151515151515:
	.zero	16,21
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
	callq	_ZN8bevy_ecs6entity8Entities3get17h8355c6c0f38b2755E
	cmpl	$0, 40(%rsp)
	je	.LBB0_12
	cmpq	$0, 120(%r13)
	je	.LBB0_12
	movl	52(%rsp), %ecx
	movl	56(%rsp), %r10d
	movl	696(%r13), %eax
	movl	%eax, 36(%rsp)
	movl	700(%r13), %r9d
	movq	96(%r13), %rsi
	movq	104(%r13), %r15
	leaq	-16(%r15), %r8
	movabsq	$3142833306800168132, %rdx
	xorl	%r11d, %r11d
	movdqa	__xmm@15151515151515151515151515151515(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-1582147638775907148, %rax
	xorl	%r12d, %r12d
.LBB0_3:
	andq	%rsi, %rdx
	movdqu	(%r15,%rdx), %xmm2
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
	addq	%rdx, %rdi
	andq	%rsi, %rdi
	movq	%rdi, %rbp
	shlq	$4, %rbp
	movq	%r8, %rbx
	subq	%rbp, %rbx
	movl	%r14d, %ebp
	cmpq	%rax, (%rbx)
	jne	.LBB0_4
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB0_14
	addq	%r12, %rdx
	addq	$16, %rdx
	addq	$16, %r12
	jmp	.LBB0_3
.LBB0_8:
	movq	328(%r13), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB0_17
	negq	%rdi
	shlq	$4, %rdi
	movq	-8(%r15,%rdi), %rax
	movq	312(%r13), %rdx
	leaq	(%rcx,%rcx,8), %rcx
	cmpq	%rax, 40(%rdx,%rcx,8)
	jbe	.LBB0_13
	leaq	(%rdx,%rcx,8), %rcx
	movq	32(%rcx), %rdx
	shlq	$4, %rax
	cmpq	$0, (%rdx,%rax)
	leaq	40(%rsp), %rsi
	je	.LBB0_12
	movq	(%rcx), %rcx
	movq	8(%rdx,%rax), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$5, %rdx
	movq	(%rcx,%rdx), %r11
	imulq	%r10, %r11
	addq	32(%rcx,%rdx), %r11
	shlq	$2, %r10
	movq	48(%rcx,%rdx), %rax
	addq	%r10, %rax
	addq	72(%rcx,%rdx), %r10
	movl	36(%rsp), %ecx
	jmp	.LBB0_15
.LBB0_12:
	xorl	%r11d, %r11d
	jmp	.LBB0_15
.LBB0_13:
	xorl	%r11d, %r11d
.LBB0_14:
	leaq	40(%rsp), %rsi
.LBB0_15:
	movq	%r11, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movl	%r9d, 64(%rsp)
	movl	%ecx, 68(%rsp)
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
.LBB0_17:
	leaq	anon.155300dae0580fe2c3564be8a13f3f51.1(%rip), %r8
	callq	_ZN4core9panicking18panic_bounds_check17h676803aa0dfb5c32E
	ud2
	.seh_endproc

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.0
anon.155300dae0580fe2c3564be8a13f3f51.0:
	.ascii	"C:\\Users\\James\\.cargo\\git\\checkouts\\bevy-f7ffde730c324c74\\b44b606\\crates\\bevy_ecs\\src\\world\\entity_ref.rs"

	.section	.rdata,"dr",one_only,anon.155300dae0580fe2c3564be8a13f3f51.1
	.p2align	3
anon.155300dae0580fe2c3564be8a13f3f51.1:
	.quad	anon.155300dae0580fe2c3564be8a13f3f51.0
	.asciz	"i\000\000\000\000\000\000\000\366\002\000\000\036\000\000"


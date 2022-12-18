	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"world_get_sparse.27556fe9-cgu.0"
	.def	world_get;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c
	.section	.rdata,"dr",discard,__xmm@0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c
	.p2align	4
__xmm@0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c:
	.zero	16,12
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
	movl	%r8d, %r13d
	movl	%edx, %r8d
	movq	%rcx, %r14
	leaq	8(%rcx), %rdx
	leaq	40(%rsp), %rsi
	movq	%rsi, %rcx
	movl	%r13d, %r9d
	callq	_ZN8bevy_ecs6entity8Entities3get17h7e3ec050f64c5387E
	cmpq	$0, 40(%rsp)
	je	.LBB0_8
	cmpq	$0, 120(%r14)
	je	.LBB0_8
	movl	696(%r14), %r15d
	movl	700(%r14), %r12d
	movq	96(%r14), %rdx
	movq	104(%r14), %r10
	leaq	-16(%r10), %rdi
	movabsq	$1872462966029893990, %rsi
	xorl	%r8d, %r8d
	movdqa	__xmm@0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movabsq	$-4626563118006802354, %r11
	xorl	%r9d, %r9d
.LBB0_3:
	andq	%rdx, %rsi
	movdqu	(%r10,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %ecx
	.p2align	4, 0x90
.LBB0_4:
	testw	%cx, %cx
	je	.LBB0_6
	bsfw	%cx, %ax
	movzwl	%ax, %eax
	leal	-1(%rcx), %ebx
	andl	%ecx, %ebx
	addq	%rsi, %rax
	andq	%rdx, %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	%rdi, %rbp
	subq	%rcx, %rbp
	movl	%ebx, %ecx
	cmpq	%r11, (%rbp)
	jne	.LBB0_4
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	jne	.LBB0_14
	addq	%r9, %rsi
	addq	$16, %rsi
	addq	$16, %r9
	jmp	.LBB0_3
.LBB0_8:
	xorl	%r8d, %r8d
	jmp	.LBB0_16
.LBB0_9:
	negq	%rax
	shlq	$4, %rax
	movq	-8(%r10,%rax), %rdx
	addq	$240, %r14
	movq	%r14, %rcx
	callq	_ZN8bevy_ecs7storage10sparse_set10SparseSets3get17hd1d94803de0ce562E
	testq	%rax, %rax
	je	.LBB0_13
	movq	%rax, %rbx
	movq	120(%rax), %rsi
	movq	136(%rax), %rdi
	movl	%r13d, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN69_$LT$u32$u20$as$u20$bevy_ecs..storage..sparse_set..SparseSetIndex$GT$16sparse_set_index17h4da07b09974712c1E
	cmpq	%rdi, %rax
	jae	.LBB0_13
	cmpl	$0, (%rsi,%rax,8)
	je	.LBB0_13
	movl	4(%rsi,%rax,8), %eax
	movq	(%rbx), %r8
	imulq	%rax, %r8
	addq	32(%rbx), %r8
	shlq	$2, %rax
	movq	48(%rbx), %rcx
	addq	%rax, %rcx
	addq	72(%rbx), %rax
	jmp	.LBB0_15
.LBB0_13:
	xorl	%r8d, %r8d
.LBB0_14:
.LBB0_15:
	leaq	40(%rsp), %rsi
.LBB0_16:
	movq	%r8, 40(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movl	%r12d, 64(%rsp)
	movl	%r15d, 68(%rsp)
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
	.seh_endproc


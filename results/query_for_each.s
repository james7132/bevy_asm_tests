	.text
	.file	"query_for_each.f9f99d4d611fce60-cgu.0"
	.section	.text.query_for_each,"ax",@progbits
	.globl	query_for_each
	.p2align	4, 0x90
	.type	query_for_each,@function
query_for_each:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movq	256(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB0_7
	movl	20(%rdi), %ecx
	movq	248(%rax), %rdx
	leaq	(%rdx,%rsi,4), %rsi
	movq	8(%rdi), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_6:
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	je	.LBB0_7
.LBB0_2:
	movl	(%rdx), %r9d
	leaq	(%r9,%r9,8), %r10
	shlq	$3, %r10
	addq	296(%rdi), %r10
	cmpq	%r9, 304(%rdi)
	cmovbeq	%r8, %r10
	movq	16(%r10), %r9
	movq	%r9, %r11
	shrq	$32, %r11
	jne	.LBB0_8
	testq	%r9, %r9
	je	.LBB0_6
	movq	288(%rax), %r11
	movq	296(%rax), %rbx
	movq	24(%r10), %r14
	movq	56(%r10), %r15
	movq	(%r15,%r11,8), %r10
	notq	%r10
	leaq	(%r10,%r10,2), %r11
	shlq	$5, %r11
	movq	16(%r14,%r11), %r10
	movq	80(%r14,%r11), %r11
	movq	(%r15,%rbx,8), %rbx
	notq	%rbx
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$5, %rbx
	movq	16(%r14,%rbx), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_5:
	movss	(%rbx,%r14,4), %xmm0
	movl	%ecx, (%r11,%r14,4)
	addss	(%r10,%r14,4), %xmm0
	movss	%xmm0, (%r10,%r14,4)
	leaq	1(%r14), %r15
	movq	%r15, %r14
	cmpq	%r15, %r9
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_7:
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_8:
	.cfi_def_cfa_offset 80
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2(%rip), %rax
	movq	%rax, (%rsp)
	movq	$1, 8(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0(%rip), %rax
	movq	%rax, 16(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsp)
	leaq	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4(%rip), %rsi
	movq	%rsp, %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.Lfunc_end0:
	.size	query_for_each, .Lfunc_end0-query_for_each
	.cfi_endproc

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.0,"a",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0:
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.0, 0

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.1,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1:
	.ascii	"TableRow is only valid up to u32::MAX"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1, 37

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.1
	.asciz	"%\000\000\000\000\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.2, 16

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3,@object
	.section	.rodata..Lanon.0d252a227dcf2249288cd9db6e2d5b21.3,"a",@progbits
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-11a63d9ba653d13e/cf9f719/crates/bevy_ecs/src/query/iter.rs"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3, 96

	.type	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4,@object
	.section	.data.rel.ro..Lanon.0d252a227dcf2249288cd9db6e2d5b21.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4:
	.quad	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.3
	.asciz	"`\000\000\000\000\000\000\000n\000\000\000\t\000\000"
	.size	.Lanon.0d252a227dcf2249288cd9db6e2d5b21.4, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

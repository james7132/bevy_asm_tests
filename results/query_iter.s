	.text
	.file	"query_iter.96e582ed144f857a-cgu.0"
	.section	.text.query_iter,"ax",@progbits
	.globl	query_iter
	.p2align	4, 0x90
	.type	query_iter,@function
query_iter:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	20(%rdi), %edx
	movq	352(%rax), %rsi
	movq	360(%rax), %rdi
	leaq	(%rsi,%rdi,4), %rdi
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	cmpq	%r9, %r14
	jne	.LBB0_7
.LBB0_2:
	movq	296(%rcx), %rbx
	movq	304(%rcx), %r14
	movq	392(%rax), %r11
	movq	400(%rax), %r10
	.p2align	4, 0x90
.LBB0_3:
	cmpq	%rdi, %rsi
	je	.LBB0_9
	movl	(%rsi), %r9d
	addq	$4, %rsi
	cmpq	%r9, %r14
	leaq	(%r9,%r9,8), %r9
	leaq	(%rbx,%r9,8), %r15
	cmovbeq	%r8, %r15
	movq	16(%r15), %r9
	testq	%r9, %r9
	je	.LBB0_3
	movq	56(%r15), %rbx
	movq	(%rbx,%r11,8), %r11
	notq	%r11
	movq	(%rbx,%r10,8), %rbx
	notq	%rbx
	movq	24(%r15), %r14
	leaq	(%r11,%r11,2), %r11
	shlq	$5, %r11
	movq	16(%r14,%r11), %r10
	movq	80(%r14,%r11), %r11
	leaq	(%rbx,%rbx,2), %rbx
	shlq	$5, %rbx
	movq	16(%r14,%rbx), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_7:
	movq	%r14, %r15
	shrq	$32, %r15
	jne	.LBB0_10
	testq	%r10, %r10
	je	.LBB0_9
.LBB0_6:
	movss	(%rbx,%r14,4), %xmm0
	movl	%edx, (%r11,%r14,4)
	addss	(%r10,%r14,4), %xmm0
	movss	%xmm0, (%r10,%r14,4)
	incq	%r14
	cmpq	%r9, %r14
	jne	.LBB0_7
	jmp	.LBB0_2
.LBB0_9:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_10:
	.cfi_def_cfa_offset 32
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.0(%rip), %rdi
	leaq	.Lanon.a01df851b6197f632189e2f0fa818bdd.2(%rip), %rdx
	movl	$48, %esi
	callq	*core::panicking::panic@GOTPCREL(%rip)
.Lfunc_end0:
	.size	query_iter, .Lfunc_end0-query_iter
	.cfi_endproc

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.0,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.0,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.0:
	.ascii	"assertion failed: index as u32 as usize == index"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.0, 48

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.1,@object
	.section	.rodata..Lanon.a01df851b6197f632189e2f0fa818bdd.1,"a",@progbits
.Lanon.a01df851b6197f632189e2f0fa818bdd.1:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/3a83f4e/crates/bevy_ecs/src/storage/table.rs"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.1, 99

	.type	.Lanon.a01df851b6197f632189e2f0fa818bdd.2,@object
	.section	.data.rel.ro..Lanon.a01df851b6197f632189e2f0fa818bdd.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.a01df851b6197f632189e2f0fa818bdd.2:
	.quad	.Lanon.a01df851b6197f632189e2f0fa818bdd.1
	.asciz	"c\000\000\000\000\000\000\000w\000\000\000\t\000\000"
	.size	.Lanon.a01df851b6197f632189e2f0fa818bdd.2, 24

	.ident	"rustc version 1.76.0 (07dca489a 2024-02-04)"
	.section	".note.GNU-stack","",@progbits

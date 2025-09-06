	.file	"resource_remove.88888a60efa942f7-cgu.0"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_0:
	.zero	16,121
.LCPI0_1:
	.byte	204
	.byte	216
	.byte	226
	.byte	125
	.byte	143
	.byte	193
	.byte	84
	.byte	196
	.byte	136
	.byte	187
	.byte	244
	.byte	116
	.byte	44
	.byte	230
	.byte	172
	.byte	243
	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4
	.type	resource_insert,@function
resource_insert:
	cmpq	$0, 136(%rdi)
	je	.LBB0_12
	pushq	%rax
	movq	112(%rdi), %rcx
	movq	120(%rdi), %rdx
	leaq	-24(%rcx), %rsi
	movabsq	$-888081947883684984, %r8
	xorl	%r9d, %r9d
	movdqa	.LCPI0_0(%rip), %xmm1
	pcmpeqd	%xmm2, %xmm2
	movdqa	.LCPI0_1(%rip), %xmm3
.LBB0_2:
	andq	%rdx, %r8
	movdqu	(%rcx,%r8), %xmm0
	movdqa	%xmm0, %xmm4
	pcmpeqb	%xmm1, %xmm4
	pmovmskb	%xmm4, %eax
	testl	%eax, %eax
	je	.LBB0_5
.LBB0_3:
	rep		bsfl	%eax, %r10d
	addq	%r8, %r10
	andq	%rdx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r10
	movdqu	(%rsi,%r10,8), %xmm4
	pcmpeqb	%xmm3, %xmm4
	pmovmskb	%xmm4, %r11d
	cmpl	$65535, %r11d
	je	.LBB0_7
	leal	-1(%rax), %r10d
	andw	%ax, %r10w
	movl	%r10d, %eax
	jne	.LBB0_3
	.p2align	4
.LBB0_5:
	pcmpeqb	%xmm2, %xmm0
	pmovmskb	%xmm0, %r10d
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jne	.LBB0_11
	addq	%r9, %r8
	addq	$16, %r8
	addq	$16, %r9
	jmp	.LBB0_2
.LBB0_7:
	movq	-8(%rcx,%r10,8), %rcx
	xorl	%eax, %eax
	cmpq	528(%rdi), %rcx
	jae	.LBB0_13
	movq	520(%rdi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB0_13
	movq	472(%rdi), %rdi
	notq	%rcx
	shlq	$6, %rcx
	cmpq	$0, 32(%rdi,%rcx)
	je	.LBB0_13
	addq	%rcx, %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::swap_remove_and_forget_unchecked@GOTPCREL(%rip)
	movss	(%rax), %xmm0
	movl	$1, %eax
.LBB0_11:
	addq	$8, %rsp
	retq
.LBB0_12:
	xorl	%eax, %eax
	retq
.LBB0_13:
	addq	$8, %rsp
	retq
.Lfunc_end0:
	.size	resource_insert, .Lfunc_end0-resource_insert

	.ident	"rustc version 1.91.0-nightly (8e62bfd31 2025-08-12)"
	.section	".note.GNU-stack","",@progbits

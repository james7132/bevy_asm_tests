	.file	"resource_insert.64c7dd7b5d6da56c-cgu.0"
	.section	.text.unlikely.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::finish_grow,@function
alloc::raw_vec::finish_grow:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$0, 8(%rcx)
	je	.LBB0_3
	movq	16(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	jmp	.LBB0_7
.LBB0_3:
	testq	%rbx, %rbx
	je	.LBB0_4
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB0_7
.LBB0_4:
	movq	%r15, %rax
.LBB0_7:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmovneq	%rax, %r15
	sete	%cl
	movq	%r15, 8(%r14)
	movq	%rbx, 16(%r14)
	movq	%rcx, (%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end0-alloc::raw_vec::finish_grow

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle,@function
alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB1_8
	movq	%rdi, %rbx
	movq	(%rdi), %r8
	leaq	(%r8,%r8), %rax
	cmpq	%rax, %rsi
	cmovaq	%rsi, %rax
	cmpq	$5, %rax
	movl	$4, %r14d
	cmovaeq	%rax, %r14
	leal	7(%rcx), %eax
	andl	$1016, %eax
	xorl	%edi, %edi
	mulq	%r14
	jo	.LBB1_9
	movabsq	$9223372036854775800, %rdx
	cmpq	%rdx, %rax
	ja	.LBB1_11
	testq	%r8, %r8
	jne	.LBB1_5
	xorl	%ecx, %ecx
	jmp	.LBB1_6
.LBB1_5:
	movq	8(%rbx), %rdx
	imulq	%rcx, %r8
	movq	%rdx, 32(%rsp)
	movq	%r8, 48(%rsp)
	movl	$8, %ecx
.LBB1_6:
	movq	%rcx, 40(%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rcx
	movl	$8, %esi
	movq	%rax, %rdx
	callq	alloc::raw_vec::finish_grow
	cmpl	$1, 8(%rsp)
	je	.LBB1_10
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_8:
	.cfi_def_cfa_offset 80
	xorl	%edi, %edi
.LBB1_9:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB1_10:
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
.LBB1_11:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.1(%rip), %rdx
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end1:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end1-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.text.resource_insert,"ax",@progbits
	.globl	resource_insert
	.p2align	4
	.type	resource_insert,@function
resource_insert:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$424, %rsp
	.cfi_def_cfa_offset 480
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movd	%xmm0, 20(%rsp)
	movq	%rdi, %rbx
	movabsq	$-4304159756399193868, %rbp
	movabsq	$134108629206252412, %r10
	leaq	56(%rdi), %r15
	leaq	1440(%rdi), %rax
	movq	%r15, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	cmpq	$0, 136(%rdi)
	je	.LBB2_9
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r10, %rsi
.LBB2_2:
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %edi
	testl	%edi, %edi
	je	.LBB2_6
.LBB2_3:
	rep		bsfl	%edi, %r8d
	addq	%rsi, %r8
	andq	%rcx, %r8
	negq	%r8
	leaq	(%r8,%r8,2), %r8
	cmpq	%rbp, -24(%rax,%r8,8)
	jne	.LBB2_5
	cmpq	%r10, -16(%rax,%r8,8)
	je	.LBB2_8
.LBB2_5:
	leal	-1(%rdi), %r8d
	andw	%di, %r8w
	movl	%r8d, %edi
	jne	.LBB2_3
	.p2align	4
.LBB2_6:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edi
	testl	%edi, %edi
	jne	.LBB2_9
	addq	%rdx, %rsi
	addq	$16, %rsi
	addq	$16, %rdx
	jmp	.LBB2_2
.LBB2_9:
	movzbl	152(%rbx), %eax
	movq	216(%rbx), %rax
	movq	224(%rbx), %rcx
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r10, %rdi
.LBB2_10:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB2_14
.LBB2_11:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rcx, %r9
	movq	%r9, %rdx
	negq	%rdx
	imulq	$112, %rdx, %rdx
	cmpq	%rbp, -112(%rax,%rdx)
	jne	.LBB2_13
	cmpq	%r10, -104(%rax,%rdx)
	je	.LBB2_16
.LBB2_13:
	leal	-1(%r8), %edx
	andw	%r8w, %dx
	movl	%edx, %r8d
	jne	.LBB2_11
	.p2align	4
.LBB2_14:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	jne	.LBB2_20
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB2_10
.LBB2_8:
	leaq	(%rax,%r8,8), %rax
	movq	-8(%rax), %r14
	jmp	.LBB2_68
.LBB2_16:
	addq	%rax, %rdx
	imulq	$112, %r9, %rdi
	sarq	$4, %rdi
	movabsq	$7905747460161236407, %rsi
	imulq	%rdi, %rsi
	leaq	-16(%rsi), %rdi
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movdqu	(%rax,%rsi), %xmm0
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %r8d
	movw	$31, %r9w
	bsrw	%cx, %r9w
	xorl	$15, %r9d
	orl	$65536, %r8d
	rep		bsfl	%r8d, %r8d
	addl	%r9d, %r8d
	movb	$-128, %cl
	cmpw	$15, %r8w
	ja	.LBB2_18
	incq	232(%rbx)
	movb	$-1, %cl
.LBB2_18:
	movb	%cl, (%rax,%rsi)
	movb	%cl, 16(%rax,%rdi)
	decq	240(%rbx)
	movq	-96(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB2_19
.LBB2_20:
	movq	1440(%rbx), %r14
	leaq	1(%r14), %r12
	movq	%r12, 1440(%rbx)
	movw	$256, 128(%rsp)
	movq	$1, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r10, 80(%rsp)
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$1, 130(%rsp)
	movq	$0, 88(%rsp)
	leaq	136(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
	movq	72(%rbx), %r13
	subq	%r13, %r12
	jbe	.LBB2_21
	movq	(%r15), %rax
	subq	%r13, %rax
	movq	%r13, %rcx
	cmpq	%rax, %r12
	ja	.LBB2_23
.LBB2_24:
	movq	64(%rbx), %rax
	leaq	(%rcx,%rcx,8), %rdx
	shlq	$5, %rdx
	addq	%rax, %rdx
	movq	%r14, %rsi
	notq	%rsi
	addq	%r13, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB2_25:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$288, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB2_25
	subq	%rdi, %rcx
	movq	%rcx, 72(%rbx)
	jmp	.LBB2_27
.LBB2_21:
	movq	64(%rbx), %rax
.LBB2_27:
	movabsq	$134108629206252412, %r12
	leaq	(%r14,%r14,8), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %r15
	cmpl	$2, (%rax,%rcx)
	je	.LBB2_50
	movq	104(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_30
	movq	96(%r15), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_30:
	movq	80(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	88(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB2_35
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r12
	movq	8(%rsp), %r13
	jmp	.LBB2_32
	.p2align	4
.LBB2_34:
	addq	$32, %r13
	decq	%rbp
	je	.LBB2_35
.LBB2_32:
	movq	(%r13), %rax
	lock		decq	(%rax)
	jne	.LBB2_34
	#MEMBARRIER
	movq	%r13, %rdi
	callq	*%r12
	jmp	.LBB2_34
.LBB2_35:
	movq	72(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_37
	shlq	$5, %rsi
	movl	$8, %edx
	movq	8(%rsp), %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_37:
	movq	160(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_39
	movq	152(%r15), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_39:
	movq	136(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	144(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB2_44
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r12
	movq	8(%rsp), %r13
	jmp	.LBB2_41
	.p2align	4
.LBB2_43:
	addq	$32, %r13
	decq	%rbp
	je	.LBB2_44
.LBB2_41:
	movq	(%r13), %rax
	lock		decq	(%rax)
	jne	.LBB2_43
	#MEMBARRIER
	movq	%r13, %rdi
	callq	*%r12
	jmp	.LBB2_43
.LBB2_44:
	movq	128(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_46
	shlq	$5, %rsi
	movl	$8, %edx
	movq	8(%rsp), %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_46:
	movq	216(%r15), %rax
	testq	%rax, %rax
	movabsq	$-4304159756399193868, %rbp
	movabsq	$134108629206252412, %r12
	je	.LBB2_48
	movq	208(%r15), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_48:
	movq	184(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_50
	movq	192(%r15), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_50:
	leaq	136(%rsp), %rsi
	movl	$288, %edx
	movq	%r15, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	cmpq	$0, 128(%rbx)
	je	.LBB2_51
.LBB2_52:
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%r12, %rdi
	xorl	%r8d, %r8d
.LBB2_53:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r9d
	testl	%r9d, %r9d
	je	.LBB2_57
.LBB2_54:
	rep		bsfl	%r9d, %r10d
	addq	%rdi, %r10
	andq	%rcx, %r10
	negq	%r10
	leaq	(%r10,%r10,2), %r11
	cmpq	%rbp, -24(%rax,%r11,8)
	jne	.LBB2_56
	cmpq	%r12, -16(%rax,%r11,8)
	je	.LBB2_67
.LBB2_56:
	leal	-1(%r9), %r10d
	andw	%r9w, %r10w
	movl	%r10d, %r9d
	jne	.LBB2_54
.LBB2_57:
	cmpq	$1, %r8
	je	.LBB2_61
	pmovmskb	%xmm2, %edx
	testl	%edx, %edx
	je	.LBB2_59
	rep		bsfl	%edx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
.LBB2_61:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB2_64
	movl	$1, %r8d
	jmp	.LBB2_63
.LBB2_59:
	xorl	%r8d, %r8d
.LBB2_63:
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB2_53
.LBB2_19:
	movups	-88(%rdx), %xmm0
	movdqu	-72(%rdx), %xmm1
	movdqu	-56(%rdx), %xmm2
	movdqu	-40(%rdx), %xmm3
	movdqu	%xmm3, 192(%rsp)
	movdqu	%xmm2, 176(%rsp)
	movdqu	%xmm1, 160(%rsp)
	movups	%xmm0, 144(%rsp)
	movdqu	-24(%rdx), %xmm0
	movq	-8(%rdx), %rcx
	movq	%rax, 136(%rsp)
	movdqu	%xmm0, 208(%rsp)
	movq	%rcx, 224(%rsp)
	leaq	136(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r14
	jmp	.LBB2_68
.LBB2_64:
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB2_65
.LBB2_66:
	andb	$1, %sil
	movzbl	%sil, %esi
	subq	%rsi, 128(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$0, (%rax,%rdx)
	movb	$0, 16(%rax,%rsi)
	incq	136(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movq	%rbp, -24(%rax,%rcx,8)
	movq	%r12, -16(%rax,%rcx,8)
	movq	%rdx, %r10
.LBB2_67:
	leaq	(%r10,%r10,2), %rcx
	movq	%r14, -8(%rax,%rcx,8)
.LBB2_68:
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_70
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_70:
	movss	20(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movl	1448(%rbx), %ebp
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	64(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	528(%rbx), %r12
	cmpq	%r12, %r14
	jae	.LBB2_73
	movq	520(%rbx), %rdx
	movq	(%rdx,%r14,8), %r15
	testq	%r15, %r15
	je	.LBB2_73
	notq	%r15
	shlq	$6, %r15
	addq	472(%rbx), %r15
	cmpq	$0, 32(%r15)
	jne	.LBB2_87
.LBB2_88:
	cmpq	$0, 24(%r15)
	je	.LBB2_90
	xorl	%edi, %edi
.LBB2_91:
	leaq	1(%rdi), %rax
	movq	%rax, 32(%r15)
	movq	8(%r15), %rdx
	imulq	%rdx, %rdi
	addq	16(%r15), %rdi
	leaq	24(%rsp), %rsi
	callq	*memcpy@GOTPCREL(%rip)
	movl	%ebp, 56(%r15)
	jmp	.LBB2_92
.LBB2_73:
	cmpq	%rcx, %r14
	jae	.LBB2_93
	leaq	(%r14,%r14,8), %rcx
	shlq	$5, %rcx
	cmpl	$2, (%rax,%rcx)
	je	.LBB2_93
	addq	%rcx, %rax
	cmpb	$0, 65(%rax)
	je	.LBB2_94
	movq	40(%rax), %rsi
	movq	48(%rax), %rdx
	movq	56(%rax), %rcx
	leaq	136(%rsp), %rdi
	movl	$1, %r8d
	callq	*bevy_ecs::storage::blob_vec::BlobVec::new@GOTPCREL(%rip)
	movq	%r14, %r13
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%rsp)
	movq	480(%rbx), %r15
	subq	%r12, %r13
	jb	.LBB2_80
	incq	%r13
	movq	512(%rbx), %rax
	subq	%r12, %rax
	cmpq	%rax, %r13
	ja	.LBB2_78
.LBB2_79:
	leaq	(,%r12,8), %rdi
	addq	520(%rbx), %rdi
	leaq	(,%r13,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%r13, %r12
	movq	%r12, 528(%rbx)
.LBB2_80:
	cmpq	%r12, %r14
	jae	.LBB2_95
	movq	%r15, %rax
	notq	%rax
	movq	520(%rbx), %rcx
	movq	%rax, (%rcx,%r14,8)
	movq	504(%rbx), %r12
	cmpq	488(%rbx), %r12
	jne	.LBB2_83
	leaq	488(%rbx), %rdi
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.3(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB2_83:
	movq	496(%rbx), %rax
	movq	%r14, (%rax,%r12,8)
	incq	%r12
	movq	%r12, 504(%rbx)
	movq	480(%rbx), %r14
	cmpq	464(%rbx), %r14
	jne	.LBB2_85
	leaq	464(%rbx), %rdi
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.4(%rip), %rsi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB2_85:
	movq	472(%rbx), %rax
	movq	%r14, %rcx
	shlq	$6, %rcx
	movups	136(%rsp), %xmm0
	movdqu	152(%rsp), %xmm1
	movdqu	168(%rsp), %xmm2
	movdqu	184(%rsp), %xmm3
	movdqu	%xmm3, 48(%rax,%rcx)
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%r14
	movq	%r14, 480(%rbx)
	shlq	$6, %r15
	addq	472(%rbx), %r15
	cmpq	$0, 32(%r15)
	je	.LBB2_88
.LBB2_87:
	leaq	24(%rsp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::replace_unchecked@GOTPCREL(%rip)
.LBB2_92:
	movl	%ebp, 60(%r15)
	addq	$424, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_93:
	.cfi_def_cfa_offset 480
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.7(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB2_94:
	leaq	7(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	<bevy_utils::debug_info::DebugName as core::fmt::Display>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.10(%rip), %rax
	movq	%rax, 136(%rsp)
	movq	$2, 144(%rsp)
	movq	$0, 168(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	$1, 160(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.11(%rip), %rsi
	leaq	136(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB2_51:
	leaq	144(%rbx), %rdx
	leaq	112(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	jmp	.LBB2_52
.LBB2_90:
	movl	$1, %esi
	movq	%r15, %rdi
	callq	*bevy_ecs::storage::blob_vec::BlobVec::reserve::do_reserve@GOTPCREL(%rip)
	movq	32(%r15), %rdi
	jmp	.LBB2_91
.LBB2_78:
	leaq	512(%rbx), %rdi
	movl	$8, %ecx
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	528(%rbx), %r12
	jmp	.LBB2_79
.LBB2_23:
	movl	$288, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	72(%rbx), %rcx
	jmp	.LBB2_24
.LBB2_65:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB2_66
.LBB2_95:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.5(%rip), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end2:
	.size	resource_insert, .Lfunc_end2-resource_insert
	.cfi_endproc

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.0,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.0:
	.asciz	"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2/library/alloc/src/raw_vec/mod.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.0, 81

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.1,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.1:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.0
	.asciz	"Q\000\000\000\000\000\000\000.\002\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.1, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.2,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.2:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.2, 105

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.3,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.3:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.2
	.asciz	"i\000\000\000\000\000\000\000\003\002\000\000\032\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.3, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.4,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.4:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.2
	.asciz	"i\000\000\000\000\000\000\000\004\002\000\000\030\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.4, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.5,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.5,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.5:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.2
	.asciz	"i\000\000\000\000\000\000\000M\000\000\000\024\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.5, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.6:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/7fa4f74/crates/bevy_ecs/src/storage/resource.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.6, 103

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.7,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.7:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"g\000\000\000\000\000\000\000g\001\000\000D\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.7, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.8,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.8,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.8:
	.ascii	"Send + Sync resource "
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.8, 21

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.9,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.9,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.9:
	.ascii	" initialized as non_send. It may have been inserted via World::insert_non_send_resource by accident. Try using World::insert_resource instead."
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.9, 142

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.10,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.10,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.10:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.8
	.asciz	"\025\000\000\000\000\000\000"
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.9
	.asciz	"\216\000\000\000\000\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.10, 32

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.11,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.11,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.11:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"g\000\000\000\000\000\000\000i\001\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.11, 24

	.ident	"rustc version 1.89.0 (29483883e 2025-08-04)"
	.section	".note.GNU-stack","",@progbits

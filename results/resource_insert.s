	.file	"resource_insert.21da631d6c944e9e-cgu.0"
	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::finish_grow","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::finish_grow,@function
alloc::raw_vec::RawVecInner<A>::finish_grow:
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
	movq	%rdx, %r9
	movq	%rdi, %rbx
	leal	7(%r8), %eax
	andl	$1016, %eax
	mulq	%rcx
	movq	%rax, %r14
	seto	%al
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %r14
	seta	%cl
	orb	%al, %cl
	movl	$1, %r15d
	je	.LBB0_2
	movl	$8, %eax
	xorl	%r14d, %r14d
	jmp	.LBB0_10
.LBB0_2:
	testq	%rsi, %rsi
	je	.LBB0_4
	imulq	%rsi, %r8
	movl	$8, %edx
	movq	%r9, %rdi
	movq	%r8, %rsi
	movq	%r14, %rcx
	callq	*__rustc::__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB0_6
	jmp	.LBB0_9
.LBB0_4:
	testq	%r14, %r14
	je	.LBB0_5
	callq	*__rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL(%rip)
	movl	$8, %esi
	movq	%r14, %rdi
	callq	*__rustc::__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB0_6
.LBB0_9:
	movq	$8, 8(%rbx)
	movl	$16, %eax
	jmp	.LBB0_10
.LBB0_5:
	movl	$8, %eax
.LBB0_6:
	movq	%rax, 8(%rbx)
	movl	$16, %eax
	xorl	%r15d, %r15d
.LBB0_10:
	movq	%r14, (%rbx,%rax)
	movq	%r15, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	alloc::raw_vec::RawVecInner<A>::finish_grow, .Lfunc_end0-alloc::raw_vec::RawVecInner<A>::finish_grow
	.cfi_endproc

	.section	".text.unlikely.alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle","ax",@progbits
	.p2align	4
	.type	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle,@function
alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	addq	%rdx, %rsi
	jb	.LBB1_1
	movq	%rcx, %r8
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	cmpq	$5, %rcx
	movl	$4, %r14d
	cmovaeq	%rcx, %r14
	movq	8(%rdi), %rdx
	movq	%rsp, %rdi
	movq	%rax, %rsi
	movq	%r14, %rcx
	callq	alloc::raw_vec::RawVecInner<A>::finish_grow
	cmpl	$1, (%rsp)
	je	.LBB1_3
	movq	8(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:
	.cfi_def_cfa_offset 48
	xorl	%edi, %edi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.LBB1_3:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	*alloc::raw_vec::handle_error@GOTPCREL(%rip)
.Lfunc_end1:
	.size	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle, .Lfunc_end1-alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_0:
	.zero	16,12
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
	subq	$456, %rsp
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movd	%xmm0, 20(%rsp)
	movq	%rdi, %rbx
	movabsq	$1766504068380957801, %rbp
	movabsq	$7946665235436323393, %r14
	leaq	56(%rdi), %r15
	leaq	1440(%rdi), %rax
	movq	%r15, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	$0, 24(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	cmpq	$0, 136(%rdi)
	je	.LBB2_8
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	leaq	-24(%rax), %rdx
	xorl	%esi, %esi
	movdqa	.LCPI2_0(%rip), %xmm0
	pcmpeqd	%xmm1, %xmm1
	movq	%rbp, %rdi
.LBB2_2:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm3
	pmovmskb	%xmm3, %r8d
	testl	%r8d, %r8d
	je	.LBB2_5
.LBB2_3:
	rep		bsfl	%r8d, %r9d
	addq	%rdi, %r9
	andq	%rcx, %r9
	negq	%r9
	leaq	(%r9,%r9,2), %r9
	movq	8(%rdx,%r9,8), %r10
	xorq	%rbp, %r10
	movq	(%rdx,%r9,8), %r11
	xorq	%r14, %r11
	orq	%r10, %r11
	je	.LBB2_7
	leal	-1(%r8), %r9d
	andw	%r8w, %r9w
	movl	%r9d, %r8d
	jne	.LBB2_3
	.p2align	4
.LBB2_5:
	pcmpeqb	%xmm1, %xmm2
	pmovmskb	%xmm2, %r8d
	testl	%r8d, %r8d
	jne	.LBB2_8
	addq	%rsi, %rdi
	addq	$16, %rdi
	addq	$16, %rsi
	jmp	.LBB2_2
.LBB2_8:
	movzbl	152(%rbx), %eax
	movq	216(%rbx), %rax
	movq	224(%rbx), %rcx
	leaq	-128(%rax), %rdx
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	movq	%rbp, %r8
.LBB2_9:
	andq	%rcx, %r8
	movdqu	(%rax,%r8), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	.LCPI2_0(%rip), %xmm2
	pmovmskb	%xmm2, %r9d
	testl	%r9d, %r9d
	je	.LBB2_12
.LBB2_10:
	rep		bsfl	%r9d, %edi
	addq	%r8, %rdi
	andq	%rcx, %rdi
	movq	%rdi, %r10
	shlq	$7, %r10
	movq	%rdx, %r11
	subq	%r10, %r11
	movq	8(%r11), %r10
	xorq	%rbp, %r10
	movq	(%r11), %r11
	xorq	%r14, %r11
	orq	%r10, %r11
	je	.LBB2_14
	leal	-1(%r9), %edi
	andw	%r9w, %di
	movl	%edi, %r9d
	jne	.LBB2_10
	.p2align	4
.LBB2_12:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edi
	testl	%edi, %edi
	jne	.LBB2_18
	addq	%rsi, %r8
	addq	$16, %r8
	addq	$16, %rsi
	jmp	.LBB2_9
.LBB2_7:
	movq	-8(%rax,%r9,8), %r14
	jmp	.LBB2_65
.LBB2_14:
	movq	%rdi, %rdx
	negq	%rdx
	shlq	$7, %rdx
	addq	%rax, %rdx
	leaq	-16(%rdi), %rsi
	andq	%rcx, %rsi
	movdqu	(%rax,%rsi), %xmm0
	pcmpeqd	%xmm1, %xmm1
	pcmpeqb	%xmm1, %xmm0
	pmovmskb	%xmm0, %ecx
	movdqu	(%rax,%rdi), %xmm0
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
	ja	.LBB2_16
	incq	232(%rbx)
	movb	$-1, %cl
.LBB2_16:
	movb	%cl, (%rax,%rdi)
	movb	%cl, 16(%rax,%rsi)
	decq	240(%rbx)
	movq	-112(%rdx), %rax
	cmpq	$2, %rax
	jne	.LBB2_17
.LBB2_18:
	movq	1440(%rbx), %r14
	leaq	1(%r14), %r12
	movq	%r12, 1440(%rbx)
	movw	$256, 144(%rsp)
	movq	$1, 64(%rsp)
	movdqu	.Lanon.7389e6565b10821dad2f4dd8892551e5.0(%rip), %xmm0
	movdqu	%xmm0, 72(%rsp)
	movq	$4, 104(%rsp)
	movq	$4, 112(%rsp)
	movq	$0, 136(%rsp)
	movb	$1, 146(%rsp)
	movq	$0, 88(%rsp)
	movb	$2, 120(%rsp)
	leaq	152(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movq	%r14, %rsi
	callq	*bevy_ecs::component::info::ComponentInfo::new@GOTPCREL(%rip)
	movq	72(%rbx), %r13
	subq	%r13, %r12
	jbe	.LBB2_19
	movq	(%r15), %rax
	subq	%r13, %rax
	movq	%r13, %rcx
	cmpq	%rax, %r12
	ja	.LBB2_21
.LBB2_22:
	movq	64(%rbx), %rax
	imulq	$304, %rcx, %rdx
	addq	%rax, %rdx
	movq	%r14, %rsi
	notq	%rsi
	addq	%r13, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB2_23:
	movq	$2, (%rdx)
	decq	%rdi
	addq	$304, %rdx
	cmpq	%rdi, %rsi
	jne	.LBB2_23
	subq	%rdi, %rcx
	movq	%rcx, 72(%rbx)
	imulq	$304, %r14, %rcx
	leaq	(%rax,%rcx), %r15
	cmpl	$2, (%rax,%rcx)
	jne	.LBB2_26
	jmp	.LBB2_48
.LBB2_19:
	movq	64(%rbx), %rax
	imulq	$304, %r14, %rcx
	leaq	(%rax,%rcx), %r15
	cmpl	$2, (%rax,%rcx)
	je	.LBB2_48
.LBB2_26:
	movq	120(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_28
	movq	112(%r15), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_28:
	movq	96(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	104(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB2_33
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r12
	movq	8(%rsp), %r13
	jmp	.LBB2_30
	.p2align	4
.LBB2_32:
	addq	$32, %r13
	decq	%rbp
	je	.LBB2_33
.LBB2_30:
	movq	(%r13), %rax
	lock		decq	(%rax)
	jne	.LBB2_32
	#MEMBARRIER
	movq	%r13, %rdi
	callq	*%r12
	jmp	.LBB2_32
.LBB2_33:
	movq	88(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_35
	shlq	$5, %rsi
	movl	$8, %edx
	movq	8(%rsp), %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_35:
	movq	176(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_37
	movq	168(%r15), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_37:
	movq	152(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	160(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB2_42
	movq	alloc::sync::Arc<T,A>::drop_slow@GOTPCREL(%rip), %r12
	movq	8(%rsp), %r13
	jmp	.LBB2_39
	.p2align	4
.LBB2_41:
	addq	$32, %r13
	decq	%rbp
	je	.LBB2_42
.LBB2_39:
	movq	(%r13), %rax
	lock		decq	(%rax)
	jne	.LBB2_41
	#MEMBARRIER
	movq	%r13, %rdi
	callq	*%r12
	jmp	.LBB2_41
.LBB2_42:
	movq	144(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_44
	shlq	$5, %rsi
	movl	$8, %edx
	movq	8(%rsp), %rdi
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_44:
	movq	232(%r15), %rax
	testq	%rax, %rax
	movabsq	$1766504068380957801, %rbp
	je	.LBB2_46
	movq	224(%r15), %rdi
	leaq	23(,%rax,8), %rcx
	andq	$-16, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$17, %rsi
	subq	%rcx, %rdi
	movl	$16, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_46:
	movq	200(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_48
	movq	208(%r15), %rdi
	shlq	$4, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_48:
	leaq	152(%rsp), %rsi
	movl	$304, %edx
	movq	%r15, %rdi
	callq	*memcpy@GOTPCREL(%rip)
	cmpq	$0, 128(%rbx)
	je	.LBB2_49
.LBB2_50:
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	leaq	-24(%rax), %rsi
	xorl	%r9d, %r9d
	pcmpeqd	%xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%r8d, %r8d
	movdqa	.LCPI2_0(%rip), %xmm3
	movabsq	$7946665235436323393, %r13
.LBB2_51:
	andq	%rcx, %rdi
	movdqu	(%rax,%rdi), %xmm1
	movdqa	%xmm1, %xmm2
	pcmpeqb	%xmm3, %xmm2
	pmovmskb	%xmm2, %r10d
	testl	%r10d, %r10d
	je	.LBB2_54
.LBB2_52:
	rep		bsfl	%r10d, %r11d
	addq	%rdi, %r11
	andq	%rcx, %r11
	negq	%r11
	leaq	(%r11,%r11,2), %r15
	movq	8(%rsi,%r15,8), %r12
	xorq	%rbp, %r12
	movq	(%rsi,%r15,8), %r15
	xorq	%r13, %r15
	orq	%r12, %r15
	je	.LBB2_64
	leal	-1(%r10), %r11d
	andw	%r10w, %r11w
	movl	%r11d, %r10d
	jne	.LBB2_52
.LBB2_54:
	cmpq	$1, %r9
	je	.LBB2_58
	pmovmskb	%xmm1, %edx
	testl	%edx, %edx
	je	.LBB2_56
	rep		bsfl	%edx, %edx
	addq	%rdi, %rdx
	andq	%rcx, %rdx
.LBB2_58:
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	testl	%r9d, %r9d
	jne	.LBB2_61
	movl	$1, %r9d
	jmp	.LBB2_60
.LBB2_56:
	xorl	%r9d, %r9d
.LBB2_60:
	addq	%r8, %rdi
	addq	$16, %rdi
	addq	$16, %r8
	jmp	.LBB2_51
.LBB2_17:
	movq	-8(%rdx), %rcx
	movq	%rcx, 256(%rsp)
	movups	-24(%rdx), %xmm0
	movups	%xmm0, 240(%rsp)
	movups	-40(%rdx), %xmm0
	movups	%xmm0, 224(%rsp)
	movdqu	-104(%rdx), %xmm0
	movdqu	-88(%rdx), %xmm1
	movdqu	-72(%rdx), %xmm2
	movdqu	-56(%rdx), %xmm3
	movdqu	%xmm3, 208(%rsp)
	movdqu	%xmm2, 192(%rsp)
	movdqu	%xmm1, 176(%rsp)
	movdqu	%xmm0, 160(%rsp)
	movq	%rax, 152(%rsp)
	leaq	152(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	*bevy_ecs::component::register::QueuedRegistration::register@GOTPCREL(%rip)
	movq	%rax, %r14
	jmp	.LBB2_65
.LBB2_61:
	movzbl	(%rax,%rdx), %esi
	testb	%sil, %sil
	jns	.LBB2_62
.LBB2_63:
	andb	$1, %sil
	movzbl	%sil, %esi
	subq	%rsi, 128(%rbx)
	leaq	-16(%rdx), %rsi
	andq	%rcx, %rsi
	movb	$12, (%rax,%rdx)
	movb	$12, 16(%rax,%rsi)
	incq	136(%rbx)
	negq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	movabsq	$7946665235436323393, %rsi
	movq	%rsi, -24(%rax,%rcx,8)
	movq	%rbp, -16(%rax,%rcx,8)
	movq	%rdx, %r11
.LBB2_64:
	leaq	(%r11,%r11,2), %rcx
	movq	%r14, -8(%rax,%rcx,8)
.LBB2_65:
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_67
	movq	32(%rsp), %rdi
	shlq	$3, %rsi
	movl	$8, %edx
	callq	*__rustc::__rust_dealloc@GOTPCREL(%rip)
.LBB2_67:
	movss	20(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movl	1448(%rbx), %ebp
	movq	%rbx, %rdi
	callq	*bevy_ecs::world::World::flush_components@GOTPCREL(%rip)
	movq	64(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	528(%rbx), %r15
	cmpq	%r15, %r14
	jae	.LBB2_70
	movq	520(%rbx), %rdx
	movq	(%rdx,%r14,8), %rdx
	testq	%rdx, %rdx
	je	.LBB2_70
	notq	%rdx
	imulq	$56, %rdx, %r14
	addq	472(%rbx), %r14
	cmpb	$1, 48(%r14)
	je	.LBB2_84
.LBB2_85:
	movq	8(%r14), %rdx
	movq	16(%r14), %rdi
	leaq	24(%rsp), %rsi
	callq	*memmove@GOTPCREL(%rip)
	movl	%ebp, 40(%r14)
	movb	$1, 48(%r14)
	jmp	.LBB2_86
.LBB2_70:
	cmpq	%rcx, %r14
	jae	.LBB2_87
	imulq	$304, %r14, %rcx
	cmpl	$2, (%rax,%rcx)
	je	.LBB2_87
	addq	%rcx, %rax
	cmpb	$0, 81(%rax)
	je	.LBB2_88
	movq	40(%rax), %rsi
	movq	48(%rax), %rdx
	movq	72(%rax), %rcx
	leaq	152(%rsp), %rdi
	movl	$1, %r8d
	callq	*bevy_ecs::storage::blob_array::BlobArray::with_capacity@GOTPCREL(%rip)
	movq	%r14, %r12
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%rsp)
	movb	$0, 200(%rsp)
	movq	480(%rbx), %r13
	subq	%r15, %r12
	jb	.LBB2_77
	incq	%r12
	movq	512(%rbx), %rax
	subq	%r15, %rax
	cmpq	%rax, %r12
	ja	.LBB2_75
.LBB2_76:
	leaq	(,%r15,8), %rdi
	addq	520(%rbx), %rdi
	leaq	(,%r12,8), %rdx
	xorl	%esi, %esi
	callq	*memset@GOTPCREL(%rip)
	addq	%r12, %r15
	movq	%r15, 528(%rbx)
.LBB2_77:
	cmpq	%r15, %r14
	jae	.LBB2_89
	movq	%r13, %rax
	notq	%rax
	movq	520(%rbx), %rcx
	movq	%rax, (%rcx,%r14,8)
	movq	504(%rbx), %r15
	cmpq	488(%rbx), %r15
	jne	.LBB2_80
	leaq	488(%rbx), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB2_80:
	movq	496(%rbx), %rax
	movq	%r14, (%rax,%r15,8)
	incq	%r15
	movq	%r15, 504(%rbx)
	movq	480(%rbx), %r14
	cmpq	464(%rbx), %r14
	jne	.LBB2_82
	leaq	464(%rbx), %rdi
	callq	*alloc::raw_vec::RawVec<T,A>::grow_one@GOTPCREL(%rip)
.LBB2_82:
	movq	472(%rbx), %rax
	imulq	$56, %r14, %rcx
	movq	200(%rsp), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movups	152(%rsp), %xmm0
	movdqu	168(%rsp), %xmm1
	movdqu	184(%rsp), %xmm2
	movdqu	%xmm2, 32(%rax,%rcx)
	movdqu	%xmm1, 16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	incq	%r14
	movq	%r14, 480(%rbx)
	imulq	$56, %r13, %r14
	addq	472(%rbx), %r14
	cmpb	$1, 48(%r14)
	jne	.LBB2_85
.LBB2_84:
	leaq	24(%rsp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*bevy_ecs::storage::blob_array::BlobArray::replace_unchecked@GOTPCREL(%rip)
.LBB2_86:
	movl	%ebp, 44(%r14)
	addq	$456, %rsp
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
.LBB2_87:
	.cfi_def_cfa_offset 512
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.4(%rip), %rdi
	callq	*core::option::unwrap_failed@GOTPCREL(%rip)
.LBB2_88:
	leaq	7(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	<bevy_utils::debug_info::DebugName as core::fmt::Display>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.7(%rip), %rax
	movq	%rax, 152(%rsp)
	movq	$2, 160(%rsp)
	movq	$0, 184(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	$1, 176(%rsp)
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.8(%rip), %rsi
	leaq	152(%rsp), %rdi
	callq	*core::panicking::panic_fmt@GOTPCREL(%rip)
.LBB2_49:
	leaq	144(%rbx), %rdx
	leaq	112(%rbx), %rdi
	movl	$1, %esi
	movl	$1, %ecx
	callq	*hashbrown::raw::RawTable<T,A>::reserve_rehash@GOTPCREL(%rip)
	jmp	.LBB2_50
.LBB2_75:
	leaq	512(%rbx), %rdi
	movl	$8, %ecx
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	528(%rbx), %r15
	jmp	.LBB2_76
.LBB2_21:
	movl	$304, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
	movq	72(%rbx), %rcx
	jmp	.LBB2_22
.LBB2_62:
	movdqa	(%rax), %xmm0
	pmovmskb	%xmm0, %edx
	rep		bsfl	%edx, %edx
	movzbl	(%rax,%rdx), %esi
	jmp	.LBB2_63
.LBB2_89:
	leaq	.Lanon.7389e6565b10821dad2f4dd8892551e5.2(%rip), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
.Lfunc_end2:
	.size	resource_insert, .Lfunc_end2-resource_insert
	.cfi_endproc

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.0,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.0:
	.quad	7946665235436323393
	.quad	1766504068380957801
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.0, 16

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.1:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/storage/sparse_set.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.1, 105

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.2,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.2:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.1
	.asciz	"h\000\000\000\000\000\000\000R\000\000\000\024\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.2, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.7389e6565b10821dad2f4dd8892551e5.3:
	.asciz	"/home/james/.cargo/git/checkouts/bevy-50d7e162b728c6c6/e3814a9/crates/bevy_ecs/src/storage/resource.rs"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.3, 103

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.4,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.4,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.4:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.3
	.asciz	"f\000\000\000\000\000\000\000t\001\000\000D\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.4, 24

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.5,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.5,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.5:
	.ascii	"Send + Sync resource "
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.5, 21

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.6,@object
	.section	.rodata..Lanon.7389e6565b10821dad2f4dd8892551e5.6,"a",@progbits
.Lanon.7389e6565b10821dad2f4dd8892551e5.6:
	.ascii	" initialized as non_send. It may have been inserted via World::insert_non_send_resource by accident. Try using World::insert_resource instead."
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.6, 142

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.7,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.7:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.5
	.asciz	"\025\000\000\000\000\000\000"
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.6
	.asciz	"\216\000\000\000\000\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.7, 32

	.type	.Lanon.7389e6565b10821dad2f4dd8892551e5.8,@object
	.section	.data.rel.ro..Lanon.7389e6565b10821dad2f4dd8892551e5.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.7389e6565b10821dad2f4dd8892551e5.8:
	.quad	.Lanon.7389e6565b10821dad2f4dd8892551e5.3
	.asciz	"f\000\000\000\000\000\000\000v\001\000\000\021\000\000"
	.size	.Lanon.7389e6565b10821dad2f4dd8892551e5.8, 24

	.ident	"rustc version 1.93.0-nightly (82ae0ee64 2025-10-31)"
	.section	".note.GNU-stack","",@progbits

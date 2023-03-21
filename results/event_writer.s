	.text
	.file	"event_writer.421096b4-cgu.0"
	.section	".text.<&T as core::fmt::Display>::fmt","ax",@progbits
	.p2align	4, 0x90
	.type	<&T as core::fmt::Display>::fmt,@function
<&T as core::fmt::Display>::fmt:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*<str as core::fmt::Display>::fmt@GOTPCREL(%rip)
.Lfunc_end0:
	.size	<&T as core::fmt::Display>::fmt, .Lfunc_end0-<&T as core::fmt::Display>::fmt
	.cfi_endproc

	.section	".text.core::ptr::drop_in_place<core::fmt::Arguments>","ax",@progbits
	.p2align	4, 0x90
	.type	core::ptr::drop_in_place<core::fmt::Arguments>,@function
core::ptr::drop_in_place<core::fmt::Arguments>:
	.cfi_startproc
	retq
.Lfunc_end1:
	.size	core::ptr::drop_in_place<core::fmt::Arguments>, .Lfunc_end1-core::ptr::drop_in_place<core::fmt::Arguments>
	.cfi_endproc

	.section	.text.alloc::raw_vec::finish_grow,"ax",@progbits
	.p2align	4, 0x90
	.type	alloc::raw_vec::finish_grow,@function
alloc::raw_vec::finish_grow:
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB2_5
	movq	%rdx, %r15
	cmpq	$0, 16(%rcx)
	je	.LBB2_7
	movq	8(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_7
	movq	(%rcx), %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.LBB2_11
.LBB2_4:
	movq	%r14, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB2_6
.LBB2_7:
	testq	%r14, %r14
	je	.LBB2_8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB2_4
.LBB2_11:
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	xorl	%eax, %eax
	jmp	.LBB2_12
.LBB2_5:
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
.LBB2_6:
	movl	$1, %eax
.LBB2_12:
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB2_8:
	.cfi_def_cfa_offset 32
	movq	%r15, %rax
	testq	%rax, %rax
	jne	.LBB2_11
	jmp	.LBB2_4
.Lfunc_end2:
	.size	alloc::raw_vec::finish_grow, .Lfunc_end2-alloc::raw_vec::finish_grow
	.cfi_endproc

	.section	".text.alloc::raw_vec::RawVec<T,A>::reserve_for_push","ax",@progbits
	.p2align	4, 0x90
	.type	alloc::raw_vec::RawVec<T,A>::reserve_for_push,@function
alloc::raw_vec::RawVec<T,A>::reserve_for_push:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	incq	%rsi
	je	.LBB3_10
	movq	%rdi, %r14
	movq	(%rdi), %rax
	leaq	(%rax,%rax), %rcx
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	cmpq	$5, %rsi
	movl	$4, %ebx
	cmovaeq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rbx, %rcx
	shrq	$59, %rcx
	sete	%dl
	movq	%rbx, %rsi
	shlq	$4, %rsi
	shlq	$3, %rdx
	testq	%rax, %rax
	je	.LBB3_3
	movq	8(%r14), %rcx
	shlq	$4, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$8, 24(%rsp)
	jmp	.LBB3_4
.LBB3_3:
	movq	$0, 24(%rsp)
.LBB3_4:
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rcx
	callq	alloc::raw_vec::finish_grow
	cmpq	$0, 32(%rsp)
	movq	40(%rsp), %rdi
	je	.LBB3_5
	movq	48(%rsp), %rsi
	movabsq	$-9223372036854775807, %rax
	cmpq	%rax, %rsi
	jne	.LBB3_8
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%r14)
	movq	%rbx, (%r14)
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_8:
	.cfi_def_cfa_offset 80
	testq	%rsi, %rsi
	jne	.LBB3_9
.LBB3_10:
	callq	*alloc::raw_vec::capacity_overflow@GOTPCREL(%rip)
	ud2
.LBB3_9:
	callq	*alloc::alloc::handle_alloc_error@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	alloc::raw_vec::RawVec<T,A>::reserve_for_push, .Lfunc_end3-alloc::raw_vec::RawVec<T,A>::reserve_for_push
	.cfi_endproc

	.section	".text.<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt","ax",@progbits
	.p2align	4, 0x90
	.type	<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt,@function
<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt:
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.0(%rip), %rsi
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.8(%rip), %rcx
	leaq	96(%rsp), %rdi
	movl	$15, %edx
	movl	$2, %r8d
	callq	*core::str::pattern::StrSearcher::new@GOTPCREL(%rip)
	movq	96(%rsp), %rdi
	movq	104(%rsp), %r13
	movq	136(%rsp), %rdx
	movq	152(%rsp), %rbx
	cmpq	$0, 128(%rsp)
	movq	%r14, 64(%rsp)
	movq	%rbp, 56(%rsp)
	je	.LBB4_38
	movq	120(%rsp), %rsi
	movq	168(%rsp), %r8
	leaq	(%r8,%rsi), %rax
	decq	%rax
	cmpq	%r13, %rax
	jae	.LBB4_59
	movq	112(%rsp), %r10
	movq	160(%rsp), %r11
	movq	184(%rsp), %r14
	leaq	-1(%rsi), %r12
	movq	%rsi, %rcx
	movq	%rbx, 24(%rsp)
	subq	%rbx, %rcx
	movq	%rcx, 32(%rsp)
	leaq	-1(%rdx), %rcx
	movq	%rcx, 16(%rsp)
	cmpq	%rsi, %rcx
	setb	7(%rsp)
	movq	%rdx, %rcx
	negq	%rcx
	movq	%rcx, 48(%rsp)
	leaq	(%r10,%rdx), %rcx
	movq	%rcx, 72(%rsp)
	leaq	(%rdi,%rdx), %r15
	leaq	(%r10,%rdx), %rcx
	decq	%rcx
	movq	%rcx, 40(%rsp)
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_3:
	xorl	%r14d, %r14d
.LBB4_4:
	addq	%rsi, %r8
	leaq	(%r8,%r12), %rax
	movq	%r8, 8(%rsp)
	cmpq	%r13, %rax
	jae	.LBB4_62
.LBB4_5:
	cmpq	$-1, %r14
	jne	.LBB4_6
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_12:
	addq	%rsi, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jae	.LBB4_61
.LBB4_6:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB4_12
	cmpq	%r14, %rdx
	movq	%r14, %rax
	cmovaq	%rdx, %rax
	leaq	(%rdi,%r8), %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB4_8:
	cmpq	%rsi, %rcx
	jae	.LBB4_14
	leaq	(%r8,%rcx), %rbp
	cmpq	%r13, %rbp
	jae	.LBB4_65
	leaq	1(%rcx), %rbp
	movzbl	(%r10,%rcx), %r9d
	cmpb	(%rbx,%rcx), %r9b
	movq	%rbp, %rcx
	je	.LBB4_8
	addq	48(%rsp), %r8
	addq	%rbp, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB4_6
	jmp	.LBB4_61
	.p2align	4, 0x90
.LBB4_14:
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB4_15:
	cmpq	%rax, %r14
	jae	.LBB4_3
	decq	%rax
	cmpq	%rsi, %rax
	jae	.LBB4_37
	leaq	(%rax,%r8), %rbx
	cmpq	%r13, %rbx
	jae	.LBB4_63
	movzbl	(%r10,%rax), %ecx
	cmpb	(%rdi,%rbx), %cl
	je	.LBB4_15
	addq	24(%rsp), %r8
	movq	32(%rsp), %r14
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB4_6
	jmp	.LBB4_61
	.p2align	4, 0x90
.LBB4_20:
	addq	%rsi, %r8
.LBB4_21:
	movq	%r8, %rcx
.LBB4_22:
	leaq	(%rcx,%r12), %rax
	movq	%rcx, %r8
	cmpq	%r13, %rax
	jae	.LBB4_61
.LBB4_23:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB4_20
	xorl	%eax, %eax
	movq	%r8, %rbp
	movq	72(%rsp), %rbx
	.p2align	4, 0x90
.LBB4_25:
	leaq	(%rdx,%rax), %rcx
	cmpq	%rsi, %rcx
	jae	.LBB4_28
	leaq	(%rdx,%rbp), %rcx
	cmpq	%r13, %rcx
	jae	.LBB4_64
	movzbl	(%rbx), %r14d
	incq	%rbx
	leaq	1(%rbp), %rcx
	incq	%rax
	cmpb	(%r15,%rbp), %r14b
	movq	%rcx, %rbp
	je	.LBB4_25
	jmp	.LBB4_22
	.p2align	4, 0x90
.LBB4_28:
	testb	$1, 7(%rsp)
	je	.LBB4_35
	movq	16(%rsp), %rax
	leaq	(%rax,%r8), %rbx
	movq	40(%rsp), %rax
	movq	%rdx, %rbp
	.p2align	4, 0x90
.LBB4_30:
	subq	$1, %rbp
	jb	.LBB4_34
	cmpq	%r13, %rbx
	jae	.LBB4_63
	movzbl	(%rax), %r14d
	decq	%rax
	leaq	-1(%rbx), %rcx
	cmpb	(%rdi,%rbx), %r14b
	movq	%rcx, %rbx
	je	.LBB4_30
	addq	24(%rsp), %r8
	jmp	.LBB4_21
	.p2align	4, 0x90
.LBB4_34:
	movq	$-1, %r14
	jmp	.LBB4_4
.LBB4_35:
	movq	$-1, %r14
	testq	%rdx, %rdx
	je	.LBB4_4
	movq	16(%rsp), %rax
.LBB4_37:
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.3(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB4_38:
	xorl	%r8d, %r8d
	testl	$16711680, %ebx
	jne	.LBB4_62
	jmp	.LBB4_40
	.p2align	4, 0x90
.LBB4_39:
	addq	%rcx, %rdx
	movb	$1, %bl
.LBB4_40:
	testq	%rdx, %rdx
	je	.LBB4_44
.LBB4_41:
	cmpq	%rdx, %r13
	jbe	.LBB4_43
	cmpb	$-64, (%rdi,%rdx)
	jge	.LBB4_44
	jmp	.LBB4_67
	.p2align	4, 0x90
.LBB4_43:
	jne	.LBB4_67
.LBB4_44:
	cmpq	%r13, %rdx
	je	.LBB4_57
	movzbl	(%rdi,%rdx), %ecx
	testb	%cl, %cl
	js	.LBB4_47
	movl	%ecx, %eax
	testb	%bl, %bl
	jne	.LBB4_56
.LBB4_51:
	cmpl	$1114112, %eax
	je	.LBB4_62
	movl	$1, %ecx
	cmpl	$128, %eax
	jb	.LBB4_39
	movl	$2, %ecx
	cmpl	$2048, %eax
	jb	.LBB4_39
	cmpl	$65536, %eax
	movl	$4, %ecx
	sbbq	$0, %rcx
	jmp	.LBB4_39
	.p2align	4, 0x90
.LBB4_47:
	movl	%ecx, %eax
	andl	$31, %eax
	movzbl	1(%rdi,%rdx), %esi
	andl	$63, %esi
	cmpb	$-32, %cl
	jb	.LBB4_50
	movzbl	2(%rdi,%rdx), %ebp
	shll	$6, %esi
	andl	$63, %ebp
	orl	%esi, %ebp
	cmpb	$-16, %cl
	jb	.LBB4_55
	movzbl	3(%rdi,%rdx), %ecx
	andl	$7, %eax
	shll	$18, %eax
	shll	$6, %ebp
	andl	$63, %ecx
	orl	%ebp, %ecx
	orl	%ecx, %eax
	testb	%bl, %bl
	je	.LBB4_51
	jmp	.LBB4_56
.LBB4_50:
	shll	$6, %eax
	orl	%esi, %eax
	testb	%bl, %bl
	je	.LBB4_51
.LBB4_56:
	movq	%rbx, %rax
	jmp	.LBB4_58
.LBB4_55:
	shll	$12, %eax
	orl	%ebp, %eax
	testb	%bl, %bl
	je	.LBB4_51
	jmp	.LBB4_56
.LBB4_57:
	movq	%r13, %rdx
	movq	%rbx, %rax
	testb	%bl, %bl
	je	.LBB4_62
.LBB4_58:
	movq	%rax, %rbx
	xorb	$1, %bl
	movq	%rdx, %r8
	testq	%rdx, %rdx
	jne	.LBB4_41
	jmp	.LBB4_44
.LBB4_59:
	xorl	%r8d, %r8d
	jmp	.LBB4_62
.LBB4_61:
	movq	8(%rsp), %r8
.LBB4_62:
	addq	%r8, %rdi
	movl	$15, %eax
	subq	%r8, %rax
	movq	%rdi, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	<&T as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 208(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt@GOTPCREL(%rip), %rax
	movq	%rax, 224(%rsp)
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.7(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	$2, 120(%rsp)
	movq	$0, 96(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	$2, 136(%rsp)
	leaq	96(%rsp), %rsi
	movq	64(%rsp), %rdi
	callq	*core::fmt::Formatter::write_fmt@GOTPCREL(%rip)
	addq	$232, %rsp
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
.LBB4_63:
	.cfi_def_cfa_offset 288
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.4(%rip), %rdx
	movq	%rbx, %rdi
	jmp	.LBB4_66
.LBB4_64:
	movq	%rdx, %rax
.LBB4_65:
	addq	%rax, %r8
	cmpq	%r8, %r13
	cmovaq	%r13, %r8
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.2(%rip), %rdx
	movq	%r8, %rdi
.LBB4_66:
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB4_67:
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.10(%rip), %r8
	movq	%r13, %rsi
	movq	%r13, %rcx
	callq	*core::str::slice_error_fail@GOTPCREL(%rip)
	ud2
.Lfunc_end4:
	.size	<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt, .Lfunc_end4-<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt
	.cfi_endproc

	.section	.text.event_writer,"ax",@progbits
	.globl	event_writer
	.p2align	4, 0x90
	.type	event_writer,@function
event_writer:
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	28(%rdi), %eax
	movq	16(%rdi), %rcx
	movl	%eax, (%rcx)
	movq	(%rdi), %rbx
	movq	64(%rbx), %r13
	movq	%r13, (%rsp)
	movq	tracing_core::metadata::MAX_LEVEL@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	decq	%rax
	movq	%r13, %rbp
	cmpq	$5, %rax
	jb	.LBB5_7
	movq	bevy_ecs::event::Events<E>::send::CALLSITE@GOTPCREL(%rip), %r14
	movzbl	16(%r14), %eax
	movq	%r13, %rbp
	testb	%al, %al
	je	.LBB5_7
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	je	.LBB5_6
	cmpl	$2, %ecx
	jne	.LBB5_5
	movb	$2, %al
.LBB5_6:
	movq	8(%r14), %rdi
	movzbl	%al, %esi
	callq	*tracing::__macro_support::__is_enabled@GOTPCREL(%rip)
	movq	%r13, %rbp
	testb	%al, %al
	je	.LBB5_7
	movq	8(%r14), %rdi
	movq	tracing_core::metadata::Metadata::fields@GOTPCREL(%rip), %rbp
	callq	*%rbp
	leaq	96(%rsp), %r12
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	*tracing_core::field::FieldSet::iter@GOTPCREL(%rip)
	movq	8(%r14), %rdi
	callq	*%rbp
	movq	%rax, %r15
	leaq	8(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*<tracing_core::field::Iter as core::iter::traits::iterator::Iterator>::next@GOTPCREL(%rip)
	cmpq	$0, 8(%rsp)
	je	.LBB5_12
	movq	40(%rsp), %rax
	movq	%rax, 176(%rsp)
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movq	%rsp, %rax
	movq	%rax, 56(%rsp)
	leaq	<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.13(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	%rbp, 80(%rsp)
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.14(%rip), %rax
	movq	%rax, 88(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 104(%rsp)
	movq	%r15, 112(%rsp)
	movq	8(%r14), %rdi
	leaq	96(%rsp), %rsi
	callq	*tracing_core::event::Event::dispatch@GOTPCREL(%rip)
	movq	(%rsp), %rbp
.LBB5_7:
	movq	56(%rbx), %rsi
	cmpq	40(%rbx), %rsi
	jne	.LBB5_9
	leaq	40(%rbx), %rdi
	callq	alloc::raw_vec::RawVec<T,A>::reserve_for_push
	movq	56(%rbx), %rsi
	movq	64(%rbx), %r13
.LBB5_9:
	movq	48(%rbx), %rax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	%rbp, (%rax,%rcx)
	movl	$0, 8(%rax,%rcx)
	incq	%rsi
	movq	%rsi, 56(%rbx)
	incq	%r13
	movq	%r13, 64(%rbx)
	#APP
	#NO_APP
	addq	$184, %rsp
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
.LBB5_5:
	.cfi_def_cfa_offset 240
	movq	bevy_ecs::event::Events<E>::send::CALLSITE@GOTPCREL(%rip), %rdi
	callq	*tracing_core::callsite::DefaultCallsite::register@GOTPCREL(%rip)
	movq	%r13, %rbp
	testb	%al, %al
	jne	.LBB5_6
	jmp	.LBB5_7
.LBB5_12:
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.11(%rip), %rdi
	leaq	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.15(%rip), %rdx
	movl	$34, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
	ud2
.Lfunc_end5:
	.size	event_writer, .Lfunc_end5-event_writer
	.cfi_endproc

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.0,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.0,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.0:
	.ascii	"event_writer::A"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.0, 15

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.1,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1:
	.ascii	"/rustc/511364e7874dba9649a264100407e4bffe7b5425/library/core/src/str/pattern.rs"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1, 79

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.2,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.2,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.2:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1
	.asciz	"O\000\000\000\000\000\000\000\247\005\000\000!\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.2, 24

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.3,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.3,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.3:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1
	.asciz	"O\000\000\000\000\000\000\000\263\005\000\000\024\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.3, 24

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.4,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.4,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.4:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1
	.asciz	"O\000\000\000\000\000\000\000\263\005\000\000!\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.4, 24

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.5,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.5,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.5:
	.ascii	"event<"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.5, 6

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.6,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.6,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.6:
	.ascii	">#"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.6, 2

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.7,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.7,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.7:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.5
	.asciz	"\006\000\000\000\000\000\000"
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.6
	.asciz	"\002\000\000\000\000\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.7, 32

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.8,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.8,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.8:
	.zero	2,58
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.8, 2

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.9,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.9,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.9:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/6dda873/crates/bevy_ecs/src/event.rs"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.9, 91

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.10,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.10,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.10:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.1
	.asciz	"O\000\000\000\000\000\000\0007\004\000\000\027\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.10, 24

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.11,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.11,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.11:
	.ascii	"FieldSet corrupted (this is a bug)"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.11, 34

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.12,@object
	.section	.rodata..Lanon.59c9bd4d09df010d4a69779c0d5e0543.12,"a",@progbits
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.12:
	.ascii	"Events::send() -> id: "
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.12, 22

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.13,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.13,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.13:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.12
	.asciz	"\026\000\000\000\000\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.13, 16

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.14,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.14,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.14:
	.quad	core::ptr::drop_in_place<core::fmt::Arguments>
	.asciz	"0\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<core::fmt::Arguments as tracing_core::field::Value>::record
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.14, 32

	.type	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.15,@object
	.section	.data.rel.ro..Lanon.59c9bd4d09df010d4a69779c0d5e0543.15,"aw",@progbits
	.p2align	3
.Lanon.59c9bd4d09df010d4a69779c0d5e0543.15:
	.quad	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.9
	.asciz	"[\000\000\000\000\000\000\000\004\002\000\000\t\000\000"
	.size	.Lanon.59c9bd4d09df010d4a69779c0d5e0543.15, 24

	.section	".note.GNU-stack","",@progbits

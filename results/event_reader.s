	.text
	.file	"event_reader.3c65bb37-cgu.0"
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
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.0(%rip), %rsi
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.9(%rip), %rcx
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
	je	.LBB2_38
	movq	120(%rsp), %rsi
	movq	168(%rsp), %r8
	leaq	(%r8,%rsi), %rax
	decq	%rax
	cmpq	%r13, %rax
	jae	.LBB2_59
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
	jmp	.LBB2_5
	.p2align	4, 0x90
.LBB2_3:
	xorl	%r14d, %r14d
.LBB2_4:
	addq	%rsi, %r8
	leaq	(%r8,%r12), %rax
	movq	%r8, 8(%rsp)
	cmpq	%r13, %rax
	jae	.LBB2_62
.LBB2_5:
	cmpq	$-1, %r14
	jne	.LBB2_6
	jmp	.LBB2_23
	.p2align	4, 0x90
.LBB2_12:
	addq	%rsi, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jae	.LBB2_61
.LBB2_6:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB2_12
	cmpq	%r14, %rdx
	movq	%r14, %rax
	cmovaq	%rdx, %rax
	leaq	(%rdi,%r8), %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB2_8:
	cmpq	%rsi, %rcx
	jae	.LBB2_14
	leaq	(%r8,%rcx), %rbp
	cmpq	%r13, %rbp
	jae	.LBB2_65
	leaq	1(%rcx), %rbp
	movzbl	(%r10,%rcx), %r9d
	cmpb	(%rbx,%rcx), %r9b
	movq	%rbp, %rcx
	je	.LBB2_8
	addq	48(%rsp), %r8
	addq	%rbp, %r8
	xorl	%r14d, %r14d
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB2_6
	jmp	.LBB2_61
	.p2align	4, 0x90
.LBB2_14:
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB2_15:
	cmpq	%rax, %r14
	jae	.LBB2_3
	decq	%rax
	cmpq	%rsi, %rax
	jae	.LBB2_37
	leaq	(%rax,%r8), %rbx
	cmpq	%r13, %rbx
	jae	.LBB2_63
	movzbl	(%r10,%rax), %ecx
	cmpb	(%rdi,%rbx), %cl
	je	.LBB2_15
	addq	24(%rsp), %r8
	movq	32(%rsp), %r14
	leaq	(%r8,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB2_6
	jmp	.LBB2_61
	.p2align	4, 0x90
.LBB2_20:
	addq	%rsi, %r8
.LBB2_21:
	movq	%r8, %rcx
.LBB2_22:
	leaq	(%rcx,%r12), %rax
	movq	%rcx, %r8
	cmpq	%r13, %rax
	jae	.LBB2_61
.LBB2_23:
	movzbl	(%rdi,%rax), %eax
	btq	%rax, %r11
	jae	.LBB2_20
	xorl	%eax, %eax
	movq	%r8, %rbp
	movq	72(%rsp), %rbx
	.p2align	4, 0x90
.LBB2_25:
	leaq	(%rdx,%rax), %rcx
	cmpq	%rsi, %rcx
	jae	.LBB2_28
	leaq	(%rdx,%rbp), %rcx
	cmpq	%r13, %rcx
	jae	.LBB2_64
	movzbl	(%rbx), %r14d
	incq	%rbx
	leaq	1(%rbp), %rcx
	incq	%rax
	cmpb	(%r15,%rbp), %r14b
	movq	%rcx, %rbp
	je	.LBB2_25
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_28:
	testb	$1, 7(%rsp)
	je	.LBB2_35
	movq	16(%rsp), %rax
	leaq	(%rax,%r8), %rbx
	movq	40(%rsp), %rax
	movq	%rdx, %rbp
	.p2align	4, 0x90
.LBB2_30:
	subq	$1, %rbp
	jb	.LBB2_34
	cmpq	%r13, %rbx
	jae	.LBB2_63
	movzbl	(%rax), %r14d
	decq	%rax
	leaq	-1(%rbx), %rcx
	cmpb	(%rdi,%rbx), %r14b
	movq	%rcx, %rbx
	je	.LBB2_30
	addq	24(%rsp), %r8
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_34:
	movq	$-1, %r14
	jmp	.LBB2_4
.LBB2_35:
	movq	$-1, %r14
	testq	%rdx, %rdx
	je	.LBB2_4
	movq	16(%rsp), %rax
.LBB2_37:
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.4(%rip), %rdx
	movq	%rax, %rdi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB2_38:
	xorl	%r8d, %r8d
	testl	$16711680, %ebx
	jne	.LBB2_62
	jmp	.LBB2_40
	.p2align	4, 0x90
.LBB2_39:
	addq	%rcx, %rdx
	movb	$1, %bl
.LBB2_40:
	testq	%rdx, %rdx
	je	.LBB2_44
.LBB2_41:
	cmpq	%rdx, %r13
	jbe	.LBB2_43
	cmpb	$-64, (%rdi,%rdx)
	jge	.LBB2_44
	jmp	.LBB2_67
	.p2align	4, 0x90
.LBB2_43:
	jne	.LBB2_67
.LBB2_44:
	cmpq	%r13, %rdx
	je	.LBB2_57
	movzbl	(%rdi,%rdx), %ecx
	testb	%cl, %cl
	js	.LBB2_47
	movl	%ecx, %eax
	testb	%bl, %bl
	jne	.LBB2_56
.LBB2_51:
	cmpl	$1114112, %eax
	je	.LBB2_62
	movl	$1, %ecx
	cmpl	$128, %eax
	jb	.LBB2_39
	movl	$2, %ecx
	cmpl	$2048, %eax
	jb	.LBB2_39
	cmpl	$65536, %eax
	movl	$4, %ecx
	sbbq	$0, %rcx
	jmp	.LBB2_39
	.p2align	4, 0x90
.LBB2_47:
	movl	%ecx, %eax
	andl	$31, %eax
	movzbl	1(%rdi,%rdx), %esi
	andl	$63, %esi
	cmpb	$-32, %cl
	jb	.LBB2_50
	movzbl	2(%rdi,%rdx), %ebp
	shll	$6, %esi
	andl	$63, %ebp
	orl	%esi, %ebp
	cmpb	$-16, %cl
	jb	.LBB2_55
	movzbl	3(%rdi,%rdx), %ecx
	andl	$7, %eax
	shll	$18, %eax
	shll	$6, %ebp
	andl	$63, %ecx
	orl	%ebp, %ecx
	orl	%ecx, %eax
	testb	%bl, %bl
	je	.LBB2_51
	jmp	.LBB2_56
.LBB2_50:
	shll	$6, %eax
	orl	%esi, %eax
	testb	%bl, %bl
	je	.LBB2_51
.LBB2_56:
	movq	%rbx, %rax
	jmp	.LBB2_58
.LBB2_55:
	shll	$12, %eax
	orl	%ebp, %eax
	testb	%bl, %bl
	je	.LBB2_51
	jmp	.LBB2_56
.LBB2_57:
	movq	%r13, %rdx
	movq	%rbx, %rax
	testb	%bl, %bl
	je	.LBB2_62
.LBB2_58:
	movq	%rax, %rbx
	xorb	$1, %bl
	movq	%rdx, %r8
	testq	%rdx, %rdx
	jne	.LBB2_41
	jmp	.LBB2_44
.LBB2_59:
	xorl	%r8d, %r8d
	jmp	.LBB2_62
.LBB2_61:
	movq	8(%rsp), %r8
.LBB2_62:
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
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.8(%rip), %rax
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
.LBB2_63:
	.cfi_def_cfa_offset 288
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.5(%rip), %rdx
	movq	%rbx, %rdi
	jmp	.LBB2_66
.LBB2_64:
	movq	%rdx, %rax
.LBB2_65:
	addq	%rax, %r8
	cmpq	%r8, %r13
	cmovaq	%r13, %r8
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.3(%rip), %rdx
	movq	%r8, %rdi
.LBB2_66:
	movq	%r13, %rsi
	callq	*core::panicking::panic_bounds_check@GOTPCREL(%rip)
	ud2
.LBB2_67:
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.11(%rip), %r8
	movq	%r13, %rsi
	movq	%r13, %rcx
	callq	*core::str::slice_error_fail@GOTPCREL(%rip)
	ud2
.Lfunc_end2:
	.size	<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt, .Lfunc_end2-<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt
	.cfi_endproc

	.section	.text.event_reader,"ax",@progbits
	.globl	event_reader
	.p2align	4, 0x90
	.type	event_reader,@function
event_reader:
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movq	32(%rdi), %rbp
	movq	(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	subq	(%rax), %rsi
	cmovbq	%rcx, %rsi
	subq	32(%rax), %rdx
	cmovbq	%rcx, %rdx
	movq	%rsi, %r12
	shlq	$4, %r12
	addq	16(%rax), %r12
	movq	24(%rax), %r13
	subq	%rsi, %r13
	cmovbq	%rcx, %r13
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.1(%rip), %rsi
	cmovbq	%rsi, %r12
	movq	%rdx, %r15
	shlq	$4, %r15
	addq	48(%rax), %r15
	movq	56(%rax), %rdi
	subq	%rdx, %rdi
	cmovbq	%rsi, %r15
	cmovbq	%rcx, %rdi
	movq	64(%rax), %rax
	subq	%rdi, %rax
	subq	%r13, %rax
	movq	%rbp, %rbx
	movq	%rax, (%rbp)
	shlq	$4, %r13
	addq	%r12, %r13
	shlq	$4, %rdi
	addq	%r15, %rdi
	movq	%rdi, 72(%rsp)
	movq	tracing_core::metadata::MAX_LEVEL@GOTPCREL(%rip), %rbp
	leaq	8(%rsp), %rcx
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rdx
	movq	%rbx, 64(%rsp)
	movq	%r13, 56(%rsp)
	jmp	.LBB3_1
.LBB3_15:
	movq	40(%rsp), %rax
	movq	%rax, 208(%rsp)
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movaps	%xmm1, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	<bevy_ecs::event::EventId<E> as core::fmt::Display>::fmt(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.14(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 8(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.15(%rip), %rax
	movq	%rax, 120(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	$1, 136(%rsp)
	movq	%rbx, 144(%rsp)
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdi
	leaq	128(%rsp), %rsi
	callq	*tracing_core::event::Event::dispatch@GOTPCREL(%rip)
	movq	56(%rsp), %r13
	movq	64(%rsp), %rbx
	movq	tracing_core::metadata::MAX_LEVEL@GOTPCREL(%rip), %rbp
	leaq	8(%rsp), %rcx
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rdx
	.p2align	4, 0x90
.LBB3_16:
	incq	(%rbx)
	addq	$8, %r14
	movq	%r14, 8(%rsp)
	#APP
	#NO_APP
.LBB3_1:
	testq	%r12, %r12
	je	.LBB3_4
	cmpq	%r13, %r12
	je	.LBB3_4
	leaq	16(%r12), %rax
	movq	%r12, %r14
	jmp	.LBB3_7
	.p2align	4, 0x90
.LBB3_4:
	testq	%r15, %r15
	je	.LBB3_18
	cmpq	72(%rsp), %r15
	je	.LBB3_18
	movq	%r15, %r14
	addq	$16, %r15
	xorl	%eax, %eax
.LBB3_7:
	movq	%rax, %r12
	movq	(%r14), %rax
	movq	%rax, 80(%rsp)
	movq	(%rbp), %rax
	decq	%rax
	cmpq	$5, %rax
	jb	.LBB3_16
	movzbl	16(%rdx), %eax
	testb	%al, %al
	je	.LBB3_16
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	je	.LBB3_13
	cmpl	$2, %ecx
	jne	.LBB3_12
	movb	$2, %al
.LBB3_13:
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rcx
	movq	8(%rcx), %rdi
	movzbl	%al, %esi
	callq	*tracing::__macro_support::__is_enabled@GOTPCREL(%rip)
	leaq	128(%rsp), %rsi
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rdx
	leaq	8(%rsp), %rcx
	testb	%al, %al
	je	.LBB3_16
	movq	%rdx, %rbx
	movq	8(%rdx), %rdi
	movq	tracing_core::metadata::Metadata::fields@GOTPCREL(%rip), %r13
	movq	%rsi, %rbp
	callq	*%r13
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	*tracing_core::field::FieldSet::iter@GOTPCREL(%rip)
	movq	8(%rbx), %rdi
	callq	*%r13
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*<tracing_core::field::Iter as core::iter::traits::iterator::Iterator>::next@GOTPCREL(%rip)
	cmpq	$0, 8(%rsp)
	jne	.LBB3_15
	jmp	.LBB3_17
.LBB3_12:
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rdi
	callq	*tracing_core::callsite::DefaultCallsite::register@GOTPCREL(%rip)
	movq	bevy_ecs::event::event_trace::CALLSITE@GOTPCREL(%rip), %rdx
	leaq	8(%rsp), %rcx
	testb	%al, %al
	jne	.LBB3_13
	jmp	.LBB3_16
.LBB3_18:
	addq	$216, %rsp
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
.LBB3_17:
	.cfi_def_cfa_offset 272
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.12(%rip), %rdi
	leaq	.Lanon.5729158841f6a0a43c5f462d65065398.16(%rip), %rdx
	movl	$34, %esi
	callq	*core::option::expect_failed@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	event_reader, .Lfunc_end3-event_reader
	.cfi_endproc

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.0,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.0,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.0:
	.ascii	"event_reader::A"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.0, 15

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.1,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.1,"a",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.1:
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.1, 0

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.2,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.2,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.2:
	.ascii	"/rustc/511364e7874dba9649a264100407e4bffe7b5425/library/core/src/str/pattern.rs"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.2, 79

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.3,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.3,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.3:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.2
	.asciz	"O\000\000\000\000\000\000\000\247\005\000\000!\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.3, 24

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.4,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.4,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.4:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.2
	.asciz	"O\000\000\000\000\000\000\000\263\005\000\000\024\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.4, 24

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.5,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.5,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.5:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.2
	.asciz	"O\000\000\000\000\000\000\000\263\005\000\000!\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.5, 24

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.6,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.6,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.6:
	.ascii	"event<"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.6, 6

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.7,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.7,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.7:
	.ascii	">#"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.7, 2

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.8,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.8,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.8:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.6
	.asciz	"\006\000\000\000\000\000\000"
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.7
	.asciz	"\002\000\000\000\000\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.8, 32

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.9,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.9,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.9:
	.zero	2,58
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.9, 2

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.10,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.10,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.10:
	.ascii	"/home/james/.cargo/git/checkouts/bevy-f7ffde730c324c74/6dda873/crates/bevy_ecs/src/event.rs"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.10, 91

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.11,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.11,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.11:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.2
	.asciz	"O\000\000\000\000\000\000\0007\004\000\000\027\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.11, 24

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.12,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.12,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.12:
	.ascii	"FieldSet corrupted (this is a bug)"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.12, 34

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.13,@object
	.section	.rodata..Lanon.5729158841f6a0a43c5f462d65065398.13,"a",@progbits
.Lanon.5729158841f6a0a43c5f462d65065398.13:
	.ascii	"EventReader::iter() -> "
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.13, 23

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.14,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.14,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.14:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.13
	.asciz	"\027\000\000\000\000\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.14, 16

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.15,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.15,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.15:
	.quad	core::ptr::drop_in_place<core::fmt::Arguments>
	.asciz	"0\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	<core::fmt::Arguments as tracing_core::field::Value>::record
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.15, 32

	.type	.Lanon.5729158841f6a0a43c5f462d65065398.16,@object
	.section	.data.rel.ro..Lanon.5729158841f6a0a43c5f462d65065398.16,"aw",@progbits
	.p2align	3
.Lanon.5729158841f6a0a43c5f462d65065398.16:
	.quad	.Lanon.5729158841f6a0a43c5f462d65065398.10
	.asciz	"[\000\000\000\000\000\000\000\247\001\000\000\005\000\000"
	.size	.Lanon.5729158841f6a0a43c5f462d65065398.16, 24

	.section	".note.GNU-stack","",@progbits

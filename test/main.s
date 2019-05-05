	.file	"main.c"
	.text
	.globl	add_double2
	.type	add_double2, @function
add_double2:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm1
	movq	%xmm2, %rax
	movq	%xmm3, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm0
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movaps	%xmm1, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movapd	-80(%rbp), %xmm0
	addpd	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	-96(%rbp), %r12
	movq	-88(%rbp), %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %xmm0
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %xmm1
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	add_double2, .-add_double2
	.globl	sub_double2
	.type	sub_double2, @function
sub_double2:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm1
	movq	%xmm2, %rax
	movq	%xmm3, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm0
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movaps	%xmm1, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movapd	-80(%rbp), %xmm0
	subpd	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	-96(%rbp), %r12
	movq	-88(%rbp), %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %xmm0
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %xmm1
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	sub_double2, .-sub_double2
	.globl	mul_double2
	.type	mul_double2, @function
mul_double2:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm1
	movq	%xmm2, %rax
	movq	%xmm3, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm0
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movaps	%xmm1, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movapd	-80(%rbp), %xmm0
	mulpd	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	-96(%rbp), %r12
	movq	-88(%rbp), %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %xmm0
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %xmm1
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	mul_double2, .-mul_double2
	.globl	div_double2
	.type	div_double2, @function
div_double2:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm1
	movq	%xmm2, %rax
	movq	%xmm3, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movdqa	-96(%rbp), %xmm0
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movaps	%xmm1, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movapd	-80(%rbp), %xmm0
	divpd	-64(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	-96(%rbp), %r12
	movq	-88(%rbp), %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %xmm0
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %xmm1
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	div_double2, .-div_double2
	.globl	sqrt_double2
	.type	sqrt_double2, @function
sqrt_double2:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movdqa	-64(%rbp), %xmm0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movaps	%xmm0, -48(%rbp)
	sqrtpd	-48(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %xmm0
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	sqrt_double2, .-sqrt_double2
	.globl	dot_double2
	.type	dot_double2, @function
dot_double2:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%xmm2, %rax
	movq	%xmm3, %rcx
	movq	%rcx, %rdx
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	dot_double2, .-dot_double2
	.section	.rodata
.LC2:
	.string	"double2(%lf, %lf)\n"
.LC3:
	.string	"%lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %xmm0
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm1
	call	sqrt_double2
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, -88(%rbp)
	movq	-88(%rbp), %xmm2
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %xmm3
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %xmm0
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm1
	call	dot_double2
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movsd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079164928
	.align 8
.LC1:
	.long	0
	.long	1077477376
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits

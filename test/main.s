	.file	"main.c"
	.text
	.globl	sqrt_float
	.type	sqrt_float, @function
sqrt_float:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movss	-8(%rbp), %xmm0
	call	sqrtf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sqrt_float, .-sqrt_float
	.globl	sqrt_double
	.type	sqrt_double, @function
sqrt_double:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sqrt_double, .-sqrt_double
	.globl	sqrt_int
	.type	sqrt_int, @function
sqrt_int:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	fildl	-4(%rbp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	sqrtl@PLT
	addq	$16, %rsp
	fnstcw	-6(%rbp)
	movzwl	-6(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -8(%rbp)
	fldcw	-8(%rbp)
	fistpl	-12(%rbp)
	fldcw	-6(%rbp)
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sqrt_int, .-sqrt_int
	.globl	sqrt_uint
	.type	sqrt_uint, @function
sqrt_uint:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	%rax, -24(%rbp)
	fildq	-24(%rbp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	sqrtl@PLT
	addq	$16, %rsp
	fnstcw	-6(%rbp)
	movzwl	-6(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -8(%rbp)
	fldcw	-8(%rbp)
	fistpq	-16(%rbp)
	fldcw	-6(%rbp)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	sqrt_uint, .-sqrt_uint
	.globl	sqrt_bool
	.type	sqrt_bool, @function
sqrt_bool:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	movw	%ax, -10(%rbp)
	filds	-10(%rbp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	sqrtl@PLT
	addq	$16, %rsp
	fnstcw	-2(%rbp)
	movzwl	-2(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -6(%rbp)
	fldcw	-6(%rbp)
	fistps	-8(%rbp)
	fldcw	-2(%rbp)
	movzwl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sqrt_bool, .-sqrt_bool
	.globl	float2_0
	.type	float2_0, @function
float2_0:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	float2_0, .-float2_0
	.globl	float2_1
	.type	float2_1, @function
float2_1:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movd	%xmm0, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%eax, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	float2_1, .-float2_1
	.globl	float2_2
	.type	float2_2, @function
float2_2:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	float2_2, .-float2_2
	.globl	float2_3
	.type	float2_3, @function
float2_3:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movd	%xmm0, %eax
	movaps	%xmm1, %xmm0
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%eax, -16(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	float2_3, .-float2_3
	.globl	vadd_float2
	.type	vadd_float2, @function
vadd_float2:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rsi
	movq	%xmm1, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%esi, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	vadd_float2, .-vadd_float2
	.globl	vsub_float2
	.type	vsub_float2, @function
vsub_float2:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rsi
	movq	%xmm1, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%esi, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	vsub_float2, .-vsub_float2
	.globl	vmul_float2
	.type	vmul_float2, @function
vmul_float2:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rsi
	movq	%xmm1, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%esi, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	vmul_float2, .-vmul_float2
	.globl	vdiv_float2
	.type	vdiv_float2, @function
vdiv_float2:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rsi
	movq	%xmm1, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%esi, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	vdiv_float2, .-vdiv_float2
	.globl	sqrt_float2
	.type	sqrt_float2, @function
sqrt_float2:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%xmm0, %r12
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	call	sqrt_float
	movd	%xmm0, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%r12, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	call	sqrt_float
	movd	%xmm0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sqrt_float2, .-sqrt_float2
	.globl	rsqrt_float2
	.type	rsqrt_float2, @function
rsqrt_float2:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%xmm0, %r12
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	call	sqrt_float
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%r12, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	call	sqrt_float
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rsqrt_float2, .-rsqrt_float2
	.globl	length_float2
	.type	length_float2, @function
length_float2:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%xmm0, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movq	%rax, %rdx
	sarq	$32, %rdx
	movl	%edx, -4(%rbp)
	movss	-4(%rbp), %xmm2
	sarq	$32, %rax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	call	sqrt_float
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	length_float2, .-length_float2
	.globl	cast_float2_double2
	.type	cast_float2_double2, @function
cast_float2_double2:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	cast_float2_double2, .-cast_float2_double2
	.globl	cast_float2_int2
	.type	cast_float2_int2, @function
cast_float2_int2:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	cast_float2_int2, .-cast_float2_int2
	.globl	cast_float2_uint2
	.type	cast_float2_uint2, @function
cast_float2_uint2:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rcx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L50
	cvtsi2ssq	%rax, %xmm0
	jmp	.L51
.L50:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L51:
	movss	%xmm0, -16(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L52
	cvtsi2ssq	%rax, %xmm0
	jmp	.L53
.L52:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L53:
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	cast_float2_uint2, .-cast_float2_uint2
	.globl	cast_float2_bool2
	.type	cast_float2_bool2, @function
cast_float2_bool2:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movzbl	%dl, %edx
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -16(%rbp)
	movzbl	%ah, %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L58
	call	__stack_chk_fail@PLT
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	cast_float2_bool2, .-cast_float2_bool2
	.globl	double2_0
	.type	double2_0, @function
double2_0:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	double2_0, .-double2_0
	.globl	double2_1
	.type	double2_1, @function
double2_1:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	double2_1, .-double2_1
	.globl	double2_2
	.type	double2_2, @function
double2_2:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	double2_2, .-double2_2
	.globl	double2_3
	.type	double2_3, @function
double2_3:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	double2_3, .-double2_3
	.globl	vadd_double2
	.type	vadd_double2, @function
vadd_double2:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$48, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	%xmm0, %r12
	movsd	-40(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	%xmm0, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
	addq	$48, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	vadd_double2, .-vadd_double2
	.globl	vsub_double2
	.type	vsub_double2, @function
vsub_double2:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$48, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %r12
	movsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L76
	call	__stack_chk_fail@PLT
.L76:
	addq	$48, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	vsub_double2, .-vsub_double2
	.globl	vmul_double2
	.type	vmul_double2, @function
vmul_double2:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$48, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %r12
	movsd	-40(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L79
	call	__stack_chk_fail@PLT
.L79:
	addq	$48, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	vmul_double2, .-vmul_double2
	.globl	vdiv_double2
	.type	vdiv_double2, @function
vdiv_double2:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$48, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %r12
	movsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L82
	call	__stack_chk_fail@PLT
.L82:
	addq	$48, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	vdiv_double2, .-vdiv_double2
	.globl	sqrt_double2
	.type	sqrt_double2, @function
sqrt_double2:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$32, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	call	sqrt_double
	movq	%xmm0, %rax
	movq	%rax, %r12
	movsd	-40(%rbp), %xmm0
	call	sqrt_double
	movq	%xmm0, %rax
	movq	%rax, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	addq	$32, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	sqrt_double2, .-sqrt_double2
	.globl	rsqrt_double2
	.type	rsqrt_double2, @function
rsqrt_double2:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$32, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	call	sqrt_double
	movapd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %r12
	movsd	-40(%rbp), %xmm0
	call	sqrt_double
	movapd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %r13
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	addq	$32, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	rsqrt_double2, .-rsqrt_double2
	.globl	length_double2
	.type	length_double2, @function
length_double2:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movsd	-16(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm2
	movsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	call	sqrt_double
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	length_double2, .-length_double2
	.globl	cast_double2_float2
	.type	cast_double2_float2, @function
cast_double2_float2:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -48(%rbp)
	movss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	sarq	$32, %rax
	movl	%eax, -48(%rbp)
	movss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	cast_double2_float2, .-cast_double2_float2
	.globl	cast_double2_int2
	.type	cast_double2_int2, @function
cast_double2_int2:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, -32(%rbp)
	sarq	$32, %rax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	cast_double2_int2, .-cast_double2_int2
	.globl	cast_double2_uint2
	.type	cast_double2_uint2, @function
cast_double2_uint2:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rcx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L98
	cvtsi2sdq	%rax, %xmm0
	jmp	.L99
.L98:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L99:
	movsd	%xmm0, -32(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L100
	cvtsi2sdq	%rax, %xmm0
	jmp	.L101
.L100:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L101:
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	cast_double2_uint2, .-cast_double2_uint2
	.globl	cast_double2_bool2
	.type	cast_double2_bool2, @function
cast_double2_bool2:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movzbl	%dl, %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, -32(%rbp)
	movzbl	%ah, %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L106
	call	__stack_chk_fail@PLT
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	cast_double2_bool2, .-cast_double2_bool2
	.globl	int2_0
	.type	int2_0, @function
int2_0:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	int2_0, .-int2_0
	.globl	int2_1
	.type	int2_1, @function
int2_1:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%eax, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	int2_1, .-int2_1
	.globl	int2_2
	.type	int2_2, @function
int2_2:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L115
	call	__stack_chk_fail@PLT
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	int2_2, .-int2_2
	.globl	int2_3
	.type	int2_3, @function
int2_3:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	int2_3, .-int2_3
	.globl	vadd_int2
	.type	vadd_int2, @function
vadd_int2:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	addl	%esi, %ecx
	movl	%ecx, %esi
	movabsq	$-4294967296, %rcx
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rbx
	sarq	$32, %rdx
	sarq	$32, %rax
	addl	%edx, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L121
	call	__stack_chk_fail@PLT
.L121:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	vadd_int2, .-vadd_int2
	.globl	vsub_int2
	.type	vsub_int2, @function
vsub_int2:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %esi
	movabsq	$-4294967296, %rcx
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rbx
	sarq	$32, %rdx
	sarq	$32, %rax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L124
	call	__stack_chk_fail@PLT
.L124:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	vsub_int2, .-vsub_int2
	.globl	vmul_int2
	.type	vmul_int2, @function
vmul_int2:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	imull	%esi, %ecx
	movl	%ecx, %esi
	movabsq	$-4294967296, %rcx
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rbx
	sarq	$32, %rdx
	sarq	$32, %rax
	imull	%edx, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	vmul_int2, .-vmul_int2
	.globl	vdiv_int2
	.type	vdiv_int2, @function
vdiv_int2:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rsi, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%edi, %eax
	movl	%ecx, %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rdi, %rax
	sarq	$32, %rax
	movl	%eax, %edx
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	vdiv_int2, .-vdiv_int2
	.globl	sqrt_int2
	.type	sqrt_int2, @function
sqrt_int2:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, %edi
	call	sqrt_int
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%r12, %rax
	sarq	$32, %rax
	movl	%eax, %edi
	call	sqrt_int
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L133
	call	__stack_chk_fail@PLT
.L133:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	sqrt_int2, .-sqrt_int2
	.globl	rsqrt_int2
	.type	rsqrt_int2, @function
rsqrt_int2:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, %edi
	call	sqrt_int
	movl	%eax, %esi
	movl	$1, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%r12, %rax
	sarq	$32, %rax
	movl	%eax, %edi
	call	sqrt_int
	movl	%eax, %ecx
	movl	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	rsqrt_int2, .-rsqrt_int2
	.globl	length_int2
	.type	length_int2, @function
length_int2:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movl	%eax, %ecx
	movl	%eax, %edx
	imull	%ecx, %edx
	movq	%rax, %rcx
	sarq	$32, %rcx
	sarq	$32, %rax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, %edi
	call	sqrt_int
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	length_int2, .-length_int2
	.globl	cast_int2_float2
	.type	cast_int2_float2, @function
cast_int2_float2:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rdx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L141
	call	__stack_chk_fail@PLT
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	cast_int2_float2, .-cast_int2_float2
	.globl	cast_int2_double2
	.type	cast_int2_double2, @function
cast_int2_double2:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L144
	call	__stack_chk_fail@PLT
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	cast_int2_double2, .-cast_int2_double2
	.globl	cast_int2_uint2
	.type	cast_int2_uint2, @function
cast_int2_uint2:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -16(%rbp)
	shrq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	cast_int2_uint2, .-cast_int2_uint2
	.globl	cast_int2_bool2
	.type	cast_int2_bool2, @function
cast_int2_bool2:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movzbl	%dl, %edx
	movl	%edx, -16(%rbp)
	movzbl	%ah, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L150
	call	__stack_chk_fail@PLT
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	cast_int2_bool2, .-cast_int2_bool2
	.globl	uint2_0
	.type	uint2_0, @function
uint2_0:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L153
	call	__stack_chk_fail@PLT
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	uint2_0, .-uint2_0
	.globl	uint2_1
	.type	uint2_1, @function
uint2_1:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%eax, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	uint2_1, .-uint2_1
	.globl	uint2_2
	.type	uint2_2, @function
uint2_2:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -16(%rbp)
	shrq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L159
	call	__stack_chk_fail@PLT
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	uint2_2, .-uint2_2
	.globl	uint2_3
	.type	uint2_3, @function
uint2_3:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L162
	call	__stack_chk_fail@PLT
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	uint2_3, .-uint2_3
	.globl	vadd_uint2
	.type	vadd_uint2, @function
vadd_uint2:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	addl	%esi, %ecx
	movl	%ecx, %esi
	movabsq	$-4294967296, %rcx
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L165
	call	__stack_chk_fail@PLT
.L165:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	vadd_uint2, .-vadd_uint2
	.globl	vsub_uint2
	.type	vsub_uint2, @function
vsub_uint2:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %esi
	movabsq	$-4294967296, %rcx
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rdx
	shrq	$32, %rax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L168
	call	__stack_chk_fail@PLT
.L168:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	vsub_uint2, .-vsub_uint2
	.globl	vmul_uint2
	.type	vmul_uint2, @function
vmul_uint2:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	imull	%esi, %ecx
	movl	%ecx, %esi
	movabsq	$-4294967296, %rcx
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rdx
	shrq	$32, %rax
	imull	%edx, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	vmul_uint2, .-vmul_uint2
	.globl	vdiv_uint2
	.type	vdiv_uint2, @function
vdiv_uint2:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rsi, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%edi, %eax
	movl	%ecx, %esi
	movl	$0, %edx
	divl	%esi
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L174
	call	__stack_chk_fail@PLT
.L174:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	vdiv_uint2, .-vdiv_uint2
	.globl	sqrt_uint2
	.type	sqrt_uint2, @function
sqrt_uint2:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, %edi
	call	sqrt_uint
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%r12, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	call	sqrt_uint
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	sqrt_uint2, .-sqrt_uint2
	.globl	rsqrt_uint2
	.type	rsqrt_uint2, @function
rsqrt_uint2:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%r12d, %eax
	movl	%eax, %edi
	call	sqrt_uint
	movl	%eax, %esi
	movl	$1, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	%rbx, %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%r12, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	call	sqrt_uint
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L180
	call	__stack_chk_fail@PLT
.L180:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	rsqrt_uint2, .-rsqrt_uint2
	.globl	length_uint2
	.type	length_uint2, @function
length_uint2:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movl	%eax, %ecx
	movl	%eax, %edx
	imull	%ecx, %edx
	movq	%rax, %rcx
	shrq	$32, %rcx
	shrq	$32, %rax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, %edi
	call	sqrt_uint
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	length_uint2, .-length_uint2
	.globl	cast_uint2_float2
	.type	cast_uint2_float2, @function
cast_uint2_float2:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rdx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -16(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L185
	call	__stack_chk_fail@PLT
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	cast_uint2_float2, .-cast_uint2_float2
	.globl	cast_uint2_double2
	.type	cast_uint2_double2, @function
cast_uint2_double2:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-32(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -16(%rbp)
	movsd	-24(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L188
	call	__stack_chk_fail@PLT
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	cast_uint2_double2, .-cast_uint2_double2
	.globl	cast_uint2_int2
	.type	cast_uint2_int2, @function
cast_uint2_int2:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L191
	call	__stack_chk_fail@PLT
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	cast_uint2_int2, .-cast_uint2_int2
	.globl	cast_uint2_bool2
	.type	cast_uint2_bool2, @function
cast_uint2_bool2:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movzbl	%dl, %edx
	movl	%edx, -16(%rbp)
	movzbl	%ah, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L194
	call	__stack_chk_fail@PLT
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	cast_uint2_bool2, .-cast_uint2_bool2
	.globl	bool2_0
	.type	bool2_0, @function
bool2_0:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$0, -10(%rbp)
	movb	$0, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L197
	call	__stack_chk_fail@PLT
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	bool2_0, .-bool2_0
	.globl	bool2_1
	.type	bool2_1, @function
bool2_1:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movb	%al, -10(%rbp)
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L200
	call	__stack_chk_fail@PLT
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	bool2_1, .-bool2_1
	.globl	bool2_2
	.type	bool2_2, @function
bool2_2:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movb	%dl, -10(%rbp)
	movzbl	%ah, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	bool2_2, .-bool2_2
	.globl	bool2_3
	.type	bool2_3, @function
bool2_3:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movb	%dl, -10(%rbp)
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	bool2_3, .-bool2_3
	.globl	vadd_bool2
	.type	vadd_bool2, @function
vadd_bool2:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	addl	%esi, %ecx
	movb	%cl, %bl
	movzbl	%dh, %edx
	movzbl	%ah, %eax
	addl	%edx, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L209
	call	__stack_chk_fail@PLT
.L209:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	vadd_bool2, .-vadd_bool2
	.globl	vsub_bool2
	.type	vsub_bool2, @function
vsub_bool2:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movb	%cl, %bl
	movzbl	%dh, %edx
	movzbl	%ah, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L212
	call	__stack_chk_fail@PLT
.L212:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	vsub_bool2, .-vsub_bool2
	.globl	vmul_bool2
	.type	vmul_bool2, @function
vmul_bool2:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %ecx
	movl	%esi, %edx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%edx, %esi
	imull	%esi, %eax
	movb	%al, %bl
	movzbl	%ch, %eax
	movzbl	%dh, %edx
	imull	%edx, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L215
	call	__stack_chk_fail@PLT
.L215:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	vmul_bool2, .-vmul_bool2
	.globl	vdiv_bool2
	.type	vdiv_bool2, @function
vdiv_bool2:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %ecx
	movl	%esi, %edx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%edx, %esi
	movzbl	%al, %eax
	divb	%sil
	movb	%al, %bl
	movzbl	%ch, %eax
	movzbl	%dh, %edx
	movzbl	%al, %eax
	divb	%dl
	movb	%al, %bh
	movl	%ebx, %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L218
	call	__stack_chk_fail@PLT
.L218:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	vdiv_bool2, .-vdiv_bool2
	.globl	sqrt_bool2
	.type	sqrt_bool2, @function
sqrt_bool2:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movw	%ax, -34(%rbp)
	movzbl	%al, %eax
	movl	%eax, %edi
	call	sqrt_bool
	movb	%al, %bl
	movzwl	-34(%rbp), %eax
	movzbl	%ah, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	sqrt_bool
	movb	%al, %bh
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L221
	call	__stack_chk_fail@PLT
.L221:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	sqrt_bool2, .-sqrt_bool2
	.globl	rsqrt_bool2
	.type	rsqrt_bool2, @function
rsqrt_bool2:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -24(%rbp)
	xorl	%ecx, %ecx
	movw	%ax, -34(%rbp)
	movzbl	%al, %eax
	movl	%eax, %edi
	call	sqrt_bool
	movl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, %bl
	movzwl	-34(%rbp), %eax
	movzbl	%ah, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	sqrt_bool
	movl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, %bh
	movl	%ebx, %eax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L224
	call	__stack_chk_fail@PLT
.L224:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	rsqrt_bool2, .-rsqrt_bool2
	.globl	length_bool2
	.type	length_bool2, @function
length_bool2:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	imull	%ecx, %eax
	movl	%eax, %ecx
	movzbl	%dh, %eax
	movzbl	%dh, %edx
	imull	%edx, %eax
	addl	%ecx, %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	sqrt_bool
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	length_bool2, .-length_bool2
	.globl	cast_bool2_float2
	.type	cast_bool2_float2, @function
cast_bool2_float2:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rdx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -10(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L229
	call	__stack_chk_fail@PLT
.L229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	cast_bool2_float2, .-cast_bool2_float2
	.globl	cast_bool2_double2
	.type	cast_bool2_double2, @function
cast_bool2_double2:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -10(%rbp)
	movsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L232
	call	__stack_chk_fail@PLT
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	cast_bool2_double2, .-cast_bool2_double2
	.globl	cast_bool2_int2
	.type	cast_bool2_int2, @function
cast_bool2_int2:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movb	%dl, -10(%rbp)
	sarq	$32, %rax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L235
	call	__stack_chk_fail@PLT
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	cast_bool2_int2, .-cast_bool2_int2
	.globl	cast_bool2_uint2
	.type	cast_bool2_uint2, @function
cast_bool2_uint2:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movb	%dl, -10(%rbp)
	shrq	$32, %rax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L238
	call	__stack_chk_fail@PLT
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	cast_bool2_uint2, .-cast_bool2_uint2
	.globl	main
	.type	main, @function
main:
.LFB80:
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
	movss	.LC5(%rip), %xmm1
	movss	.LC6(%rip), %xmm0
	call	float2_3
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	double2_1
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movss	-48(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, %edi
	call	int2_1
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm0
	call	length_float2
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	cast_int2_double2
	movq	%rax, -40(%rbp)
	movl	$55, %edi
	call	int2_1
	movq	%rax, %rdi
	call	int2_2
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L241
	call	__stack_chk_fail@PLT
.L241:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1065353216
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 4
.LC5:
	.long	1117126656
	.align 4
.LC6:
	.long	1107296256
	.align 8
.LC7:
	.long	0
	.long	1077477376
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

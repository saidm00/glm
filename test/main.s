	.file	"main.c"
	.text
	.globl	create_float2_void
	.type	create_float2_void, @function
create_float2_void:
.LFB0:
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
	movl	$0, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	create_float2_void, .-create_float2_void
	.globl	create_float2_float
	.type	create_float2_float, @function
create_float2_float:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movd	%xmm0, %edx
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movd	%xmm0, %edx
	movl	%edx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	create_float2_float, .-create_float2_float
	.globl	create_float2_float2
	.type	create_float2_float2, @function
create_float2_float2:
.LFB2:
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
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_float2_float2, .-create_float2_float2
	.globl	create_float2_float3
	.type	create_float2_float3, @function
create_float2_float3:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-32(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	create_float2_float3, .-create_float2_float3
	.globl	create_float2_float4
	.type	create_float2_float4, @function
create_float2_float4:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -24(%rbp)
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
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	create_float2_float4, .-create_float2_float4
	.globl	create_float2_float_float
	.type	create_float2_float_float, @function
create_float2_float_float:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movd	%xmm0, %edx
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movd	%xmm1, %edx
	movl	%edx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	create_float2_float_float, .-create_float2_float_float
	.globl	add_float2_float2_float2
	.type	add_float2_float2_float2, @function
add_float2_float2_float2:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_float2_float2_float2, .-add_float2_float2_float2
	.globl	sub_float2_float2_float2
	.type	sub_float2_float2_float2, @function
sub_float2_float2_float2:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sub_float2_float2_float2, .-sub_float2_float2_float2
	.globl	mul_float2_float2_float2
	.type	mul_float2_float2_float2, @function
mul_float2_float2_float2:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mul_float2_float2_float2, .-mul_float2_float2_float2
	.globl	div_float2_float2_float2
	.type	div_float2_float2_float2, @function
div_float2_float2_float2:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	div_float2_float2_float2, .-div_float2_float2_float2
	.globl	sqrt_float2_float2
	.type	sqrt_float2_float2, @function
sqrt_float2_float2:
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
	movq	%xmm0, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ebx, %eax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	%rbx, %rax
	sarq	$32, %rax
	movl	%eax, -40(%rbp)
	movss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sqrt_float2_float2, .-sqrt_float2_float2
	.globl	create_double2_void
	.type	create_double2_void, @function
create_double2_void:
.LFB11:
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
	movl	$0, %eax
	movl	$0, %edx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movdqa	-32(%rbp), %xmm0
	movq	%rdx, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	create_double2_void, .-create_double2_void
	.globl	create_double2_double
	.type	create_double2_double, @function
create_double2_double:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movq	%xmm0, %rax
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movdqa	-32(%rbp), %xmm0
	movq	%rdx, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	create_double2_double, .-create_double2_double
	.globl	create_double2_double2
	.type	create_double2_double2, @function
create_double2_double2:
.LFB13:
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
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	create_double2_double2, .-create_double2_double2
	.globl	create_double2_double3
	.type	create_double2_double3, @function
create_double2_double3:
.LFB14:
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
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
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
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	create_double2_double3, .-create_double2_double3
	.globl	create_double2_double4
	.type	create_double2_double4, @function
create_double2_double4:
.LFB15:
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
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
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
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	create_double2_double4, .-create_double2_double4
	.globl	create_double2_double_double
	.type	create_double2_double_double, @function
create_double2_double_double:
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
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movdqa	-32(%rbp), %xmm0
	movq	%rdx, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L51
	call	__stack_chk_fail@PLT
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	create_double2_double_double, .-create_double2_double_double
	.globl	add_double2_double2_double2
	.type	add_double2_double2_double2, @function
add_double2_double2_double2:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
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
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
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
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	add_double2_double2_double2, .-add_double2_double2_double2
	.globl	sub_double2_double2_double2
	.type	sub_double2_double2_double2, @function
sub_double2_double2_double2:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
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
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
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
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	sub_double2_double2_double2, .-sub_double2_double2_double2
	.globl	mul_double2_double2_double2
	.type	mul_double2_double2_double2, @function
mul_double2_double2_double2:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
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
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
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
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	mul_double2_double2_double2, .-mul_double2_double2_double2
	.globl	div_double2_double2_double2
	.type	div_double2_double2_double2, @function
div_double2_double2_double2:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
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
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
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
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	div_double2_double2_double2, .-div_double2_double2_double2
	.globl	sqrt_double2_double2
	.type	sqrt_double2_double2, @function
sqrt_double2_double2:
.LFB21:
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
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
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
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	sqrt_double2_double2, .-sqrt_double2_double2
	.globl	create_int2_void
	.type	create_int2_void, @function
create_int2_void:
.LFB22:
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
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	create_int2_void, .-create_int2_void
	.globl	create_int2_int
	.type	create_int2_int, @function
create_int2_int:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %esi
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rsi, %rax
	movl	%ecx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	create_int2_int, .-create_int2_int
	.globl	create_int2_int2
	.type	create_int2_int2, @function
create_int2_int2:
.LFB24:
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
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	create_int2_int2, .-create_int2_int2
	.globl	create_int2_int3
	.type	create_int2_int3, @function
create_int2_int3:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-32(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	create_int2_int3, .-create_int2_int3
	.globl	create_int2_int4
	.type	create_int2_int4, @function
create_int2_int4:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	create_int2_int4, .-create_int2_int4
	.globl	create_int2_int_int
	.type	create_int2_int_int, @function
create_int2_int_int:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movl	%esi, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	create_int2_int_int, .-create_int2_int_int
	.globl	add_int2_int2_int2
	.type	add_int2_int2_int2, @function
add_int2_int2_int2:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	addl	%esi, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	sarq	$32, %rax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	add_int2_int2_int2, .-add_int2_int2_int2
	.globl	sub_int2_int2_int2
	.type	sub_int2_int2_int2, @function
sub_int2_int2_int2:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	sarq	$32, %rax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L90
	call	__stack_chk_fail@PLT
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	sub_int2_int2_int2, .-sub_int2_int2_int2
	.globl	mul_int2_int2_int2
	.type	mul_int2_int2_int2, @function
mul_int2_int2_int2:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	imull	%esi, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	sarq	$32, %rax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	mul_int2_int2_int2, .-mul_int2_int2_int2
	.globl	div_int2_int2_int2
	.type	div_int2_int2_int2, @function
div_int2_int2_int2:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rsi, %rcx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edi, %eax
	movl	%ecx, %esi
	cltd
	idivl	%esi
	movl	%eax, -16(%rbp)
	movq	%rdi, %rax
	sarq	$32, %rax
	movl	%eax, %edx
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	div_int2_int2_int2, .-div_int2_int2_int2
	.globl	sqrt_int2_int2
	.type	sqrt_int2_int2, @function
sqrt_int2_int2:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ebx, %eax
	cvtsi2sd	%eax, %xmm0
	call	sqrt@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movq	%rbx, %rax
	sarq	$32, %rax
	cvtsi2sd	%eax, %xmm0
	call	sqrt@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L99
	call	__stack_chk_fail@PLT
.L99:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	sqrt_int2_int2, .-sqrt_int2_int2
	.globl	create_uint2_void
	.type	create_uint2_void, @function
create_uint2_void:
.LFB33:
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
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L102
	call	__stack_chk_fail@PLT
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	create_uint2_void, .-create_uint2_void
	.globl	create_uint2_uint
	.type	create_uint2_uint, @function
create_uint2_uint:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %esi
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rsi, %rax
	movl	%ecx, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L105
	call	__stack_chk_fail@PLT
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	create_uint2_uint, .-create_uint2_uint
	.globl	create_uint2_uint2
	.type	create_uint2_uint2, @function
create_uint2_uint2:
.LFB35:
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
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	create_uint2_uint2, .-create_uint2_uint2
	.globl	create_uint2_uint3
	.type	create_uint2_uint3, @function
create_uint2_uint3:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-32(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L111
	call	__stack_chk_fail@PLT
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	create_uint2_uint3, .-create_uint2_uint3
	.globl	create_uint2_uint4
	.type	create_uint2_uint4, @function
create_uint2_uint4:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	create_uint2_uint4, .-create_uint2_uint4
	.globl	create_uint2_uint_uint
	.type	create_uint2_uint_uint, @function
create_uint2_uint_uint:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %ecx
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movl	%esi, %edx
	salq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	create_uint2_uint_uint, .-create_uint2_uint_uint
	.globl	add_uint2_uint2_uint2
	.type	add_uint2_uint2_uint2, @function
add_uint2_uint2_uint2:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	addl	%esi, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L120
	call	__stack_chk_fail@PLT
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	add_uint2_uint2_uint2, .-add_uint2_uint2_uint2
	.globl	sub_uint2_uint2_uint2
	.type	sub_uint2_uint2_uint2, @function
sub_uint2_uint2_uint2:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	shrq	$32, %rax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	sub_uint2_uint2_uint2, .-sub_uint2_uint2_uint2
	.globl	mul_uint2_uint2_uint2
	.type	mul_uint2_uint2_uint2, @function
mul_uint2_uint2_uint2:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	imull	%esi, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	shrq	$32, %rax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	mul_uint2_uint2_uint2, .-mul_uint2_uint2_uint2
	.globl	div_uint2_uint2_uint2
	.type	div_uint2_uint2_uint2, @function
div_uint2_uint2_uint2:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rsi, %rcx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edi, %eax
	movl	%ecx, %esi
	movl	$0, %edx
	divl	%esi
	movl	%eax, -16(%rbp)
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L129
	call	__stack_chk_fail@PLT
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	div_uint2_uint2_uint2, .-div_uint2_uint2_uint2
	.globl	sqrt_uint2_uint2
	.type	sqrt_uint2_uint2, @function
sqrt_uint2_uint2:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ebx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L131
	cvtsi2sdq	%rax, %xmm0
	jmp	.L132
.L131:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L132:
	call	sqrt@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -32(%rbp)
	movq	%rbx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L133
	cvtsi2sdq	%rax, %xmm0
	jmp	.L134
.L133:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L134:
	call	sqrt@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -28(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	sqrt_uint2_uint2, .-sqrt_uint2_uint2
	.globl	create_bool2_void
	.type	create_bool2_void, @function
create_bool2_void:
.LFB44:
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
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L139
	call	__stack_chk_fail@PLT
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	create_bool2_void, .-create_bool2_void
	.globl	create_bool2_bool
	.type	create_bool2_bool, @function
create_bool2_bool:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movb	%dl, %al
	movb	%dl, %ah
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L142
	call	__stack_chk_fail@PLT
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	create_bool2_bool, .-create_bool2_bool
	.globl	create_bool2_bool2
	.type	create_bool2_bool2, @function
create_bool2_bool2:
.LFB46:
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
	je	.L145
	call	__stack_chk_fail@PLT
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	create_bool2_bool2, .-create_bool2_bool2
	.globl	create_bool2_bool3
	.type	create_bool2_bool3, @function
create_bool2_bool3:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %eax
	movb	%al, -10(%rbp)
	movzbl	-23(%rbp), %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	create_bool2_bool3, .-create_bool2_bool3
	.globl	create_bool2_bool4
	.type	create_bool2_bool4, @function
create_bool2_bool4:
.LFB48:
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
	je	.L151
	call	__stack_chk_fail@PLT
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	create_bool2_bool4, .-create_bool2_bool4
	.globl	create_bool2_bool_bool
	.type	create_bool2_bool_bool, @function
create_bool2_bool_bool:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movb	%cl, %al
	movb	%dl, %ah
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L154
	call	__stack_chk_fail@PLT
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	create_bool2_bool_bool, .-create_bool2_bool_bool
	.globl	add_bool2_bool2_bool2
	.type	add_bool2_bool2_bool2, @function
add_bool2_bool2_bool2:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	addl	%esi, %ecx
	movb	%cl, -10(%rbp)
	movzbl	%dh, %edx
	movzbl	%ah, %eax
	addl	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	add_bool2_bool2_bool2, .-add_bool2_bool2_bool2
	.globl	sub_bool2_bool2_bool2
	.type	sub_bool2_bool2_bool2, @function
sub_bool2_bool2_bool2:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movb	%cl, -10(%rbp)
	movzbl	%dh, %edx
	movzbl	%ah, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L160
	call	__stack_chk_fail@PLT
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	sub_bool2_bool2_bool2, .-sub_bool2_bool2_bool2
	.globl	mul_bool2_bool2_bool2
	.type	mul_bool2_bool2_bool2, @function
mul_bool2_bool2_bool2:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%esi, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%edx, %esi
	imull	%esi, %eax
	movb	%al, -10(%rbp)
	movzbl	%ch, %eax
	movzbl	%dh, %edx
	imull	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L163
	call	__stack_chk_fail@PLT
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	mul_bool2_bool2_bool2, .-mul_bool2_bool2_bool2
	.globl	div_bool2_bool2_bool2
	.type	div_bool2_bool2_bool2, @function
div_bool2_bool2_bool2:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%esi, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%edx, %esi
	movzbl	%al, %eax
	divb	%sil
	movb	%al, -10(%rbp)
	movzbl	%ch, %eax
	movzbl	%dh, %edx
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L166
	call	__stack_chk_fail@PLT
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	div_bool2_bool2_bool2, .-div_bool2_bool2_bool2
	.globl	sqrt_bool2_bool2
	.type	sqrt_bool2_bool2, @function
sqrt_bool2_bool2:
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
	movl	%edi, %ebx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ebx, %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	call	sqrt@PLT
	cvttsd2si	%xmm0, %eax
	movb	%al, -26(%rbp)
	movzbl	%bh, %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	call	sqrt@PLT
	cvttsd2si	%xmm0, %eax
	movb	%al, -25(%rbp)
	movzwl	-26(%rbp), %eax
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	sqrt_bool2_bool2, .-sqrt_bool2_bool2
	.globl	main
	.type	main, @function
main:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm1
	movss	.LC1(%rip), %xmm0
	call	create_float2_float_float
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movq	.LC2(%rip), %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	call	convert_double_double@PLT
	call	create_double2_double
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	convert_int_float@PLT
	movl	%eax, %edi
	call	create_int2_int
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	call	convert_int2_double2@PLT
	movq	%rax, %rdi
	call	create_int2_int2
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L172
	call	__stack_chk_fail@PLT
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1117126656
	.align 4
.LC1:
	.long	1107296256
	.align 8
.LC2:
	.long	0
	.long	1077477376
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

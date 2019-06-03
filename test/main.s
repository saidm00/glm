	.file	"main.c"
	.text
	.type	convert_float_float, @function
convert_float_float:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	convert_float_float, .-convert_float_float
	.type	convert_float_double, @function
convert_float_double:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	convert_float_double, .-convert_float_double
	.type	convert_float_int, @function
convert_float_int:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	cvtsi2ss	%eax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	convert_float_int, .-convert_float_int
	.type	convert_float_uint, @function
convert_float_uint:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L8
	cvtsi2ssq	%rax, %xmm0
	jmp	.L10
.L8:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	convert_float_uint, .-convert_float_uint
	.type	convert_float_bool, @function
convert_float_bool:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	convert_float_bool, .-convert_float_bool
	.type	convert_double_float, @function
convert_double_float:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvtss2sd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	convert_double_float, .-convert_double_float
	.type	convert_double_double, @function
convert_double_double:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	convert_double_double, .-convert_double_double
	.type	convert_double_int, @function
convert_double_int:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	cvtsi2sd	%eax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	convert_double_int, .-convert_double_int
	.type	convert_double_uint, @function
convert_double_uint:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L20
	cvtsi2sdq	%rax, %xmm0
	jmp	.L22
.L20:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	convert_double_uint, .-convert_double_uint
	.type	convert_double_bool, @function
convert_double_bool:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	convert_double_bool, .-convert_double_bool
	.type	convert_int_float, @function
convert_int_float:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvttss2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	convert_int_float, .-convert_int_float
	.type	convert_int_double, @function
convert_int_double:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	convert_int_double, .-convert_int_double
	.type	convert_int_int, @function
convert_int_int:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	convert_int_int, .-convert_int_int
	.type	convert_int_uint, @function
convert_int_uint:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	convert_int_uint, .-convert_int_uint
	.type	convert_int_bool, @function
convert_int_bool:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	convert_int_bool, .-convert_int_bool
	.type	convert_uint_float, @function
convert_uint_float:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvttss2siq	%xmm0, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	convert_uint_float, .-convert_uint_float
	.type	convert_uint_double, @function
convert_uint_double:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvttsd2siq	%xmm0, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	convert_uint_double, .-convert_uint_double
	.type	convert_uint_int, @function
convert_uint_int:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	convert_uint_int, .-convert_uint_int
	.type	convert_uint_uint, @function
convert_uint_uint:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	convert_uint_uint, .-convert_uint_uint
	.type	convert_uint_bool, @function
convert_uint_bool:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	convert_uint_bool, .-convert_uint_bool
	.type	convert_bool_float, @function
convert_bool_float:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvttss2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	convert_bool_float, .-convert_bool_float
	.type	convert_bool_double, @function
convert_bool_double:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	convert_bool_double, .-convert_bool_double
	.type	convert_bool_int, @function
convert_bool_int:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	convert_bool_int, .-convert_bool_int
	.type	convert_bool_uint, @function
convert_bool_uint:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	convert_bool_uint, .-convert_bool_uint
	.type	convert_bool_bool, @function
convert_bool_bool:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	convert_bool_bool, .-convert_bool_bool
	.type	create_float2_void, @function
create_float2_void:
.LFB25:
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
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	create_float2_void, .-create_float2_void
	.type	create_float2_float, @function
create_float2_float:
.LFB26:
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
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	create_float2_float, .-create_float2_float
	.type	create_float2_float2, @function
create_float2_float2:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	create_float2_float2, .-create_float2_float2
	.type	create_float2_float3, @function
create_float2_float3:
.LFB28:
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
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	create_float2_float3, .-create_float2_float3
	.type	create_float2_float4, @function
create_float2_float4:
.LFB29:
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
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	create_float2_float4, .-create_float2_float4
	.type	create_float2_float_float, @function
create_float2_float_float:
.LFB30:
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
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	create_float2_float_float, .-create_float2_float_float
	.type	convert_float2_float2, @function
convert_float2_float2:
.LFB31:
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
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	convert_float2_float2, .-convert_float2_float2
	.type	convert_float2_double2, @function
convert_float2_double2:
.LFB32:
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
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	convert_float2_double2, .-convert_float2_double2
	.type	convert_float2_int2, @function
convert_float2_int2:
.LFB33:
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
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	convert_float2_int2, .-convert_float2_int2
	.type	convert_float2_uint2, @function
convert_float2_uint2:
.LFB34:
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
	js	.L83
	cvtsi2ssq	%rax, %xmm0
	jmp	.L84
.L83:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L84:
	movss	%xmm0, -16(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L85
	cvtsi2ssq	%rax, %xmm0
	jmp	.L86
.L85:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L86:
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	convert_float2_uint2, .-convert_float2_uint2
	.type	convert_float2_bool2, @function
convert_float2_bool2:
.LFB35:
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
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	convert_float2_bool2, .-convert_float2_bool2
	.type	add_float2_float2_float2, @function
add_float2_float2_float2:
.LFB36:
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
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	add_float2_float2_float2, .-add_float2_float2_float2
	.type	add_float2_float2_float, @function
add_float2_float2_float:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L97
	call	__stack_chk_fail@PLT
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	add_float2_float2_float, .-add_float2_float2_float
	.type	add_float2_float_float2, @function
add_float2_float_float2:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm1, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L100
	call	__stack_chk_fail@PLT
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	add_float2_float_float2, .-add_float2_float_float2
	.type	sub_float2_float2_float2, @function
sub_float2_float2_float2:
.LFB39:
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
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	sub_float2_float2_float2, .-sub_float2_float2_float2
	.type	sub_float2_float2_float, @function
sub_float2_float2_float:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L106
	call	__stack_chk_fail@PLT
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	sub_float2_float2_float, .-sub_float2_float2_float
	.type	sub_float2_float_float2, @function
sub_float2_float_float2:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm1, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	movss	%xmm1, -16(%rbp)
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
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	sub_float2_float_float2, .-sub_float2_float_float2
	.type	mul_float2_float2_float2, @function
mul_float2_float2_float2:
.LFB42:
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
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	mul_float2_float2_float2, .-mul_float2_float2_float2
	.type	mul_float2_float2_float, @function
mul_float2_float2_float:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L115
	call	__stack_chk_fail@PLT
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	mul_float2_float2_float, .-mul_float2_float2_float
	.type	mul_float2_float_float2, @function
mul_float2_float_float2:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm1, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	mul_float2_float_float2, .-mul_float2_float_float2
	.type	div_float2_float2_float2, @function
div_float2_float2_float2:
.LFB45:
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
	je	.L121
	call	__stack_chk_fail@PLT
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	div_float2_float2_float2, .-div_float2_float2_float2
	.type	div_float2_float2_float, @function
div_float2_float2_float:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L124
	call	__stack_chk_fail@PLT
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	div_float2_float2_float, .-div_float2_float2_float
	.type	div_float2_float_float2, @function
div_float2_float_float2:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%xmm1, %rax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movss	-24(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	movss	%xmm1, -16(%rbp)
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
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	div_float2_float_float2, .-div_float2_float_float2
	.type	create_double2_void, @function
create_double2_void:
.LFB48:
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
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movdqa	-48(%rbp), %xmm0
	movq	%rdx, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	create_double2_void, .-create_double2_void
	.type	create_double2_double, @function
create_double2_double:
.LFB49:
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
	je	.L133
	call	__stack_chk_fail@PLT
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	create_double2_double, .-create_double2_double
	.type	create_double2_double2, @function
create_double2_double2:
.LFB50:
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
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movdqa	-32(%rbp), %xmm0
	movq	%rdx, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	create_double2_double2, .-create_double2_double2
	.type	create_double2_double3, @function
create_double2_double3:
.LFB51:
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
	je	.L139
	call	__stack_chk_fail@PLT
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	create_double2_double3, .-create_double2_double3
	.type	create_double2_double4, @function
create_double2_double4:
.LFB52:
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
	je	.L142
	call	__stack_chk_fail@PLT
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	create_double2_double4, .-create_double2_double4
	.type	create_double2_double_double, @function
create_double2_double_double:
.LFB53:
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
	je	.L145
	call	__stack_chk_fail@PLT
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	create_double2_double_double, .-create_double2_double_double
	.type	convert_double2_float2, @function
convert_double2_float2:
.LFB54:
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
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	convert_double2_float2, .-convert_double2_float2
	.type	convert_double2_double2, @function
convert_double2_double2:
.LFB55:
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
	je	.L151
	call	__stack_chk_fail@PLT
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	convert_double2_double2, .-convert_double2_double2
	.type	convert_double2_int2, @function
convert_double2_int2:
.LFB56:
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
	je	.L154
	call	__stack_chk_fail@PLT
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	convert_double2_int2, .-convert_double2_int2
	.type	convert_double2_uint2, @function
convert_double2_uint2:
.LFB57:
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
	js	.L156
	cvtsi2sdq	%rax, %xmm0
	jmp	.L157
.L156:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L157:
	movsd	%xmm0, -32(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L158
	cvtsi2sdq	%rax, %xmm0
	jmp	.L159
.L158:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L159:
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
	je	.L161
	call	__stack_chk_fail@PLT
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	convert_double2_uint2, .-convert_double2_uint2
	.type	convert_double2_bool2, @function
convert_double2_bool2:
.LFB58:
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
	je	.L164
	call	__stack_chk_fail@PLT
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	convert_double2_bool2, .-convert_double2_bool2
	.type	add_double2_double2_double2, @function
add_double2_double2_double2:
.LFB59:
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
	je	.L167
	call	__stack_chk_fail@PLT
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	add_double2_double2_double2, .-add_double2_double2_double2
	.type	add_double2_double2_double, @function
add_double2_double2_double:
.LFB60:
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
	movapd	%xmm2, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
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
	je	.L170
	call	__stack_chk_fail@PLT
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	add_double2_double2_double, .-add_double2_double2_double
	.type	add_double2_double_double2, @function
add_double2_double_double2:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movapd	%xmm1, %xmm3
	movapd	%xmm2, %xmm1
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm3, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
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
	je	.L173
	call	__stack_chk_fail@PLT
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	add_double2_double_double2, .-add_double2_double_double2
	.type	sub_double2_double2_double2, @function
sub_double2_double2_double2:
.LFB62:
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
	je	.L176
	call	__stack_chk_fail@PLT
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	sub_double2_double2_double2, .-sub_double2_double2_double2
	.type	sub_double2_double2_double, @function
sub_double2_double2_double:
.LFB63:
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
	movapd	%xmm2, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
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
	je	.L179
	call	__stack_chk_fail@PLT
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	sub_double2_double2_double, .-sub_double2_double2_double
	.type	sub_double2_double_double2, @function
sub_double2_double_double2:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movapd	%xmm1, %xmm3
	movapd	%xmm2, %xmm1
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm3, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	movapd	%xmm0, %xmm4
	subsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
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
	je	.L182
	call	__stack_chk_fail@PLT
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	sub_double2_double_double2, .-sub_double2_double_double2
	.type	mul_double2_double2_double2, @function
mul_double2_double2_double2:
.LFB65:
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
	je	.L185
	call	__stack_chk_fail@PLT
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	mul_double2_double2_double2, .-mul_double2_double2_double2
	.type	mul_double2_double2_double, @function
mul_double2_double2_double:
.LFB66:
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
	movapd	%xmm2, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
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
	je	.L188
	call	__stack_chk_fail@PLT
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	mul_double2_double2_double, .-mul_double2_double2_double
	.type	mul_double2_double_double2, @function
mul_double2_double_double2:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movapd	%xmm1, %xmm3
	movapd	%xmm2, %xmm1
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm3, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
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
	je	.L191
	call	__stack_chk_fail@PLT
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	mul_double2_double_double2, .-mul_double2_double_double2
	.type	div_double2_double2_double2, @function
div_double2_double2_double2:
.LFB68:
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
	je	.L194
	call	__stack_chk_fail@PLT
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	div_double2_double2_double2, .-div_double2_double2_double2
	.type	div_double2_double2_double, @function
div_double2_double2_double:
.LFB69:
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
	movapd	%xmm2, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
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
	je	.L197
	call	__stack_chk_fail@PLT
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	div_double2_double2_double, .-div_double2_double2_double
	.type	div_double2_double_double2, @function
div_double2_double_double2:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movapd	%xmm1, %xmm3
	movapd	%xmm2, %xmm1
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm3, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-48(%rbp), %xmm1
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-40(%rbp), %xmm1
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
	je	.L200
	call	__stack_chk_fail@PLT
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	div_double2_double_double2, .-div_double2_double_double2
	.type	create_int2_void, @function
create_int2_void:
.LFB71:
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
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	create_int2_void, .-create_int2_void
	.type	create_int2_int, @function
create_int2_int:
.LFB72:
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
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	create_int2_int, .-create_int2_int
	.type	create_int2_int2, @function
create_int2_int2:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L209
	call	__stack_chk_fail@PLT
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	create_int2_int2, .-create_int2_int2
	.type	create_int2_int3, @function
create_int2_int3:
.LFB74:
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
	je	.L212
	call	__stack_chk_fail@PLT
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	create_int2_int3, .-create_int2_int3
	.type	create_int2_int4, @function
create_int2_int4:
.LFB75:
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
	je	.L215
	call	__stack_chk_fail@PLT
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	create_int2_int4, .-create_int2_int4
	.type	create_int2_int_int, @function
create_int2_int_int:
.LFB76:
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
	je	.L218
	call	__stack_chk_fail@PLT
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	create_int2_int_int, .-create_int2_int_int
	.type	convert_int2_float2, @function
convert_int2_float2:
.LFB77:
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
	je	.L221
	call	__stack_chk_fail@PLT
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	convert_int2_float2, .-convert_int2_float2
	.type	convert_int2_double2, @function
convert_int2_double2:
.LFB78:
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
	je	.L224
	call	__stack_chk_fail@PLT
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	convert_int2_double2, .-convert_int2_double2
	.type	convert_int2_int2, @function
convert_int2_int2:
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
	movl	%edx, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L227
	call	__stack_chk_fail@PLT
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	convert_int2_int2, .-convert_int2_int2
	.type	convert_int2_uint2, @function
convert_int2_uint2:
.LFB80:
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
	je	.L230
	call	__stack_chk_fail@PLT
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	convert_int2_uint2, .-convert_int2_uint2
	.type	convert_int2_bool2, @function
convert_int2_bool2:
.LFB81:
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
	je	.L233
	call	__stack_chk_fail@PLT
.L233:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	convert_int2_bool2, .-convert_int2_bool2
	.type	add_int2_int2_int2, @function
add_int2_int2_int2:
.LFB82:
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
	je	.L236
	call	__stack_chk_fail@PLT
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	add_int2_int2_int2, .-add_int2_int2_int2
	.type	add_int2_int2_int, @function
add_int2_int2_int:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L239
	call	__stack_chk_fail@PLT
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	add_int2_int2_int, .-add_int2_int2_int
	.type	add_int2_int_int2, @function
add_int2_int_int2:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L242
	call	__stack_chk_fail@PLT
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	add_int2_int_int2, .-add_int2_int_int2
	.type	sub_int2_int2_int2, @function
sub_int2_int2_int2:
.LFB85:
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
	je	.L245
	call	__stack_chk_fail@PLT
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	sub_int2_int2_int2, .-sub_int2_int2_int2
	.type	sub_int2_int2_int, @function
sub_int2_int2_int:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L248
	call	__stack_chk_fail@PLT
.L248:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	sub_int2_int2_int, .-sub_int2_int2_int
	.type	sub_int2_int_int2, @function
sub_int2_int_int2:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %ecx
	movl	%eax, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L251
	call	__stack_chk_fail@PLT
.L251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	sub_int2_int_int2, .-sub_int2_int_int2
	.type	mul_int2_int2_int2, @function
mul_int2_int2_int2:
.LFB88:
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
	je	.L254
	call	__stack_chk_fail@PLT
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	mul_int2_int2_int2, .-mul_int2_int2_int2
	.type	mul_int2_int2_int, @function
mul_int2_int2_int:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L257
	call	__stack_chk_fail@PLT
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	mul_int2_int2_int, .-mul_int2_int2_int
	.type	mul_int2_int_int2, @function
mul_int2_int_int2:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rdx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L260
	call	__stack_chk_fail@PLT
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	mul_int2_int_int2, .-mul_int2_int_int2
	.type	div_int2_int2_int2, @function
div_int2_int2_int2:
.LFB91:
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
	je	.L263
	call	__stack_chk_fail@PLT
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	div_int2_int2_int2, .-div_int2_int2_int2
	.type	div_int2_int2_int, @function
div_int2_int2_int:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%esi, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movl	%eax, -16(%rbp)
	movq	%rdi, %rax
	sarq	$32, %rax
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L266
	call	__stack_chk_fail@PLT
.L266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	div_int2_int2_int, .-div_int2_int2_int
	.type	div_int2_int_int2, @function
div_int2_int_int2:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%esi, %edi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, -16(%rbp)
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L269
	call	__stack_chk_fail@PLT
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	div_int2_int_int2, .-div_int2_int_int2
	.type	create_uint2_void, @function
create_uint2_void:
.LFB94:
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
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L272
	call	__stack_chk_fail@PLT
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	create_uint2_void, .-create_uint2_void
	.type	create_uint2_uint, @function
create_uint2_uint:
.LFB95:
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
	je	.L275
	call	__stack_chk_fail@PLT
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	create_uint2_uint, .-create_uint2_uint
	.type	create_uint2_uint2, @function
create_uint2_uint2:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L278
	call	__stack_chk_fail@PLT
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	create_uint2_uint2, .-create_uint2_uint2
	.type	create_uint2_uint3, @function
create_uint2_uint3:
.LFB97:
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
	je	.L281
	call	__stack_chk_fail@PLT
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	create_uint2_uint3, .-create_uint2_uint3
	.type	create_uint2_uint4, @function
create_uint2_uint4:
.LFB98:
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
	je	.L284
	call	__stack_chk_fail@PLT
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	create_uint2_uint4, .-create_uint2_uint4
	.type	create_uint2_uint_uint, @function
create_uint2_uint_uint:
.LFB99:
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
	je	.L287
	call	__stack_chk_fail@PLT
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	create_uint2_uint_uint, .-create_uint2_uint_uint
	.type	convert_uint2_float2, @function
convert_uint2_float2:
.LFB100:
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
	je	.L290
	call	__stack_chk_fail@PLT
.L290:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	convert_uint2_float2, .-convert_uint2_float2
	.type	convert_uint2_double2, @function
convert_uint2_double2:
.LFB101:
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
	je	.L293
	call	__stack_chk_fail@PLT
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	convert_uint2_double2, .-convert_uint2_double2
	.type	convert_uint2_int2, @function
convert_uint2_int2:
.LFB102:
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
	je	.L296
	call	__stack_chk_fail@PLT
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	convert_uint2_int2, .-convert_uint2_int2
	.type	convert_uint2_uint2, @function
convert_uint2_uint2:
.LFB103:
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
	je	.L299
	call	__stack_chk_fail@PLT
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	convert_uint2_uint2, .-convert_uint2_uint2
	.type	convert_uint2_bool2, @function
convert_uint2_bool2:
.LFB104:
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
	je	.L302
	call	__stack_chk_fail@PLT
.L302:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	convert_uint2_bool2, .-convert_uint2_bool2
	.type	add_uint2_uint2_uint2, @function
add_uint2_uint2_uint2:
.LFB105:
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
	je	.L305
	call	__stack_chk_fail@PLT
.L305:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	add_uint2_uint2_uint2, .-add_uint2_uint2_uint2
	.type	add_uint2_uint2_uint, @function
add_uint2_uint2_uint:
.LFB106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L308
	call	__stack_chk_fail@PLT
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	add_uint2_uint2_uint, .-add_uint2_uint2_uint
	.type	add_uint2_uint_uint2, @function
add_uint2_uint_uint2:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L311
	call	__stack_chk_fail@PLT
.L311:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	add_uint2_uint_uint2, .-add_uint2_uint_uint2
	.type	sub_uint2_uint2_uint2, @function
sub_uint2_uint2_uint2:
.LFB108:
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
	je	.L314
	call	__stack_chk_fail@PLT
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	sub_uint2_uint2_uint2, .-sub_uint2_uint2_uint2
	.type	sub_uint2_uint2_uint, @function
sub_uint2_uint2_uint:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L317
	call	__stack_chk_fail@PLT
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	sub_uint2_uint2_uint, .-sub_uint2_uint2_uint
	.type	sub_uint2_uint_uint2, @function
sub_uint2_uint_uint2:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%edx, %ecx
	movl	%eax, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L320
	call	__stack_chk_fail@PLT
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	sub_uint2_uint_uint2, .-sub_uint2_uint_uint2
	.type	mul_uint2_uint2_uint2, @function
mul_uint2_uint2_uint2:
.LFB111:
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
	je	.L323
	call	__stack_chk_fail@PLT
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	mul_uint2_uint2_uint2, .-mul_uint2_uint2_uint2
	.type	mul_uint2_uint2_uint, @function
mul_uint2_uint2_uint:
.LFB112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L326
	call	__stack_chk_fail@PLT
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	mul_uint2_uint2_uint, .-mul_uint2_uint2_uint
	.type	mul_uint2_uint_uint2, @function
mul_uint2_uint_uint2:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	%ecx, -16(%rbp)
	shrq	$32, %rdx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L329
	call	__stack_chk_fail@PLT
.L329:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	mul_uint2_uint_uint2, .-mul_uint2_uint_uint2
	.type	div_uint2_uint2_uint2, @function
div_uint2_uint2_uint2:
.LFB114:
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
	je	.L332
	call	__stack_chk_fail@PLT
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	div_uint2_uint2_uint2, .-div_uint2_uint2_uint2
	.type	div_uint2_uint2_uint, @function
div_uint2_uint2_uint:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%esi, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edi, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -16(%rbp)
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L335
	call	__stack_chk_fail@PLT
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	div_uint2_uint2_uint, .-div_uint2_uint2_uint
	.type	div_uint2_uint_uint2, @function
div_uint2_uint_uint2:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%esi, %edi
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%edi
	movl	%eax, -16(%rbp)
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L338
	call	__stack_chk_fail@PLT
.L338:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	div_uint2_uint_uint2, .-div_uint2_uint_uint2
	.type	create_bool2_void, @function
create_bool2_void:
.LFB117:
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
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L341
	call	__stack_chk_fail@PLT
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	create_bool2_void, .-create_bool2_void
	.type	create_bool2_bool, @function
create_bool2_bool:
.LFB118:
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
	je	.L344
	call	__stack_chk_fail@PLT
.L344:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	create_bool2_bool, .-create_bool2_bool
	.type	create_bool2_bool2, @function
create_bool2_bool2:
.LFB119:
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
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L347
	call	__stack_chk_fail@PLT
.L347:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	create_bool2_bool2, .-create_bool2_bool2
	.type	create_bool2_bool3, @function
create_bool2_bool3:
.LFB120:
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
	je	.L350
	call	__stack_chk_fail@PLT
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	create_bool2_bool3, .-create_bool2_bool3
	.type	create_bool2_bool4, @function
create_bool2_bool4:
.LFB121:
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
	je	.L353
	call	__stack_chk_fail@PLT
.L353:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	create_bool2_bool4, .-create_bool2_bool4
	.type	create_bool2_bool_bool, @function
create_bool2_bool_bool:
.LFB122:
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
	je	.L356
	call	__stack_chk_fail@PLT
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	create_bool2_bool_bool, .-create_bool2_bool_bool
	.type	convert_bool2_float2, @function
convert_bool2_float2:
.LFB123:
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
	je	.L359
	call	__stack_chk_fail@PLT
.L359:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	convert_bool2_float2, .-convert_bool2_float2
	.type	convert_bool2_double2, @function
convert_bool2_double2:
.LFB124:
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
	je	.L362
	call	__stack_chk_fail@PLT
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	convert_bool2_double2, .-convert_bool2_double2
	.type	convert_bool2_int2, @function
convert_bool2_int2:
.LFB125:
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
	je	.L365
	call	__stack_chk_fail@PLT
.L365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	convert_bool2_int2, .-convert_bool2_int2
	.type	convert_bool2_uint2, @function
convert_bool2_uint2:
.LFB126:
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
	je	.L368
	call	__stack_chk_fail@PLT
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	convert_bool2_uint2, .-convert_bool2_uint2
	.type	convert_bool2_bool2, @function
convert_bool2_bool2:
.LFB127:
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
	je	.L371
	call	__stack_chk_fail@PLT
.L371:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	convert_bool2_bool2, .-convert_bool2_bool2
	.type	add_bool2_bool2_bool2, @function
add_bool2_bool2_bool2:
.LFB128:
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
	je	.L374
	call	__stack_chk_fail@PLT
.L374:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	add_bool2_bool2_bool2, .-add_bool2_bool2_bool2
	.type	add_bool2_bool2_bool, @function
add_bool2_bool2_bool:
.LFB129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	addl	%edx, %ecx
	movb	%cl, -10(%rbp)
	movzbl	%ah, %eax
	addl	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L377
	call	__stack_chk_fail@PLT
.L377:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	add_bool2_bool2_bool, .-add_bool2_bool2_bool
	.type	add_bool2_bool_bool2, @function
add_bool2_bool_bool2:
.LFB130:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	addl	%edx, %ecx
	movb	%cl, -10(%rbp)
	movzbl	%ah, %eax
	addl	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L380
	call	__stack_chk_fail@PLT
.L380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	add_bool2_bool_bool2, .-add_bool2_bool_bool2
	.type	sub_bool2_bool2_bool2, @function
sub_bool2_bool2_bool2:
.LFB131:
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
	je	.L383
	call	__stack_chk_fail@PLT
.L383:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	sub_bool2_bool2_bool2, .-sub_bool2_bool2_bool2
	.type	sub_bool2_bool2_bool, @function
sub_bool2_bool2_bool:
.LFB132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	subl	%edx, %ecx
	movb	%cl, -10(%rbp)
	movzbl	%ah, %eax
	subl	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L386
	call	__stack_chk_fail@PLT
.L386:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	sub_bool2_bool2_bool, .-sub_bool2_bool2_bool
	.type	sub_bool2_bool_bool2, @function
sub_bool2_bool_bool2:
.LFB133:
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
	movl	%eax, %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movb	%cl, -10(%rbp)
	movzbl	%ah, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L389
	call	__stack_chk_fail@PLT
.L389:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	sub_bool2_bool_bool2, .-sub_bool2_bool_bool2
	.type	mul_bool2_bool2_bool2, @function
mul_bool2_bool2_bool2:
.LFB134:
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
	je	.L392
	call	__stack_chk_fail@PLT
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	mul_bool2_bool2_bool2, .-mul_bool2_bool2_bool2
	.type	mul_bool2_bool2_bool, @function
mul_bool2_bool2_bool:
.LFB135:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movl	%eax, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -10(%rbp)
	movzbl	%dh, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L395
	call	__stack_chk_fail@PLT
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	mul_bool2_bool2_bool, .-mul_bool2_bool2_bool
	.type	mul_bool2_bool_bool2, @function
mul_bool2_bool_bool2:
.LFB136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movl	%eax, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -10(%rbp)
	movzbl	%dh, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L398
	call	__stack_chk_fail@PLT
.L398:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	mul_bool2_bool_bool2, .-mul_bool2_bool_bool2
	.type	div_bool2_bool2_bool2, @function
div_bool2_bool2_bool2:
.LFB137:
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
	je	.L401
	call	__stack_chk_fail@PLT
.L401:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	div_bool2_bool2_bool2, .-div_bool2_bool2_bool2
	.type	div_bool2_bool2_bool, @function
div_bool2_bool2_bool:
.LFB138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%esi, %eax
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -10(%rbp)
	movzbl	%ch, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L404
	call	__stack_chk_fail@PLT
.L404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	div_bool2_bool2_bool, .-div_bool2_bool2_bool
	.type	div_bool2_bool_bool2, @function
div_bool2_bool_bool2:
.LFB139:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movl	%eax, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %esi
	movzbl	%cl, %eax
	divb	%sil
	movb	%al, -10(%rbp)
	movzbl	%dh, %edx
	movzbl	%cl, %eax
	divb	%dl
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L407
	call	__stack_chk_fail@PLT
.L407:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	div_bool2_bool_bool2, .-div_bool2_bool_bool2
	.type	create_float3_void, @function
create_float3_void:
.LFB140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L410
	call	__stack_chk_fail@PLT
.L410:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	create_float3_void, .-create_float3_void
	.type	create_float3_float, @function
create_float3_float:
.LFB141:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movd	%xmm0, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movq	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -16(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L413
	call	__stack_chk_fail@PLT
.L413:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	create_float3_float, .-create_float3_float
	.type	create_float3_float3, @function
create_float3_float3:
.LFB142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L416
	call	__stack_chk_fail@PLT
.L416:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	create_float3_float3, .-create_float3_float3
	.type	create_float3_float4, @function
create_float3_float4:
.LFB143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	%rdx, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L419
	call	__stack_chk_fail@PLT
.L419:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	create_float3_float4, .-create_float3_float4
	.type	create_float3_float2_float, @function
create_float3_float2_float:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movaps	%xmm1, %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movss	%xmm1, -32(%rbp)
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movss	%xmm1, -28(%rbp)
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L422
	call	__stack_chk_fail@PLT
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	create_float3_float2_float, .-create_float3_float2_float
	.type	create_float3_float_float2, @function
create_float3_float_float2:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movd	%xmm0, %eax
	movq	%xmm1, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)
	movl	%edx, %eax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L425
	call	__stack_chk_fail@PLT
.L425:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	create_float3_float_float2, .-create_float3_float_float2
	.type	create_float3_float_float_float, @function
create_float3_float_float_float:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movd	%xmm0, %eax
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)
	movss	%xmm1, -28(%rbp)
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L428
	call	__stack_chk_fail@PLT
.L428:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	create_float3_float_float_float, .-create_float3_float_float_float
	.type	convert_float3_float3, @function
convert_float3_float3:
.LFB147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L431
	call	__stack_chk_fail@PLT
.L431:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	convert_float3_float3, .-convert_float3_float3
	.type	convert_float3_double3, @function
convert_float3_double3:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movsd	32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L434
	call	__stack_chk_fail@PLT
.L434:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	convert_float3_double3, .-convert_float3_double3
	.type	convert_float3_uint3, @function
convert_float3_uint3:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L436
	cvtsi2ssq	%rax, %xmm0
	jmp	.L437
.L436:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L437:
	movss	%xmm0, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L438
	cvtsi2ssq	%rax, %xmm0
	jmp	.L439
.L438:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L439:
	movss	%xmm0, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L440
	cvtsi2ssq	%rax, %xmm0
	jmp	.L441
.L440:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L441:
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L443
	call	__stack_chk_fail@PLT
.L443:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	convert_float3_uint3, .-convert_float3_uint3
	.type	convert_float3_int3, @function
convert_float3_int3:
.LFB150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-44(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-40(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L446
	call	__stack_chk_fail@PLT
.L446:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	convert_float3_int3, .-convert_float3_int3
	.type	convert_float3_bool3, @function
convert_float3_bool3:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-40(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -32(%rbp)
	movzbl	-39(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -28(%rbp)
	movzbl	-38(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L449
	call	__stack_chk_fail@PLT
.L449:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	convert_float3_bool3, .-convert_float3_bool3
	.type	add_float3_float3_float3, @function
add_float3_float3_float3:
.LFB152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rsi
	movq	%xmm2, %rdx
	movq	%xmm3, %rcx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%esi, %eax
	movl	%eax, -40(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %xmm0
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L452
	call	__stack_chk_fail@PLT
.L452:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	add_float3_float3_float3, .-add_float3_float3_float3
	.type	add_float3_float3_float, @function
add_float3_float3_float:
.LFB153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movaps	%xmm2, %xmm0
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L455
	call	__stack_chk_fail@PLT
.L455:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	add_float3_float3_float, .-add_float3_float3_float
	.type	add_float3_float_float3, @function
add_float3_float_float3:
.LFB154:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm1, %rax
	movq	%xmm2, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L458
	call	__stack_chk_fail@PLT
.L458:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	add_float3_float_float3, .-add_float3_float_float3
	.type	sub_float3_float3_float3, @function
sub_float3_float3_float3:
.LFB155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rsi
	movq	%xmm2, %rdx
	movq	%xmm3, %rcx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%esi, %eax
	movl	%eax, -40(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	movss	-64(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	movss	-60(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %xmm0
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L461
	call	__stack_chk_fail@PLT
.L461:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	sub_float3_float3_float3, .-sub_float3_float3_float3
	.type	sub_float3_float3_float, @function
sub_float3_float3_float:
.LFB156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movaps	%xmm2, %xmm0
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L464
	call	__stack_chk_fail@PLT
.L464:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	sub_float3_float3_float, .-sub_float3_float3_float
	.type	sub_float3_float_float3, @function
sub_float3_float_float3:
.LFB157:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm1, %rax
	movq	%xmm2, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	movaps	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L467
	call	__stack_chk_fail@PLT
.L467:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	sub_float3_float_float3, .-sub_float3_float_float3
	.type	mul_float3_float3_float3, @function
mul_float3_float3_float3:
.LFB158:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rsi
	movq	%xmm2, %rdx
	movq	%xmm3, %rcx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%esi, %eax
	movl	%eax, -40(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %xmm0
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L470
	call	__stack_chk_fail@PLT
.L470:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	mul_float3_float3_float3, .-mul_float3_float3_float3
	.type	mul_float3_float3_float, @function
mul_float3_float3_float:
.LFB159:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movaps	%xmm2, %xmm0
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L473
	call	__stack_chk_fail@PLT
.L473:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	mul_float3_float3_float, .-mul_float3_float3_float
	.type	mul_float3_float_float3, @function
mul_float3_float_float3:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm1, %rax
	movq	%xmm2, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L476
	call	__stack_chk_fail@PLT
.L476:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	mul_float3_float_float3, .-mul_float3_float_float3
	.type	div_float3_float3_float3, @function
div_float3_float3_float3:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rsi
	movq	%xmm2, %rdx
	movq	%xmm3, %rcx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%esi, %eax
	movl	%eax, -40(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	movss	-64(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	movss	-60(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %xmm0
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L479
	call	__stack_chk_fail@PLT
.L479:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	div_float3_float3_float3, .-div_float3_float3_float3
	.type	div_float3_float3_float, @function
div_float3_float3_float:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movaps	%xmm2, %xmm0
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L482
	call	__stack_chk_fail@PLT
.L482:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	div_float3_float3_float, .-div_float3_float3_float
	.type	div_float3_float_float3, @function
div_float3_float_float3:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%xmm1, %rax
	movq	%xmm2, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm1
	movaps	%xmm0, %xmm3
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-44(%rbp), %xmm1
	movaps	%xmm0, %xmm4
	divss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-40(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L485
	call	__stack_chk_fail@PLT
.L485:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	div_float3_float_float3, .-div_float3_float_float3
	.type	create_double3_void, @function
create_double3_void:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	create_double3_void, .-create_double3_void
	.type	create_double3_double, @function
create_double3_double:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	create_double3_double, .-create_double3_double
	.type	create_double3_double3, @function
create_double3_double3:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	create_double3_double3, .-create_double3_double3
	.type	create_double3_double4, @function
create_double3_double4:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L494
	call	__stack_chk_fail@PLT
.L494:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	create_double3_double4, .-create_double3_double4
	.type	create_double3_double2_double, @function
create_double3_double2_double:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movapd	%xmm2, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-64(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-56(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L497
	call	__stack_chk_fail@PLT
.L497:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	create_double3_double2_double, .-create_double3_double2_double
	.type	create_double3_double_double2, @function
create_double3_double_double2:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%xmm0, %rcx
	movapd	%xmm2, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	%rcx, -32(%rbp)
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L500
	call	__stack_chk_fail@PLT
.L500:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	create_double3_double_double2, .-create_double3_double_double2
	.type	create_double3_double_double_double, @function
create_double3_double_double_double:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%xmm0, %rax
	movapd	%xmm2, %xmm0
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L503
	call	__stack_chk_fail@PLT
.L503:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	create_double3_double_double_double, .-create_double3_double_double_double
	.type	convert_double3_float3, @function
convert_double3_float3:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -56(%rbp)
	movl	-48(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-56(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movss	-52(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L506
	call	__stack_chk_fail@PLT
.L506:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	convert_double3_float3, .-convert_double3_float3
	.type	convert_double3_double3, @function
convert_double3_double3:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L509
	call	__stack_chk_fail@PLT
.L509:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	convert_double3_double3, .-convert_double3_double3
	.type	convert_double3_uint3, @function
convert_double3_uint3:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rcx
	movl	%edx, %eax
	movq	%rcx, -56(%rbp)
	movl	%eax, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-56(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L511
	cvtsi2sdq	%rax, %xmm0
	jmp	.L512
.L511:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L512:
	movsd	%xmm0, -32(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L513
	cvtsi2sdq	%rax, %xmm0
	jmp	.L514
.L513:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L514:
	movsd	%xmm0, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L515
	cvtsi2sdq	%rax, %xmm0
	jmp	.L516
.L515:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L516:
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L518
	call	__stack_chk_fail@PLT
.L518:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	convert_double3_uint3, .-convert_double3_uint3
	.type	convert_double3_int3, @function
convert_double3_int3:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rcx
	movl	%edx, %eax
	movq	%rcx, -56(%rbp)
	movl	%eax, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-56(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-52(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-48(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L521
	call	__stack_chk_fail@PLT
.L521:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	convert_double3_int3, .-convert_double3_int3
	.type	convert_double3_bool3, @function
convert_double3_bool3:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movzbl	-47(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movzbl	-46(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L524
	call	__stack_chk_fail@PLT
.L524:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	convert_double3_bool3, .-convert_double3_bool3
	.type	add_double3_double3_double3, @function
add_double3_double3_double3:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movsd	40(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm1
	movsd	48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	32(%rbp), %xmm1
	movsd	56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L527
	call	__stack_chk_fail@PLT
.L527:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	add_double3_double3_double3, .-add_double3_double3_double3
	.type	add_double3_double3_double, @function
add_double3_double3_double:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L530
	call	__stack_chk_fail@PLT
.L530:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	add_double3_double3_double, .-add_double3_double3_double
	.type	add_double3_double_double3, @function
add_double3_double_double3:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L533
	call	__stack_chk_fail@PLT
.L533:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	add_double3_double_double3, .-add_double3_double_double3
	.type	sub_double3_double3_double3, @function
sub_double3_double3_double3:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L536
	call	__stack_chk_fail@PLT
.L536:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	sub_double3_double3_double3, .-sub_double3_double3_double3
	.type	sub_double3_double3_double, @function
sub_double3_double3_double:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L539
	call	__stack_chk_fail@PLT
.L539:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	sub_double3_double3_double, .-sub_double3_double3_double
	.type	sub_double3_double_double3, @function
sub_double3_double_double3:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L542
	call	__stack_chk_fail@PLT
.L542:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	sub_double3_double_double3, .-sub_double3_double_double3
	.type	mul_double3_double3_double3, @function
mul_double3_double3_double3:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movsd	40(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm1
	movsd	48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	32(%rbp), %xmm1
	movsd	56(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L545
	call	__stack_chk_fail@PLT
.L545:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	mul_double3_double3_double3, .-mul_double3_double3_double3
	.type	mul_double3_double3_double, @function
mul_double3_double3_double:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L548
	call	__stack_chk_fail@PLT
.L548:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	mul_double3_double3_double, .-mul_double3_double3_double
	.type	mul_double3_double_double3, @function
mul_double3_double_double3:
.LFB184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L551
	call	__stack_chk_fail@PLT
.L551:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	mul_double3_double_double3, .-mul_double3_double_double3
	.type	div_double3_double3_double3, @function
div_double3_double3_double3:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L554
	call	__stack_chk_fail@PLT
.L554:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	div_double3_double3_double3, .-div_double3_double3_double3
	.type	div_double3_double3_double, @function
div_double3_double3_double:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L557
	call	__stack_chk_fail@PLT
.L557:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	div_double3_double3_double, .-div_double3_double3_double
	.type	div_double3_double_double3, @function
div_double3_double_double3:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	24(%rbp), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L560
	call	__stack_chk_fail@PLT
.L560:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	div_double3_double_double3, .-div_double3_double_double3
	.type	create_int3_void, @function
create_int3_void:
.LFB188:
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
	movq	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L563
	call	__stack_chk_fail@PLT
.L563:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	create_int3_void, .-create_int3_void
	.type	create_int3_int, @function
create_int3_int:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -16(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L566
	call	__stack_chk_fail@PLT
.L566:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	create_int3_int, .-create_int3_int
	.type	create_int3_int3, @function
create_int3_int3:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L569
	call	__stack_chk_fail@PLT
.L569:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	create_int3_int3, .-create_int3_int3
	.type	create_int3_int4, @function
create_int3_int4:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -28(%rbp)
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L572
	call	__stack_chk_fail@PLT
.L572:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	create_int3_int4, .-create_int3_int4
	.type	create_int3_int2_int, @function
create_int3_int2_int:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	sarq	$32, %rax
	movl	%eax, -28(%rbp)
	movl	%edx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L575
	call	__stack_chk_fail@PLT
.L575:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	create_int3_int2_int, .-create_int3_int2_int
	.type	create_int3_int_int2, @function
create_int3_int_int2:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %edx
	movq	%rsi, %rax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, -32(%rbp)
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L578
	call	__stack_chk_fail@PLT
.L578:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	create_int3_int_int2, .-create_int3_int_int2
	.type	create_int3_int_int_int, @function
create_int3_int_int_int:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%edi, -32(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L581
	call	__stack_chk_fail@PLT
.L581:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	create_int3_int_int_int, .-create_int3_int_int_int
	.type	convert_int3_float3, @function
convert_int3_float3:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movss	-44(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movss	-40(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L584
	call	__stack_chk_fail@PLT
.L584:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	convert_int3_float3, .-convert_int3_float3
	.type	convert_int3_double3, @function
convert_int3_double3:
.LFB196:
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
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movsd	32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L587
	call	__stack_chk_fail@PLT
.L587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	convert_int3_double3, .-convert_int3_double3
	.type	convert_int3_uint3, @function
convert_int3_uint3:
.LFB197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L590
	call	__stack_chk_fail@PLT
.L590:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	convert_int3_uint3, .-convert_int3_uint3
	.type	convert_int3_int3, @function
convert_int3_int3:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L593
	call	__stack_chk_fail@PLT
.L593:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	convert_int3_int3, .-convert_int3_int3
	.type	convert_int3_bool3, @function
convert_int3_bool3:
.LFB199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-40(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movzbl	-39(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movzbl	-38(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L596
	call	__stack_chk_fail@PLT
.L596:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	convert_int3_bool3, .-convert_int3_bool3
	.type	add_int3_int3_int3, @function
add_int3_int3_int3:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L599
	call	__stack_chk_fail@PLT
.L599:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	add_int3_int3_int3, .-add_int3_int3_int3
	.type	add_int3_int3_int, @function
add_int3_int3_int:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%rdi, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L602
	call	__stack_chk_fail@PLT
.L602:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	add_int3_int3_int, .-add_int3_int3_int
	.type	add_int3_int_int3, @function
add_int3_int_int3:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L605
	call	__stack_chk_fail@PLT
.L605:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	add_int3_int_int3, .-add_int3_int_int3
	.type	sub_int3_int3_int3, @function
sub_int3_int3_int3:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-60(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edx
	movl	-56(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L608
	call	__stack_chk_fail@PLT
.L608:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	sub_int3_int3_int3, .-sub_int3_int3_int3
	.type	sub_int3_int3_int, @function
sub_int3_int3_int:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%rdi, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L611
	call	__stack_chk_fail@PLT
.L611:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	sub_int3_int3_int, .-sub_int3_int3_int
	.type	sub_int3_int_int3, @function
sub_int3_int_int3:
.LFB205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	-48(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L614
	call	__stack_chk_fail@PLT
.L614:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	sub_int3_int_int3, .-sub_int3_int_int3
	.type	mul_int3_int3_int3, @function
mul_int3_int3_int3:
.LFB206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-60(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edx
	movl	-56(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L617
	call	__stack_chk_fail@PLT
.L617:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	mul_int3_int3_int3, .-mul_int3_int3_int3
	.type	mul_int3_int3_int, @function
mul_int3_int3_int:
.LFB207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%rdi, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L620
	call	__stack_chk_fail@PLT
.L620:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	mul_int3_int3_int, .-mul_int3_int3_int
	.type	mul_int3_int_int3, @function
mul_int3_int_int3:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L623
	call	__stack_chk_fail@PLT
.L623:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	mul_int3_int_int3, .-mul_int3_int_int3
	.type	div_int3_int3_int3, @function
div_int3_int3_int3:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	-64(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	-60(%rbp), %esi
	cltd
	idivl	%esi
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	-56(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L626
	call	__stack_chk_fail@PLT
.L626:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	div_int3_int3_int3, .-div_int3_int3_int3
	.type	div_int3_int3_int, @function
div_int3_int3_int:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %eax
	movl	%edx, %ecx
	movq	%rdi, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L629
	call	__stack_chk_fail@PLT
.L629:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	div_int3_int3_int, .-div_int3_int3_int
	.type	div_int3_int_int3, @function
div_int3_int_int3:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %ecx
	movl	%edx, %eax
	movq	%rsi, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L632
	call	__stack_chk_fail@PLT
.L632:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	div_int3_int_int3, .-div_int3_int_int3
	.type	create_uint3_void, @function
create_uint3_void:
.LFB212:
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
	movq	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L635
	call	__stack_chk_fail@PLT
.L635:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	create_uint3_void, .-create_uint3_void
	.type	create_uint3_uint, @function
create_uint3_uint:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -16(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L638
	call	__stack_chk_fail@PLT
.L638:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	create_uint3_uint, .-create_uint3_uint
	.type	create_uint3_uint3, @function
create_uint3_uint3:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L641
	call	__stack_chk_fail@PLT
.L641:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	create_uint3_uint3, .-create_uint3_uint3
	.type	create_uint3_uint4, @function
create_uint3_uint4:
.LFB215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, -28(%rbp)
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L644
	call	__stack_chk_fail@PLT
.L644:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	create_uint3_uint4, .-create_uint3_uint4
	.type	create_uint3_uint2_uint, @function
create_uint3_uint2_uint:
.LFB216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	shrq	$32, %rax
	movl	%eax, -28(%rbp)
	movl	%edx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L647
	call	__stack_chk_fail@PLT
.L647:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	create_uint3_uint2_uint, .-create_uint3_uint2_uint
	.type	create_uint3_uint_uint2, @function
create_uint3_uint_uint2:
.LFB217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %edx
	movq	%rsi, %rax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edx, -32(%rbp)
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	shrq	$32, %rax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L650
	call	__stack_chk_fail@PLT
.L650:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	create_uint3_uint_uint2, .-create_uint3_uint_uint2
	.type	create_uint3_uint_uint_uint, @function
create_uint3_uint_uint_uint:
.LFB218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%edi, -32(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L653
	call	__stack_chk_fail@PLT
.L653:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	create_uint3_uint_uint_uint, .-create_uint3_uint_uint_uint
	.type	convert_uint3_float3, @function
convert_uint3_float3:
.LFB219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	-48(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -32(%rbp)
	movss	-44(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -28(%rbp)
	movss	-40(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L656
	call	__stack_chk_fail@PLT
.L656:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	convert_uint3_float3, .-convert_uint3_float3
	.type	convert_uint3_double3, @function
convert_uint3_double3:
.LFB220:
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
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -32(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -28(%rbp)
	movsd	32(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L659
	call	__stack_chk_fail@PLT
.L659:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	convert_uint3_double3, .-convert_uint3_double3
	.type	convert_uint3_uint3, @function
convert_uint3_uint3:
.LFB221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L662
	call	__stack_chk_fail@PLT
.L662:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	convert_uint3_uint3, .-convert_uint3_uint3
	.type	convert_uint3_int3, @function
convert_uint3_int3:
.LFB222:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L665
	call	__stack_chk_fail@PLT
.L665:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	convert_uint3_int3, .-convert_uint3_int3
	.type	convert_uint3_bool3, @function
convert_uint3_bool3:
.LFB223:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-40(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movzbl	-39(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movzbl	-38(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L668
	call	__stack_chk_fail@PLT
.L668:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	convert_uint3_bool3, .-convert_uint3_bool3
	.type	add_uint3_uint3_uint3, @function
add_uint3_uint3_uint3:
.LFB224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L671
	call	__stack_chk_fail@PLT
.L671:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	add_uint3_uint3_uint3, .-add_uint3_uint3_uint3
	.type	add_uint3_uint3_uint, @function
add_uint3_uint3_uint:
.LFB225:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%rdi, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L674
	call	__stack_chk_fail@PLT
.L674:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	add_uint3_uint3_uint, .-add_uint3_uint3_uint
	.type	add_uint3_uint_uint3, @function
add_uint3_uint_uint3:
.LFB226:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L677
	call	__stack_chk_fail@PLT
.L677:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	add_uint3_uint_uint3, .-add_uint3_uint_uint3
	.type	sub_uint3_uint3_uint3, @function
sub_uint3_uint3_uint3:
.LFB227:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-60(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edx
	movl	-56(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L680
	call	__stack_chk_fail@PLT
.L680:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	sub_uint3_uint3_uint3, .-sub_uint3_uint3_uint3
	.type	sub_uint3_uint3_uint, @function
sub_uint3_uint3_uint:
.LFB228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%rdi, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L683
	call	__stack_chk_fail@PLT
.L683:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	sub_uint3_uint3_uint, .-sub_uint3_uint3_uint
	.type	sub_uint3_uint_uint3, @function
sub_uint3_uint_uint3:
.LFB229:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	-48(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L686
	call	__stack_chk_fail@PLT
.L686:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	sub_uint3_uint_uint3, .-sub_uint3_uint_uint3
	.type	mul_uint3_uint3_uint3, @function
mul_uint3_uint3_uint3:
.LFB230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edx
	movl	-64(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %edx
	movl	-60(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edx
	movl	-56(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L689
	call	__stack_chk_fail@PLT
.L689:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	mul_uint3_uint3_uint3, .-mul_uint3_uint3_uint3
	.type	mul_uint3_uint3_uint, @function
mul_uint3_uint3_uint:
.LFB231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movq	%rdi, -48(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L692
	call	__stack_chk_fail@PLT
.L692:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	mul_uint3_uint3_uint, .-mul_uint3_uint3_uint
	.type	mul_uint3_uint_uint3, @function
mul_uint3_uint_uint3:
.LFB232:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-44(%rbp), %edx
	imull	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-40(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L695
	call	__stack_chk_fail@PLT
.L695:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	mul_uint3_uint_uint3, .-mul_uint3_uint_uint3
	.type	div_uint3_uint3_uint3, @function
div_uint3_uint3_uint3:
.LFB233:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	-64(%rbp), %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	-60(%rbp), %esi
	movl	$0, %edx
	divl	%esi
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	-56(%rbp), %edi
	movl	$0, %edx
	divl	%edi
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L698
	call	__stack_chk_fail@PLT
.L698:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	div_uint3_uint3_uint3, .-div_uint3_uint3_uint3
	.type	div_uint3_uint3_uint, @function
div_uint3_uint3_uint:
.LFB234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%esi, %eax
	movl	%edx, %ecx
	movq	%rdi, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L701
	call	__stack_chk_fail@PLT
.L701:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	div_uint3_uint3_uint, .-div_uint3_uint3_uint
	.type	div_uint3_uint_uint3, @function
div_uint3_uint_uint3:
.LFB235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %ecx
	movl	%edx, %eax
	movq	%rsi, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %edi
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%edi
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %esi
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %edi
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%edi
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-20(%rbp), %rax
	movl	-12(%rbp), %ecx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L704
	call	__stack_chk_fail@PLT
.L704:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	div_uint3_uint_uint3, .-div_uint3_uint_uint3
	.type	create_bool3_void, @function
create_bool3_void:
.LFB236:
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
	movw	$0, -11(%rbp)
	movb	$0, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L707
	call	__stack_chk_fail@PLT
.L707:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	create_bool3_void, .-create_bool3_void
	.type	create_bool3_bool, @function
create_bool3_bool:
.LFB237:
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
	movw	$0, -11(%rbp)
	movb	$0, -9(%rbp)
	movb	%al, -11(%rbp)
	movb	%al, -10(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L710
	call	__stack_chk_fail@PLT
.L710:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE237:
	.size	create_bool3_bool, .-create_bool3_bool
	.type	create_bool3_bool3, @function
create_bool3_bool3:
.LFB238:
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
	movzwl	-24(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-22(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L713
	call	__stack_chk_fail@PLT
.L713:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE238:
	.size	create_bool3_bool3, .-create_bool3_bool3
	.type	create_bool3_bool4, @function
create_bool3_bool4:
.LFB239:
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
	movb	%dl, -14(%rbp)
	movzbl	%ah, %edx
	movb	%dl, -13(%rbp)
	shrl	$16, %eax
	andb	$-1, %ah
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L716
	call	__stack_chk_fail@PLT
.L716:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE239:
	.size	create_bool3_bool4, .-create_bool3_bool4
	.type	create_bool3_bool2_bool, @function
create_bool3_bool2_bool:
.LFB240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movb	%cl, -14(%rbp)
	movzbl	%ah, %eax
	movb	%al, -13(%rbp)
	movb	%dl, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L719
	call	__stack_chk_fail@PLT
.L719:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE240:
	.size	create_bool3_bool2_bool, .-create_bool3_bool2_bool
	.type	create_bool3_bool_bool2, @function
create_bool3_bool_bool2:
.LFB241:
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
	movb	%dl, -14(%rbp)
	movl	%eax, %edx
	movb	%dl, -13(%rbp)
	movzbl	%ah, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L722
	call	__stack_chk_fail@PLT
.L722:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE241:
	.size	create_bool3_bool_bool2, .-create_bool3_bool_bool2
	.type	create_bool3_bool_bool_bool, @function
create_bool3_bool_bool_bool:
.LFB242:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%edx, %eax
	movl	%esi, %edx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movb	%cl, -14(%rbp)
	movb	%dl, -13(%rbp)
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L725
	call	__stack_chk_fail@PLT
.L725:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE242:
	.size	create_bool3_bool_bool_bool, .-create_bool3_bool_bool_bool
	.type	convert_bool3_float3, @function
convert_bool3_float3:
.LFB243:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
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
	cvttss2si	%xmm0, %eax
	movb	%al, -14(%rbp)
	movss	-28(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -13(%rbp)
	movss	-24(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L728
	call	__stack_chk_fail@PLT
.L728:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE243:
	.size	convert_bool3_float3, .-convert_bool3_float3
	.type	convert_bool3_double3, @function
convert_bool3_double3:
.LFB244:
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
	movsd	16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -14(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -13(%rbp)
	movsd	32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L731
	call	__stack_chk_fail@PLT
.L731:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE244:
	.size	convert_bool3_double3, .-convert_bool3_double3
	.type	convert_bool3_uint3, @function
convert_bool3_uint3:
.LFB245:
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
	movb	%al, -14(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -13(%rbp)
	movl	-24(%rbp), %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L734
	call	__stack_chk_fail@PLT
.L734:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE245:
	.size	convert_bool3_uint3, .-convert_bool3_uint3
	.type	convert_bool3_int3, @function
convert_bool3_int3:
.LFB246:
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
	movb	%al, -14(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -13(%rbp)
	movl	-24(%rbp), %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L737
	call	__stack_chk_fail@PLT
.L737:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE246:
	.size	convert_bool3_int3, .-convert_bool3_int3
	.type	convert_bool3_bool3, @function
convert_bool3_bool3:
.LFB247:
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
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %eax
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L740
	call	__stack_chk_fail@PLT
.L740:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE247:
	.size	convert_bool3_bool3, .-convert_bool3_bool3
	.type	add_bool3_bool3_bool3, @function
add_bool3_bool3_bool3:
.LFB248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %edx
	movzbl	-32(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %edx
	movzbl	-31(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %edx
	movzbl	-30(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L743
	call	__stack_chk_fail@PLT
.L743:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE248:
	.size	add_bool3_bool3_bool3, .-add_bool3_bool3_bool3
	.type	add_bool3_bool3_bool, @function
add_bool3_bool3_bool:
.LFB249:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movzbl	-24(%rbp), %edx
	addl	%eax, %edx
	movb	%dl, -14(%rbp)
	movzbl	-23(%rbp), %edx
	addl	%eax, %edx
	movb	%dl, -13(%rbp)
	movzbl	-22(%rbp), %edx
	addl	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L746
	call	__stack_chk_fail@PLT
.L746:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE249:
	.size	add_bool3_bool3_bool, .-add_bool3_bool3_bool
	.type	add_bool3_bool_bool3, @function
add_bool3_bool_bool3:
.LFB250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -24(%rbp)
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movzbl	-24(%rbp), %edx
	addl	%eax, %edx
	movb	%dl, -14(%rbp)
	movzbl	-23(%rbp), %edx
	addl	%eax, %edx
	movb	%dl, -13(%rbp)
	movzbl	-22(%rbp), %edx
	addl	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L749
	call	__stack_chk_fail@PLT
.L749:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE250:
	.size	add_bool3_bool_bool3, .-add_bool3_bool_bool3
	.type	sub_bool3_bool3_bool3, @function
sub_bool3_bool3_bool3:
.LFB251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %edx
	movzbl	-32(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %edx
	movzbl	-31(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %edx
	movzbl	-30(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L752
	call	__stack_chk_fail@PLT
.L752:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE251:
	.size	sub_bool3_bool3_bool3, .-sub_bool3_bool3_bool3
	.type	sub_bool3_bool3_bool, @function
sub_bool3_bool3_bool:
.LFB252:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movzbl	-24(%rbp), %edx
	subl	%eax, %edx
	movb	%dl, -14(%rbp)
	movzbl	-23(%rbp), %edx
	subl	%eax, %edx
	movb	%dl, -13(%rbp)
	movzbl	-22(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L755
	call	__stack_chk_fail@PLT
.L755:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE252:
	.size	sub_bool3_bool3_bool, .-sub_bool3_bool3_bool
	.type	sub_bool3_bool_bool3, @function
sub_bool3_bool_bool3:
.LFB253:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -24(%rbp)
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movzbl	-24(%rbp), %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movb	%dl, -14(%rbp)
	movzbl	-23(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movb	%dl, -13(%rbp)
	movzbl	-22(%rbp), %edx
	subl	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L758
	call	__stack_chk_fail@PLT
.L758:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE253:
	.size	sub_bool3_bool_bool3, .-sub_bool3_bool_bool3
	.type	mul_bool3_bool3_bool3, @function
mul_bool3_bool3_bool3:
.LFB254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %eax
	movzbl	-32(%rbp), %edx
	imull	%edx, %eax
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	-31(%rbp), %edx
	imull	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %eax
	movzbl	-30(%rbp), %edx
	imull	%edx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L761
	call	__stack_chk_fail@PLT
.L761:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE254:
	.size	mul_bool3_bool3_bool3, .-mul_bool3_bool3_bool3
	.type	mul_bool3_bool3_bool, @function
mul_bool3_bool3_bool:
.LFB255:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %ecx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %ecx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %ecx
	movl	%edx, %eax
	imull	%ecx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L764
	call	__stack_chk_fail@PLT
.L764:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE255:
	.size	mul_bool3_bool3_bool, .-mul_bool3_bool3_bool
	.type	mul_bool3_bool_bool3, @function
mul_bool3_bool_bool3:
.LFB256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -24(%rbp)
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %ecx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %ecx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %ecx
	movl	%edx, %eax
	imull	%ecx, %eax
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L767
	call	__stack_chk_fail@PLT
.L767:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE256:
	.size	mul_bool3_bool_bool3, .-mul_bool3_bool_bool3
	.type	div_bool3_bool3_bool3, @function
div_bool3_bool3_bool3:
.LFB257:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %eax
	movzbl	-32(%rbp), %edx
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	-31(%rbp), %edx
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %eax
	movzbl	-30(%rbp), %edx
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L770
	call	__stack_chk_fail@PLT
.L770:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE257:
	.size	div_bool3_bool3_bool3, .-div_bool3_bool3_bool3
	.type	div_bool3_bool3_bool, @function
div_bool3_bool3_bool:
.LFB258:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L773
	call	__stack_chk_fail@PLT
.L773:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE258:
	.size	div_bool3_bool3_bool, .-div_bool3_bool3_bool
	.type	div_bool3_bool_bool3, @function
div_bool3_bool_bool3:
.LFB259:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -24(%rbp)
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %ecx
	movzbl	%dl, %eax
	divb	%cl
	movb	%al, -14(%rbp)
	movzbl	-23(%rbp), %ecx
	movzbl	%dl, %eax
	divb	%cl
	movb	%al, -13(%rbp)
	movzbl	-22(%rbp), %ecx
	movzbl	%dl, %eax
	divb	%cl
	movb	%al, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -11(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	$0, %eax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-10(%rbp), %edx
	movb	%dl, %ah
	movzbl	-9(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L776
	call	__stack_chk_fail@PLT
.L776:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE259:
	.size	div_bool3_bool_bool3, .-div_bool3_bool_bool3
	.type	create_float4_void, @function
create_float4_void:
.LFB260:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L779
	call	__stack_chk_fail@PLT
.L779:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE260:
	.size	create_float4_void, .-create_float4_void
	.type	create_float4_float, @function
create_float4_float:
.LFB261:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movd	%xmm0, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movl	%eax, -48(%rbp)
	movl	%eax, -44(%rbp)
	movl	%eax, -40(%rbp)
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L782
	call	__stack_chk_fail@PLT
.L782:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE261:
	.size	create_float4_float, .-create_float4_float
	.type	create_float4_float4, @function
create_float4_float4:
.LFB262:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L785
	call	__stack_chk_fail@PLT
.L785:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE262:
	.size	create_float4_float4, .-create_float4_float4
	.type	create_float4_float3_float, @function
create_float4_float3_float:
.LFB263:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movaps	%xmm2, %xmm1
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	andl	$0, %eax
	orl	%edx, %eax
	movl	%eax, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	%xmm1, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L788
	call	__stack_chk_fail@PLT
.L788:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE263:
	.size	create_float4_float3_float, .-create_float4_float3_float
	.type	create_float4_float_float3, @function
create_float4_float_float3:
.LFB264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movd	%xmm0, %eax
	movq	%xmm1, %rdx
	movq	%xmm2, %rcx
	movq	%rdx, -64(%rbp)
	movl	-56(%rbp), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movl	%edx, -56(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movl	%eax, -48(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %xmm0
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L791
	call	__stack_chk_fail@PLT
.L791:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE264:
	.size	create_float4_float_float3, .-create_float4_float_float3
	.type	create_float4_float_float2_float_float, @function
create_float4_float_float2_float_float:
.LFB265:
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
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movl	%eax, %edx
	movl	%edx, -56(%rbp)
	movss	-56(%rbp), %xmm2
	movss	%xmm2, -48(%rbp)
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm2
	movss	%xmm2, -44(%rbp)
	movss	%xmm1, -40(%rbp)
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L794
	call	__stack_chk_fail@PLT
.L794:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE265:
	.size	create_float4_float_float2_float_float, .-create_float4_float_float2_float_float
	.type	create_float4_float_float_float2_float, @function
create_float4_float_float_float2_float:
.LFB266:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movd	%xmm0, %eax
	movq	%xmm1, %rdx
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movl	%eax, -48(%rbp)
	movl	%edx, %eax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movss	%xmm1, -40(%rbp)
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L797
	call	__stack_chk_fail@PLT
.L797:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE266:
	.size	create_float4_float_float_float2_float, .-create_float4_float_float_float2_float
	.type	create_float4_float_float_float_float2, @function
create_float4_float_float_float_float2:
.LFB267:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movd	%xmm0, %eax
	movaps	%xmm1, %xmm0
	movq	%xmm2, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movl	%eax, -48(%rbp)
	movss	%xmm0, -44(%rbp)
	movl	%edx, %eax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L800
	call	__stack_chk_fail@PLT
.L800:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE267:
	.size	create_float4_float_float_float_float2, .-create_float4_float_float_float_float2
	.type	create_float4_float_float_float_float, @function
create_float4_float_float_float_float:
.LFB268:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movd	%xmm0, %eax
	movaps	%xmm1, %xmm4
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm0
	movq	%fs:40, %rdx
	movq	%rdx, -24(%rbp)
	xorl	%edx, %edx
	movl	%eax, -48(%rbp)
	movss	%xmm4, -44(%rbp)
	movss	%xmm1, -40(%rbp)
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L803
	call	__stack_chk_fail@PLT
.L803:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE268:
	.size	create_float4_float_float_float_float, .-create_float4_float_float_float_float
	.type	convert_float4_float4, @function
convert_float4_float4:
.LFB269:
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
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L806
	call	__stack_chk_fail@PLT
.L806:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE269:
	.size	convert_float4_float4, .-convert_float4_float4
	.type	convert_float4_double4, @function
convert_float4_double4:
.LFB270:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movsd	32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movsd	40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L809
	call	__stack_chk_fail@PLT
.L809:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE270:
	.size	convert_float4_double4, .-convert_float4_double4
	.type	convert_float4_uint4, @function
convert_float4_uint4:
.LFB271:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rbx
	movq	%rbx, -24(%rbp)
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	movl	%ecx, %ecx
	testq	%rcx, %rcx
	js	.L811
	cvtsi2ssq	%rcx, %xmm0
	jmp	.L812
.L811:
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$1, %ecx
	orq	%rcx, %rsi
	cvtsi2ssq	%rsi, %xmm0
	addss	%xmm0, %xmm0
.L812:
	movss	%xmm0, -48(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, %ecx
	testq	%rcx, %rcx
	js	.L813
	cvtsi2ssq	%rcx, %xmm0
	jmp	.L814
.L813:
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$1, %ecx
	orq	%rcx, %rsi
	cvtsi2ssq	%rsi, %xmm0
	addss	%xmm0, %xmm0
.L814:
	movss	%xmm0, -44(%rbp)
	movl	%edx, %ecx
	movl	%ecx, %ecx
	testq	%rcx, %rcx
	js	.L815
	cvtsi2ssq	%rcx, %xmm0
	jmp	.L816
.L815:
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$1, %ecx
	orq	%rcx, %rsi
	cvtsi2ssq	%rsi, %xmm0
	addss	%xmm0, %xmm0
.L816:
	movss	%xmm0, -40(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L817
	cvtsi2ssq	%rax, %xmm0
	jmp	.L818
.L817:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L818:
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L820
	call	__stack_chk_fail@PLT
.L820:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE271:
	.size	convert_float4_uint4, .-convert_float4_uint4
	.type	convert_float4_int4, @function
convert_float4_int4:
.LFB272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rbx
	movq	%rbx, -24(%rbp)
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	%edx, %ecx
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L823
	call	__stack_chk_fail@PLT
.L823:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE272:
	.size	convert_float4_int4, .-convert_float4_int4
	.type	convert_float4_bool4, @function
convert_float4_bool4:
.LFB273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movl	%eax, %edx
	movzbl	%dl, %edx
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -48(%rbp)
	movzbl	%ah, %edx
	movzbl	%dl, %edx
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$-1, %dh
	movzbl	%dl, %edx
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -40(%rbp)
	shrl	$24, %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L826
	call	__stack_chk_fail@PLT
.L826:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE273:
	.size	convert_float4_bool4, .-convert_float4_bool4
	.type	add_float4_float4_float4, @function
add_float4_float4_float4:
.LFB274:
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
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%xmm2, %rax
	movq	%xmm3, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movq	%rcx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rax, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	%rcx, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rax, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	%rbx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rdx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rbx, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L829
	call	__stack_chk_fail@PLT
.L829:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE274:
	.size	add_float4_float4_float4, .-add_float4_float4_float4
	.type	add_float4_float4_float, @function
add_float4_float4_float:
.LFB275:
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
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L832
	call	__stack_chk_fail@PLT
.L832:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE275:
	.size	add_float4_float4_float, .-add_float4_float4_float
	.type	add_float4_float_float4, @function
add_float4_float_float4:
.LFB276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%xmm1, %rax
	movq	%xmm2, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L835
	call	__stack_chk_fail@PLT
.L835:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE276:
	.size	add_float4_float_float4, .-add_float4_float_float4
	.type	sub_float4_float4_float4, @function
sub_float4_float4_float4:
.LFB277:
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
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%xmm2, %rax
	movq	%xmm3, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movq	%rcx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rax, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	%rcx, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rax, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	%rbx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rdx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rbx, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L838
	call	__stack_chk_fail@PLT
.L838:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE277:
	.size	sub_float4_float4_float4, .-sub_float4_float4_float4
	.type	sub_float4_float4_float, @function
sub_float4_float4_float:
.LFB278:
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
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L841
	call	__stack_chk_fail@PLT
.L841:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE278:
	.size	sub_float4_float4_float, .-sub_float4_float4_float
	.type	sub_float4_float_float4, @function
sub_float4_float_float4:
.LFB279:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%xmm1, %rax
	movq	%xmm2, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm5
	subss	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L844
	call	__stack_chk_fail@PLT
.L844:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE279:
	.size	sub_float4_float_float4, .-sub_float4_float_float4
	.type	mul_float4_float4_float4, @function
mul_float4_float4_float4:
.LFB280:
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
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%xmm2, %rax
	movq	%xmm3, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movq	%rcx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rax, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	%rcx, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rax, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	%rbx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rdx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rbx, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L847
	call	__stack_chk_fail@PLT
.L847:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE280:
	.size	mul_float4_float4_float4, .-mul_float4_float4_float4
	.type	mul_float4_float4_float, @function
mul_float4_float4_float:
.LFB281:
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
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L850
	call	__stack_chk_fail@PLT
.L850:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE281:
	.size	mul_float4_float4_float, .-mul_float4_float4_float
	.type	mul_float4_float_float4, @function
mul_float4_float_float4:
.LFB282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%xmm1, %rax
	movq	%xmm2, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L853
	call	__stack_chk_fail@PLT
.L853:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE282:
	.size	mul_float4_float_float4, .-mul_float4_float_float4
	.type	div_float4_float4_float4, @function
div_float4_float4_float4:
.LFB283:
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
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%xmm2, %rax
	movq	%xmm3, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movq	%rcx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rax, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	%rcx, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rax, %rsi
	sarq	$32, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	%rbx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rdx, %rsi
	movl	%esi, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	%rbx, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L856
	call	__stack_chk_fail@PLT
.L856:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE283:
	.size	div_float4_float4_float4, .-div_float4_float4_float4
	.type	div_float4_float4_float, @function
div_float4_float4_float:
.LFB284:
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
	movaps	%xmm2, %xmm0
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L859
	call	__stack_chk_fail@PLT
.L859:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE284:
	.size	div_float4_float4_float, .-div_float4_float4_float
	.type	div_float4_float_float4, @function
div_float4_float_float4:
.LFB285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%xmm1, %rax
	movq	%xmm2, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -24(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm3
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm4
	divss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
	movss	%xmm1, -44(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm5
	divss	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	movss	%xmm1, -40(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -56(%rbp)
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L862
	call	__stack_chk_fail@PLT
.L862:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE285:
	.size	div_float4_float_float4, .-div_float4_float_float4
	.type	create_double4_void, @function
create_double4_void:
.LFB286:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L865
	call	__stack_chk_fail@PLT
.L865:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE286:
	.size	create_double4_void, .-create_double4_void
	.type	create_double4_double, @function
create_double4_double:
.LFB287:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L868
	call	__stack_chk_fail@PLT
.L868:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE287:
	.size	create_double4_double, .-create_double4_double
	.type	create_double4_double4, @function
create_double4_double4:
.LFB288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE288:
	.size	create_double4_double4, .-create_double4_double4
	.type	create_double4_double3_double, @function
create_double4_double3_double:
.LFB289:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L873
	call	__stack_chk_fail@PLT
.L873:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE289:
	.size	create_double4_double3_double, .-create_double4_double3_double
	.type	create_double4_double_double3, @function
create_double4_double_double3:
.LFB290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L876
	call	__stack_chk_fail@PLT
.L876:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE290:
	.size	create_double4_double_double3, .-create_double4_double_double3
	.type	create_double4_double_double2_double_double, @function
create_double4_double_double2_double_double:
.LFB291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%rcx, %rax
	movq	%xmm0, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-80(%rbp), %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-72(%rbp), %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L879
	call	__stack_chk_fail@PLT
.L879:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE291:
	.size	create_double4_double_double2_double_double, .-create_double4_double_double2_double_double
	.type	create_double4_double_double_double2_double, @function
create_double4_double_double_double2_double:
.LFB292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rcx
	movapd	%xmm2, %xmm0
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movapd	%xmm3, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	%rcx, -48(%rbp)
	movsd	-80(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-72(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L882
	call	__stack_chk_fail@PLT
.L882:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE292:
	.size	create_double4_double_double_double2_double, .-create_double4_double_double_double2_double
	.type	create_double4_double_double_double_double2, @function
create_double4_double_double_double_double2:
.LFB293:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rcx
	movapd	%xmm1, %xmm0
	movapd	%xmm3, %xmm1
	movl	$0, %eax
	movl	$0, %edx
	movq	%xmm2, %rax
	movq	%xmm1, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	%rcx, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L885
	call	__stack_chk_fail@PLT
.L885:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE293:
	.size	create_double4_double_double_double_double2, .-create_double4_double_double_double_double2
	.type	create_double4_double_double_double_double, @function
create_double4_double_double_double_double:
.LFB294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm4
	movapd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L888
	call	__stack_chk_fail@PLT
.L888:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE294:
	.size	create_double4_double_double_double_double, .-create_double4_double_double_double_double
	.type	convert_double4_float4, @function
convert_double4_float4:
.LFB295:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -60(%rbp)
	movss	-60(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -60(%rbp)
	movss	-60(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -60(%rbp)
	movss	-60(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -60(%rbp)
	movss	-60(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L891
	call	__stack_chk_fail@PLT
.L891:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE295:
	.size	convert_double4_float4, .-convert_double4_float4
	.type	convert_double4_double4, @function
convert_double4_double4:
.LFB296:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L894
	call	__stack_chk_fail@PLT
.L894:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE296:
	.size	convert_double4_double4, .-convert_double4_double4
	.type	convert_double4_uint4, @function
convert_double4_uint4:
.LFB297:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %ecx
	movl	%ecx, %ecx
	testq	%rcx, %rcx
	js	.L896
	cvtsi2sdq	%rcx, %xmm0
	jmp	.L897
.L896:
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$1, %ecx
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
.L897:
	movsd	%xmm0, -48(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, %ecx
	testq	%rcx, %rcx
	js	.L898
	cvtsi2sdq	%rcx, %xmm0
	jmp	.L899
.L898:
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$1, %ecx
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
.L899:
	movsd	%xmm0, -40(%rbp)
	movl	%edx, %ecx
	movl	%ecx, %ecx
	testq	%rcx, %rcx
	js	.L900
	cvtsi2sdq	%rcx, %xmm0
	jmp	.L901
.L900:
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$1, %ecx
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
.L901:
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L902
	cvtsi2sdq	%rax, %xmm0
	jmp	.L903
.L902:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L903:
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L905
	call	__stack_chk_fail@PLT
.L905:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE297:
	.size	convert_double4_uint4, .-convert_double4_uint4
	.type	convert_double4_int4, @function
convert_double4_int4:
.LFB298:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	%edx, %ecx
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L908
	call	__stack_chk_fail@PLT
.L908:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE298:
	.size	convert_double4_int4, .-convert_double4_int4
	.type	convert_double4_bool4, @function
convert_double4_bool4:
.LFB299:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %edx
	movzbl	%dl, %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, -48(%rbp)
	movzbl	%ah, %edx
	movzbl	%dl, %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$-1, %dh
	movzbl	%dl, %edx
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, -32(%rbp)
	shrl	$24, %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L911
	call	__stack_chk_fail@PLT
.L911:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE299:
	.size	convert_double4_bool4, .-convert_double4_bool4
	.type	add_double4_double4_double4, @function
add_double4_double4_double4:
.LFB300:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movsd	48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm1
	movsd	56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	32(%rbp), %xmm1
	movsd	64(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	40(%rbp), %xmm1
	movsd	72(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L914
	call	__stack_chk_fail@PLT
.L914:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE300:
	.size	add_double4_double4_double4, .-add_double4_double4_double4
	.type	add_double4_double4_double, @function
add_double4_double4_double:
.LFB301:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L917
	call	__stack_chk_fail@PLT
.L917:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE301:
	.size	add_double4_double4_double, .-add_double4_double4_double
	.type	add_double4_double_double4, @function
add_double4_double_double4:
.LFB302:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L920
	call	__stack_chk_fail@PLT
.L920:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE302:
	.size	add_double4_double_double4, .-add_double4_double_double4
	.type	sub_double4_double4_double4, @function
sub_double4_double4_double4:
.LFB303:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	40(%rbp), %xmm0
	movsd	72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L923
	call	__stack_chk_fail@PLT
.L923:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE303:
	.size	sub_double4_double4_double4, .-sub_double4_double4_double4
	.type	sub_double4_double4_double, @function
sub_double4_double4_double:
.LFB304:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L926
	call	__stack_chk_fail@PLT
.L926:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE304:
	.size	sub_double4_double4_double, .-sub_double4_double4_double
	.type	sub_double4_double_double4, @function
sub_double4_double_double4:
.LFB305:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	movapd	%xmm0, %xmm4
	subsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L929
	call	__stack_chk_fail@PLT
.L929:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE305:
	.size	sub_double4_double_double4, .-sub_double4_double_double4
	.type	mul_double4_double4_double4, @function
mul_double4_double4_double4:
.LFB306:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movsd	48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm1
	movsd	56(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	32(%rbp), %xmm1
	movsd	64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	40(%rbp), %xmm1
	movsd	72(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L932
	call	__stack_chk_fail@PLT
.L932:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE306:
	.size	mul_double4_double4_double4, .-mul_double4_double4_double4
	.type	mul_double4_double4_double, @function
mul_double4_double4_double:
.LFB307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L935
	call	__stack_chk_fail@PLT
.L935:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE307:
	.size	mul_double4_double4_double, .-mul_double4_double4_double
	.type	mul_double4_double_double4, @function
mul_double4_double_double4:
.LFB308:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L938
	call	__stack_chk_fail@PLT
.L938:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE308:
	.size	mul_double4_double_double4, .-mul_double4_double_double4
	.type	div_double4_double4_double4, @function
div_double4_double4_double4:
.LFB309:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm0
	movsd	48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	24(%rbp), %xmm0
	movsd	56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	32(%rbp), %xmm0
	movsd	64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	40(%rbp), %xmm0
	movsd	72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L941
	call	__stack_chk_fail@PLT
.L941:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE309:
	.size	div_double4_double4_double4, .-div_double4_double4_double4
	.type	div_double4_double4_double, @function
div_double4_double4_double:
.LFB310:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L944
	call	__stack_chk_fail@PLT
.L944:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE310:
	.size	div_double4_double4_double, .-div_double4_double4_double
	.type	div_double4_double_double4, @function
div_double4_double_double4:
.LFB311:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	16(%rbp), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	24(%rbp), %xmm1
	movapd	%xmm0, %xmm3
	divsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	32(%rbp), %xmm1
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L947
	call	__stack_chk_fail@PLT
.L947:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE311:
	.size	div_double4_double_double4, .-div_double4_double_double4
	.type	create_int4_void, @function
create_int4_void:
.LFB312:
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
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L950
	call	__stack_chk_fail@PLT
.L950:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE312:
	.size	create_int4_void, .-create_int4_void
	.type	create_int4_int, @function
create_int4_int:
.LFB313:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%eax, -32(%rbp)
	movl	%eax, -28(%rbp)
	movl	%eax, -24(%rbp)
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L953
	call	__stack_chk_fail@PLT
.L953:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE313:
	.size	create_int4_int, .-create_int4_int
	.type	create_int4_int4, @function
create_int4_int4:
.LFB314:
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
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L956
	call	__stack_chk_fail@PLT
.L956:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE314:
	.size	create_int4_int4, .-create_int4_int4
	.type	create_int4_int3_int, @function
create_int4_int3_int:
.LFB315:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rcx
	movl	%esi, %eax
	movq	%rcx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L959
	call	__stack_chk_fail@PLT
.L959:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE315:
	.size	create_int4_int3_int, .-create_int4_int3_int
	.type	create_int4_int_int3, @function
create_int4_int_int3:
.LFB316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, -32(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L962
	call	__stack_chk_fail@PLT
.L962:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE316:
	.size	create_int4_int_int3, .-create_int4_int_int3
	.type	create_int4_int_int2_int_int, @function
create_int4_int_int2_int_int:
.LFB317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movl	%esi, %ecx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	movl	%esi, -32(%rbp)
	sarq	$32, %rax
	movl	%eax, -28(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L965
	call	__stack_chk_fail@PLT
.L965:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE317:
	.size	create_int4_int_int2_int_int, .-create_int4_int_int2_int_int
	.type	create_int4_int_int_int2_int, @function
create_int4_int_int_int2_int:
.LFB318:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%ecx, -32(%rbp)
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	sarq	$32, %rax
	movl	%eax, -24(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L968
	call	__stack_chk_fail@PLT
.L968:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE318:
	.size	create_int4_int_int_int2_int, .-create_int4_int_int_int2_int
	.type	create_int4_int_int_int_int2, @function
create_int4_int_int_int_int2:
.LFB319:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%esi, %ecx
	movq	%rdx, %rax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edi, -32(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L971
	call	__stack_chk_fail@PLT
.L971:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE319:
	.size	create_int4_int_int_int_int2, .-create_int4_int_int_int_int2
	.type	create_int4_int_int_int_int, @function
create_int4_int_int_int_int:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%ecx, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%edi, -32(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -24(%rbp)
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L974
	call	__stack_chk_fail@PLT
.L974:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	create_int4_int_int_int_int, .-create_int4_int_int_int_int
	.type	convert_int4_float4, @function
convert_int4_float4:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, -28(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L977
	call	__stack_chk_fail@PLT
.L977:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	convert_int4_float4, .-convert_int4_float4
	.type	convert_int4_double4, @function
convert_int4_double4:
.LFB322:
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
	movsd	16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movsd	32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movsd	40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L980
	call	__stack_chk_fail@PLT
.L980:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	convert_int4_double4, .-convert_int4_double4
	.type	convert_int4_uint4, @function
convert_int4_uint4:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, -28(%rbp)
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L983
	call	__stack_chk_fail@PLT
.L983:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	convert_int4_uint4, .-convert_int4_uint4
	.type	convert_int4_int4, @function
convert_int4_int4:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -28(%rbp)
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L986
	call	__stack_chk_fail@PLT
.L986:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	convert_int4_int4, .-convert_int4_int4
	.type	convert_int4_bool4, @function
convert_int4_bool4:
.LFB325:
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
	movl	%edx, -32(%rbp)
	movzbl	%ah, %edx
	movzbl	%dl, %edx
	movl	%edx, -28(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$-1, %dh
	movzbl	%dl, %edx
	movl	%edx, -24(%rbp)
	shrl	$24, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L989
	call	__stack_chk_fail@PLT
.L989:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	convert_int4_bool4, .-convert_int4_bool4
	.type	add_int4_int4_int4, @function
add_int4_int4_int4:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%esi, %r8d
	movl	%eax, %ecx
	addl	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rsi, %rcx
	sarq	$32, %rcx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	sarq	$32, %rcx
	addl	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movl	%edi, %r8d
	movl	%edx, %ecx
	addl	%r8d, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdi, %rcx
	sarq	$32, %rcx
	movq	%rdx, %rax
	sarq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L992
	call	__stack_chk_fail@PLT
.L992:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	add_int4_int4_int4, .-add_int4_int4_int4
	.type	add_int4_int4_int, @function
add_int4_int4_int:
.LFB327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %edx
	addl	%eax, %edx
	movl	%edx, -48(%rbp)
	movq	%rcx, %rdx
	sarq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	%ebx, %edx
	addl	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	%rbx, %rdx
	sarq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L995
	call	__stack_chk_fail@PLT
.L995:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	add_int4_int4_int, .-add_int4_int4_int
	.type	add_int4_int_int4, @function
add_int4_int_int4:
.LFB328:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	addl	%ecx, %esi
	movl	%esi, -32(%rbp)
	movq	%rax, %rsi
	sarq	$32, %rsi
	addl	%ecx, %esi
	movl	%esi, -28(%rbp)
	movl	%edx, %esi
	addl	%ecx, %esi
	movl	%esi, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L998
	call	__stack_chk_fail@PLT
.L998:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE328:
	.size	add_int4_int_int4, .-add_int4_int_int4
	.type	sub_int4_int4_int4, @function
sub_int4_int4_int4:
.LFB329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%esi, %r8d
	movl	%eax, %ecx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rsi, %rcx
	sarq	$32, %rcx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	sarq	$32, %rcx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movl	%edi, %r8d
	movl	%edx, %ecx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdi, %rcx
	sarq	$32, %rcx
	movq	%rdx, %rax
	sarq	$32, %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1001
	call	__stack_chk_fail@PLT
.L1001:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE329:
	.size	sub_int4_int4_int4, .-sub_int4_int4_int4
	.type	sub_int4_int4_int, @function
sub_int4_int4_int:
.LFB330:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -48(%rbp)
	movq	%rcx, %rdx
	sarq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	%rbx, %rdx
	sarq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1004
	call	__stack_chk_fail@PLT
.L1004:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE330:
	.size	sub_int4_int4_int, .-sub_int4_int4_int
	.type	sub_int4_int_int4, @function
sub_int4_int_int4:
.LFB331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	movl	%esi, -32(%rbp)
	movq	%rax, %rsi
	sarq	$32, %rsi
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	movl	%esi, -28(%rbp)
	movl	%edx, %esi
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	movl	%esi, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1007
	call	__stack_chk_fail@PLT
.L1007:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE331:
	.size	sub_int4_int_int4, .-sub_int4_int_int4
	.type	mul_int4_int4_int4, @function
mul_int4_int4_int4:
.LFB332:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%esi, %r8d
	movl	%eax, %ecx
	imull	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rsi, %rcx
	sarq	$32, %rcx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	sarq	$32, %rcx
	imull	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movl	%edi, %r8d
	movl	%edx, %ecx
	imull	%r8d, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdi, %rcx
	sarq	$32, %rcx
	movq	%rdx, %rax
	sarq	$32, %rax
	imull	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1010
	call	__stack_chk_fail@PLT
.L1010:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE332:
	.size	mul_int4_int4_int4, .-mul_int4_int4_int4
	.type	mul_int4_int4_int, @function
mul_int4_int4_int:
.LFB333:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %edx
	imull	%eax, %edx
	movl	%edx, -48(%rbp)
	movq	%rcx, %rdx
	sarq	$32, %rdx
	imull	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	%ebx, %edx
	imull	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	%rbx, %rdx
	sarq	$32, %rdx
	imull	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1013
	call	__stack_chk_fail@PLT
.L1013:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	mul_int4_int4_int, .-mul_int4_int4_int
	.type	mul_int4_int_int4, @function
mul_int4_int_int4:
.LFB334:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	imull	%ecx, %esi
	movl	%esi, -32(%rbp)
	movq	%rax, %rsi
	sarq	$32, %rsi
	imull	%ecx, %esi
	movl	%esi, -28(%rbp)
	movl	%edx, %esi
	imull	%ecx, %esi
	movl	%esi, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	imull	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1016
	call	__stack_chk_fail@PLT
.L1016:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE334:
	.size	mul_int4_int_int4, .-mul_int4_int_int4
	.type	div_int4_int4_int4, @function
div_int4_int4_int4:
.LFB335:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%esi, %eax
	movl	%ecx, %r9d
	cltd
	idivl	%r9d
	movl	%eax, -48(%rbp)
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	%eax, %edx
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, %r8d
	movl	%edx, %eax
	cltd
	idivl	%r8d
	movl	%eax, -44(%rbp)
	movl	%edi, %eax
	movl	%ebx, %r10d
	cltd
	idivl	%r10d
	movl	%eax, -40(%rbp)
	movq	%rdi, %rax
	sarq	$32, %rax
	movl	%eax, %edx
	movq	%rbx, %rax
	sarq	$32, %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1019
	call	__stack_chk_fail@PLT
.L1019:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	div_int4_int4_int4, .-div_int4_int4_int4
	.type	div_int4_int4_int, @function
div_int4_int4_int:
.LFB336:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %esi
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, -48(%rbp)
	movq	%rcx, %rax
	sarq	$32, %rax
	cltd
	idivl	%esi
	movl	%eax, -44(%rbp)
	movl	%ebx, %eax
	cltd
	idivl	%esi
	movl	%eax, -40(%rbp)
	movq	%rbx, %rax
	sarq	$32, %rax
	cltd
	idivl	%esi
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1022
	call	__stack_chk_fail@PLT
.L1022:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	div_int4_int4_int, .-div_int4_int4_int
	.type	div_int4_int_int4, @function
div_int4_int_int4:
.LFB337:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %esi
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%eax, -48(%rbp)
	movq	%rcx, %rax
	sarq	$32, %rax
	movl	%eax, %esi
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%eax, -44(%rbp)
	movl	%ebx, %esi
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%eax, -40(%rbp)
	movq	%rbx, %rax
	sarq	$32, %rax
	movl	%eax, %ebx
	movl	%edi, %eax
	cltd
	idivl	%ebx
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1025
	call	__stack_chk_fail@PLT
.L1025:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	div_int4_int_int4, .-div_int4_int_int4
	.type	create_uint4_void, @function
create_uint4_void:
.LFB338:
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
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1028
	call	__stack_chk_fail@PLT
.L1028:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE338:
	.size	create_uint4_void, .-create_uint4_void
	.type	create_uint4_uint, @function
create_uint4_uint:
.LFB339:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movl	%eax, -32(%rbp)
	movl	%eax, -28(%rbp)
	movl	%eax, -24(%rbp)
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1031
	call	__stack_chk_fail@PLT
.L1031:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE339:
	.size	create_uint4_uint, .-create_uint4_uint
	.type	create_uint4_uint4, @function
create_uint4_uint4:
.LFB340:
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
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1034
	call	__stack_chk_fail@PLT
.L1034:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE340:
	.size	create_uint4_uint4, .-create_uint4_uint4
	.type	create_uint4_uint3_uint, @function
create_uint4_uint3_uint:
.LFB341:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rcx
	movl	%esi, %eax
	movq	%rcx, -48(%rbp)
	movl	%eax, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1037
	call	__stack_chk_fail@PLT
.L1037:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE341:
	.size	create_uint4_uint3_uint, .-create_uint4_uint3_uint
	.type	create_uint4_uint_uint3, @function
create_uint4_uint_uint3:
.LFB342:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%rsi, %rcx
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, -32(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1040
	call	__stack_chk_fail@PLT
.L1040:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	create_uint4_uint_uint3, .-create_uint4_uint_uint3
	.type	create_uint4_uint_uint2_uint_uint, @function
create_uint4_uint_uint2_uint_uint:
.LFB343:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movl	%esi, %ecx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	movl	%esi, -32(%rbp)
	shrq	$32, %rax
	movl	%eax, -28(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1043
	call	__stack_chk_fail@PLT
.L1043:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE343:
	.size	create_uint4_uint_uint2_uint_uint, .-create_uint4_uint_uint2_uint_uint
	.type	create_uint4_uint_uint_uint2_uint, @function
create_uint4_uint_uint_uint2_uint:
.LFB344:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%ecx, -32(%rbp)
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	shrq	$32, %rax
	movl	%eax, -24(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1046
	call	__stack_chk_fail@PLT
.L1046:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	create_uint4_uint_uint_uint2_uint, .-create_uint4_uint_uint_uint2_uint
	.type	create_uint4_uint_uint_uint_uint2, @function
create_uint4_uint_uint_uint_uint2:
.LFB345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%esi, %ecx
	movq	%rdx, %rax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%edi, -32(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	shrq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1049
	call	__stack_chk_fail@PLT
.L1049:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE345:
	.size	create_uint4_uint_uint_uint_uint2, .-create_uint4_uint_uint_uint_uint2
	.type	create_uint4_uint_uint_uint_uint, @function
create_uint4_uint_uint_uint_uint:
.LFB346:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%ecx, %eax
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%edi, -32(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -24(%rbp)
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1052
	call	__stack_chk_fail@PLT
.L1052:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE346:
	.size	create_uint4_uint_uint_uint_uint, .-create_uint4_uint_uint_uint_uint
	.type	convert_uint4_float4, @function
convert_uint4_float4:
.LFB347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%xmm0, %rax
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rcx
	movl	%ecx, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2siq	%xmm0, %rcx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2siq	%xmm0, %rcx
	movl	%ecx, -28(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2siq	%xmm0, %rcx
	movl	%ecx, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1055
	call	__stack_chk_fail@PLT
.L1055:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	convert_uint4_float4, .-convert_uint4_float4
	.type	convert_uint4_double4, @function
convert_uint4_double4:
.LFB348:
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
	movsd	16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -32(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -28(%rbp)
	movsd	32(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -24(%rbp)
	movsd	40(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1058
	call	__stack_chk_fail@PLT
.L1058:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE348:
	.size	convert_uint4_double4, .-convert_uint4_double4
	.type	convert_uint4_uint4, @function
convert_uint4_uint4:
.LFB349:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, -28(%rbp)
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1061
	call	__stack_chk_fail@PLT
.L1061:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE349:
	.size	convert_uint4_uint4, .-convert_uint4_uint4
	.type	convert_uint4_int4, @function
convert_uint4_int4:
.LFB350:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -28(%rbp)
	movl	%edx, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1064
	call	__stack_chk_fail@PLT
.L1064:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE350:
	.size	convert_uint4_int4, .-convert_uint4_int4
	.type	convert_uint4_bool4, @function
convert_uint4_bool4:
.LFB351:
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
	movl	%edx, -32(%rbp)
	movzbl	%ah, %edx
	movzbl	%dl, %edx
	movl	%edx, -28(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$-1, %dh
	movzbl	%dl, %edx
	movl	%edx, -24(%rbp)
	shrl	$24, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1067
	call	__stack_chk_fail@PLT
.L1067:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE351:
	.size	convert_uint4_bool4, .-convert_uint4_bool4
	.type	add_uint4_uint4_uint4, @function
add_uint4_uint4_uint4:
.LFB352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%esi, %r8d
	movl	%eax, %ecx
	addl	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	shrq	$32, %rcx
	addl	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movl	%edi, %r8d
	movl	%edx, %ecx
	addl	%r8d, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdi, %rcx
	shrq	$32, %rcx
	movq	%rdx, %rax
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1070
	call	__stack_chk_fail@PLT
.L1070:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE352:
	.size	add_uint4_uint4_uint4, .-add_uint4_uint4_uint4
	.type	add_uint4_uint4_uint, @function
add_uint4_uint4_uint:
.LFB353:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %edx
	addl	%eax, %edx
	movl	%edx, -48(%rbp)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	%ebx, %edx
	addl	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	%rbx, %rdx
	shrq	$32, %rdx
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1073
	call	__stack_chk_fail@PLT
.L1073:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE353:
	.size	add_uint4_uint4_uint, .-add_uint4_uint4_uint
	.type	add_uint4_uint_uint4, @function
add_uint4_uint_uint4:
.LFB354:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	addl	%ecx, %esi
	movl	%esi, -32(%rbp)
	movq	%rax, %rsi
	shrq	$32, %rsi
	addl	%ecx, %esi
	movl	%esi, -28(%rbp)
	movl	%edx, %esi
	addl	%ecx, %esi
	movl	%esi, -24(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1076
	call	__stack_chk_fail@PLT
.L1076:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE354:
	.size	add_uint4_uint_uint4, .-add_uint4_uint_uint4
	.type	sub_uint4_uint4_uint4, @function
sub_uint4_uint4_uint4:
.LFB355:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%esi, %r8d
	movl	%eax, %ecx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	shrq	$32, %rcx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movl	%edi, %r8d
	movl	%edx, %ecx
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdi, %rcx
	shrq	$32, %rcx
	movq	%rdx, %rax
	shrq	$32, %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1079
	call	__stack_chk_fail@PLT
.L1079:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE355:
	.size	sub_uint4_uint4_uint4, .-sub_uint4_uint4_uint4
	.type	sub_uint4_uint4_uint, @function
sub_uint4_uint4_uint:
.LFB356:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -48(%rbp)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	%rbx, %rdx
	shrq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1082
	call	__stack_chk_fail@PLT
.L1082:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE356:
	.size	sub_uint4_uint4_uint, .-sub_uint4_uint4_uint
	.type	sub_uint4_uint_uint4, @function
sub_uint4_uint_uint4:
.LFB357:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	movl	%esi, -32(%rbp)
	movq	%rax, %rsi
	shrq	$32, %rsi
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	movl	%esi, -28(%rbp)
	movl	%edx, %esi
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	movl	%esi, -24(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1085
	call	__stack_chk_fail@PLT
.L1085:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE357:
	.size	sub_uint4_uint_uint4, .-sub_uint4_uint_uint4
	.type	mul_uint4_uint4_uint4, @function
mul_uint4_uint4_uint4:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%fs:40, %rcx
	movq	%rcx, -8(%rbp)
	xorl	%ecx, %ecx
	movl	%esi, %r8d
	movl	%eax, %ecx
	imull	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	shrq	$32, %rcx
	imull	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movl	%edi, %r8d
	movl	%edx, %ecx
	imull	%r8d, %ecx
	movl	%ecx, -24(%rbp)
	movq	%rdi, %rcx
	shrq	$32, %rcx
	movq	%rdx, %rax
	shrq	$32, %rax
	imull	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1088
	call	__stack_chk_fail@PLT
.L1088:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	mul_uint4_uint4_uint4, .-mul_uint4_uint4_uint4
	.type	mul_uint4_uint4_uint, @function
mul_uint4_uint4_uint:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %eax
	movq	%fs:40, %rdi
	movq	%rdi, -24(%rbp)
	xorl	%edi, %edi
	movl	%ecx, %edx
	imull	%eax, %edx
	movl	%edx, -48(%rbp)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	imull	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	%ebx, %edx
	imull	%eax, %edx
	movl	%edx, -40(%rbp)
	movq	%rbx, %rdx
	shrq	$32, %rdx
	imull	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1091
	call	__stack_chk_fail@PLT
.L1091:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	mul_uint4_uint4_uint, .-mul_uint4_uint4_uint
	.type	mul_uint4_uint_uint4, @function
mul_uint4_uint_uint4:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %ecx
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	imull	%ecx, %esi
	movl	%esi, -32(%rbp)
	movq	%rax, %rsi
	shrq	$32, %rsi
	imull	%ecx, %esi
	movl	%esi, -28(%rbp)
	movl	%edx, %esi
	imull	%ecx, %esi
	movl	%esi, -24(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	imull	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1094
	call	__stack_chk_fail@PLT
.L1094:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	mul_uint4_uint_uint4, .-mul_uint4_uint_uint4
	.type	div_uint4_uint4_uint4, @function
div_uint4_uint4_uint4:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%esi, %eax
	movl	%ecx, %r9d
	movl	$0, %edx
	divl	%r9d
	movl	%eax, -48(%rbp)
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %r8d
	movl	%edx, %eax
	movl	$0, %edx
	divl	%r8d
	movl	%eax, -44(%rbp)
	movl	%edi, %eax
	movl	%ebx, %r10d
	movl	$0, %edx
	divl	%r10d
	movl	%eax, -40(%rbp)
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	%rbx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1097
	call	__stack_chk_fail@PLT
.L1097:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	div_uint4_uint4_uint4, .-div_uint4_uint4_uint4
	.type	div_uint4_uint4_uint, @function
div_uint4_uint4_uint:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movl	%edx, %esi
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -48(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -44(%rbp)
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -40(%rbp)
	movq	%rbx, %rax
	shrq	$32, %rax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1100
	call	__stack_chk_fail@PLT
.L1100:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	div_uint4_uint4_uint, .-div_uint4_uint4_uint
	.type	div_uint4_uint_uint4, @function
div_uint4_uint_uint4:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %esi
	movl	%edi, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -48(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%edi, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -44(%rbp)
	movl	%ebx, %esi
	movl	%edi, %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -40(%rbp)
	movq	%rbx, %rax
	shrq	$32, %rax
	movl	%eax, %ebx
	movl	%edi, %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1103
	call	__stack_chk_fail@PLT
.L1103:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	div_uint4_uint_uint4, .-div_uint4_uint_uint4
	.type	create_bool4_void, @function
create_bool4_void:
.LFB364:
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
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1106
	call	__stack_chk_fail@PLT
.L1106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	create_bool4_void, .-create_bool4_void
	.type	create_bool4_bool, @function
create_bool4_bool:
.LFB365:
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
	movb	%al, -12(%rbp)
	movb	%al, -11(%rbp)
	movb	%al, -10(%rbp)
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1109
	call	__stack_chk_fail@PLT
.L1109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	create_bool4_bool, .-create_bool4_bool
	.type	create_bool4_bool4, @function
create_bool4_bool4:
.LFB366:
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
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1112
	call	__stack_chk_fail@PLT
.L1112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	create_bool4_bool4, .-create_bool4_bool4
	.type	create_bool4_bool3_bool, @function
create_bool4_bool3_bool:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	-24(%rbp), %eax
	movb	%al, -12(%rbp)
	movzbl	-23(%rbp), %eax
	movb	%al, -11(%rbp)
	movzbl	-22(%rbp), %eax
	movb	%al, -10(%rbp)
	movb	%dl, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1115
	call	__stack_chk_fail@PLT
.L1115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	create_bool4_bool3_bool, .-create_bool4_bool3_bool
	.type	create_bool4_bool_bool3, @function
create_bool4_bool_bool3:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -24(%rbp)
	movq	%fs:40, %rdx
	movq	%rdx, -8(%rbp)
	xorl	%edx, %edx
	movb	%al, -12(%rbp)
	movzbl	-24(%rbp), %eax
	movb	%al, -11(%rbp)
	movzbl	-23(%rbp), %eax
	movb	%al, -10(%rbp)
	movzbl	-22(%rbp), %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1118
	call	__stack_chk_fail@PLT
.L1118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	create_bool4_bool_bool3, .-create_bool4_bool_bool3
	.type	create_bool4_bool_bool2_bool_bool, @function
create_bool4_bool_bool2_bool_bool:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %ecx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movl	%eax, %esi
	movb	%sil, -12(%rbp)
	movzbl	%ah, %eax
	movb	%al, -11(%rbp)
	movb	%cl, -10(%rbp)
	movb	%dl, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1121
	call	__stack_chk_fail@PLT
.L1121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	create_bool4_bool_bool2_bool_bool, .-create_bool4_bool_bool2_bool_bool
	.type	create_bool4_bool_bool_bool2_bool, @function
create_bool4_bool_bool_bool2_bool:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movb	%cl, -12(%rbp)
	movl	%eax, %ecx
	movb	%cl, -11(%rbp)
	movzbl	%ah, %eax
	movb	%al, -10(%rbp)
	movb	%dl, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1124
	call	__stack_chk_fail@PLT
.L1124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	create_bool4_bool_bool_bool2_bool, .-create_bool4_bool_bool_bool2_bool
	.type	create_bool4_bool_bool_bool_bool2, @function
create_bool4_bool_bool_bool_bool2:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%edx, %eax
	movl	%esi, %edx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movb	%cl, -12(%rbp)
	movb	%dl, -11(%rbp)
	movl	%eax, %edx
	movb	%dl, -10(%rbp)
	movzbl	%ah, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1127
	call	__stack_chk_fail@PLT
.L1127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	create_bool4_bool_bool_bool_bool2, .-create_bool4_bool_bool_bool_bool2
	.type	create_bool4_bool_bool_bool_bool, @function
create_bool4_bool_bool_bool_bool:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %r8d
	movl	%esi, %edi
	movl	%ecx, %eax
	movl	%r8d, %esi
	movl	%edi, %ecx
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	xorl	%edi, %edi
	movb	%sil, -12(%rbp)
	movb	%cl, -11(%rbp)
	movb	%dl, -10(%rbp)
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1130
	call	__stack_chk_fail@PLT
.L1130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	create_bool4_bool_bool_bool_bool, .-create_bool4_bool_bool_bool_bool
	.type	convert_bool4_float4, @function
convert_bool4_float4:
.LFB373:
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
	movl	%ecx, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, -12(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movl	%ecx, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, -11(%rbp)
	movq	%rdx, %rcx
	movl	%ecx, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movb	%cl, -10(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1133
	call	__stack_chk_fail@PLT
.L1133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	convert_bool4_float4, .-convert_bool4_float4
	.type	convert_bool4_double4, @function
convert_bool4_double4:
.LFB374:
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
	movsd	16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -12(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -11(%rbp)
	movsd	32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -10(%rbp)
	movsd	40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1136
	call	__stack_chk_fail@PLT
.L1136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	convert_bool4_double4, .-convert_bool4_double4
	.type	convert_bool4_uint4, @function
convert_bool4_uint4:
.LFB375:
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
	movb	%cl, -12(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, -11(%rbp)
	movl	%edx, %ecx
	movb	%cl, -10(%rbp)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1139
	call	__stack_chk_fail@PLT
.L1139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	convert_bool4_uint4, .-convert_bool4_uint4
	.type	convert_bool4_int4, @function
convert_bool4_int4:
.LFB376:
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
	movb	%cl, -12(%rbp)
	movq	%rax, %rcx
	sarq	$32, %rcx
	movb	%cl, -11(%rbp)
	movl	%edx, %ecx
	movb	%cl, -10(%rbp)
	movq	%rdx, %rax
	sarq	$32, %rax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1142
	call	__stack_chk_fail@PLT
.L1142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	convert_bool4_int4, .-convert_bool4_int4
	.type	convert_bool4_bool4, @function
convert_bool4_bool4:
.LFB377:
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
	movb	%dl, -12(%rbp)
	movzbl	%ah, %edx
	movb	%dl, -11(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	andb	$-1, %dh
	movb	%dl, -10(%rbp)
	shrl	$24, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1145
	call	__stack_chk_fail@PLT
.L1145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	convert_bool4_bool4, .-convert_bool4_bool4
	.type	add_bool4_bool4_bool4, @function
add_bool4_bool4_bool4:
.LFB378:
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
	movb	%cl, -28(%rbp)
	movzbl	%dh, %ebx
	movzbl	%ah, %ecx
	addl	%ebx, %ecx
	movb	%cl, -27(%rbp)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movl	%ecx, %esi
	andl	$-1, %esi
	movl	%eax, %ecx
	shrl	$16, %ecx
	andb	$-1, %ch
	addl	%esi, %ecx
	movb	%cl, -26(%rbp)
	shrl	$24, %edx
	shrl	$24, %eax
	addl	%edx, %eax
	movb	%al, -25(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1148
	call	__stack_chk_fail@PLT
.L1148:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	add_bool4_bool4_bool4, .-add_bool4_bool4_bool4
	.type	add_bool4_bool4_bool, @function
add_bool4_bool4_bool:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	addl	%edx, %ecx
	movb	%cl, -12(%rbp)
	movzbl	%ah, %ecx
	addl	%edx, %ecx
	movb	%cl, -11(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	andb	$-1, %ch
	addl	%edx, %ecx
	movb	%cl, -10(%rbp)
	shrl	$24, %eax
	addl	%edx, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1151
	call	__stack_chk_fail@PLT
.L1151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	add_bool4_bool4_bool, .-add_bool4_bool4_bool
	.type	add_bool4_bool_bool4, @function
add_bool4_bool_bool4:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	addl	%edx, %ecx
	movb	%cl, -12(%rbp)
	movzbl	%ah, %ecx
	addl	%edx, %ecx
	movb	%cl, -11(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	andb	$-1, %ch
	addl	%edx, %ecx
	movb	%cl, -10(%rbp)
	shrl	$24, %eax
	addl	%edx, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1154
	call	__stack_chk_fail@PLT
.L1154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	add_bool4_bool_bool4, .-add_bool4_bool_bool4
	.type	sub_bool4_bool4_bool4, @function
sub_bool4_bool4_bool4:
.LFB381:
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
	movb	%cl, -28(%rbp)
	movzbl	%dh, %ebx
	movzbl	%ah, %ecx
	subl	%ecx, %ebx
	movl	%ebx, %ecx
	movb	%cl, -27(%rbp)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movl	%ecx, %esi
	andl	$-1, %esi
	movl	%eax, %ecx
	shrl	$16, %ecx
	andb	$-1, %ch
	subl	%ecx, %esi
	movl	%esi, %ecx
	movb	%cl, -26(%rbp)
	shrl	$24, %edx
	shrl	$24, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -25(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1157
	call	__stack_chk_fail@PLT
.L1157:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	sub_bool4_bool4_bool4, .-sub_bool4_bool4_bool4
	.type	sub_bool4_bool4_bool, @function
sub_bool4_bool4_bool:
.LFB382:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movq	%fs:40, %rsi
	movq	%rsi, -8(%rbp)
	xorl	%esi, %esi
	movl	%eax, %ecx
	subl	%edx, %ecx
	movb	%cl, -12(%rbp)
	movzbl	%ah, %ecx
	subl	%edx, %ecx
	movb	%cl, -11(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	andb	$-1, %ch
	subl	%edx, %ecx
	movb	%cl, -10(%rbp)
	shrl	$24, %eax
	subl	%edx, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1160
	call	__stack_chk_fail@PLT
.L1160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	sub_bool4_bool4_bool, .-sub_bool4_bool4_bool
	.type	sub_bool4_bool_bool4, @function
sub_bool4_bool_bool4:
.LFB383:
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
	movl	%eax, %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movb	%cl, -12(%rbp)
	movzbl	%ah, %ecx
	movl	%edx, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	movb	%cl, -11(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	andb	$-1, %ch
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movb	%cl, -10(%rbp)
	shrl	$24, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1163
	call	__stack_chk_fail@PLT
.L1163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	sub_bool4_bool_bool4, .-sub_bool4_bool_bool4
	.type	mul_bool4_bool4_bool4, @function
mul_bool4_bool4_bool4:
.LFB384:
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
	movb	%al, -28(%rbp)
	movzbl	%ch, %eax
	movzbl	%dh, %ebx
	imull	%ebx, %eax
	movb	%al, -27(%rbp)
	movl	%ecx, %eax
	shrl	$16, %eax
	andb	$-1, %ah
	movl	%edx, %esi
	shrl	$16, %esi
	andl	$-1, %esi
	imull	%esi, %eax
	movb	%al, -26(%rbp)
	movl	%ecx, %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -25(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1166
	call	__stack_chk_fail@PLT
.L1166:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	mul_bool4_bool4_bool4, .-mul_bool4_bool4_bool4
	.type	mul_bool4_bool4_bool, @function
mul_bool4_bool4_bool:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %edx
	movl	%esi, %eax
	movl	%eax, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -12(%rbp)
	movzbl	%dh, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -11(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -10(%rbp)
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1169
	call	__stack_chk_fail@PLT
.L1169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	mul_bool4_bool4_bool, .-mul_bool4_bool4_bool
	.type	mul_bool4_bool_bool4, @function
mul_bool4_bool_bool4:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, %edx
	movl	%eax, %ecx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%edx, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -12(%rbp)
	movzbl	%dh, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -11(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	movb	%al, -10(%rbp)
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1172
	call	__stack_chk_fail@PLT
.L1172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	mul_bool4_bool_bool4, .-mul_bool4_bool_bool4
	.type	div_bool4_bool4_bool4, @function
div_bool4_bool4_bool4:
.LFB387:
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
	movb	%al, -28(%rbp)
	movzbl	%ch, %eax
	movzbl	%dh, %ebx
	movzbl	%al, %eax
	divb	%bl
	movb	%al, -27(%rbp)
	movl	%ecx, %eax
	shrl	$16, %eax
	andb	$-1, %ah
	movl	%edx, %esi
	shrl	$16, %esi
	andl	$-1, %esi
	movzbl	%al, %eax
	divb	%sil
	movb	%al, -26(%rbp)
	movl	%ecx, %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	%cl, %eax
	divb	%dl
	movb	%al, -25(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1175
	call	__stack_chk_fail@PLT
.L1175:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	div_bool4_bool4_bool4, .-div_bool4_bool4_bool4
	.type	div_bool4_bool4_bool, @function
div_bool4_bool4_bool:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %ecx
	movl	%esi, %eax
	movl	%eax, %edx
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -12(%rbp)
	movzbl	%ch, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -11(%rbp)
	movl	%ecx, %eax
	shrl	$16, %eax
	andb	$-1, %ah
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -10(%rbp)
	movl	%ecx, %eax
	shrl	$24, %eax
	movzbl	%al, %eax
	divb	%dl
	movb	%al, -9(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1178
	call	__stack_chk_fail@PLT
.L1178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	div_bool4_bool4_bool, .-div_bool4_bool4_bool
	.type	div_bool4_bool_bool4, @function
div_bool4_bool_bool4:
.LFB389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movl	%esi, %edx
	movl	%eax, %ecx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%edx, %esi
	movzbl	%cl, %eax
	divb	%sil
	movb	%al, -28(%rbp)
	movzbl	%dh, %ebx
	movzbl	%cl, %eax
	divb	%bl
	movb	%al, -27(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	andl	$-1, %esi
	movzbl	%cl, %eax
	divb	%sil
	movb	%al, -26(%rbp)
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	%cl, %eax
	divb	%dl
	movb	%al, -25(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1181
	call	__stack_chk_fail@PLT
.L1181:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	div_bool4_bool_bool4, .-div_bool4_bool_bool4
	.section	.rodata
.LC2:
	.string	"vec2(%f, %f)"
.LC3:
	.string	"dvec2(%lf, %lf)"
.LC4:
	.string	"ivec2(%d, %d)"
.LC5:
	.string	"uvec2(%u, %u)"
.LC6:
	.string	"bvec2(%d, %d)"
.LC7:
	.string	"vec3(%f, %f, %f)"
.LC8:
	.string	"dvec3(%lf, %lf, %lf)"
.LC9:
	.string	"ivec3(%d, %d, %d)"
.LC10:
	.string	"uvec3(%u, %u, %u)"
.LC11:
	.string	"bvec3(%d, %d, %d)"
.LC12:
	.string	"vec4(%f, %f, %f, %f)"
.LC13:
	.string	"dvec4(%lf, %lf, %lf, %lf)"
.LC14:
	.string	"ivec4(%d, %d, %d, %d)"
.LC15:
	.string	"uvec4(%u, %u, %u, %u)"
.LC16:
	.string	"bvec4(%d, %d, %d, %d)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm1
	movss	.LC1(%rip), %xmm0
	call	create_float2_float_float
	movq	%xmm0, %rax
	movq	%rax, -152(%rbp)
	movss	.LC0(%rip), %xmm0
	call	convert_float_float
	call	create_float2_float
	movq	%xmm0, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, -184(%rbp)
	movq	-184(%rbp), %xmm1
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %xmm0
	call	add_float2_float2_float2
	movq	%xmm0, %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, -184(%rbp)
	movq	-184(%rbp), %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1184
	call	__stack_chk_fail@PLT
.L1184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1073741824
	.align 4
.LC1:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

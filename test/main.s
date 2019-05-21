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
	.globl	create_float2_double2
	.type	create_float2_double2, @function
create_float2_double2:
.LFB3:
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
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	create_float2_double2, .-create_float2_double2
	.globl	create_float2_int2
	.type	create_float2_int2, @function
create_float2_int2:
.LFB4:
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
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	create_float2_int2, .-create_float2_int2
	.globl	create_float2_uint2
	.type	create_float2_uint2, @function
create_float2_uint2:
.LFB5:
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
	js	.L17
	cvtsi2ssq	%rax, %xmm0
	jmp	.L18
.L17:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L18:
	movss	%xmm0, -16(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L19
	cvtsi2ssq	%rax, %xmm0
	jmp	.L20
.L19:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L20:
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
.LFE5:
	.size	create_float2_uint2, .-create_float2_uint2
	.globl	create_float2_bool2
	.type	create_float2_bool2, @function
create_float2_bool2:
.LFB6:
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
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	create_float2_bool2, .-create_float2_bool2
	.globl	create_float2_float3
	.type	create_float2_float3, @function
create_float2_float3:
.LFB7:
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
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	create_float2_float3, .-create_float2_float3
	.globl	create_float2_double3
	.type	create_float2_double3, @function
create_float2_double3:
.LFB8:
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
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movsd	24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	create_float2_double3, .-create_float2_double3
	.globl	create_float2_int3
	.type	create_float2_int3, @function
create_float2_int3:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-32(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	-28(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	create_float2_int3, .-create_float2_int3
	.globl	create_float2_uint3
	.type	create_float2_uint3, @function
create_float2_uint3:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rdx
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)
	movl	%eax, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-32(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L36
	cvtsi2ssq	%rax, %xmm0
	jmp	.L37
.L36:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L37:
	movss	%xmm0, -16(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L38
	cvtsi2ssq	%rax, %xmm0
	jmp	.L39
.L38:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L39:
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	create_float2_uint3, .-create_float2_uint3
	.globl	create_float2_bool3
	.type	create_float2_bool3, @function
create_float2_bool3:
.LFB11:
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
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -16(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	create_float2_bool3, .-create_float2_bool3
	.globl	create_float2_float4
	.type	create_float2_float4, @function
create_float2_float4:
.LFB12:
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
	je	.L47
	call	__stack_chk_fail@PLT
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	create_float2_float4, .-create_float2_float4
	.globl	create_float2_double4
	.type	create_float2_double4, @function
create_float2_double4:
.LFB13:
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
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movsd	24(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	create_float2_double4, .-create_float2_double4
	.globl	create_float2_int4
	.type	create_float2_int4, @function
create_float2_int4:
.LFB14:
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
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, -16(%rbp)
	sarq	$32, %rax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	create_float2_int4, .-create_float2_int4
	.globl	create_float2_uint4
	.type	create_float2_uint4, @function
create_float2_uint4:
.LFB15:
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
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L55
	cvtsi2ssq	%rax, %xmm0
	jmp	.L56
.L55:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L56:
	movss	%xmm0, -32(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L57
	cvtsi2ssq	%rax, %xmm0
	jmp	.L58
.L57:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L58:
	movss	%xmm0, -28(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	create_float2_uint4, .-create_float2_uint4
	.globl	create_float2_bool4
	.type	create_float2_bool4, @function
create_float2_bool4:
.LFB16:
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
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	create_float2_bool4, .-create_float2_bool4
	.globl	create_float2_float_float
	.type	create_float2_float_float, @function
create_float2_float_float:
.LFB17:
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
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	create_float2_float_float, .-create_float2_float_float
	.globl	create_double2_void
	.type	create_double2_void, @function
create_double2_void:
.LFB18:
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
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	create_double2_void, .-create_double2_void
	.globl	create_double2_double
	.type	create_double2_double, @function
create_double2_double:
.LFB19:
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
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	create_double2_double, .-create_double2_double
	.globl	create_double2_float2
	.type	create_double2_float2, @function
create_double2_float2:
.LFB20:
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
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	create_double2_float2, .-create_double2_float2
	.globl	create_double2_double2
	.type	create_double2_double2, @function
create_double2_double2:
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
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	create_double2_double2, .-create_double2_double2
	.globl	create_double2_int2
	.type	create_double2_int2, @function
create_double2_int2:
.LFB22:
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
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	create_double2_int2, .-create_double2_int2
	.globl	create_double2_uint2
	.type	create_double2_uint2, @function
create_double2_uint2:
.LFB23:
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
	js	.L83
	cvtsi2sdq	%rax, %xmm0
	jmp	.L84
.L83:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L84:
	movsd	%xmm0, -32(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L85
	cvtsi2sdq	%rax, %xmm0
	jmp	.L86
.L85:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L86:
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
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	create_double2_uint2, .-create_double2_uint2
	.globl	create_double2_bool2
	.type	create_double2_bool2, @function
create_double2_bool2:
.LFB24:
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
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	create_double2_bool2, .-create_double2_bool2
	.globl	create_double2_float3
	.type	create_double2_float3, @function
create_double2_float3:
.LFB25:
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
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movdqa	-64(%rbp), %xmm0
	movq	%rdx, -64(%rbp)
	movsd	-64(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	create_double2_float3, .-create_double2_float3
	.globl	create_double2_double3
	.type	create_double2_double3, @function
create_double2_double3:
.LFB26:
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
	je	.L97
	call	__stack_chk_fail@PLT
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	create_double2_double3, .-create_double2_double3
	.globl	create_double2_int3
	.type	create_double2_int3, @function
create_double2_int3:
.LFB27:
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
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-44(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movdqa	-64(%rbp), %xmm0
	movq	%rdx, -64(%rbp)
	movsd	-64(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L100
	call	__stack_chk_fail@PLT
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	create_double2_int3, .-create_double2_int3
	.globl	create_double2_uint3
	.type	create_double2_uint3, @function
create_double2_uint3:
.LFB28:
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
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L102
	cvtsi2sdq	%rax, %xmm0
	jmp	.L103
.L102:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L103:
	movsd	%xmm0, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L104
	cvtsi2sdq	%rax, %xmm0
	jmp	.L105
.L104:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L105:
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movdqa	-64(%rbp), %xmm0
	movq	%rdx, -64(%rbp)
	movsd	-64(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	create_double2_uint3, .-create_double2_uint3
	.globl	create_double2_bool3
	.type	create_double2_bool3, @function
create_double2_bool3:
.LFB29:
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
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movzbl	-39(%rbp), %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movdqa	-64(%rbp), %xmm0
	movq	%rdx, -64(%rbp)
	movsd	-64(%rbp), %xmm1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	create_double2_bool3, .-create_double2_bool3
	.globl	create_double2_float4
	.type	create_double2_float4, @function
create_double2_float4:
.LFB30:
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
	movl	%ecx, -48(%rbp)
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
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	create_double2_float4, .-create_double2_float4
	.globl	create_double2_double4
	.type	create_double2_double4, @function
create_double2_double4:
.LFB31:
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
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	create_double2_double4, .-create_double2_double4
	.globl	create_double2_int4
	.type	create_double2_int4, @function
create_double2_int4:
.LFB32:
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
	cvtsi2sd	%ecx, %xmm0
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
	je	.L119
	call	__stack_chk_fail@PLT
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	create_double2_int4, .-create_double2_int4
	.globl	create_double2_uint4
	.type	create_double2_uint4, @function
create_double2_uint4:
.LFB33:
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
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%ecx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L121
	cvtsi2sdq	%rax, %xmm0
	jmp	.L122
.L121:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L122:
	movsd	%xmm0, -48(%rbp)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L123
	cvtsi2sdq	%rax, %xmm0
	jmp	.L124
.L123:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L124:
	movsd	%xmm0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movdqa	-64(%rbp), %xmm0
	movq	%rdx, -64(%rbp)
	movsd	-64(%rbp), %xmm1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	create_double2_uint4, .-create_double2_uint4
	.globl	create_double2_bool4
	.type	create_double2_bool4, @function
create_double2_bool4:
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
	je	.L129
	call	__stack_chk_fail@PLT
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	create_double2_bool4, .-create_double2_bool4
	.globl	create_double2_double_double
	.type	create_double2_double_double, @function
create_double2_double_double:
.LFB35:
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
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	create_double2_double_double, .-create_double2_double_double
	.globl	create_int2_void
	.type	create_int2_void, @function
create_int2_void:
.LFB36:
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
	je	.L135
	call	__stack_chk_fail@PLT
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	create_int2_void, .-create_int2_void
	.globl	create_int2_int
	.type	create_int2_int, @function
create_int2_int:
.LFB37:
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
	je	.L138
	call	__stack_chk_fail@PLT
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	create_int2_int, .-create_int2_int
	.globl	create_int2_float2
	.type	create_int2_float2, @function
create_int2_float2:
.LFB38:
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
.LFE38:
	.size	create_int2_float2, .-create_int2_float2
	.globl	create_int2_double2
	.type	create_int2_double2, @function
create_int2_double2:
.LFB39:
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
.LFE39:
	.size	create_int2_double2, .-create_int2_double2
	.globl	create_int2_int2
	.type	create_int2_int2, @function
create_int2_int2:
.LFB40:
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
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	create_int2_int2, .-create_int2_int2
	.globl	create_int2_uint2
	.type	create_int2_uint2, @function
create_int2_uint2:
.LFB41:
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
	je	.L150
	call	__stack_chk_fail@PLT
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	create_int2_uint2, .-create_int2_uint2
	.globl	create_int2_bool2
	.type	create_int2_bool2, @function
create_int2_bool2:
.LFB42:
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
	je	.L153
	call	__stack_chk_fail@PLT
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	create_int2_bool2, .-create_int2_bool2
	.globl	create_int2_float3
	.type	create_int2_float3, @function
create_int2_float3:
.LFB43:
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
	movl	%eax, -16(%rbp)
	movss	-28(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
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
.LFE43:
	.size	create_int2_float3, .-create_int2_float3
	.globl	create_int2_double3
	.type	create_int2_double3, @function
create_int2_double3:
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
	movsd	16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L159
	call	__stack_chk_fail@PLT
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	create_int2_double3, .-create_int2_double3
	.globl	create_int2_int3
	.type	create_int2_int3, @function
create_int2_int3:
.LFB45:
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
	je	.L162
	call	__stack_chk_fail@PLT
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	create_int2_int3, .-create_int2_int3
	.globl	create_int2_uint3
	.type	create_int2_uint3, @function
create_int2_uint3:
.LFB46:
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
	je	.L165
	call	__stack_chk_fail@PLT
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	create_int2_uint3, .-create_int2_uint3
	.globl	create_int2_bool3
	.type	create_int2_bool3, @function
create_int2_bool3:
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
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L168
	call	__stack_chk_fail@PLT
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	create_int2_bool3, .-create_int2_bool3
	.globl	create_int2_float4
	.type	create_int2_float4, @function
create_int2_float4:
.LFB48:
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
	movl	%ecx, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	create_int2_float4, .-create_int2_float4
	.globl	create_int2_double4
	.type	create_int2_double4, @function
create_int2_double4:
.LFB49:
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
	movl	%eax, -16(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L174
	call	__stack_chk_fail@PLT
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	create_int2_double4, .-create_int2_double4
	.globl	create_int2_int4
	.type	create_int2_int4, @function
create_int2_int4:
.LFB50:
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
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	create_int2_int4, .-create_int2_int4
	.globl	create_int2_uint4
	.type	create_int2_uint4, @function
create_int2_uint4:
.LFB51:
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
	je	.L180
	call	__stack_chk_fail@PLT
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	create_int2_uint4, .-create_int2_uint4
	.globl	create_int2_bool4
	.type	create_int2_bool4, @function
create_int2_bool4:
.LFB52:
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
	je	.L183
	call	__stack_chk_fail@PLT
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	create_int2_bool4, .-create_int2_bool4
	.globl	create_int2_int_int
	.type	create_int2_int_int, @function
create_int2_int_int:
.LFB53:
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
	je	.L186
	call	__stack_chk_fail@PLT
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	create_int2_int_int, .-create_int2_int_int
	.globl	create_uint2_void
	.type	create_uint2_void, @function
create_uint2_void:
.LFB54:
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
	je	.L189
	call	__stack_chk_fail@PLT
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	create_uint2_void, .-create_uint2_void
	.globl	create_uint2_uint
	.type	create_uint2_uint, @function
create_uint2_uint:
.LFB55:
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
	je	.L192
	call	__stack_chk_fail@PLT
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	create_uint2_uint, .-create_uint2_uint
	.globl	create_uint2_float2
	.type	create_uint2_float2, @function
create_uint2_float2:
.LFB56:
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
	je	.L195
	call	__stack_chk_fail@PLT
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	create_uint2_float2, .-create_uint2_float2
	.globl	create_uint2_double2
	.type	create_uint2_double2, @function
create_uint2_double2:
.LFB57:
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
	je	.L198
	call	__stack_chk_fail@PLT
.L198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	create_uint2_double2, .-create_uint2_double2
	.globl	create_uint2_int2
	.type	create_uint2_int2, @function
create_uint2_int2:
.LFB58:
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
	je	.L201
	call	__stack_chk_fail@PLT
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	create_uint2_int2, .-create_uint2_int2
	.globl	create_uint2_uint2
	.type	create_uint2_uint2, @function
create_uint2_uint2:
.LFB59:
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
	je	.L204
	call	__stack_chk_fail@PLT
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	create_uint2_uint2, .-create_uint2_uint2
	.globl	create_uint2_bool2
	.type	create_uint2_bool2, @function
create_uint2_bool2:
.LFB60:
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
	je	.L207
	call	__stack_chk_fail@PLT
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	create_uint2_bool2, .-create_uint2_bool2
	.globl	create_uint2_float3
	.type	create_uint2_float3, @function
create_uint2_float3:
.LFB61:
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
	cvttss2siq	%xmm0, %rax
	movl	%eax, -16(%rbp)
	movss	-28(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L210
	call	__stack_chk_fail@PLT
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	create_uint2_float3, .-create_uint2_float3
	.globl	create_uint2_double3
	.type	create_uint2_double3, @function
create_uint2_double3:
.LFB62:
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
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -16(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L213
	call	__stack_chk_fail@PLT
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	create_uint2_double3, .-create_uint2_double3
	.globl	create_uint2_int3
	.type	create_uint2_int3, @function
create_uint2_int3:
.LFB63:
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
	je	.L216
	call	__stack_chk_fail@PLT
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	create_uint2_int3, .-create_uint2_int3
	.globl	create_uint2_uint3
	.type	create_uint2_uint3, @function
create_uint2_uint3:
.LFB64:
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
	je	.L219
	call	__stack_chk_fail@PLT
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	create_uint2_uint3, .-create_uint2_uint3
	.globl	create_uint2_bool3
	.type	create_uint2_bool3, @function
create_uint2_bool3:
.LFB65:
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
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movzbl	-23(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L222
	call	__stack_chk_fail@PLT
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	create_uint2_bool3, .-create_uint2_bool3
	.globl	create_uint2_float4
	.type	create_uint2_float4, @function
create_uint2_float4:
.LFB66:
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
	cvttss2siq	%xmm0, %rcx
	movl	%ecx, -16(%rbp)
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L225
	call	__stack_chk_fail@PLT
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	create_uint2_float4, .-create_uint2_float4
	.globl	create_uint2_double4
	.type	create_uint2_double4, @function
create_uint2_double4:
.LFB67:
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
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -16(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L228
	call	__stack_chk_fail@PLT
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	create_uint2_double4, .-create_uint2_double4
	.globl	create_uint2_int4
	.type	create_uint2_int4, @function
create_uint2_int4:
.LFB68:
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
	je	.L231
	call	__stack_chk_fail@PLT
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	create_uint2_int4, .-create_uint2_int4
	.globl	create_uint2_uint4
	.type	create_uint2_uint4, @function
create_uint2_uint4:
.LFB69:
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
	je	.L234
	call	__stack_chk_fail@PLT
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	create_uint2_uint4, .-create_uint2_uint4
	.globl	create_uint2_bool4
	.type	create_uint2_bool4, @function
create_uint2_bool4:
.LFB70:
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
	je	.L237
	call	__stack_chk_fail@PLT
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	create_uint2_bool4, .-create_uint2_bool4
	.globl	create_uint2_uint_uint
	.type	create_uint2_uint_uint, @function
create_uint2_uint_uint:
.LFB71:
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
	je	.L240
	call	__stack_chk_fail@PLT
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	create_uint2_uint_uint, .-create_uint2_uint_uint
	.globl	create_bool2_void
	.type	create_bool2_void, @function
create_bool2_void:
.LFB72:
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
	je	.L243
	call	__stack_chk_fail@PLT
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	create_bool2_void, .-create_bool2_void
	.globl	create_bool2_bool
	.type	create_bool2_bool, @function
create_bool2_bool:
.LFB73:
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
	je	.L246
	call	__stack_chk_fail@PLT
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	create_bool2_bool, .-create_bool2_bool
	.globl	create_bool2_float2
	.type	create_bool2_float2, @function
create_bool2_float2:
.LFB74:
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
	je	.L249
	call	__stack_chk_fail@PLT
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	create_bool2_float2, .-create_bool2_float2
	.globl	create_bool2_double2
	.type	create_bool2_double2, @function
create_bool2_double2:
.LFB75:
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
	je	.L252
	call	__stack_chk_fail@PLT
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	create_bool2_double2, .-create_bool2_double2
	.globl	create_bool2_int2
	.type	create_bool2_int2, @function
create_bool2_int2:
.LFB76:
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
	je	.L255
	call	__stack_chk_fail@PLT
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	create_bool2_int2, .-create_bool2_int2
	.globl	create_bool2_uint2
	.type	create_bool2_uint2, @function
create_bool2_uint2:
.LFB77:
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
	je	.L258
	call	__stack_chk_fail@PLT
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	create_bool2_uint2, .-create_bool2_uint2
	.globl	create_bool2_bool2
	.type	create_bool2_bool2, @function
create_bool2_bool2:
.LFB78:
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
	je	.L261
	call	__stack_chk_fail@PLT
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	create_bool2_bool2, .-create_bool2_bool2
	.globl	create_bool2_float3
	.type	create_bool2_float3, @function
create_bool2_float3:
.LFB79:
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
	movb	%al, -10(%rbp)
	movss	-28(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L264
	call	__stack_chk_fail@PLT
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	create_bool2_float3, .-create_bool2_float3
	.globl	create_bool2_double3
	.type	create_bool2_double3, @function
create_bool2_double3:
.LFB80:
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
	movb	%al, -10(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L267
	call	__stack_chk_fail@PLT
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	create_bool2_double3, .-create_bool2_double3
	.globl	create_bool2_int3
	.type	create_bool2_int3, @function
create_bool2_int3:
.LFB81:
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
	movb	%al, -10(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L270
	call	__stack_chk_fail@PLT
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	create_bool2_int3, .-create_bool2_int3
	.globl	create_bool2_uint3
	.type	create_bool2_uint3, @function
create_bool2_uint3:
.LFB82:
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
	movb	%al, -10(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L273
	call	__stack_chk_fail@PLT
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	create_bool2_uint3, .-create_bool2_uint3
	.globl	create_bool2_bool3
	.type	create_bool2_bool3, @function
create_bool2_bool3:
.LFB83:
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
	je	.L276
	call	__stack_chk_fail@PLT
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	create_bool2_bool3, .-create_bool2_bool3
	.globl	create_bool2_float4
	.type	create_bool2_float4, @function
create_bool2_float4:
.LFB84:
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
	movb	%cl, -10(%rbp)
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	create_bool2_float4, .-create_bool2_float4
	.globl	create_bool2_double4
	.type	create_bool2_double4, @function
create_bool2_double4:
.LFB85:
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
	movb	%al, -10(%rbp)
	movsd	24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L282
	call	__stack_chk_fail@PLT
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	create_bool2_double4, .-create_bool2_double4
	.globl	create_bool2_int4
	.type	create_bool2_int4, @function
create_bool2_int4:
.LFB86:
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
	movb	%cl, -10(%rbp)
	sarq	$32, %rax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L285
	call	__stack_chk_fail@PLT
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	create_bool2_int4, .-create_bool2_int4
	.globl	create_bool2_uint4
	.type	create_bool2_uint4, @function
create_bool2_uint4:
.LFB87:
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
	movb	%cl, -10(%rbp)
	shrq	$32, %rax
	movb	%al, -9(%rbp)
	movzwl	-10(%rbp), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L288
	call	__stack_chk_fail@PLT
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	create_bool2_uint4, .-create_bool2_uint4
	.globl	create_bool2_bool4
	.type	create_bool2_bool4, @function
create_bool2_bool4:
.LFB88:
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
	je	.L291
	call	__stack_chk_fail@PLT
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	create_bool2_bool4, .-create_bool2_bool4
	.globl	create_bool2_bool_bool
	.type	create_bool2_bool_bool, @function
create_bool2_bool_bool:
.LFB89:
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
	je	.L294
	call	__stack_chk_fail@PLT
.L294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	create_bool2_bool_bool, .-create_bool2_bool_bool
	.globl	main
	.type	main, @function
main:
.LFB90:
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
	call	create_double2_double
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movss	-48(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, %edi
	call	create_int2_int
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	call	create_int2_double2
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L297
	call	__stack_chk_fail@PLT
.L297:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
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

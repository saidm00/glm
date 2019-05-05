	.file	"main.c"
	.text
	.globl	_glm_add_double2
	.def	_glm_add_double2;	.scl	2;	.type	32;	.endef
_glm_add_double2:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	faddp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-16(%ebp)
	fldl	-24(%ebp)
	fldl	-40(%ebp)
	faddp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-8(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-4(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_glm_sub_double2
	.def	_glm_sub_double2;	.scl	2;	.type	32;	.endef
_glm_sub_double2:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	fsubrp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-16(%ebp)
	fldl	-24(%ebp)
	fldl	-40(%ebp)
	fsubrp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-8(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-4(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.globl	_glm_mul_double2
	.def	_glm_mul_double2;	.scl	2;	.type	32;	.endef
_glm_mul_double2:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	fmulp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-16(%ebp)
	fldl	-24(%ebp)
	fldl	-40(%ebp)
	fmulp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-8(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-4(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_glm_div_double2
	.def	_glm_div_double2;	.scl	2;	.type	32;	.endef
_glm_div_double2:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	fldl	-32(%ebp)
	fldl	-48(%ebp)
	fdivrp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-16(%ebp)
	fldl	-24(%ebp)
	fldl	-40(%ebp)
	fdivrp	%st, %st(1)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	-8(%ebp)
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-4(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_glm_sqrt_double2
	.def	_glm_sqrt_double2;	.scl	2;	.type	32;	.endef
_glm_sqrt_double2:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fstpl	-24(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fstpl	-16(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_glm_rsqrt_double2
	.def	_glm_rsqrt_double2;	.scl	2;	.type	32;	.endef
_glm_rsqrt_double2:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	fldl	-40(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fld1
	fdivp	%st, %st(1)
	fstpl	-48(%ebp)
	fldl	-48(%ebp)
	fstpl	-24(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fld1
	fdivp	%st, %st(1)
	fstpl	-48(%ebp)
	fldl	-48(%ebp)
	fstpl	-16(%ebp)
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_glm_add_int2
	.def	_glm_add_int2;	.scl	2;	.type	32;	.endef
_glm_add_int2:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_glm_sub_int2
	.def	_glm_sub_int2;	.scl	2;	.type	32;	.endef
_glm_sub_int2:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_glm_mul_int2
	.def	_glm_mul_int2;	.scl	2;	.type	32;	.endef
_glm_mul_int2:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.globl	_glm_div_int2
	.def	_glm_div_int2;	.scl	2;	.type	32;	.endef
_glm_div_int2:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	20(%ebp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_glm_sqrt_int2
	.def	_glm_sqrt_int2;	.scl	2;	.type	32;	.endef
_glm_sqrt_int2:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	fildl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fisttpl	-28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	fildl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fisttpl	-28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_glm_rsqrt_int2
	.def	_glm_rsqrt_int2;	.scl	2;	.type	32;	.endef
_glm_rsqrt_int2:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	fildl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fld1
	fdivp	%st, %st(1)
	fisttpl	-28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	fildl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fld1
	fdivp	%st, %st(1)
	fisttpl	-28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.globl	_glm_add_uint2
	.def	_glm_add_uint2;	.scl	2;	.type	32;	.endef
_glm_add_uint2:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.globl	_glm_sub_uint2
	.def	_glm_sub_uint2;	.scl	2;	.type	32;	.endef
_glm_sub_uint2:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.globl	_glm_mul_uint2
	.def	_glm_mul_uint2;	.scl	2;	.type	32;	.endef
_glm_mul_uint2:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.globl	_glm_div_uint2
	.def	_glm_div_uint2;	.scl	2;	.type	32;	.endef
_glm_div_uint2:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_glm_sqrt_uint2
	.def	_glm_sqrt_uint2;	.scl	2;	.type	32;	.endef
_glm_sqrt_uint2:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	fildq	-48(%ebp)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fisttpq	-40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	fildq	-48(%ebp)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fisttpq	-40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_glm_rsqrt_uint2
	.def	_glm_rsqrt_uint2;	.scl	2;	.type	32;	.endef
_glm_rsqrt_uint2:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	fildq	-48(%ebp)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fld1
	fdivp	%st, %st(1)
	fisttpq	-40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	fildq	-48(%ebp)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	_sqrt
	fld1
	fdivp	%st, %st(1)
	fisttpq	-40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_glm_add_float2
	.def	_glm_add_float2;	.scl	2;	.type	32;	.endef
_glm_add_float2:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	flds	8(%ebp)
	flds	16(%ebp)
	faddp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-8(%ebp)
	flds	12(%ebp)
	flds	20(%ebp)
	faddp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_glm_sub_float2
	.def	_glm_sub_float2;	.scl	2;	.type	32;	.endef
_glm_sub_float2:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	flds	8(%ebp)
	flds	16(%ebp)
	fsubrp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-8(%ebp)
	flds	12(%ebp)
	flds	20(%ebp)
	fsubrp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.globl	_glm_mul_float2
	.def	_glm_mul_float2;	.scl	2;	.type	32;	.endef
_glm_mul_float2:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	flds	8(%ebp)
	flds	16(%ebp)
	fmulp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-8(%ebp)
	flds	12(%ebp)
	flds	20(%ebp)
	fmulp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.globl	_glm_div_float2
	.def	_glm_div_float2;	.scl	2;	.type	32;	.endef
_glm_div_float2:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	flds	8(%ebp)
	flds	16(%ebp)
	fdivrp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-8(%ebp)
	flds	12(%ebp)
	flds	20(%ebp)
	fdivrp	%st, %st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.globl	_glm_sqrt_float2
	.def	_glm_sqrt_float2;	.scl	2;	.type	32;	.endef
_glm_sqrt_float2:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	flds	8(%ebp)
	fstps	(%esp)
	call	_sqrtf
	fstps	-16(%ebp)
	flds	12(%ebp)
	fstps	(%esp)
	call	_sqrtf
	fstps	-12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.globl	_glm_rsqrt_float2
	.def	_glm_rsqrt_float2;	.scl	2;	.type	32;	.endef
_glm_rsqrt_float2:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	flds	8(%ebp)
	fstps	(%esp)
	call	_sqrtf
	fld1
	fdivp	%st, %st(1)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	-16(%ebp)
	flds	12(%ebp)
	fstps	(%esp)
	call	_sqrtf
	fld1
	fdivp	%st, %st(1)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	-12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	_glm_dot_double2
	.def	_glm_dot_double2;	.scl	2;	.type	32;	.endef
_glm_dot_double2:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$120, %esp
	movl	8(%ebp), %eax
	movl	%eax, 88(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 92(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 96(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 100(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 72(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 76(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 80(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 84(%esp)
	leal	56(%esp), %eax
	movl	72(%esp), %edx
	movl	%edx, 20(%esp)
	movl	76(%esp), %edx
	movl	%edx, 24(%esp)
	movl	80(%esp), %edx
	movl	%edx, 28(%esp)
	movl	84(%esp), %edx
	movl	%edx, 32(%esp)
	movl	88(%esp), %edx
	movl	%edx, 4(%esp)
	movl	92(%esp), %edx
	movl	%edx, 8(%esp)
	movl	96(%esp), %edx
	movl	%edx, 12(%esp)
	movl	100(%esp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, (%esp)
	call	_glm_mul_double2
	movl	56(%esp), %eax
	movl	%eax, 104(%esp)
	movl	60(%esp), %eax
	movl	%eax, 108(%esp)
	movl	64(%esp), %eax
	movl	%eax, 112(%esp)
	movl	68(%esp), %eax
	movl	%eax, 116(%esp)
	fldl	104(%esp)
	fldl	112(%esp)
	faddp	%st, %st(1)
	fstpl	48(%esp)
	fldl	48(%esp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE49:
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_sqrt;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef

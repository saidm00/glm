	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "bvec2(%d, %d)\12\0"
LC2:
	.ascii "vec2(%f, %f)\12\0"
LC4:
	.ascii "dvec2(%lf, %lf)\12\0"
LC5:
	.ascii "ivec2(%d, %d)\12\0"
LC9:
	.ascii "vec3(%f, %f, %f)\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB64:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	flds	LC1
	movl	$LC2, (%esp)
	fstl	12(%esp)
	fstpl	4(%esp)
	call	_printf
	flds	LC3
	movl	$LC4, (%esp)
	fstpl	12(%esp)
	flds	LC1
	fstpl	4(%esp)
	call	_printf
	movl	$12, 8(%esp)
	movl	$33, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$15, 8(%esp)
	movl	$30, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$1103626240, 60(%esp)
	flds	60(%esp)
	movl	$1036831949, 56(%esp)
	movl	$1084227584, 52(%esp)
	fstpl	20(%esp)
	flds	56(%esp)
	movl	$LC9, (%esp)
	fstpl	12(%esp)
	flds	52(%esp)
	fstpl	4(%esp)
	call	_printf
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE64:
	.section .rdata,"dr"
	.align 4
LC1:
	.long	-1043857408
	.align 4
LC3:
	.long	1070386381
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef

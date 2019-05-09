	.file	"main.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movss	.LC0(%rip), %xmm1
	movss	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	float2_2@PLT
	movq	%xmm0, %rbx
	movsd	.LC2(%rip), %xmm0
	call	double2_1@PLT
	movl	%ebx, 8(%rsp)
	cvttss2si	8(%rsp), %edi
	call	int2_1@PLT
	movq	%rbx, 8(%rsp)
	movq	8(%rsp), %xmm0
	call	length_float2@PLT
	movq	24(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L5
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1117126656
	.align 4
.LC1:
	.long	1107296256
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1077477376
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

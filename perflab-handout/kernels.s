	.file	"kernels.c"
	.text
.Ltext0:
	.p2align 2,,3
	.globl	rotate
	.type	rotate, @function
rotate:
.LFB41:
	.file 1 "kernels.c"
	.loc 1 66 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LVL1:
	.loc 1 68 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	.L1
	movl	12(%ebp), %edi
	movl	8(%ebp), %ebx
	addl	%ebx, %ebx
	addl	8(%ebp), %ebx
	addl	%ebx, %ebx
	movl	%ebx, %eax
	negl	%eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	decl	%eax
	imull	8(%ebp), %eax
	leal	(%eax,%eax), %edx
	addl	%edx, %eax
	addl	%eax, %eax
	addl	16(%ebp), %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
.LVL2:
	.p2align 2,,3
.L6:
	movl	%edi, %edx
	xorl	%eax, %eax
	movl	%esi, -16(%ebp)
.LVL3:
	.p2align 2,,3
.L4:
.LBB40:
	.loc 1 72 0 discriminator 2
	movl	(%edx), %esi
	movl	%esi, (%ecx,%eax)
	movw	4(%edx), %si
	movw	%si, 4(%ecx,%eax)
	addl	%ebx, %edx
	addl	$6, %eax
	.loc 1 71 0 discriminator 2
	cmpl	%ebx, %eax
	jne	.L4
	movl	-16(%ebp), %esi
.LBE40:
	.loc 1 68 0
	incl	%esi
.LVL4:
	addl	$6, %edi
	addl	-20(%ebp), %ecx
	cmpl	8(%ebp), %esi
	jne	.L6
.LVL5:
.L1:
	.loc 1 75 0
	addl	$8, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	rotate, .-rotate
	.p2align 2,,3
	.globl	naive_rotate
	.type	naive_rotate, @function
naive_rotate:
.LFB40:
	.loc 1 52 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edi
	movl	12(%ebp), %esi
.LVL7:
	.loc 1 55 0
	testl	%edi, %edi
	jle	.L9
	leal	-1(%edi), %eax
	movl	%eax, %edx
	movl	%eax, -44(%ebp)
	leal	(%edi,%edi), %eax
	addl	%edi, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	%eax, -48(%ebp)
	movl	%edx, %eax
	imull	%edi, %eax
	leal	(%eax,%eax), %edx
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -40(%ebp)
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
.LVL8:
	.p2align 2,,3
.L11:
	movl	-44(%ebp), %edx
	.loc 1 52 0 discriminator 1
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	movl	%edx, -16(%ebp)
	jmp	.L15
.LVL9:
	.p2align 2,,3
.L21:
.LBB49:
.LBB50:
.LBB51:
	.loc 1 41 0
	movl	-20(%ebp), %ebx
.L13:
.LBE51:
.LBE50:
.LBE49:
	.loc 1 57 0
	movl	(%esi,%ebx), %edx
	movl	%edx, (%ecx)
	movw	4(%esi,%ebx), %bx
	movw	%bx, 4(%ecx)
	.loc 1 56 0
	incl	%eax
.LVL10:
	decl	-16(%ebp)
	addl	$6, -20(%ebp)
	movl	-28(%ebp), %edx
	addl	%edx, -24(%ebp)
	cmpl	%edi, %eax
	je	.L20
.LVL11:
.L15:
.LBB54:
.LBB55:
	.loc 1 41 0 discriminator 2
	movl	-16(%ebp), %edx
	testl	%edx, %edx
	js	.L17
	.loc 1 41 0 is_stmt 0
	cmpl	-16(%ebp), %edi
	jle	.L17
.LVL12:
	movl	-24(%ebp), %ecx
.LVL13:
.L12:
.LBE55:
.LBE54:
	.loc 1 57 0 is_stmt 1
	addl	16(%ebp), %ecx
.LVL14:
.LBB57:
.LBB53:
.LBB52:
	.loc 1 41 0
	cmpl	%eax, %edi
	jg	.L21
	xorl	%ebx, %ebx
	jmp	.L13
.LVL15:
	.p2align 2,,3
.L17:
.LBE52:
.LBE53:
.LBE57:
.LBB58:
.LBB56:
	xorl	%ecx, %ecx
	jmp	.L12
.LVL16:
	.p2align 2,,3
.L20:
.LBE56:
.LBE58:
	.loc 1 55 0
	incl	-36(%ebp)
.LVL17:
	movl	-48(%ebp), %eax
.LVL18:
	addl	%eax, -32(%ebp)
	addl	$6, -40(%ebp)
	cmpl	%edi, -36(%ebp)
	jne	.L11
.LVL19:
.L9:
	.loc 1 58 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	naive_rotate, .-naive_rotate
	.p2align 2,,3
	.globl	smooth
	.type	smooth, @function
smooth:
.LFB51:
	.loc 1 212 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$72, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LVL21:
	.loc 1 216 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	.L22
	movl	8(%ebp), %eax
	decl	%eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	addl	%eax, %eax
	addl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -84(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	$0, -76(%ebp)
.LVL22:
.L24:
	incl	-76(%ebp)
.LVL23:
	movl	-76(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -64(%ebp)
	js	.L43
.L35:
	movl	-76(%ebp), %eax
	movl	%eax, -68(%ebp)
	cmpl	-60(%ebp), %eax
	jle	.L36
	movl	-60(%ebp), %eax
	movl	%eax, -68(%ebp)
.L36:
	movl	-64(%ebp), %eax
	imull	8(%ebp), %eax
	movl	%eax, -72(%ebp)
	.loc 1 212 0 discriminator 1
	movl	-80(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	-68(%ebp), %eax
	incl	%eax
	movl	%eax, -44(%ebp)
.LVL24:
.L37:
.LBB79:
.LBB80:
.LBB81:
.LBB82:
	.loc 1 112 0 discriminator 2
	movl	-52(%ebp), %eax
	decl	%eax
.LVL25:
	movl	%eax, -36(%ebp)
	js	.L44
.L25:
.LBE82:
.LBE81:
	.loc 1 177 0 discriminator 2
	incl	-52(%ebp)
.LVL26:
.LBB84:
.LBB85:
	.loc 1 111 0 discriminator 2
	movl	-52(%ebp), %eax
.LVL27:
	movl	%eax, -32(%ebp)
	cmpl	-60(%ebp), %eax
	jle	.L26
	movl	-60(%ebp), %eax
	movl	%eax, -32(%ebp)
.L26:
.LVL28:
.LBE85:
.LBE84:
	.loc 1 179 0 discriminator 2
	movl	-68(%ebp), %edi
	movl	-64(%ebp), %eax
	cmpl	%edi, %eax
	jg	.L38
	.loc 1 179 0 is_stmt 0
	movl	-72(%ebp), %edi
	movl	%edi, -28(%ebp)
	movl	%eax, -16(%ebp)
.LBB86:
.LBB87:
	.loc 1 120 0 is_stmt 1
	movl	$0, -40(%ebp)
	.loc 1 119 0
	movl	$0, -20(%ebp)
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	-32(%ebp), %ebx
	incl	%ebx
	movl	%ebx, -24(%ebp)
	subl	-36(%ebp), %ebx
	movl	%ebx, -48(%ebp)
.LVL29:
	.p2align 2,,3
.L28:
.LBE87:
.LBE86:
	.loc 1 180 0
	movl	-32(%ebp), %ebx
	movl	-36(%ebp), %ecx
	cmpl	%ebx, %ecx
	jg	.L32
	movl	-28(%ebp), %edx
	addl	%ecx, %edx
	leal	(%edx,%edx), %ebx
	addl	%edx, %ebx
	addl	%ebx, %ebx
	jmp	.L33
.LVL30:
	.p2align 2,,3
.L46:
.LBB89:
.LBB90:
.LBB91:
.LBB92:
	.loc 1 41 0
	cmpl	%ecx, 8(%ebp)
	jle	.L39
	movl	%ebx, %edx
.LVL31:
.L29:
.LBE92:
.LBE91:
.LBE90:
.LBE89:
	.loc 1 181 0
	addl	12(%ebp), %edx
.LVL32:
.LBB94:
.LBB95:
	.loc 1 130 0
	movzwl	(%edx), %esi
.LVL33:
	addl	%esi, %eax
.LVL34:
	.loc 1 131 0
	movzwl	2(%edx), %esi
	addl	%esi, %edi
.LVL35:
	.loc 1 132 0
	movzwl	4(%edx), %edx
.LVL36:
	addl	%edx, -20(%ebp)
.LVL37:
.LBE95:
.LBE94:
	.loc 1 180 0
	incl	%ecx
.LVL38:
	addl	$6, %ebx
	cmpl	-24(%ebp), %ecx
	je	.L45
.LVL39:
.L33:
.LBB96:
.LBB93:
	.loc 1 41 0
	movl	-16(%ebp), %esi
	cmpl	%esi, 8(%ebp)
	jg	.L46
.L39:
	xorl	%edx, %edx
	jmp	.L29
.LVL40:
	.p2align 2,,3
.L45:
	movl	-48(%ebp), %ebx
	addl	%ebx, -40(%ebp)
.LVL41:
.L32:
.LBE93:
.LBE96:
	.loc 1 179 0
	incl	-16(%ebp)
.LVL42:
	movl	8(%ebp), %ebx
	addl	%ebx, -28(%ebp)
	movl	-44(%ebp), %ebx
	cmpl	%ebx, -16(%ebp)
	jne	.L28
.LVL43:
.L27:
.LBB97:
.LBB98:
	.loc 1 142 0
	movl	-40(%ebp), %ecx
	cltd
	idivl	%ecx
.LVL44:
	movl	-56(%ebp), %ebx
	movw	%ax, (%ebx)
	.loc 1 143 0
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movw	%ax, 2(%ebx)
	.loc 1 144 0
	movl	-20(%ebp), %eax
	cltd
	idivl	%ecx
	movw	%ax, 4(%ebx)
.LVL45:
	addl	$6, -56(%ebp)
.LBE98:
.LBE97:
.LBE80:
.LBE79:
	.loc 1 217 0
	movl	-52(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L37
.LVL46:
	movl	-84(%ebp), %eax
	addl	%eax, -80(%ebp)
	.loc 1 216 0
	movl	-76(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L24
.LVL47:
.L22:
	.loc 1 222 0
	addl	$72, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL48:
.L44:
	.cfi_restore_state
.LBB102:
.LBB101:
.LBB99:
.LBB83:
	.loc 1 112 0 discriminator 2
	movl	$0, -36(%ebp)
	jmp	.L25
.LVL49:
.L38:
.LBE83:
.LBE99:
.LBB100:
.LBB88:
	.loc 1 119 0
	movl	$0, -20(%ebp)
	xorl	%edi, %edi
	.loc 1 120 0
	movl	$0, -40(%ebp)
	.loc 1 119 0
	xorl	%eax, %eax
.LVL50:
	jmp	.L27
.LVL51:
.L43:
	movl	$0, -64(%ebp)
	jmp	.L35
.LBE88:
.LBE100:
.LBE101:
.LBE102:
	.cfi_endproc
.LFE51:
	.size	smooth, .-smooth
	.p2align 2,,3
	.globl	naive_smooth
	.type	naive_smooth, @function
naive_smooth:
.LFB50:
	.loc 1 198 0
	.cfi_startproc
.LVL52:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LVL53:
	.loc 1 201 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jle	.L47
	movl	8(%ebp), %eax
	decl	%eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	addl	%eax, %eax
	addl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
.LVL54:
.L49:
	incl	-80(%ebp)
.LVL55:
	movl	-80(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -56(%ebp)
	js	.L69
.L62:
	movl	-80(%ebp), %eax
	movl	%eax, -72(%ebp)
	cmpl	-64(%ebp), %eax
	jle	.L63
	movl	-64(%ebp), %eax
	movl	%eax, -72(%ebp)
.L63:
	movl	-56(%ebp), %eax
	imull	8(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 198 0 discriminator 1
	movl	-84(%ebp), %eax
	movl	%eax, -68(%ebp)
	xorl	%eax, %eax
	movl	-72(%ebp), %edi
	incl	%edi
	movl	%edi, -44(%ebp)
.LVL56:
.L64:
.LBB127:
.LBB128:
.LBB129:
	.loc 1 41 0
	cmpl	%eax, 8(%ebp)
	jle	.L65
	movl	-68(%ebp), %edx
.LBE129:
.LBE128:
.LBE127:
	.loc 1 203 0
	addl	16(%ebp), %edx
	movl	%edx, -60(%ebp)
.LVL57:
.LBB132:
.LBB133:
	.loc 1 158 0
	movl	-72(%ebp), %edi
	cmpl	%edi, -56(%ebp)
	jg	.L70
.LVL58:
.L51:
	leal	1(%eax), %edi
	movl	%edi, -52(%ebp)
	decl	%eax
.LVL59:
	movl	%eax, -36(%ebp)
	js	.L71
.L53:
	movl	-52(%ebp), %eax
.LVL60:
	movl	%eax, -32(%ebp)
	cmpl	-64(%ebp), %eax
	jle	.L54
	movl	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
.L54:
	movl	-76(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBB134:
.LBB135:
	.loc 1 119 0
	movl	$0, -20(%ebp)
	xorl	%edi, %edi
.LVL61:
	.loc 1 120 0
	movl	$0, -40(%ebp)
	.loc 1 119 0
	xorl	%eax, %eax
	movl	-32(%ebp), %ebx
	incl	%ebx
	movl	%ebx, -24(%ebp)
	subl	-36(%ebp), %ebx
	movl	%ebx, -48(%ebp)
.LVL62:
	.p2align 2,,3
.L60:
.LBE135:
.LBE134:
	.loc 1 159 0
	movl	-32(%ebp), %ebx
	movl	-36(%ebp), %ecx
	cmpl	%ebx, %ecx
	jg	.L55
	movl	-28(%ebp), %edx
	addl	%ecx, %edx
	leal	(%edx,%edx), %ebx
	addl	%edx, %ebx
	addl	%ebx, %ebx
	jmp	.L59
.LVL63:
	.p2align 2,,3
.L73:
.LBB137:
.LBB138:
.LBB139:
.LBB140:
	.loc 1 41 0
	cmpl	%ecx, 8(%ebp)
	jle	.L66
	movl	%ebx, %edx
.LVL64:
.L56:
.LBE140:
.LBE139:
.LBE138:
.LBE137:
	.loc 1 160 0
	addl	12(%ebp), %edx
.LVL65:
.LBB142:
.LBB143:
	.loc 1 130 0
	movzwl	(%edx), %esi
.LVL66:
	addl	%esi, %eax
.LVL67:
	.loc 1 131 0
	movzwl	2(%edx), %esi
	addl	%esi, %edi
.LVL68:
	.loc 1 132 0
	movzwl	4(%edx), %edx
.LVL69:
	addl	%edx, -20(%ebp)
.LVL70:
.LBE143:
.LBE142:
	.loc 1 159 0
	incl	%ecx
.LVL71:
	addl	$6, %ebx
	cmpl	-24(%ebp), %ecx
	je	.L72
.LVL72:
.L59:
.LBB144:
.LBB141:
	.loc 1 41 0
	movl	-16(%ebp), %esi
	cmpl	%esi, 8(%ebp)
	jg	.L73
.L66:
	xorl	%edx, %edx
	jmp	.L56
.LVL73:
	.p2align 2,,3
.L72:
	movl	-48(%ebp), %ebx
	addl	%ebx, -40(%ebp)
.LVL74:
.L55:
.LBE141:
.LBE144:
	.loc 1 158 0
	incl	-16(%ebp)
.LVL75:
	movl	8(%ebp), %ebx
	addl	%ebx, -28(%ebp)
	movl	-44(%ebp), %ebx
	cmpl	%ebx, -16(%ebp)
	jne	.L60
.LVL76:
.L52:
.LBB145:
.LBB146:
	.loc 1 142 0
	movl	-40(%ebp), %ecx
	cltd
	idivl	%ecx
.LVL77:
	movl	-60(%ebp), %ebx
	movw	%ax, (%ebx)
	.loc 1 143 0
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movw	%ax, 2(%ebx)
	.loc 1 144 0
	movl	-20(%ebp), %eax
	cltd
	idivl	%ecx
	movw	%ax, 4(%ebx)
.LVL78:
	movl	-52(%ebp), %eax
	addl	$6, -68(%ebp)
.LBE146:
.LBE145:
.LBE133:
.LBE132:
	.loc 1 202 0
	cmpl	%eax, 8(%ebp)
	jg	.L64
.LVL79:
	movl	-88(%ebp), %eax
	addl	%eax, -84(%ebp)
	.loc 1 201 0
	movl	-80(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L49
.LVL80:
.L47:
	.loc 1 204 0
	addl	$76, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL81:
.L65:
	.cfi_restore_state
.LBB149:
.LBB131:
.LBB130:
	.loc 1 41 0
	xorl	%edx, %edx
.LBE130:
.LBE131:
.LBE149:
	.loc 1 203 0
	addl	16(%ebp), %edx
	movl	%edx, -60(%ebp)
.LVL82:
.LBB150:
.LBB148:
	.loc 1 158 0
	movl	-72(%ebp), %edi
	cmpl	%edi, -56(%ebp)
	jle	.L51
.LVL83:
.L70:
	incl	%eax
.LVL84:
	movl	%eax, -52(%ebp)
.LBB147:
.LBB136:
	.loc 1 119 0
	movl	$0, -20(%ebp)
	xorl	%edi, %edi
	.loc 1 120 0
	movl	$0, -40(%ebp)
	.loc 1 119 0
	xorl	%eax, %eax
.LVL85:
	jmp	.L52
.LVL86:
.L71:
	movl	$0, -36(%ebp)
	jmp	.L53
.LVL87:
.L69:
	movl	$0, -56(%ebp)
	jmp	.L62
.LBE136:
.LBE147:
.LBE148:
.LBE150:
	.cfi_endproc
.LFE50:
	.size	naive_smooth, .-naive_smooth
	.p2align 2,,3
	.globl	ridx
	.type	ridx, @function
ridx:
.LFB39:
	.loc 1 40 0
	.cfi_startproc
.LVL88:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	.loc 1 41 0
	testl	%eax, %eax
	js	.L78
	.loc 1 41 0 is_stmt 0 discriminator 1
	cmpl	16(%ebp), %eax
	jge	.L78
.LVL89:
.LBB153:
.LBB154:
	.loc 1 41 0
	movl	12(%ebp), %edx
	testl	%edx, %edx
	js	.L78
	movl	12(%ebp), %edx
	cmpl	%edx, 16(%ebp)
	jle	.L78
	.loc 1 44 0 is_stmt 1
	imull	16(%ebp), %eax
	addl	%edx, %eax
.LBE154:
.LBE153:
	.loc 1 45 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL90:
	.p2align 2,,3
.L78:
	.cfi_restore_state
	.loc 1 42 0
	xorl	%eax, %eax
.LVL91:
	.loc 1 45 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	ridx, .-ridx
	.p2align 2,,3
	.globl	register_rotate_functions
	.type	register_rotate_functions, @function
register_rotate_functions:
.LFB42:
	.loc 1 86 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 87 0
	movl	$naive_rotate_descr, 4(%esp)
	movl	$naive_rotate, (%esp)
	call	add_rotate_function
.LVL92:
	.loc 1 88 0
	movl	$rotate_descr, 4(%esp)
	movl	$rotate, (%esp)
	call	add_rotate_function
.LVL93:
	.loc 1 90 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	register_rotate_functions, .-register_rotate_functions
	.p2align 2,,3
	.globl	register_smooth_functions
	.type	register_smooth_functions, @function
register_smooth_functions:
.LFB52:
	.loc 1 233 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 234 0
	movl	$smooth_descr, 4(%esp)
	movl	$smooth, (%esp)
	call	add_smooth_function
.LVL94:
	.loc 1 235 0
	movl	$naive_smooth_descr, 4(%esp)
	movl	$naive_smooth, (%esp)
	call	add_smooth_function
.LVL95:
	.loc 1 237 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE52:
	.size	register_smooth_functions, .-register_smooth_functions
	.globl	smooth_descr
	.data
	.align 32
	.type	smooth_descr, @object
	.size	smooth_descr, 32
smooth_descr:
	.string	"smooth: Current working version"
	.globl	naive_smooth_descr
	.align 32
	.type	naive_smooth_descr, @object
	.size	naive_smooth_descr, 44
naive_smooth_descr:
	.string	"naive_smooth: Naive baseline implementation"
	.globl	rotate_descr
	.align 32
	.type	rotate_descr, @object
	.size	rotate_descr, 32
rotate_descr:
	.string	"rotate: Current working version"
	.globl	naive_rotate_descr
	.align 32
	.type	naive_rotate_descr, @object
	.size	naive_rotate_descr, 44
naive_rotate_descr:
	.string	"naive_rotate: Naive baseline implementation"
	.globl	team
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"hseaman-tbarton"
.LC1:
	.string	"Heather Seaman"
.LC2:
	.string	"hseaman@hmc.edu"
.LC3:
	.string	"Tessa Barton"
.LC4:
	.string	"tcb22012@pomona.edu"
	.data
	.align 4
	.type	team, @object
	.size	team, 20
team:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-linux-gnu/4.8.5/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "defs.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbdc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF83
	.byte	0x1
	.long	.LASF84
	.long	.LASF85
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x37
	.long	0x61
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x83
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x84
	.long	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x7
	.long	.LASF44
	.byte	0x94
	.byte	0x4
	.byte	0xf5
	.long	0x22d
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xf6
	.long	0x5a
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfb
	.long	0xa0
	.byte	0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfc
	.long	0xa0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xfd
	.long	0xa0
	.byte	0xc
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0xfe
	.long	0xa0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0xff
	.long	0xa0
	.byte	0x14
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x100
	.long	0xa0
	.byte	0x18
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x101
	.long	0xa0
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x102
	.long	0xa0
	.byte	0x20
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x104
	.long	0xa0
	.byte	0x24
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x105
	.long	0xa0
	.byte	0x28
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x106
	.long	0xa0
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x108
	.long	0x265
	.byte	0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10a
	.long	0x26b
	.byte	0x34
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x10c
	.long	0x5a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x110
	.long	0x5a
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x112
	.long	0x7a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x116
	.long	0x3e
	.byte	0x44
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x117
	.long	0x4c
	.byte	0x46
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x118
	.long	0x271
	.byte	0x47
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x11c
	.long	0x281
	.byte	0x48
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x125
	.long	0x8c
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x12e
	.long	0x9e
	.byte	0x54
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x12f
	.long	0x9e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x130
	.long	0x9e
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x131
	.long	0x9e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x132
	.long	0x25
	.byte	0x64
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x134
	.long	0x5a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4
	.value	0x136
	.long	0x287
	.byte	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF45
	.byte	0xc
	.byte	0x4
	.byte	0xa0
	.long	0x265
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa1
	.long	0x265
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa2
	.long	0x26b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF48
	.byte	0x4
	.byte	0xa6
	.long	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x234
	.uleb128 0x6
	.byte	0x4
	.long	0xad
	.uleb128 0xb
	.long	0xa6
	.long	0x281
	.uleb128 0xc
	.long	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x22d
	.uleb128 0xb
	.long	0xa6
	.long	0x297
	.uleb128 0xc
	.long	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xb
	.long	0xa6
	.long	0x2a7
	.uleb128 0xc
	.long	0x97
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x14
	.byte	0x5
	.byte	0xd
	.long	0x2ec
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xe
	.long	0xa0
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0xf
	.long	0xa0
	.byte	0x4
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0xf
	.long	0xa0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x10
	.long	0xa0
	.byte	0xc
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0x10
	.long	0xa0
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x11
	.long	0x2a7
	.uleb128 0xd
	.byte	0x6
	.byte	0x5
	.byte	0x15
	.long	0x324
	.uleb128 0xe
	.string	"red"
	.byte	0x5
	.byte	0x16
	.long	0x3e
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0x17
	.long	0x3e
	.byte	0x2
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0x18
	.long	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x5
	.byte	0x19
	.long	0x2f7
	.uleb128 0x2
	.long	.LASF58
	.byte	0x5
	.byte	0x1b
	.long	0x33a
	.uleb128 0x6
	.byte	0x4
	.long	0x340
	.uleb128 0xf
	.long	0x355
	.uleb128 0x10
	.long	0x5a
	.uleb128 0x10
	.long	0x355
	.uleb128 0x10
	.long	0x355
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x324
	.uleb128 0xd
	.byte	0x10
	.byte	0x1
	.byte	0x67
	.long	0x394
	.uleb128 0xe
	.string	"red"
	.byte	0x1
	.byte	0x68
	.long	0x5a
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1
	.byte	0x69
	.long	0x5a
	.byte	0x4
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1
	.byte	0x6a
	.long	0x5a
	.byte	0x8
	.uleb128 0xe
	.string	"num"
	.byte	0x1
	.byte	0x6b
	.long	0x5a
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x1
	.byte	0x6c
	.long	0x35b
	.uleb128 0x11
	.long	.LASF87
	.byte	0x1
	.byte	0x27
	.long	0x5a
	.byte	0x1
	.long	0x3cb
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x5a
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x27
	.long	0x5a
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x27
	.long	0x5a
	.byte	0
	.uleb128 0x13
	.long	.LASF60
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x3e3
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.byte	0x75
	.long	0x3e3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x394
	.uleb128 0x14
	.string	"max"
	.byte	0x1
	.byte	0x70
	.long	0x5a
	.byte	0x1
	.long	0x40c
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x70
	.long	0x5a
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x70
	.long	0x5a
	.byte	0
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	0x42d
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.byte	0x80
	.long	0x3e3
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x80
	.long	0x324
	.byte	0
	.uleb128 0x14
	.string	"min"
	.byte	0x1
	.byte	0x6f
	.long	0x5a
	.byte	0x1
	.long	0x450
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x6f
	.long	0x5a
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x6f
	.long	0x5a
	.byte	0
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	0x473
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0x8c
	.long	0x355
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.byte	0x8c
	.long	0x394
	.byte	0
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x41
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e6
	.uleb128 0x17
	.string	"dim"
	.byte	0x1
	.byte	0x41
	.long	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x41
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0x41
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x43
	.long	0x5a
	.long	.LLST0
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x43
	.long	0x5a
	.long	.LLST1
	.uleb128 0x19
	.long	.LBB40
	.long	.LBE40-.LBB40
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.byte	0x45
	.long	0x5a
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x33
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bb
	.uleb128 0x17
	.string	"dim"
	.byte	0x1
	.byte	0x33
	.long	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0x33
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x5a
	.long	.LLST3
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x35
	.long	0x5a
	.long	.LLST4
	.uleb128 0x1b
	.long	0x39f
	.long	.LBB49
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x39
	.long	0x58f
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST5
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST6
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST7
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST5
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST6
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x39f
	.long	.LBB54
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x39
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST11
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST12
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF67
	.byte	0x1
	.byte	0xa6
	.long	0x324
	.byte	0x1
	.long	0x64a
	.uleb128 0x12
	.string	"dim"
	.byte	0x1
	.byte	0xa6
	.long	0x5a
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xa6
	.long	0x5a
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0xa6
	.long	0x5a
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0xa6
	.long	0x355
	.uleb128 0x20
	.string	"ii"
	.byte	0x1
	.byte	0xa8
	.long	0x5a
	.uleb128 0x20
	.string	"jj"
	.byte	0x1
	.byte	0xa8
	.long	0x5a
	.uleb128 0x20
	.string	"sum"
	.byte	0x1
	.byte	0xa9
	.long	0x394
	.uleb128 0x21
	.long	.LASF63
	.byte	0x1
	.byte	0xaa
	.long	0x324
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.byte	0xae
	.long	0x5a
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.byte	0xaf
	.long	0x5a
	.uleb128 0x21
	.long	.LASF70
	.byte	0x1
	.byte	0xb0
	.long	0x5a
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.byte	0xb1
	.long	0x5a
	.byte	0
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0xd3
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x822
	.uleb128 0x17
	.string	"dim"
	.byte	0x1
	.byte	0xd3
	.long	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0xd3
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0xd3
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.long	0x5a
	.long	.LLST14
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xd5
	.long	0x5a
	.long	.LLST15
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0xd6
	.long	0x5a
	.long	.LLST16
	.uleb128 0x1e
	.long	0x5bb
	.long	.LBB79
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xda
	.uleb128 0x1c
	.long	0x5e8
	.long	.LLST17
	.uleb128 0x1c
	.long	0x5df
	.long	.LLST18
	.uleb128 0x1c
	.long	0x5d6
	.long	.LLST19
	.uleb128 0x1c
	.long	0x5cb
	.long	.LLST20
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x22
	.long	0x5f3
	.long	.LLST21
	.uleb128 0x22
	.long	0x5fd
	.long	.LLST22
	.uleb128 0x22
	.long	0x607
	.long	.LLST23
	.uleb128 0x23
	.long	0x612
	.uleb128 0x23
	.long	0x61d
	.uleb128 0x23
	.long	0x628
	.uleb128 0x23
	.long	0x633
	.uleb128 0x23
	.long	0x63e
	.uleb128 0x1b
	.long	0x3e9
	.long	.LBB81
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xb0
	.long	0x744
	.uleb128 0x1c
	.long	0x402
	.long	.LLST24
	.uleb128 0x1c
	.long	0x3f9
	.long	.LLST25
	.byte	0
	.uleb128 0x24
	.long	0x42d
	.long	.LBB84
	.long	.LBE84-.LBB84
	.byte	0x1
	.byte	0xb1
	.long	0x76a
	.uleb128 0x1c
	.long	0x446
	.long	.LLST26
	.uleb128 0x1c
	.long	0x43d
	.long	.LLST27
	.byte	0
	.uleb128 0x1b
	.long	0x3cb
	.long	.LBB86
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xac
	.long	0x787
	.uleb128 0x1c
	.long	0x3d7
	.long	.LLST28
	.byte	0
	.uleb128 0x1b
	.long	0x39f
	.long	.LBB89
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xb5
	.long	0x7db
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST29
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST30
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST31
	.uleb128 0x19
	.long	.LBB91
	.long	.LBE91-.LBB91
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST32
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST33
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x40c
	.long	.LBB94
	.long	.LBE94-.LBB94
	.byte	0x1
	.byte	0xb5
	.long	0x801
	.uleb128 0x1c
	.long	0x423
	.long	.LLST35
	.uleb128 0x1c
	.long	0x418
	.long	.LLST36
	.byte	0
	.uleb128 0x25
	.long	0x450
	.long	.LBB97
	.long	.LBE97-.LBB97
	.byte	0x1
	.byte	0xb9
	.uleb128 0x26
	.long	0x467
	.uleb128 0x1c
	.long	0x45c
	.long	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"avg"
	.byte	0x1
	.byte	0x97
	.long	0x324
	.byte	0x1
	.long	0x885
	.uleb128 0x12
	.string	"dim"
	.byte	0x1
	.byte	0x97
	.long	0x5a
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x97
	.long	0x5a
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x97
	.long	0x5a
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x97
	.long	0x355
	.uleb128 0x20
	.string	"ii"
	.byte	0x1
	.byte	0x99
	.long	0x5a
	.uleb128 0x20
	.string	"jj"
	.byte	0x1
	.byte	0x99
	.long	0x5a
	.uleb128 0x20
	.string	"sum"
	.byte	0x1
	.byte	0x9a
	.long	0x394
	.uleb128 0x21
	.long	.LASF63
	.byte	0x1
	.byte	0x9b
	.long	0x324
	.byte	0
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0xc5
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3e
	.uleb128 0x17
	.string	"dim"
	.byte	0x1
	.byte	0xc5
	.long	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0xc5
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.byte	0xc5
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xc7
	.long	0x5a
	.long	.LLST38
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xc7
	.long	0x5a
	.long	.LLST39
	.uleb128 0x1b
	.long	0x39f
	.long	.LBB127
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xcb
	.long	0x92e
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST40
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST41
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST42
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST40
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST41
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x822
	.long	.LBB132
	.long	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xcb
	.uleb128 0x1c
	.long	0x84f
	.long	.LLST46
	.uleb128 0x1c
	.long	0x846
	.long	.LLST47
	.uleb128 0x1c
	.long	0x83d
	.long	.LLST48
	.uleb128 0x1c
	.long	0x832
	.long	.LLST49
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0xa8
	.uleb128 0x22
	.long	0x85a
	.long	.LLST50
	.uleb128 0x22
	.long	0x864
	.long	.LLST51
	.uleb128 0x22
	.long	0x86e
	.long	.LLST52
	.uleb128 0x23
	.long	0x879
	.uleb128 0x1b
	.long	0x3cb
	.long	.LBB134
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x9d
	.long	0x9a3
	.uleb128 0x1c
	.long	0x3d7
	.long	.LLST53
	.byte	0
	.uleb128 0x1b
	.long	0x39f
	.long	.LBB137
	.long	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0xa0
	.long	0x9f7
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST54
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST55
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST56
	.uleb128 0x19
	.long	.LBB139
	.long	.LBE139-.LBB139
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST57
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST58
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x40c
	.long	.LBB142
	.long	.LBE142-.LBB142
	.byte	0x1
	.byte	0xa0
	.long	0xa1d
	.uleb128 0x1c
	.long	0x423
	.long	.LLST60
	.uleb128 0x1c
	.long	0x418
	.long	.LLST61
	.byte	0
	.uleb128 0x25
	.long	0x450
	.long	.LBB145
	.long	.LBE145-.LBB145
	.byte	0x1
	.byte	0xa2
	.uleb128 0x26
	.long	0x467
	.uleb128 0x1c
	.long	0x45c
	.long	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x39f
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xa90
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST63
	.uleb128 0x28
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LBB153
	.long	.LBE153-.LBB153
	.uleb128 0x1c
	.long	0x3c1
	.long	.LLST64
	.uleb128 0x1c
	.long	0x3b8
	.long	.LLST65
	.uleb128 0x1c
	.long	0x3af
	.long	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.byte	0x55
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xae6
	.uleb128 0x29
	.long	.LVL92
	.long	0xbb7
	.long	0xac7
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	naive_rotate
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	naive_rotate_descr
	.byte	0
	.uleb128 0x2b
	.long	.LVL93
	.long	0xbb7
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	rotate
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	rotate_descr
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0xe9
	.long	.LFB52
	.long	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3c
	.uleb128 0x29
	.long	.LVL94
	.long	0xbcd
	.long	0xb1d
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	smooth
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	smooth_descr
	.byte	0
	.uleb128 0x2b
	.long	.LVL95
	.long	0xbcd
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	naive_smooth
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	naive_smooth_descr
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF77
	.byte	0x6
	.byte	0xa8
	.long	0x26b
	.uleb128 0x2c
	.long	.LASF78
	.byte	0x6
	.byte	0xa9
	.long	0x26b
	.uleb128 0x2d
	.long	.LASF49
	.byte	0x1
	.byte	0xc
	.long	0x2ec
	.uleb128 0x5
	.byte	0x3
	.long	team
	.uleb128 0xb
	.long	0xa6
	.long	0xb73
	.uleb128 0xc
	.long	0x97
	.byte	0x2b
	.byte	0
	.uleb128 0x2d
	.long	.LASF79
	.byte	0x1
	.byte	0x32
	.long	0xb63
	.uleb128 0x5
	.byte	0x3
	.long	naive_rotate_descr
	.uleb128 0x2d
	.long	.LASF80
	.byte	0x1
	.byte	0x40
	.long	0x297
	.uleb128 0x5
	.byte	0x3
	.long	rotate_descr
	.uleb128 0x2d
	.long	.LASF81
	.byte	0x1
	.byte	0xc4
	.long	0xb63
	.uleb128 0x5
	.byte	0x3
	.long	naive_smooth_descr
	.uleb128 0x2d
	.long	.LASF82
	.byte	0x1
	.byte	0xd2
	.long	0x297
	.uleb128 0x5
	.byte	0x3
	.long	smooth_descr
	.uleb128 0x2e
	.long	.LASF88
	.byte	0x5
	.byte	0x23
	.long	0xbcd
	.uleb128 0x10
	.long	0x32f
	.uleb128 0x10
	.long	0xa0
	.byte	0
	.uleb128 0x2f
	.long	.LASF89
	.byte	0x5
	.byte	0x22
	.uleb128 0x10
	.long	0x32f
	.uleb128 0x10
	.long	0xa0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x20
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0xd
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x20
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST4:
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL9-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x57
	.long	.LVL16-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST6:
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL16-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL9-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST11:
	.long	.LVL9-.Ltext0
	.long	.LVL19-.Ltext0
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST12:
	.long	.LVL9-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST13:
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL11-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL16-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST15:
	.long	.LVL22-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL45-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL48-.Ltext0
	.long	.LVL49-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL51-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL24-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST18:
	.long	.LVL24-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL48-.Ltext0
	.long	.LVL49-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST19:
	.long	.LVL24-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST20:
	.long	.LVL24-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST21:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL29-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL50-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST22:
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL30-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST23:
	.long	.LVL24-.Ltext0
	.long	.LVL29-.Ltext0
	.value	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0xe
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.long	.LVL30-.Ltext0
	.long	.LVL34-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL35-.Ltext0
	.long	.LVL37-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x19
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL39-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0xc
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0xe
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST24:
	.long	.LVL24-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL24-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL25-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL48-.Ltext0
	.long	.LVL49-.Ltext0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL26-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL49-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST27:
	.long	.LVL26-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL49-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST28:
	.long	.LVL24-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1788
	.sleb128 0
	.long	.LVL48-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1788
	.sleb128 0
	.long	0
	.long	0
.LLST29:
	.long	.LVL30-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST30:
	.long	.LVL30-.Ltext0
	.long	.LVL38-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL30-.Ltext0
	.long	.LVL33-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL33-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST32:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST33:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST34:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST35:
	.long	.LVL32-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0x93
	.uleb128 0x2
	.long	.LVL36-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x8
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x8
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.long	0
	.long	0
.LLST36:
	.long	.LVL32-.Ltext0
	.long	.LVL39-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1788
	.sleb128 0
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1788
	.sleb128 0
	.long	0
	.long	0
.LLST37:
	.long	.LVL43-.Ltext0
	.long	.LVL47-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1797
	.sleb128 0
	.long	0
	.long	0
.LLST38:
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54-.Ltext0
	.long	.LVL55-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	.LVL79-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST39:
	.long	.LVL54-.Ltext0
	.long	.LVL56-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL59-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL61-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL78-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL81-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL86-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL87-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL56-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL81-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST41:
	.long	.LVL56-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL59-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL61-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL81-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL86-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL56-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	.LVL81-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST46:
	.long	.LVL57-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL82-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST47:
	.long	.LVL57-.Ltext0
	.long	.LVL59-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL59-.Ltext0
	.long	.LVL60-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL61-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL82-.Ltext0
	.long	.LVL84-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL86-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL57-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	.LVL82-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST49:
	.long	.LVL57-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL82-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST50:
	.long	.LVL57-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	.LVL62-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL82-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0
	.long	0
.LLST51:
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL63-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST52:
	.long	.LVL57-.Ltext0
	.long	.LVL62-.Ltext0
	.value	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.value	0xe
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.long	.LVL63-.Ltext0
	.long	.LVL67-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL67-.Ltext0
	.long	.LVL68-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL68-.Ltext0
	.long	.LVL70-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL70-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x19
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL72-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x17
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x1c
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	.LVL74-.Ltext0
	.long	.LVL75-.Ltext0
	.value	0xc
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	.LVL75-.Ltext0
	.long	.LVL76-.Ltext0
	.value	0xe
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.long	.LVL82-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST53:
	.long	.LVL57-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2424
	.sleb128 0
	.long	.LVL82-.Ltext0
	.long	.LVL87-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2424
	.sleb128 0
	.long	0
	.long	0
.LLST54:
	.long	.LVL63-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST55:
	.long	.LVL63-.Ltext0
	.long	.LVL71-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL72-.Ltext0
	.long	.LVL73-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL63-.Ltext0
	.long	.LVL66-.Ltext0
	.value	0x1
	.byte	0x56
	.long	.LVL66-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST57:
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST58:
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST59:
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST60:
	.long	.LVL65-.Ltext0
	.long	.LVL69-.Ltext0
	.value	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0x93
	.uleb128 0x2
	.long	.LVL69-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x8
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x8
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.long	0
	.long	0
.LLST61:
	.long	.LVL65-.Ltext0
	.long	.LVL72-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2424
	.sleb128 0
	.long	.LVL73-.Ltext0
	.long	.LVL74-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2424
	.sleb128 0
	.long	0
	.long	0
.LLST62:
	.long	.LVL76-.Ltext0
	.long	.LVL80-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2433
	.sleb128 0
	.long	0
	.long	0
.LLST63:
	.long	.LVL88-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL90-.Ltext0
	.long	.LVL91-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL91-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST64:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST65:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST66:
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB49-.Ltext0
	.long	.LBE49-.Ltext0
	.long	.LBB57-.Ltext0
	.long	.LBE57-.Ltext0
	.long	0
	.long	0
	.long	.LBB54-.Ltext0
	.long	.LBE54-.Ltext0
	.long	.LBB58-.Ltext0
	.long	.LBE58-.Ltext0
	.long	0
	.long	0
	.long	.LBB79-.Ltext0
	.long	.LBE79-.Ltext0
	.long	.LBB102-.Ltext0
	.long	.LBE102-.Ltext0
	.long	0
	.long	0
	.long	.LBB81-.Ltext0
	.long	.LBE81-.Ltext0
	.long	.LBB99-.Ltext0
	.long	.LBE99-.Ltext0
	.long	0
	.long	0
	.long	.LBB86-.Ltext0
	.long	.LBE86-.Ltext0
	.long	.LBB100-.Ltext0
	.long	.LBE100-.Ltext0
	.long	0
	.long	0
	.long	.LBB89-.Ltext0
	.long	.LBE89-.Ltext0
	.long	.LBB96-.Ltext0
	.long	.LBE96-.Ltext0
	.long	0
	.long	0
	.long	.LBB127-.Ltext0
	.long	.LBE127-.Ltext0
	.long	.LBB149-.Ltext0
	.long	.LBE149-.Ltext0
	.long	0
	.long	0
	.long	.LBB132-.Ltext0
	.long	.LBE132-.Ltext0
	.long	.LBB150-.Ltext0
	.long	.LBE150-.Ltext0
	.long	0
	.long	0
	.long	.LBB134-.Ltext0
	.long	.LBE134-.Ltext0
	.long	.LBB147-.Ltext0
	.long	.LBE147-.Ltext0
	.long	0
	.long	0
	.long	.LBB137-.Ltext0
	.long	.LBE137-.Ltext0
	.long	.LBB144-.Ltext0
	.long	.LBE144-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF28:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF73:
	.string	"dimi"
.LASF64:
	.string	"dimj"
.LASF34:
	.string	"_shortbuf"
.LASF22:
	.string	"_IO_buf_base"
.LASF61:
	.string	"accumulate_sum"
.LASF7:
	.string	"long long unsigned int"
.LASF57:
	.string	"pixel"
.LASF79:
	.string	"naive_rotate_descr"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF29:
	.string	"_fileno"
.LASF71:
	.string	"minj"
.LASF17:
	.string	"_IO_read_end"
.LASF11:
	.string	"long int"
.LASF15:
	.string	"_flags"
.LASF81:
	.string	"naive_smooth_descr"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF9:
	.string	"__quad_t"
.LASF51:
	.string	"email1"
.LASF53:
	.string	"email2"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF45:
	.string	"_IO_marker"
.LASF77:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF80:
	.string	"rotate_descr"
.LASF3:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF47:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF76:
	.string	"register_smooth_functions"
.LASF24:
	.string	"_IO_save_base"
.LASF82:
	.string	"smooth_descr"
.LASF85:
	.string	"/home/hseaman/courses/cs105/Performance/perflab-handout"
.LASF35:
	.string	"_lock"
.LASF58:
	.string	"lab_test_func"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF89:
	.string	"add_smooth_function"
.LASF78:
	.string	"stdout"
.LASF13:
	.string	"sizetype"
.LASF75:
	.string	"register_rotate_functions"
.LASF21:
	.string	"_IO_write_end"
.LASF86:
	.string	"_IO_lock_t"
.LASF44:
	.string	"_IO_FILE"
.LASF56:
	.string	"blue"
.LASF50:
	.string	"name1"
.LASF52:
	.string	"name2"
.LASF48:
	.string	"_pos"
.LASF27:
	.string	"_markers"
.LASF83:
	.string	"GNU C 4.8.5 -m32 -march=i386 -mno-omit-leaf-frame-pointer -g -O2 -fno-omit-frame-pointer -fstack-protector"
.LASF62:
	.string	"assign_sum_to_pixel"
.LASF87:
	.string	"ridx"
.LASF60:
	.string	"initialize_pixel_sum"
.LASF63:
	.string	"current_pixel"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"smooth"
.LASF74:
	.string	"naive_smooth"
.LASF33:
	.string	"_vtable_offset"
.LASF49:
	.string	"team"
.LASF67:
	.string	"avg_perf"
.LASF14:
	.string	"char"
.LASF84:
	.string	"kernels.c"
.LASF65:
	.string	"rotate"
.LASF66:
	.string	"naive_rotate"
.LASF46:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF43:
	.string	"_unused2"
.LASF55:
	.string	"green"
.LASF59:
	.string	"pixel_sum"
.LASF25:
	.string	"_IO_backup_base"
.LASF69:
	.string	"mini"
.LASF68:
	.string	"maxi"
.LASF70:
	.string	"maxj"
.LASF54:
	.string	"team_t"
.LASF88:
	.string	"add_rotate_function"
.LASF19:
	.string	"_IO_write_base"
	.ident	"GCC: (Gentoo 4.8.5 p1.3, pie-0.6.2) 4.8.5"
	.section	.note.GNU-stack,"",@progbits

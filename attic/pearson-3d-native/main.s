	.file	"main.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	drand
	.type	drand, @function
drand:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	rand
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vdivsd	.LC0(%rip), %xmm0, %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	drand, .-drand
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	wctime
	.type	wctime, @function
wctime:
.LFB12:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%esi, %esi
	movq	%rsp, %rdi
	call	gettimeofday
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	8(%rsp), %xmm0, %xmm0
	vmulsd	.LC2(%rip), %xmm0, %xmm0
	vcvtsi2sdq	(%rsp), %xmm1, %xmm1
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	vaddsd	%xmm0, %xmm1, %xmm0
	ret
	.cfi_endproc
.LFE12:
	.size	wctime, .-wctime
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	init
	.type	init, @function
init:
.LFB13:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	$0, -72(%rbp)
	vmovsd	.LC5(%rip), %xmm2
	vmovdqa	.LC9(%rip), %ymm8
	movl	$0, -64(%rbp)
	vmovapd	.LC10(%rip), %ymm6
.L6:
	movl	-64(%rbp), %edi
	xorl	%r15d, %r15d
	vmovapd	.LC11(%rip), %ymm7
	movl	%edi, %eax
	imull	%edi, %eax
	movl	%eax, -60(%rbp)
	movq	-72(%rbp), %rax
	leaq	V(%rax), %r13
	movq	%rax, %rbx
	leaq	U(%rax), %r14
	.p2align 4,,10
	.p2align 3
.L40:
	movl	%r15d, %r12d
	movl	$800, %edx
	xorl	%esi, %esi
	vmovapd	%ymm7, -112(%rbp)
	imull	%r15d, %r12d
	addl	-60(%rbp), %r12d
	movq	%r13, %rdi
	vmovapd	%ymm6, -176(%rbp)
	vmovdqa	%ymm8, -144(%rbp)
	vmovsd	%xmm2, -56(%rbp)
	vzeroupper
	call	memset
	leaq	64(%rbx), %rax
	vmovsd	-56(%rbp), %xmm2
	cmpq	%rax, %rbx
	vmovapd	-112(%rbp), %ymm7
	vmovdqa	-144(%rbp), %ymm8
	vmovapd	-176(%rbp), %ymm6
	jl	.L76
	movq	%r14, %rax
	andl	$31, %eax
	shrq	$3, %rax
	negq	%rax
	movl	%eax, %edx
	andl	$3, %edx
	je	.L41
	vmovsd	.LC4(%rip), %xmm5
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%r12d, %xmm0, %xmm0
	vmovsd	%xmm5, (%r14)
	vucomisd	%xmm0, %xmm2
	jbe	.L12
	vmovsd	.LC6(%rip), %xmm1
	vmovsd	.LC7(%rip), %xmm3
	vmovsd	%xmm1, (%r14)
	vmovsd	%xmm3, 0(%r13)
.L12:
	cmpl	$1, %edx
	je	.L42
	leal	1(%r12), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm3
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovsd	%xmm3, 8(%r14)
	vucomisd	%xmm0, %xmm2
	jbe	.L15
	vmovsd	.LC6(%rip), %xmm1
	vmovsd	.LC7(%rip), %xmm5
	vmovsd	%xmm1, 8(%r14)
	vmovsd	%xmm5, 8(%r13)
.L15:
	cmpl	$3, %edx
	jne	.L43
	leal	4(%r12), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm5
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovsd	%xmm5, 16(%r14)
	vucomisd	%xmm0, %xmm2
	jbe	.L17
	vmovsd	.LC6(%rip), %xmm3
	vmovsd	.LC7(%rip), %xmm1
	vmovsd	%xmm3, 16(%r14)
	vmovsd	%xmm1, 16(%r13)
.L17:
	movl	$97, %edi
	movl	$3, %eax
.L14:
	movl	%edx, %edx
.L11:
	leaq	(%rbx,%rdx,8), %rdx
	vmovd	%r12d, %xmm5
	vmovd	%eax, %xmm1
	vmovapd	.LC13(%rip), %ymm4
	leaq	U(%rdx), %rsi
	vbroadcastss	%xmm1, %ymm3
	vbroadcastss	%xmm5, %ymm9
	vmovapd	.LC12(%rip), %ymm5
	vpaddd	.LC8(%rip), %ymm3, %ymm3
	addq	$V, %rdx
	movq	%rsi, %rcx
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L19:
	vpmulld	%ymm3, %ymm3, %ymm0
	vmovapd	%ymm6, (%rsi)
	addl	$1, %r9d
	addq	$64, %rsi
	vmovapd	%ymm6, -32(%rsi)
	vpaddd	%ymm8, %ymm3, %ymm3
	vpaddd	%ymm9, %ymm0, %ymm0
	vcvtdq2pd	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vcmpltpd	%ymm7, %ymm1, %ymm1
	vcvtdq2pd	%xmm0, %ymm0
	vcmpltpd	%ymm7, %ymm0, %ymm0
	vmaskmovpd	%ymm5, %ymm1, (%rcx)
	vmaskmovpd	%ymm4, %ymm1, (%rdx)
	vmaskmovpd	%ymm5, %ymm0, 32(%rcx)
	vmaskmovpd	%ymm4, %ymm0, 32(%rdx)
	addq	$64, %rcx
	addq	$64, %rdx
	cmpl	$11, %r9d
	jbe	.L19
	movslq	-64(%rbp), %rcx
	leal	96(%rax), %esi
	movslq	%r15d, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm3
	leaq	(%rdx,%rdx,4), %r9
	movslq	%esi, %r10
	imull	%esi, %esi
	leaq	(%r9,%r9,4), %r9
	imulq	$10000, %rcx, %r11
	addl	%r12d, %esi
	vcvtsi2sd	%esi, %xmm0, %xmm0
	leaq	(%r11,%r9,4), %r9
	addq	%r9, %r10
	vucomisd	%xmm0, %xmm2
	vmovsd	%xmm3, U(,%r10,8)
	jbe	.L24
	vmovsd	.LC6(%rip), %xmm1
	vmovsd	.LC7(%rip), %xmm5
	vmovsd	%xmm1, U(,%r10,8)
	vmovsd	%xmm5, V(,%r10,8)
.L24:
	leal	97(%rax), %esi
	cmpl	$97, %edi
	je	.L10
	imulq	$10000, %rcx, %r11
	movslq	%esi, %r10
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm5
	imull	%esi, %esi
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%r9,%r9,4), %r9
	addl	%r12d, %esi
	vcvtsi2sd	%esi, %xmm0, %xmm0
	leaq	(%r11,%r9,4), %r9
	addq	%r9, %r10
	vmovsd	%xmm5, U(,%r10,8)
	vucomisd	%xmm0, %xmm2
	jbe	.L26
	vmovsd	.LC6(%rip), %xmm3
	vmovsd	.LC7(%rip), %xmm1
	vmovsd	%xmm3, U(,%r10,8)
	vmovsd	%xmm1, V(,%r10,8)
.L26:
	leal	98(%rax), %esi
	cmpl	$98, %edi
	je	.L10
	imulq	$10000, %rcx, %r11
	movslq	%esi, %r10
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm3
	imull	%esi, %esi
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%r9,%r9,4), %r9
	addl	%r12d, %esi
	vcvtsi2sd	%esi, %xmm0, %xmm0
	leaq	(%r11,%r9,4), %r9
	addq	%r9, %r10
	vmovsd	%xmm3, U(,%r10,8)
	vucomisd	%xmm0, %xmm2
	jbe	.L28
	vmovsd	.LC6(%rip), %xmm5
	vmovsd	.LC7(%rip), %xmm3
	vmovsd	%xmm5, U(,%r10,8)
	vmovsd	%xmm3, V(,%r10,8)
.L28:
	leal	99(%rax), %esi
	cmpl	$99, %edi
	je	.L10
	imulq	$10000, %rcx, %r11
	movslq	%esi, %r10
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm5
	imull	%esi, %esi
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%r9,%r9,4), %r9
	addl	%r12d, %esi
	vcvtsi2sd	%esi, %xmm0, %xmm0
	leaq	(%r11,%r9,4), %r9
	addq	%r9, %r10
	vmovsd	%xmm5, U(,%r10,8)
	vucomisd	%xmm0, %xmm2
	jbe	.L30
	vmovsd	.LC6(%rip), %xmm1
	vmovsd	.LC7(%rip), %xmm5
	vmovsd	%xmm1, U(,%r10,8)
	vmovsd	%xmm5, V(,%r10,8)
.L30:
	leal	100(%rax), %esi
	cmpl	$100, %edi
	je	.L10
	imulq	$10000, %rcx, %r11
	movslq	%esi, %r10
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm3
	imull	%esi, %esi
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%r9,%r9,4), %r9
	addl	%r12d, %esi
	vcvtsi2sd	%esi, %xmm0, %xmm0
	leaq	(%r11,%r9,4), %r9
	addq	%r9, %r10
	vmovsd	%xmm3, U(,%r10,8)
	vucomisd	%xmm0, %xmm2
	jbe	.L32
	vmovsd	.LC6(%rip), %xmm3
	vmovsd	.LC7(%rip), %xmm1
	vmovsd	%xmm3, U(,%r10,8)
	vmovsd	%xmm1, V(,%r10,8)
.L32:
	leal	101(%rax), %esi
	cmpl	$101, %edi
	je	.L10
	imulq	$10000, %rcx, %r11
	movslq	%esi, %r10
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm5
	imull	%esi, %esi
	leaq	(%rdx,%rdx,4), %r9
	leaq	(%r9,%r9,4), %r9
	addl	%r12d, %esi
	vcvtsi2sd	%esi, %xmm0, %xmm0
	leaq	(%r11,%r9,4), %r9
	addq	%r9, %r10
	vmovsd	%xmm5, U(,%r10,8)
	vucomisd	%xmm0, %xmm2
	jbe	.L34
	vmovsd	.LC6(%rip), %xmm5
	vmovsd	.LC7(%rip), %xmm3
	vmovsd	%xmm5, U(,%r10,8)
	vmovsd	%xmm3, V(,%r10,8)
.L34:
	addl	$102, %eax
	cmpl	$102, %edi
	je	.L10
	imulq	$10000, %rcx, %rcx
	movslq	%eax, %rsi
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC4(%rip), %xmm3
	imull	%eax, %eax
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addl	%eax, %r12d
	vcvtsi2sd	%r12d, %xmm0, %xmm0
	leaq	(%rcx,%rdx,4), %rdx
	addq	%rsi, %rdx
	vmovsd	%xmm3, U(,%rdx,8)
	vucomisd	%xmm0, %xmm2
	jbe	.L10
	vmovsd	.LC6(%rip), %xmm5
	vmovsd	.LC7(%rip), %xmm3
	vmovsd	%xmm5, U(,%rdx,8)
	vmovsd	%xmm3, V(,%rdx,8)
.L10:
	addl	$1, %r15d
	addq	$800, %r13
	addq	$800, %rbx
	addq	$800, %r14
	cmpl	$100, %r15d
	jne	.L40
	addl	$1, -64(%rbp)
	movl	-64(%rbp), %eax
	addq	$80000, -72(%rbp)
	cmpl	$100, %eax
	jne	.L6
	vzeroupper
	subq	$-128, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	xorl	%edx, %edx
	movl	$100, %edi
	xorl	%eax, %eax
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L76:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	vmovsd	.LC4(%rip), %xmm4
	movl	%eax, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	imull	%eax, %edx
	vmovsd	%xmm4, U(%rbx,%rax,8)
	addl	%r12d, %edx
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm2
	jbe	.L7
	vmovsd	.LC6(%rip), %xmm5
	vmovsd	.LC7(%rip), %xmm3
	vmovsd	%xmm5, U(%rbx,%rax,8)
	vmovsd	%xmm3, V(%rbx,%rax,8)
.L7:
	addq	$1, %rax
	cmpq	$100, %rax
	jne	.L9
	jmp	.L10
.L43:
	movl	$98, %edi
	movl	$2, %eax
	jmp	.L14
.L42:
	movl	$99, %edi
	movl	$1, %eax
	jmp	.L14
	.cfi_endproc
.LFE13:
	.size	init, .-init
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	laplacian
	.type	laplacian, @function
laplacian:
.LFB14:
	.cfi_startproc
	movslq	%esi, %rsi
	movslq	%edx, %rax
	movslq	%ecx, %r11
	vmovsd	.LC15(%rip), %xmm1
	leaq	(%rax,%rax,4), %rax
	addq	$1, %rsi
	imulq	$80000, %rsi, %rsi
	leaq	(%rax,%rax,4), %r10
	salq	$2, %r10
	leaq	(%r10,%r11), %r9
	leaq	(%rdi,%r9,8), %rax
	leaq	-80000(%rdi,%rsi), %r8
	addq	%rsi, %rax
	vmovsd	(%rax), %xmm0
	vaddsd	-160000(%rax), %xmm0, %xmm0
	leal	1(%rdx), %eax
	subl	$1, %edx
	vmulsd	(%r8,%r9,8), %xmm1, %xmm1
	cltq
	movslq	%edx, %rdx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	(%r11,%rax,4), %rax
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	(%r11,%rax,4), %rax
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	leal	1(%rcx), %eax
	subl	$1, %ecx
	cltq
	movslq	%ecx, %rcx
	addq	%r10, %rax
	addq	%r10, %rcx
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%r8,%rcx,8), %xmm0, %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE14:
	.size	laplacian, .-laplacian
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB28:
	.section	.text.startup,"ax",@progbits
.LHOTB28:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%eax, %eax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$320, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	call	init
	movl	$V+80000, %edi
	vmovapd	.LC17(%rip), %ymm7
	movq	$U+160000, -192(%rbp)
	vmovapd	.LC18(%rip), %ymm9
	movq	%rdi, %r10
	movq	$10000, -336(%rbp)
	vmovapd	.LC19(%rip), %ymm10
	movq	$80000, -344(%rbp)
	vmovapd	.LC20(%rip), %ymm11
	movl	$1, -324(%rbp)
	vmovapd	.LC10(%rip), %ymm13
	vmovapd	.LC21(%rip), %ymm14
	vmovapd	.LC22(%rip), %ymm12
.L79:
	movq	-192(%rbp), %rax
	movq	$100, -240(%rbp)
	movq	$0, -184(%rbp)
	movl	$1, -136(%rbp)
	leaq	-160000(%rax), %rbx
	leaq	-80000(%rax), %r13
	subq	$79192, %rax
	movq	%rbx, -152(%rbp)
	movq	%rax, -216(%rbp)
	movq	-344(%rbp), %rax
	leaq	80000(%r10), %rbx
	movq	%rbx, -200(%rbp)
	leaq	-80000(%r10), %rbx
	movq	%rbx, -120(%rbp)
	addq	$800, %rax
	movq	%rax, -232(%rbp)
	movq	-336(%rbp), %rax
	leaq	100(%rax), %rdx
	leaq	10001(%rax), %rbx
	movq	%rdx, -208(%rbp)
	movq	%rbx, -320(%rbp)
	leaq	101(%rax), %rdx
	leaq	2(%rax), %rbx
	addq	$1, %rax
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movslq	-324(%rbp), %rax
	movq	%rbx, -304(%rbp)
	movq	%rax, -288(%rbp)
	imulq	$10000, %rax, %rax
	movq	%rax, -264(%rbp)
	.p2align 4,,10
	.p2align 3
.L91:
	movl	-136(%rbp), %eax
	leal	1(%rax), %ebx
	movl	%ebx, %esi
	movl	%ebx, -160(%rbp)
	movslq	%eax, %rbx
	subl	$1, %eax
	movl	%eax, %edx
	movl	%eax, -144(%rbp)
	movq	-216(%rbp), %rax
	andl	$31, %eax
	shrq	$3, %rax
	negq	%rax
	movl	%eax, %r14d
	andl	$3, %r14d
	je	.L92
	movq	%rbx, %rdi
	movslq	%esi, %rbx
	movl	$1, %eax
	vmovsd	.LC27(%rip), %xmm6
	movq	%rbx, %rsi
	movslq	%edx, %rbx
	movl	$98, -128(%rbp)
	leaq	(%rdi,%rdi,4), %rdx
	movq	%rbx, %rcx
	movq	-264(%rbp), %rbx
	leaq	(%rdx,%rdx,4), %r8
	leaq	(%rsi,%rsi,4), %rdx
	salq	$2, %r8
	leaq	(%rbx,%r8), %r11
	leaq	(%rdx,%rdx,4), %rbx
	movq	%r11, -64(%rbp)
	leaq	(%rcx,%rcx,4), %rdx
	salq	$2, %rbx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	0(,%rdx,4), %r12
	movq	-192(%rbp), %rdx
	movq	%r12, -72(%rbp)
	movq	-200(%rbp), %r12
	movq	%rdx, -56(%rbp)
.L89:
	movq	-64(%rbp), %rsi
	leal	1(%rax), %r9d
	movslq	%eax, %rdx
	subl	$1, %eax
	movq	-120(%rbp), %rdi
	leaq	(%r8,%rdx), %rcx
	cltq
	leaq	(%rbx,%rdx), %r15
	addq	%r8, %rax
	movq	-56(%rbp), %r11
	vmovsd	.LC15(%rip), %xmm2
	vmulsd	(%r10,%rcx,8), %xmm2, %xmm1
	addq	%rdx, %rsi
	vmovsd	V(,%rsi,8), %xmm4
	vmovsd	U(,%rsi,8), %xmm5
	vmulsd	.LC23(%rip), %xmm4, %xmm0
	vmulsd	%xmm4, %xmm5, %xmm3
	addq	-72(%rbp), %rdx
	vmovapd	%xmm5, %xmm2
	vxorpd	.LC25(%rip), %xmm2, %xmm2
	vmulsd	%xmm4, %xmm2, %xmm2
	vmulsd	%xmm4, %xmm3, %xmm3
	vsubsd	%xmm0, %xmm3, %xmm3
	vmovsd	(%r12,%rcx,8), %xmm0
	vaddsd	(%rdi,%rcx,8), %xmm0, %xmm0
	movslq	%r9d, %rdi
	addq	%r8, %rdi
	vaddsd	(%r10,%r15,8), %xmm0, %xmm0
	vaddsd	(%r10,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r10,%rdi,8), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	(%r11,%rcx,8), %xmm1
	vmulsd	.LC24(%rip), %xmm0, %xmm0
	movq	-152(%rbp), %r11
	vaddsd	%xmm0, %xmm3, %xmm3
	vmulsd	%xmm4, %xmm2, %xmm0
	vmovsd	.LC4(%rip), %xmm2
	vmulsd	.LC24(%rip), %xmm3, %xmm3
	vsubsd	%xmm5, %xmm2, %xmm2
	vmulsd	.LC26(%rip), %xmm2, %xmm2
	vaddsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm0, %xmm2
	vaddsd	(%r11,%rcx,8), %xmm1, %xmm0
	vmovsd	%xmm3, V_next(,%rsi,8)
	vaddsd	0(%r13,%r15,8), %xmm0, %xmm0
	vmovsd	.LC15(%rip), %xmm1
	vmulsd	0(%r13,%rcx,8), %xmm1, %xmm1
	vaddsd	0(%r13,%rdx,8), %xmm0, %xmm0
	leal	-1(%r9), %edx
	vaddsd	0(%r13,%rdi,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	movl	%r9d, %eax
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm6, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	.LC24(%rip), %xmm0, %xmm0
	vaddsd	%xmm5, %xmm0, %xmm0
	vmovsd	%xmm0, U_next(,%rsi,8)
	subl	$1, -128(%rbp)
	cmpl	%edx, %r14d
	ja	.L89
	movl	$98, %eax
	movl	%r9d, -156(%rbp)
	movl	%r14d, %edx
	subl	%r14d, %eax
	movl	%eax, -224(%rbp)
	movl	$94, %eax
	subl	%r14d, %eax
	shrl	$2, %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	sall	$2, %eax
	movl	%eax, -176(%rbp)
.L88:
	movq	-240(%rbp), %r8
	movq	-320(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	-312(%rbp), %r9
	addq	%r8, %rsi
	leaq	8(%rax,%rdx,8), %rax
	addq	%rdx, %rsi
	salq	$3, %rsi
	addq	%r8, %r9
	movq	%rax, -112(%rbp)
	leaq	U(%rsi), %rdi
	addq	$V, %rsi
	movq	%rdi, -96(%rbp)
	movq	-208(%rbp), %rdi
	leaq	U(%rax), %r15
	leaq	V(%rax), %r14
	movq	%r9, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rbx
	leaq	U(%rbx), %rax
	addq	%rdx, %rdi
	salq	$3, %rdi
	movq	%rax, -256(%rbp)
	leaq	-792(%rdi), %r9
	leaq	U(%r9), %rax
	movq	%r9, -64(%rbp)
	movq	%rax, -248(%rbp)
	movq	-304(%rbp), %rax
	leaq	-79992(%rdi), %rcx
	leaq	U(%rdi), %r9
	leaq	U(%rcx), %r12
	addq	$V, %rcx
	addq	%r8, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	U(%rax), %r11
	movq	%r11, -88(%rbp)
	movq	-296(%rbp), %r11
	addq	%r8, %r11
	addq	%r11, %rdx
	leaq	V(%rbx), %r11
	movq	-64(%rbp), %rbx
	salq	$3, %rdx
	movq	%r11, -80(%rbp)
	movq	-248(%rbp), %r11
	leaq	U(%rdx), %r8
	addq	$V, %rdx
	movq	%r10, -248(%rbp)
	movq	%rdx, -104(%rbp)
	xorl	%edx, %edx
	addq	$V, %rbx
	movq	%rbx, -72(%rbp)
	leaq	V(%rax), %rbx
	movq	-112(%rbp), %rax
	movq	%rbx, -64(%rbp)
	leaq	V(%rdi), %rbx
	movq	%rbx, -272(%rbp)
	movq	-256(%rbp), %rbx
	movq	-272(%rbp), %r10
	movq	%r13, -256(%rbp)
	leaq	U_next(%rax), %rdi
	addq	$V_next, %rax
	movq	%rcx, -112(%rbp)
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %r13
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L80:
	movq	-112(%rbp), %rcx
	addl	$1, %edx
	vmovupd	(%r14,%rax), %ymm4
	vmovapd	(%r15,%rax), %ymm5
	vmulpd	%ymm4, %ymm5, %ymm3
	vmulpd	%ymm4, %ymm3, %ymm0
	vmulpd	%ymm7, %ymm4, %ymm3
	vsubpd	%ymm3, %ymm0, %ymm3
	vmovupd	(%rcx,%rax), %ymm0
	vxorpd	%ymm11, %ymm5, %ymm2
	vmulpd	%ymm4, %ymm2, %ymm2
	movq	-80(%rbp), %rcx
	vaddpd	(%rsi,%rax), %ymm0, %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-72(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-64(%rbp), %rcx
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	movq	-104(%rbp), %rcx
	vaddpd	(%r10,%rax), %ymm0, %ymm0
	vmulpd	(%rcx,%rax), %ymm9, %ymm1
	movq	-96(%rbp), %rcx
	vsubpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm4, %ymm2, %ymm1
	vsubpd	%ymm5, %ymm13, %ymm2
	vmulpd	%ymm10, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm3
	vmovupd	(%r12,%rax), %ymm0
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vmulpd	%ymm14, %ymm2, %ymm2
	movq	-88(%rbp), %rcx
	vaddpd	%ymm2, %ymm1, %ymm2
	vaddpd	(%rbx,%rax), %ymm0, %ymm0
	vmulpd	%ymm10, %ymm3, %ymm3
	vaddpd	(%r11,%rax), %ymm0, %ymm0
	vaddpd	%ymm4, %ymm3, %ymm4
	vaddpd	(%rcx,%rax), %ymm0, %ymm0
	vaddpd	(%r9,%rax), %ymm0, %ymm1
	vmulpd	(%r8,%rax), %ymm9, %ymm0
	vsubpd	%ymm0, %ymm1, %ymm0
	vmulpd	%ymm12, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm10, %ymm0, %ymm0
	vaddpd	%ymm5, %ymm0, %ymm5
	vmovupd	%ymm5, (%rdi,%rax)
	vmovupd	%ymm4, 0(%r13,%rax)
	addq	$32, %rax
	cmpl	-56(%rbp), %edx
	jb	.L80
	movl	-176(%rbp), %eax
	movl	-156(%rbp), %edx
	movl	-128(%rbp), %r15d
	movq	-248(%rbp), %r10
	movq	-256(%rbp), %r13
	addl	%eax, %edx
	subl	%eax, %r15d
	cmpl	-224(%rbp), %eax
	je	.L84
	movq	-208(%rbp), %rbx
	movslq	%edx, %rax
	leal	-1(%r15), %edi
	leaq	(%rax,%rbx), %rsi
	leaq	0(,%rsi,8), %rcx
	leaq	V(%rcx), %r8
	addq	$U, %rcx
	cmpl	$2, %edi
	jbe	.L103
	vmovsd	-8(%r8), %xmm6
	movl	%r15d, -156(%rbp)
	movslq	-136(%rbp), %rbx
	vmovsd	%xmm6, -128(%rbp)
	movslq	-144(%rbp), %rdi
	vmovsd	V(,%rsi,8), %xmm6
	vmovsd	.LC15(%rip), %xmm15
	vmovsd	%xmm6, -112(%rbp)
	vmovsd	-8(%rcx), %xmm6
	leaq	(%rbx,%rbx,4), %rcx
	movq	%rbx, -248(%rbp)
	movq	-264(%rbp), %rbx
	leaq	(%rcx,%rcx,4), %r9
	vmovsd	%xmm6, -56(%rbp)
	salq	$2, %r9
	vmovsd	U(,%rsi,8), %xmm6
	movslq	-160(%rbp), %rsi
	movq	%rdi, -256(%rbp)
	vmovsd	%xmm6, -64(%rbp)
	movq	-192(%rbp), %r12
	vmovsd	.LC23(%rip), %xmm6
	addq	%r9, %rbx
	vmovsd	.LC24(%rip), %xmm8
	movq	%rbx, %r15
	vmovsd	%xmm6, -72(%rbp)
	leaq	(%rsi,%rsi,4), %rcx
	vmovsd	.LC25(%rip), %xmm6
	leaq	(%rcx,%rcx,4), %r11
	movq	%rsi, -224(%rbp)
	movq	-200(%rbp), %rbx
	vmovaps	%xmm6, -176(%rbp)
	leaq	(%rdi,%rdi,4), %rcx
	salq	$2, %r11
	vmovsd	.LC4(%rip), %xmm6
	leaq	(%rcx,%rcx,4), %r14
	movq	%r11, -136(%rbp)
	vmovsd	%xmm6, -104(%rbp)
	salq	$2, %r14
	vmovsd	.LC26(%rip), %xmm6
	movq	%r14, -144(%rbp)
	movq	-120(%rbp), %r14
	vmovsd	%xmm6, -80(%rbp)
	vmovsd	.LC27(%rip), %xmm6
	vmovsd	%xmm6, -88(%rbp)
	movq	-152(%rbp), %r11
.L82:
	leaq	(%r15,%rax), %rcx
	vmovsd	V(,%rcx,8), %xmm2
	leaq	(%r9,%rax), %rdi
	vmovsd	U(,%rcx,8), %xmm5
	leal	1(%rdx), %esi
	vmulsd	-72(%rbp), %xmm2, %xmm0
	movslq	%esi, %rsi
	vmulsd	%xmm2, %xmm5, %xmm1
	leaq	(%r9,%rsi), %r8
	vmovsd	(%r10,%r8,8), %xmm4
	vmovsd	0(%r13,%r8,8), %xmm3
	vmulsd	%xmm2, %xmm1, %xmm1
	vmovsd	%xmm3, -96(%rbp)
	vsubsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%rbx,%rdi,8), %xmm0
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	movq	-136(%rbp), %r14
	addq	%rax, %r14
	addq	-144(%rbp), %rax
	vaddsd	(%r10,%r14,8), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm4, %xmm0, %xmm0
	vaddsd	-128(%rbp), %xmm0, %xmm6
	vmulsd	-112(%rbp), %xmm15, %xmm0
	vsubsd	%xmm0, %xmm6, %xmm6
	vmulsd	%xmm8, %xmm6, %xmm6
	vaddsd	%xmm6, %xmm1, %xmm6
	vmovapd	%xmm5, %xmm1
	vxorpd	.LC25(%rip), %xmm1, %xmm1
	vmulsd	%xmm2, %xmm1, %xmm1
	vmulsd	%xmm8, %xmm6, %xmm6
	vmulsd	%xmm2, %xmm1, %xmm0
	vmovsd	-104(%rbp), %xmm1
	vsubsd	%xmm5, %xmm1, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vaddsd	%xmm2, %xmm6, %xmm6
	vmovsd	%xmm6, V_next(,%rcx,8)
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	(%r12,%rdi,8), %xmm0
	vaddsd	(%r11,%rdi,8), %xmm0, %xmm0
	vaddsd	0(%r13,%r14,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm0
	leaq	(%r15,%rsi), %rax
	vmovsd	U(,%rax,8), %xmm6
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	-64(%rbp), %xmm15, %xmm3
	vaddsd	-56(%rbp), %xmm0, %xmm0
	vsubsd	%xmm3, %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmulsd	%xmm8, %xmm0, %xmm0
	vaddsd	%xmm5, %xmm0, %xmm0
	vmovsd	V(,%rax,8), %xmm5
	vmulsd	%xmm5, %xmm6, %xmm1
	vmovsd	%xmm0, U_next(,%rcx,8)
	leal	2(%rdx), %ecx
	addl	$3, %edx
	movslq	%ecx, %rcx
	leaq	(%r9,%rcx), %rdi
	vmovsd	0(%r13,%rdi,8), %xmm0
	vmulsd	%xmm5, %xmm1, %xmm1
	vmovsd	(%r10,%rdi,8), %xmm2
	vmovsd	%xmm0, -56(%rbp)
	vmulsd	-72(%rbp), %xmm5, %xmm0
	vsubsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%rbx,%r8,8), %xmm0
	movq	-120(%rbp), %r14
	vmovsd	%xmm2, -128(%rbp)
	vmulsd	-96(%rbp), %xmm15, %xmm3
	vaddsd	(%r14,%r8,8), %xmm0, %xmm0
	movq	-136(%rbp), %r14
	addq	%rsi, %r14
	addq	-144(%rbp), %rsi
	vaddsd	(%r10,%r14,8), %xmm0, %xmm0
	vaddsd	(%r10,%rsi,8), %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	-112(%rbp), %xmm0, %xmm2
	vmulsd	%xmm15, %xmm4, %xmm0
	vsubsd	%xmm0, %xmm2, %xmm2
	vmulsd	%xmm8, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm2
	vmovapd	%xmm6, %xmm1
	vxorpd	.LC25(%rip), %xmm1, %xmm1
	vmulsd	%xmm5, %xmm1, %xmm1
	vmulsd	%xmm8, %xmm2, %xmm2
	vmulsd	%xmm5, %xmm1, %xmm0
	vmovsd	-104(%rbp), %xmm1
	vsubsd	%xmm6, %xmm1, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vaddsd	%xmm5, %xmm2, %xmm2
	vmovsd	%xmm2, V_next(,%rax,8)
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	(%r12,%r8,8), %xmm0
	vaddsd	(%r11,%r8,8), %xmm0, %xmm0
	vaddsd	0(%r13,%r14,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rsi,8), %xmm0, %xmm0
	leaq	(%r15,%rcx), %rsi
	vaddsd	-56(%rbp), %xmm0, %xmm0
	vaddsd	-64(%rbp), %xmm0, %xmm0
	vmovsd	V(,%rsi,8), %xmm2
	vmovsd	U(,%rsi,8), %xmm5
	vsubsd	%xmm3, %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	movq	-120(%rbp), %r14
	vaddsd	%xmm0, %xmm1, %xmm0
	vmulsd	%xmm8, %xmm0, %xmm0
	vaddsd	%xmm6, %xmm0, %xmm0
	vmovsd	%xmm0, U_next(,%rax,8)
	movslq	%edx, %rax
	leaq	(%r9,%rax), %r8
	vmovsd	0(%r13,%r8,8), %xmm1
	vmovsd	(%r10,%r8,8), %xmm0
	vmovsd	%xmm1, -64(%rbp)
	vmulsd	%xmm2, %xmm5, %xmm1
	movq	-136(%rbp), %r8
	vmovapd	%xmm0, %xmm3
	vmovsd	%xmm0, -112(%rbp)
	vmulsd	-72(%rbp), %xmm2, %xmm0
	addq	%rcx, %r8
	vmulsd	%xmm2, %xmm1, %xmm1
	vsubsd	%xmm0, %xmm1, %xmm6
	vmovsd	(%rbx,%rdi,8), %xmm0
	vaddsd	(%r14,%rdi,8), %xmm0, %xmm0
	vaddsd	(%r10,%r8,8), %xmm0, %xmm0
	addq	-144(%rbp), %rcx
	vaddsd	(%r10,%rcx,8), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm4, %xmm1
	vmulsd	-128(%rbp), %xmm15, %xmm0
	vsubsd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm5, %xmm0
	vxorpd	.LC25(%rip), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vmulsd	%xmm8, %xmm1, %xmm1
	vmulsd	%xmm2, %xmm0, %xmm4
	vaddsd	%xmm1, %xmm6, %xmm1
	vmovsd	-104(%rbp), %xmm6
	vsubsd	%xmm5, %xmm6, %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmulsd	-56(%rbp), %xmm15, %xmm6
	vmulsd	%xmm8, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vmovsd	(%r12,%rdi,8), %xmm4
	vaddsd	(%r11,%rdi,8), %xmm4, %xmm4
	movl	-156(%rbp), %edi
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	0(%r13,%r8,8), %xmm4, %xmm4
	vaddsd	0(%r13,%rcx,8), %xmm4, %xmm4
	vmovsd	%xmm1, V_next(,%rsi,8)
	vaddsd	-64(%rbp), %xmm4, %xmm4
	vaddsd	-96(%rbp), %xmm4, %xmm3
	leal	-3(%rdi), %ecx
	movl	%ecx, -156(%rbp)
	vsubsd	%xmm6, %xmm3, %xmm3
	vmulsd	-88(%rbp), %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	%xmm8, %xmm0, %xmm0
	vaddsd	%xmm5, %xmm0, %xmm0
	vmovsd	%xmm0, U_next(,%rsi,8)
	leal	-4(%rdi), %esi
	cmpl	$2, %esi
	ja	.L82
.L86:
	leal	(%rdx,%rcx), %ebx
	vmovsd	-104(%rbp), %xmm6
	imulq	$10000, -288(%rbp), %r12
	movl	%ebx, -56(%rbp)
	movq	-248(%rbp), %rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	-224(%rbp), %rbx
	leaq	(%rcx,%rcx,4), %rdi
	salq	$2, %rdi
	addq	%rdi, %r12
	leaq	(%rbx,%rbx,4), %rcx
	movq	-256(%rbp), %rbx
	movq	%r12, -96(%rbp)
	leaq	(%rcx,%rcx,4), %rcx
	leaq	0(,%rcx,4), %r14
	leaq	(%rbx,%rbx,4), %rcx
	movq	-192(%rbp), %rbx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	0(,%rcx,4), %r15
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%r15, -104(%rbp)
	movq	-200(%rbp), %r15
	movq	%rbx, -64(%rbp)
	movq	%r12, %rbx
.L83:
	leaq	(%rbx,%rcx), %rsi
	movq	-104(%rbp), %r9
	vmovsd	V(,%rsi,8), %xmm3
	leaq	(%rdi,%rcx), %rdx
	vmovsd	U(,%rsi,8), %xmm4
	leal	1(%rax), %r8d
	subl	$1, %eax
	vmulsd	-72(%rbp), %xmm3, %xmm0
	cltq
	vmulsd	%xmm3, %xmm4, %xmm1
	movq	-120(%rbp), %rbx
	addq	%rdi, %rax
	leaq	(%r9,%rcx), %r11
	vmovapd	-176(%rbp), %xmm5
	vmulsd	(%r10,%rdx,8), %xmm15, %xmm2
	vxorpd	%xmm4, %xmm5, %xmm5
	movq	-64(%rbp), %r12
	vmulsd	%xmm3, %xmm1, %xmm1
	vsubsd	%xmm0, %xmm1, %xmm1
	vmovsd	(%r15,%rdx,8), %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	leaq	(%r14,%rcx), %rbx
	movslq	%r8d, %rcx
	leaq	(%rdi,%rcx), %r9
	vaddsd	(%r10,%rbx,8), %xmm0, %xmm0
	vaddsd	(%r10,%r11,8), %xmm0, %xmm0
	vaddsd	(%r10,%r9,8), %xmm0, %xmm0
	vaddsd	(%r10,%rax,8), %xmm0, %xmm0
	vsubsd	%xmm2, %xmm0, %xmm2
	vmulsd	%xmm8, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm2
	vmovapd	%xmm5, %xmm1
	vmulsd	%xmm3, %xmm1, %xmm1
	vmulsd	%xmm8, %xmm2, %xmm2
	vmulsd	%xmm3, %xmm1, %xmm0
	vsubsd	%xmm4, %xmm6, %xmm1
	vmulsd	-80(%rbp), %xmm1, %xmm1
	vaddsd	%xmm3, %xmm2, %xmm2
	vmovsd	%xmm2, V_next(,%rsi,8)
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	(%r12,%rdx,8), %xmm0
	movq	-152(%rbp), %r12
	vaddsd	(%r12,%rdx,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rbx,8), %xmm0, %xmm0
	vaddsd	0(%r13,%r11,8), %xmm0, %xmm0
	vaddsd	0(%r13,%r9,8), %xmm0, %xmm0
	vaddsd	0(%r13,%rax,8), %xmm0, %xmm5
	movl	%r8d, %eax
	vmulsd	0(%r13,%rdx,8), %xmm15, %xmm0
	vsubsd	%xmm0, %xmm5, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmulsd	%xmm8, %xmm0, %xmm0
	vaddsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, U_next(,%rsi,8)
	cmpl	-56(%rbp), %r8d
	je	.L84
	movq	-96(%rbp), %rbx
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L84:
	addq	$800, -184(%rbp)
	movl	-160(%rbp), %ebx
	movq	-184(%rbp), %rax
	addq	$800, -216(%rbp)
	addq	$800, -232(%rbp)
	addq	$100, -240(%rbp)
	addq	$100, -208(%rbp)
	movl	%ebx, -136(%rbp)
	cmpq	$78400, %rax
	jne	.L91
	addl	$1, -324(%rbp)
	movl	-324(%rbp), %eax
	addq	$80000, -192(%rbp)
	addq	$80000, -344(%rbp)
	addq	$10000, -336(%rbp)
	movq	-200(%rbp), %r10
	cmpl	$99, %eax
	jne	.L79
	vzeroupper
	addq	$320, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	.cfi_restore_state
	movl	$1, -156(%rbp)
	xorl	%edx, %edx
	movl	$98, -128(%rbp)
	movl	$98, -224(%rbp)
	movl	$24, -56(%rbp)
	movl	$96, -176(%rbp)
	jmp	.L88
.L103:
	movslq	-136(%rbp), %rbx
	movl	%r15d, %ecx
	vmovsd	.LC23(%rip), %xmm6
	vmovsd	.LC15(%rip), %xmm15
	vmovsd	.LC24(%rip), %xmm8
	vmovsd	%xmm6, -72(%rbp)
	vmovsd	.LC25(%rip), %xmm6
	movq	%rbx, -248(%rbp)
	movslq	-160(%rbp), %rbx
	vmovaps	%xmm6, -176(%rbp)
	vmovsd	.LC4(%rip), %xmm6
	vmovsd	%xmm6, -104(%rbp)
	vmovsd	.LC26(%rip), %xmm6
	movq	%rbx, -224(%rbp)
	movslq	-144(%rbp), %rbx
	vmovsd	%xmm6, -80(%rbp)
	vmovsd	.LC27(%rip), %xmm6
	vmovsd	%xmm6, -88(%rbp)
	movq	%rbx, -256(%rbp)
	jmp	.L86
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE28:
	.section	.text.startup
.LHOTE28:
	.comm	V_next,8000000,64
	.comm	U_next,8000000,64
	.comm	V,8000000,64
	.comm	U,8000000,64
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	4290772992
	.long	1105199103
	.align 8
.LC2:
	.long	2696277389
	.long	1051772663
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1079574528
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1070596096
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC8:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC9:
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.align 32
.LC10:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.align 32
.LC11:
	.long	0
	.long	1079574528
	.long	0
	.long	1079574528
	.long	0
	.long	1079574528
	.long	0
	.long	1079574528
	.align 32
.LC12:
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.align 32
.LC13:
	.long	0
	.long	1070596096
	.long	0
	.long	1070596096
	.long	0
	.long	1070596096
	.long	0
	.long	1070596096
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	0
	.long	1075314688
	.section	.rodata.cst32
	.align 32
.LC17:
	.long	171798692
	.long	1068540887
	.long	171798692
	.long	1068540887
	.long	171798692
	.long	1068540887
	.long	171798692
	.long	1068540887
	.align 32
.LC18:
	.long	0
	.long	1075314688
	.long	0
	.long	1075314688
	.long	0
	.long	1075314688
	.long	0
	.long	1075314688
	.align 32
.LC19:
	.long	2576980378
	.long	1069128089
	.long	2576980378
	.long	1069128089
	.long	2576980378
	.long	1069128089
	.long	2576980378
	.long	1069128089
	.align 32
.LC20:
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.align 32
.LC21:
	.long	3951369912
	.long	1066317905
	.long	3951369912
	.long	1066317905
	.long	3951369912
	.long	1066317905
	.long	3951369912
	.long	1066317905
	.align 32
.LC22:
	.long	2576980378
	.long	1070176665
	.long	2576980378
	.long	1070176665
	.long	2576980378
	.long	1070176665
	.long	2576980378
	.long	1070176665
	.section	.rodata.cst8
	.align 8
.LC23:
	.long	171798692
	.long	1068540887
	.align 8
.LC24:
	.long	2576980378
	.long	1069128089
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC25:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC26:
	.long	3951369912
	.long	1066317905
	.align 8
.LC27:
	.long	2576980378
	.long	1070176665
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits

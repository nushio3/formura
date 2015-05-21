	.file	"benchmark-2d-main.cpp"
	.text
	.p2align 4,,15
	.type	_ZL6secondv, @function
_ZL6secondv:
.LFB1296:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%esi, %esi
	movq	%rsp, %rdi
	call	gettimeofday
	movl	_ZZL6secondvE8base_sec(%rip), %eax
	movslq	_ZZL6secondvE9base_usec(%rip), %rdx
	testl	%eax, %eax
	jne	.L3
	testl	%edx, %edx
	je	.L9
.L3:
	movslq	%eax, %rcx
	movq	(%rsp), %rax
	subq	%rcx, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	movq	8(%rsp), %rax
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC1(%rip), %xmm0, %xmm0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	vaddsd	%xmm0, %xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	movq	(%rsp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	%eax, _ZZL6secondvE8base_sec(%rip)
	movq	8(%rsp), %rax
	movl	%eax, _ZZL6secondvE9base_usec(%rip)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1296:
	.size	_ZL6secondv, .-_ZL6secondv
	.section	.text.unlikely,"ax",@progbits
	.type	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.6, @function
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.6:
.LFB1440:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	popq	%rdx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1440:
	.size	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.6, .-_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.6
	.section	.text._ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev
	.type	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev, @function
_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev:
.LFB1334:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	$_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16, (%rdi)
	movq	72(%rdi), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L19
.L14:
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, (%rbx)
	leaq	56(%rbx), %rdi
	call	_ZNSt6localeD1Ev
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore_state
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L15
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L16:
	testl	%eax, %eax
	jg	.L14
	leaq	15(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L14
.L15:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L16
	.cfi_endproc
.LFE1334:
	.size	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev, .-_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev
	.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	.set	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev,_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev
	.section	.text._ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev,"axG",@progbits,_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev
	.type	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev, @function
_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev:
.LFB1336:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	$_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16, (%rdi)
	movq	72(%rdi), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L27
.L22:
	leaq	56(%rbx), %rdi
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, (%rbx)
	call	_ZNSt6localeD1Ev
	movq	%rbx, %rdi
	call	_ZdlPv
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L23
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L24:
	testl	%eax, %eax
	jg	.L22
	leaq	15(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L22
.L23:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L24
	.cfi_endproc
.LFE1336:
	.size	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev, .-_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev
	.text
	.p2align 4,,15
	.globl	_Z10initializev
	.type	_Z10initializev, @function
_Z10initializev:
.LFB1297:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	vxorpd	%xmm1, %xmm1, %xmm1
.L29:
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L35:
	movl	%r11d, %esi
	movl	%r9d, %eax
	movl	$0, -16(%rsp)
	orl	%r9d, %esi
	movl	$1, -12(%rsp)
	movl	$2, -8(%rsp)
	movl	$-3, -4(%rsp)
	je	.L36
	movl	%r11d, %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L32:
	movl	%eax, %r8d
	movl	%edx, %edi
	sarl	%edx
	andl	$1, %r8d
	andl	$1, %edi
	sarl	%eax
	leal	(%rdi,%r8,2), %edi
	movslq	%edi, %rdi
	movl	-16(%rsp,%rdi,4), %ebx
	imull	%ecx, %ebx
	addl	%ecx, %ecx
	addl	%ebx, %esi
	movl	%edx, %ebx
	orl	%eax, %ebx
	jne	.L32
	vcvtsi2sd	%esi, %xmm0, %xmm0
.L30:
	vmovsd	.LC2(%rip), %xmm2
	vmovsd	%xmm0, dens_initial(%r10,%r9,8)
	vmovsd	%xmm2, dens_final(%r10,%r9,8)
	addq	$1, %r9
	cmpq	$2048, %r9
	jne	.L35
	addl	$1, %r11d
	addq	$16384, %r10
	cmpl	$2048, %r11d
	jne	.L29
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
	vmovapd	%xmm1, %xmm0
	jmp	.L30
	.cfi_endproc
.LFE1297:
	.size	_Z10initializev, .-_Z10initializev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	" "
	.text
	.p2align 4,,15
	.globl	_Z4dumpPKc
	.type	_Z4dumpPKc, @function
_Z4dumpPKc:
.LFB1298:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1298
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$520, %rsp
	.cfi_def_cfa_offset 576
	leaq	248(%rsp), %rdi
	call	_ZNSt8ios_baseC2Ev
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+8(%rip), %rax
	xorl	%esi, %esi
	movb	$0, 472(%rsp)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 248(%rsp)
	movq	$0, 464(%rsp)
	movq	%rax, (%rsp)
	movq	-24(%rax), %rax
	movb	$0, 473(%rsp)
	movq	$0, 480(%rsp)
	movq	$0, 488(%rsp)
	movq	$0, 496(%rsp)
	leaq	(%rsp,%rax), %rdi
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+16(%rip), %rax
	movq	$0, 504(%rsp)
	movq	%rax, (%rdi)
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE0:
	leaq	8(%rsp), %rdi
	movq	$_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24, (%rsp)
	movq	$_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64, 248(%rsp)
.LEHB1:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE1:
	leaq	8(%rsp), %rsi
	leaq	248(%rsp), %rdi
.LEHB2:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	8(%rsp), %rdi
	movl	$48, %edx
	movq	%rbx, %rsi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	je	.L67
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE2:
.L42:
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L41:
	movq	%r15, %r13
	movl	%r15d, %r14d
	xorl	%ebx, %ebx
	salq	$14, %r13
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L70:
	movzbl	67(%rbp), %eax
.L48:
	movsbl	%al, %esi
	movq	%r12, %rdi
.LEHB3:
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	$1, %rbx
	cmpq	$2048, %rbx
	je	.L68
.L54:
	movl	%ebx, %esi
	movq	%rsp, %rdi
	movq	dens_final(%r13,%rbx,8), %r12
	call	_ZNSolsEi
	movl	$1, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	_ZNSolsEi
	movl	$1, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	vmovd	%r12, %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L69
	cmpb	$0, 56(%rbp)
	jne	.L70
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%rax)
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L68:
	movq	(%rsp), %rax
	movq	-24(%rax), %rax
	movq	240(%rsp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L71
	cmpb	$0, 56(%rbx)
	je	.L51
	movzbl	67(%rbx), %eax
.L52:
	movsbl	%al, %esi
	movq	%rsp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE3:
	addq	$1, %r15
	cmpq	$2048, %r15
	jne	.L41
	leaq	8(%rsp), %rdi
	movq	$_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24, (%rsp)
	movq	$_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64, 248(%rsp)
	movq	$_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16, 8(%rsp)
.LEHB4:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE4:
	leaq	112(%rsp), %rdi
.LEHB5:
	call	_ZNSt12__basic_fileIcED1Ev
.LEHE5:
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 8(%rsp)
	leaq	64(%rsp), %rdi
	call	_ZNSt6localeD1Ev
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+8(%rip), %rax
	leaq	248(%rsp), %rdi
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+16(%rip), %rcx
	movq	%rax, (%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, (%rsp,%rax)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 248(%rsp)
.LEHB6:
	call	_ZNSt8ios_baseD2Ev
.LEHE6:
	addq	$520, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	.cfi_restore_state
	movq	%rbx, %rdi
.LEHB7:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
	jmp	.L52
.L69:
	call	_ZSt16__throw_bad_castv
.LEHE7:
.L67:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB8:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE8:
	jmp	.L42
.L58:
	movq	%rax, %rbx
	movq	%rsp, %rdi
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L59:
	movq	%rax, %rbx
	vzeroupper
.L45:
	leaq	248(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 248(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume
.LEHE10:
.L60:
	vzeroupper
.L44:
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+8(%rip), %rcx
	movq	%rax, %rbx
	movq	%rcx, (%rsp)
	movq	-24(%rcx), %rdx
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+16(%rip), %rcx
	movq	%rcx, (%rsp,%rdx)
	jmp	.L45
.L61:
	leaq	8(%rsp), %rdi
	movq	%rax, %rbx
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	jmp	.L44
.L71:
.LEHB11:
	call	_ZSt16__throw_bad_castv
.LEHE11:
.L62:
	movq	%rax, %rbx
	vzeroupper
.L56:
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 8(%rsp)
	leaq	64(%rsp), %rdi
	call	_ZNSt6localeD1Ev
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+8(%rip), %rax
	leaq	248(%rsp), %rdi
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE+16(%rip), %rcx
	movq	%rax, (%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, (%rsp,%rax)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 248(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rbx, %rdi
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L63:
	leaq	112(%rsp), %rdi
	movq	%rax, %rbx
	vzeroupper
	call	_ZNSt12__basic_fileIcED1Ev
	jmp	.L56
	.cfi_endproc
.LFE1298:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1298:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1298-.LLSDACSB1298
.LLSDACSB1298:
	.uleb128 .LEHB0-.LFB1298
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L59-.LFB1298
	.uleb128 0
	.uleb128 .LEHB1-.LFB1298
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L60-.LFB1298
	.uleb128 0
	.uleb128 .LEHB2-.LFB1298
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L61-.LFB1298
	.uleb128 0
	.uleb128 .LEHB3-.LFB1298
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L58-.LFB1298
	.uleb128 0
	.uleb128 .LEHB4-.LFB1298
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L63-.LFB1298
	.uleb128 0
	.uleb128 .LEHB5-.LFB1298
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L62-.LFB1298
	.uleb128 0
	.uleb128 .LEHB6-.LFB1298
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1298
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L58-.LFB1298
	.uleb128 0
	.uleb128 .LEHB8-.LFB1298
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L61-.LFB1298
	.uleb128 0
	.uleb128 .LEHB9-.LFB1298
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB1298
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1298
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L58-.LFB1298
	.uleb128 0
	.uleb128 .LEHB12-.LFB1298
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE1298:
	.text
	.size	_Z4dumpPKc, .-_Z4dumpPKc
	.section	.text._Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,"axG",@progbits,_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,comdat
	.p2align 4,,15
	.weak	_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.type	_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, @function
_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_:
.LFB1327:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r10d, %r10d
	addq	$16896, %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	16896(%r8), %r11
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, -24(%rsp)
	xorl	%edi, %edi
	movl	%edx, -12(%rsp)
.L73:
	leaq	(%r9,%r10), %r8
	xorl	%eax, %eax
	leaq	work(%rdi), %rdx
	.p2align 4,,10
	.p2align 3
.L79:
	vmovsd	(%r8,%rax), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, -528(%rdx)
	vmovsd	8(%r8,%rax), %xmm0
	addq	$16, %rax
	vmovsd	%xmm0, -520(%rdx)
	cmpq	$1056, %rax
	jne	.L79
	leaq	(%r11,%r10), %rdx
	xorw	%ax, %ax
	.p2align 4,,10
	.p2align 3
.L76:
	vmovsd	(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work(%rdi,%rax)
	vmovsd	528(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work+528(%rdi,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L76
	addq	$1056, %r10
	addq	$34848, %rdi
	cmpq	$559680, %r10
	jne	.L73
	movl	-24(%rsp), %eax
	movl	$0, -4(%rsp)
	movl	$34848, %r15d
	movl	T_FINAL(%rip), %r13d
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	leal	1(%rax), %r14d
	movl	-12(%rsp), %eax
	leal	1(%rax), %ebx
	subl	%eax, %esi
	movl	%ebx, -64(%rsp)
	leaq	544(%rcx), %rbx
	movq	%rbx, -56(%rsp)
	movl	%esi, -8(%rsp)
.L78:
	movl	-4(%rsp), %eax
	movq	$-528, %r8
	movl	-64(%rsp), %ebx
	movl	%eax, -72(%rsp)
	movl	-8(%rsp), %eax
	addl	%ebx, %eax
	movl	$1056, %ebx
	movl	%eax, -80(%rsp)
	leaq	work-34832(%r15), %rax
	movq	%rax, -48(%rsp)
	leaq	work-34320(%r15), %rax
	movq	%rax, -40(%rsp)
	movl	$34848, %eax
	subq	%r15, %rax
	movq	%rax, -32(%rsp)
.L91:
	movq	-32(%rsp), %r11
	movq	$-528, %rbp
	movl	-80(%rsp), %r12d
	subq	%r8, %rbp
	movq	-40(%rsp), %rdi
	movq	-48(%rsp), %rax
	movq	-56(%rsp), %rcx
	leaq	(%rbx,%r11), %r9
	andl	$2047, %r12d
	movl	-64(%rsp), %esi
	addq	%r8, %r9
	subq	%r8, %rdi
	movl	-72(%rsp), %edx
	salq	$11, %r12
	subq	%r8, %rax
	subq	%r8, %rcx
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L123:
	vmovsd	(%rcx), %xmm0
.L83:
	leaq	(%r9,%rax), %r10
	cmpl	%r14d, %r13d
	vmovsd	%xmm0, (%r10,%r15)
	je	.L120
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$8, %rax
	subl	$1, %edx
	addl	$1, %esi
	addq	$8, %rcx
	cmpq	%rdi, %rax
	je	.L121
.L88:
	movl	%edx, %r10d
	sarl	$2, %r10d
	cmpl	$512, %r10d
	ja	.L81
	testl	%r14d, %r14d
	je	.L122
	testl	%r10d, %r10d
	je	.L123
#APP
# 52 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%rbx,%rax), %r11
	cmpl	%r14d, %r13d
	vmovsd	-8(%r11,%r8), %xmm0
	leaq	0(%rbp,%rax), %r10
	vaddsd	-8(%r10,%r8), %xmm0, %xmm0
	leaq	(%r9,%rax), %r10
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	vmovsd	%xmm0, (%r10,%r15)
	jne	.L81
.L120:
	movl	%esi, %r10d
	andl	$2047, %r10d
	addq	%r12, %r10
	vmovsd	%xmm0, dens_final(,%r10,8)
	jmp	.L81
.L121:
	subq	$528, %r8
	addq	$528, %rbx
	addl	$1, -80(%rsp)
	subl	$1, -72(%rsp)
	cmpq	$-34320, %r8
	jne	.L91
	subl	$1, -64(%rsp)
	addq	$34848, %r15
	addl	$1, %r14d
	addl	$4, -4(%rsp)
	cmpq	$1184832, %r15
	jne	.L78
	movl	-24(%rsp), %eax
	movl	$1184832, %r14d
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	leal	34(%rax), %ecx
	movl	-12(%rsp), %eax
	subl	$32, %eax
	movl	%eax, -80(%rsp)
.L90:
	movl	-80(%rsp), %r12d
	movl	$34848, %r15d
	movl	$1056, %ebx
	leaq	work-34832(%r14), %rax
	movq	$-528, %rsi
	subq	%r14, %r15
	movq	%rax, -64(%rsp)
	leaq	work-34320(%r14), %rax
	movq	%rax, -72(%rsp)
	addl	-8(%rsp), %r12d
	.p2align 4,,10
	.p2align 3
.L100:
	movq	-72(%rsp), %r8
	movl	%r12d, %r11d
	movq	$-528, %rbp
	movq	-64(%rsp), %rax
	andl	$2047, %r11d
	subq	%rsi, %rbp
	leaq	(%r15,%rbx), %rdi
	movl	-80(%rsp), %edx
	salq	$11, %r11
	addq	%rsi, %rdi
	subq	%rsi, %r8
	subq	%rsi, %rax
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L126:
	movl	%edx, %r9d
	andl	$2047, %r9d
	addq	%r11, %r9
	cmpl	%r13d, %ecx
	vmovsd	dens_initial(,%r9,8), %xmm0
	leaq	(%rdi,%rax), %r9
	vmovsd	%xmm0, (%r9,%r14)
	je	.L124
.L94:
	addq	$8, %rax
	addl	$1, %edx
	cmpq	%r8, %rax
	je	.L125
.L97:
	testl	%ecx, %ecx
	je	.L126
#APP
# 97 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%rax,%rbx), %r10
	cmpl	%r13d, %ecx
	vmovsd	-8(%r10,%rsi), %xmm0
	leaq	0(%rbp,%rax), %r9
	vaddsd	-8(%r9,%rsi), %xmm0, %xmm0
	leaq	(%rdi,%rax), %r9
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%r14)
	jne	.L94
.L124:
	movl	%edx, %r9d
	addq	$8, %rax
	addl	$1, %edx
	andl	$2047, %r9d
	addq	%r11, %r9
	cmpq	%r8, %rax
	vmovsd	%xmm0, dens_final(,%r9,8)
	jne	.L97
.L125:
	subq	$528, %rsi
	addq	$528, %rbx
	addl	$1, %r12d
	cmpq	$-34320, %rsi
	jne	.L100
	subl	$1, -80(%rsp)
	addq	$34848, %r14
	addl	$1, %ecx
	cmpq	$17911872, %r14
	jne	.L90
	movl	-12(%rsp), %eax
	movl	$17911872, %r15d
	movl	$2052, -12(%rsp)
	movl	-24(%rsp), %r14d
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	subl	$512, %eax
	movl	%eax, -56(%rsp)
	movq	56(%rsp), %rax
	addl	$514, %r14d
	addq	$544, %rax
	movq	%rax, -32(%rsp)
.L99:
	movl	-12(%rsp), %eax
	movl	$1056, %r12d
	movq	$-528, %r9
	movl	-8(%rsp), %ebx
	movl	%eax, -64(%rsp)
	movl	-56(%rsp), %eax
	addl	%ebx, %eax
	movl	%eax, -72(%rsp)
	leaq	work-34832(%r15), %rax
	movq	%rax, -40(%rsp)
	leaq	work-34320(%r15), %rax
	movq	%rax, -48(%rsp)
	movl	$34848, %eax
	subq	%r15, %rax
	movq	%rax, -24(%rsp)
.L112:
	movq	-24(%rsp), %rbx
	movl	-72(%rsp), %ebp
	movq	-48(%rsp), %r8
	movq	-40(%rsp), %rax
	movq	-32(%rsp), %rdi
	leaq	(%r9,%rbx), %r10
	movq	$-528, %rbx
	andl	$2047, %ebp
	subq	%r9, %rbx
	movl	-56(%rsp), %esi
	subq	%r9, %r8
	movl	-64(%rsp), %edx
	addq	%r12, %r10
	subq	%r9, %rax
	salq	$11, %rbp
	movq	%rbx, -80(%rsp)
	subq	%r9, %rdi
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L129:
	movl	%esi, %r11d
	andl	$2047, %r11d
	addq	%rbp, %r11
	vmovsd	dens_initial(,%r11,8), %xmm0
.L104:
	leaq	(%r10,%rax), %r11
	cmpl	$512, %ecx
	vmovsd	%xmm0, (%r11,%r15)
	jne	.L105
	vmovsd	%xmm0, (%rdi)
.L105:
	cmpl	%r13d, %r14d
	je	.L127
.L102:
	addq	$8, %rax
	subl	$1, %edx
	addl	$1, %esi
	addq	$8, %rdi
	cmpq	%r8, %rax
	je	.L128
.L109:
	movl	%edx, %ecx
	sarl	$2, %ecx
	cmpl	$512, %ecx
	ja	.L102
	testl	%r14d, %r14d
	je	.L129
#APP
# 123 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	movq	-80(%rsp), %r11
	leaq	(%rax,%r12), %rbx
	vmovsd	-8(%rbx,%r9), %xmm0
	addq	%rax, %r11
	vaddsd	-8(%r11,%r9), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	jmp	.L104
.L122:
	movl	%esi, %r10d
	andl	$2047, %r10d
	addq	%r12, %r10
	vmovsd	dens_initial(,%r10,8), %xmm0
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L127:
	movl	%esi, %ecx
	andl	$2047, %ecx
	addq	%rbp, %rcx
	vmovsd	%xmm0, dens_final(,%rcx,8)
	jmp	.L102
.L128:
	subq	$528, %r9
	addq	$528, %r12
	addl	$1, -72(%rsp)
	subl	$1, -64(%rsp)
	cmpq	$-34320, %r9
	jne	.L112
	subl	$1, -56(%rsp)
	addq	$34848, %r15
	addl	$1, %r14d
	addl	$4, -12(%rsp)
	cmpq	$19027008, %r15
	jne	.L99
	xorl	%edi, %edi
	xorl	%ecx, %ecx
.L111:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	addq	64(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L117:
	vmovsd	work+33792(%rcx,%rax), %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	vmovsd	work+34320(%rcx,%rax), %xmm0
	vmovsd	%xmm0, 528(%rdx,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L117
	leaq	work+512(%rcx), %rdx
	movq	%rdi, %rsi
	xorw	%ax, %ax
	addq	72(%rsp), %rsi
	.p2align 4,,10
	.p2align 3
.L115:
	vmovsd	(%rdx), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, (%rsi,%rax)
	vmovsd	-520(%rdx), %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$16, %rax
	cmpq	$1056, %rax
	jne	.L115
	addq	$34848, %rcx
	addq	$1056, %rdi
	cmpq	$19027008, %rcx
	jne	.L111
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1327:
	.size	_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, .-_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.section	.text._Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,"axG",@progbits,_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,comdat
	.p2align 4,,15
	.weak	_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.type	_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, @function
_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_:
.LFB1329:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r10d, %r10d
	addq	$16896, %r8
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	addq	$16896, %r9
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, -8(%rsp)
	xorl	%esi, %esi
	movl	%edi, -12(%rsp)
	movl	%edx, -16(%rsp)
.L131:
	leaq	(%r9,%r10), %rdi
	xorl	%eax, %eax
	leaq	work(%rsi), %rdx
	.p2align 4,,10
	.p2align 3
.L137:
	vmovsd	(%rdi,%rax), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, -528(%rdx)
	vmovsd	8(%rdi,%rax), %xmm0
	addq	$16, %rax
	vmovsd	%xmm0, -520(%rdx)
	cmpq	$1056, %rax
	jne	.L137
	leaq	(%r8,%r10), %rdx
	xorw	%ax, %ax
	.p2align 4,,10
	.p2align 3
.L134:
	vmovsd	(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work(%rsi,%rax)
	vmovsd	528(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work+528(%rsi,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L134
	addq	$1056, %r10
	addq	$34848, %rsi
	cmpq	$559680, %r10
	jne	.L131
	movl	-16(%rsp), %eax
	movl	$34848, %r15d
	movl	$1, %r14d
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	addl	$2, %eax
	movl	%eax, -4(%rsp)
	leaq	544(%rcx), %rax
	movq	%rax, -56(%rsp)
.L136:
	leal	-2(,%r14,4), %eax
	movl	$1056, %ebx
	movl	$2, %r12d
	movl	%eax, -64(%rsp)
	movl	-4(%rsp), %eax
	movq	$-528, %r11
	movq	%r11, %rbp
	subl	%r14d, %eax
	movl	%eax, -24(%rsp)
	leaq	work-34832(%r15), %rax
	movq	%rax, -48(%rsp)
	leaq	work-34320(%r15), %rax
	movq	%rax, -40(%rsp)
	movl	-12(%rsp), %eax
	leal	(%r14,%rax), %r10d
	movl	$34848, %eax
	subq	%r15, %rax
	movq	%rax, -32(%rsp)
	movl	-8(%rsp), %eax
	subl	%r14d, %eax
	movl	%eax, -20(%rsp)
.L147:
	movq	-32(%rsp), %rcx
	movq	-40(%rsp), %r8
	movq	-48(%rsp), %rax
	movq	-56(%rsp), %rsi
	leaq	(%rbx,%rcx), %r9
	movl	-20(%rsp), %ecx
	movl	-64(%rsp), %edx
	subq	%r11, %r8
	addq	%r11, %r9
	subq	%r11, %rax
	movl	-24(%rsp), %edi
	subq	%r11, %rsi
	leal	(%rcx,%r12), %r13d
	andl	$2047, %r13d
	subl	%r12d, %edx
	salq	$11, %r13
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L176:
	vmovsd	(%rsi), %xmm0
.L140:
	leaq	(%r9,%rax), %rcx
	vmovsd	%xmm0, (%rcx,%r15)
.L138:
	addq	$8, %rax
	subl	$1, %edx
	addl	$1, %edi
	addq	$8, %rsi
	cmpq	%r8, %rax
	je	.L174
.L144:
	movl	%edx, %ecx
	sarl	$2, %ecx
	cmpl	$512, %ecx
	ja	.L138
	testl	%r10d, %r10d
	je	.L175
	testl	%ecx, %ecx
	je	.L176
#APP
# 52 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%rax,%rbx), %rcx
	vmovsd	-8(%rcx,%r11), %xmm0
	vaddsd	-8(%rax,%rbp), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	jmp	.L140
.L174:
	addl	$1, %r12d
	addq	$528, %rbx
	subq	$528, %r11
	cmpl	$66, %r12d
	jne	.L147
	addl	$1, %r14d
	addq	$34848, %r15
	cmpl	$34, %r14d
	jne	.L136
	movl	-12(%rsp), %ebx
	movl	$1184832, %r13d
	movl	-16(%rsp), %eax
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	leal	34(%rbx), %r14d
	movl	-8(%rsp), %ebx
	leal	-32(%rax), %r15d
	subl	%eax, %ebx
	movl	%ebx, -24(%rsp)
.L146:
	movl	-24(%rsp), %eax
	movl	$34848, %r12d
	movl	$1056, %r10d
	movq	$-528, %rcx
	subq	%r13, %r12
	leal	(%rax,%r15), %ebp
	leaq	work-34832(%r13), %rax
	movq	%rax, -56(%rsp)
	leaq	work-34320(%r13), %rax
	movq	%rax, -64(%rsp)
	.p2align 4,,10
	.p2align 3
.L155:
	movq	-64(%rsp), %rdi
	movl	%ebp, %r11d
	movq	$-528, %rbx
	movq	-56(%rsp), %rax
	andl	$2047, %r11d
	movl	%r15d, %edx
	leaq	(%r12,%rcx), %rsi
	subq	%rcx, %rbx
	salq	$11, %r11
	addq	%r10, %rsi
	subq	%rcx, %rdi
	subq	%rcx, %rax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L178:
	movl	%edx, %r8d
	andl	$2047, %r8d
	addq	%r11, %r8
	vmovsd	dens_initial(,%r8,8), %xmm0
.L149:
	leaq	(%rsi,%rax), %r8
	addq	$8, %rax
	addl	$1, %edx
	cmpq	%rdi, %rax
	vmovsd	%xmm0, (%r8,%r13)
	je	.L177
.L152:
	testl	%r14d, %r14d
	je	.L178
#APP
# 97 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%r10,%rax), %r9
	vmovsd	-8(%r9,%rcx), %xmm0
	leaq	(%rbx,%rax), %r8
	vaddsd	-8(%r8,%rcx), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	jmp	.L149
.L175:
	movl	%edi, %ecx
	andl	$2047, %ecx
	addq	%r13, %rcx
	vmovsd	dens_initial(,%rcx,8), %xmm0
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L177:
	subq	$528, %rcx
	addq	$528, %r10
	addl	$1, %ebp
	cmpq	$-34320, %rcx
	jne	.L155
	addq	$34848, %r13
	subl	$1, %r15d
	addl	$1, %r14d
	cmpq	$17911872, %r13
	jne	.L146
	movq	56(%rsp), %rax
	movl	$17911872, %r15d
	movl	$514, -16(%rsp)
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	addq	$544, %rax
	movq	%rax, -48(%rsp)
.L154:
	movl	-16(%rsp), %eax
	movq	$-528, %rbx
	movl	$1056, %ebp
	movl	-12(%rsp), %r11d
	movl	$2, %r14d
	movq	%rbx, %r13
	leal	-2(,%rax,4), %edi
	movl	%edi, -24(%rsp)
	leaq	work-34832(%r15), %rdi
	addl	%eax, %r11d
	movq	%rdi, -56(%rsp)
	leaq	work-34320(%r15), %rdi
	movq	%rdi, -64(%rsp)
	movl	-4(%rsp), %edi
	subl	%eax, %edi
	movl	%edi, -40(%rsp)
	movl	$34848, %edi
	subq	%r15, %rdi
	movq	%rdi, -32(%rsp)
	movl	-8(%rsp), %edi
	subl	%eax, %edi
	movl	%edi, -20(%rsp)
.L166:
	movq	-32(%rsp), %rcx
	movq	-64(%rsp), %r8
	movq	-56(%rsp), %rax
	movq	-48(%rsp), %rsi
	leaq	(%rcx,%rbx), %r10
	movl	-20(%rsp), %ecx
	movl	-24(%rsp), %edx
	subq	%rbx, %r8
	addq	%rbp, %r10
	subq	%rbx, %rax
	movl	-40(%rsp), %edi
	subq	%rbx, %rsi
	leal	(%rcx,%r14), %r12d
	andl	$2047, %r12d
	subl	%r14d, %edx
	salq	$11, %r12
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L180:
	movl	%edi, %r9d
	andl	$2047, %r9d
	addq	%r12, %r9
	vmovsd	dens_initial(,%r9,8), %xmm0
.L159:
	leaq	(%r10,%rax), %r9
	cmpl	$512, %ecx
	vmovsd	%xmm0, (%r9,%r15)
	jne	.L157
	vmovsd	%xmm0, (%rsi)
.L157:
	addq	$8, %rax
	subl	$1, %edx
	addq	$8, %rsi
	addl	$1, %edi
	cmpq	%r8, %rax
	je	.L179
.L163:
	movl	%edx, %ecx
	sarl	$2, %ecx
	cmpl	$512, %ecx
	ja	.L157
	testl	%r11d, %r11d
	je	.L180
#APP
# 123 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%rax,%rbp), %r9
	vmovsd	-8(%r9,%rbx), %xmm0
	vaddsd	-8(%rax,%r13), %xmm0, %xmm0
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	jmp	.L159
.L179:
	addl	$1, %r14d
	subq	$528, %rbx
	addq	$528, %rbp
	cmpl	$66, %r14d
	jne	.L166
	addl	$1, -16(%rsp)
	addq	$34848, %r15
	cmpl	$546, -16(%rsp)
	jne	.L154
	xorl	%edi, %edi
	xorl	%ecx, %ecx
.L165:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	addq	64(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L171:
	vmovsd	work+33792(%rcx,%rax), %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	vmovsd	work+34320(%rcx,%rax), %xmm0
	vmovsd	%xmm0, 528(%rdx,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L171
	leaq	work+512(%rcx), %rdx
	movq	%rdi, %rsi
	xorw	%ax, %ax
	addq	72(%rsp), %rsi
	.p2align 4,,10
	.p2align 3
.L169:
	vmovsd	(%rdx), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, (%rsi,%rax)
	vmovsd	-520(%rdx), %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$16, %rax
	cmpq	$1056, %rax
	jne	.L169
	addq	$34848, %rcx
	addq	$1056, %rdi
	cmpq	$19027008, %rcx
	jne	.L165
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1329:
	.size	_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, .-_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.section	.text._Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,"axG",@progbits,_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,comdat
	.p2align 4,,15
	.weak	_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.type	_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, @function
_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_:
.LFB1330:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r10d, %r10d
	addq	$16896, %r8
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	addq	$16896, %r9
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, -8(%rsp)
	xorl	%esi, %esi
	movl	%edi, -12(%rsp)
	movl	%edx, -20(%rsp)
.L182:
	leaq	(%r9,%r10), %rdi
	xorl	%eax, %eax
	leaq	work(%rsi), %rdx
	.p2align 4,,10
	.p2align 3
.L188:
	vmovsd	(%rdi,%rax), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, -528(%rdx)
	vmovsd	8(%rdi,%rax), %xmm0
	addq	$16, %rax
	vmovsd	%xmm0, -520(%rdx)
	cmpq	$1056, %rax
	jne	.L188
	leaq	(%r8,%r10), %rdx
	xorw	%ax, %ax
	.p2align 4,,10
	.p2align 3
.L185:
	vmovsd	(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work(%rsi,%rax)
	vmovsd	528(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work+528(%rsi,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L185
	addq	$1056, %r10
	addq	$34848, %rsi
	cmpq	$559680, %r10
	jne	.L182
	movl	-20(%rsp), %eax
	movl	$34848, %r13d
	movl	$528, %r15d
	movl	T_FINAL(%rip), %r14d
	movl	$1, -24(%rsp)
	vmovsd	.LC4(%rip), %xmm1
	vmovsd	.LC5(%rip), %xmm2
	addl	$2, %eax
	movl	%eax, -4(%rsp)
	leaq	544(%rcx), %rax
	movq	%rax, -64(%rsp)
.L187:
	movl	-24(%rsp), %eax
	movl	$35376, %r10d
	movl	$2, %r12d
	movl	-12(%rsp), %r9d
	movq	$-528, %r11
	subq	%r13, %r10
	leal	-2(,%rax,4), %ebx
	movl	%ebx, -72(%rsp)
	movl	-4(%rsp), %ebx
	addl	%eax, %r9d
	subl	%eax, %ebx
	movl	%ebx, -56(%rsp)
	leaq	work-34832(%r13), %rbx
	movq	%rbx, -48(%rsp)
	leaq	work-34320(%r13), %rbx
	movq	%rbx, -40(%rsp)
	movl	-8(%rsp), %ebx
	subl	%eax, %ebx
	movl	%ebx, -32(%rsp)
.L199:
	movl	-32(%rsp), %ebx
	movq	-40(%rsp), %r8
	movq	-64(%rsp), %rsi
	movq	-48(%rsp), %rax
	movl	-72(%rsp), %edx
	leal	(%rbx,%r12), %ebp
	movq	$-528, %rbx
	andl	$2047, %ebp
	subq	%r11, %r8
	movl	-56(%rsp), %edi
	subq	%r11, %rsi
	salq	$11, %rbp
	subq	%r11, %rbx
	subq	%r11, %rax
	subl	%r12d, %edx
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L226:
	vmovsd	(%rsi), %xmm0
	leaq	(%r10,%rax), %rcx
	cmpl	%r14d, %r9d
	vmovsd	%xmm0, (%rcx,%r13)
	je	.L224
	.p2align 4,,10
	.p2align 3
.L190:
	addq	$8, %rax
	subl	$1, %edx
	addl	$1, %edi
	addq	$8, %rsi
	cmpq	%r8, %rax
	je	.L225
.L196:
	movl	%edx, %ecx
	sarl	$2, %ecx
	cmpl	$512, %ecx
	ja	.L190
	testl	%ecx, %ecx
	je	.L226
#APP
# 52 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	vmovsd	-8(%rax,%r15), %xmm0
	leaq	(%rbx,%rax), %rcx
	cmpl	%r14d, %r9d
	vaddsd	-8(%rcx,%r11), %xmm0, %xmm0
	leaq	(%r10,%rax), %rcx
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm2, %xmm0
	vmovsd	%xmm0, (%rcx,%r13)
	jne	.L190
.L224:
	movl	%edi, %ecx
	andl	$2047, %ecx
	addq	%rbp, %rcx
	vmovsd	%xmm0, dens_final(,%rcx,8)
	jmp	.L190
.L225:
	addl	$1, %r12d
	subq	$528, %r11
	cmpl	$66, %r12d
	jne	.L199
	addl	$1, -24(%rsp)
	addq	$34848, %r13
	cmpl	$34, -24(%rsp)
	jne	.L187
	movl	-20(%rsp), %eax
	movl	$1149984, %r13d
	leal	-32(%rax), %ebx
	movl	%ebx, -72(%rsp)
	movl	-12(%rsp), %ebx
	leal	34(%rbx), %r15d
	movl	-8(%rsp), %ebx
	subl	%eax, %ebx
	movl	%ebx, -48(%rsp)
.L198:
	movl	-48(%rsp), %r12d
	leaq	work+8(%r13), %rax
	movq	$-528, %rcx
	movq	%rax, -64(%rsp)
	leaq	work+520(%r13), %rax
	movl	$1056, %r8d
	leaq	34848(%r13), %rbx
	movq	%rax, -56(%rsp)
	addl	-72(%rsp), %r12d
	.p2align 4,,10
	.p2align 3
.L206:
	movq	-56(%rsp), %r11
	movl	%r12d, %ebp
	movq	$-528, %r10
	movq	-64(%rsp), %rax
	leaq	(%rcx,%r8), %r9
	andl	$2047, %ebp
	movl	-72(%rsp), %edx
	subq	%rcx, %r10
	subq	%r13, %r9
	salq	$11, %rbp
	subq	%rcx, %r11
	subq	%rcx, %rax
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L200:
	addq	$8, %rax
	addl	$1, %edx
	cmpq	%r11, %rax
	je	.L227
.L203:
#APP
# 97 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%r8,%rax), %rdi
	cmpl	%r14d, %r15d
	vmovsd	(%rdi,%rcx), %xmm0
	leaq	(%r10,%rax), %rsi
	vaddsd	(%rsi,%rcx), %xmm0, %xmm0
	leaq	(%r9,%rax), %rsi
	vaddsd	-8(%rax), %xmm0, %xmm0
	vaddsd	8(%rax), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vfmadd231sd	(%rax), %xmm2, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rbx)
	jne	.L200
	movl	%edx, %esi
	addq	$8, %rax
	addl	$1, %edx
	andl	$2047, %esi
	addq	%rbp, %rsi
	cmpq	%r11, %rax
	vmovsd	%xmm0, dens_final(,%rsi,8)
	jne	.L203
.L227:
	subq	$528, %rcx
	addq	$528, %r8
	addl	$1, %r12d
	cmpq	$-34320, %rcx
	jne	.L206
	subl	$1, -72(%rsp)
	addl	$1, %r15d
	cmpq	$17877024, %rbx
	je	.L228
	movq	%rbx, %r13
	jmp	.L198
.L228:
	movq	56(%rsp), %rax
	movl	$17911872, %r15d
	movl	$514, -16(%rsp)
	addq	$544, %rax
	movq	%rax, -32(%rsp)
.L205:
	movl	-16(%rsp), %eax
	movl	$35376, %r12d
	movq	$-528, %r8
	movl	-12(%rsp), %r13d
	movl	$2, -64(%rsp)
	subq	%r15, %r12
	leal	-2(,%rax,4), %ebx
	movl	%ebx, -56(%rsp)
	leaq	work-34832(%r15), %rbx
	addl	%eax, %r13d
	movq	%rbx, -48(%rsp)
	leaq	work-34320(%r15), %rbx
	movq	%rbx, -40(%rsp)
	movl	-4(%rsp), %ebx
	subl	%eax, %ebx
	movl	%ebx, -24(%rsp)
	movl	-8(%rsp), %ebx
	subl	%eax, %ebx
	movl	%ebx, -20(%rsp)
.L216:
	movl	-64(%rsp), %ecx
	movl	$528, %ebp
	movq	$-528, %rbx
	movl	-56(%rsp), %edx
	subq	%r8, %rbp
	subq	%r8, %rbx
	movq	-40(%rsp), %r9
	movq	-32(%rsp), %rsi
	movq	-48(%rsp), %rax
	subl	%ecx, %edx
	addl	-20(%rsp), %ecx
	subq	%r8, %r9
	movl	-24(%rsp), %edi
	subq	%r8, %rsi
	subq	%r8, %rax
	movl	%ecx, %r11d
	andl	$2047, %r11d
	movq	%r11, -72(%rsp)
	salq	$11, -72(%rsp)
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L208:
	addq	$8, %rax
	subl	$1, %edx
	addl	$1, %edi
	addq	$8, %rsi
	cmpq	%rax, %r9
	je	.L229
.L213:
	movl	%edx, %ecx
	sarl	$2, %ecx
	cmpl	$512, %ecx
	ja	.L208
#APP
# 123 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	0(%rbp,%rax), %r11
	cmpl	$512, %ecx
	vmovsd	-8(%r11,%r8), %xmm0
	leaq	(%rbx,%rax), %r10
	vaddsd	-8(%r10,%r8), %xmm0, %xmm0
	leaq	(%r12,%rax), %r10
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm2, %xmm0
	vmovsd	%xmm0, (%r10,%r15)
	jne	.L209
	vmovsd	%xmm0, (%rsi)
.L209:
	cmpl	%r14d, %r13d
	jne	.L208
	movl	%edi, %ecx
	andl	$2047, %ecx
	addq	-72(%rsp), %rcx
	vmovsd	%xmm0, dens_final(,%rcx,8)
	jmp	.L208
.L229:
	addl	$1, -64(%rsp)
	subq	$528, %r8
	cmpl	$66, -64(%rsp)
	jne	.L216
	addl	$1, -16(%rsp)
	addq	$34848, %r15
	cmpl	$546, -16(%rsp)
	jne	.L205
	xorl	%edi, %edi
	xorl	%ecx, %ecx
.L215:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	addq	64(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L221:
	vmovsd	work+33792(%rcx,%rax), %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	vmovsd	work+34320(%rcx,%rax), %xmm0
	vmovsd	%xmm0, 528(%rdx,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L221
	leaq	work+512(%rcx), %rdx
	movq	%rdi, %rsi
	xorw	%ax, %ax
	addq	72(%rsp), %rsi
	.p2align 4,,10
	.p2align 3
.L219:
	vmovsd	(%rdx), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, (%rsi,%rax)
	vmovsd	-520(%rdx), %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$16, %rax
	cmpq	$1056, %rax
	jne	.L219
	addq	$34848, %rcx
	addq	$1056, %rdi
	cmpq	$19027008, %rcx
	jne	.L215
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1330:
	.size	_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, .-_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.section	.text._Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,"axG",@progbits,_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_,comdat
	.p2align 4,,15
	.weak	_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.type	_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, @function
_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_:
.LFB1331:
	.cfi_startproc
	xorl	%esi, %esi
	xorl	%r10d, %r10d
	addq	$16896, %r8
	addq	$16896, %r9
.L231:
	leaq	(%r9,%r10), %rdi
	xorl	%eax, %eax
	leaq	work(%rsi), %rdx
	.p2align 4,,10
	.p2align 3
.L237:
	vmovsd	(%rdi,%rax), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, -528(%rdx)
	vmovsd	8(%rdi,%rax), %xmm0
	addq	$16, %rax
	vmovsd	%xmm0, -520(%rdx)
	cmpq	$1056, %rax
	jne	.L237
	leaq	(%r8,%r10), %rdx
	xorw	%ax, %ax
	.p2align 4,,10
	.p2align 3
.L234:
	vmovsd	(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work(%rsi,%rax)
	vmovsd	528(%rdx,%rax), %xmm0
	vmovsd	%xmm0, work+528(%rsi,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L234
	addq	$1056, %r10
	addq	$34848, %rsi
	cmpq	$559680, %r10
	jne	.L231
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	544(%rcx), %rax
	movl	$34848, %r9d
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	movl	$-128, %r13d
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	addq	$8, %rsp
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rax, -16(%rsp)
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
.L236:
	leal	64(%r13), %esi
	movl	$34848, %r14d
	movl	$1056, %ebx
	movq	$-528, %rdi
	subq	%r9, %r14
	leaq	work-34832(%r9), %r15
	.p2align 4,,10
	.p2align 3
.L246:
	movq	-16(%rsp), %rcx
	movq	%r15, %rdx
	movq	$-528, %r12
	leaq	(%rdi,%r14), %r8
	subq	%rdi, %rdx
	subq	%rdi, %r12
	leal	64(%rsi), %eax
	addq	%rbx, %r8
	subq	%rdi, %rcx
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L270:
	vmovsd	(%rcx), %xmm0
.L240:
	leaq	(%r8,%rdx), %r10
	vmovsd	%xmm0, (%r10,%r9)
.L238:
	subl	$1, %eax
	addq	$8, %rdx
	addq	$8, %rcx
	cmpl	%eax, %esi
	je	.L269
.L243:
	movl	%eax, %r10d
	sarl	$2, %r10d
	cmpl	$512, %r10d
	ja	.L238
	testl	%r10d, %r10d
	je	.L270
#APP
# 52 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%rbx,%rdx), %r11
	vmovsd	-8(%r11,%rdi), %xmm0
	leaq	(%r12,%rdx), %r10
	vaddsd	-8(%r10,%rdi), %xmm0, %xmm0
	vaddsd	-16(%rdx), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rdx), %xmm1, %xmm0
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L269:
	subl	$1, %esi
	subq	$528, %rdi
	addq	$528, %rbx
	cmpl	%r13d, %esi
	jne	.L246
	leal	4(%rsi), %r13d
	addq	$34848, %r9
	cmpl	$4, %r13d
	jne	.L236
	vmovapd	.LC6(%rip), %ymm2
	movl	$1184832, %r13d
	vmovapd	.LC7(%rip), %ymm1
.L245:
	movq	$-528, %rdi
	movl	$1056, %ecx
	leaq	work-34840(%r13), %r12
	movq	%rdi, %r11
	leaq	work-34328(%r13), %rbx
	.p2align 4,,10
	.p2align 3
.L252:
	movq	%rbx, %r10
	movq	%r12, %rax
	movq	%r11, %r8
	subq	%rdi, %r10
	subq	%rdi, %rax
	subq	%rdi, %r8
	leaq	34848(%rdi), %r9
	.p2align 4,,10
	.p2align 3
.L249:
#APP
# 72 "body.cpp" 1
	#central kernel
# 0 "" 2
#NO_APP
	leaq	(%rdi,%rax), %rdx
	vmovupd	(%rdx,%r8), %ymm0
	leaq	(%r9,%rax), %rsi
	addq	$32, %rax
	vaddpd	(%rdx,%rcx), %ymm0, %ymm0
	vaddpd	-40(%rax), %ymm0, %ymm0
	vaddpd	-24(%rax), %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vfmadd231pd	-32(%rax), %ymm1, %ymm0
	cmpq	%r10, %rax
	vmovupd	%ymm0, 8(%rsi,%rcx)
	jne	.L249
	subq	$528, %rdi
	addq	$528, %rcx
	cmpq	$-34320, %rdi
	jne	.L252
	addq	$34848, %r13
	cmpq	$17911872, %r13
	jne	.L245
	movq	16(%rbp), %rax
	movl	$17911872, %r15d
	movl	$1924, %r14d
	vmovsd	.LC4(%rip), %xmm2
	vmovsd	.LC5(%rip), %xmm1
	addq	$544, %rax
	movq	%rax, -24(%rsp)
.L251:
	leal	64(%r14), %r8d
	movl	$34848, %r13d
	movl	$1056, %r11d
	leaq	work-34832(%r15), %rax
	movq	$-528, %rdi
	subq	%r15, %r13
	movq	%rax, -16(%rsp)
	.p2align 4,,10
	.p2align 3
.L261:
	movq	-16(%rsp), %rax
	leaq	(%rdi,%r13), %rbx
	movq	$-528, %r12
	movq	-24(%rsp), %rsi
	leal	64(%r8), %edx
	subq	%rdi, %r12
	addq	%r11, %rbx
	subq	%rdi, %rax
	subq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L258:
	movl	%edx, %ecx
	sarl	$2, %ecx
	cmpl	$512, %ecx
	ja	.L254
#APP
# 123 "body.cpp" 1
	#kernel
# 0 "" 2
#NO_APP
	leaq	(%r11,%rax), %r10
	cmpl	$512, %ecx
	vmovsd	-8(%r10,%rdi), %xmm0
	leaq	(%r12,%rax), %r9
	vaddsd	-8(%r9,%rdi), %xmm0, %xmm0
	leaq	(%rbx,%rax), %r9
	vaddsd	-16(%rax), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vfmadd231sd	-8(%rax), %xmm1, %xmm0
	vmovsd	%xmm0, (%r9,%r15)
	jne	.L254
	vmovsd	%xmm0, (%rsi)
.L254:
	subl	$1, %edx
	addq	$8, %rsi
	addq	$8, %rax
	cmpl	%edx, %r8d
	jne	.L258
	subl	$1, %r8d
	addq	$528, %r11
	subq	$528, %rdi
	cmpl	%r14d, %r8d
	jne	.L261
	leal	4(%r8), %r14d
	addq	$34848, %r15
	cmpl	$2052, %r14d
	jne	.L251
	xorl	%edi, %edi
	xorl	%ecx, %ecx
.L260:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	addq	24(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
.L266:
	vmovsd	work+33792(%rcx,%rax), %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	vmovsd	work+34320(%rcx,%rax), %xmm0
	vmovsd	%xmm0, 528(%rdx,%rax)
	addq	$8, %rax
	cmpq	$528, %rax
	jne	.L266
	leaq	work+512(%rcx), %rdx
	movq	%rdi, %rsi
	xorw	%ax, %ax
	addq	32(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L264:
	vmovsd	(%rdx), %xmm0
	addq	$528, %rdx
	vmovsd	%xmm0, (%rsi,%rax)
	vmovsd	-520(%rdx), %xmm0
	vmovsd	%xmm0, 8(%rsi,%rax)
	addq	$16, %rax
	cmpq	$1056, %rax
	jne	.L264
	addq	$34848, %rcx
	addq	$1056, %rdi
	cmpq	$19027008, %rcx
	jne	.L260
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1331:
	.size	_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_, .-_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	.section	.rodata.str1.1
.LC9:
	.string	"body.cpp"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"sim_t_1 != -1 && sim_t_2 != -1 && wct_1 != -1&& wct_2 != -1"
	.text
	.p2align 4,,15
	.globl	_Z5solvev
	.type	_Z5solvev, @function
_Z5solvev:
.LFB1301:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movl	T_FINAL(%rip), %eax
	cmpl	$-2048, %eax
	jl	.L319
	vmovsd	.LC8(%rip), %xmm4
	movl	$-1, %ebx
	movl	$-1536, 24(%rsp)
	movl	%ebx, 104(%rsp)
	vmovsd	%xmm4, 48(%rsp)
	vmovsd	%xmm4, 40(%rsp)
	movl	%ebx, 32(%rsp)
.L318:
	movl	24(%rsp), %ebx
	subl	$2048, %eax
	subl	$512, %ebx
	movl	%ebx, %edx
	movl	%ebx, 28(%rsp)
	shrl	$31, %edx
	cmpl	%ebx, %eax
	jg	.L275
	testb	%dl, %dl
	je	.L333
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	$yuka, 56(%rsp)
	movq	%r10, %r15
	movl	%r11d, %ebp
.L285:
	leal	1(%rax), %r10d
	movslq	%eax, %rdx
	movl	%ebp, %r14d
	movl	%r10d, %ecx
	negl	%r14d
	xorl	%r13d, %r13d
	leaq	kabe_x(%r15), %rdi
	andl	$31, %ecx
	xorl	%r12d, %r12d
	imulq	$18450432, %rcx, %rcx
	movq	%rdi, 72(%rsp)
	imulq	$18450432, %rdx, %rdi
	leal	0(%rbp,%rbp,2), %ebx
	movl	%ebx, 64(%rsp)
	movq	56(%rsp), %rbx
	leaq	kabe_y(%r15), %r11
	leaq	kabe_y(%rcx), %rax
	movq	%rdi, 80(%rsp)
.L282:
	movl	64(%rsp), %ecx
	movl	%r12d, %edi
	movq	%rax, 96(%rsp)
	movl	28(%rsp), %r8d
	sall	$6, %edi
	testl	%r14d, %r14d
	leal	3(%r14), %edx
	movq	$yuka_tmp, (%rsp)
	cmovns	%r14d, %edx
	movl	%r10d, 108(%rsp)
	subl	%edi, %ecx
	movq	%r11, 88(%rsp)
	leal	3(%rcx), %esi
	sarl	$2, %edx
	subl	%r8d, %edx
	testl	%ecx, %ecx
	cmovns	%ecx, %esi
	addl	%ebp, %edi
	sarl	$2, %edi
	leal	1(%r12), %ecx
	sarl	$2, %esi
	addl	%r8d, %edi
	andl	$31, %ecx
	subl	%r8d, %esi
	movq	80(%rsp), %r8
	imulq	$576576, %rcx, %rcx
	leaq	kabe_x(%rcx,%r8), %rcx
	movq	%rcx, 16(%rsp)
	leaq	(%rax,%r13), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 8(%rsp)
	leaq	(%r11,%r13), %r8
	movq	%rbx, %rcx
	leaq	(%rax,%r13), %r9
	call	_Z12pitch_kernelILb1ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	movl	108(%rsp), %r10d
	xorl	%edi, %edi
	movq	96(%rsp), %rax
	movq	88(%rsp), %r11
	.p2align 4,,10
	.p2align 3
.L279:
	leaq	yuka_tmp(%rdi), %rsi
	xorl	%edx, %edx
	leaq	(%rdi,%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L277:
	vmovsd	(%rcx,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm0
	vmovsd	%xmm1, (%rsi,%rdx,8)
	vmovsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	$66, %rdx
	jne	.L277
	addq	$528, %rdi
	cmpq	$34848, %rdi
	jne	.L279
	addq	$1, %r12
	addl	$192, %r14d
	addq	$34848, %rbx
	addq	$576576, %r13
	cmpq	$32, %r12
	jne	.L282
	addq	$1115136, 56(%rsp)
	addq	$18450432, %r15
	addl	$64, %ebp
	cmpl	$32, %r10d
	je	.L315
	movl	%r10d, %eax
	jmp	.L285
.L333:
	cmpl	$-1, 104(%rsp)
	jne	.L298
	call	_ZL6secondv
	movl	28(%rsp), %eax
	vmovsd	%xmm0, 48(%rsp)
	movl	%eax, 104(%rsp)
.L298:
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	$yuka, 56(%rsp)
	movq	%r10, %r15
	movl	%r11d, %ebp
.L299:
	leal	1(%rax), %r10d
	movslq	%eax, %rdx
	movl	%ebp, %r14d
	movl	%r10d, %ecx
	negl	%r14d
	xorl	%r13d, %r13d
	leaq	kabe_x(%r15), %rdi
	andl	$31, %ecx
	xorl	%r12d, %r12d
	imulq	$18450432, %rcx, %rcx
	movq	%rdi, 72(%rsp)
	imulq	$18450432, %rdx, %rdi
	leal	0(%rbp,%rbp,2), %ebx
	movl	%ebx, 64(%rsp)
	movq	56(%rsp), %rbx
	leaq	kabe_y(%r15), %r11
	leaq	kabe_y(%rcx), %rax
	movq	%rdi, 80(%rsp)
.L306:
	movl	64(%rsp), %ecx
	movl	%r12d, %edi
	movq	%rax, 96(%rsp)
	movl	28(%rsp), %r8d
	sall	$6, %edi
	testl	%r14d, %r14d
	leal	3(%r14), %edx
	movq	$yuka_tmp, (%rsp)
	cmovns	%r14d, %edx
	movl	%r10d, 108(%rsp)
	subl	%edi, %ecx
	movq	%r11, 88(%rsp)
	leal	3(%rcx), %esi
	sarl	$2, %edx
	subl	%r8d, %edx
	testl	%ecx, %ecx
	cmovns	%ecx, %esi
	addl	%ebp, %edi
	sarl	$2, %edi
	leal	1(%r12), %ecx
	sarl	$2, %esi
	addl	%r8d, %edi
	andl	$31, %ecx
	subl	%r8d, %esi
	movq	80(%rsp), %r8
	imulq	$576576, %rcx, %rcx
	leaq	kabe_x(%rcx,%r8), %rcx
	movq	%rcx, 16(%rsp)
	leaq	(%rax,%r13), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 8(%rsp)
	leaq	(%r11,%r13), %r8
	movq	%rbx, %rcx
	leaq	(%rax,%r13), %r9
	call	_Z12pitch_kernelILb0ELb1EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	movl	108(%rsp), %r10d
	xorl	%edi, %edi
	movq	88(%rsp), %r11
	movq	96(%rsp), %rax
.L303:
	leaq	yuka_tmp(%rdi), %rsi
	xorl	%edx, %edx
	leaq	(%rdi,%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L301:
	vmovsd	(%rcx,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm0
	vmovsd	%xmm1, (%rsi,%rdx,8)
	vmovsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	$66, %rdx
	jne	.L301
	addq	$528, %rdi
	cmpq	$34848, %rdi
	jne	.L303
	addq	$1, %r12
	addl	$192, %r14d
	addq	$34848, %rbx
	addq	$576576, %r13
	cmpq	$32, %r12
	jne	.L306
	addq	$1115136, 56(%rsp)
	addq	$18450432, %r15
	addl	$64, %ebp
	cmpl	$32, %r10d
	je	.L315
	movl	%r10d, %eax
	jmp	.L299
.L315:
	movl	24(%rsp), %edx
.L284:
	movl	T_FINAL(%rip), %eax
	addl	$512, 24(%rsp)
	cmpl	%edx, %eax
	jge	.L318
	movl	32(%rsp), %edi
	cmpl	$-1, %edi
	je	.L319
	movl	104(%rsp), %ebx
	cmpl	$-1, %ebx
	sete	%al
	je	.L319
	vmovsd	40(%rsp), %xmm2
	vucomisd	.LC8(%rip), %xmm2
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L319
	vmovsd	48(%rsp), %xmm3
	vucomisd	.LC8(%rip), %xmm3
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L319
	vsubsd	%xmm2, %xmm3, %xmm0
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	%eax, benchmark_self_reported_delta_t(%rip)
	vmovsd	%xmm0, benchmark_self_reported_wct(%rip)
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L275:
	.cfi_restore_state
	testb	%dl, %dl
	je	.L334
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	$yuka, 32(%rsp)
	movq	%r10, %r15
	movl	%r11d, %ebp
.L296:
	leal	1(%rax), %r10d
	movslq	%eax, %rdx
	movl	%ebp, %r14d
	movl	%r10d, %ecx
	negl	%r14d
	xorl	%r13d, %r13d
	leaq	kabe_x(%r15), %rdi
	andl	$31, %ecx
	xorl	%r12d, %r12d
	imulq	$18450432, %rcx, %rcx
	movq	%rdi, 56(%rsp)
	imulq	$18450432, %rdx, %rdi
	leal	0(%rbp,%rbp,2), %ebx
	movl	%ebx, 40(%rsp)
	movq	32(%rsp), %rbx
	leaq	kabe_y(%r15), %r11
	leaq	kabe_y(%rcx), %rax
	movq	%rdi, 64(%rsp)
.L294:
	movl	40(%rsp), %ecx
	movl	%r12d, %edi
	movq	%rax, 80(%rsp)
	movl	28(%rsp), %r9d
	sall	$6, %edi
	testl	%r14d, %r14d
	leal	3(%r14), %edx
	movq	$yuka_tmp, (%rsp)
	cmovns	%r14d, %edx
	movl	%r10d, 88(%rsp)
	subl	%edi, %ecx
	movq	%r11, 72(%rsp)
	leal	3(%rcx), %esi
	sarl	$2, %edx
	leaq	(%r11,%r13), %r8
	subl	%r9d, %edx
	testl	%ecx, %ecx
	cmovns	%ecx, %esi
	addl	%ebp, %edi
	sarl	$2, %edi
	leal	1(%r12), %ecx
	sarl	$2, %esi
	addl	%r9d, %edi
	andl	$31, %ecx
	subl	%r9d, %esi
	movq	64(%rsp), %r9
	imulq	$576576, %rcx, %rcx
	leaq	kabe_x(%rcx,%r9), %rcx
	movq	%rcx, 16(%rsp)
	leaq	(%rax,%r13), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, 8(%rsp)
	movq	%rbx, %rcx
	leaq	(%rax,%r13), %r9
	call	_Z12pitch_kernelILb1ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	movl	88(%rsp), %r10d
	xorl	%edi, %edi
	movq	80(%rsp), %rax
	movq	72(%rsp), %r11
.L291:
	leaq	yuka_tmp(%rdi), %rsi
	xorl	%edx, %edx
	leaq	(%rdi,%rbx), %rcx
	.p2align 4,,10
	.p2align 3
.L289:
	vmovsd	(%rcx,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm0
	vmovsd	%xmm1, (%rsi,%rdx,8)
	vmovsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	$66, %rdx
	jne	.L289
	addq	$528, %rdi
	cmpq	$34848, %rdi
	jne	.L291
	addq	$1, %r12
	addl	$192, %r14d
	addq	$34848, %rbx
	addq	$576576, %r13
	cmpq	$32, %r12
	jne	.L294
	addq	$1115136, 32(%rsp)
	addq	$18450432, %r15
	addl	$64, %ebp
	cmpl	$32, %r10d
	je	.L295
	movl	%r10d, %eax
	jmp	.L296
.L334:
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	$yuka, 56(%rsp)
	movq	%r10, %r15
	movl	%r11d, %ebp
.L316:
	leal	1(%rax), %r10d
	movslq	%eax, %rdx
	movl	%ebp, %r14d
	movl	%r10d, %ecx
	negl	%r14d
	xorl	%r13d, %r13d
	leaq	kabe_x(%r15), %rdi
	andl	$31, %ecx
	xorl	%r12d, %r12d
	imulq	$18450432, %rcx, %rcx
	movq	%rdi, 72(%rsp)
	imulq	$18450432, %rdx, %rdi
	leal	0(%rbp,%rbp,2), %ebx
	movl	%ebx, 64(%rsp)
	movq	56(%rsp), %rbx
	leaq	kabe_y(%r15), %r11
	leaq	kabe_y(%rcx), %rax
	movq	%rdi, 80(%rsp)
.L314:
	movl	64(%rsp), %ecx
	movl	%r12d, %edi
	movq	%rax, 96(%rsp)
	movl	28(%rsp), %r9d
	sall	$6, %edi
	testl	%r14d, %r14d
	leal	3(%r14), %edx
	movq	$yuka_tmp, (%rsp)
	cmovns	%r14d, %edx
	movl	%r10d, 108(%rsp)
	subl	%edi, %ecx
	movq	%r11, 88(%rsp)
	leal	3(%rcx), %esi
	sarl	$2, %edx
	leaq	(%r11,%r13), %r8
	subl	%r9d, %edx
	testl	%ecx, %ecx
	cmovns	%ecx, %esi
	addl	%ebp, %edi
	sarl	$2, %edi
	leal	1(%r12), %ecx
	sarl	$2, %esi
	addl	%r9d, %edi
	andl	$31, %ecx
	subl	%r9d, %esi
	movq	80(%rsp), %r9
	imulq	$576576, %rcx, %rcx
	leaq	kabe_x(%rcx,%r9), %rcx
	movq	%rcx, 16(%rsp)
	leaq	(%rax,%r13), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 8(%rsp)
	movq	%rbx, %rcx
	leaq	(%rax,%r13), %r9
	call	_Z12pitch_kernelILb0ELb0EEviiiPA66_A66_dPA2_S0_PA66_A2_dS2_S4_S7_
	movl	108(%rsp), %r10d
	xorl	%edi, %edi
	movq	88(%rsp), %r11
	movq	96(%rsp), %rax
.L311:
	leaq	yuka_tmp(%rdi), %rsi
	xorl	%edx, %edx
	leaq	(%rbx,%rdi), %rcx
	.p2align 4,,10
	.p2align 3
.L309:
	vmovsd	(%rcx,%rdx,8), %xmm1
	vmovsd	(%rsi,%rdx,8), %xmm0
	vmovsd	%xmm1, (%rsi,%rdx,8)
	vmovsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	$66, %rdx
	jne	.L309
	addq	$528, %rdi
	cmpq	$34848, %rdi
	jne	.L311
	addq	$1, %r12
	addl	$192, %r14d
	addq	$34848, %rbx
	addq	$576576, %r13
	cmpq	$32, %r12
	jne	.L314
	addq	$1115136, 56(%rsp)
	addq	$18450432, %r15
	addl	$64, %ebp
	cmpl	$32, %r10d
	je	.L315
	movl	%r10d, %eax
	jmp	.L316
.L295:
	movl	24(%rsp), %ebx
	movl	%ebx, 32(%rsp)
	call	_ZL6secondv
	movl	%ebx, %edx
	vmovsd	%xmm0, 40(%rsp)
	jmp	.L284
.L319:
	movl	$_ZZ5solvevE19__PRETTY_FUNCTION__, %ecx
	movl	$227, %edx
	movl	$.LC9, %esi
	movl	$.LC10, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1301:
	.size	_Z5solvev, .-_Z5solvev
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.p2align 4,,15
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_:
.LFB1346:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1346
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
.LEHB13:
	call	_ZNSsC1ERKSs
.LEHE13:
	movq	%rbp, %rdi
	call	strlen
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
.LEHB14:
	call	_ZNSs6appendEPKcm
.LEHE14:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L337:
	.cfi_restore_state
	movq	(%rbx), %rdi
	leaq	15(%rsp), %rsi
	movq	%rax, %rbp
	subq	$24, %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	%rbp, %rdi
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
	.cfi_endproc
.LFE1346:
	.section	.gcc_except_table
.LLSDA1346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1346-.LLSDACSB1346
.LLSDACSB1346:
	.uleb128 .LEHB13-.LFB1346
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1346
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L337-.LFB1346
	.uleb128 0
	.uleb128 .LEHB15-.LFB1346
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE1346:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"basic_string::_S_construct null not valid"
	.section	.text._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag,"axG",@progbits,_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
	.type	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, @function
_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag:
.LFB1422:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	cmpq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	je	.L361
	testq	%rdi, %rdi
	je	.L362
	subq	%rdi, %rsi
	movq	%rsi, %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSs4_Rep9_S_createEmmRKSaIcE
	cmpq	$1, %r12
	leaq	24(%rax), %rcx
	movq	%rax, %rbp
	jne	.L350
	movzbl	(%rbx), %eax
	movb	%al, 24(%rbp)
.L346:
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rbp
	jne	.L363
.L359:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L364:
	.cfi_restore_state
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	call	_ZNSs4_Rep9_S_createEmmRKSaIcE
	leaq	24(%rax), %rcx
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L350:
	movq	%rcx, %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	memcpy
	movq	%rax, %rcx
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L361:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$_ZNSs4_Rep20_S_empty_rep_storageE+24, %ecx
	movq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L362:
	.cfi_restore_state
	testq	%rsi, %rsi
	je	.L364
	movl	$.LC11, %edi
	call	_ZSt19__throw_logic_errorPKc
.L363:
	movl	$0, 16(%rbp)
	movq	%r12, 0(%rbp)
	movb	$0, (%rcx,%r12)
	jmp	.L359
	.cfi_endproc
.LFE1422:
	.size	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
	.section	.rodata.str1.1
.LC12:
	.string	"gen/finalstate-nx-"
.LC13:
	.string	"-S-"
.LC14:
	.string	"-"
.LC15:
	.string	".txt"
	.text
	.p2align 4,,15
	.globl	_Z10leave_dumpv
	.type	_Z10leave_dumpv, @function
_Z10leave_dumpv:
.LFB1302:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1302
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$424, %rsp
	.cfi_def_cfa_offset 464
	leaq	152(%rsp), %rdi
	call	_ZNSt8ios_baseC2Ev
	movq	_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+8(%rip), %rbx
	xorl	%esi, %esi
	movb	$0, 376(%rsp)
	leaq	64(%rsp), %rdi
	movq	_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+16(%rip), %rbp
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 152(%rsp)
	movq	$0, 368(%rsp)
	addq	-24(%rbx), %rdi
	movb	$0, 377(%rsp)
	movq	$0, 384(%rsp)
	movq	$0, 392(%rsp)
	movq	$0, 400(%rsp)
	movq	$0, 408(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbp, (%rdi)
.LEHB16:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE16:
	leaq	128(%rsp), %rdi
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24, 64(%rsp)
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64, 152(%rsp)
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	call	_ZNSt6localeC1Ev
	leaq	64(%rsp), %rax
	movq	$_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16, 72(%rsp)
	movl	$16, 136(%rsp)
	leaq	8(%rax), %rsi
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 144(%rsp)
	leaq	88(%rax), %rdi
.LEHB17:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE17:
	leaq	64(%rsp), %rdi
	movl	$18, %edx
	movl	$.LC12, %esi
	movl	time_iteration_scaling(%rip), %r13d
.LEHB18:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	64(%rsp), %rdi
	movl	$2048, %esi
	call	_ZNSolsEi
	movl	$3, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %esi
	movq	%r12, %rdi
	call	_ZNSolsEi
	movl	$1, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	algorithm_tag_str(%rip), %rsi
	movq	%r12, %rdi
	movq	-24(%rsi), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$4, %edx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE18:
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 32(%rsp)
	movq	112(%rsp), %rax
	testq	%rax, %rax
	je	.L369
	movq	96(%rsp), %rsi
	movb	$0, (%rsp)
	leaq	31(%rsp), %rdx
	cmpq	%rsi, %rax
	ja	.L416
	movq	104(%rsp), %rdi
.LEHB19:
	call	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
.LEHE19:
	leaq	48(%rsp), %r12
	movq	%rax, 48(%rsp)
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
.LEHB20:
	call	_ZNSs6assignERKSs
.LEHE20:
.L415:
	movq	48(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L417
.L376:
	movq	32(%rsp), %rdi
.LEHB21:
	call	_Z4dumpPKc
.LEHE21:
	movq	32(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L418
.L387:
	movq	144(%rsp), %rax
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24, 64(%rsp)
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64, 152(%rsp)
	movq	$_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16, 72(%rsp)
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L419
.L392:
	leaq	128(%rsp), %rdi
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 72(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rbx), %rax
	movq	%rbx, 64(%rsp)
	leaq	152(%rsp), %rdi
	movq	%rbp, 64(%rsp,%rax)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 152(%rsp)
.LEHB22:
	call	_ZNSt8ios_baseD2Ev
.LEHE22:
	addq	$424, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L416:
	.cfi_restore_state
	movq	104(%rsp), %rdi
	movq	%rax, %rsi
.LEHB23:
	call	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
.LEHE23:
	leaq	48(%rsp), %r12
	movq	%rax, 48(%rsp)
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
.LEHB24:
	call	_ZNSs6assignERKSs
.LEHE24:
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L369:
	leaq	64(%rsp), %rax
	leaq	80(%rax), %rsi
	leaq	32(%rsp), %rdi
.LEHB25:
	call	_ZNSs6assignERKSs
.LEHE25:
	jmp	.L376
.L419:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L393
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L394:
	testl	%eax, %eax
	jg	.L392
	leaq	48(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L392
.L417:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L379
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L380:
	testl	%eax, %eax
	jg	.L376
	leaq	30(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L376
.L418:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L388
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L389:
	testl	%eax, %eax
	jg	.L387
	leaq	48(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L387
.L397:
	movq	%rax, %rbx
	vzeroupper
.L385:
	leaq	64(%rsp), %rdi
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rdi
.LEHB26:
	call	_Unwind_Resume
.LEHE26:
.L388:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L389
.L400:
	leaq	72(%rsp), %rdi
	movq	%rax, %r12
	vzeroupper
	call	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	movq	-24(%rbx), %rax
	movq	%rbx, 64(%rsp)
	movq	%r12, %rbx
	movq	%rbp, 64(%rsp,%rax)
.L368:
	leaq	152(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 152(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rbx, %rdi
.LEHB27:
	call	_Unwind_Resume
.LEHE27:
.L399:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L368
.L401:
	leaq	48(%rsp), %r12
	movq	%rax, %rbx
	vzeroupper
.L383:
	movq	32(%rsp), %rax
	movq	%r12, %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L385
.L398:
	leaq	48(%rsp), %rsi
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	leaq	-24(%rax), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L385
.L403:
.L408:
	leaq	30(%rsp), %rsi
	movq	%rax, %rbx
	movq	48(%rsp), %rax
	leaq	-24(%rax), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L383
.L402:
	jmp	.L408
.L393:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L394
.L379:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L380
	.cfi_endproc
.LFE1302:
	.section	.gcc_except_table
.LLSDA1302:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1302-.LLSDACSB1302
.LLSDACSB1302:
	.uleb128 .LEHB16-.LFB1302
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L399-.LFB1302
	.uleb128 0
	.uleb128 .LEHB17-.LFB1302
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L400-.LFB1302
	.uleb128 0
	.uleb128 .LEHB18-.LFB1302
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L397-.LFB1302
	.uleb128 0
	.uleb128 .LEHB19-.LFB1302
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L401-.LFB1302
	.uleb128 0
	.uleb128 .LEHB20-.LFB1302
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L402-.LFB1302
	.uleb128 0
	.uleb128 .LEHB21-.LFB1302
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L398-.LFB1302
	.uleb128 0
	.uleb128 .LEHB22-.LFB1302
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB1302
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L401-.LFB1302
	.uleb128 0
	.uleb128 .LEHB24-.LFB1302
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L403-.LFB1302
	.uleb128 0
	.uleb128 .LEHB25-.LFB1302
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L401-.LFB1302
	.uleb128 0
	.uleb128 .LEHB26-.LFB1302
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB1302
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE1302:
	.text
	.size	_Z10leave_dumpv, .-_Z10leave_dumpv
	.section	.rodata.str1.1
.LC16:
	.string	""
.LC17:
	.string	"calibrating..."
.LC19:
	.string	"scale: "
.LC20:
	.string	"result/"
.LC21:
	.string	"-benchmark.txt"
.LC22:
	.string	"\tNX: "
.LC23:
	.string	"\t"
.LC25:
	.string	" flop\t"
.LC26:
	.string	" second\t"
.LC27:
	.string	" flop/s"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1303:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1303
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$3, %ebx
	subq	$984, %rsp
	.cfi_def_cfa_offset 1040
	cmpb	$0, debug_mode(%rip)
	je	.L536
.L421:
	movl	$.LC19, %esi
	movl	$_ZSt4cerr, %edi
	movl	%ebx, time_iteration_scaling(%rip)
.LEHB28:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movl	$.LC16, %ebx
	movq	%rax, %rdi
	call	_ZNSolsEi
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	cmpl	$1, %r12d
	jle	.L428
	movq	8(%r13), %rbx
.L428:
	leaq	64(%rsp), %rdx
	movl	$.LC16, %esi
	leaq	96(%rsp), %rdi
	call	_ZNSsC1EPKcRKSaIcE
.LEHE28:
	leaq	96(%rsp), %rsi
	movl	$.LC20, %edx
	leaq	112(%rsp), %rdi
.LEHB29:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE29:
	leaq	112(%rsp), %rsi
	movq	%rbx, %rdx
	leaq	464(%rsp), %rdi
.LEHB30:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE30:
	leaq	464(%rsp), %rsi
	movl	$.LC21, %edx
	leaq	48(%rsp), %rdi
.LEHB31:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE31:
	movq	464(%rsp), %rcx
	leaq	80(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 24(%rsp)
	leaq	-24(%rcx), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	112(%rsp), %rax
	leaq	464(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	96(%rsp), %rax
	leaq	464(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	48(%rsp), %rsi
	movl	$17, %edx
	leaq	464(%rsp), %rdi
.LEHB32:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE32:
	xorl	%r12d, %r12d
	movq	_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+8(%rip), %rbp
	leaq	200(%rsp), %r13
	movq	_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+16(%rip), %r14
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L545:
	movq	152(%rsp), %rdi
	movq	%rax, %rsi
.LEHB33:
	call	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
.LEHE33:
	leaq	96(%rsp), %rsi
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rdi
.LEHB34:
	call	_ZNSs6assignERKSs
.LEHE34:
.L533:
	movq	96(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L537
.L441:
	movq	64(%rsp), %rsi
	movl	$_ZSt4cerr, %edi
	movq	-24(%rsi), %rdx
.LEHB35:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.L538
	cmpb	$0, 56(%rbx)
	je	.L452
	movzbl	67(%rbx), %eax
.L453:
	movsbl	%al, %esi
	movq	%r15, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE35:
	movq	64(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L539
.L455:
	movq	160(%rsp), %rax
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 80(%rsp)
	testq	%rax, %rax
	je	.L459
	movq	144(%rsp), %rsi
	movb	$0, (%rsp)
	leaq	64(%rsp), %rdx
	cmpq	%rsi, %rax
	jbe	.L460
	movq	152(%rsp), %rdi
	movq	%rax, %rsi
.LEHB36:
	call	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
.LEHE36:
	movq	24(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%rax, 96(%rsp)
.LEHB37:
	call	_ZNSs6assignERKSs
.LEHE37:
.L535:
	movq	96(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L540
.L466:
	movq	80(%rsp), %rsi
	leaq	464(%rsp), %rdi
	movq	-24(%rsi), %rdx
.LEHB38:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.L541
	cmpb	$0, 56(%rbx)
	je	.L476
	movzbl	67(%rbx), %eax
.L477:
	movsbl	%al, %esi
	movq	%r15, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.LEHE38:
	movq	80(%rsp), %rax
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L542
.L479:
	movq	192(%rsp), %rax
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24, 112(%rsp)
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64, 200(%rsp)
	movq	$_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16, 120(%rsp)
	leaq	-24(%rax), %rdi
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi
	jne	.L543
.L484:
	leaq	176(%rsp), %rdi
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 120(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rbp), %rax
	movq	%r13, %rdi
	movq	%rbp, 112(%rsp)
	movq	%r14, 112(%rsp,%rax)
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 200(%rsp)
.LEHB39:
	call	_ZNSt8ios_baseD2Ev
.LEHE39:
	addl	$1, %r12d
.L429:
	cmpb	$1, debug_mode(%rip)
	sbbl	%eax, %eax
	andl	$9, %eax
	addl	$1, %eax
	cmpl	%eax, %r12d
	jge	.L544
	movq	%r13, %rdi
	call	_ZNSt8ios_baseC2Ev
	movb	$0, 424(%rsp)
	xorl	%esi, %esi
	leaq	112(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 200(%rsp)
	addq	-24(%rbp), %rdi
	movb	$0, 425(%rsp)
	movq	$0, 416(%rsp)
	movq	$0, 432(%rsp)
	movq	$0, 440(%rsp)
	movq	$0, 448(%rsp)
	movq	$0, 456(%rsp)
	movq	%rbp, 112(%rsp)
	movq	%r14, (%rdi)
.LEHB40:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE40:
	leaq	176(%rsp), %rdi
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24, 112(%rsp)
	movq	$_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64, 200(%rsp)
	movq	$_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 168(%rsp)
	call	_ZNSt6localeC1Ev
	leaq	112(%rsp), %rax
	movq	%r13, %rdi
	movq	$_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16, 120(%rsp)
	leaq	8(%rax), %rsi
	movl	$16, 184(%rsp)
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 192(%rsp)
.LEHB41:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE41:
	movq	algorithm_tag_str(%rip), %rsi
	leaq	112(%rsp), %rdi
	movq	-24(%rsi), %rdx
.LEHB42:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$5, %edx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$2048, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi
	movl	$1, %edx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	time_iteration_scaling(%rip), %eax
	sall	$11, %eax
	movl	%eax, T_FINAL(%rip)
	call	_Z10initializev
	call	_Z5solvev
	vmovsd	benchmark_self_reported_wct(%rip), %xmm1
	leaq	112(%rsp), %rdi
	vcvtsi2sd	benchmark_self_reported_delta_t(%rip), %xmm0, %xmm0
	vmovsd	%xmm1, 16(%rsp)
	vmulsd	.LC24(%rip), %xmm0, %xmm2
	vmovapd	%xmm2, %xmm0
	vmovd	%xmm2, %rbx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$6, %edx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	vmovsd	16(%rsp), %xmm0
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$8, %edx
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	leaq	112(%rsp), %rdi
	vmovd	%rbx, %xmm3
	vdivsd	16(%rsp), %xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$7, %edx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE42:
	movq	160(%rsp), %rax
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 64(%rsp)
	testq	%rax, %rax
	je	.L434
	movq	144(%rsp), %rsi
	movb	$0, (%rsp)
	movq	24(%rsp), %rdx
	cmpq	%rsi, %rax
	ja	.L545
	movq	152(%rsp), %rdi
.LEHB43:
	call	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
.LEHE43:
	leaq	96(%rsp), %rsi
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rdi
.LEHB44:
	call	_ZNSs6assignERKSs
.LEHE44:
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L460:
	movq	152(%rsp), %rdi
.LEHB45:
	call	_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
.LEHE45:
	movq	24(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%rax, 96(%rsp)
.LEHB46:
	call	_ZNSs6assignERKSs
.LEHE46:
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L452:
	movq	%rbx, %rdi
.LEHB47:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
.LEHE47:
	jmp	.L453
	.p2align 4,,10
	.p2align 3
.L476:
	movq	%rbx, %rdi
.LEHB48:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
.LEHE48:
	jmp	.L477
	.p2align 4,,10
	.p2align 3
.L434:
	leaq	112(%rsp), %rax
	leaq	80(%rax), %rsi
	leaq	64(%rsp), %rdi
.LEHB49:
	call	_ZNSs6assignERKSs
.LEHE49:
	jmp	.L441
	.p2align 4,,10
	.p2align 3
.L459:
	movq	24(%rsp), %rdi
	leaq	112(%rsp), %rax
	leaq	80(%rax), %rsi
.LEHB50:
	call	_ZNSs6assignERKSs
.LEHE50:
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L544:
.LEHB51:
	call	_Z10leave_dumpv
.LEHE51:
	leaq	464(%rsp), %rdi
.LEHB52:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE52:
	movq	48(%rsp), %rax
	leaq	112(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	addq	$984, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L536:
	.cfi_restore_state
	movl	$.LC17, %esi
	movl	$_ZSt4cerr, %edi
.LEHB53:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, time_iteration_scaling(%rip)
	jmp	.L427
	.p2align 4,,10
	.p2align 3
.L548:
	movzbl	67(%rbx), %eax
.L424:
	movsbl	%al, %esi
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	time_iteration_scaling(%rip), %eax
	cmpl	$1, %eax
	je	.L546
.L425:
	vmovd	%r14, %xmm4
	vsubsd	16(%rsp), %xmm4, %xmm0
	vucomisd	.LC18(%rip), %xmm0
	ja	.L426
	addl	%eax, %eax
	movl	%eax, time_iteration_scaling(%rip)
.L427:
	call	_Z10initializev
	call	_ZL6secondv
	movl	time_iteration_scaling(%rip), %eax
	vmovsd	%xmm0, 16(%rsp)
	sall	$11, %eax
	movl	%eax, T_FINAL(%rip)
	call	_Z5solvev
	call	_ZL6secondv
	movl	$_ZSt4cerr, %edi
	vmovd	%xmm0, %r14
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	vmovsd	16(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L547
	cmpb	$0, 56(%rbx)
	jne	.L548
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*48(%rax)
	jmp	.L424
.L546:
	call	_Z10leave_dumpv
.LEHE53:
	movl	time_iteration_scaling(%rip), %eax
	.p2align 4,,2
	jmp	.L425
.L426:
	leal	(%rax,%rax,2), %ebx
	jmp	.L421
.L543:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L485
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L486:
	testl	%eax, %eax
	jg	.L484
	leaq	96(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L484
.L542:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L480
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L481:
	testl	%eax, %eax
	jg	.L479
	leaq	96(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L479
.L540:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L469
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L470:
	testl	%eax, %eax
	jg	.L466
	leaq	47(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L466
.L541:
.LEHB54:
	call	_ZSt16__throw_bad_castv
.LEHE54:
.L506:
	leaq	96(%rsp), %rsi
	movq	%rax, %rbx
	movq	80(%rsp), %rax
	leaq	-24(%rax), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
.L450:
	leaq	112(%rsp), %rdi
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
.L433:
	leaq	464(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L495:
	movq	48(%rsp), %rax
	leaq	112(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	%rbx, %rdi
.LEHB55:
	call	_Unwind_Resume
.LEHE55:
.L538:
.LEHB56:
	call	_ZSt16__throw_bad_castv
.LEHE56:
.L505:
	leaq	96(%rsp), %rsi
	movq	%rax, %rbx
	movq	64(%rsp), %rax
	leaq	-24(%rax), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L450
.L537:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L444
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L445:
	testl	%eax, %eax
	jg	.L441
	leaq	47(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L441
.L539:
	leaq	16(%rdi), %rdx
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %ecx
	testq	%rcx, %rcx
	je	.L456
	orl	$-1, %eax
	lock xaddl	%eax, (%rdx)
.L457:
	testl	%eax, %eax
	jg	.L455
	leaq	96(%rsp), %rsi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	jmp	.L455
.L515:
.L522:
	leaq	47(%rsp), %rsi
	movq	%rax, %rbx
	movq	96(%rsp), %rax
	leaq	-24(%rax), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
.L473:
	movq	80(%rsp), %rax
	leaq	96(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L450
.L502:
	movq	464(%rsp), %rcx
	movq	%rax, %rbx
	leaq	80(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, 24(%rsp)
	leaq	-24(%rcx), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
.L491:
	movq	112(%rsp), %rax
	movq	24(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
.L492:
	movq	96(%rsp), %rax
	movq	24(%rsp), %rsi
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	movq	%rbx, %rdi
.LEHB57:
	call	_Unwind_Resume
.L547:
	call	_ZSt16__throw_bad_castv
.LEHE57:
.L485:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L486
.L469:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L470
.L513:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L473
.L514:
	jmp	.L522
.L480:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L481
.L444:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L445
.L504:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L450
.L512:
.L520:
	leaq	47(%rsp), %rbx
	movq	%rax, %rbp
	movq	96(%rsp), %rax
	movq	%rbx, %rsi
	leaq	-24(%rax), %rdi
	vzeroupper
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
.L448:
	movq	64(%rsp), %rax
	movq	%rbx, %rsi
	movq	%rbp, %rbx
	leaq	-24(%rax), %rdi
	call	_ZNSs4_Rep10_M_disposeERKSaIcE
	jmp	.L450
.L501:
	movq	%rax, %rbx
	leaq	80(%rsp), %rax
	movq	%rax, 24(%rsp)
	vzeroupper
	jmp	.L491
.L507:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L433
.L510:
	leaq	47(%rsp), %rbx
	movq	%rax, %rbp
	vzeroupper
	jmp	.L448
.L511:
	jmp	.L520
.L456:
	movl	-8(%rax), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, -8(%rax)
	movl	%edx, %eax
	jmp	.L457
.L500:
	movq	%rax, %rbx
	leaq	80(%rsp), %rax
	movq	%rax, 24(%rsp)
	vzeroupper
	jmp	.L492
.L509:
	leaq	120(%rsp), %rdi
	movq	%rax, %rbx
	vzeroupper
	call	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
	movq	-24(%rbp), %rax
	movq	%rbp, 112(%rsp)
	movq	%r14, 112(%rsp,%rax)
.L432:
	leaq	200(%rsp), %rdi
	movq	$_ZTVSt9basic_iosIcSt11char_traitsIcEE+16, 200(%rsp)
	call	_ZNSt8ios_baseD2Ev
	jmp	.L433
.L508:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L432
.L503:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L495
	.cfi_endproc
.LFE1303:
	.section	.gcc_except_table
.LLSDA1303:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1303-.LLSDACSB1303
.LLSDACSB1303:
	.uleb128 .LEHB28-.LFB1303
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB1303
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L500-.LFB1303
	.uleb128 0
	.uleb128 .LEHB30-.LFB1303
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L501-.LFB1303
	.uleb128 0
	.uleb128 .LEHB31-.LFB1303
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L502-.LFB1303
	.uleb128 0
	.uleb128 .LEHB32-.LFB1303
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L503-.LFB1303
	.uleb128 0
	.uleb128 .LEHB33-.LFB1303
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L510-.LFB1303
	.uleb128 0
	.uleb128 .LEHB34-.LFB1303
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L512-.LFB1303
	.uleb128 0
	.uleb128 .LEHB35-.LFB1303
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L505-.LFB1303
	.uleb128 0
	.uleb128 .LEHB36-.LFB1303
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L513-.LFB1303
	.uleb128 0
	.uleb128 .LEHB37-.LFB1303
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L515-.LFB1303
	.uleb128 0
	.uleb128 .LEHB38-.LFB1303
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L506-.LFB1303
	.uleb128 0
	.uleb128 .LEHB39-.LFB1303
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L507-.LFB1303
	.uleb128 0
	.uleb128 .LEHB40-.LFB1303
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L508-.LFB1303
	.uleb128 0
	.uleb128 .LEHB41-.LFB1303
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L509-.LFB1303
	.uleb128 0
	.uleb128 .LEHB42-.LFB1303
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L504-.LFB1303
	.uleb128 0
	.uleb128 .LEHB43-.LFB1303
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L510-.LFB1303
	.uleb128 0
	.uleb128 .LEHB44-.LFB1303
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L511-.LFB1303
	.uleb128 0
	.uleb128 .LEHB45-.LFB1303
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L513-.LFB1303
	.uleb128 0
	.uleb128 .LEHB46-.LFB1303
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L514-.LFB1303
	.uleb128 0
	.uleb128 .LEHB47-.LFB1303
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L505-.LFB1303
	.uleb128 0
	.uleb128 .LEHB48-.LFB1303
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L506-.LFB1303
	.uleb128 0
	.uleb128 .LEHB49-.LFB1303
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L510-.LFB1303
	.uleb128 0
	.uleb128 .LEHB50-.LFB1303
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L513-.LFB1303
	.uleb128 0
	.uleb128 .LEHB51-.LFB1303
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L507-.LFB1303
	.uleb128 0
	.uleb128 .LEHB52-.LFB1303
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L503-.LFB1303
	.uleb128 0
	.uleb128 .LEHB53-.LFB1303
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB1303
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L506-.LFB1303
	.uleb128 0
	.uleb128 .LEHB55-.LFB1303
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB1303
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L505-.LFB1303
	.uleb128 0
	.uleb128 .LEHB57-.LFB1303
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE1303:
	.section	.text.startup
	.size	main, .-main
	.section	.rodata.str1.1
.LC28:
	.string	"PiTCH-SIMD-16"
	.section	.text.startup
	.p2align 4,,15
	.type	_GLOBAL__sub_I_T_FINAL, @function
_GLOBAL__sub_I_T_FINAL:
.LFB1433:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	leaq	15(%rsp), %rdx
	movl	$.LC28, %esi
	movl	$algorithm_tag_str, %edi
	call	_ZNSsC1EPKcRKSaIcE
	movl	$__dso_handle, %edx
	movl	$algorithm_tag_str, %esi
	movl	$_ZNSsD1Ev, %edi
	call	__cxa_atexit
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1433:
	.size	_GLOBAL__sub_I_T_FINAL, .-_GLOBAL__sub_I_T_FINAL
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_T_FINAL
	.local	_ZZL6secondvE9base_usec
	.comm	_ZZL6secondvE9base_usec,4,4
	.local	_ZZL6secondvE8base_sec
	.comm	_ZZL6secondvE8base_sec,4,4
	.section	.rodata
	.type	_ZZ5solvevE19__PRETTY_FUNCTION__, @object
	.size	_ZZ5solvevE19__PRETTY_FUNCTION__, 13
_ZZ5solvevE19__PRETTY_FUNCTION__:
	.string	"void solve()"
	.globl	time_iteration_scaling
	.bss
	.align 4
	.type	time_iteration_scaling, @object
	.size	time_iteration_scaling, 4
time_iteration_scaling:
	.zero	4
	.globl	debug_mode
	.type	debug_mode, @object
	.size	debug_mode, 1
debug_mode:
	.zero	1
	.globl	work
	.align 32
	.type	work, @object
	.size	work, 19027008
work:
	.zero	19027008
	.globl	kabe_x
	.align 32
	.type	kabe_x, @object
	.size	kabe_x, 590413824
kabe_x:
	.zero	590413824
	.globl	kabe_y
	.align 32
	.type	kabe_y, @object
	.size	kabe_y, 590413824
kabe_y:
	.zero	590413824
	.globl	yuka_tmp
	.align 32
	.type	yuka_tmp, @object
	.size	yuka_tmp, 34848
yuka_tmp:
	.zero	34848
	.globl	yuka
	.align 32
	.type	yuka, @object
	.size	yuka, 35684352
yuka:
	.zero	35684352
	.globl	algorithm_tag_str
	.align 8
	.type	algorithm_tag_str, @object
	.size	algorithm_tag_str, 8
algorithm_tag_str:
	.zero	8
	.globl	benchmark_self_reported_delta_t
	.align 4
	.type	benchmark_self_reported_delta_t, @object
	.size	benchmark_self_reported_delta_t, 4
benchmark_self_reported_delta_t:
	.zero	4
	.globl	benchmark_self_reported_wct
	.align 8
	.type	benchmark_self_reported_wct, @object
	.size	benchmark_self_reported_wct, 8
benchmark_self_reported_wct:
	.zero	8
	.globl	dens_final
	.align 32
	.type	dens_final, @object
	.size	dens_final, 33554432
dens_final:
	.zero	33554432
	.globl	dens_initial
	.align 32
	.type	dens_initial, @object
	.size	dens_initial, 33554432
dens_initial:
	.zero	33554432
	.globl	T_FINAL
	.align 4
	.type	T_FINAL, @object
	.size	T_FINAL, 4
T_FINAL:
	.zero	4
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.align 8
.LC2:
	.long	3722444800
	.long	1105974711
	.align 8
.LC4:
	.long	0
	.long	1069547520
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC6:
	.long	0
	.long	1069547520
	.long	0
	.long	1069547520
	.long	0
	.long	1069547520
	.long	0
	.long	1069547520
	.align 32
.LC7:
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.section	.rodata.cst8
	.align 8
.LC8:
	.long	0
	.long	-1074790400
	.align 8
.LC18:
	.long	0
	.long	1072693248
	.align 8
.LC24:
	.long	0
	.long	1098383360
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits

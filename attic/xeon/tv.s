   1              		.file	"saya.cpp"
   2              		.intel_syntax noprefix
   3              	# GNU C++ (GCC) version 4.8.3 20140911 (Red Hat 4.8.3-9) (x86_64-redhat-linux)
   4              	#	compiled by GNU C version 4.8.3 20140911 (Red Hat 4.8.3-9), GMP version 5.1.1, MPFR version 3.1.1
   5              	# warning: GMP header version 5.1.1 differs from library version 6.0.0.
   6              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   7              	# 渡されたオプション:  -D_GNU_SOURCE -D_REENTRANT saya.cpp
   8              	# -march=core-avx2 -masm=intel -g -O3 -std=c++11 -fopenmp -funroll-loops
   9              	# -ftree-vectorize -ftree-vectorizer-verbose=1 -fverbose-asm
  10              	# 有効オプション:  -faggressive-loop-optimizations
  11              	# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
  12              	# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
  13              	# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
  14              	# -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
  15              	# -fearly-inlining -feliminate-unused-debug-types -fexceptions
  16              	# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
  17              	# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
  18              	# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
  19              	# -fif-conversion2 -findirect-inlining -finline -finline-atomics
  20              	# -finline-functions -finline-functions-called-once
  21              	# -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
  22              	# -fipa-pure-const -fipa-reference -fipa-sra -fira-hoist-pressure
  23              	# -fira-share-save-slots -fira-share-spill-slots -fivopts
  24              	# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
  25              	# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
  26              	# -foptimize-register-move -foptimize-sibling-calls -foptimize-strlen
  27              	# -fpartial-inlining -fpeephole -fpeephole2 -fpredictive-commoning
  28              	# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
  29              	# -frename-registers -freorder-blocks -freorder-functions
  30              	# -frerun-cse-after-loop -fsched-critical-path-heuristic
  31              	# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
  32              	# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
  33              	# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
  34              	# -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller
  35              	# -fsplit-wide-types -fstrict-aliasing -fstrict-overflow
  36              	# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
  37              	# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
  38              	# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
  39              	# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
  40              	# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
  41              	# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
  42              	# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-partial-pre
  43              	# -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
  44              	# -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
  45              	# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
  46              	# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
  47              	# -funroll-loops -funswitch-loops -funwind-tables -fvar-tracking
  48              	# -fvar-tracking-assignments -fvect-cost-model -fverbose-asm -fweb
  49              	# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
  50              	# -maccumulate-outgoing-args -maes -malign-stringops -mavx -mavx2 -mbmi
  51              	# -mbmi2 -mcx16 -mf16c -mfancy-math-387 -mfma -mfp-ret-in-387 -mfsgsbase
  52              	# -mfxsr -mglibc -mhle -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mmovbe
  53              	# -mpclmul -mpopcnt -mpush-args -mrdrnd -mred-zone -msahf -msse -msse2
  54              	# -msse3 -msse4 -msse4.1 -msse4.2 -mssse3 -mtls-direct-seg-refs
  55              	# -mvzeroupper -mxsave -mxsaveopt
  56              	
  57              		.text
  58              	.Ltext0:
  59              		.p2align 4,,15
  60              		.globl	_Z22fill_initial_conditionv
  62              	_Z22fill_initial_conditionv:
  63              	.LFB1474:
  64              		.file 1 "saya.cpp"
   1:saya.cpp      **** #include <cmath>
   2:saya.cpp      **** #include <unistd.h>
   3:saya.cpp      **** #include <iostream>
   4:saya.cpp      **** #include <sstream>
   5:saya.cpp      **** 
   6:saya.cpp      **** #define NX 50
   7:saya.cpp      **** #define NY 40
   8:saya.cpp      **** #define NZ 100
   9:saya.cpp      **** 
  10:saya.cpp      **** #define SX 34
  11:saya.cpp      **** #define SY 34
  12:saya.cpp      **** #define SZ 34
  13:saya.cpp      **** 
  14:saya.cpp      **** #define MAX_T 8000
  15:saya.cpp      **** 
  16:saya.cpp      **** typedef double Real;
  17:saya.cpp      **** 
  18:saya.cpp      **** Real U[NX][NY][NZ], V[NX][NY][NZ];
  19:saya.cpp      **** Real U_other[NX][NY][NZ], V_other[NX][NY][NZ];
  20:saya.cpp      **** int global_clock;
  21:saya.cpp      **** 
  22:saya.cpp      **** 
  23:saya.cpp      **** Real Uwx[MAX_T][2][SY][SZ], Uwy[MAX_T][SX][2][SZ], Uwz[MAX_T][SX][SY][2];
  24:saya.cpp      **** Real Vwx[MAX_T][2][SY][SZ], Vwy[MAX_T][SX][2][SZ], Vwz[MAX_T][SX][SY][2];
  25:saya.cpp      **** 
  26:saya.cpp      **** void fill_initial_condition() {
  65              		.loc 1 26 0
  66              		.cfi_startproc
  67 0000 55       		push	rbp	#
  68              		.cfi_def_cfa_offset 16
  69              		.cfi_offset 6, -16
  70 0001 4889E5   		mov	rbp, rsp	#,
  71              		.cfi_def_cfa_register 6
  72 0004 4157     		push	r15	#
  73 0006 4156     		push	r14	#
  74 0008 4155     		push	r13	#
  75              		.cfi_offset 15, -24
  76              		.cfi_offset 14, -32
  77              		.cfi_offset 13, -40
  78 000a 41BD0000 		mov	r13d, OFFSET FLAT:V-800	# D.35439,
  78      0000
  79 0010 4154     		push	r12	#
  80 0012 4981ED00 		sub	r13, OFFSET FLAT:U	# D.35439,
  80      000000
  81              		.cfi_offset 12, -48
  82 0019 41BC0000 		mov	r12d, OFFSET FLAT:U+32800	# ivtmp.154,
  82      0000
  83 001f 53       		push	rbx	#
  84 0020 4883E4E0 		and	rsp, -32	#,
  85 0024 4883EC40 		sub	rsp, 64	#,
  86              		.cfi_offset 3, -56
  87              	.LBB103:
  27:saya.cpp      ****   global_clock=0;
  88              		.loc 1 27 0
  89 0028 C7050000 		mov	DWORD PTR global_clock[rip], 0	# global_clock,
  89      00000000 
  89      0000
  90              	.LVL0:
  91 0032 C5FD2805 		vmovapd	ymm0, YMMWORD PTR .LC0[rip]	# tmp145,
  91      00000000 
  92              	.LVL1:
  93              	.L2:
  94 003a 498D9C24 		lea	rbx, [r12-32000]	# ivtmp.147,
  94      0083FFFF 
  95              	.LVL2:
  96              		.p2align 4,,10
  97 0042 660F1F44 		.p2align 3
  97      0000
  98              	.L8:
  99              	.LBB104:
 100              	.LBB105:
 101              	.LBB106:
  28:saya.cpp      ****   for (int x=0;x<NX;++x) {
  29:saya.cpp      ****     for (int y=0;y<NY;++y) {
  30:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  31:saya.cpp      ****         U[x][y][z] = 1;
 102              		.loc 1 31 0 discriminator 1
 103 0048 C5FD2983 		vmovapd	YMMWORD PTR [rbx-800], ymm0	# MEM[base: _1, offset: 0B], tmp145
 103      E0FCFFFF 
 104              	.LVL3:
 105 0050 488D8300 		lea	rax, [rbx-768]	# ivtmp.136,
 105      FDFFFF
 106              	.L4:
 107              		.loc 1 31 0 is_stmt 0
 108 0057 C5FD2900 		vmovapd	YMMWORD PTR [rax], ymm0	# MEM[base: _1, offset: 0B], tmp145
 109 005b 48050001 		add	rax, 256	# ivtmp.136,
 109      0000
 110 0061 C5FD2980 		vmovapd	YMMWORD PTR [rax-224], ymm0	# MEM[base: _1, offset: 0B], tmp145
 110      20FFFFFF 
 111 0069 C5FD2980 		vmovapd	YMMWORD PTR [rax-192], ymm0	# MEM[base: _1, offset: 0B], tmp145
 111      40FFFFFF 
 112 0071 C5FD2980 		vmovapd	YMMWORD PTR [rax-160], ymm0	# MEM[base: _1, offset: 0B], tmp145
 112      60FFFFFF 
 113 0079 C5FD2940 		vmovapd	YMMWORD PTR [rax-128], ymm0	# MEM[base: _1, offset: 0B], tmp145
 113      80
 114 007e C5FD2940 		vmovapd	YMMWORD PTR [rax-96], ymm0	# MEM[base: _1, offset: 0B], tmp145
 114      A0
 115 0083 C5FD2940 		vmovapd	YMMWORD PTR [rax-64], ymm0	# MEM[base: _1, offset: 0B], tmp145
 115      C0
 116 0088 C5FD2940 		vmovapd	YMMWORD PTR [rax-32], ymm0	# MEM[base: _1, offset: 0B], tmp145
 116      E0
 117 008d 4839C3   		cmp	rbx, rax	# ivtmp.147, ivtmp.136
 118 0090 75C5     		jne	.L4	#,
 119 0092 498D7C1D 		lea	rdi, [r13+0+rbx]	# D.35439,
 119      00
 120 0097 BA200300 		mov	edx, 800	#,
 120      00
 121 009c 31F6     		xor	esi, esi	#
 122 009e C5FD2944 		vmovapd	YMMWORD PTR [rsp+32], ymm0	# %sfp, tmp145
 122      2420
 123 00a4 C5F877   		vzeroupper
 124 00a7 4881C320 		add	rbx, 800	# ivtmp.147,
 124      030000
 125 00ae E8000000 		call	memset	#
 125      00
 126              	.LVL4:
 127              	.LBE106:
  29:saya.cpp      ****     for (int y=0;y<NY;++y) {
 128              		.loc 1 29 0 is_stmt 1
 129 00b3 4939DC   		cmp	r12, rbx	# ivtmp.154, ivtmp.147
 130 00b6 C5FD2844 		vmovapd	ymm0, YMMWORD PTR [rsp+32]	# tmp145, %sfp
 130      2420
 131 00bc 758A     		jne	.L8	#,
 132 00be 4981C400 		add	r12, 32000	# ivtmp.154,
 132      7D0000
 133              	.LBE105:
  28:saya.cpp      ****   for (int x=0;x<NX;++x) {
 134              		.loc 1 28 0
 135 00c5 4981FC00 		cmp	r12, OFFSET FLAT:U+1632800	# ivtmp.154,
 135      000000
 136 00cc 0F8568FF 		jne	.L2	#,
 136      FFFF
 137              	.LBE104:
 138              	.LBB107:
  32:saya.cpp      ****         V[x][y][z] = 0;
  33:saya.cpp      ****       }
  34:saya.cpp      ****     }
  35:saya.cpp      ****   }
  36:saya.cpp      ****   int bx = std::max(NX/4,NX/2-8),  ex = std::min(3*NX/4+1,NX/2+8);
  37:saya.cpp      ****   int by = std::max(NY/4,NY/2-8),  ey = std::min(3*NY/4+1,NY/2+8);
  38:saya.cpp      ****   int bz = std::max(NZ/4,NZ/2-8),  ez = std::min(3*NZ/4+1,NZ/2+8);
  39:saya.cpp      ****   for (int x=bx;x<ex;++x){
 139              		.loc 1 39 0
 140 00d2 41BD1100 		mov	r13d, 17	# x,
 140      0000
 141              	.LBE107:
 142              	.LBB112:
  28:saya.cpp      ****   for (int x=0;x<NX;++x) {
 143              		.loc 1 28 0
 144 00d8 48C70424 		mov	QWORD PTR [rsp], 553600	# %sfp,
 144      80720800 
 145 00e0 C5F877   		vzeroupper
 146              	.L7:
 147              	.LVL5:
 148 00e3 C4C14B2A 		vcvtsi2sd	xmm6, xmm6, r13d	# D.35438, x
 148      F5
 149              	.LBE112:
 150              	.LBE103:
  26:saya.cpp      **** void fill_initial_condition() {
 151              		.loc 1 26 0 discriminator 1
 152 00e8 488B1C24 		mov	rbx, QWORD PTR [rsp]	# ivtmp.120, %sfp
 153 00ec 41BE0C00 		mov	r14d, 12	# y,
 153      0000
 154 00f2 C5FB1174 		vmovsd	QWORD PTR [rsp+32], xmm6	# %sfp, D.35438
 154      2420
 155              	.LVL6:
 156              	.L15:
 157 00f8 C4C1532A 		vcvtsi2sd	xmm5, xmm5, r14d	# D.35438, y
 157      EE
 158 00fd 4531E4   		xor	r12d, r12d	# ivtmp.101
 159 0100 C5F351CD 		vsqrtsd	xmm1, xmm1, xmm5	# tmp148, D.35438
 160 0104 C5FB116C 		vmovsd	QWORD PTR [rsp+8], xmm5	# %sfp, D.35438
 160      2408
 161              	.LVL7:
 162 010a 660F1F44 		.p2align 4,,10
 162      0000
 163              		.p2align 3
 164              	.L13:
 165              	.LBB115:
 166              	.LBB113:
 167              	.LBB108:
 168              	.LBB109:
  40:saya.cpp      ****     for (int y=by;y<ey;++y){
  41:saya.cpp      ****       for (int z=bz;z<ez;++z){
  42:saya.cpp      ****         U[x][y][z] = 0.5;
  43:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 169              		.loc 1 43 0 discriminator 2
 170 0110 C5F92EC9 		vucomisd	xmm1, xmm1	# tmp148, tmp148
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 171              		.loc 1 42 0 discriminator 2
 172 0114 C5FB101D 		vmovsd	xmm3, QWORD PTR .LC1[rip]	# tmp190,
 172      00000000 
 173              		.loc 1 43 0 discriminator 2
 174 011c C5FB114C 		vmovsd	QWORD PTR [rsp+24], xmm1	# %sfp, tmp148
 174      2418
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 175              		.loc 1 42 0 discriminator 2
 176 0122 C4A17B11 		vmovsd	QWORD PTR U[rbx+336+r12*8], xmm3	# MEM[symbol: U, base: ivtmp.120_66, index: ivtmp.101_37, 
 176      9CE30000 
 176      0000
 177              		.loc 1 43 0 discriminator 2
 178 012c 0F8A2202 		jp	.L38	#,
 178      0000
 179              	.L9:
 180 0132 418D5424 		lea	edx, [r12+42]	# D.35440,
 180      2A
 181 0137 C5FB114C 		vmovsd	QWORD PTR [rsp+16], xmm1	# %sfp, tmp148
 181      2410
 182 013d C5FB2AC2 		vcvtsi2sd	xmm0, xmm0, edx	# D.35438, D.35440
 183 0141 E8000000 		call	cos	#
 183      00
 184              	.LVL8:
 185 0146 C5FB1064 		vmovsd	xmm4, QWORD PTR [rsp+32]	# D.35438, %sfp
 185      2420
 186 014c C5DB5854 		vaddsd	xmm2, xmm4, QWORD PTR [rsp+24]	# D.35438, D.35438, %sfp
 186      2418
 187 0152 C5EB58C0 		vaddsd	xmm0, xmm2, xmm0	# D.35438, D.35438, D.35438
 188 0156 E8000000 		call	sin	#
 188      00
 189              	.LVL9:
 190 015b C57B1044 		vmovsd	xmm8, QWORD PTR [rsp+16]	# tmp148, %sfp
 190      2410
 191 0161 C5FB100D 		vmovsd	xmm1, QWORD PTR .LC3[rip]	# tmp192,
 191      00000000 
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 192              		.loc 1 42 0 discriminator 2
 193 0169 C5FB103D 		vmovsd	xmm7, QWORD PTR .LC1[rip]	# tmp193,
 193      00000000 
 194              		.loc 1 43 0 discriminator 2
 195 0171 C57B1144 		vmovsd	QWORD PTR [rsp+24], xmm8	# %sfp, tmp148
 195      2418
 196 0177 C4E2F199 		vfmadd132sd	xmm0, xmm1, QWORD PTR .LC2[rip]	# D.35438, tmp192,
 196      05000000 
 196      00
 197 0180 C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r12*8], xmm0	# MEM[symbol: V, base: ivtmp.120_66, index: ivtmp.101_37, 
 197      84E30000 
 197      0000
 198 018a 4983C401 		add	r12, 1	# tmp153,
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 199              		.loc 1 42 0 discriminator 2
 200 018e C4A17B11 		vmovsd	QWORD PTR U[rbx+336+r12*8], xmm7	# MEM[symbol: U, base: ivtmp.120_66, index: ivtmp.101_37, 
 200      BCE30000 
 200      0000
 201              		.loc 1 43 0 discriminator 2
 202 0198 C441792E 		vucomisd	xmm8, xmm8	# tmp148, tmp148
 202      C0
 203 019d 0F8A8F01 		jp	.L39	#,
 203      0000
 204              	.L31:
 205 01a3 418D4C24 		lea	ecx, [r12+42]	# D.35440,
 205      2A
 206 01a8 C57B1144 		vmovsd	QWORD PTR [rsp+16], xmm8	# %sfp, tmp148
 206      2410
 207              		.loc 1 43 0 is_stmt 0
 208 01ae C5FB2AC1 		vcvtsi2sd	xmm0, xmm0, ecx	# D.35438, D.35440
 209 01b2 4D8D7C24 		lea	r15, [r12+1]	# ivtmp.101,
 209      01
 210 01b7 E8000000 		call	cos	#
 210      00
 211              	.LVL10:
 212 01bc C57B104C 		vmovsd	xmm9, QWORD PTR [rsp+32]	# D.35438, %sfp
 212      2420
 213 01c2 C5335854 		vaddsd	xmm10, xmm9, QWORD PTR [rsp+24]	# D.35438, D.35438, %sfp
 213      2418
 214 01c8 C5AB58C0 		vaddsd	xmm0, xmm10, xmm0	# D.35438, D.35438, D.35438
 215 01cc E8000000 		call	sin	#
 215      00
 216              	.LVL11:
 217 01d1 C57B106C 		vmovsd	xmm13, QWORD PTR [rsp+16]	# tmp148, %sfp
 217      2410
 218 01d7 C57B101D 		vmovsd	xmm11, QWORD PTR .LC3[rip]	# tmp197,
 218      00000000 
 219 01df C441792E 		vucomisd	xmm13, xmm13	# tmp148, tmp148
 219      ED
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 220              		.loc 1 42 0 is_stmt 1
 221 01e4 C57B1025 		vmovsd	xmm12, QWORD PTR .LC1[rip]	# tmp198,
 221      00000000 
 222              		.loc 1 43 0
 223 01ec C57B116C 		vmovsd	QWORD PTR [rsp+24], xmm13	# %sfp, tmp148
 223      2418
 224 01f2 C4E2A199 		vfmadd132sd	xmm0, xmm11, QWORD PTR .LC2[rip]	# D.35438, tmp197,
 224      05000000 
 224      00
 225 01fb C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r12*8], xmm0	# MEM[symbol: V, base: ivtmp.120_66, index: ivtmp.101_37, 
 225      84E30000 
 225      0000
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 226              		.loc 1 42 0
 227 0205 C4217B11 		vmovsd	QWORD PTR U[rbx+336+r15*8], xmm12	# MEM[symbol: U, base: ivtmp.120_66, index: ivtmp.101_37,
 227      A4FB0000 
 227      0000
 228              		.loc 1 43 0
 229 020f 0F8A6101 		jp	.L40	#,
 229      0000
 230              	.L32:
 231 0215 418D772A 		lea	esi, [r15+42]	# D.35440,
 232 0219 C57B116C 		vmovsd	QWORD PTR [rsp+16], xmm13	# %sfp, tmp148
 232      2410
 233 021f C5FB2AC6 		vcvtsi2sd	xmm0, xmm0, esi	# D.35438, D.35440
 234 0223 E8000000 		call	cos	#
 234      00
 235              	.LVL12:
 236 0228 C57B1074 		vmovsd	xmm14, QWORD PTR [rsp+32]	# D.35438, %sfp
 236      2420
 237 022e C50B587C 		vaddsd	xmm15, xmm14, QWORD PTR [rsp+24]	# D.35438, D.35438, %sfp
 237      2418
 238 0234 C58358C0 		vaddsd	xmm0, xmm15, xmm0	# D.35438, D.35438, D.35438
 239 0238 E8000000 		call	sin	#
 239      00
 240              	.LVL13:
 241 023d C5FB106C 		vmovsd	xmm5, QWORD PTR [rsp+16]	# tmp148, %sfp
 241      2410
 242 0243 C5FB1035 		vmovsd	xmm6, QWORD PTR .LC3[rip]	# tmp200,
 242      00000000 
 243 024b C5F92EED 		vucomisd	xmm5, xmm5	# tmp148, tmp148
 244 024f C5FB116C 		vmovsd	QWORD PTR [rsp+24], xmm5	# %sfp, tmp148
 244      2418
 245 0255 C4E2C999 		vfmadd132sd	xmm0, xmm6, QWORD PTR .LC2[rip]	# D.35438, tmp200,
 245      05000000 
 245      00
 246 025e C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r15*8], xmm0	# MEM[symbol: V, base: ivtmp.120_66, index: ivtmp.101_37, 
 246      84FB0000 
 246      0000
 247 0268 4D8D7C24 		lea	r15, [r12+2]	# ivtmp.101,
 247      02
  42:saya.cpp      ****         U[x][y][z] = 0.5;
 248              		.loc 1 42 0
 249 026d C5FB1005 		vmovsd	xmm0, QWORD PTR .LC1[rip]	# tmp201,
 249      00000000 
 250 0275 C4A17B11 		vmovsd	QWORD PTR U[rbx+336+r15*8], xmm0	# MEM[symbol: U, base: ivtmp.120_66, index: ivtmp.101_37, 
 250      84FB0000 
 250      0000
 251              		.loc 1 43 0
 252 027f 0F8A9100 		jp	.L41	#,
 252      0000
 253              	.L33:
 254 0285 418D7F2A 		lea	edi, [r15+42]	# D.35440,
 255 0289 C5FB116C 		vmovsd	QWORD PTR [rsp+16], xmm5	# %sfp, tmp148
 255      2410
 256 028f 4983C403 		add	r12, 3	# ivtmp.101,
 257 0293 C5FB2AC7 		vcvtsi2sd	xmm0, xmm0, edi	# D.35438, D.35440
 258 0297 E8000000 		call	cos	#
 258      00
 259              	.LVL14:
 260 029c C5FB105C 		vmovsd	xmm3, QWORD PTR [rsp+32]	# D.35438, %sfp
 260      2420
 261 02a2 C5E35864 		vaddsd	xmm4, xmm3, QWORD PTR [rsp+24]	# D.35438, D.35438, %sfp
 261      2418
 262 02a8 C5DB58C0 		vaddsd	xmm0, xmm4, xmm0	# D.35438, D.35438, D.35438
 263 02ac E8000000 		call	sin	#
 263      00
 264              	.LVL15:
  41:saya.cpp      ****       for (int z=bz;z<ez;++z){
 265              		.loc 1 41 0
 266 02b1 4983FC10 		cmp	r12, 16	# ivtmp.101,
 267 02b5 C5FB104C 		vmovsd	xmm1, QWORD PTR [rsp+16]	# tmp148, %sfp
 267      2410
 268              		.loc 1 43 0
 269 02bb C5FB1015 		vmovsd	xmm2, QWORD PTR .LC3[rip]	# tmp203,
 269      00000000 
 270 02c3 C4E2E999 		vfmadd132sd	xmm0, xmm2, QWORD PTR .LC2[rip]	# D.35438, tmp203,
 270      05000000 
 270      00
 271 02cc C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r15*8], xmm0	# MEM[symbol: V, base: ivtmp.120_66, index: ivtmp.101_37, 
 271      84FB0000 
 271      0000
  41:saya.cpp      ****       for (int z=bz;z<ez;++z){
 272              		.loc 1 41 0
 273 02d6 0F8534FE 		jne	.L13	#,
 273      FFFF
 274              	.LBE109:
  40:saya.cpp      ****     for (int y=by;y<ey;++y){
 275              		.loc 1 40 0
 276 02dc 4183C601 		add	r14d, 1	# y,
 277              	.LVL16:
 278 02e0 4881C320 		add	rbx, 800	# ivtmp.120,
 278      030000
 279 02e7 4183FE1C 		cmp	r14d, 28	# y,
 280 02eb 0F8507FE 		jne	.L15	#,
 280      FFFF
 281 02f1 48810424 		add	QWORD PTR [rsp], 32000	# %sfp,
 281      007D0000 
 282              	.LBE108:
  39:saya.cpp      ****   for (int x=bx;x<ex;++x){
 283              		.loc 1 39 0
 284 02f9 4183C501 		add	r13d, 1	# x,
 285              	.LVL17:
 286 02fd 4183FD21 		cmp	r13d, 33	# x,
 287 0301 0F85DCFD 		jne	.L7	#,
 287      FFFF
 288              	.LBE113:
 289              	.LBE115:
  44:saya.cpp      ****       }
  45:saya.cpp      ****     }
  46:saya.cpp      ****   }
  47:saya.cpp      **** }
 290              		.loc 1 47 0
 291 0307 488D65D8 		lea	rsp, [rbp-40]	#,
 292 030b 5B       		pop	rbx	#
 293 030c 415C     		pop	r12	#
 294 030e 415D     		pop	r13	#
 295              	.LVL18:
 296 0310 415E     		pop	r14	#
 297              	.LVL19:
 298 0312 415F     		pop	r15	#
 299 0314 5D       		pop	rbp	#
 300              		.cfi_remember_state
 301              		.cfi_def_cfa 7, 8
 302 0315 C3       		ret
 303              	.LVL20:
 304              	.L41:
 305              		.cfi_restore_state
 306              	.LBB116:
 307              	.LBB114:
 308              	.LBB111:
 309              	.LBB110:
  43:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 310              		.loc 1 43 0
 311 0316 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 311      2408
 312 031c E8000000 		call	sqrt	#
 312      00
 313              	.LVL21:
 314 0321 C5FB106C 		vmovsd	xmm5, QWORD PTR [rsp+16]	# tmp148, %sfp
 314      2410
 315 0327 C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 315      2418
 316 032d E953FFFF 		jmp	.L33	#
 316      FF
 317              	.L39:
 318 0332 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 318      2408
 319 0338 C57B1144 		vmovsd	QWORD PTR [rsp+16], xmm8	# %sfp, tmp148
 319      2410
 320 033e E8000000 		call	sqrt	#
 320      00
 321              	.LVL22:
 322 0343 C57B1044 		vmovsd	xmm8, QWORD PTR [rsp+16]	# tmp148, %sfp
 322      2410
 323 0349 C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 323      2418
 324 034f E94FFEFF 		jmp	.L31	#
 324      FF
 325              	.L38:
  43:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 326              		.loc 1 43 0 is_stmt 0 discriminator 2
 327 0354 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 327      2408
 328 035a C5FB114C 		vmovsd	QWORD PTR [rsp+16], xmm1	# %sfp, tmp148
 328      2410
 329 0360 E8000000 		call	sqrt	#
 329      00
 330              	.LVL23:
 331 0365 C5FB104C 		vmovsd	xmm1, QWORD PTR [rsp+16]	# tmp148, %sfp
 331      2410
 332 036b C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 332      2418
 333 0371 E9BCFDFF 		jmp	.L9	#
 333      FF
 334              	.L40:
  43:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 335              		.loc 1 43 0
 336 0376 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 336      2408
 337 037c E8000000 		call	sqrt	#
 337      00
 338              	.LVL24:
 339 0381 C57B106C 		vmovsd	xmm13, QWORD PTR [rsp+16]	# tmp148, %sfp
 339      2410
 340 0387 C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 340      2418
 341 038d E983FEFF 		jmp	.L32	#
 341      FF
 342              	.LBE110:
 343              	.LBE111:
 344              	.LBE114:
 345              	.LBE116:
 346              		.cfi_endproc
 347              	.LFE1474:
 349 0392 66666666 		.p2align 4,,15
 349      662E0F1F 
 349      84000000 
 349      0000
 350              		.globl	_Z13naive_proceedv
 352              	_Z13naive_proceedv:
 353              	.LFB1476:
  48:saya.cpp      **** 
  49:saya.cpp      **** 
  50:saya.cpp      **** inline Real periodic(Real ar[NX][NY][NZ],int x, int y, int z) {
  51:saya.cpp      ****   x = (x+NX)%NX;
  52:saya.cpp      ****   y = (y+NY)%NY;
  53:saya.cpp      ****   z = (z+NZ)%NZ;
  54:saya.cpp      ****   return ar[x][y][z];
  55:saya.cpp      **** }
  56:saya.cpp      **** 
  57:saya.cpp      **** 
  58:saya.cpp      **** void naive_proceed() {
 354              		.loc 1 58 0 is_stmt 1
 355              		.cfi_startproc
 356 03a0 55       		push	rbp	#
 357              		.cfi_def_cfa_offset 16
 358              		.cfi_offset 6, -16
 359              	.LBB160:
  59:saya.cpp      ****   ++global_clock;
 360              		.loc 1 59 0
 361 03a1 B9310000 		mov	ecx, 49	# ivtmp.419,
 361      00
 362              	.LBE160:
  58:saya.cpp      **** void naive_proceed() {
 363              		.loc 1 58 0
 364 03a6 4889E5   		mov	rbp, rsp	#,
 365              		.cfi_def_cfa_register 6
 366 03a9 4157     		push	r15	#
 367 03ab 4156     		push	r14	#
 368 03ad 4155     		push	r13	#
 369 03af 4154     		push	r12	#
 370 03b1 53       		push	rbx	#
 371 03b2 4883E4E0 		and	rsp, -32	#,
 372 03b6 4881ECA0 		sub	rsp, 416	#,
 372      010000
 373              		.cfi_offset 15, -24
 374              		.cfi_offset 14, -32
 375              		.cfi_offset 13, -40
 376              		.cfi_offset 12, -48
 377              		.cfi_offset 3, -56
 378 03bd C5FD6F05 		vmovdqa	ymm0, YMMWORD PTR .LC6[rip]	# tmp1093,
 378      00000000 
 379              	.LBB506:
 380              		.loc 1 59 0
 381 03c5 48C70424 		mov	QWORD PTR [rsp], OFFSET FLAT:U	# %sfp,
 381      00000000 
 382 03cd 83050000 		add	DWORD PTR global_clock[rip], 1	# global_clock,
 382      000001
 383              	.LVL25:
 384 03d4 48C74424 		mov	QWORD PTR [rsp+16], OFFSET FLAT:V	# %sfp,
 384      10000000 
 384      00
 385 03dd C5F573D0 		vpsrlq	ymm1, ymm0, 32	# tmp969, tmp1093,
 385      20
 386 03e2 C5FD281D 		vmovapd	ymm3, YMMWORD PTR .LC9[rip]	# tmp910,
 386      00000000 
 387 03ea 48C74424 		mov	QWORD PTR [rsp+8], 0	# %sfp,
 387      08000000 
 387      00
 388 03f3 C57D282D 		vmovapd	ymm13, YMMWORD PTR .LC13[rip]	# tmp923,
 388      00000000 
 389 03fb C5FD7F8C 		vmovdqa	YMMWORD PTR [rsp+128], ymm1	# %sfp, tmp969
 389      24800000 
 389      00
 390              	.LVL26:
 391              	.L43:
 392 0404 B81F85EB 		mov	eax, 1374389535	# tmp1089,
 392      51
 393 0409 89CB     		mov	ebx, ecx	# tmp861, ivtmp.419
 394 040b BE320000 		mov	esi, 50	#,
 394      00
 395 0410 F7E9     		imul	ecx	# ivtmp.419
 396 0412 C1FB1F   		sar	ebx, 31	# tmp861,
 397 0415 89CF     		mov	edi, ecx	# D.35778, ivtmp.419
 398 0417 448D5902 		lea	r11d, [rcx+2]	# D.35779,
 399 041b B81F85EB 		mov	eax, 1374389535	# tmp1090,
 399      51
 400 0420 41BD3200 		mov	r13d, 50	#,
 400      0000
 401 0426 8D4901   		lea	ecx, [rcx+1]	# D.35779,
 402 0429 4589DC   		mov	r12d, r11d	# tmp870, D.35779
 403 042c C1FA04   		sar	edx, 4	# tmp857,
 404 042f 41C1FC1F 		sar	r12d, 31	# tmp870,
 405 0433 894C2468 		mov	DWORD PTR [rsp+104], ecx	# %sfp, D.35779
 406 0437 29DA     		sub	edx, ebx	# tmp857, tmp861
 407 0439 0FAFD6   		imul	edx, esi	# tmp862,
 408              	.LBB161:
 409              	.LBB162:
 410              	.LBB163:
 411              	.LBB164:
  60:saya.cpp      ****   
  61:saya.cpp      ****   const Real Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
  62:saya.cpp      ****   const Real dt = 200, dx = 0.001;
  63:saya.cpp      **** 
  64:saya.cpp      ****   auto lap = [&dx](Real ar[NX][NY][NZ],int x, int y, int z) {
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
  68:saya.cpp      ****     - 6*ar[x][y][z];
  69:saya.cpp      ****     return ret / dx / dx;
  70:saya.cpp      ****   };
  71:saya.cpp      **** 
  72:saya.cpp      ****   for (int x=0;x<NX;++x) {
  73:saya.cpp      ****     for (int y=0;y<NY;++y) {
  74:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  75:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
  78:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
  79:saya.cpp      **** 	V_other[x][y][z] = V[x][y][z] + dt*dv_dt;
 412              		.loc 1 79 0 discriminator 1
 413 043c 488B7424 		mov	rsi, QWORD PTR [rsp+16]	# ivtmp.424, %sfp
 413      10
 414 0441 29D7     		sub	edi, edx	# D.35778, tmp862
 415 0443 41F7EB   		imul	r11d	# D.35779
 416 0446 B81F85EB 		mov	eax, 1374389535	# tmp1091,
 416      51
 417 044b 4C63C7   		movsx	r8, edi	# D.35787, D.35778
 418 044e 89CF     		mov	edi, ecx	# tmp878, D.35779
 419 0450 4D69D000 		imul	r10, r8, 32000	# D.35787, D.35787,
 419      7D0000
 420 0457 C1FF1F   		sar	edi, 31	# tmp878,
 421 045a 41B83200 		mov	r8d, 50	#,
 421      0000
 422 0460 C1FA04   		sar	edx, 4	# tmp866,
 423 0463 4429E2   		sub	edx, r12d	# tmp866, tmp870
 424 0466 410FAFD5 		imul	edx, r13d	# tmp871,
 425 046a 4989F5   		mov	r13, rsi	# ivtmp.410, ivtmp.424
 426 046d 4D8D8A00 		lea	r9, U[r10]	# D.35781,
 426      000000
 427 0474 4C894C24 		mov	QWORD PTR [rsp+96], r9	# %sfp, D.35781
 427      60
 428 0479 4D8D9200 		lea	r10, V[r10]	# D.35781,
 428      000000
 429 0480 4129D3   		sub	r11d, edx	# D.35778, tmp871
 430 0483 F7E9     		imul	ecx	# D.35779
 431 0485 4D63F3   		movsx	r14, r11d	# D.35787, D.35778
 432 0488 89C8     		mov	eax, ecx	# D.35778, D.35779
 433 048a 4D69FE00 		imul	r15, r14, 32000	# D.35787, D.35787,
 433      7D0000
 434 0491 488B4C24 		mov	rcx, QWORD PTR [rsp+8]	# ivtmp.423, %sfp
 434      08
 435 0496 4C895424 		mov	QWORD PTR [rsp+80], r10	# %sfp, D.35781
 435      50
 436 049b C1FA04   		sar	edx, 4	# tmp874,
 437 049e 29FA     		sub	edx, edi	# tmp874, tmp878
 438 04a0 BF280000 		mov	edi, 40	# ivtmp.402,
 438      00
 439 04a5 410FAFD0 		imul	edx, r8d	# tmp879,
 440 04a9 4829CE   		sub	rsi, rcx	# D.35780, ivtmp.423
 441 04ac 498D9F00 		lea	rbx, U[r15]	# D.35781,
 441      000000
 442 04b3 48897424 		mov	QWORD PTR [rsp+32], rsi	# %sfp, D.35780
 442      20
 443 04b8 48895C24 		mov	QWORD PTR [rsp+120], rbx	# %sfp, D.35781
 443      78
 444 04bd 488B1C24 		mov	rbx, QWORD PTR [rsp]	# ivtmp.422, %sfp
 445 04c1 4D8DA700 		lea	r12, V[r15]	# D.35781,
 445      000000
 446 04c8 29D0     		sub	eax, edx	# D.35778, tmp879
 447 04ca 4C896424 		mov	QWORD PTR [rsp+112], r12	# %sfp, D.35781
 447      70
 448 04cf 4989CF   		mov	r15, rcx	# ivtmp.405, ivtmp.423
 449 04d2 4898     		cdqe
 450 04d4 4C69C800 		imul	r9, rax, 32000	# D.35787, D.35787,
 450      7D0000
 451 04db 4889DA   		mov	rdx, rbx	# D.35780, ivtmp.422
 452 04de 4989DE   		mov	r14, rbx	# ivtmp.409, ivtmp.422
 453 04e1 4829CA   		sub	rdx, rcx	# D.35780, ivtmp.423
 454 04e4 48895424 		mov	QWORD PTR [rsp+24], rdx	# %sfp, D.35780
 454      18
 455 04e9 4D8D9900 		lea	r11, U[r9]	# D.35781,
 455      000000
 456 04f0 4981C100 		add	r9, OFFSET FLAT:V	# D.35781,
 456      000000
 457 04f7 4C895C24 		mov	QWORD PTR [rsp+88], r11	# %sfp, D.35781
 457      58
 458 04fc 4C894C24 		mov	QWORD PTR [rsp+72], r9	# %sfp, D.35781
 458      48
 459              	.LVL27:
 460              		.p2align 4,,10
 461 0501 0F1F8000 		.p2align 3
 461      000000
 462              	.L52:
 463 0508 B8676666 		mov	eax, 1717986919	# tmp1086,
 463      66
 464 050d 4189F8   		mov	r8d, edi	# tmp814, ivtmp.402
 465 0510 4189FB   		mov	r11d, edi	# D.35778, ivtmp.402
 466 0513 F7EF     		imul	edi	# ivtmp.402
 467 0515 41C1F81F 		sar	r8d, 31	# tmp814,
 468 0519 B8676666 		mov	eax, 1717986919	# tmp1087,
 468      66
 469 051e 8D7701   		lea	esi, [rdi+1]	# D.35779,
 470 0521 4C897C24 		mov	QWORD PTR [rsp+40], r15	# %sfp, ivtmp.405
 470      28
 471 0526 C57D6F3D 		vmovdqa	ymm15, YMMWORD PTR .LC4[rip]	# vect_vec_iv_.166,
 471      00000000 
 472 052e 448D57FF 		lea	r10d, [rdi-1]	# D.35779,
 473 0532 89F7     		mov	edi, esi	# tmp831, D.35779
 474 0534 89F3     		mov	ebx, esi	# D.35779, D.35779
 475 0536 C1FA04   		sar	edx, 4	# D.35778,
 476 0539 4589D4   		mov	r12d, r10d	# tmp823, D.35779
 477 053c C1FF1F   		sar	edi, 31	# tmp831,
 478 053f 4429C2   		sub	edx, r8d	# D.35778, tmp814
 479 0542 41C1FC1F 		sar	r12d, 31	# tmp823,
 480 0546 8974246C 		mov	DWORD PTR [rsp+108], esi	# %sfp, D.35779
 481 054a 448D0C92 		lea	r9d, [rdx+rdx*4]	# tmp817,
 482 054e 41F7EA   		imul	r10d	# D.35779
 483 0551 B8676666 		mov	eax, 1717986919	# tmp1088,
 483      66
 484 0556 41C1E103 		sal	r9d, 3	# tmp818,
 485 055a 4529CB   		sub	r11d, r9d	# D.35778, tmp818
 486 055d C1FA04   		sar	edx, 4	# D.35778,
 487 0560 4D63DB   		movsx	r11, r11d	# D.35778, D.35778
 488 0563 4429E2   		sub	edx, r12d	# D.35778, tmp823
 489 0566 4C895C24 		mov	QWORD PTR [rsp+64], r11	# %sfp, D.35778
 489      40
 490 056b 8D0C92   		lea	ecx, [rdx+rdx*4]	# tmp826,
 491 056e F7EE     		imul	esi	# D.35779
 492 0570 488B4424 		mov	rax, QWORD PTR [rsp+112]	# D.35781, %sfp
 492      70
 493 0575 4F8D249B 		lea	r12, [r11+r11*4]	# tmp839,
 494 0579 C1E103   		sal	ecx, 3	# tmp827,
 495 057c 4129CA   		sub	r10d, ecx	# D.35778, tmp827
 496 057f 488B4C24 		mov	rcx, QWORD PTR [rsp+96]	# D.35781, %sfp
 496      60
 497 0584 C1FA04   		sar	edx, 4	# D.35778,
 498 0587 4D63D2   		movsx	r10, r10d	# D.35778, D.35778
 499 058a 4B8D3492 		lea	rsi, [r10+r10*4]	# tmp846,
 500 058e 29FA     		sub	edx, edi	# D.35778, tmp831
 501 0590 4C895424 		mov	QWORD PTR [rsp+56], r10	# %sfp, D.35778
 501      38
 502 0595 448D0492 		lea	r8d, [rdx+rdx*4]	# tmp834,
 503 0599 488D3CB6 		lea	rdi, [rsi+rsi*4]	# tmp849,
 504 059d 41C1E003 		sal	r8d, 3	# tmp835,
 505 05a1 4B8D14A4 		lea	rdx, [r12+r12*4]	# tmp842,
 506 05a5 4429C3   		sub	ebx, r8d	# D.35778, tmp835
 507 05a8 4C8B4424 		mov	r8, QWORD PTR [rsp+88]	# D.35781, %sfp
 507      58
 508 05ad 48C1E205 		sal	rdx, 5	# tmp842,
 509 05b1 4C63CB   		movsx	r9, ebx	#, D.35778
 510 05b4 48C1E705 		sal	rdi, 5	# tmp849,
 511 05b8 4C894C24 		mov	QWORD PTR [rsp+48], r9	# %sfp, D.35778
 511      30
 512 05bd 4F8D0C89 		lea	r9, [r9+r9*4]	# tmp853,
 513 05c1 488B5C24 		mov	rbx, QWORD PTR [rsp+120]	# D.35781, %sfp
 513      78
 514 05c6 4B8D3489 		lea	rsi, [r9+r9*4]	# tmp856,
 515 05ca 4C8D2411 		lea	r12, [rcx+rdx]	# D.35783,
 516 05ce 48C1E605 		sal	rsi, 5	# tmp856,
 517 05d2 4E8D1C07 		lea	r11, [rdi+r8]	# D.35783,
 518 05d6 4E8D1406 		lea	r10, [rsi+r8]	# D.35783,
 519 05da 4801D3   		add	rbx, rdx	# D.35783, tmp842
 520 05dd 498D0C10 		lea	rcx, [r8+rdx]	# D.35783,
 521 05e1 4C8B4424 		mov	r8, QWORD PTR [rsp+80]	# D.35781, %sfp
 521      50
 522 05e6 4D8D0C10 		lea	r9, [r8+rdx]	# D.35783,
 523 05ea 4C8D0410 		lea	r8, [rax+rdx]	# D.35783,
 524 05ee 488B4424 		mov	rax, QWORD PTR [rsp+72]	# D.35781, %sfp
 524      48
 525 05f3 4801C6   		add	rsi, rax	# D.35783, D.35781
 526 05f6 4801C7   		add	rdi, rax	# D.35783, D.35781
 527 05f9 4801C2   		add	rdx, rax	# D.35783, D.35781
 528 05fc 498D8700 		lea	rax, U_other[r15]	# D.35788,
 528      000000
 529 0603 4889B424 		mov	QWORD PTR [rsp+192], rsi	# %sfp, D.35783
 529      C0000000 
 530 060b 48898424 		mov	QWORD PTR [rsp+384], rax	# %sfp, D.35788
 530      80010000 
 531 0613 498D8700 		lea	rax, V_other[r15]	# D.35788,
 531      000000
 532 061a 48898424 		mov	QWORD PTR [rsp+200], rax	# %sfp, D.35788
 532      C8000000 
 533 0622 4C8BBC24 		mov	r15, QWORD PTR [rsp+384]	# D.35788, %sfp
 533      80010000 
 534 062a 31C0     		xor	eax, eax	# ivtmp.377
 535 062c EB13     		jmp	.L49	#
 536              	.LVL28:
 537 062e 6690     		.p2align 4,,10
 538              		.p2align 3
 539              	.L44:
 540 0630 488BB424 		mov	rsi, QWORD PTR [rsp+192]	# D.35783, %sfp
 540      C0000000 
 541              		.loc 1 79 0 is_stmt 0
 542 0638 C57D6FBC 		vmovdqa	ymm15, YMMWORD PTR [rsp+160]	# vect_vec_iv_.166, %sfp
 542      24A00000 
 542      00
 543              	.LVL29:
 544              	.L49:
 545              	.LBB165:
 546              	.LBB166:
 547              	.LBB167:
 548              	.LBB168:
 549              	.LBB169:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 550              		.loc 1 53 0 is_stmt 1 discriminator 2
 551 0641 C585FE35 		vpaddd	ymm6, ymm15, YMMWORD PTR .LC5[rip]	# vect_var_.188, vect_vec_iv_.166,
 551      00000000 
 552 0649 C585FE15 		vpaddd	ymm2, ymm15, YMMWORD PTR .LC31[rip]	# vect_vec_iv_.166, vect_vec_iv_.166,
 552      00000000 
 553 0651 C57D6FA4 		vmovdqa	ymm12, YMMWORD PTR [rsp+128]	# tmp969, %sfp
 553      24800000 
 553      00
 554 065a C5DD73D6 		vpsrlq	ymm4, ymm6, 32	# tmp426, vect_var_.188,
 554      20
 555              	.LBE169:
 556              	.LBE168:
 557              	.LBE167:
 558              	.LBE166:
 559              	.LBE165:
  75:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
 560              		.loc 1 75 0 discriminator 2
 561 065f C4C17D28 		vmovapd	ymm1, YMMWORD PTR [r13+0+rax]	# vect_v.177, MEM[base: vect_pV.176_402, index: ivtmp.377_58
 561      4C0500
 562 0666 C4E24D28 		vpmuldq	ymm5, ymm6, YMMWORD PTR .LC6[rip]	# tmp422, vect_var_.188,
 562      2D000000 
 562      00
 563 066f C4C25D28 		vpmuldq	ymm7, ymm4, ymm12	# tmp424, tmp426, tmp969
 563      FC
 564              	.LBB312:
 565              	.LBB282:
 566              	.LBB252:
 567              	.LBB179:
 568              	.LBB170:
  54:saya.cpp      ****   return ar[x][y][z];
 569              		.loc 1 54 0 discriminator 2
 570 0674 C5FD28E3 		vmovapd	ymm4, ymm3	# tmp1059, tmp910
 571 0678 C4625500 		vpshufb	ymm8, ymm5, YMMWORD PTR .LC7[rip]	# tmp430, tmp422,
 571      05000000 
 571      00
 572 0681 C58D72E6 		vpsrad	ymm14, ymm6, 31	# vect_patt.193, vect_var_.188,
 572      1F
 573              	.LBE170:
 574              	.LBE179:
 575              	.LBE252:
 576              	.LBE282:
 577              	.LBE312:
  75:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
 578              		.loc 1 75 0 discriminator 2
 579 0686 C4C17D28 		vmovapd	ymm0, YMMWORD PTR [r13+32+rax]	# vect_v.178, MEM[base: vect_pV.176_402, index: ivtmp.377_5
 579      440520
 580 068d C5FD7F94 		vmovdqa	YMMWORD PTR [rsp+160], ymm2	# %sfp, vect_vec_iv_.166
 580      24A00000 
 580      00
 581              	.LVL30:
 582 0696 C4624500 		vpshufb	ymm9, ymm7, YMMWORD PTR .LC8[rip]	# tmp432, tmp424,
 582      0D000000 
 582      00
 583 069f C4413DEB 		vpor	ymm10, ymm8, ymm9	# vect_patt.190, tmp430, tmp432
 583      D1
 584 06a4 C4C12572 		vpsrad	ymm11, ymm10, 5	# vect_patt.192, vect_patt.190,
 584      E205
 585 06aa C4C125FA 		vpsubd	ymm2, ymm11, ymm14	# vect_patt.194, vect_patt.192, vect_patt.193
 585      D6
 586              	.LBB313:
 587              	.LBB283:
 588              	.LBB253:
 589              	.LBB180:
 590              	.LBB171:
  54:saya.cpp      ****   return ar[x][y][z];
 591              		.loc 1 54 0 discriminator 2
 592 06af C57D28CB 		vmovapd	ymm9, ymm3	# tmp1060, tmp910
 593              	.LBE171:
 594              	.LBE180:
 595              	.LBB181:
 596              	.LBB182:
 597 06b3 C57D28F3 		vmovapd	ymm14, ymm3	# tmp1061, tmp910
 598 06b7 C4E26D40 		vpmulld	ymm5, ymm2, YMMWORD PTR .LC5[rip]	# vect_patt.195, vect_patt.194,
 598      2D000000 
 598      00
 599 06c0 C5CDFAFD 		vpsubd	ymm7, ymm6, ymm5	# vect_patt.197, vect_var_.188, vect_patt.195
 600              	.LVL31:
 601 06c4 C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1062, tmp910
 602              	.LBE182:
 603              	.LBE181:
 604              	.LBB185:
 605              	.LBB172:
 606 06c8 C5F96FF7 		vmovdqa	xmm6, xmm7	# tmp438,
 607 06cc C4634546 		vperm2i128	ymm8, ymm7, ymm7, 17	# vect_var_.200, vect_patt.197, vect_patt.197,
 607      C711
 608 06d2 C5797FC7 		vmovdqa	xmm7, xmm8	# tmp441,
 609 06d6 C442B592 		vgatherdpd	ymm10, QWORD PTR [r12+xmm7*8], ymm9	# vect_var_.198,, tmp1060
 609      14FC
 610              	.LBE172:
 611              	.LBE185:
 612              	.LBB186:
 613              	.LBB187:
 614 06dc C57D28C3 		vmovapd	ymm8, ymm3	# tmp1064, tmp910
 615              	.LBE187:
 616              	.LBE186:
 617              	.LBB191:
 618              	.LBB173:
 619 06e0 C442DD92 		vgatherdpd	ymm11, QWORD PTR [r12+xmm6*8], ymm4	# vect_var_.198,, tmp1059
 619      1CF4
 620 06e6 C57D2994 		vmovapd	YMMWORD PTR [rsp+320], ymm10	# %sfp, vect_var_.198
 620      24400100 
 620      00
 621              	.LBE173:
 622              	.LBE191:
 623              	.LBB192:
 624              	.LBB188:
 625 06ef C5FD28E3 		vmovapd	ymm4, ymm3	# tmp1063, tmp910
 626              	.LBE188:
 627              	.LBE192:
 628              	.LBB193:
 629              	.LBB183:
 630 06f3 C4E2ED92 		vgatherdpd	ymm5, QWORD PTR [rbx+xmm7*8], ymm2	# vect_var_.201,, tmp1062
 630      2CFB
 631              	.LBE183:
 632              	.LBE193:
 633              	.LBB194:
 634              	.LBB195:
 635 06f9 C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1065, tmp910
 636              	.LBE195:
 637              	.LBE194:
 638              	.LBB198:
 639              	.LBB184:
 640 06fd C4628D92 		vgatherdpd	ymm10, QWORD PTR [rbx+xmm6*8], ymm14	# vect_var_.201,, tmp1061
 640      14F3
 641 0703 C5FD29AC 		vmovapd	YMMWORD PTR [rsp+352], ymm5	# %sfp, vect_var_.201
 641      24600100 
 641      00
 642              	.LBE184:
 643              	.LBE198:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 644              		.loc 1 65 0 discriminator 2
 645 070c C4412558 		vaddpd	ymm11, ymm11, ymm10	# vect_var_.204, vect_var_.198, vect_var_.201
 645      DA
 646              	.LBB199:
 647              	.LBB189:
  54:saya.cpp      ****   return ar[x][y][z];
 648              		.loc 1 54 0 discriminator 2
 649 0711 C442BD92 		vgatherdpd	ymm14, QWORD PTR [r11+xmm7*8], ymm8	# vect_var_.205,, tmp1064
 649      34FB
 650 0717 C442DD92 		vgatherdpd	ymm9, QWORD PTR [r11+xmm6*8], ymm4	# vect_var_.205,, tmp1063
 650      0CF3
 651              	.LBE189:
 652              	.LBE199:
 653              	.LBB200:
 654              	.LBB196:
 655 071d C5F97FB4 		vmovdqa	XMMWORD PTR [rsp+288], xmm6	# %sfp, tmp438
 655      24200100 
 655      00
 656              	.LBE196:
 657              	.LBE200:
 658              	.LBB201:
 659              	.LBB190:
 660 0726 C57D29B4 		vmovapd	YMMWORD PTR [rsp+384], ymm14	# %sfp, vect_var_.205
 660      24800100 
 660      00
 661              	.LBE190:
 662              	.LBE201:
 663              	.LBB202:
 664              	.LBB197:
 665 072f C442ED92 		vgatherdpd	ymm8, QWORD PTR [r10+xmm6*8], ymm2	# vect_var_.209,, tmp1065
 665      04F2
 666 0735 C5FD28F3 		vmovapd	ymm6, ymm3	# tmp1066, tmp910
 667 0739 C5F97FBC 		vmovdqa	XMMWORD PTR [rsp+272], xmm7	# %sfp, tmp441
 667      24100100 
 667      00
 668 0742 C442CD92 		vgatherdpd	ymm14, QWORD PTR [r10+xmm7*8], ymm6	# vect_var_.209,, tmp1066
 668      34FA
 669              	.LVL32:
 670              	.LBE197:
 671              	.LBE202:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 672              		.loc 1 66 0 discriminator 2
 673 0748 C4412558 		vaddpd	ymm10, ymm11, ymm9	# vect_var_.208, vect_var_.204, vect_var_.205
 673      D1
 674              	.LBB203:
 675              	.LBB204:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 676              		.loc 1 53 0 discriminator 2
 677 074d C585FE3D 		vpaddd	ymm7, ymm15, YMMWORD PTR .LC10[rip]	# vect_var_.213, vect_vec_iv_.166,
 677      00000000 
 678 0755 C4E24528 		vpmuldq	ymm5, ymm7, YMMWORD PTR .LC6[rip]	# tmp463, vect_var_.213,
 678      2D000000 
 678      00
 679 075e C5DD73D7 		vpsrlq	ymm4, ymm7, 32	# tmp467, vect_var_.213,
 679      20
 680 0763 C4E25500 		vpshufb	ymm6, ymm5, YMMWORD PTR .LC7[rip]	# tmp471, tmp463,
 680      35000000 
 680      00
 681 076c C4C25D28 		vpmuldq	ymm2, ymm4, ymm12	# tmp465, tmp467, tmp969
 681      D4
 682              	.LBE204:
 683              	.LBE203:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 684              		.loc 1 66 0 discriminator 2
 685 0771 C4412D58 		vaddpd	ymm9, ymm10, ymm8	# vect_var_.212, vect_var_.208, vect_var_.209
 685      C8
 686 0776 C4E26D00 		vpshufb	ymm5, ymm2, YMMWORD PTR .LC8[rip]	# tmp473, tmp465,
 686      2D000000 
 686      00
 687 077f C5ED72E7 		vpsrad	ymm2, ymm7, 31	# vect_patt.218, vect_var_.213,
 687      1F
 688 0784 C5CDEBE5 		vpor	ymm4, ymm6, ymm5	# vect_patt.215, tmp471, tmp473
 689 0788 C5CD72E4 		vpsrad	ymm6, ymm4, 5	# vect_patt.217, vect_patt.215,
 689      05
 690 078d C5CDFAEA 		vpsubd	ymm5, ymm6, ymm2	# vect_patt.219, vect_patt.217, vect_patt.218
 691              	.LBB214:
 692              	.LBB205:
  54:saya.cpp      ****   return ar[x][y][z];
 693              		.loc 1 54 0 discriminator 2
 694 0791 C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1067, tmp910
 695 0795 C4E25540 		vpmulld	ymm4, ymm5, YMMWORD PTR .LC5[rip]	# vect_patt.220, vect_patt.219,
 695      25000000 
 695      00
 696 079e C5C5FAF4 		vpsubd	ymm6, ymm7, ymm4	# vect_patt.222, vect_var_.213, vect_patt.220
 697 07a2 C5F96FEE 		vmovdqa	xmm5, xmm6	# tmp479,
 698 07a6 C4E34D46 		vperm2i128	ymm4, ymm6, ymm6, 17	# vect_var_.225, vect_patt.222, vect_patt.222,
 698      E611
 699 07ac C5F97FAC 		vmovdqa	XMMWORD PTR [rsp+256], xmm5	# %sfp, tmp479
 699      24000100 
 699      00
 700              	.LBE205:
 701              	.LBE214:
 702              	.LBB215:
 703              	.LBB216:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 704              		.loc 1 53 0 discriminator 2
 705 07b5 C505FE3D 		vpaddd	ymm15, ymm15, YMMWORD PTR .LC11[rip]	# vect_var_.227, vect_vec_iv_.166,
 705      00000000 
 706              	.LBE216:
 707              	.LBE215:
 708              	.LBB228:
 709              	.LBB206:
  54:saya.cpp      ****   return ar[x][y][z];
 710              		.loc 1 54 0 discriminator 2
 711 07bd C4E2ED92 		vgatherdpd	ymm7, QWORD PTR [rcx+xmm5*8], ymm2	# vect_var_.223,, tmp1067
 711      3CE9
 712 07c3 C5FD28EB 		vmovapd	ymm5, ymm3	# tmp1068, tmp910
 713              	.LBE206:
 714              	.LBE228:
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 715              		.loc 1 67 0 discriminator 2
 716 07c7 C53558C7 		vaddpd	ymm8, ymm9, ymm7	# vect_var_.226, vect_var_.212, vect_var_.223
 717              	.LBE253:
 718              	.LBE283:
 719              	.LBE313:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 720              		.loc 1 76 0 discriminator 2
 721 07cb C57D2815 		vmovapd	ymm10, YMMWORD PTR .LC0[rip]	# tmp1123,
 721      00000000 
 722              	.LBB314:
 723              	.LBB284:
 724              	.LBB254:
 725              	.LBB229:
 726              	.LBB207:
  54:saya.cpp      ****   return ar[x][y][z];
 727              		.loc 1 54 0 discriminator 2
 728 07d3 C5F97FA4 		vmovdqa	XMMWORD PTR [rsp+240], xmm4	# %sfp, tmp482
 728      24F00000 
 728      00
 729 07dc C4E20528 		vpmuldq	ymm2, ymm15, YMMWORD PTR .LC6[rip]	# tmp486, vect_var_.227,
 729      15000000 
 729      00
 730 07e5 C4E2D592 		vgatherdpd	ymm6, QWORD PTR [rcx+xmm4*8], ymm5	# vect_var_.223,, tmp1068
 730      34E1
 731              	.LVL33:
 732 07eb C4C15D73 		vpsrlq	ymm4, ymm15, 32	# tmp490, vect_var_.227,
 732      D720
 733 07f1 C4E26D00 		vpshufb	ymm5, ymm2, YMMWORD PTR .LC7[rip]	# tmp494, tmp486,
 733      2D000000 
 733      00
 734 07fa C4425D28 		vpmuldq	ymm12, ymm4, ymm12	# tmp488, tmp490, tmp969
 734      E4
 735              	.LBE207:
 736              	.LBE229:
 737              	.LBE254:
 738              	.LBE284:
 739              	.LBE314:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 740              		.loc 1 76 0 discriminator 2
 741 07ff C4412D5C 		vsubpd	ymm9, ymm10, YMMWORD PTR [r14+rax]	# vect_var_.183, tmp1123, MEM[base: vect_pU.170_413, ind
 741      0C06
 742 0805 C4E21D00 		vpshufb	ymm2, ymm12, YMMWORD PTR .LC8[rip]	# tmp496, tmp488,
 742      15000000 
 742      00
 743 080e C5D5EBE2 		vpor	ymm4, ymm5, ymm2	# vect_patt.229, tmp494, tmp496
 744 0812 C4C15572 		vpsrad	ymm5, ymm15, 31	# vect_patt.232, vect_var_.227,
 744      E71F
 745 0818 C59D72E4 		vpsrad	ymm12, ymm4, 5	# vect_patt.231, vect_patt.229,
 745      05
 746 081d C59DFAD5 		vpsubd	ymm2, ymm12, ymm5	# vect_patt.233, vect_patt.231, vect_patt.232
 747 0821 C4E26D40 		vpmulld	ymm4, ymm2, YMMWORD PTR .LC5[rip]	# vect_patt.234, vect_patt.233,
 747      25000000 
 747      00
 748 082a C585FAEC 		vpsubd	ymm5, ymm15, ymm4	# vect_patt.236, vect_var_.227, vect_patt.234
 749              	.LBB315:
 750              	.LBB285:
 751              	.LBB255:
 752              	.LBB230:
 753              	.LBB217:
  54:saya.cpp      ****   return ar[x][y][z];
 754              		.loc 1 54 0 discriminator 2
 755 082e C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1069, tmp910
 756 0832 C5796FFD 		vmovdqa	xmm15, xmm5	# tmp502,
 757 0836 C4E35546 		vperm2i128	ymm4, ymm5, ymm5, 17	# vect_var_.239, vect_patt.236, vect_patt.236,
 757      E511
 758 083c C5797FBC 		vmovdqa	XMMWORD PTR [rsp+224], xmm15	# %sfp, tmp502
 758      24E00000 
 758      00
 759 0845 C422ED92 		vgatherdpd	ymm12, QWORD PTR [rcx+xmm15*8], ymm2	# vect_var_.237,, tmp1069
 759      24F9
 760              	.LBE217:
 761              	.LBE230:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 762              		.loc 1 68 0 discriminator 2
 763 084b C4C17D10 		vmovupd	ymm2, YMMWORD PTR [r14+rax]	# vect_ret.249, MEM[base: vect_pU.170_413, index: ivtmp.377_58
 763      1406
 764              	.LBB231:
 765              	.LBB218:
  54:saya.cpp      ****   return ar[x][y][z];
 766              		.loc 1 54 0 discriminator 2
 767 0851 C5F97FA4 		vmovdqa	XMMWORD PTR [rsp+208], xmm4	# %sfp, tmp505
 767      24D00000 
 767      00
 768              	.LBE218:
 769              	.LBE231:
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 770              		.loc 1 67 0 discriminator 2
 771 085a C4C13D58 		vaddpd	ymm7, ymm8, ymm12	# vect_var_.240, vect_var_.226, vect_var_.237
 771      FC
 772              	.LBB232:
 773              	.LBB219:
  54:saya.cpp      ****   return ar[x][y][z];
 774              		.loc 1 54 0 discriminator 2
 775 085f C57D28FB 		vmovapd	ymm15, ymm3	# tmp1070, tmp910
 776              	.LBE219:
 777              	.LBE232:
 778              	.LBE255:
 779              	.LBE285:
 780              	.LBE315:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 781              		.loc 1 76 0 discriminator 2
 782 0863 C5355905 		vmulpd	ymm8, ymm9, YMMWORD PTR .LC15[rip]	# vect_var_.185, vect_var_.183,
 782      00000000 
 783              	.LBB316:
 784              	.LBB286:
 785              	.LBB256:
 786              	.LBB233:
 787              	.LBB220:
  54:saya.cpp      ****   return ar[x][y][z];
 788              		.loc 1 54 0 discriminator 2
 789 086b C4E28592 		vgatherdpd	ymm5, QWORD PTR [rcx+xmm4*8], ymm15	# vect_var_.237,, tmp1070
 789      2CE1
 790              	.LBE220:
 791              	.LBE233:
 792              	.LBE256:
 793              	.LBE286:
 794              	.LBE316:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 795              		.loc 1 76 0 discriminator 2
 796 0871 C4417D28 		vmovapd	ymm15, YMMWORD PTR [r14+rax]	# tmp1122, MEM[base: vect_pU.170_413, index: ivtmp.377_586, o
 796      3C06
 797 0877 C4417D28 		vmovapd	ymm9, YMMWORD PTR [r14+32+rax]	# tmp1125, MEM[base: vect_pU.170_413, index: ivtmp.377_586,
 797      4C0620
 798              	.LBB317:
 799              	.LBB287:
 800              	.LBB257:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 801              		.loc 1 68 0 discriminator 2
 802 087e C4E2C59C 		vfnmadd132pd	ymm2, ymm7, YMMWORD PTR .LC12[rip]	# vect_ret.249, vect_var_.240,
 802      15000000 
 802      00
  69:saya.cpp      ****     return ret / dx / dx;
 803              		.loc 1 69 0 discriminator 2
 804 0887 C4416D5E 		vdivpd	ymm12, ymm2, ymm13	# vect_var_.250, vect_ret.249, tmp923
 804      E5
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 805              		.loc 1 65 0 discriminator 2
 806 088c C5FD28BC 		vmovapd	ymm7, YMMWORD PTR [rsp+352]	# vect_var_.201, %sfp
 806      24600100 
 806      00
 807              	.LBE257:
 808              	.LBE287:
 809              	.LBE317:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 810              		.loc 1 76 0 discriminator 2
 811 0895 C5855915 		vmulpd	ymm2, ymm15, YMMWORD PTR .LC14[rip]	# vect_var_.179, tmp1122,
 811      00000000 
 812 089d C56D59D9 		vmulpd	ymm11, ymm2, ymm1	# vect_var_.187, vect_var_.179, vect_v.177
 813              	.LBB318:
 814              	.LBB288:
 815              	.LBB258:
  69:saya.cpp      ****     return ret / dx / dx;
 816              		.loc 1 69 0 discriminator 2
 817 08a1 C4C11D5E 		vdivpd	ymm4, ymm12, ymm13	# vect_var_.305, vect_var_.250, tmp923
 817      E5
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 818              		.loc 1 65 0 discriminator 2
 819 08a6 C54558BC 		vaddpd	ymm15, ymm7, YMMWORD PTR [rsp+320]	# vect_var_.204, vect_var_.201, %sfp
 819      24400100 
 819      00
 820              	.LBE258:
 821              	.LBE288:
 822              	.LBE318:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 823              		.loc 1 76 0 discriminator 2
 824 08af C462BD98 		vfmadd132pd	ymm11, ymm8, ymm1	# vect_var_.187, vect_var_.185, vect_v.177
 824      D9
 825 08b4 C5355905 		vmulpd	ymm8, ymm9, YMMWORD PTR .LC14[rip]	# vect_var_.179, tmp1125,
 825      00000000 
 826 08bc C4C12D5C 		vsubpd	ymm7, ymm10, YMMWORD PTR [r14+32+rax]	# vect_var_.183, tmp1126, MEM[base: vect_pU.170_413, 
 826      7C0620
 827              	.LBB319:
 828              	.LBB320:
 829              	.LBB321:
 830              	.LBB322:
 831              	.LBB323:
  54:saya.cpp      ****   return ar[x][y][z];
 832              		.loc 1 54 0 discriminator 2
 833 08c3 C57D28CB 		vmovapd	ymm9, ymm3	# tmp1073, tmp910
 834              	.LBE323:
 835              	.LBE322:
 836              	.LBE321:
 837              	.LBE320:
 838              	.LBE319:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 839              		.loc 1 76 0 discriminator 2
 840 08c7 C4E2A598 		vfmadd132pd	ymm4, ymm11, YMMWORD PTR .LC16[rip]	# vect_var_.305, vect_var_.187,
 840      25000000 
 840      00
 841              	.LBB456:
 842              	.LBB289:
 843              	.LBB259:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 844              		.loc 1 68 0 discriminator 2
 845 08d0 C4417D10 		vmovupd	ymm12, YMMWORD PTR [r14+32+rax]	# vect_ret.249, MEM[base: vect_pU.170_413, index: ivtmp.37
 845      640620
 846              	.LBE259:
 847              	.LBE289:
 848              	.LBE456:
 849              	.LBB457:
 850              	.LBB434:
 851              	.LBB412:
 852              	.LBB327:
 853              	.LBB328:
  54:saya.cpp      ****   return ar[x][y][z];
 854              		.loc 1 54 0 discriminator 2
 855 08d7 C57D28D3 		vmovapd	ymm10, ymm3	# tmp1075, tmp910
 856              	.LBE328:
 857              	.LBE327:
 858              	.LBE412:
 859              	.LBE434:
 860              	.LBE457:
 861              	.LBB458:
 862              	.LBB290:
 863              	.LBB260:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 864              		.loc 1 66 0 discriminator 2
 865 08db C5855894 		vaddpd	ymm2, ymm15, YMMWORD PTR [rsp+384]	# vect_var_.208, vect_var_.204, %sfp
 865      24800100 
 865      00
 866              	.LBE260:
 867              	.LBE290:
 868              	.LBE458:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 869              		.loc 1 76 0 discriminator 2
 870 08e4 C545593D 		vmulpd	ymm15, ymm7, YMMWORD PTR .LC15[rip]	# vect_var_.185, vect_var_.183,
 870      00000000 
 871              	.LBB459:
 872              	.LBB435:
 873              	.LBB413:
 874              	.LBB337:
 875              	.LBB338:
  54:saya.cpp      ****   return ar[x][y][z];
 876              		.loc 1 54 0 discriminator 2
 877 08ec C5F96FBC 		vmovdqa	xmm7, XMMWORD PTR [rsp+272]	# tmp441, %sfp
 877      24100100 
 877      00
 878              	.LBE338:
 879              	.LBE337:
 880              	.LBE413:
 881              	.LBE435:
 882              	.LBE459:
 883              	.LBB460:
 884              	.LBB291:
 885              	.LBB261:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 886              		.loc 1 66 0 discriminator 2
 887 08f5 C4416D58 		vaddpd	ymm14, ymm2, ymm14	# vect_var_.212, vect_var_.208, vect_var_.209
 887      F6
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 888              		.loc 1 67 0 discriminator 2
 889 08fa C58D58F6 		vaddpd	ymm6, ymm14, ymm6	# vect_var_.226, vect_var_.212, vect_var_.223
 890              	.LBE261:
 891              	.LBE291:
 892              	.LBE460:
 893              	.LBB461:
 894              	.LBB436:
 895              	.LBB414:
 896              	.LBB351:
 897              	.LBB339:
  54:saya.cpp      ****   return ar[x][y][z];
 898              		.loc 1 54 0 discriminator 2
 899 08fe C57D28F3 		vmovapd	ymm14, ymm3	# tmp1071, tmp910
 900              	.LBE339:
 901              	.LBE351:
 902              	.LBE414:
 903              	.LBE436:
 904              	.LBE461:
 905              	.LBB462:
 906              	.LBB292:
 907              	.LBB262:
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 908              		.loc 1 67 0 discriminator 2
 909 0902 C5CD58ED 		vaddpd	ymm5, ymm6, ymm5	# vect_var_.240, vect_var_.226, vect_var_.237
 910              	.LBE262:
 911              	.LBE292:
 912              	.LBE462:
 913              	.LBB463:
 914              	.LBB437:
 915              	.LBB415:
 916              	.LBB352:
 917              	.LBB340:
  54:saya.cpp      ****   return ar[x][y][z];
 918              		.loc 1 54 0 discriminator 2
 919 0906 C5F96FB4 		vmovdqa	xmm6, XMMWORD PTR [rsp+288]	# tmp438, %sfp
 919      24200100 
 919      00
 920              	.LBE340:
 921              	.LBE352:
 922              	.LBE415:
 923              	.LBE437:
 924              	.LBE463:
 925              	.LBB464:
 926              	.LBB293:
 927              	.LBB263:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 928              		.loc 1 68 0 discriminator 2
 929 090f C462D59C 		vfnmadd132pd	ymm12, ymm5, YMMWORD PTR .LC12[rip]	# vect_ret.249, vect_var_.240,
 929      25000000 
 929      00
 930              	.LBE263:
 931              	.LBE293:
 932              	.LBE464:
 933              	.LBB465:
 934              	.LBB438:
 935              	.LBB416:
 936              	.LBB353:
 937              	.LBB341:
  54:saya.cpp      ****   return ar[x][y][z];
 938              		.loc 1 54 0 discriminator 2
 939 0918 C5FD28EB 		vmovapd	ymm5, ymm3	# tmp1072, tmp910
 940              	.LBE341:
 941              	.LBE353:
 942              	.LBE416:
 943              	.LBE438:
 944              	.LBE465:
 945              	.LBB466:
 946              	.LBB294:
 947              	.LBB264:
  69:saya.cpp      ****     return ret / dx / dx;
 948              		.loc 1 69 0 discriminator 2
 949 091c C4411D5E 		vdivpd	ymm11, ymm12, ymm13	# vect_var_.250, vect_ret.249, tmp923
 949      DD
 950 0921 C4C1255E 		vdivpd	ymm2, ymm11, ymm13	# vect_var_.305, vect_var_.250, tmp923
 950      D5
 951              	.LBE264:
 952              	.LBE294:
 953              	.LBE466:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 954              		.loc 1 76 0 discriminator 2
 955 0926 C53D59E0 		vmulpd	ymm12, ymm8, ymm0	# vect_var_.187, vect_var_.179, vect_v.178
 956 092a C4628598 		vfmadd132pd	ymm12, ymm15, ymm0	# vect_var_.187, vect_var_.185, vect_v.178
 956      E0
 957              	.LBB467:
 958              	.LBB439:
 959              	.LBB417:
 960              	.LBB354:
 961              	.LBB342:
  54:saya.cpp      ****   return ar[x][y][z];
 962              		.loc 1 54 0 discriminator 2
 963 092f C442D592 		vgatherdpd	ymm11, QWORD PTR [r9+xmm7*8], ymm5	# vect_var_.264,, tmp1072
 963      1CF9
 964              	.LBE342:
 965              	.LBE354:
 966              	.LBB355:
 967              	.LBB329:
 968 0935 C5FD28EB 		vmovapd	ymm5, ymm3	# tmp1076, tmp910
 969              	.LBE329:
 970              	.LBE355:
 971              	.LBB356:
 972              	.LBB343:
 973 0939 C4428D92 		vgatherdpd	ymm15, QWORD PTR [r9+xmm6*8], ymm14	# vect_var_.264,, tmp1071
 973      3CF1
 974              	.LBE343:
 975              	.LBE356:
 976              	.LBE417:
 977              	.LBE439:
 978              	.LBE467:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 979              		.loc 1 76 0 discriminator 2
 980 093f C4E29D98 		vfmadd132pd	ymm2, ymm12, YMMWORD PTR .LC16[rip]	# vect_var_.305, vect_var_.187,
 980      15000000 
 980      00
 981              	.LVL34:
 982              	.LBB468:
 983              	.LBB440:
 984              	.LBB418:
 985              	.LBB357:
 986              	.LBB324:
  54:saya.cpp      ****   return ar[x][y][z];
 987              		.loc 1 54 0 discriminator 2
 988 0948 C57D28E3 		vmovapd	ymm12, ymm3	# tmp1074, tmp910
 989              	.LBE324:
 990              	.LBE357:
 991              	.LBB358:
 992              	.LBB344:
 993 094c C57D299C 		vmovapd	YMMWORD PTR [rsp+288], ymm11	# %sfp, vect_var_.264
 993      24200100 
 993      00
 994              	.LVL35:
 995              	.LBE344:
 996              	.LBE358:
 997              	.LBB359:
 998              	.LBB325:
 999 0955 C442B592 		vgatherdpd	ymm14, QWORD PTR [r8+xmm6*8], ymm9	# vect_var_.267,, tmp1073
 999      34F0
 1000              	.LBE325:
 1001              	.LBE359:
 1002              	.LBB360:
 1003              	.LBB361:
 1004 095b C57D28CB 		vmovapd	ymm9, ymm3	# tmp1077, tmp910
 1005              	.LBE361:
 1006              	.LBE360:
 1007              	.LBB368:
 1008              	.LBB326:
 1009 095f C4429D92 		vgatherdpd	ymm8, QWORD PTR [r8+xmm7*8], ymm12	# vect_var_.267,, tmp1074
 1009      04F8
 1010 0965 C57D2984 		vmovapd	YMMWORD PTR [rsp+320], ymm8	# %sfp, vect_var_.267
 1010      24400100 
 1010      00
 1011              	.LBE326:
 1012              	.LBE368:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1013              		.loc 1 65 0 discriminator 2
 1014 096e C4410558 		vaddpd	ymm15, ymm15, ymm14	# vect_var_.270, vect_var_.264, vect_var_.267
 1014      FE
 1015              	.LBB369:
 1016              	.LBB330:
  54:saya.cpp      ****   return ar[x][y][z];
 1017              		.loc 1 54 0 discriminator 2
 1018 0973 C462AD92 		vgatherdpd	ymm12, QWORD PTR [rdi+xmm6*8], ymm10	# vect_var_.271,, tmp1075
 1018      24F7
 1019 0979 C462D592 		vgatherdpd	ymm11, QWORD PTR [rdi+xmm7*8], ymm5	# vect_var_.271,, tmp1076
 1019      1CFF
 1020              	.LBE330:
 1021              	.LBE369:
 1022              	.LBB370:
 1023              	.LBB371:
 1024 097f C5F96FAC 		vmovdqa	xmm5, XMMWORD PTR [rsp+256]	# tmp479, %sfp
 1024      24000100 
 1024      00
 1025              	.LBE371:
 1026              	.LBE370:
 1027              	.LBB377:
 1028              	.LBB331:
 1029 0988 C57D299C 		vmovapd	YMMWORD PTR [rsp+352], ymm11	# %sfp, vect_var_.271
 1029      24600100 
 1029      00
 1030              	.LBE331:
 1031              	.LBE377:
 1032              	.LBB378:
 1033              	.LBB362:
 1034 0991 C462B592 		vgatherdpd	ymm11, QWORD PTR [rsi+xmm6*8], ymm9	# vect_var_.275,, tmp1077
 1034      1CF6
 1035              	.LBE362:
 1036              	.LBE378:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1037              		.loc 1 66 0 discriminator 2
 1038 0997 C4410558 		vaddpd	ymm14, ymm15, ymm12	# vect_var_.274, vect_var_.270, vect_var_.271
 1038      F4
 1039              	.LBB379:
 1040              	.LBB363:
  54:saya.cpp      ****   return ar[x][y][z];
 1041              		.loc 1 54 0 discriminator 2
 1042 099c C5FD28F3 		vmovapd	ymm6, ymm3	# tmp1078, tmp910
 1043 09a0 C462CD92 		vgatherdpd	ymm8, QWORD PTR [rsi+xmm7*8], ymm6	# vect_var_.275,, tmp1078
 1043      04FE
 1044              	.LVL36:
 1045              	.LBE363:
 1046              	.LBE379:
 1047              	.LBB380:
 1048              	.LBB372:
 1049 09a6 C5FD28FB 		vmovapd	ymm7, ymm3	# tmp1079, tmp910
 1050 09aa C57D28CB 		vmovapd	ymm9, ymm3	# tmp1080, tmp910
 1051 09ae C5F96FB4 		vmovdqa	xmm6, XMMWORD PTR [rsp+240]	# tmp482, %sfp
 1051      24F00000 
 1051      00
 1052              	.LBE372:
 1053              	.LBE380:
 1054              	.LBE418:
 1055              	.LBE440:
 1056              	.LBE468:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1057              		.loc 1 77 0 discriminator 2
 1058 09b7 C575593D 		vmulpd	ymm15, ymm1, YMMWORD PTR .LC17[rip]	# vect_var_.261, vect_v.177,
 1058      00000000 
 1059              	.LBB469:
 1060              	.LBB441:
 1061              	.LBB419:
 1062              	.LBB381:
 1063              	.LBB373:
  54:saya.cpp      ****   return ar[x][y][z];
 1064              		.loc 1 54 0 discriminator 2
 1065 09bf C462C592 		vgatherdpd	ymm10, QWORD PTR [rdx+xmm5*8], ymm7	# vect_var_.279,, tmp1079
 1065      14EA
 1066              	.LBE373:
 1067              	.LBE381:
 1068              	.LBB382:
 1069              	.LBB383:
 1070 09c5 C5F96FAC 		vmovdqa	xmm5, XMMWORD PTR [rsp+224]	# tmp502, %sfp
 1070      24E00000 
 1070      00
 1071              	.LBE383:
 1072              	.LBE382:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1073              		.loc 1 66 0 discriminator 2
 1074 09ce C4410D58 		vaddpd	ymm12, ymm14, ymm11	# vect_var_.278, vect_var_.274, vect_var_.275
 1074      E3
 1075              	.LBB389:
 1076              	.LBB374:
  54:saya.cpp      ****   return ar[x][y][z];
 1077              		.loc 1 54 0 discriminator 2
 1078 09d3 C4E2B592 		vgatherdpd	ymm7, QWORD PTR [rdx+xmm6*8], ymm9	# vect_var_.279,, tmp1080
 1078      3CF2
 1079              	.LBE374:
 1080              	.LBE389:
 1081              	.LBB390:
 1082              	.LBB384:
 1083 09d9 C5FD28F3 		vmovapd	ymm6, ymm3	# tmp1081, tmp910
 1084              	.LBE384:
 1085              	.LBE390:
 1086              	.LBB391:
 1087              	.LBB375:
 1088 09dd C5FD29BC 		vmovapd	YMMWORD PTR [rsp+384], ymm7	# %sfp, vect_var_.279
 1088      24800100 
 1088      00
 1089              	.LBE375:
 1090              	.LBE391:
 1091              	.LBB392:
 1092              	.LBB385:
 1093 09e6 C5FD28FB 		vmovapd	ymm7, ymm3	# tmp1082, tmp910
 1094 09ea C462CD92 		vgatherdpd	ymm9, QWORD PTR [rdx+xmm5*8], ymm6	# vect_var_.283,, tmp1081
 1094      0CEA
 1095              	.LBE385:
 1096              	.LBE392:
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1097              		.loc 1 67 0 discriminator 2
 1098 09f0 C4411D58 		vaddpd	ymm11, ymm12, ymm10	# vect_var_.282, vect_var_.278, vect_var_.279
 1098      DA
 1099              	.LBB393:
 1100              	.LBB386:
  54:saya.cpp      ****   return ar[x][y][z];
 1101              		.loc 1 54 0 discriminator 2
 1102 09f5 C5F96FAC 		vmovdqa	xmm5, XMMWORD PTR [rsp+208]	# tmp505, %sfp
 1102      24D00000 
 1102      00
 1103 09fe C4E2C592 		vgatherdpd	ymm6, QWORD PTR [rdx+xmm5*8], ymm7	# vect_var_.283,, tmp1082
 1103      34EA
 1104              	.LBE386:
 1105              	.LBE393:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1106              		.loc 1 68 0 discriminator 2
 1107 0a04 C4C17D10 		vmovupd	ymm7, YMMWORD PTR [r13+0+rax]	# vect_ret.295, MEM[base: vect_pV.176_402, index: ivtmp.377_
 1107      7C0500
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1108              		.loc 1 67 0 discriminator 2
 1109 0a0b C4412558 		vaddpd	ymm10, ymm11, ymm9	# vect_var_.286, vect_var_.282, vect_var_.283
 1109      D1
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1110              		.loc 1 68 0 discriminator 2
 1111 0a10 C4417D10 		vmovupd	ymm11, YMMWORD PTR [r13+32+rax]	# vect_ret.295, MEM[base: vect_pV.176_402, index: ivtmp.37
 1111      5C0520
 1112 0a17 C4E2AD9C 		vfnmadd132pd	ymm7, ymm10, YMMWORD PTR .LC12[rip]	# vect_ret.295, vect_var_.286,
 1112      3D000000 
 1112      00
  69:saya.cpp      ****     return ret / dx / dx;
 1113              		.loc 1 69 0 discriminator 2
 1114 0a20 C441455E 		vdivpd	ymm9, ymm7, ymm13	# vect_var_.296, vect_ret.295, tmp923
 1114      CD
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1115              		.loc 1 65 0 discriminator 2
 1116 0a25 C57D2894 		vmovapd	ymm10, YMMWORD PTR [rsp+320]	# vect_var_.267, %sfp
 1116      24400100 
 1116      00
  69:saya.cpp      ****     return ret / dx / dx;
 1117              		.loc 1 69 0 discriminator 2
 1118 0a2e C4C1355E 		vdivpd	ymm5, ymm9, ymm13	# vect_var_.312, vect_var_.296, tmp923
 1118      ED
 1119              	.LBE419:
 1120              	.LBE441:
 1121              	.LBE469:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1122              		.loc 1 77 0 discriminator 2
 1123 0a33 C4C17D28 		vmovapd	ymm7, YMMWORD PTR [r14+rax]	# tmp1154, MEM[base: vect_pU.170_413, index: ivtmp.377_586, of
 1123      3C06
 1124              	.LBB470:
 1125              	.LBB442:
 1126              	.LBB420:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1127              		.loc 1 65 0 discriminator 2
 1128 0a39 C52D588C 		vaddpd	ymm9, ymm10, YMMWORD PTR [rsp+288]	# vect_var_.270, vect_var_.267, %sfp
 1128      24200100 
 1128      00
 1129              	.LBE420:
 1130              	.LBE442:
 1131              	.LBE470:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1132              		.loc 1 77 0 discriminator 2
 1133 0a42 C5455935 		vmulpd	ymm14, ymm7, YMMWORD PTR .LC18[rip]	# vect_var_.257, tmp1154,
 1133      00000000 
 1134 0a4a C50D59E1 		vmulpd	ymm12, ymm14, ymm1	# vect_var_.263, vect_var_.257, vect_v.177
 1135 0a4e C462859A 		vfmsub132pd	ymm12, ymm15, ymm1	# vect_var_.263, vect_var_.261, vect_v.177
 1135      E1
 1136 0a53 C4E29D98 		vfmadd132pd	ymm5, ymm12, YMMWORD PTR .LC19[rip]	# vect_var_.312, vect_var_.263,
 1136      2D000000 
 1136      00
 1137 0a5c C4417D28 		vmovapd	ymm10, YMMWORD PTR [r14+32+rax]	# tmp1156, MEM[base: vect_pU.170_413, index: ivtmp.377_586
 1137      540620
 1138              	.LBB471:
 1139              	.LBB443:
 1140              	.LBB421:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1141              		.loc 1 66 0 discriminator 2
 1142 0a63 C53558BC 		vaddpd	ymm15, ymm9, YMMWORD PTR [rsp+352]	# vect_var_.274, vect_var_.270, %sfp
 1142      24600100 
 1142      00
 1143              	.LBE421:
 1144              	.LBE443:
 1145              	.LBE471:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1146              		.loc 1 77 0 discriminator 2
 1147 0a6c C52D590D 		vmulpd	ymm9, ymm10, YMMWORD PTR .LC18[rip]	# vect_var_.257, tmp1156,
 1147      00000000 
 1148              	.LBB472:
 1149              	.LBB444:
 1150              	.LBB422:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1151              		.loc 1 66 0 discriminator 2
 1152 0a74 C4410558 		vaddpd	ymm8, ymm15, ymm8	# vect_var_.278, vect_var_.274, vect_var_.275
 1152      C0
 1153              	.LBE422:
 1154              	.LBE444:
 1155              	.LBE472:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1156              		.loc 1 77 0 discriminator 2
 1157 0a79 C53559F8 		vmulpd	ymm15, ymm9, ymm0	# vect_var_.263, vect_var_.257, vect_v.178
 1158              	.LBB473:
 1159              	.LBB445:
 1160              	.LBB423:
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1161              		.loc 1 67 0 discriminator 2
 1162 0a7d C5BD58BC 		vaddpd	ymm7, ymm8, YMMWORD PTR [rsp+384]	# vect_var_.282, vect_var_.278, %sfp
 1162      24800100 
 1162      00
 1163              	.LBE423:
 1164              	.LBE445:
 1165              	.LBE473:
  78:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1166              		.loc 1 78 0 discriminator 2
 1167 0a86 C4417D28 		vmovapd	ymm8, YMMWORD PTR [r14+rax]	# tmp1157, MEM[base: vect_pU.170_413, index: ivtmp.377_586, of
 1167      0406
 1168 0a8c C4E2BD98 		vfmadd132pd	ymm4, ymm8, YMMWORD PTR .LC20[rip]	# vect_var_.305, tmp1157,
 1168      25000000 
 1168      00
 1169              	.LBB474:
 1170              	.LBB446:
 1171              	.LBB424:
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1172              		.loc 1 67 0 discriminator 2
 1173 0a95 C5C558F6 		vaddpd	ymm6, ymm7, ymm6	# vect_var_.286, vect_var_.282, vect_var_.283
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1174              		.loc 1 68 0 discriminator 2
 1175 0a99 C462CD9C 		vfnmadd132pd	ymm11, ymm6, YMMWORD PTR .LC12[rip]	# vect_ret.295, vect_var_.286,
 1175      1D000000 
 1175      00
  69:saya.cpp      ****     return ret / dx / dx;
 1176              		.loc 1 69 0 discriminator 2
 1177 0aa2 C441255E 		vdivpd	ymm14, ymm11, ymm13	# vect_var_.296, vect_ret.295, tmp923
 1177      F5
 1178              	.LBE424:
 1179              	.LBE446:
 1180              	.LBE474:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1181              		.loc 1 77 0 discriminator 2
 1182 0aa7 C57D591D 		vmulpd	ymm11, ymm0, YMMWORD PTR .LC17[rip]	# vect_var_.261, vect_v.178,
 1182      00000000 
 1183              	.LBB475:
 1184              	.LBB447:
 1185              	.LBB425:
  69:saya.cpp      ****     return ret / dx / dx;
 1186              		.loc 1 69 0 discriminator 2
 1187 0aaf C4410D5E 		vdivpd	ymm12, ymm14, ymm13	# vect_var_.312, vect_var_.296, tmp923
 1187      E5
 1188              	.LBE425:
 1189              	.LBE447:
 1190              	.LBE475:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1191              		.loc 1 77 0 discriminator 2
 1192 0ab4 C462A59A 		vfmsub132pd	ymm15, ymm11, ymm0	# vect_var_.263, vect_var_.261, vect_v.178
 1192      F8
 1193 0ab9 C4628598 		vfmadd132pd	ymm12, ymm15, YMMWORD PTR .LC19[rip]	# vect_var_.312, vect_var_.263,
 1193      25000000 
 1193      00
  78:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1194              		.loc 1 78 0 discriminator 2
 1195 0ac2 C4C17D29 		vmovapd	YMMWORD PTR [r15+rax], ymm4	# MEM[base: _521, index: ivtmp.377_586, offset: 0B], vect_var_
 1195      2407
 1196              		.loc 1 79 0 discriminator 2
 1197 0ac8 488BB424 		mov	rsi, QWORD PTR [rsp+200]	# D.35788, %sfp
 1197      C8000000 
 1198 0ad0 C4E2F598 		vfmadd132pd	ymm5, ymm1, YMMWORD PTR .LC20[rip]	# vect_var_.312, vect_v.177,
 1198      2D000000 
 1198      00
 1199 0ad9 C462FD98 		vfmadd132pd	ymm12, ymm0, YMMWORD PTR .LC20[rip]	# vect_var_.312, vect_v.178,
 1199      25000000 
 1199      00
  78:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1200              		.loc 1 78 0 discriminator 2
 1201 0ae2 C4C17D28 		vmovapd	ymm4, YMMWORD PTR [r14+32+rax]	# tmp1158, MEM[base: vect_pU.170_413, index: ivtmp.377_586,
 1201      640620
 1202 0ae9 C4E2DD98 		vfmadd132pd	ymm2, ymm4, YMMWORD PTR .LC20[rip]	# vect_var_.305, tmp1158,
 1202      15000000 
 1202      00
 1203 0af2 C4C17D29 		vmovapd	YMMWORD PTR [r15+32+rax], ymm2	# MEM[base: _521, index: ivtmp.377_586, offset: 32B], vect_
 1203      540720
 1204              		.loc 1 79 0 discriminator 2
 1205 0af9 C5FD292C 		vmovapd	YMMWORD PTR [rsi+rax], ymm5	# MEM[base: _516, index: ivtmp.377_586, offset: 0B], vect_var_
 1205      06
 1206 0afe C57D2964 		vmovapd	YMMWORD PTR [rsi+32+rax], ymm12	# MEM[base: _516, index: ivtmp.377_586, offset: 32B], vect
 1206      0620
 1207 0b04 4883C040 		add	rax, 64	# ivtmp.377,
 1208 0b08 483D0003 		cmp	rax, 768	# ivtmp.377,
 1208      0000
 1209 0b0e 0F851CFB 		jne	.L44	#,
 1209      FFFF
 1210 0b14 4C8B7C24 		mov	r15, QWORD PTR [rsp+40]	# ivtmp.405, %sfp
 1210      28
 1211 0b19 4C89AC24 		mov	QWORD PTR [rsp+272], r13	# %sfp, ivtmp.410
 1211      10010000 
 1212              		.loc 1 79 0 is_stmt 0
 1213 0b21 31C9     		xor	ecx, ecx	# ivtmp.352
 1214              	.LBB476:
 1215              	.LBB448:
 1216              	.LBB426:
 1217              	.LBB394:
 1218              	.LBB345:
  54:saya.cpp      ****   return ar[x][y][z];
 1219              		.loc 1 54 0 is_stmt 1
 1220 0b23 4C8B6424 		mov	r12, QWORD PTR [rsp+64]	# D.35778, %sfp
 1220      40
 1221 0b28 4C89B424 		mov	QWORD PTR [rsp+288], r14	# %sfp, ivtmp.409
 1221      20010000 
 1222              	.LBE345:
 1223              	.LBE394:
 1224              	.LBB395:
 1225              	.LBB332:
 1226 0b30 4C8B5424 		mov	r10, QWORD PTR [rsp+56]	# D.35778, %sfp
 1226      38
 1227              	.LBE332:
 1228              	.LBE395:
 1229              	.LBB396:
 1230              	.LBB364:
 1231 0b35 4C8B4424 		mov	r8, QWORD PTR [rsp+48]	# D.35778, %sfp
 1231      30
 1232 0b3a 488B7424 		mov	rsi, QWORD PTR [rsp+24]	# D.35780, %sfp
 1232      18
 1233 0b3f 488B5424 		mov	rdx, QWORD PTR [rsp+32]	# D.35780, %sfp
 1233      20
 1234              	.LBE364:
 1235              	.LBE396:
 1236              	.LBB397:
 1237              	.LBB346:
 1238 0b44 4B8D1CA4 		lea	rbx, [r12+r12*4]	# tmp942,
 1239              	.LBE346:
 1240              	.LBE397:
 1241              	.LBB398:
 1242              	.LBB333:
 1243 0b48 4F8D0C92 		lea	r9, [r10+r10*4]	# tmp947,
 1244 0b4c 4C8B6C24 		mov	r13, QWORD PTR [rsp+80]	# D.35781, %sfp
 1244      50
 1245              	.LBE333:
 1246              	.LBE398:
 1247              	.LBB399:
 1248              	.LBB365:
 1249 0b51 4B8D0480 		lea	rax, [r8+r8*4]	# tmp952,
 1250 0b55 4C8B6424 		mov	r12, QWORD PTR [rsp+96]	# D.35781, %sfp
 1250      60
 1251 0b5a 4E8D143E 		lea	r10, [rsi+r15]	# D.35780,
 1252 0b5e 4C8B4424 		mov	r8, QWORD PTR [rsp+72]	# D.35781, %sfp
 1252      48
 1253 0b63 488B7424 		mov	rsi, QWORD PTR [rsp+88]	# D.35781, %sfp
 1253      58
 1254 0b68 4E8D1C3A 		lea	r11, [rdx+r15]	# D.35780,
 1255 0b6c 4C899424 		mov	QWORD PTR [rsp+320], r10	# %sfp, D.35780
 1255      40010000 
 1256 0b74 488D1480 		lea	rdx, [rax+rax*4]	# tmp954,
 1257 0b78 4C899C24 		mov	QWORD PTR [rsp+384], r11	# %sfp, D.35780
 1257      80010000 
 1258              	.LBE365:
 1259              	.LBE399:
 1260              	.LBB400:
 1261              	.LBB347:
 1262 0b80 488D3C9B 		lea	rdi, [rbx+rbx*4]	# tmp944,
 1263              	.LBE347:
 1264              	.LBE400:
 1265              	.LBB401:
 1266              	.LBB366:
 1267 0b84 48C1E202 		sal	rdx, 2	# tmp955,
 1268              	.LBE366:
 1269              	.LBE401:
 1270              	.LBB402:
 1271              	.LBB334:
 1272 0b88 4B8D1C89 		lea	rbx, [r9+r9*4]	# tmp949,
 1273              	.LBE334:
 1274              	.LBE402:
 1275              	.LBB403:
 1276              	.LBB348:
 1277 0b8c 48C1E702 		sal	rdi, 2	# tmp945,
 1278 0b90 48899424 		mov	QWORD PTR [rsp+352], rdx	# %sfp, tmp955
 1278      60010000 
 1279              	.LBE348:
 1280              	.LBE403:
 1281              	.LBB404:
 1282              	.LBB335:
 1283 0b98 48C1E302 		sal	rbx, 2	# tmp950,
 1284 0b9c 0F1F4000 		.p2align 4,,10
 1285              		.p2align 3
 1286              	.L47:
 1287              	.LVL37:
 1288 0ba0 448DB1C4 		lea	r14d, [rcx+196]	# D.35779,
 1288      000000
 1289              	.LBE335:
 1290              	.LBE404:
 1291              	.LBE426:
 1292              	.LBE448:
 1293              	.LBE476:
 1294              	.LBB477:
 1295              	.LBB295:
 1296              	.LBB265:
 1297              	.LBB234:
 1298              	.LBB174:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1299              		.loc 1 53 0
 1300 0ba7 B81F85EB 		mov	eax, 1374389535	# tmp1083,
 1300      51
 1301 0bac 41B96400 		mov	r9d, 100	#,
 1301      0000
 1302 0bb2 41F7EE   		imul	r14d	# D.35779
 1303 0bb5 4589F3   		mov	r11d, r14d	# tmp638, D.35779
 1304              	.LBE174:
 1305              	.LBE234:
 1306              	.LBB235:
 1307              	.LBB208:
 1308 0bb8 B81F85EB 		mov	eax, 1374389535	# tmp1084,
 1308      51
 1309              	.LBE208:
 1310              	.LBE235:
 1311              	.LBB236:
 1312              	.LBB175:
 1313 0bbd 41C1FB1F 		sar	r11d, 31	# tmp638,
 1314              	.LBE175:
 1315              	.LBE236:
 1316              	.LBE265:
 1317              	.LBE295:
 1318              	.LBE477:
 1319              	.LBB478:
 1320              	.LBB449:
 1321              	.LBB427:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1322              		.loc 1 68 0
 1323 0bc1 C57B101D 		vmovsd	xmm11, QWORD PTR .LC21[rip]	# tmp1169,
 1323      00000000 
 1324              	.LBE427:
 1325              	.LBE449:
 1326              	.LBE478:
  75:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
 1327              		.loc 1 75 0
 1328 0bc9 C4417B10 		vmovsd	xmm14, QWORD PTR U[r15+768+rcx*8]	# u, MEM[symbol: U, base: ivtmp.405_401, index: ivtmp.352
 1328      B4CF0000 
 1328      0000
 1329              	.LVL38:
 1330 0bd3 C4C17B10 		vmovsd	xmm0, QWORD PTR V[r15+768+rcx*8]	# v, MEM[symbol: V, base: ivtmp.405_401, index: ivtmp.352_
 1330      84CF0000 
 1330      0000
 1331              	.LVL39:
 1332              	.LBB479:
 1333              	.LBB296:
 1334              	.LBB266:
 1335              	.LBB237:
 1336              	.LBB176:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1337              		.loc 1 53 0
 1338 0bdd C1FA05   		sar	edx, 5	# z,
 1339              	.LBE176:
 1340              	.LBE237:
 1341              	.LBE266:
 1342              	.LBE296:
 1343              	.LBE479:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1344              		.loc 1 77 0
 1345 0be0 C50B5905 		vmulsd	xmm8, xmm14, QWORD PTR .LC24[rip]	# D.35785, u,
 1345      00000000 
 1346              	.LBB480:
 1347              	.LBB297:
 1348              	.LBB267:
 1349              	.LBB238:
 1350              	.LBB177:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1351              		.loc 1 53 0
 1352 0be8 4429DA   		sub	edx, r11d	# z, tmp638
 1353 0beb 410FAFD1 		imul	edx, r9d	# tmp639,
 1354 0bef 448D99C3 		lea	r11d, [rcx+195]	# D.35779,
 1354      000000
 1355              	.LBE177:
 1356              	.LBE238:
 1357              	.LBB239:
 1358              	.LBB209:
 1359 0bf6 41B96400 		mov	r9d, 100	#,
 1359      0000
 1360              	.LBE209:
 1361              	.LBE239:
 1362              	.LBE267:
 1363              	.LBE297:
 1364              	.LBE480:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1365              		.loc 1 77 0
 1366 0bfc C57B593D 		vmulsd	xmm15, xmm0, QWORD PTR .LC23[rip]	# D.35785, v,
 1366      00000000 
 1367              	.LBB481:
 1368              	.LBB298:
 1369              	.LBB268:
 1370              	.LBB240:
 1371              	.LBB210:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1372              		.loc 1 53 0
 1373 0c04 4589DA   		mov	r10d, r11d	# tmp644, D.35779
 1374 0c07 41C1FA1F 		sar	r10d, 31	# tmp644,
 1375              	.LBE210:
 1376              	.LBE240:
 1377              	.LBB241:
 1378              	.LBB178:
 1379 0c0b 4129D6   		sub	r14d, edx	# z, tmp639
 1380              	.LVL40:
 1381              	.LBE178:
 1382              	.LBE241:
 1383              	.LBB242:
 1384              	.LBB211:
 1385 0c0e 41F7EB   		imul	r11d	# D.35779
 1386              	.LVL41:
 1387              	.LBE211:
 1388              	.LBE242:
 1389              	.LBB243:
 1390              	.LBB221:
 1391 0c11 B81F85EB 		mov	eax, 1374389535	# tmp1085,
 1391      51
 1392              	.LVL42:
 1393              	.LBE221:
 1394              	.LBE243:
 1395              	.LBE268:
 1396              	.LBE298:
 1397              	.LBE481:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1398              		.loc 1 77 0
 1399 0c16 C5BB59E0 		vmulsd	xmm4, xmm8, xmm0	# D.35785, D.35785, v
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1400              		.loc 1 76 0
 1401 0c1a C50B5905 		vmulsd	xmm8, xmm14, QWORD PTR .LC26[rip]	# D.35785, u,
 1401      00000000 
 1402              	.LBB482:
 1403              	.LBB299:
 1404              	.LBB269:
 1405              	.LBB244:
 1406              	.LBB212:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1407              		.loc 1 53 0
 1408 0c22 C1FA05   		sar	edx, 5	# z,
 1409 0c25 4429D2   		sub	edx, r10d	# z, tmp644
 1410 0c28 410FAFD1 		imul	edx, r9d	# tmp645,
 1411 0c2c 448D91C5 		lea	r10d, [rcx+197]	# D.35779,
 1411      000000
 1412              	.LBE212:
 1413              	.LBE244:
 1414              	.LBB245:
 1415              	.LBB222:
 1416 0c33 4589D1   		mov	r9d, r10d	# tmp650, D.35779
 1417              	.LBE222:
 1418              	.LBE245:
 1419              	.LBE269:
 1420              	.LBE299:
 1421              	.LBE482:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1422              		.loc 1 77 0
 1423 0c36 C4E2819B 		vfmsub132sd	xmm4, xmm15, xmm0	# D.35785, D.35785, v
 1423      E0
 1424              	.LBB483:
 1425              	.LBB300:
 1426              	.LBB270:
 1427              	.LBB246:
 1428              	.LBB223:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1429              		.loc 1 53 0
 1430 0c3b 41C1F91F 		sar	r9d, 31	# tmp650,
 1431              	.LBE223:
 1432              	.LBE246:
 1433              	.LBB247:
 1434              	.LBB213:
 1435 0c3f 4129D3   		sub	r11d, edx	# z, tmp645
 1436              	.LVL43:
 1437              	.LBE213:
 1438              	.LBE247:
 1439              	.LBB248:
 1440              	.LBB224:
 1441 0c42 41F7EA   		imul	r10d	# D.35779
 1442              	.LVL44:
 1443 0c45 B8640000 		mov	eax, 100	#,
 1443      00
 1444              	.LBE224:
 1445              	.LBE248:
 1446              	.LBE270:
 1447              	.LBE300:
 1448              	.LBE483:
 1449              	.LBB484:
 1450              	.LBB450:
 1451              	.LBB428:
 1452              	.LBB405:
 1453              	.LBB376:
  54:saya.cpp      ****   return ar[x][y][z];
 1454              		.loc 1 54 0
 1455 0c4a 4D63DB   		movsx	r11, r11d	# z, z
 1456 0c4d 4901FB   		add	r11, rdi	# tmp702, tmp945
 1457              	.LBE376:
 1458              	.LBE405:
 1459              	.LBE428:
 1460              	.LBE450:
 1461              	.LBE484:
 1462              	.LBB485:
 1463              	.LBB301:
 1464              	.LBB271:
 1465              	.LBB249:
 1466              	.LBB225:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1467              		.loc 1 53 0
 1468 0c50 C1FA05   		sar	edx, 5	# z,
 1469 0c53 4429CA   		sub	edx, r9d	# z, tmp650
 1470              	.LBE225:
 1471              	.LBE249:
 1472              	.LBE271:
 1473              	.LBE301:
 1474              	.LBE485:
 1475              	.LBB486:
 1476              	.LBB451:
 1477              	.LBB429:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1478              		.loc 1 68 0
 1479 0c56 4C8B8C24 		mov	r9, QWORD PTR [rsp+384]	# D.35780, %sfp
 1479      80010000 
 1480              	.LBE429:
 1481              	.LBE451:
 1482              	.LBE486:
 1483              	.LBB487:
 1484              	.LBB302:
 1485              	.LBB272:
 1486              	.LBB250:
 1487              	.LBB226:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1488              		.loc 1 53 0
 1489 0c5e 0FAFD0   		imul	edx, eax	# tmp651,
 1490              	.LBE226:
 1491              	.LBE250:
 1492              	.LBE272:
 1493              	.LBE302:
 1494              	.LBE487:
 1495              	.LBB488:
 1496              	.LBB452:
 1497              	.LBB430:
 1498              	.LBB406:
 1499              	.LBB349:
  54:saya.cpp      ****   return ar[x][y][z];
 1500              		.loc 1 54 0
 1501 0c61 4963C6   		movsx	rax, r14d	# z, z
 1502              	.LBE349:
 1503              	.LBE406:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1504              		.loc 1 65 0
 1505 0c64 4C8B7424 		mov	r14, QWORD PTR [rsp+112]	# D.35781, %sfp
 1505      70
 1506              	.LBE430:
 1507              	.LBE452:
 1508              	.LBE488:
 1509              	.LBB489:
 1510              	.LBB303:
 1511              	.LBB273:
 1512              	.LBB251:
 1513              	.LBB227:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1514              		.loc 1 53 0
 1515 0c69 4129D2   		sub	r10d, edx	# z, tmp651
 1516              	.LVL45:
 1517              	.LBE227:
 1518              	.LBE251:
 1519              	.LBE273:
 1520              	.LBE303:
 1521              	.LBE489:
 1522              	.LBB490:
 1523              	.LBB453:
 1524              	.LBB431:
 1525              	.LBB407:
 1526              	.LBB350:
  54:saya.cpp      ****   return ar[x][y][z];
 1527              		.loc 1 54 0
 1528 0c6c 488D1407 		lea	rdx, [rdi+rax]	# tmp662,
 1529              	.LBE350:
 1530              	.LBE407:
 1531              	.LBB408:
 1532              	.LBB387:
 1533 0c70 4D63D2   		movsx	r10, r10d	# z, z
 1534              	.LBE387:
 1535              	.LBE408:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1536              		.loc 1 65 0
 1537 0c73 C4C17B10 		vmovsd	xmm1, QWORD PTR [r13+0+rdx*8]	# tmp673, MEM[(Real[40][100] *)_512]
 1537      4CD500
 1538              	.LBB409:
 1539              	.LBB388:
  54:saya.cpp      ****   return ar[x][y][z];
 1540              		.loc 1 54 0
 1541 0c7a 4901FA   		add	r10, rdi	# tmp712, tmp945
 1542              	.LBE388:
 1543              	.LBE409:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1544              		.loc 1 65 0
 1545 0c7d C4C17358 		vaddsd	xmm2, xmm1, QWORD PTR [r14+rdx*8]	# D.35785, tmp673, MEM[(Real[40][100] *)_513]
 1545      14D6
 1546              	.LBB410:
 1547              	.LBB336:
  54:saya.cpp      ****   return ar[x][y][z];
 1548              		.loc 1 54 0
 1549 0c83 4C8D3403 		lea	r14, [rbx+rax]	# tmp682,
 1550              	.LBE336:
 1551              	.LBE410:
 1552              	.LBB411:
 1553              	.LBB367:
 1554 0c87 48038424 		add	rax, QWORD PTR [rsp+352]	# tmp692, %sfp
 1554      60010000 
 1555              	.LBE367:
 1556              	.LBE411:
 1557              	.LBE431:
 1558              	.LBE453:
 1559              	.LBE490:
 1560              	.LBB491:
 1561              	.LBB304:
 1562              	.LBB274:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1563              		.loc 1 65 0
 1564 0c8f C4C17B10 		vmovsd	xmm1, QWORD PTR [r12+rdx*8]	# tmp749, MEM[(Real[40][100] *)_494]
 1564      0CD4
 1565              	.LBE274:
 1566              	.LBE304:
 1567              	.LBE491:
 1568              	.LBB492:
 1569              	.LBB454:
 1570              	.LBB432:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1571              		.loc 1 66 0
 1572 0c95 C4816B58 		vaddsd	xmm5, xmm2, QWORD PTR [r8+r14*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_514]
 1572      2CF0
 1573 0c9b C4C15358 		vaddsd	xmm7, xmm5, QWORD PTR [r8+rax*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_514]
 1573      3CC0
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1574              		.loc 1 67 0
 1575 0ca1 C4814358 		vaddsd	xmm6, xmm7, QWORD PTR [r8+r11*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_514]
 1575      34D8
 1576 0ca7 C4014B58 		vaddsd	xmm12, xmm6, QWORD PTR [r8+r10*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_514]
 1576      24D0
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1577              		.loc 1 68 0
 1578 0cad C442A1BD 		vfnmadd231sd	xmm12, xmm11, QWORD PTR [r9+768+rcx*8]	# ret, tmp1169, MEM[base: _524, index: ivtmp.3
 1578      A4C90003 
 1578      0000
 1579              	.LBE432:
 1580              	.LBE454:
 1581              	.LBE492:
 1582              	.LBB493:
 1583              	.LBB305:
 1584              	.LBB275:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1585              		.loc 1 65 0
 1586 0cb7 4C8B4C24 		mov	r9, QWORD PTR [rsp+120]	# D.35781, %sfp
 1586      78
 1587              	.LBE275:
 1588              	.LBE305:
 1589              	.LBE493:
 1590              	.LBB494:
 1591              	.LBB455:
 1592              	.LBB433:
  69:saya.cpp      ****     return ret / dx / dx;
 1593              		.loc 1 69 0
 1594 0cbc C51B5E15 		vdivsd	xmm10, xmm12, QWORD PTR .LC22[rip]	# D.35785, ret,
 1594      00000000 
 1595 0cc4 C52B5E0D 		vdivsd	xmm9, xmm10, QWORD PTR .LC22[rip]	# D.35785, D.35785,
 1595      00000000 
 1596              	.LBE433:
 1597              	.LBE455:
 1598              	.LBE494:
 1599              	.LBB495:
 1600              	.LBB306:
 1601              	.LBB276:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1602              		.loc 1 68 0
 1603 0ccc C57B101D 		vmovsd	xmm11, QWORD PTR .LC21[rip]	# tmp1171,
 1603      00000000 
 1604              	.LBE276:
 1605              	.LBE306:
 1606              	.LBE495:
  77:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1607              		.loc 1 77 0
 1608 0cd4 C462D999 		vfmadd132sd	xmm9, xmm4, QWORD PTR .LC25[rip]	# D.35785, D.35785,
 1608      0D000000 
 1608      00
 1609              	.LVL46:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1610              		.loc 1 76 0
 1611 0cdd C5BB59E0 		vmulsd	xmm4, xmm8, xmm0	# D.35785, D.35785, v
 1612              	.LBB496:
 1613              	.LBB307:
 1614              	.LBB277:
  65:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1615              		.loc 1 65 0
 1616 0ce1 C4C17358 		vaddsd	xmm2, xmm1, QWORD PTR [r9+rdx*8]	# D.35785, tmp749, MEM[(Real[40][100] *)_499]
 1616      14D1
 1617              	.LBE277:
 1618              	.LBE307:
 1619              	.LBE496:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1620              		.loc 1 76 0
 1621 0ce7 C5FB100D 		vmovsd	xmm1, QWORD PTR .LC27[rip]	# tmp1172,
 1621      00000000 
 1622              	.LBB497:
 1623              	.LBB308:
 1624              	.LBB278:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1625              		.loc 1 66 0
 1626 0cef C4A16B58 		vaddsd	xmm5, xmm2, QWORD PTR [rsi+r14*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_506]
 1626      2CF6
 1627              	.LBE278:
 1628              	.LBE308:
 1629              	.LBE497:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1630              		.loc 1 76 0
 1631 0cf5 C4C1735C 		vsubsd	xmm2, xmm1, xmm14	# D.35785, tmp1172, u
 1631      D6
 1632              	.LBB498:
 1633              	.LBB309:
 1634              	.LBB279:
  66:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1635              		.loc 1 66 0
 1636 0cfa C5D3583C 		vaddsd	xmm7, xmm5, QWORD PTR [rsi+rax*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_506]
 1636      C6
 1637              	.LBE279:
 1638              	.LBE309:
 1639              	.LBE498:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1640              		.loc 1 76 0
 1641 0cff C5EB592D 		vmulsd	xmm5, xmm2, QWORD PTR .LC28[rip]	# D.35785, D.35785,
 1641      00000000 
 1642              	.LBB499:
 1643              	.LBB310:
 1644              	.LBB280:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1645              		.loc 1 68 0
 1646 0d07 488B8424 		mov	rax, QWORD PTR [rsp+320]	# D.35780, %sfp
 1646      40010000 
  67:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1647              		.loc 1 67 0
 1648 0d0f C4A14358 		vaddsd	xmm6, xmm7, QWORD PTR [rsi+r11*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_506]
 1648      34DE
 1649 0d15 C4214B58 		vaddsd	xmm12, xmm6, QWORD PTR [rsi+r10*8]	# D.35785, D.35785, MEM[(Real[40][100] *)_506]
 1649      24D6
 1650              	.LBE280:
 1651              	.LBE310:
 1652              	.LBE499:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1653              		.loc 1 76 0
 1654 0d1b C4E2D199 		vfmadd132sd	xmm4, xmm5, xmm0	# D.35785, D.35785, v
 1654      E0
 1655              	.LBB500:
 1656              	.LBB311:
 1657              	.LBB281:
  68:saya.cpp      ****     - 6*ar[x][y][z];
 1658              		.loc 1 68 0
 1659 0d20 C462A1BD 		vfnmadd231sd	xmm12, xmm11, QWORD PTR [rax+768+rcx*8]	# ret, tmp1171, MEM[base: _435, index: ivtmp.
 1659      A4C80003 
 1659      0000
  69:saya.cpp      ****     return ret / dx / dx;
 1660              		.loc 1 69 0
 1661 0d2a C51B5E15 		vdivsd	xmm10, xmm12, QWORD PTR .LC22[rip]	# D.35785, ret,
 1661      00000000 
 1662 0d32 C52B5E3D 		vdivsd	xmm15, xmm10, QWORD PTR .LC22[rip]	# D.35785, D.35785,
 1662      00000000 
 1663              	.LBE281:
 1664              	.LBE311:
 1665              	.LBE500:
  76:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1666              		.loc 1 76 0
 1667 0d3a C462D999 		vfmadd132sd	xmm15, xmm4, QWORD PTR .LC29[rip]	# D.35785, D.35785,
 1667      3D000000 
 1667      00
  78:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1668              		.loc 1 78 0
 1669 0d43 C4628999 		vfmadd132sd	xmm15, xmm14, QWORD PTR .LC30[rip]	# D.35785, u,
 1669      3D000000 
 1669      00
 1670 0d4c C4417B11 		vmovsd	QWORD PTR U_other[r15+768+rcx*8], xmm15	# MEM[symbol: U_other, base: ivtmp.405_401, index: 
 1670      BCCF0000 
 1670      0000
 1671              		.loc 1 79 0
 1672 0d56 C462F999 		vfmadd132sd	xmm9, xmm0, QWORD PTR .LC30[rip]	# D.35785, v,
 1672      0D000000 
 1672      00
 1673              	.LVL47:
 1674 0d5f C4417B11 		vmovsd	QWORD PTR V_other[r15+768+rcx*8], xmm9	# MEM[symbol: V_other, base: ivtmp.405_401, index: i
 1674      8CCF0000 
 1674      0000
 1675              	.LVL48:
 1676 0d69 4883C101 		add	rcx, 1	# ivtmp.352,
 1677              	.LVL49:
 1678              	.LBE164:
  74:saya.cpp      ****       for (int z=0;z<NZ;++z) {
 1679              		.loc 1 74 0
 1680 0d6d 4883F904 		cmp	rcx, 4	# ivtmp.352,
 1681 0d71 0F8529FE 		jne	.L47	#,
 1681      FFFF
 1682 0d77 4C8BB424 		mov	r14, QWORD PTR [rsp+288]	# ivtmp.409, %sfp
 1682      20010000 
 1683 0d7f 4981C720 		add	r15, 800	# ivtmp.405,
 1683      030000
 1684 0d86 4C8BAC24 		mov	r13, QWORD PTR [rsp+272]	# ivtmp.410, %sfp
 1684      10010000 
 1685              	.LVL50:
 1686              	.LBE163:
  73:saya.cpp      ****     for (int y=0;y<NY;++y) {
 1687              		.loc 1 73 0
 1688 0d8e 8B7C246C 		mov	edi, DWORD PTR [rsp+108]	# D.35779, %sfp
 1689 0d92 4981C620 		add	r14, 800	# ivtmp.409,
 1689      030000
 1690 0d99 4981C520 		add	r13, 800	# ivtmp.410,
 1690      030000
 1691 0da0 83FF50   		cmp	edi, 80	# D.35779,
 1692 0da3 0F855FF7 		jne	.L52	#,
 1692      FFFF
 1693 0da9 48810424 		add	QWORD PTR [rsp], 32000	# %sfp,
 1693      007D0000 
 1694 0db1 48814424 		add	QWORD PTR [rsp+8], 32000	# %sfp,
 1694      08007D00 
 1694      00
 1695 0dba 48814424 		add	QWORD PTR [rsp+16], 32000	# %sfp,
 1695      10007D00 
 1695      00
 1696              	.LBE162:
  72:saya.cpp      ****   for (int x=0;x<NX;++x) {
 1697              		.loc 1 72 0
 1698 0dc3 837C2468 		cmp	DWORD PTR [rsp+104], 99	# %sfp,
 1698      63
 1699 0dc8 7409     		je	.L78	#,
 1700              	.LVL51:
 1701 0dca 8B4C2468 		mov	ecx, DWORD PTR [rsp+104]	# ivtmp.419, %sfp
 1702 0dce E931F6FF 		jmp	.L43	#
 1702      FF
 1703              	.LVL52:
 1704              	.L78:
 1705 0dd3 4531E4   		xor	r12d, r12d	# ivtmp.350
 1706 0dd6 C5F877   		vzeroupper
 1707              	.LVL53:
 1708              	.L51:
 1709 0dd9 498D9C24 		lea	rbx, U[r12]	# D.35780,
 1709      00000000 
 1710              	.LBE161:
  59:saya.cpp      ****   ++global_clock;
 1711              		.loc 1 59 0 discriminator 1
 1712 0de1 4531FF   		xor	r15d, r15d	# ivtmp.342
 1713 0de4 4D8DAC24 		lea	r13, U_other[r12]	# D.35780,
 1713      00000000 
 1714              	.LVL54:
 1715 0dec 0F1F4000 		.p2align 4,,10
 1716              		.p2align 3
 1717              	.L56:
 1718 0df0 4A8D3C3B 		lea	rdi, [rbx+r15]	# D.35780,
 1719 0df4 BA200300 		mov	edx, 800	#,
 1719      00
 1720 0df9 4B8D743D 		lea	rsi, [r13+0+r15]	# D.35780,
 1720      00
 1721 0dfe E8000000 		call	memcpy	#
 1721      00
 1722              	.LVL55:
 1723 0e03 498D8F20 		lea	rcx, [r15+800]	# tmp974,
 1723      030000
 1724 0e0a BA200300 		mov	edx, 800	#,
 1724      00
 1725 0e0f 488D3C0B 		lea	rdi, [rbx+rcx]	# D.35780,
 1726 0e13 498D740D 		lea	rsi, [r13+0+rcx]	# D.35780,
 1726      00
 1727 0e18 E8000000 		call	memcpy	#
 1727      00
 1728              	.LVL56:
 1729 0e1d 498DB740 		lea	rsi, [r15+1600]	# ivtmp.342,
 1729      060000
 1730 0e24 BA200300 		mov	edx, 800	#,
 1730      00
 1731 0e29 488D3C33 		lea	rdi, [rbx+rsi]	# D.35780,
 1732 0e2d 498D7435 		lea	rsi, [r13+0+rsi]	# D.35780,
 1732      00
 1733 0e32 E8000000 		call	memcpy	#
 1733      00
 1734              	.LVL57:
 1735 0e37 4D8D8760 		lea	r8, [r15+2400]	# ivtmp.342,
 1735      090000
 1736 0e3e BA200300 		mov	edx, 800	#,
 1736      00
 1737 0e43 4A8D3C03 		lea	rdi, [rbx+r8]	# D.35780,
 1738 0e47 4B8D7405 		lea	rsi, [r13+0+r8]	# D.35780,
 1738      00
 1739 0e4c E8000000 		call	memcpy	#
 1739      00
 1740              	.LVL58:
 1741 0e51 498D9780 		lea	rdx, [r15+3200]	# ivtmp.342,
 1741      0C0000
 1742 0e58 488D3C13 		lea	rdi, [rbx+rdx]	# D.35780,
 1743 0e5c 498D7415 		lea	rsi, [r13+0+rdx]	# D.35780,
 1743      00
 1744 0e61 BA200300 		mov	edx, 800	#,
 1744      00
 1745 0e66 E8000000 		call	memcpy	#
 1745      00
 1746              	.LVL59:
 1747 0e6b 4D8DB7A0 		lea	r14, [r15+4000]	# ivtmp.342,
 1747      0F0000
 1748 0e72 BA200300 		mov	edx, 800	#,
 1748      00
 1749 0e77 4A8D3C33 		lea	rdi, [rbx+r14]	# D.35780,
 1750 0e7b 4B8D7435 		lea	rsi, [r13+0+r14]	# D.35780,
 1750      00
 1751 0e80 E8000000 		call	memcpy	#
 1751      00
 1752              	.LVL60:
 1753 0e85 4D8D9FC0 		lea	r11, [r15+4800]	# ivtmp.342,
 1753      120000
 1754 0e8c BA200300 		mov	edx, 800	#,
 1754      00
 1755 0e91 4A8D3C1B 		lea	rdi, [rbx+r11]	# D.35780,
 1756 0e95 4B8D741D 		lea	rsi, [r13+0+r11]	# D.35780,
 1756      00
 1757 0e9a E8000000 		call	memcpy	#
 1757      00
 1758              	.LVL61:
 1759 0e9f 4D8D97E0 		lea	r10, [r15+5600]	# ivtmp.342,
 1759      150000
 1760 0ea6 BA200300 		mov	edx, 800	#,
 1760      00
 1761 0eab 4A8D3C13 		lea	rdi, [rbx+r10]	# D.35780,
 1762 0eaf 4981C700 		add	r15, 6400	# ivtmp.342,
 1762      190000
 1763 0eb6 4B8D7415 		lea	rsi, [r13+0+r10]	# D.35780,
 1763      00
 1764 0ebb E8000000 		call	memcpy	#
 1764      00
 1765              	.LVL62:
 1766              	.LBB501:
 1767              	.LBB502:
  80:saya.cpp      ****       }
  81:saya.cpp      ****     }
  82:saya.cpp      ****   }
  83:saya.cpp      ****   for (int x=0;x<NX;++x) {
  84:saya.cpp      ****     for (int y=0;y<NY;++y) {
 1768              		.loc 1 84 0 discriminator 1
 1769 0ec0 4981FF00 		cmp	r15, 32000	# ivtmp.342,
 1769      7D0000
 1770 0ec7 0F8523FF 		jne	.L56	#,
 1770      FFFF
 1771              	.LVL63:
 1772 0ecd 4981C400 		add	r12, 32000	# ivtmp.350,
 1772      7D0000
 1773              	.LBE502:
  83:saya.cpp      ****   for (int x=0;x<NX;++x) {
 1774              		.loc 1 83 0
 1775 0ed4 4981FC00 		cmp	r12, 1600000	# ivtmp.350,
 1775      6A1800
 1776 0edb 0F85F8FE 		jne	.L51	#,
 1776      FFFF
 1777 0ee1 4531E4   		xor	r12d, r12d	# ivtmp.334
 1778              	.L55:
 1779              	.LVL64:
 1780 0ee4 498D9C24 		lea	rbx, V[r12]	# D.35780,
 1780      00000000 
 1781              	.LBE501:
 1782              	.LBB503:
  72:saya.cpp      ****   for (int x=0;x<NX;++x) {
 1783              		.loc 1 72 0 discriminator 1
 1784 0eec 4531FF   		xor	r15d, r15d	# ivtmp.326
 1785 0eef 4D8DAC24 		lea	r13, V_other[r12]	# D.35780,
 1785      00000000 
 1786              	.LVL65:
 1787 0ef7 660F1F84 		.p2align 4,,10
 1787      00000000 
 1787      00
 1788              		.p2align 3
 1789              	.L59:
 1790 0f00 4A8D3C3B 		lea	rdi, [rbx+r15]	# D.35780,
 1791 0f04 BA200300 		mov	edx, 800	#,
 1791      00
 1792 0f09 4B8D743D 		lea	rsi, [r13+0+r15]	# D.35780,
 1792      00
 1793 0f0e E8000000 		call	memcpy	#
 1793      00
 1794              	.LVL66:
 1795 0f13 4D8D8F20 		lea	r9, [r15+800]	# tmp973,
 1795      030000
 1796 0f1a BA200300 		mov	edx, 800	#,
 1796      00
 1797 0f1f 4A8D3C0B 		lea	rdi, [rbx+r9]	# D.35780,
 1798 0f23 4B8D740D 		lea	rsi, [r13+0+r9]	# D.35780,
 1798      00
 1799 0f28 E8000000 		call	memcpy	#
 1799      00
 1800              	.LVL67:
 1801 0f2d 498D8740 		lea	rax, [r15+1600]	# ivtmp.326,
 1801      060000
 1802 0f34 BA200300 		mov	edx, 800	#,
 1802      00
 1803 0f39 488D3C03 		lea	rdi, [rbx+rax]	# D.35780,
 1804 0f3d 498D7405 		lea	rsi, [r13+0+rax]	# D.35780,
 1804      00
 1805 0f42 E8000000 		call	memcpy	#
 1805      00
 1806              	.LVL68:
 1807 0f47 498D8F60 		lea	rcx, [r15+2400]	# ivtmp.326,
 1807      090000
 1808 0f4e BA200300 		mov	edx, 800	#,
 1808      00
 1809 0f53 488D3C0B 		lea	rdi, [rbx+rcx]	# D.35780,
 1810 0f57 498D740D 		lea	rsi, [r13+0+rcx]	# D.35780,
 1810      00
 1811 0f5c E8000000 		call	memcpy	#
 1811      00
 1812              	.LVL69:
 1813 0f61 498DB780 		lea	rsi, [r15+3200]	# ivtmp.326,
 1813      0C0000
 1814 0f68 BA200300 		mov	edx, 800	#,
 1814      00
 1815 0f6d 488D3C33 		lea	rdi, [rbx+rsi]	# D.35780,
 1816 0f71 498D7435 		lea	rsi, [r13+0+rsi]	# D.35780,
 1816      00
 1817 0f76 E8000000 		call	memcpy	#
 1817      00
 1818              	.LVL70:
 1819 0f7b 4D8D87A0 		lea	r8, [r15+4000]	# ivtmp.326,
 1819      0F0000
 1820 0f82 BA200300 		mov	edx, 800	#,
 1820      00
 1821 0f87 4A8D3C03 		lea	rdi, [rbx+r8]	# D.35780,
 1822 0f8b 4B8D7405 		lea	rsi, [r13+0+r8]	# D.35780,
 1822      00
 1823 0f90 E8000000 		call	memcpy	#
 1823      00
 1824              	.LVL71:
 1825 0f95 498D97C0 		lea	rdx, [r15+4800]	# ivtmp.326,
 1825      120000
 1826 0f9c 488D3C13 		lea	rdi, [rbx+rdx]	# D.35780,
 1827 0fa0 498D7415 		lea	rsi, [r13+0+rdx]	# D.35780,
 1827      00
 1828 0fa5 BA200300 		mov	edx, 800	#,
 1828      00
 1829 0faa E8000000 		call	memcpy	#
 1829      00
 1830              	.LVL72:
 1831 0faf 4D8DB7E0 		lea	r14, [r15+5600]	# ivtmp.326,
 1831      150000
 1832 0fb6 BA200300 		mov	edx, 800	#,
 1832      00
 1833 0fbb 4A8D3C33 		lea	rdi, [rbx+r14]	# D.35780,
 1834 0fbf 4981C700 		add	r15, 6400	# ivtmp.326,
 1834      190000
 1835 0fc6 4B8D7435 		lea	rsi, [r13+0+r14]	# D.35780,
 1835      00
 1836 0fcb E8000000 		call	memcpy	#
 1836      00
 1837              	.LVL73:
 1838              	.LBE503:
 1839              	.LBB504:
 1840              	.LBB505:
  85:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  86:saya.cpp      **** 	U[x][y][z]=U_other[x][y][z];
  87:saya.cpp      ****       }
  88:saya.cpp      ****     }
  89:saya.cpp      ****   }
  90:saya.cpp      ****   for (int x=0;x<NX;++x) {
  91:saya.cpp      ****     for (int y=0;y<NY;++y) {
 1841              		.loc 1 91 0 discriminator 1
 1842 0fd0 4981FF00 		cmp	r15, 32000	# ivtmp.326,
 1842      7D0000
 1843 0fd7 0F8523FF 		jne	.L59	#,
 1843      FFFF
 1844              	.LVL74:
 1845 0fdd 4981C400 		add	r12, 32000	# ivtmp.334,
 1845      7D0000
 1846              	.LBE505:
  90:saya.cpp      ****   for (int x=0;x<NX;++x) {
 1847              		.loc 1 90 0
 1848 0fe4 4981FC00 		cmp	r12, 1600000	# ivtmp.334,
 1848      6A1800
 1849 0feb 0F85F3FE 		jne	.L55	#,
 1849      FFFF
 1850              	.LBE504:
 1851              	.LBE506:
  92:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  93:saya.cpp      **** 	V[x][y][z]=V_other[x][y][z];
  94:saya.cpp      ****       }
  95:saya.cpp      ****     }
  96:saya.cpp      ****   }
  97:saya.cpp      **** }
 1852              		.loc 1 97 0
 1853 0ff1 488D65D8 		lea	rsp, [rbp-40]	#,
 1854              	.LVL75:
 1855 0ff5 5B       		pop	rbx	#
 1856 0ff6 415C     		pop	r12	#
 1857 0ff8 415D     		pop	r13	#
 1858 0ffa 415E     		pop	r14	#
 1859 0ffc 415F     		pop	r15	#
 1860 0ffe 5D       		pop	rbp	#
 1861              		.cfi_def_cfa 7, 8
 1862              	.LVL76:
 1863 0fff C3       		ret
 1864              		.cfi_endproc
 1865              	.LFE1476:
 1867              		.p2align 4,,15
 1868              		.globl	_Z15get_solution_atiiiiRdS_
 1870              	_Z15get_solution_atiiiiRdS_:
 1871              	.LFB1478:
  98:saya.cpp      **** 
  99:saya.cpp      **** void get_solution_at(int t, int x, int y, int z, Real &u, Real &v) {
 1872              		.loc 1 99 0
 1873              		.cfi_startproc
 1874              	.LVL77:
 1875 1000 4157     		push	r15	#
 1876              		.cfi_def_cfa_offset 16
 1877              		.cfi_offset 15, -16
 1878 1002 4189D7   		mov	r15d, edx	# y, y
 1879 1005 4156     		push	r14	#
 1880              		.cfi_def_cfa_offset 24
 1881              		.cfi_offset 14, -24
 1882 1007 4189CE   		mov	r14d, ecx	# z, z
 1883 100a 4155     		push	r13	#
 1884              		.cfi_def_cfa_offset 32
 1885              		.cfi_offset 13, -32
 1886 100c 4189F5   		mov	r13d, esi	# x, x
 1887 100f 4154     		push	r12	#
 1888              		.cfi_def_cfa_offset 40
 1889              		.cfi_offset 12, -40
 1890 1011 4D89CC   		mov	r12, r9	# v, v
 1891 1014 55       		push	rbp	#
 1892              		.cfi_def_cfa_offset 48
 1893              		.cfi_offset 6, -48
 1894 1015 4C89C5   		mov	rbp, r8	# u, u
 1895 1018 53       		push	rbx	#
 1896              		.cfi_def_cfa_offset 56
 1897              		.cfi_offset 3, -56
 1898 1019 89FB     		mov	ebx, edi	# t, t
 1899 101b 4883EC08 		sub	rsp, 8	#,
 1900              		.cfi_def_cfa_offset 64
 100:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 1901              		.loc 1 100 0
 1902 101f 8B050000 		mov	eax, DWORD PTR global_clock[rip]	# D.35816, global_clock
 1902      0000
 1903 1025 39F8     		cmp	eax, edi	# D.35816, t
 1904 1027 0F8FDB00 		jg	.L89	#,
 1904      0000
 1905              	.LVL78:
 1906              	.L80:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 1907              		.loc 1 101 0 discriminator 1
 1908 102d 39C3     		cmp	ebx, eax	# t, D.35816
 1909 102f 7E14     		jle	.L82	#,
 1910              		.p2align 4,,10
 1911 1031 0F1F8000 		.p2align 3
 1911      000000
 1912              	.L85:
 1913              		.loc 1 101 0 is_stmt 0 discriminator 2
 1914 1038 E8000000 		call	_Z13naive_proceedv	#
 1914      00
 1915              	.LVL79:
 1916 103d 3B1D0000 		cmp	ebx, DWORD PTR global_clock[rip]	# t, global_clock
 1916      0000
 1917 1043 7FF3     		jg	.L85	#,
 1918              	.L82:
 1919              	.LVL80:
 1920              	.LBB511:
 1921              	.LBB512:
  52:saya.cpp      ****   y = (y+NY)%NY;
 1922              		.loc 1 52 0 is_stmt 1
 1923 1045 418D4F28 		lea	ecx, [r15+40]	# D.35816,
 1924 1049 BA676666 		mov	edx, 1717986919	# tmp118,
 1924      66
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1925              		.loc 1 53 0
 1926 104e 41BA1F85 		mov	r10d, 1374389535	# tmp127,
 1926      EB51
  52:saya.cpp      ****   y = (y+NY)%NY;
 1927              		.loc 1 52 0
 1928 1054 89C8     		mov	eax, ecx	# tmp168, D.35816
 1929 1056 89CE     		mov	esi, ecx	# tmp120, D.35816
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1930              		.loc 1 53 0
 1931 1058 BB640000 		mov	ebx, 100	#,
 1931      00
 1932              	.LVL81:
  52:saya.cpp      ****   y = (y+NY)%NY;
 1933              		.loc 1 52 0
 1934 105d F7EA     		imul	edx	# tmp118
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1935              		.loc 1 53 0
 1936 105f 458D4E64 		lea	r9d, [r14+100]	# D.35816,
  52:saya.cpp      ****   y = (y+NY)%NY;
 1937              		.loc 1 52 0
 1938 1063 C1FE1F   		sar	esi, 31	# tmp120,
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1939              		.loc 1 53 0
 1940 1066 4489C8   		mov	eax, r9d	# tmp169, D.35816
 1941 1069 4589CB   		mov	r11d, r9d	# tmp129, D.35816
  51:saya.cpp      ****   x = (x+NX)%NX;
 1942              		.loc 1 51 0
 1943 106c 41BE3200 		mov	r14d, 50	#,
 1943      0000
 1944              	.LVL82:
 1945 1072 458D6D32 		lea	r13d, [r13+50]	# D.35816,
 1946              	.LVL83:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1947              		.loc 1 53 0
 1948 1076 41C1FB1F 		sar	r11d, 31	# tmp129,
  52:saya.cpp      ****   y = (y+NY)%NY;
 1949              		.loc 1 52 0
 1950 107a C1FA04   		sar	edx, 4	# y,
  51:saya.cpp      ****   x = (x+NX)%NX;
 1951              		.loc 1 51 0
 1952 107d 4589EF   		mov	r15d, r13d	# tmp136, D.35816
 1953              	.LVL84:
  52:saya.cpp      ****   y = (y+NY)%NY;
 1954              		.loc 1 52 0
 1955 1080 29F2     		sub	edx, esi	# y, tmp120
  51:saya.cpp      ****   x = (x+NX)%NX;
 1956              		.loc 1 51 0
 1957 1082 41C1FF1F 		sar	r15d, 31	# tmp136,
  52:saya.cpp      ****   y = (y+NY)%NY;
 1958              		.loc 1 52 0
 1959 1086 8D3C92   		lea	edi, [rdx+rdx*4]	# tmp123,
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1960              		.loc 1 53 0
 1961 1089 41F7EA   		imul	r10d	# tmp127
 1962              	.LVL85:
  51:saya.cpp      ****   x = (x+NX)%NX;
 1963              		.loc 1 51 0
 1964 108c 4489E8   		mov	eax, r13d	# tmp170, D.35816
  52:saya.cpp      ****   y = (y+NY)%NY;
 1965              		.loc 1 52 0
 1966 108f C1E703   		sal	edi, 3	# tmp124,
 1967 1092 29F9     		sub	ecx, edi	# y, tmp124
 1968              	.LVL86:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1969              		.loc 1 53 0
 1970 1094 C1FA05   		sar	edx, 5	# z,
  52:saya.cpp      ****   y = (y+NY)%NY;
 1971              		.loc 1 52 0
 1972 1097 4189C8   		mov	r8d, ecx	# y, y
 1973              	.LVL87:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1974              		.loc 1 53 0
 1975 109a 4429DA   		sub	edx, r11d	# z, tmp129
  54:saya.cpp      ****   return ar[x][y][z];
 1976              		.loc 1 54 0
 1977 109d 4D63C0   		movsx	r8, r8d	# y, y
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 1978              		.loc 1 53 0
 1979 10a0 0FAFD3   		imul	edx, ebx	# tmp130,
 1980 10a3 4129D1   		sub	r9d, edx	# z, tmp130
 1981              	.LVL88:
  51:saya.cpp      ****   x = (x+NX)%NX;
 1982              		.loc 1 51 0
 1983 10a6 41F7EA   		imul	r10d	# tmp127
  54:saya.cpp      ****   return ar[x][y][z];
 1984              		.loc 1 54 0
 1985 10a9 4963F9   		movsx	rdi, r9d	# z, z
 1986 10ac 4F8D0C80 		lea	r9, [r8+r8*4]	# tmp145,
 1987 10b0 4F8D1489 		lea	r10, [r9+r9*4]	# tmp147,
 1988              	.LVL89:
  51:saya.cpp      ****   x = (x+NX)%NX;
 1989              		.loc 1 51 0
 1990 10b4 C1FA04   		sar	edx, 4	# tmp132,
  54:saya.cpp      ****   return ar[x][y][z];
 1991              		.loc 1 54 0
 1992 10b7 4E8D1C97 		lea	r11, [rdi+r10*4]	# tmp149,
 1993              	.LVL90:
  51:saya.cpp      ****   x = (x+NX)%NX;
 1994              		.loc 1 51 0
 1995 10bb 4429FA   		sub	edx, r15d	# tmp132, tmp136
 1996 10be 410FAFD6 		imul	edx, r14d	# tmp137,
  54:saya.cpp      ****   return ar[x][y][z];
 1997              		.loc 1 54 0
 1998 10c2 49C1E303 		sal	r11, 3	# tmp151,
  51:saya.cpp      ****   x = (x+NX)%NX;
 1999              		.loc 1 51 0
 2000 10c6 4129D5   		sub	r13d, edx	# x, tmp137
 2001              	.LVL91:
  54:saya.cpp      ****   return ar[x][y][z];
 2002              		.loc 1 54 0
 2003 10c9 4963CD   		movsx	rcx, r13d	# D.35817, x
 2004 10cc 4869F100 		imul	rsi, rcx, 32000	# D.35817, D.35817,
 2004      7D0000
 2005              	.LVL92:
 2006 10d3 C4A17B10 		vmovsd	xmm0, QWORD PTR U[rsi+r11]	# D.35819, *_23
 2006      841E0000 
 2006      0000
 2007              	.LBE512:
 2008              	.LBE511:
 102:saya.cpp      ****   u = periodic(U,x,y,z);
 2009              		.loc 1 102 0
 2010 10dd C5FB1145 		vmovsd	QWORD PTR [rbp+0], xmm0	# *u_11(D), D.35819
 2010      00
 2011              	.LVL93:
 2012              	.LBB513:
 2013              	.LBB514:
  54:saya.cpp      ****   return ar[x][y][z];
 2014              		.loc 1 54 0
 2015 10e2 C4A17B10 		vmovsd	xmm1, QWORD PTR V[rsi+r11]	# D.35819, *_25
 2015      8C1E0000 
 2015      0000
 2016              	.LBE514:
 2017              	.LBE513:
 103:saya.cpp      ****   v = periodic(V,x,y,z);
 2018              		.loc 1 103 0
 2019 10ec C4C17B11 		vmovsd	QWORD PTR [r12], xmm1	# *v_13(D), D.35819
 2019      0C24
 104:saya.cpp      **** }
 2020              		.loc 1 104 0
 2021 10f2 4883C408 		add	rsp, 8	#,
 2022              		.cfi_remember_state
 2023              		.cfi_def_cfa_offset 56
 2024 10f6 5B       		pop	rbx	#
 2025              		.cfi_def_cfa_offset 48
 2026 10f7 5D       		pop	rbp	#
 2027              		.cfi_def_cfa_offset 40
 2028              	.LVL94:
 2029 10f8 415C     		pop	r12	#
 2030              		.cfi_def_cfa_offset 32
 2031              	.LVL95:
 2032 10fa 415D     		pop	r13	#
 2033              		.cfi_def_cfa_offset 24
 2034 10fc 415E     		pop	r14	#
 2035              		.cfi_def_cfa_offset 16
 2036 10fe 415F     		pop	r15	#
 2037              		.cfi_def_cfa_offset 8
 2038 1100 C3       		ret
 2039              	.LVL96:
 2040              		.p2align 4,,10
 2041 1101 0F1F8000 		.p2align 3
 2041      000000
 2042              	.L89:
 2043              		.cfi_restore_state
 100:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2044              		.loc 1 100 0 discriminator 1
 2045 1108 E8000000 		call	_Z22fill_initial_conditionv	#
 2045      00
 2046              	.LVL97:
 2047 110d 8B050000 		mov	eax, DWORD PTR global_clock[rip]	# D.35816, global_clock
 2047      0000
 2048 1113 E915FFFF 		jmp	.L80	#
 2048      FF
 2049              		.cfi_endproc
 2050              	.LFE1478:
 2052              		.section	.rodata.str1.1,"aMS",@progbits,1
 2053              	.LC32:
 2054 0000 66696C6C 		.string	"filled."
 2054      65642E00 
 2055              		.section	.text.startup,"ax",@progbits
 2056              		.p2align 4,,15
 2057              		.globl	main
 2059              	main:
 2060              	.LFB1479:
 105:saya.cpp      **** 
 106:saya.cpp      **** int main () {
 2061              		.loc 1 106 0
 2062              		.cfi_startproc
 2063 0000 4157     		push	r15	#
 2064              		.cfi_def_cfa_offset 16
 2065              		.cfi_offset 15, -16
 2066 0002 4156     		push	r14	#
 2067              		.cfi_def_cfa_offset 24
 2068              		.cfi_offset 14, -24
 2069 0004 4155     		push	r13	#
 2070              		.cfi_def_cfa_offset 32
 2071              		.cfi_offset 13, -32
 2072              	.LBB549:
 2073              	.LBB550:
 107:saya.cpp      ****   fill_initial_condition();
 108:saya.cpp      **** 
 109:saya.cpp      ****   for(int t = 0;t<MAX_T;++t){
 2074              		.loc 1 109 0
 2075 0006 4531ED   		xor	r13d, r13d	# t
 2076              	.LBE550:
 2077              	.LBE549:
 106:saya.cpp      **** int main () {
 2078              		.loc 1 106 0
 2079 0009 4154     		push	r12	#
 2080              		.cfi_def_cfa_offset 40
 2081              		.cfi_offset 12, -40
 2082 000b 4589EF   		mov	r15d, r13d	# t, t
 2083 000e 55       		push	rbp	#
 2084              		.cfi_def_cfa_offset 48
 2085              		.cfi_offset 6, -48
 2086 000f 53       		push	rbx	#
 2087              		.cfi_def_cfa_offset 56
 2088              		.cfi_offset 3, -56
 2089 0010 4883EC48 		sub	rsp, 72	#,
 2090              		.cfi_def_cfa_offset 128
 2091              	.LBB635:
 107:saya.cpp      ****   fill_initial_condition();
 2092              		.loc 1 107 0
 2093 0014 E8000000 		call	_Z22fill_initial_conditionv	#
 2093      00
 2094              	.LVL98:
 2095 0019 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# D.35982, global_clock
 2095      0000
 2096 001f 48C74424 		mov	QWORD PTR [rsp+32], 0	# %sfp,
 2096      20000000 
 2096      00
 2097 0028 C7442414 		mov	DWORD PTR [rsp+20], 74	# %sfp,
 2097      4A000000 
 2098 0030 C7442418 		mov	DWORD PTR [rsp+24], 84	# %sfp,
 2098      54000000 
 2099              	.LVL99:
 2100              	.L91:
 2101              	.LBB630:
 2102              	.LBB551:
 2103              	.LBB552:
 2104              	.LBB553:
 2105              	.LBB554:
 2106              	.LBB555:
 2107              	.LBB556:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2108              		.loc 1 101 0 discriminator 1
 2109 0038 488B4424 		mov	rax, QWORD PTR [rsp+32]	# ivtmp.541, %sfp
 2109      20
 2110 003d BA520000 		mov	edx, 82	# ivtmp.527,
 2110      00
 2111 0042 41BC6400 		mov	r12d, 100	# D.35983,
 2111      0000
 2112 0048 C7442438 		mov	DWORD PTR [rsp+56], 40	# %sfp,
 2112      28000000 
 2113 0050 4429FA   		sub	edx, r15d	# ivtmp.527, t
 2114 0053 4529FC   		sub	r12d, r15d	# D.35983, t
 2115 0056 44297C24 		sub	DWORD PTR [rsp+56], r15d	# %sfp, t
 2115      38
 2116 005b 8954241C 		mov	DWORD PTR [rsp+28], edx	# %sfp, ivtmp.527
 2117 005f 48894424 		mov	QWORD PTR [rsp+40], rax	# %sfp, ivtmp.541
 2117      28
 2118              	.LVL100:
 2119              	.L119:
 2120 0064 8B7C241C 		mov	edi, DWORD PTR [rsp+28]	# ivtmp.527, %sfp
 2121 0068 B81F85EB 		mov	eax, 1374389535	# tmp492,
 2121      51
 2122 006d 41BA3200 		mov	r10d, 50	#,
 2122      0000
 2123 0073 448B4424 		mov	r8d, DWORD PTR [rsp+56]	# D.35983, %sfp
 2123      38
 2124 0078 F7EF     		imul	edi	# ivtmp.527
 2125 007a 89FB     		mov	ebx, edi	# tmp272, ivtmp.527
 2126 007c 89FE     		mov	esi, edi	# D.35982, ivtmp.527
 2127 007e C1FB1F   		sar	ebx, 31	# tmp272,
 2128 0081 44894424 		mov	DWORD PTR [rsp+16], r8d	# %sfp, D.35983
 2128      10
 2129 0086 C1FA04   		sar	edx, 4	# tmp268,
 2130 0089 29DA     		sub	edx, ebx	# tmp268, tmp272
 2131 008b 410FAFD2 		imul	edx, r10d	# tmp273,
 2132 008f 29D6     		sub	esi, edx	# D.35982, tmp273
 2133 0091 4863EE   		movsx	rbp, esi	#, D.35982
 2134 0094 4C69ED00 		imul	r13, rbp, 32000	# D.35985, D.35985,
 2134      7D0000
 2135 009b 488B6C24 		mov	rbp, QWORD PTR [rsp+40]	# ivtmp.518, %sfp
 2135      28
 2136 00a0 4D8DB500 		lea	r14, U[r13]	# D.35986,
 2136      000000
 2137 00a7 4981C500 		add	r13, OFFSET FLAT:V	# D.35986,
 2137      000000
 2138              	.LVL101:
 2139              	.L100:
 2140 00ae 448B4C24 		mov	r9d, DWORD PTR [rsp+16]	# ivtmp.516, %sfp
 2140      10
 2141 00b3 B8676666 		mov	eax, 1717986919	# tmp491,
 2141      66
 2142              	.LBE556:
 2143              	.LBE555:
 2144              	.LBE554:
 2145              	.LBE553:
 2146              	.LBE552:
 2147              	.LBE551:
 2148              	.LBE630:
 2149              	.LBE635:
 106:saya.cpp      **** int main () {
 2150              		.loc 1 106 0 discriminator 1
 2151 00b8 31DB     		xor	ebx, ebx	# ivtmp.498
 2152 00ba 41F7E9   		imul	r9d	# ivtmp.516
 2153 00bd 4589CB   		mov	r11d, r9d	# tmp262, ivtmp.516
 2154 00c0 41C1FB1F 		sar	r11d, 31	# tmp262,
 2155 00c4 C1FA04   		sar	edx, 4	# D.35982,
 2156 00c7 4429DA   		sub	edx, r11d	# D.35982, tmp262
 2157 00ca 8D3C92   		lea	edi, [rdx+rdx*4]	# tmp265,
 2158 00cd C1E703   		sal	edi, 3	# tmp266,
 2159 00d0 4129F9   		sub	r9d, edi	# D.35982, tmp266
 2160 00d3 4D63D1   		movsx	r10, r9d	#, D.35982
 2161              	.LBB636:
 2162              	.LBB631:
 2163              	.LBB578:
 2164              	.LBB575:
 2165              	.LBB572:
 2166              	.LBB569:
 2167              	.LBB566:
 2168              	.LBB563:
 2169              	.LBB557:
 2170              	.LBB558:
  54:saya.cpp      ****   return ar[x][y][z];
 2171              		.loc 1 54 0 discriminator 1
 2172 00d6 4B8D3492 		lea	rsi, [r10+r10*4]	# tmp400,
 2173 00da 4C8D04B6 		lea	r8, [rsi+rsi*4]	# tmp402,
 2174 00de 49C1E002 		sal	r8, 2	# tmp403,
 2175 00e2 4C894424 		mov	QWORD PTR [rsp+8], r8	# %sfp, tmp403
 2175      08
 2176              	.LVL102:
 2177 00e7 660F1F84 		.p2align 4,,10
 2177      00000000 
 2177      00
 2178              		.p2align 3
 2179              	.L97:
 2180              	.LBE558:
 2181              	.LBE557:
 100:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2182              		.loc 1 100 0
 2183 00f0 4139CF   		cmp	r15d, ecx	# t, D.35982
 2184 00f3 0F8CA703 		jl	.L124	#,
 2184      0000
 2185              	.L92:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2186              		.loc 1 101 0
 2187 00f9 4139CF   		cmp	r15d, ecx	# t, D.35982
 2188 00fc 7E12     		jle	.L93	#,
 2189 00fe 6690     		.p2align 4,,10
 2190              		.p2align 3
 2191              	.L94:
 2192 0100 E8000000 		call	_Z13naive_proceedv	#
 2192      00
 2193              	.LVL103:
 2194 0105 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# global_clock.6, global_clock
 2194      0000
 2195 010b 4439F9   		cmp	ecx, r15d	# global_clock.6, t
 2196 010e 7CF0     		jl	.L94	#,
 2197              	.L93:
 2198              	.LVL104:
 2199 0110 458D0C1C 		lea	r9d, [r12+rbx]	# D.35983,
 2200              	.LBB560:
 2201              	.LBB561:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 2202              		.loc 1 53 0
 2203 0114 B81F85EB 		mov	eax, 1374389535	# tmp490,
 2203      51
 2204 0119 BF640000 		mov	edi, 100	#,
 2204      00
 2205 011e 41F7E9   		imul	r9d	# D.35983
 2206 0121 4589CB   		mov	r11d, r9d	# tmp236, D.35983
 2207 0124 41C1FB1F 		sar	r11d, 31	# tmp236,
 2208 0128 C1FA05   		sar	edx, 5	# z,
 2209 012b 4429DA   		sub	edx, r11d	# z, tmp236
 2210 012e 0FAFD7   		imul	edx, edi	# tmp237,
 2211 0131 4129D1   		sub	r9d, edx	# z, tmp237
 2212              	.LVL105:
 2213              	.LBE561:
 2214              	.LBE560:
 2215              	.LBB562:
 2216              	.LBB559:
  54:saya.cpp      ****   return ar[x][y][z];
 2217              		.loc 1 54 0
 2218 0134 4D63D1   		movsx	r10, r9d	# z, z
 2219 0137 4C035424 		add	r10, QWORD PTR [rsp+8]	# tmp246, %sfp
 2219      08
 2220 013c C4817B10 		vmovsd	xmm0, QWORD PTR [r13+0+r10*8]	# v, MEM[(Real[40][100] *)_204]
 2220      44D500
 2221              	.LVL106:
 2222              	.LBE559:
 2223              	.LBE562:
 2224              	.LBE563:
 2225              	.LBE566:
 110:saya.cpp      ****     
 111:saya.cpp      ****     for(int x=SX-2;x<SX;++x) {
 112:saya.cpp      ****       for(int y=0;y<SY;++y) {
 113:saya.cpp      **** 	for(int z=0;z<SZ;++z) {
 114:saya.cpp      **** 	  double u,v; get_solution_at(t,x-t,y-t,z-t, u,v);
 115:saya.cpp      **** 	  Uwx[t][x-(SX-2)][y][z] = u;
 2226              		.loc 1 115 0
 2227 0143 C4817B10 		vmovsd	xmm1, QWORD PTR [r14+r10*8]	# tmp257, MEM[(Real[40][100] *)_203]
 2227      0CD6
 116:saya.cpp      **** 	  Vwx[t][x-(SX-2)][y][z] = v;
 2228              		.loc 1 116 0
 2229 0149 C5FB1184 		vmovsd	QWORD PTR Vwx[rbp+rbx*8], xmm0	# MEM[symbol: Vwx, base: ivtmp.518_25, index: ivtmp.498_154,
 2229      DD000000 
 2229      00
 2230              	.LVL107:
 115:saya.cpp      **** 	  Uwx[t][x-(SX-2)][y][z] = u;
 2231              		.loc 1 115 0
 2232 0152 C5FB118C 		vmovsd	QWORD PTR Uwx[rbp+rbx*8], xmm1	# MEM[symbol: Uwx, base: ivtmp.518_25, index: ivtmp.498_154,
 2232      DD000000 
 2232      00
 2233 015b 4883C301 		add	rbx, 1	# ivtmp.498,
 2234              	.LVL108:
 2235              	.LBE569:
 113:saya.cpp      **** 	for(int z=0;z<SZ;++z) {
 2236              		.loc 1 113 0
 2237 015f 4883FB22 		cmp	rbx, 34	# ivtmp.498,
 2238 0163 758B     		jne	.L97	#,
 2239 0165 83442410 		add	DWORD PTR [rsp+16], 1	# %sfp,
 2239      01
 2240              	.LVL109:
 2241 016a 4881C510 		add	rbp, 272	# ivtmp.518,
 2241      010000
 2242              	.LBE572:
 112:saya.cpp      ****       for(int y=0;y<SY;++y) {
 2243              		.loc 1 112 0
 2244 0171 8B5C2410 		mov	ebx, DWORD PTR [rsp+16]	# ivtmp.516, %sfp
 2245 0175 395C2414 		cmp	DWORD PTR [rsp+20], ebx	# %sfp, ivtmp.516
 2246 0179 0F852FFF 		jne	.L100	#,
 2246      FFFF
 2247 017f 8344241C 		add	DWORD PTR [rsp+28], 1	# %sfp,
 2247      01
 2248              	.LVL110:
 2249              	.LBE575:
 111:saya.cpp      ****     for(int x=SX-2;x<SX;++x) {
 2250              		.loc 1 111 0
 2251 0184 448B6C24 		mov	r13d, DWORD PTR [rsp+24]	# ivtmp.537, %sfp
 2251      18
 2252 0189 48814424 		add	QWORD PTR [rsp+40], 9248	# %sfp,
 2252      28202400 
 2252      00
 2253 0192 44396C24 		cmp	DWORD PTR [rsp+28], r13d	# %sfp, ivtmp.537
 2253      1C
 2254 0197 0F85C7FE 		jne	.L119	#,
 2254      FFFF
 2255 019d C7442428 		mov	DWORD PTR [rsp+40], 50	# %sfp,
 2255      32000000 
 2256 01a5 4C8B7424 		mov	r14, QWORD PTR [rsp+32]	# ivtmp.541, %sfp
 2256      20
 2257 01aa 4589E5   		mov	r13d, r12d	# D.35983, D.35983
 2258 01ad 44297C24 		sub	DWORD PTR [rsp+40], r15d	# %sfp, t
 2258      28
 2259 01b2 C744243C 		mov	DWORD PTR [rsp+60], 72	# %sfp,
 2259      48000000 
 2260 01ba 44297C24 		sub	DWORD PTR [rsp+60], r15d	# %sfp, t
 2260      3C
 2261 01bf 8B442428 		mov	eax, DWORD PTR [rsp+40]	# D.35983, %sfp
 2262 01c3 4C897424 		mov	QWORD PTR [rsp+48], r14	# %sfp, ivtmp.541
 2262      30
 2263 01c8 8944241C 		mov	DWORD PTR [rsp+28], eax	# %sfp, D.35983
 2264              	.LVL111:
 2265              	.L99:
 2266 01cc 8B6C241C 		mov	ebp, DWORD PTR [rsp+28]	# ivtmp.493, %sfp
 2267 01d0 41BC1F85 		mov	r12d, 1374389535	# tmp314,
 2267      EB51
 2268 01d6 41B83200 		mov	r8d, 50	#,
 2268      0000
 2269 01dc 41F7EC   		imul	r12d	# tmp314
 2270              	.LBE578:
 2271              	.LBB579:
 2272              	.LBB580:
 2273              	.LBB581:
 2274              	.LBB582:
 2275              	.LBB583:
 2276              	.LBB584:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2277              		.loc 1 101 0 discriminator 1
 2278 01df 448B5C24 		mov	r11d, DWORD PTR [rsp+60]	# D.35983, %sfp
 2278      3C
 2279 01e4 89EE     		mov	esi, ebp	# tmp316, ivtmp.493
 2280 01e6 C1FA04   		sar	edx, 4	# tmp312,
 2281 01e9 89E8     		mov	eax, ebp	# D.35982, ivtmp.493
 2282 01eb C1FE1F   		sar	esi, 31	# tmp316,
 2283 01ee 488B6C24 		mov	rbp, QWORD PTR [rsp+48]	# ivtmp.485, %sfp
 2283      30
 2284 01f3 44895C24 		mov	DWORD PTR [rsp+16], r11d	# %sfp, D.35983
 2284      10
 2285 01f8 29F2     		sub	edx, esi	# tmp312, tmp316
 2286 01fa 410FAFD0 		imul	edx, r8d	# tmp317,
 2287 01fe 29D0     		sub	eax, edx	# D.35982, tmp317
 2288 0200 4898     		cdqe
 2289 0202 4C69C800 		imul	r9, rax, 32000	# D.35985, D.35985,
 2289      7D0000
 2290 0209 4D8DB100 		lea	r14, U[r9]	# D.35986,
 2290      000000
 2291 0210 4D8DA100 		lea	r12, V[r9]	# D.35986,
 2291      000000
 2292              	.LVL112:
 2293              	.L109:
 2294 0217 8B7C2410 		mov	edi, DWORD PTR [rsp+16]	# ivtmp.483, %sfp
 2295 021b B8676666 		mov	eax, 1717986919	# tmp494,
 2295      66
 2296 0220 F7EF     		imul	edi	# ivtmp.483
 2297 0222 4189FA   		mov	r10d, edi	# tmp307, ivtmp.483
 2298 0225 41C1FA1F 		sar	r10d, 31	# tmp307,
 2299 0229 C1FA04   		sar	edx, 4	# D.35982,
 2300 022c 4429D2   		sub	edx, r10d	# D.35982, tmp307
 2301 022f 8D1C92   		lea	ebx, [rdx+rdx*4]	# tmp310,
 2302 0232 C1E303   		sal	ebx, 3	# tmp311,
 2303 0235 29DF     		sub	edi, ebx	# D.35982, tmp311
 2304              	.LBE584:
 2305              	.LBE583:
 2306              	.LBE582:
 2307              	.LBE581:
 2308              	.LBE580:
 2309              	.LBE579:
 2310              	.LBB601:
 2311              	.LBB576:
 2312              	.LBB573:
 2313              	.LBB570:
 2314              	.LBB567:
 2315              	.LBB564:
 2316 0237 31DB     		xor	ebx, ebx	# ivtmp.464
 2317 0239 4863F7   		movsx	rsi, edi	#, D.35982
 2318              	.LBE564:
 2319              	.LBE567:
 2320              	.LBE570:
 2321              	.LBE573:
 2322              	.LBE576:
 2323              	.LBE601:
 2324              	.LBB602:
 2325              	.LBB599:
 2326              	.LBB597:
 2327              	.LBB595:
 2328              	.LBB593:
 2329              	.LBB591:
 2330              	.LBB585:
 2331              	.LBB586:
  54:saya.cpp      ****   return ar[x][y][z];
 2332              		.loc 1 54 0 discriminator 1
 2333 023c 4C8D04B6 		lea	r8, [rsi+rsi*4]	# tmp389,
 2334 0240 4F8D0C80 		lea	r9, [r8+r8*4]	# tmp391,
 2335 0244 49C1E102 		sal	r9, 2	# tmp392,
 2336 0248 4C894C24 		mov	QWORD PTR [rsp+8], r9	# %sfp, tmp392
 2336      08
 2337              	.LVL113:
 2338 024d 0F1F00   		.p2align 4,,10
 2339              		.p2align 3
 2340              	.L106:
 2341              	.LBE586:
 2342              	.LBE585:
 100:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2343              		.loc 1 100 0
 2344 0250 4139CF   		cmp	r15d, ecx	# t, D.35982
 2345 0253 0F8C5702 		jl	.L125	#,
 2345      0000
 2346              	.L101:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2347              		.loc 1 101 0
 2348 0259 4139CF   		cmp	r15d, ecx	# t, D.35982
 2349 025c 7E12     		jle	.L102	#,
 2350 025e 6690     		.p2align 4,,10
 2351              		.p2align 3
 2352              	.L103:
 2353 0260 E8000000 		call	_Z13naive_proceedv	#
 2353      00
 2354              	.LVL114:
 2355 0265 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# global_clock.6, global_clock
 2355      0000
 2356 026b 4439F9   		cmp	ecx, r15d	# global_clock.6, t
 2357 026e 7CF0     		jl	.L103	#,
 2358              	.L102:
 2359              	.LVL115:
 2360 0270 458D5C1D 		lea	r11d, [r13+0+rbx]	# D.35983,
 2360      00
 2361              	.LBB588:
 2362              	.LBB589:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 2363              		.loc 1 53 0
 2364 0275 B81F85EB 		mov	eax, 1374389535	# tmp493,
 2364      51
 2365 027a 41BA6400 		mov	r10d, 100	#,
 2365      0000
 2366 0280 41F7EB   		imul	r11d	# D.35983
 2367 0283 4489DF   		mov	edi, r11d	# tmp281, D.35983
 2368 0286 C1FF1F   		sar	edi, 31	# tmp281,
 2369 0289 C1FA05   		sar	edx, 5	# z,
 2370 028c 29FA     		sub	edx, edi	# z, tmp281
 2371 028e 410FAFD2 		imul	edx, r10d	# tmp282,
 2372 0292 4129D3   		sub	r11d, edx	# z, tmp282
 2373              	.LVL116:
 2374              	.LBE589:
 2375              	.LBE588:
 2376              	.LBB590:
 2377              	.LBB587:
  54:saya.cpp      ****   return ar[x][y][z];
 2378              		.loc 1 54 0
 2379 0295 4963F3   		movsx	rsi, r11d	# z, z
 2380 0298 48037424 		add	rsi, QWORD PTR [rsp+8]	# tmp291, %sfp
 2380      08
 2381 029d C4C17B10 		vmovsd	xmm2, QWORD PTR [r12+rsi*8]	# v, MEM[(Real[40][100] *)_231]
 2381      14F4
 2382              	.LVL117:
 2383              	.LBE587:
 2384              	.LBE590:
 2385              	.LBE591:
 2386              	.LBE593:
 117:saya.cpp      **** 	}
 118:saya.cpp      ****       }
 119:saya.cpp      ****     }
 120:saya.cpp      **** 
 121:saya.cpp      ****     for(int x=0;x<SX;++x) {
 122:saya.cpp      ****       for(int y=SY-2;y<SY;++y) {
 123:saya.cpp      **** 	for(int z=0;z<SZ;++z) {
 124:saya.cpp      **** 	  double u,v; get_solution_at(t,x-t,y-t,z-t, u,v);
 125:saya.cpp      **** 	  Uwy[t][x][y-(SY-2)][z] = u;
 2387              		.loc 1 125 0
 2388 02a3 C4C17B10 		vmovsd	xmm3, QWORD PTR [r14+rsi*8]	# tmp302, MEM[(Real[40][100] *)_230]
 2388      1CF6
 126:saya.cpp      **** 	  Vwy[t][x][y-(SY-2)][z] = v;
 2389              		.loc 1 126 0
 2390 02a9 C5FB1194 		vmovsd	QWORD PTR Vwy[rbp+rbx*8], xmm2	# MEM[symbol: Vwy, base: ivtmp.485_41, index: ivtmp.464_157,
 2390      DD000000 
 2390      00
 2391              	.LVL118:
 125:saya.cpp      **** 	  Uwy[t][x][y-(SY-2)][z] = u;
 2392              		.loc 1 125 0
 2393 02b2 C5FB119C 		vmovsd	QWORD PTR Uwy[rbp+rbx*8], xmm3	# MEM[symbol: Uwy, base: ivtmp.485_41, index: ivtmp.464_157,
 2393      DD000000 
 2393      00
 2394 02bb 4883C301 		add	rbx, 1	# ivtmp.464,
 2395              	.LVL119:
 2396              	.LBE595:
 123:saya.cpp      **** 	for(int z=0;z<SZ;++z) {
 2397              		.loc 1 123 0
 2398 02bf 4883FB22 		cmp	rbx, 34	# ivtmp.464,
 2399 02c3 758B     		jne	.L106	#,
 2400 02c5 83442410 		add	DWORD PTR [rsp+16], 1	# %sfp,
 2400      01
 2401              	.LVL120:
 2402 02ca 4881C510 		add	rbp, 272	# ivtmp.485,
 2402      010000
 2403              	.LBE597:
 122:saya.cpp      ****       for(int y=SY-2;y<SY;++y) {
 2404              		.loc 1 122 0
 2405 02d1 8B5C2410 		mov	ebx, DWORD PTR [rsp+16]	# ivtmp.483, %sfp
 2406 02d5 395C2414 		cmp	DWORD PTR [rsp+20], ebx	# %sfp, ivtmp.483
 2407 02d9 0F8538FF 		jne	.L109	#,
 2407      FFFF
 2408              	.LVL121:
 2409 02df 8344241C 		add	DWORD PTR [rsp+28], 1	# %sfp,
 2409      01
 2410              	.LVL122:
 2411 02e4 48814424 		add	QWORD PTR [rsp+48], 544	# %sfp,
 2411      30200200 
 2411      00
 2412              	.LBE599:
 121:saya.cpp      ****     for(int x=0;x<SX;++x) {
 2413              		.loc 1 121 0
 2414 02ed 8B44241C 		mov	eax, DWORD PTR [rsp+28]	# ivtmp.493, %sfp
 2415 02f1 39442418 		cmp	DWORD PTR [rsp+24], eax	# %sfp, ivtmp.493
 2416 02f5 0F85D1FE 		jne	.L99	#,
 2416      FFFF
 2417 02fb 4C8B7424 		mov	r14, QWORD PTR [rsp+32]	# ivtmp.541, %sfp
 2417      20
 2418 0300 C7442410 		mov	DWORD PTR [rsp+16], 132	# %sfp,
 2418      84000000 
 2419 0308 448B6424 		mov	r12d, DWORD PTR [rsp+40]	# D.35983, %sfp
 2419      28
 2420 030d 44297C24 		sub	DWORD PTR [rsp+16], r15d	# %sfp, t
 2420      10
 2421 0312 4C897424 		mov	QWORD PTR [rsp+48], r14	# %sfp, ivtmp.541
 2421      30
 2422 0317 44896424 		mov	DWORD PTR [rsp+28], r12d	# %sfp, D.35983
 2422      1C
 2423              	.LVL123:
 2424              	.L108:
 2425 031c 8B6C241C 		mov	ebp, DWORD PTR [rsp+28]	# ivtmp.459, %sfp
 2426 0320 B81F85EB 		mov	eax, 1374389535	# tmp498,
 2426      51
 2427 0325 41B93200 		mov	r9d, 50	#,
 2427      0000
 2428              	.LBE602:
 2429              	.LBB603:
 2430              	.LBB604:
 2431              	.LBB605:
 2432              	.LBB606:
 2433              	.LBB607:
 2434              	.LBB608:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2435              		.loc 1 101 0 discriminator 1
 2436 032b 4C8B6424 		mov	r12, QWORD PTR [rsp+48]	# ivtmp.451, %sfp
 2436      30
 2437 0330 F7ED     		imul	ebp	# ivtmp.459
 2438 0332 4189E8   		mov	r8d, ebp	# tmp362, ivtmp.459
 2439 0335 89E8     		mov	eax, ebp	# D.35982, ivtmp.459
 2440 0337 41C1F81F 		sar	r8d, 31	# tmp362,
 2441 033b 8B6C2438 		mov	ebp, DWORD PTR [rsp+56]	# ivtmp.449, %sfp
 2442 033f C1FA04   		sar	edx, 4	# tmp358,
 2443 0342 4429C2   		sub	edx, r8d	# tmp358, tmp362
 2444 0345 410FAFD1 		imul	edx, r9d	# tmp363,
 2445 0349 29D0     		sub	eax, edx	# D.35982, tmp363
 2446 034b 4898     		cdqe
 2447 034d 4C69E800 		imul	r13, rax, 32000	# D.35985, D.35985,
 2447      7D0000
 2448 0354 4D8DB500 		lea	r14, U[r13]	# D.35986,
 2448      000000
 2449 035b 4D8DAD00 		lea	r13, V[r13]	# D.35986,
 2449      000000
 2450              	.LVL124:
 2451              		.p2align 4,,10
 2452 0362 660F1F44 		.p2align 3
 2452      0000
 2453              	.L117:
 2454 0368 B8676666 		mov	eax, 1717986919	# tmp497,
 2454      66
 2455 036d 4189EB   		mov	r11d, ebp	# tmp353, ivtmp.449
 2456 0370 89EF     		mov	edi, ebp	# D.35982, ivtmp.449
 2457 0372 F7ED     		imul	ebp	# ivtmp.449
 2458 0374 41C1FB1F 		sar	r11d, 31	# tmp353,
 2459              	.LBE608:
 2460              	.LBE607:
 2461              	.LBE606:
 2462              	.LBE605:
 2463              	.LBE604:
 2464              	.LBE603:
 2465              	.LBB625:
 111:saya.cpp      ****     for(int x=SX-2;x<SX;++x) {
 2466              		.loc 1 111 0 discriminator 1
 2467 0378 31DB     		xor	ebx, ebx	# ivtmp.430
 2468 037a C1FA04   		sar	edx, 4	# D.35982,
 2469 037d 4429DA   		sub	edx, r11d	# D.35982, tmp353
 2470 0380 448D1492 		lea	r10d, [rdx+rdx*4]	# tmp356,
 2471 0384 41C1E203 		sal	r10d, 3	# tmp357,
 2472 0388 4429D7   		sub	edi, r10d	# D.35982, tmp357
 2473 038b 4863F7   		movsx	rsi, edi	#, D.35982
 2474              	.LBE625:
 2475              	.LBB626:
 2476              	.LBB623:
 2477              	.LBB621:
 2478              	.LBB619:
 2479              	.LBB617:
 2480              	.LBB615:
 2481              	.LBB609:
 2482              	.LBB610:
  54:saya.cpp      ****   return ar[x][y][z];
 2483              		.loc 1 54 0 discriminator 1
 2484 038e 4C8D04B6 		lea	r8, [rsi+rsi*4]	# tmp375,
 2485 0392 4F8D0C80 		lea	r9, [r8+r8*4]	# tmp377,
 2486 0396 49C1E102 		sal	r9, 2	# tmp378,
 2487 039a 4C894C24 		mov	QWORD PTR [rsp+8], r9	# %sfp, tmp378
 2487      08
 2488              	.LVL125:
 2489              	.L115:
 2490              	.LBE610:
 2491              	.LBE609:
 100:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2492              		.loc 1 100 0
 2493 039f 4139CF   		cmp	r15d, ecx	# t, D.35982
 2494 03a2 0F8C1801 		jl	.L126	#,
 2494      0000
 2495              	.L110:
 101:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2496              		.loc 1 101 0
 2497 03a8 4139CF   		cmp	r15d, ecx	# t, D.35982
 2498 03ab 7E13     		jle	.L111	#,
 2499 03ad 0F1F00   		.p2align 4,,10
 2500              		.p2align 3
 2501              	.L112:
 2502 03b0 E8000000 		call	_Z13naive_proceedv	#
 2502      00
 2503              	.LVL126:
 2504 03b5 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# global_clock.6, global_clock
 2504      0000
 2505 03bb 4439F9   		cmp	ecx, r15d	# global_clock.6, t
 2506 03be 7CF0     		jl	.L112	#,
 2507              	.L111:
 2508              	.LVL127:
 2509 03c0 8B442410 		mov	eax, DWORD PTR [rsp+16]	# D.35983, %sfp
 2510              	.LBB612:
 2511              	.LBB613:
  53:saya.cpp      ****   z = (z+NZ)%NZ;
 2512              		.loc 1 53 0
 2513 03c4 BF640000 		mov	edi, 100	#,
 2513      00
 2514 03c9 448D1C18 		lea	r11d, [rax+rbx]	# D.35983,
 2515 03cd B81F85EB 		mov	eax, 1374389535	# tmp496,
 2515      51
 2516 03d2 41F7EB   		imul	r11d	# D.35983
 2517 03d5 4589DA   		mov	r10d, r11d	# tmp327, D.35983
 2518 03d8 41C1FA1F 		sar	r10d, 31	# tmp327,
 2519 03dc C1FA05   		sar	edx, 5	# z,
 2520 03df 4429D2   		sub	edx, r10d	# z, tmp327
 2521 03e2 0FAFD7   		imul	edx, edi	# tmp328,
 2522 03e5 4129D3   		sub	r11d, edx	# z, tmp328
 2523              	.LVL128:
 2524              	.LBE613:
 2525              	.LBE612:
 2526              	.LBB614:
 2527              	.LBB611:
  54:saya.cpp      ****   return ar[x][y][z];
 2528              		.loc 1 54 0
 2529 03e8 4963F3   		movsx	rsi, r11d	# z, z
 2530 03eb 48037424 		add	rsi, QWORD PTR [rsp+8]	# tmp337, %sfp
 2530      08
 2531 03f0 C4C17B10 		vmovsd	xmm4, QWORD PTR [r13+0+rsi*8]	# v, MEM[(Real[40][100] *)_261]
 2531      64F500
 2532              	.LVL129:
 2533              	.LBE611:
 2534              	.LBE614:
 2535              	.LBE615:
 2536              	.LBE617:
 127:saya.cpp      **** 	}
 128:saya.cpp      ****       }
 129:saya.cpp      ****     }
 130:saya.cpp      **** 
 131:saya.cpp      ****     for(int x=0;x<SX;++x) {
 132:saya.cpp      ****       for(int y=0;y<SY;++y) {
 133:saya.cpp      **** 	for(int z=SZ-2;z<SZ;++z) {
 134:saya.cpp      **** 	  double u,v; get_solution_at(t,x-t,y-t,z-t, u,v);
 135:saya.cpp      **** 	  Uwz[t][x][y][z-(SZ-2)] = u;
 2537              		.loc 1 135 0
 2538 03f7 C4C17B10 		vmovsd	xmm5, QWORD PTR [r14+rsi*8]	# tmp348, MEM[(Real[40][100] *)_260]
 2538      2CF6
 136:saya.cpp      **** 	  Vwz[t][x][y][z-(SZ-2)] = v;
 2539              		.loc 1 136 0
 2540 03fd C4C17B11 		vmovsd	QWORD PTR Vwz[r12+rbx*8], xmm4	# MEM[symbol: Vwz, base: ivtmp.451_57, index: ivtmp.430_131,
 2540      A4DC0000 
 2540      0000
 2541              	.LVL130:
 135:saya.cpp      **** 	  Uwz[t][x][y][z-(SZ-2)] = u;
 2542              		.loc 1 135 0
 2543 0407 C4C17B11 		vmovsd	QWORD PTR Uwz[r12+rbx*8], xmm5	# MEM[symbol: Uwz, base: ivtmp.451_57, index: ivtmp.430_131,
 2543      ACDC0000 
 2543      0000
 2544 0411 4883C301 		add	rbx, 1	# ivtmp.430,
 2545              	.LVL131:
 2546              	.LBE619:
 133:saya.cpp      **** 	for(int z=SZ-2;z<SZ;++z) {
 2547              		.loc 1 133 0
 2548 0415 4883FB02 		cmp	rbx, 2	# ivtmp.430,
 2549 0419 7584     		jne	.L115	#,
 2550 041b 83C501   		add	ebp, 1	# ivtmp.449,
 2551              	.LVL132:
 2552 041e 4983C410 		add	r12, 16	# ivtmp.451,
 2553              	.LBE621:
 132:saya.cpp      ****       for(int y=0;y<SY;++y) {
 2554              		.loc 1 132 0
 2555 0422 396C2414 		cmp	DWORD PTR [rsp+20], ebp	# %sfp, ivtmp.449
 2556 0426 0F853CFF 		jne	.L117	#,
 2556      FFFF
 2557              	.LVL133:
 2558 042c 8344241C 		add	DWORD PTR [rsp+28], 1	# %sfp,
 2558      01
 2559              	.LVL134:
 2560 0431 48814424 		add	QWORD PTR [rsp+48], 544	# %sfp,
 2560      30200200 
 2560      00
 2561              	.LBE623:
 131:saya.cpp      ****     for(int x=0;x<SX;++x) {
 2562              		.loc 1 131 0
 2563 043a 448B7424 		mov	r14d, DWORD PTR [rsp+28]	# ivtmp.459, %sfp
 2563      1C
 2564 043f 44397424 		cmp	DWORD PTR [rsp+24], r14d	# %sfp, ivtmp.459
 2564      18
 2565 0444 0F85D2FE 		jne	.L108	#,
 2565      FFFF
 2566 044a 836C2418 		sub	DWORD PTR [rsp+24], 1	# %sfp,
 2566      01
 2567              	.LBE626:
 109:saya.cpp      ****   for(int t = 0;t<MAX_T;++t){
 2568              		.loc 1 109 0
 2569 044f 4183C701 		add	r15d, 1	# t,
 2570              	.LVL135:
 2571 0453 836C2414 		sub	DWORD PTR [rsp+20], 1	# %sfp,
 2571      01
 2572 0458 48814424 		add	QWORD PTR [rsp+32], 18496	# %sfp,
 2572      20404800 
 2572      00
 2573 0461 4181FF40 		cmp	r15d, 8000	# t,
 2573      1F0000
 2574 0468 0F85CAFB 		jne	.L91	#,
 2574      FFFF
 2575              	.LBE631:
 137:saya.cpp      **** 	}
 138:saya.cpp      ****       }
 139:saya.cpp      ****     }
 140:saya.cpp      **** 
 141:saya.cpp      ****   }
 142:saya.cpp      **** 
 143:saya.cpp      ****   std::cout << "filled." << std::endl;
 2576              		.loc 1 143 0
 2577 046e BE000000 		mov	esi, OFFSET FLAT:.LC32	#,
 2577      00
 2578 0473 BF000000 		mov	edi, OFFSET FLAT:_ZSt4cout	#,
 2578      00
 2579 0478 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
 2579      00
 2580              	.LVL136:
 2581              	.LBB632:
 2582              	.LBB633:
 2583              		.file 2 "/usr/include/c++/4.8.2/ostream"
   1:/usr/include/c++/4.8.2/ostream **** // Output streams -*- C++ -*-
   2:/usr/include/c++/4.8.2/ostream **** 
   3:/usr/include/c++/4.8.2/ostream **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/ostream **** //
   5:/usr/include/c++/4.8.2/ostream **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/ostream **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/ostream **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/ostream **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/ostream **** // any later version.
  10:/usr/include/c++/4.8.2/ostream **** 
  11:/usr/include/c++/4.8.2/ostream **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/ostream **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/ostream **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/ostream **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/ostream **** 
  16:/usr/include/c++/4.8.2/ostream **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/ostream **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/ostream **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/ostream **** 
  20:/usr/include/c++/4.8.2/ostream **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/ostream **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/ostream **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/ostream **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/ostream **** 
  25:/usr/include/c++/4.8.2/ostream **** /** @file include/ostream
  26:/usr/include/c++/4.8.2/ostream ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/4.8.2/ostream ****  */
  28:/usr/include/c++/4.8.2/ostream **** 
  29:/usr/include/c++/4.8.2/ostream **** //
  30:/usr/include/c++/4.8.2/ostream **** // ISO C++ 14882: 27.6.2  Output streams
  31:/usr/include/c++/4.8.2/ostream **** //
  32:/usr/include/c++/4.8.2/ostream **** 
  33:/usr/include/c++/4.8.2/ostream **** #ifndef _GLIBCXX_OSTREAM
  34:/usr/include/c++/4.8.2/ostream **** #define _GLIBCXX_OSTREAM 1
  35:/usr/include/c++/4.8.2/ostream **** 
  36:/usr/include/c++/4.8.2/ostream **** #pragma GCC system_header
  37:/usr/include/c++/4.8.2/ostream **** 
  38:/usr/include/c++/4.8.2/ostream **** #include <ios>
  39:/usr/include/c++/4.8.2/ostream **** #include <bits/ostream_insert.h>
  40:/usr/include/c++/4.8.2/ostream **** 
  41:/usr/include/c++/4.8.2/ostream **** namespace std _GLIBCXX_VISIBILITY(default)
  42:/usr/include/c++/4.8.2/ostream **** {
  43:/usr/include/c++/4.8.2/ostream **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  44:/usr/include/c++/4.8.2/ostream **** 
  45:/usr/include/c++/4.8.2/ostream ****   /**
  46:/usr/include/c++/4.8.2/ostream ****    *  @brief  Template class basic_ostream.
  47:/usr/include/c++/4.8.2/ostream ****    *  @ingroup io
  48:/usr/include/c++/4.8.2/ostream ****    *
  49:/usr/include/c++/4.8.2/ostream ****    *  @tparam _CharT  Type of character stream.
  50:/usr/include/c++/4.8.2/ostream ****    *  @tparam _Traits  Traits for character type, defaults to
  51:/usr/include/c++/4.8.2/ostream ****    *                   char_traits<_CharT>.
  52:/usr/include/c++/4.8.2/ostream ****    *
  53:/usr/include/c++/4.8.2/ostream ****    *  This is the base class for all output streams.  It provides text
  54:/usr/include/c++/4.8.2/ostream ****    *  formatting of all builtin types, and communicates with any class
  55:/usr/include/c++/4.8.2/ostream ****    *  derived from basic_streambuf to do the actual output.
  56:/usr/include/c++/4.8.2/ostream ****   */
  57:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
  58:/usr/include/c++/4.8.2/ostream ****     class basic_ostream : virtual public basic_ios<_CharT, _Traits>
  59:/usr/include/c++/4.8.2/ostream ****     {
  60:/usr/include/c++/4.8.2/ostream ****     public:
  61:/usr/include/c++/4.8.2/ostream ****       // Types (inherited from basic_ios):
  62:/usr/include/c++/4.8.2/ostream ****       typedef _CharT			 		char_type;
  63:/usr/include/c++/4.8.2/ostream ****       typedef typename _Traits::int_type 		int_type;
  64:/usr/include/c++/4.8.2/ostream ****       typedef typename _Traits::pos_type 		pos_type;
  65:/usr/include/c++/4.8.2/ostream ****       typedef typename _Traits::off_type 		off_type;
  66:/usr/include/c++/4.8.2/ostream ****       typedef _Traits			 		traits_type;
  67:/usr/include/c++/4.8.2/ostream **** 
  68:/usr/include/c++/4.8.2/ostream ****       // Non-standard Types:
  69:/usr/include/c++/4.8.2/ostream ****       typedef basic_streambuf<_CharT, _Traits> 		__streambuf_type;
  70:/usr/include/c++/4.8.2/ostream ****       typedef basic_ios<_CharT, _Traits>		__ios_type;
  71:/usr/include/c++/4.8.2/ostream ****       typedef basic_ostream<_CharT, _Traits>		__ostream_type;
  72:/usr/include/c++/4.8.2/ostream ****       typedef num_put<_CharT, ostreambuf_iterator<_CharT, _Traits> >
  73:/usr/include/c++/4.8.2/ostream ****       							__num_put_type;
  74:/usr/include/c++/4.8.2/ostream ****       typedef ctype<_CharT>	      			__ctype_type;
  75:/usr/include/c++/4.8.2/ostream **** 
  76:/usr/include/c++/4.8.2/ostream ****       /**
  77:/usr/include/c++/4.8.2/ostream ****        *  @brief  Base constructor.
  78:/usr/include/c++/4.8.2/ostream ****        *
  79:/usr/include/c++/4.8.2/ostream ****        *  This ctor is almost never called by the user directly, rather from
  80:/usr/include/c++/4.8.2/ostream ****        *  derived classes' initialization lists, which pass a pointer to
  81:/usr/include/c++/4.8.2/ostream ****        *  their own stream buffer.
  82:/usr/include/c++/4.8.2/ostream ****       */
  83:/usr/include/c++/4.8.2/ostream ****       explicit
  84:/usr/include/c++/4.8.2/ostream ****       basic_ostream(__streambuf_type* __sb)
  85:/usr/include/c++/4.8.2/ostream ****       { this->init(__sb); }
  86:/usr/include/c++/4.8.2/ostream **** 
  87:/usr/include/c++/4.8.2/ostream ****       /**
  88:/usr/include/c++/4.8.2/ostream ****        *  @brief  Base destructor.
  89:/usr/include/c++/4.8.2/ostream ****        *
  90:/usr/include/c++/4.8.2/ostream ****        *  This does very little apart from providing a virtual base dtor.
  91:/usr/include/c++/4.8.2/ostream ****       */
  92:/usr/include/c++/4.8.2/ostream ****       virtual
  93:/usr/include/c++/4.8.2/ostream ****       ~basic_ostream() { }
  94:/usr/include/c++/4.8.2/ostream **** 
  95:/usr/include/c++/4.8.2/ostream ****       /// Safe prefix/suffix operations.
  96:/usr/include/c++/4.8.2/ostream ****       class sentry;
  97:/usr/include/c++/4.8.2/ostream ****       friend class sentry;
  98:/usr/include/c++/4.8.2/ostream **** 
  99:/usr/include/c++/4.8.2/ostream ****       //@{
 100:/usr/include/c++/4.8.2/ostream ****       /**
 101:/usr/include/c++/4.8.2/ostream ****        *  @brief  Interface for manipulators.
 102:/usr/include/c++/4.8.2/ostream ****        *
 103:/usr/include/c++/4.8.2/ostream ****        *  Manipulators such as @c std::endl and @c std::hex use these
 104:/usr/include/c++/4.8.2/ostream ****        *  functions in constructs like "std::cout << std::endl".  For more
 105:/usr/include/c++/4.8.2/ostream ****        *  information, see the iomanip header.
 106:/usr/include/c++/4.8.2/ostream ****       */
 107:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 108:/usr/include/c++/4.8.2/ostream ****       operator<<(__ostream_type& (*__pf)(__ostream_type&))
 109:/usr/include/c++/4.8.2/ostream ****       {
 110:/usr/include/c++/4.8.2/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 111:/usr/include/c++/4.8.2/ostream **** 	// DR 60. What is a formatted input function?
 112:/usr/include/c++/4.8.2/ostream **** 	// The inserters for manipulators are *not* formatted output functions.
 113:/usr/include/c++/4.8.2/ostream **** 	return __pf(*this);
 2584              		.loc 2 113 0
 2585 047d 4889C7   		mov	rdi, rax	#, D.35984
 2586 0480 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	#
 2586      00
 2587              	.LVL137:
 2588              	.LBE633:
 2589              	.LBE632:
 2590              	.LBE636:
 144:saya.cpp      **** }
 2591              		.loc 1 144 0
 2592 0485 4883C448 		add	rsp, 72	#,
 2593              		.cfi_remember_state
 2594              		.cfi_def_cfa_offset 56
 2595 0489 31C0     		xor	eax, eax	#
 2596 048b 5B       		pop	rbx	#
 2597              		.cfi_def_cfa_offset 48
 2598 048c 5D       		pop	rbp	#
 2599              		.cfi_def_cfa_offset 40
 2600              	.LVL138:
 2601 048d 415C     		pop	r12	#
 2602              		.cfi_def_cfa_offset 32
 2603 048f 415D     		pop	r13	#
 2604              		.cfi_def_cfa_offset 24
 2605 0491 415E     		pop	r14	#
 2606              		.cfi_def_cfa_offset 16
 2607 0493 415F     		pop	r15	#
 2608              		.cfi_def_cfa_offset 8
 2609              	.LVL139:
 2610 0495 C3       		ret
 2611              	.LVL140:
 2612 0496 662E0F1F 		.p2align 4,,10
 2612      84000000 
 2612      0000
 2613              		.p2align 3
 2614              	.L124:
 2615              		.cfi_restore_state
 2616              	.LBB637:
 2617              	.LBB634:
 2618              	.LBB627:
 2619              	.LBB577:
 2620              	.LBB574:
 2621              	.LBB571:
 2622              	.LBB568:
 2623              	.LBB565:
 100:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2624              		.loc 1 100 0
 2625 04a0 E8000000 		call	_Z22fill_initial_conditionv	#
 2625      00
 2626              	.LVL141:
 2627 04a5 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# D.35982, global_clock
 2627      0000
 2628 04ab E949FCFF 		jmp	.L92	#
 2628      FF
 2629              	.LVL142:
 2630              		.p2align 4,,10
 2631              		.p2align 3
 2632              	.L125:
 2633              	.LBE565:
 2634              	.LBE568:
 2635              	.LBE571:
 2636              	.LBE574:
 2637              	.LBE577:
 2638              	.LBE627:
 2639              	.LBB628:
 2640              	.LBB600:
 2641              	.LBB598:
 2642              	.LBB596:
 2643              	.LBB594:
 2644              	.LBB592:
 2645 04b0 E8000000 		call	_Z22fill_initial_conditionv	#
 2645      00
 2646              	.LVL143:
 2647 04b5 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# D.35982, global_clock
 2647      0000
 2648 04bb E999FDFF 		jmp	.L101	#
 2648      FF
 2649              	.LVL144:
 2650              		.p2align 4,,10
 2651              		.p2align 3
 2652              	.L126:
 2653              	.LBE592:
 2654              	.LBE594:
 2655              	.LBE596:
 2656              	.LBE598:
 2657              	.LBE600:
 2658              	.LBE628:
 2659              	.LBB629:
 2660              	.LBB624:
 2661              	.LBB622:
 2662              	.LBB620:
 2663              	.LBB618:
 2664              	.LBB616:
 2665 04c0 E8000000 		call	_Z22fill_initial_conditionv	#
 2665      00
 2666              	.LVL145:
 2667 04c5 8B0D0000 		mov	ecx, DWORD PTR global_clock[rip]	# D.35982, global_clock
 2667      0000
 2668 04cb E9D8FEFF 		jmp	.L110	#
 2668      FF
 2669              	.LBE616:
 2670              	.LBE618:
 2671              	.LBE620:
 2672              	.LBE622:
 2673              	.LBE624:
 2674              	.LBE629:
 2675              	.LBE634:
 2676              	.LBE637:
 2677              		.cfi_endproc
 2678              	.LFE1479:
 2680              		.p2align 4,,15
 2682              	_GLOBAL__sub_I_U:
 2683              	.LFB1637:
 2684              		.loc 1 144 0
 2685              		.cfi_startproc
 2686              	.LVL146:
 2687 04d0 4883EC08 		sub	rsp, 8	#,
 2688              		.cfi_def_cfa_offset 16
 2689              	.LBB640:
 2690              	.LBB641:
 2691              		.file 3 "/usr/include/c++/4.8.2/iostream"
   1:/usr/include/c++/4.8.2/iostream **** // Standard iostream objects -*- C++ -*-
   2:/usr/include/c++/4.8.2/iostream **** 
   3:/usr/include/c++/4.8.2/iostream **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/iostream **** //
   5:/usr/include/c++/4.8.2/iostream **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/iostream **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/iostream **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/iostream **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/iostream **** // any later version.
  10:/usr/include/c++/4.8.2/iostream **** 
  11:/usr/include/c++/4.8.2/iostream **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/iostream **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/iostream **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/iostream **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/iostream **** 
  16:/usr/include/c++/4.8.2/iostream **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/iostream **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/iostream **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/iostream **** 
  20:/usr/include/c++/4.8.2/iostream **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/iostream **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/iostream **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/iostream **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/iostream **** 
  25:/usr/include/c++/4.8.2/iostream **** /** @file include/iostream
  26:/usr/include/c++/4.8.2/iostream ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/4.8.2/iostream ****  */
  28:/usr/include/c++/4.8.2/iostream **** 
  29:/usr/include/c++/4.8.2/iostream **** //
  30:/usr/include/c++/4.8.2/iostream **** // ISO C++ 14882: 27.3  Standard iostream objects
  31:/usr/include/c++/4.8.2/iostream **** //
  32:/usr/include/c++/4.8.2/iostream **** 
  33:/usr/include/c++/4.8.2/iostream **** #ifndef _GLIBCXX_IOSTREAM
  34:/usr/include/c++/4.8.2/iostream **** #define _GLIBCXX_IOSTREAM 1
  35:/usr/include/c++/4.8.2/iostream **** 
  36:/usr/include/c++/4.8.2/iostream **** #pragma GCC system_header
  37:/usr/include/c++/4.8.2/iostream **** 
  38:/usr/include/c++/4.8.2/iostream **** #include <bits/c++config.h>
  39:/usr/include/c++/4.8.2/iostream **** #include <ostream>
  40:/usr/include/c++/4.8.2/iostream **** #include <istream>
  41:/usr/include/c++/4.8.2/iostream **** 
  42:/usr/include/c++/4.8.2/iostream **** namespace std _GLIBCXX_VISIBILITY(default)
  43:/usr/include/c++/4.8.2/iostream **** {
  44:/usr/include/c++/4.8.2/iostream **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  45:/usr/include/c++/4.8.2/iostream **** 
  46:/usr/include/c++/4.8.2/iostream ****   /**
  47:/usr/include/c++/4.8.2/iostream ****    *  @name Standard Stream Objects
  48:/usr/include/c++/4.8.2/iostream ****    *
  49:/usr/include/c++/4.8.2/iostream ****    *  The &lt;iostream&gt; header declares the eight <em>standard stream
  50:/usr/include/c++/4.8.2/iostream ****    *  objects</em>.  For other declarations, see
  51:/usr/include/c++/4.8.2/iostream ****    *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/io.html
  52:/usr/include/c++/4.8.2/iostream ****    *  and the @link iosfwd I/O forward declarations @endlink
  53:/usr/include/c++/4.8.2/iostream ****    *
  54:/usr/include/c++/4.8.2/iostream ****    *  They are required by default to cooperate with the global C
  55:/usr/include/c++/4.8.2/iostream ****    *  library's @c FILE streams, and to be available during program
  56:/usr/include/c++/4.8.2/iostream ****    *  startup and termination. For more information, see the section of the
  57:/usr/include/c++/4.8.2/iostream ****    *  manual linked to above.
  58:/usr/include/c++/4.8.2/iostream ****   */
  59:/usr/include/c++/4.8.2/iostream ****   //@{
  60:/usr/include/c++/4.8.2/iostream ****   extern istream cin;		/// Linked to standard input
  61:/usr/include/c++/4.8.2/iostream ****   extern ostream cout;		/// Linked to standard output
  62:/usr/include/c++/4.8.2/iostream ****   extern ostream cerr;		/// Linked to standard error (unbuffered)
  63:/usr/include/c++/4.8.2/iostream ****   extern ostream clog;		/// Linked to standard error (buffered)
  64:/usr/include/c++/4.8.2/iostream **** 
  65:/usr/include/c++/4.8.2/iostream **** #ifdef _GLIBCXX_USE_WCHAR_T
  66:/usr/include/c++/4.8.2/iostream ****   extern wistream wcin;		/// Linked to standard input
  67:/usr/include/c++/4.8.2/iostream ****   extern wostream wcout;	/// Linked to standard output
  68:/usr/include/c++/4.8.2/iostream ****   extern wostream wcerr;	/// Linked to standard error (unbuffered)
  69:/usr/include/c++/4.8.2/iostream ****   extern wostream wclog;	/// Linked to standard error (buffered)
  70:/usr/include/c++/4.8.2/iostream **** #endif
  71:/usr/include/c++/4.8.2/iostream ****   //@}
  72:/usr/include/c++/4.8.2/iostream **** 
  73:/usr/include/c++/4.8.2/iostream ****   // For construction of filebuffers for cout, cin, cerr, clog et. al.
  74:/usr/include/c++/4.8.2/iostream ****   static ios_base::Init __ioinit;
 2692              		.loc 3 74 0
 2693 04d4 BF000000 		mov	edi, OFFSET FLAT:_ZStL8__ioinit	#,
 2693      00
 2694 04d9 E8000000 		call	_ZNSt8ios_base4InitC1Ev	#
 2694      00
 2695              	.LVL147:
 2696 04de BA000000 		mov	edx, OFFSET FLAT:__dso_handle	#,
 2696      00
 2697 04e3 BE000000 		mov	esi, OFFSET FLAT:_ZStL8__ioinit	#,
 2697      00
 2698 04e8 BF000000 		mov	edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev	#,
 2698      00
 2699              	.LBE641:
 2700              	.LBE640:
 2701              		.loc 1 144 0
 2702 04ed 4883C408 		add	rsp, 8	#,
 2703              		.cfi_def_cfa_offset 8
 2704              	.LBB643:
 2705              	.LBB642:
 2706              		.loc 3 74 0
 2707 04f1 E9000000 		jmp	__cxa_atexit	#
 2707      00
 2708              	.LVL148:
 2709              	.LBE642:
 2710              	.LBE643:
 2711              		.cfi_endproc
 2712              	.LFE1637:
 2714              		.section	.init_array,"aw"
 2715              		.align 8
 2716 0000 00000000 		.quad	_GLOBAL__sub_I_U
 2716      00000000 
 2717              		.globl	Vwz
 2718              		.bss
 2719              		.align 32
 2722              	Vwz:
 2723 0000 00000000 		.zero	147968000
 2723      00000000 
 2723      00000000 
 2723      00000000 
 2723      00000000 
 2724              		.globl	Vwy
 2725              		.align 32
 2728              	Vwy:
 2729 8d1d000 00000000 		.zero	147968000
 2729      00000000 
 2729      00000000 
 2729      00000000 
 2729      00000000 
 2730              		.globl	Vwx
 2731              		.align 32
 2734              	Vwx:
 2735 11a3a000 00000000 		.zero	147968000
 2735      00000000 
 2735      00000000 
 2735      00000000 
 2735      00000000 
 2736              		.globl	Uwz
 2737              		.align 32
 2740              	Uwz:
 2741 1a757000 00000000 		.zero	147968000
 2741      00000000 
 2741      00000000 
 2741      00000000 
 2741      00000000 
 2742              		.globl	Uwy
 2743              		.align 32
 2746              	Uwy:
 2747 23474000 00000000 		.zero	147968000
 2747      00000000 
 2747      00000000 
 2747      00000000 
 2747      00000000 
 2748              		.globl	Uwx
 2749              		.align 32
 2752              	Uwx:
 2753 2c191000 00000000 		.zero	147968000
 2753      00000000 
 2753      00000000 
 2753      00000000 
 2753      00000000 
 2754              		.globl	global_clock
 2755              		.align 32
 2758              	global_clock:
 2759 34eae000 00000000 		.zero	4
 2760              		.globl	V_other
 2761 34eae004 00000000 		.align 32
 2761      00000000 
 2761      00000000 
 2761      00000000 
 2761      00000000 
 2764              	V_other:
 2765 34eae020 00000000 		.zero	1600000
 2765      00000000 
 2765      00000000 
 2765      00000000 
 2765      00000000 
 2766              		.globl	U_other
 2767              		.align 32
 2770              	U_other:
 2771 35034a20 00000000 		.zero	1600000
 2771      00000000 
 2771      00000000 
 2771      00000000 
 2771      00000000 
 2772              		.globl	V
 2773              		.align 32
 2776              	V:
 2777 351bb420 00000000 		.zero	1600000
 2777      00000000 
 2777      00000000 
 2777      00000000 
 2777      00000000 
 2778              		.globl	U
 2779              		.align 32
 2782              	U:
 2783 35341e20 00000000 		.zero	1600000
 2783      00000000 
 2783      00000000 
 2783      00000000 
 2783      00000000 
 2784              		.local	_ZStL8__ioinit
 2785              		.comm	_ZStL8__ioinit,1,1
 2786              		.section	.rodata.cst32,"aM",@progbits,32
 2787              		.align 32
 2788              	.LC0:
 2789 0000 00000000 		.long	0
 2790 0004 0000F03F 		.long	1072693248
 2791 0008 00000000 		.long	0
 2792 000c 0000F03F 		.long	1072693248
 2793 0010 00000000 		.long	0
 2794 0014 0000F03F 		.long	1072693248
 2795 0018 00000000 		.long	0
 2796 001c 0000F03F 		.long	1072693248
 2797              		.section	.rodata.cst8,"aM",@progbits,8
 2798              		.align 8
 2799              	.LC1:
 2800 0000 00000000 		.long	0
 2801 0004 0000E03F 		.long	1071644672
 2802              		.align 8
 2803              	.LC2:
 2804 0008 9A999999 		.long	2576980378
 2805 000c 9999B93F 		.long	1069128089
 2806              		.align 8
 2807              	.LC3:
 2808 0010 00000000 		.long	0
 2809 0014 0000D03F 		.long	1070596096
 2810              		.section	.rodata.cst32
 2811              		.align 32
 2812              	.LC4:
 2813 0020 00000000 		.long	0
 2814 0024 01000000 		.long	1
 2815 0028 02000000 		.long	2
 2816 002c 03000000 		.long	3
 2817 0030 04000000 		.long	4
 2818 0034 05000000 		.long	5
 2819 0038 06000000 		.long	6
 2820 003c 07000000 		.long	7
 2821              		.align 32
 2822              	.LC5:
 2823 0040 64000000 		.long	100
 2824 0044 64000000 		.long	100
 2825 0048 64000000 		.long	100
 2826 004c 64000000 		.long	100
 2827 0050 64000000 		.long	100
 2828 0054 64000000 		.long	100
 2829 0058 64000000 		.long	100
 2830 005c 64000000 		.long	100
 2831              		.align 32
 2832              	.LC6:
 2833 0060 1F85EB51 		.long	1374389535
 2834 0064 1F85EB51 		.long	1374389535
 2835 0068 1F85EB51 		.long	1374389535
 2836 006c 1F85EB51 		.long	1374389535
 2837 0070 1F85EB51 		.long	1374389535
 2838 0074 1F85EB51 		.long	1374389535
 2839 0078 1F85EB51 		.long	1374389535
 2840 007c 1F85EB51 		.long	1374389535
 2841              		.align 32
 2842              	.LC7:
 2843 0080 04       		.byte	4
 2844 0081 05       		.byte	5
 2845 0082 06       		.byte	6
 2846 0083 07       		.byte	7
 2847 0084 80       		.byte	-128
 2848 0085 80       		.byte	-128
 2849 0086 80       		.byte	-128
 2850 0087 80       		.byte	-128
 2851 0088 0C       		.byte	12
 2852 0089 0D       		.byte	13
 2853 008a 0E       		.byte	14
 2854 008b 0F       		.byte	15
 2855 008c 80       		.byte	-128
 2856 008d 80       		.byte	-128
 2857 008e 80       		.byte	-128
 2858 008f 80       		.byte	-128
 2859 0090 04       		.byte	4
 2860 0091 05       		.byte	5
 2861 0092 06       		.byte	6
 2862 0093 07       		.byte	7
 2863 0094 80       		.byte	-128
 2864 0095 80       		.byte	-128
 2865 0096 80       		.byte	-128
 2866 0097 80       		.byte	-128
 2867 0098 0C       		.byte	12
 2868 0099 0D       		.byte	13
 2869 009a 0E       		.byte	14
 2870 009b 0F       		.byte	15
 2871 009c 80       		.byte	-128
 2872 009d 80       		.byte	-128
 2873 009e 80       		.byte	-128
 2874 009f 80       		.byte	-128
 2875              		.align 32
 2876              	.LC8:
 2877 00a0 80       		.byte	-128
 2878 00a1 80       		.byte	-128
 2879 00a2 80       		.byte	-128
 2880 00a3 80       		.byte	-128
 2881 00a4 04       		.byte	4
 2882 00a5 05       		.byte	5
 2883 00a6 06       		.byte	6
 2884 00a7 07       		.byte	7
 2885 00a8 80       		.byte	-128
 2886 00a9 80       		.byte	-128
 2887 00aa 80       		.byte	-128
 2888 00ab 80       		.byte	-128
 2889 00ac 0C       		.byte	12
 2890 00ad 0D       		.byte	13
 2891 00ae 0E       		.byte	14
 2892 00af 0F       		.byte	15
 2893 00b0 80       		.byte	-128
 2894 00b1 80       		.byte	-128
 2895 00b2 80       		.byte	-128
 2896 00b3 80       		.byte	-128
 2897 00b4 04       		.byte	4
 2898 00b5 05       		.byte	5
 2899 00b6 06       		.byte	6
 2900 00b7 07       		.byte	7
 2901 00b8 80       		.byte	-128
 2902 00b9 80       		.byte	-128
 2903 00ba 80       		.byte	-128
 2904 00bb 80       		.byte	-128
 2905 00bc 0C       		.byte	12
 2906 00bd 0D       		.byte	13
 2907 00be 0E       		.byte	14
 2908 00bf 0F       		.byte	15
 2909              		.align 32
 2910              	.LC9:
 2911 00c0 FFFFFFFF 		.long	4294967295
 2912 00c4 FFFFFFFF 		.long	-1
 2913 00c8 FFFFFFFF 		.long	4294967295
 2914 00cc FFFFFFFF 		.long	-1
 2915 00d0 FFFFFFFF 		.long	4294967295
 2916 00d4 FFFFFFFF 		.long	-1
 2917 00d8 FFFFFFFF 		.long	4294967295
 2918 00dc FFFFFFFF 		.long	-1
 2919              		.align 32
 2920              	.LC10:
 2921 00e0 63000000 		.long	99
 2922 00e4 63000000 		.long	99
 2923 00e8 63000000 		.long	99
 2924 00ec 63000000 		.long	99
 2925 00f0 63000000 		.long	99
 2926 00f4 63000000 		.long	99
 2927 00f8 63000000 		.long	99
 2928 00fc 63000000 		.long	99
 2929              		.align 32
 2930              	.LC11:
 2931 0100 65000000 		.long	101
 2932 0104 65000000 		.long	101
 2933 0108 65000000 		.long	101
 2934 010c 65000000 		.long	101
 2935 0110 65000000 		.long	101
 2936 0114 65000000 		.long	101
 2937 0118 65000000 		.long	101
 2938 011c 65000000 		.long	101
 2939              		.align 32
 2940              	.LC12:
 2941 0120 00000000 		.long	0
 2942 0124 00001840 		.long	1075314688
 2943 0128 00000000 		.long	0
 2944 012c 00001840 		.long	1075314688
 2945 0130 00000000 		.long	0
 2946 0134 00001840 		.long	1075314688
 2947 0138 00000000 		.long	0
 2948 013c 00001840 		.long	1075314688
 2949              		.align 32
 2950              	.LC13:
 2951 0140 FCA9F1D2 		.long	3539053052
 2952 0144 4D62503F 		.long	1062232653
 2953 0148 FCA9F1D2 		.long	3539053052
 2954 014c 4D62503F 		.long	1062232653
 2955 0150 FCA9F1D2 		.long	3539053052
 2956 0154 4D62503F 		.long	1062232653
 2957 0158 FCA9F1D2 		.long	3539053052
 2958 015c 4D62503F 		.long	1062232653
 2959              		.align 32
 2960              	.LC14:
 2961 0160 DFBC9A78 		.long	2023406815
 2962 0164 563452BF 		.long	-1085131690
 2963 0168 DFBC9A78 		.long	2023406815
 2964 016c 563452BF 		.long	-1085131690
 2965 0170 DFBC9A78 		.long	2023406815
 2966 0174 563452BF 		.long	-1085131690
 2967 0178 DFBC9A78 		.long	2023406815
 2968 017c 563452BF 		.long	-1085131690
 2969              		.align 32
 2970              	.LC15:
 2971 0180 2951CEA0 		.long	2697875753
 2972 0184 C845E83E 		.long	1055409608
 2973 0188 2951CEA0 		.long	2697875753
 2974 018c C845E83E 		.long	1055409608
 2975 0190 2951CEA0 		.long	2697875753
 2976 0194 C845E83E 		.long	1055409608
 2977 0198 2951CEA0 		.long	2697875753
 2978 019c C845E83E 		.long	1055409608
 2979              		.align 32
 2980              	.LC16:
 2981 01a0 97801ED4 		.long	3558768791
 2982 01a4 679CEF3D 		.long	1039113319
 2983 01a8 97801ED4 		.long	3558768791
 2984 01ac 679CEF3D 		.long	1039113319
 2985 01b0 97801ED4 		.long	3558768791
 2986 01b4 679CEF3D 		.long	1039113319
 2987 01b8 97801ED4 		.long	3558768791
 2988 01bc 679CEF3D 		.long	1039113319
 2989              		.align 32
 2990              	.LC17:
 2991 01c0 DFBC9A78 		.long	2023406815
 2992 01c4 5634123F 		.long	1058157654
 2993 01c8 DFBC9A78 		.long	2023406815
 2994 01cc 5634123F 		.long	1058157654
 2995 01d0 DFBC9A78 		.long	2023406815
 2996 01d4 5634123F 		.long	1058157654
 2997 01d8 DFBC9A78 		.long	2023406815
 2998 01dc 5634123F 		.long	1058157654
 2999              		.align 32
 3000              	.LC18:
 3001 01e0 DFBC9A78 		.long	2023406815
 3002 01e4 5634523F 		.long	1062351958
 3003 01e8 DFBC9A78 		.long	2023406815
 3004 01ec 5634523F 		.long	1062351958
 3005 01f0 DFBC9A78 		.long	2023406815
 3006 01f4 5634523F 		.long	1062351958
 3007 01f8 DFBC9A78 		.long	2023406815
 3008 01fc 5634523F 		.long	1062351958
 3009              		.align 32
 3010              	.LC19:
 3011 0200 18C31F4F 		.long	1327481624
 3012 0204 7EC4E03D 		.long	1038140542
 3013 0208 18C31F4F 		.long	1327481624
 3014 020c 7EC4E03D 		.long	1038140542
 3015 0210 18C31F4F 		.long	1327481624
 3016 0214 7EC4E03D 		.long	1038140542
 3017 0218 18C31F4F 		.long	1327481624
 3018 021c 7EC4E03D 		.long	1038140542
 3019              		.align 32
 3020              	.LC20:
 3021 0220 00000000 		.long	0
 3022 0224 00006940 		.long	1080623104
 3023 0228 00000000 		.long	0
 3024 022c 00006940 		.long	1080623104
 3025 0230 00000000 		.long	0
 3026 0234 00006940 		.long	1080623104
 3027 0238 00000000 		.long	0
 3028 023c 00006940 		.long	1080623104
 3029              		.section	.rodata.cst8
 3030              		.align 8
 3031              	.LC21:
 3032 0018 00000000 		.long	0
 3033 001c 00001840 		.long	1075314688
 3034              		.align 8
 3035              	.LC22:
 3036 0020 FCA9F1D2 		.long	3539053052
 3037 0024 4D62503F 		.long	1062232653
 3038              		.align 8
 3039              	.LC23:
 3040 0028 DFBC9A78 		.long	2023406815
 3041 002c 5634123F 		.long	1058157654
 3042              		.align 8
 3043              	.LC24:
 3044 0030 DFBC9A78 		.long	2023406815
 3045 0034 5634523F 		.long	1062351958
 3046              		.align 8
 3047              	.LC25:
 3048 0038 18C31F4F 		.long	1327481624
 3049 003c 7EC4E03D 		.long	1038140542
 3050              		.align 8
 3051              	.LC26:
 3052 0040 DFBC9A78 		.long	2023406815
 3053 0044 563452BF 		.long	-1085131690
 3054              		.align 8
 3055              	.LC27:
 3056 0048 00000000 		.long	0
 3057 004c 0000F03F 		.long	1072693248
 3058              		.align 8
 3059              	.LC28:
 3060 0050 2951CEA0 		.long	2697875753
 3061 0054 C845E83E 		.long	1055409608
 3062              		.align 8
 3063              	.LC29:
 3064 0058 97801ED4 		.long	3558768791
 3065 005c 679CEF3D 		.long	1039113319
 3066              		.align 8
 3067              	.LC30:
 3068 0060 00000000 		.long	0
 3069 0064 00006940 		.long	1080623104
 3070              		.section	.rodata.cst32
 3071              		.align 32
 3072              	.LC31:
 3073 0240 08000000 		.long	8
 3074 0244 08000000 		.long	8
 3075 0248 08000000 		.long	8
 3076 024c 08000000 		.long	8
 3077 0250 08000000 		.long	8
 3078 0254 08000000 		.long	8
 3079 0258 08000000 		.long	8
 3080 025c 08000000 		.long	8
 3081              		.text
 3082              	.Letext0:
 3083              		.file 4 "/usr/include/c++/4.8.2/cmath"
 3084              		.file 5 "/usr/include/c++/4.8.2/cwchar"
 3085              		.file 6 "/usr/include/c++/4.8.2/bits/exception_ptr.h"
 3086              		.file 7 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/c++config.h"
 3087              		.file 8 "/usr/include/c++/4.8.2/bits/char_traits.h"
 3088              		.file 9 "/usr/include/c++/4.8.2/cstdint"
 3089              		.file 10 "/usr/include/c++/4.8.2/clocale"
 3090              		.file 11 "/usr/include/c++/4.8.2/cstdlib"
 3091              		.file 12 "/usr/include/c++/4.8.2/cstdio"
 3092              		.file 13 "/usr/include/c++/4.8.2/bits/ios_base.h"
 3093              		.file 14 "/usr/include/c++/4.8.2/cwctype"
 3094              		.file 15 "/usr/include/c++/4.8.2/bits/basic_ios.h"
 3095              		.file 16 "/usr/include/c++/4.8.2/bits/stl_algobase.h"
 3096              		.file 17 "/usr/include/c++/4.8.2/iosfwd"
 3097              		.file 18 "/usr/include/c++/4.8.2/bits/cpp_type_traits.h"
 3098              		.file 19 "/usr/include/c++/4.8.2/ext/new_allocator.h"
 3099              		.file 20 "/usr/include/c++/4.8.2/ext/numeric_traits.h"
 3100              		.file 21 "/usr/include/bits/mathdef.h"
 3101              		.file 22 "/usr/include/bits/types.h"
 3102              		.file 23 "/usr/lib/gcc/x86_64-redhat-linux/4.8.3/include/stddef.h"
 3103              		.file 24 "/usr/include/unistd.h"
 3104              		.file 25 "/usr/include/stdio.h"
 3105              		.file 26 "/usr/include/libio.h"
 3106              		.file 27 "<\347\265\204\343\201\277\350\276\274\343\201\277>"
 3107              		.file 28 "/usr/include/wchar.h"
 3108              		.file 29 "/usr/include/time.h"
 3109              		.file 30 "/usr/include/c++/4.8.2/debug/debug.h"
 3110              		.file 31 "/usr/include/stdint.h"
 3111              		.file 32 "/usr/include/locale.h"
 3112              		.file 33 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/atomic_word.h"
 3113              		.file 34 "/usr/include/stdlib.h"
 3114              		.file 35 "/usr/include/bits/stdlib-float.h"
 3115              		.file 36 "/usr/include/_G_config.h"
 3116              		.file 37 "/usr/include/bits/stdio.h"
 3117              		.file 38 "/usr/include/wctype.h"
 3118              		.file 39 "/usr/include/c++/4.8.2/bits/stl_pair.h"
 3119              		.file 40 "/usr/include/bits/mathcalls.h"

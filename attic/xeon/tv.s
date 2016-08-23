   1              		.file	"tv.cpp"
   2              		.intel_syntax noprefix
   3              	# GNU C++ (GCC) version 4.8.3 20140911 (Red Hat 4.8.3-9) (x86_64-redhat-linux)
   4              	#	compiled by GNU C version 4.8.3 20140911 (Red Hat 4.8.3-9), GMP version 5.1.1, MPFR version 3.1.1
   5              	# warning: GMP header version 5.1.1 differs from library version 6.0.0.
   6              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   7              	# 渡されたオプション:  -D_GNU_SOURCE -D_REENTRANT tv.cpp
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
  59              		.section	.text.startup,"ax",@progbits
  60              		.p2align 4,,15
  61              		.globl	main
  63              	main:
  64              	.LFB1441:
  65              		.file 1 "tv.cpp"
   1:tv.cpp        **** //test vectorization
   2:tv.cpp        **** #include <cmath>
   3:tv.cpp        **** #include <iostream>
   4:tv.cpp        **** using namespace std;
   5:tv.cpp        **** 
   6:tv.cpp        **** const int N=1026;
   7:tv.cpp        **** const int T_MAX = 10240;
   8:tv.cpp        **** 
   9:tv.cpp        **** double a[N];
  10:tv.cpp        **** 
  11:tv.cpp        **** int main () {
  66              		.loc 1 11 0
  67              		.cfi_startproc
  68              	.LVL0:
  69 0000 B8010000 		mov	eax, 1	# D.33199,
  69      00
  70 0005 55       		push	rbp	#
  71              		.cfi_def_cfa_offset 16
  72              		.cfi_offset 6, -16
  73 0006 C5FB2AC0 		vcvtsi2sd	xmm0, xmm0, eax	#, D.33199
  74 000a 4889E5   		mov	rbp, rsp	#,
  75              		.cfi_def_cfa_register 6
  76 000d 4154     		push	r12	#
  77 000f 53       		push	rbx	#
  78              		.cfi_offset 12, -24
  79              		.cfi_offset 3, -32
  80 0010 BB010000 		mov	ebx, 1	# ivtmp.118,
  80      00
  81              	.LBB22:
  82              	.LBB23:
  12:tv.cpp        ****   for (int x=0;x<N;++x) {
  13:tv.cpp        ****     a[x]=sin(x);
  83              		.loc 1 13 0
  84 0015 48C70500 		mov	QWORD PTR a[rip], 0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B],
  84      00000000 
  84      000000
  85              	.LVL1:
  86              	.LBE23:
  87              	.LBE22:
  11:tv.cpp        **** int main () {
  88              		.loc 1 11 0
  89 0020 4883E4E0 		and	rsp, -32	#,
  90 0024 E8000000 		call	sin	#
  90      00
  91              	.LVL2:
  92 0029 E9D30000 		jmp	.L4	#
  92      00
  93 002e 6690     		.p2align 4,,10
  94              		.p2align 3
  95              	.L2:
  96 0030 C5FB2AC2 		vcvtsi2sd	xmm0, xmm0, edx	# D.33197, D.33199
  97 0034 E8000000 		call	sin	#
  97      00
  98              	.LVL3:
  99 0039 418D7C24 		lea	edi, [r12+1]	# D.33199,
  99      01
 100              	.LVL4:
 101              	.LBB31:
 102              	.LBB24:
 103              		.loc 1 13 0
 104 003e C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 104      04E50000 
 104      0000
 105 0048 4C8D6302 		lea	r12, [rbx+2]	# ivtmp.118,
 106 004c C5FB2AC7 		vcvtsi2sd	xmm0, xmm0, edi	# D.33197, D.33199
 107 0050 E8000000 		call	sin	#
 107      00
 108              	.LVL5:
 109 0055 458D4424 		lea	r8d, [r12+1]	# D.33199,
 109      01
 110              	.LVL6:
 111 005a C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 111      04E50000 
 111      0000
 112 0064 4C8D6303 		lea	r12, [rbx+3]	# ivtmp.118,
 113 0068 C4C17B2A 		vcvtsi2sd	xmm0, xmm0, r8d	# D.33197, D.33199
 113      C0
 114 006d E8000000 		call	sin	#
 114      00
 115              	.LVL7:
 116 0072 458D4C24 		lea	r9d, [r12+1]	# D.33199,
 116      01
 117              	.LVL8:
 118 0077 C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 118      04E50000 
 118      0000
 119 0081 4C8D6304 		lea	r12, [rbx+4]	# ivtmp.118,
 120 0085 C4C17B2A 		vcvtsi2sd	xmm0, xmm0, r9d	# D.33197, D.33199
 120      C1
 121 008a E8000000 		call	sin	#
 121      00
 122              	.LVL9:
 123 008f 458D5424 		lea	r10d, [r12+1]	# D.33199,
 123      01
 124              	.LVL10:
 125 0094 C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 125      04E50000 
 125      0000
 126 009e 4C8D6305 		lea	r12, [rbx+5]	# ivtmp.118,
 127 00a2 C4C17B2A 		vcvtsi2sd	xmm0, xmm0, r10d	# D.33197, D.33199
 127      C2
 128 00a7 E8000000 		call	sin	#
 128      00
 129              	.LVL11:
 130 00ac 458D5C24 		lea	r11d, [r12+1]	# D.33199,
 130      01
 131              	.LVL12:
 132 00b1 C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 132      04E50000 
 132      0000
 133 00bb 4C8D6306 		lea	r12, [rbx+6]	# ivtmp.118,
 134 00bf C4C17B2A 		vcvtsi2sd	xmm0, xmm0, r11d	# D.33197, D.33199
 134      C3
 135 00c4 E8000000 		call	sin	#
 135      00
 136              	.LVL13:
 137 00c9 418D4424 		lea	eax, [r12+1]	# D.33199,
 137      01
 138              	.LVL14:
 139 00ce C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 139      04E50000 
 139      0000
 140 00d8 4C8D6307 		lea	r12, [rbx+7]	# ivtmp.118,
 141 00dc 4883C308 		add	rbx, 8	# ivtmp.118,
 142 00e0 C5FB2AC0 		vcvtsi2sd	xmm0, xmm0, eax	# D.33197, D.33199
 143 00e4 E8000000 		call	sin	#
 143      00
 144              	.LVL15:
 145 00e9 C4A17B11 		vmovsd	QWORD PTR a[0+r12*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 145      04E50000 
 145      0000
 146 00f3 4183C401 		add	r12d, 1	# D.33199,
 147              	.LVL16:
 148 00f7 C4C17B2A 		vcvtsi2sd	xmm0, xmm0, r12d	# D.33197, D.33199
 148      C4
 149 00fc E8000000 		call	sin	#
 149      00
 150              	.LVL17:
 151              	.L4:
 152 0101 C5FB1104 		vmovsd	QWORD PTR a[0+rbx*8], xmm0	# MEM[symbol: a, index: ivtmp.118_56, step: 8, offset: 0B], D.33
 152      DD000000 
 152      00
 153 010a 4C8D6301 		lea	r12, [rbx+1]	# tmp127,
 154 010e 8D5301   		lea	edx, [rbx+1]	# D.33199,
 155              	.LVL18:
  12:tv.cpp        ****   for (int x=0;x<N;++x) {
 156              		.loc 1 12 0
 157 0111 4981FC02 		cmp	r12, 1026	# tmp127,
 157      040000
 158 0118 0F8512FF 		jne	.L2	#,
 158      FFFF
 159 011e C5FD280D 		vmovapd	ymm1, YMMWORD PTR .LC1[rip]	# tmp122,
 159      00000000 
 160 0126 B9002800 		mov	ecx, 10240	# D.33200,
 160      00
 161 012b C5FD2805 		vmovapd	ymm0, YMMWORD PTR .LC2[rip]	# tmp123,
 161      00000000 
 162              		.p2align 4,,10
 163 0133 0F1F4400 		.p2align 3
 163      00
 164              	.L3:
 165              	.LVL19:
 166 0138 BE000000 		mov	esi, OFFSET FLAT:a	# ivtmp.105,
 166      00
 167              	.LVL20:
 168              	.L7:
 169              	.LBE24:
 170              	.LBB25:
 171              	.LBB26:
  14:tv.cpp        ****   }
  15:tv.cpp        ****   
  16:tv.cpp        **** 
  17:tv.cpp        ****   for (int t=0;t<T_MAX;++t) {
  18:tv.cpp        ****     for (int x=0;x<N-2;++x) {
  19:tv.cpp        ****       a[x]=0.16*a[x]+0.68*a[x+1]+0.16*a[x+2];
 172              		.loc 1 19 0 discriminator 2
 173 013d C5FD105E 		vmovupd	ymm3, YMMWORD PTR [rsi+8]	# vect_var_.84, MEM[base: _10, offset: 8B]
 173      08
 174 0142 4881C600 		add	rsi, 256	# ivtmp.105,
 174      010000
 175 0149 C5FD10B6 		vmovupd	ymm6, YMMWORD PTR [rsi-216]	# vect_var_.84, MEM[base: _10, offset: 8B]
 175      28FFFFFF 
 176 0151 C57D108E 		vmovupd	ymm9, YMMWORD PTR [rsi-184]	# vect_var_.84, MEM[base: _10, offset: 8B]
 176      48FFFFFF 
 177 0159 C5E559E1 		vmulpd	ymm4, ymm3, ymm1	# vect_var_.85, vect_var_.84, tmp122
 178 015d C4E2FDB8 		vfmadd231pd	ymm4, ymm0, YMMWORD PTR [rsi-256]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 178      A600FFFF 
 178      FF
 179 0166 C5FD1096 		vmovupd	ymm2, YMMWORD PTR [rsi-240]	# vect_var_.95, MEM[base: _10, offset: 16B]
 179      10FFFFFF 
 180 016e C5CD59F9 		vmulpd	ymm7, ymm6, ymm1	# vect_var_.85, vect_var_.84, tmp122
 181 0172 C4E2FDB8 		vfmadd231pd	ymm7, ymm0, YMMWORD PTR [rsi-224]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 181      BE20FFFF 
 181      FF
 182 017b C5FD10AE 		vmovupd	ymm5, YMMWORD PTR [rsi-208]	# vect_var_.95, MEM[base: _10, offset: 16B]
 182      30FFFFFF 
 183 0183 C53559D1 		vmulpd	ymm10, ymm9, ymm1	# vect_var_.85, vect_var_.84, tmp122
 184 0187 C462FDB8 		vfmadd231pd	ymm10, ymm0, YMMWORD PTR [rsi-192]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 184      9640FFFF 
 184      FF
 185 0190 C57D1086 		vmovupd	ymm8, YMMWORD PTR [rsi-176]	# vect_var_.95, MEM[base: _10, offset: 16B]
 185      50FFFFFF 
 186 0198 C4E2DD98 		vfmadd132pd	ymm2, ymm4, ymm0	# vect_var_.95, vect_var_.87, tmp123
 186      D0
 187 019d C5FD2996 		vmovapd	YMMWORD PTR [rsi-256], ymm2	# MEM[base: _10, offset: 0B], vect_var_.95
 187      00FFFFFF 
 188 01a5 C57D109E 		vmovupd	ymm11, YMMWORD PTR [rsi-144]	# vect_var_.95, MEM[base: _10, offset: 16B]
 188      70FFFFFF 
 189 01ad C4E2C598 		vfmadd132pd	ymm5, ymm7, ymm0	# vect_var_.95, vect_var_.87, tmp123
 189      E8
 190 01b2 C5FD29AE 		vmovapd	YMMWORD PTR [rsi-224], ymm5	# MEM[base: _10, offset: 0B], vect_var_.95
 190      20FFFFFF 
 191 01ba C57D10A6 		vmovupd	ymm12, YMMWORD PTR [rsi-152]	# vect_var_.84, MEM[base: _10, offset: 8B]
 191      68FFFFFF 
 192 01c2 C462AD98 		vfmadd132pd	ymm8, ymm10, ymm0	# vect_var_.95, vect_var_.87, tmp123
 192      C0
 193 01c7 C57D2986 		vmovapd	YMMWORD PTR [rsi-192], ymm8	# MEM[base: _10, offset: 0B], vect_var_.95
 193      40FFFFFF 
 194 01cf C57D1076 		vmovupd	ymm14, YMMWORD PTR [rsi-112]	# vect_var_.95, MEM[base: _10, offset: 16B]
 194      90
 195 01d4 C57D107E 		vmovupd	ymm15, YMMWORD PTR [rsi-120]	# vect_var_.84, MEM[base: _10, offset: 8B]
 195      88
 196 01d9 C51D59E9 		vmulpd	ymm13, ymm12, ymm1	# vect_var_.85, vect_var_.84, tmp122
 197 01dd C462FDB8 		vfmadd231pd	ymm13, ymm0, YMMWORD PTR [rsi-160]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 197      AE60FFFF 
 197      FF
 198 01e6 C5FD1066 		vmovupd	ymm4, YMMWORD PTR [rsi-80]	# vect_var_.95, MEM[base: _10, offset: 16B]
 198      B0
 199 01eb C4629598 		vfmadd132pd	ymm11, ymm13, ymm0	# vect_var_.95, vect_var_.87, tmp123
 199      D8
 200 01f0 C57D299E 		vmovapd	YMMWORD PTR [rsi-160], ymm11	# MEM[base: _10, offset: 0B], vect_var_.95
 200      60FFFFFF 
 201 01f8 C5FD105E 		vmovupd	ymm3, YMMWORD PTR [rsi-88]	# vect_var_.84, MEM[base: _10, offset: 8B]
 201      A8
 202 01fd C58559D1 		vmulpd	ymm2, ymm15, ymm1	# vect_var_.85, vect_var_.84, tmp122
 203 0201 C4E2FDB8 		vfmadd231pd	ymm2, ymm0, YMMWORD PTR [rsi-128]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 203      5680
 204 0207 C5FD1076 		vmovupd	ymm6, YMMWORD PTR [rsi-48]	# vect_var_.95, MEM[base: _10, offset: 16B]
 204      D0
 205 020c C462ED98 		vfmadd132pd	ymm14, ymm2, ymm0	# vect_var_.95, vect_var_.87, tmp123
 205      F0
 206 0211 C57D2976 		vmovapd	YMMWORD PTR [rsi-128], ymm14	# MEM[base: _10, offset: 0B], vect_var_.95
 206      80
 207 0216 C5FD107E 		vmovupd	ymm7, YMMWORD PTR [rsi-56]	# vect_var_.84, MEM[base: _10, offset: 8B]
 207      C8
 208 021b C5E559E9 		vmulpd	ymm5, ymm3, ymm1	# vect_var_.85, vect_var_.84, tmp122
 209 021f C4E2FDB8 		vfmadd231pd	ymm5, ymm0, YMMWORD PTR [rsi-96]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 209      6EA0
 210 0225 C57D104E 		vmovupd	ymm9, YMMWORD PTR [rsi-16]	# vect_var_.95, MEM[base: _10, offset: 16B]
 210      F0
 211 022a C4E2D598 		vfmadd132pd	ymm4, ymm5, ymm0	# vect_var_.95, vect_var_.87, tmp123
 211      E0
 212 022f C5FD2966 		vmovapd	YMMWORD PTR [rsi-96], ymm4	# MEM[base: _10, offset: 0B], vect_var_.95
 212      A0
 213 0234 C57D1056 		vmovupd	ymm10, YMMWORD PTR [rsi-24]	# vect_var_.84, MEM[base: _10, offset: 8B]
 213      E8
 214 0239 C54559C1 		vmulpd	ymm8, ymm7, ymm1	# vect_var_.85, vect_var_.84, tmp122
 215 023d C462FDB8 		vfmadd231pd	ymm8, ymm0, YMMWORD PTR [rsi-64]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 215      46C0
 216 0243 C4E2BD98 		vfmadd132pd	ymm6, ymm8, ymm0	# vect_var_.95, vect_var_.87, tmp123
 216      F0
 217 0248 C5FD2976 		vmovapd	YMMWORD PTR [rsi-64], ymm6	# MEM[base: _10, offset: 0B], vect_var_.95
 217      C0
 218 024d C52D59D9 		vmulpd	ymm11, ymm10, ymm1	# vect_var_.85, vect_var_.84, tmp122
 219 0251 C462FDB8 		vfmadd231pd	ymm11, ymm0, YMMWORD PTR [rsi-32]	# vect_var_.87, tmp123, MEM[base: _10, offset: 0B]
 219      5EE0
 220 0257 C462A598 		vfmadd132pd	ymm9, ymm11, ymm0	# vect_var_.95, vect_var_.87, tmp123
 220      C8
 221 025c C57D294E 		vmovapd	YMMWORD PTR [rsi-32], ymm9	# MEM[base: _10, offset: 0B], vect_var_.95
 221      E0
 222 0261 4881FE00 		cmp	rsi, OFFSET FLAT:a+8192	# ivtmp.105,
 222      000000
 223 0268 0F85CFFE 		jne	.L7	#,
 223      FFFF
 224              	.LVL21:
 225              	.LBE26:
  17:tv.cpp        ****   for (int t=0;t<T_MAX;++t) {
 226              		.loc 1 17 0
 227 026e 83E901   		sub	ecx, 1	# D.33200,
 228 0271 0F85C1FE 		jne	.L3	#,
 228      FFFF
 229              	.LVL22:
 230              	.LBE25:
 231              	.LBB27:
 232              	.LBB28:
 233              		.file 2 "/usr/include/c++/4.8.2/ostream"
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
 114:/usr/include/c++/4.8.2/ostream ****       }
 115:/usr/include/c++/4.8.2/ostream **** 
 116:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 117:/usr/include/c++/4.8.2/ostream ****       operator<<(__ios_type& (*__pf)(__ios_type&))
 118:/usr/include/c++/4.8.2/ostream ****       {
 119:/usr/include/c++/4.8.2/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 120:/usr/include/c++/4.8.2/ostream **** 	// DR 60. What is a formatted input function?
 121:/usr/include/c++/4.8.2/ostream **** 	// The inserters for manipulators are *not* formatted output functions.
 122:/usr/include/c++/4.8.2/ostream **** 	__pf(*this);
 123:/usr/include/c++/4.8.2/ostream **** 	return *this;
 124:/usr/include/c++/4.8.2/ostream ****       }
 125:/usr/include/c++/4.8.2/ostream **** 
 126:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 127:/usr/include/c++/4.8.2/ostream ****       operator<<(ios_base& (*__pf) (ios_base&))
 128:/usr/include/c++/4.8.2/ostream ****       {
 129:/usr/include/c++/4.8.2/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 130:/usr/include/c++/4.8.2/ostream **** 	// DR 60. What is a formatted input function?
 131:/usr/include/c++/4.8.2/ostream **** 	// The inserters for manipulators are *not* formatted output functions.
 132:/usr/include/c++/4.8.2/ostream **** 	__pf(*this);
 133:/usr/include/c++/4.8.2/ostream **** 	return *this;
 134:/usr/include/c++/4.8.2/ostream ****       }
 135:/usr/include/c++/4.8.2/ostream ****       //@}
 136:/usr/include/c++/4.8.2/ostream **** 
 137:/usr/include/c++/4.8.2/ostream ****       //@{
 138:/usr/include/c++/4.8.2/ostream ****       /**
 139:/usr/include/c++/4.8.2/ostream ****        *  @name Inserters
 140:/usr/include/c++/4.8.2/ostream ****        *
 141:/usr/include/c++/4.8.2/ostream ****        *  All the @c operator<< functions (aka <em>formatted output
 142:/usr/include/c++/4.8.2/ostream ****        *  functions</em>) have some common behavior.  Each starts by
 143:/usr/include/c++/4.8.2/ostream ****        *  constructing a temporary object of type std::basic_ostream::sentry.
 144:/usr/include/c++/4.8.2/ostream ****        *  This can have several effects, concluding with the setting of a
 145:/usr/include/c++/4.8.2/ostream ****        *  status flag; see the sentry documentation for more.
 146:/usr/include/c++/4.8.2/ostream ****        *
 147:/usr/include/c++/4.8.2/ostream ****        *  If the sentry status is good, the function tries to generate
 148:/usr/include/c++/4.8.2/ostream ****        *  whatever data is appropriate for the type of the argument.
 149:/usr/include/c++/4.8.2/ostream ****        *
 150:/usr/include/c++/4.8.2/ostream ****        *  If an exception is thrown during insertion, ios_base::badbit
 151:/usr/include/c++/4.8.2/ostream ****        *  will be turned on in the stream's error state without causing an
 152:/usr/include/c++/4.8.2/ostream ****        *  ios_base::failure to be thrown.  The original exception will then
 153:/usr/include/c++/4.8.2/ostream ****        *  be rethrown.
 154:/usr/include/c++/4.8.2/ostream ****       */
 155:/usr/include/c++/4.8.2/ostream **** 
 156:/usr/include/c++/4.8.2/ostream ****       //@{
 157:/usr/include/c++/4.8.2/ostream ****       /**
 158:/usr/include/c++/4.8.2/ostream ****        *  @brief Integer arithmetic inserters
 159:/usr/include/c++/4.8.2/ostream ****        *  @param  __n A variable of builtin integral type.
 160:/usr/include/c++/4.8.2/ostream ****        *  @return  @c *this if successful
 161:/usr/include/c++/4.8.2/ostream ****        *
 162:/usr/include/c++/4.8.2/ostream ****        *  These functions use the stream's current locale (specifically, the
 163:/usr/include/c++/4.8.2/ostream ****        *  @c num_get facet) to perform numeric formatting.
 164:/usr/include/c++/4.8.2/ostream ****       */
 165:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 166:/usr/include/c++/4.8.2/ostream ****       operator<<(long __n)
 167:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__n); }
 168:/usr/include/c++/4.8.2/ostream **** 
 169:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 170:/usr/include/c++/4.8.2/ostream ****       operator<<(unsigned long __n)
 171:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__n); }
 172:/usr/include/c++/4.8.2/ostream **** 
 173:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 174:/usr/include/c++/4.8.2/ostream ****       operator<<(bool __n)
 175:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__n); }
 176:/usr/include/c++/4.8.2/ostream **** 
 177:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 178:/usr/include/c++/4.8.2/ostream ****       operator<<(short __n);
 179:/usr/include/c++/4.8.2/ostream **** 
 180:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 181:/usr/include/c++/4.8.2/ostream ****       operator<<(unsigned short __n)
 182:/usr/include/c++/4.8.2/ostream ****       {
 183:/usr/include/c++/4.8.2/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 184:/usr/include/c++/4.8.2/ostream **** 	// 117. basic_ostream uses nonexistent num_put member functions.
 185:/usr/include/c++/4.8.2/ostream **** 	return _M_insert(static_cast<unsigned long>(__n));
 186:/usr/include/c++/4.8.2/ostream ****       }
 187:/usr/include/c++/4.8.2/ostream **** 
 188:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 189:/usr/include/c++/4.8.2/ostream ****       operator<<(int __n);
 190:/usr/include/c++/4.8.2/ostream **** 
 191:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 192:/usr/include/c++/4.8.2/ostream ****       operator<<(unsigned int __n)
 193:/usr/include/c++/4.8.2/ostream ****       {
 194:/usr/include/c++/4.8.2/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 195:/usr/include/c++/4.8.2/ostream **** 	// 117. basic_ostream uses nonexistent num_put member functions.
 196:/usr/include/c++/4.8.2/ostream **** 	return _M_insert(static_cast<unsigned long>(__n));
 197:/usr/include/c++/4.8.2/ostream ****       }
 198:/usr/include/c++/4.8.2/ostream **** 
 199:/usr/include/c++/4.8.2/ostream **** #ifdef _GLIBCXX_USE_LONG_LONG
 200:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 201:/usr/include/c++/4.8.2/ostream ****       operator<<(long long __n)
 202:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__n); }
 203:/usr/include/c++/4.8.2/ostream **** 
 204:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 205:/usr/include/c++/4.8.2/ostream ****       operator<<(unsigned long long __n)
 206:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__n); }
 207:/usr/include/c++/4.8.2/ostream **** #endif
 208:/usr/include/c++/4.8.2/ostream ****       //@}
 209:/usr/include/c++/4.8.2/ostream **** 
 210:/usr/include/c++/4.8.2/ostream ****       //@{
 211:/usr/include/c++/4.8.2/ostream ****       /**
 212:/usr/include/c++/4.8.2/ostream ****        *  @brief  Floating point arithmetic inserters
 213:/usr/include/c++/4.8.2/ostream ****        *  @param  __f A variable of builtin floating point type.
 214:/usr/include/c++/4.8.2/ostream ****        *  @return  @c *this if successful
 215:/usr/include/c++/4.8.2/ostream ****        *
 216:/usr/include/c++/4.8.2/ostream ****        *  These functions use the stream's current locale (specifically, the
 217:/usr/include/c++/4.8.2/ostream ****        *  @c num_get facet) to perform numeric formatting.
 218:/usr/include/c++/4.8.2/ostream ****       */
 219:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 220:/usr/include/c++/4.8.2/ostream ****       operator<<(double __f)
 221:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__f); }
 234              		.loc 2 221 0
 235 0277 C5FB1005 		vmovsd	xmm0, QWORD PTR a[rip]	#, a
 235      00000000 
 236 027f BF000000 		mov	edi, OFFSET FLAT:_ZSt4cout	#,
 236      00
 237 0284 C5F877   		vzeroupper
 238 0287 E8000000 		call	_ZNSo9_M_insertIdEERSoT_	#
 238      00
 239              	.LVL23:
 240              	.LBE28:
 241              	.LBE27:
 242              	.LBB29:
 243              	.LBB30:
 113:/usr/include/c++/4.8.2/ostream **** 	return __pf(*this);
 244              		.loc 2 113 0
 245 028c 4889C7   		mov	rdi, rax	#, D.33198
 246 028f E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	#
 246      00
 247              	.LVL24:
 248              	.LBE30:
 249              	.LBE29:
 250              	.LBE31:
  20:tv.cpp        ****     }
  21:tv.cpp        ****   }
  22:tv.cpp        ****   cout << a[0] << endl;
  23:tv.cpp        **** }
 251              		.loc 1 23 0
 252 0294 488D65F0 		lea	rsp, [rbp-16]	#,
 253 0298 31C0     		xor	eax, eax	#
 254 029a 5B       		pop	rbx	#
 255 029b 415C     		pop	r12	#
 256 029d 5D       		pop	rbp	#
 257              		.cfi_def_cfa 7, 8
 258 029e C3       		ret
 259              		.cfi_endproc
 260              	.LFE1441:
 262 029f 90       		.p2align 4,,15
 264              	_GLOBAL__sub_I_a:
 265              	.LFB1596:
 266              		.loc 1 23 0
 267              		.cfi_startproc
 268              	.LVL25:
 269 02a0 4883EC08 		sub	rsp, 8	#,
 270              		.cfi_def_cfa_offset 16
 271              	.LBB34:
 272              	.LBB35:
 273              		.file 3 "/usr/include/c++/4.8.2/iostream"
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
 274              		.loc 3 74 0
 275 02a4 BF000000 		mov	edi, OFFSET FLAT:_ZStL8__ioinit	#,
 275      00
 276 02a9 E8000000 		call	_ZNSt8ios_base4InitC1Ev	#
 276      00
 277              	.LVL26:
 278 02ae BA000000 		mov	edx, OFFSET FLAT:__dso_handle	#,
 278      00
 279 02b3 BE000000 		mov	esi, OFFSET FLAT:_ZStL8__ioinit	#,
 279      00
 280 02b8 BF000000 		mov	edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev	#,
 280      00
 281              	.LBE35:
 282              	.LBE34:
 283              		.loc 1 23 0
 284 02bd 4883C408 		add	rsp, 8	#,
 285              		.cfi_def_cfa_offset 8
 286              	.LBB37:
 287              	.LBB36:
 288              		.loc 3 74 0
 289 02c1 E9000000 		jmp	__cxa_atexit	#
 289      00
 290              	.LVL27:
 291              	.LBE36:
 292              	.LBE37:
 293              		.cfi_endproc
 294              	.LFE1596:
 296              		.section	.init_array,"aw"
 297              		.align 8
 298 0000 00000000 		.quad	_GLOBAL__sub_I_a
 298      00000000 
 299              		.globl	a
 300              		.bss
 301              		.align 32
 304              	a:
 305 0000 00000000 		.zero	8208
 305      00000000 
 305      00000000 
 305      00000000 
 305      00000000 
 306              		.local	_ZStL8__ioinit
 307              		.comm	_ZStL8__ioinit,1,1
 308              		.section	.rodata.cst32,"aM",@progbits,32
 309              		.align 32
 310              	.LC1:
 311 0000 C3F5285C 		.long	1546188227
 312 0004 8FC2E53F 		.long	1072022159
 313 0008 C3F5285C 		.long	1546188227
 314 000c 8FC2E53F 		.long	1072022159
 315 0010 C3F5285C 		.long	1546188227
 316 0014 8FC2E53F 		.long	1072022159
 317 0018 C3F5285C 		.long	1546188227
 318 001c 8FC2E53F 		.long	1072022159
 319              		.align 32
 320              	.LC2:
 321 0020 7B14AE47 		.long	1202590843
 322 0024 E17AC43F 		.long	1069841121
 323 0028 7B14AE47 		.long	1202590843
 324 002c E17AC43F 		.long	1069841121
 325 0030 7B14AE47 		.long	1202590843
 326 0034 E17AC43F 		.long	1069841121
 327 0038 7B14AE47 		.long	1202590843
 328 003c E17AC43F 		.long	1069841121
 329              		.text
 330              	.Letext0:
 331              		.file 4 "/usr/include/c++/4.8.2/cmath"
 332              		.file 5 "/usr/include/c++/4.8.2/cwchar"
 333              		.file 6 "/usr/include/c++/4.8.2/bits/exception_ptr.h"
 334              		.file 7 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/c++config.h"
 335              		.file 8 "/usr/include/c++/4.8.2/bits/char_traits.h"
 336              		.file 9 "/usr/include/c++/4.8.2/cstdint"
 337              		.file 10 "/usr/include/c++/4.8.2/clocale"
 338              		.file 11 "/usr/include/c++/4.8.2/cstdlib"
 339              		.file 12 "/usr/include/c++/4.8.2/cstdio"
 340              		.file 13 "/usr/include/c++/4.8.2/bits/ios_base.h"
 341              		.file 14 "/usr/include/c++/4.8.2/cwctype"
 342              		.file 15 "/usr/include/c++/4.8.2/bits/ostream.tcc"
 343              		.file 16 "/usr/include/c++/4.8.2/bits/basic_ios.h"
 344              		.file 17 "/usr/include/c++/4.8.2/iosfwd"
 345              		.file 18 "/usr/include/c++/4.8.2/bits/cpp_type_traits.h"
 346              		.file 19 "/usr/include/c++/4.8.2/ext/new_allocator.h"
 347              		.file 20 "/usr/include/c++/4.8.2/ext/numeric_traits.h"
 348              		.file 21 "/usr/include/c++/4.8.2/ext/type_traits.h"
 349              		.file 22 "/usr/include/bits/mathdef.h"
 350              		.file 23 "/usr/include/stdio.h"
 351              		.file 24 "/usr/include/libio.h"
 352              		.file 25 "<\347\265\204\343\201\277\350\276\274\343\201\277>"
 353              		.file 26 "/usr/lib/gcc/x86_64-redhat-linux/4.8.3/include/stddef.h"
 354              		.file 27 "/usr/include/wchar.h"
 355              		.file 28 "/usr/include/time.h"
 356              		.file 29 "/usr/include/c++/4.8.2/debug/debug.h"
 357              		.file 30 "/usr/include/stdint.h"
 358              		.file 31 "/usr/include/locale.h"
 359              		.file 32 "/usr/include/bits/types.h"
 360              		.file 33 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/atomic_word.h"
 361              		.file 34 "/usr/include/stdlib.h"
 362              		.file 35 "/usr/include/bits/stdlib-float.h"
 363              		.file 36 "/usr/include/_G_config.h"
 364              		.file 37 "/usr/include/bits/stdio.h"
 365              		.file 38 "/usr/include/wctype.h"
 366              		.file 39 "/usr/include/c++/4.8.2/bits/stl_pair.h"

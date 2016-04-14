	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L30000-11 (Jul 16 2015 18:19:08) --preinclude //opt/FJSVtclang/GM-1.2.0-19/bin/../lib/FCC.pre -D__FUJITSU -Dunix -Dsparc -D__sparc__ -D__unix -D__sparc -D__BUILTIN_VA_ARG_INCR -D_OPENMP=201107 -D__PRAGMA_REDEFINE_EXTNAME -D__FCC_VERSION=700 -D__HPC_ACE__ -D__ELF__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D_LP64 -D__LP64__ --K=omp -I/opt/FJSVtclang/GM-1.2.0-19/include/mpi/fujitsu -D__XOSDEVKIT_PATH__=/opt/FJSVXosDevkit/sparc64fx/target --K=ocl -D_REENTRANT -D__MT__ --lp --zmode=64 -I//opt/FJSVtclang/GM-1.2.0-19/bin/../include/c++/std -I//opt/FJSVtclang/GM-1.2.0-19/bin/../include/c++ -I//opt/FJSVtclang/GM-1.2.0-19/bin/../include -I/opt/FJSVXosDevkit/sparc64fx/target/usr/include --K=opt -D__sparcv9 -D__sparc_v9__ -D__arch64__ --exceptions test.c -- -ncmdname=FCCpx -zobe=cplus -zcfc=8fx -Kthreadsafe -Karray_private -Kdynamic_iteration -Keval -O3 -x- -Kdalign,ns,mfunc,lib,eval,rdconv,prefetch_conditional,fp_contract,fp_relaxed,ilfunc,fast_matmul,omitfp,parallel,loop_fusion,threadsafe -Kinstance=8 -Klib -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Kocl -Kopenmp,threadsafe -Kreduction -Ksimd=2 -O3 -KLP test.s $"
	.file	"test.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L30000-11 (Jul 16 2015 18:19:08) test.c _Z1fPA100_A100_dS1_S1_S1_S1_ $"
	.section	".text"
	.global	_Z1fPA100_A100_dS1_S1_S1_S1_
	.align	64
_Z1fPA100_A100_dS1_S1_S1_S1_:
.LLFB1:
.L20:
.LSSN1:

/*      7 */

.L21:
.LSSN2:

/*     17 */	sethi	%hi(660328),%g1
.LSSN3:

/*     48 */	sethi	%hi(580328),%g2
.LSSN4:

/*     17 */	or	%g1,872,%g1
.LSSN5:

/*     48 */	or	%g2,744,%g2
.LSSN6:

/*     17 */	ldd	[%o1+%g1],%f36
.LSSN7:

/*     48 */	ldd	[%o1+%g2],%f32
.LSSN8:

/*     74 */	sethi	%h44(.LR0),%g3
.LSSN9:

/*     77 */	sxar1
/*     77 */	sethi	%hi(740328),%xg0
.LSSN10:

/*     74 */	or	%g3,%m44(.LR0),%g3
.LSSN11:

/*     77 */	ldd	[%o0+%g1],%f48
.LSSN12:

/*     74 */	sxar1
/*     74 */	sethi	%hi(500328),%xg1

/*     74 */	sllx	%g3,12,%g3

/*     74 */	sxar1
/*     74 */	sethi	%hi(579528),%xg2

/*     74 */	ldd	[%o0+%g2],%f60

/*     74 */	or	%g3,%l44(.LR0),%g3

/*     74 */	sxar1
/*     74 */	sethi	%hi(580320),%xg3

/*     74 */	ldd	[%g3+40],%f44


/*     74 */	sxar2
/*     74 */	sethi	%hi(580336),%xg4
/*     74 */	sethi	%hi(581128),%xg5

.LSSN13:

/*     77 */	sxar2
/*     77 */	ldd	[%g3+64],%f66
/*     77 */	or	%xg0,1000,%xg0
.LSSN14:

/*     74 */	sxar1
/*     74 */	or	%xg1,616,%xg1
.LSSN15:

/*     48 */	fsubd	%f36,%f32,%f34
.LSSN16:

/*     77 */	faddd	%f36,%f36,%f38
.LSSN17:


/*     74 */	sxar2
/*     74 */	or	%xg2,968,%xg2
/*     74 */	or	%xg3,736,%xg3

/*     74 */	faddd	%f32,%f32,%f40
.LSSN18:

/*     77 */	fmuld	%f48,%f48,%f48
.LSSN19:


/*     74 */	sxar2
/*     74 */	or	%xg4,752,%xg4
/*     74 */	or	%xg5,520,%xg5
.LSSN20:

/*     77 */	sxar1
/*     77 */	ldd	[%o1+%xg0],%f62
.LSSN21:

/*     74 */	fmuld	%f60,%f60,%f60
.LSSN22:

/*     77 */	sethi	%hi(659528),%g4

/*     77 */	sethi	%hi(660320),%g5
.LSSN23:


/*     74 */	sxar2
/*     74 */	ldd	[%o1+%xg1],%f70
/*     74 */	ldd	[%o1+%xg2],%f68
.LSSN24:

/*     77 */	sethi	%hi(660336),%o2

/*     77 */	sethi	%hi(661128),%o5

/*     77 */	fmuld	%f44,%f36,%f42
.LSSN25:

/*     74 */	sxar1
/*     74 */	ldd	[%o1+%xg3],%f74
.LSSN26:

/*     77 */	or	%g4,72,%g4

/*     77 */	or	%g5,864,%g5
.LSSN27:


/*     74 */	sxar2
/*     74 */	ldd	[%o1+%xg4],%f72
/*     74 */	ldd	[%o1+%xg5],%f76
.LSSN28:

/*     77 */	or	%o2,880,%o2

/*     77 */	or	%o5,648,%o5
.LSSN29:

/*     74 */	fmuld	%f44,%f32,%f46

/*     74 */	fsubd	%f34,%f32,%f58
.LSSN30:

/*     77 */	ldd	[%o1+%g4],%f52

/*     77 */	sxar1
/*     77 */	sethi	%hi(3473936),%xg6

/*     77 */	faddd	%f36,%f34,%f34

/*     77 */	fsubd	%f62,%f38,%f62

/*     77 */	ldd	[%o1+%g5],%f50


/*     77 */	sxar2
/*     77 */	or	%xg6,528,%xg6
/*     77 */	fsubd	%f66,%f36,%f64
.LSSN31:

/*     74 */	sxar1
/*     74 */	faddd	%f70,%f68,%f70
.LSSN32:

/*     77 */	ldd	[%o1+%o2],%f56

/*     77 */	ldd	[%o1+%o5],%f54
.LSSN33:

.LSSN34:

/*     74 */	sxar2
/*     74 */	sethi	%hi(3393936),%xg7
/*     74 */	fsubd	%f66,%f32,%f66
.LSSN35:

.LSSN36:

/*     74 */	sxar2
/*     74 */	or	%xg7,400,%xg7
/*     74 */	ldd	[%g3+56],%f78
.LSSN37:

/*     77 */	fmuld	%f42,%f48,%f42
.LSSN38:


/*     74 */	sxar2
/*     74 */	faddd	%f74,%f72,%f74
/*     74 */	ldd	[%g3+8],%f80


/*     74 */	sxar2
/*     74 */	fsubd	%f76,%f40,%f76
/*     74 */	ldd	[%g3+72],%f82

/*     74 */	fsubd	%f58,%f40,%f58

/*     74 */	fmuld	%f46,%f60,%f46
.LSSN39:

/*     77 */	faddd	%f52,%f50,%f52

/*     77 */	faddd	%f38,%f34,%f38
.LSSN40:

/*    140 */	sxar1
/*    140 */	ldd	[%g3+48],%f118
.LSSN41:

/*     77 */	faddd	%f56,%f54,%f56
.LSSN42:

.LSSN43:

/*     77 */	sxar2
/*     77 */	ldd	[%g3],%f124
/*     77 */	fmsubd	%f78,%f64,%f42,%f64
.LSSN44:


/*     74 */	sxar2
/*     74 */	faddd	%f70,%f74,%f70
/*     74 */	faddd	%f76,%f58,%f76

/*     74 */	sxar1
/*     74 */	fmsubd	%f78,%f66,%f46,%f78
.LSSN45:

/*     77 */	fsubd	%f62,%f38,%f62

/*     77 */	faddd	%f52,%f56,%f52
.LSSN46:

/*     74 */	sxar1
/*     74 */	faddd	%f70,%f76,%f70
.LSSN47:

/*     77 */	faddd	%f52,%f62,%f52
.LSSN48:

.LSSN49:

/*     77 */	sxar2
/*     77 */	fmaddd	%f80,%f70,%f78,%f70
/*     77 */	fmaddd	%f80,%f52,%f64,%f80
.LSSN50:

.LSSN51:

/*     77 */	sxar2
/*     77 */	fmaddd	%f82,%f70,%f32,%f70
/*     77 */	fmaddd	%f82,%f80,%f36,%f80

.LSSN52:

/*     78 */	sxar2
/*     78 */	std	%f80,[%o3+%xg6]
/*     78 */	std	%f70,[%o3+%xg7]
.LSSN53:

.LSSN54:

/*    114 */	sxar2
/*    114 */	ldd	[%o0+%g1],%f88
/*    114 */	ldd	[%o0+%g2],%f84
.LSSN55:


/*    143 */	sxar2
/*    143 */	ldd	[%o0+%g4],%f100
/*    143 */	ldd	[%o0+%g5],%f98


/*    143 */	sxar2
/*    143 */	ldd	[%o0+%o2],%f104
/*    143 */	ldd	[%o0+%o5],%f102

.LSSN56:

/*    140 */	sxar2
/*    140 */	ldd	[%o0+%xg0],%f106
/*    140 */	ldd	[%o0+%xg1],%f110


/*    140 */	sxar2
/*    140 */	ldd	[%o0+%xg2],%f108
/*    140 */	ldd	[%o0+%xg3],%f114
.LSSN57:

.LSSN58:

/*    143 */	sxar2
/*    143 */	fsubd	%f88,%f84,%f86
/*    143 */	faddd	%f88,%f88,%f90
.LSSN59:


/*    140 */	sxar2
/*    140 */	ldd	[%o0+%xg4],%f112
/*    140 */	faddd	%f84,%f84,%f94

.LSSN60:

/*    143 */	sxar2
/*    143 */	ldd	[%o0+%xg5],%f116
/*    143 */	faddd	%f100,%f98,%f100
.LSSN61:

.LSSN62:

/*    143 */	sxar2
/*    143 */	fmuld	%f44,%f84,%f96
/*    143 */	ldd	[%o1+%g1],%f120


/*    143 */	sxar2
/*    143 */	faddd	%f104,%f102,%f104
/*    143 */	fmuld	%f44,%f88,%f44
.LSSN63:


/*    140 */	sxar2
/*    140 */	ldd	[%o1+%g2],%f122
/*    140 */	faddd	%f110,%f108,%f110

.LSSN64:

/*    143 */	sxar2
/*    143 */	faddd	%f114,%f112,%f114
/*    143 */	faddd	%f88,%f86,%f92
.LSSN65:

.LSSN66:

/*    143 */	sxar2
/*    143 */	fsubd	%f86,%f84,%f86
/*    143 */	fsubd	%f106,%f90,%f106
.LSSN67:

.LSSN68:

/*    143 */	sxar2
/*    143 */	fsubd	%f116,%f94,%f116
/*    143 */	faddd	%f100,%f104,%f100
.LSSN69:

.LSSN70:

/*    143 */	sxar2
/*    143 */	fmsubd	%f122,%f96,%f118,%f122
/*    143 */	fmsubd	%f120,%f44,%f118,%f120
.LSSN71:

.LSSN72:

/*    143 */	sxar2
/*    143 */	faddd	%f110,%f114,%f110
/*    143 */	faddd	%f90,%f92,%f92
.LSSN73:

.LSSN74:

/*    143 */	sxar2
/*    143 */	fsubd	%f86,%f94,%f86
/*    143 */	fsubd	%f106,%f92,%f106
.LSSN75:

.LSSN76:

/*    143 */	sxar2
/*    143 */	faddd	%f116,%f86,%f116
/*    143 */	faddd	%f100,%f106,%f100
.LSSN77:

.LSSN78:

/*    143 */	sxar2
/*    143 */	faddd	%f110,%f116,%f110
/*    143 */	fmuld	%f124,%f100,%f100
.LSSN79:

.LSSN80:

/*    143 */	sxar2
/*    143 */	fmuld	%f124,%f110,%f124
/*    143 */	fmaddd	%f88,%f120,%f100,%f120
.LSSN81:

.LSSN82:

/*    143 */	sxar2
/*    143 */	fmaddd	%f84,%f122,%f124,%f122
/*    143 */	fmaddd	%f82,%f120,%f88,%f120
.LSSN83:

.LSSN84:

/*    143 */	sxar2
/*    143 */	fmaddd	%f82,%f122,%f84,%f82
/*    143 */	std	%f120,[%o4+%xg6]
.LSSN85:

/*    144 */	sxar1
/*    144 */	std	%f82,[%o4+%xg7]
.LSSN86:

/*    145 */	retl
	nop
.LSSN87:


.L22:


.LLFE1:
.LSSN88:
	.size	_Z1fPA100_A100_dS1_S1_S1_S1_,.-_Z1fPA100_A100_dS1_S1_S1_S1_
	.type	_Z1fPA100_A100_dS1_S1_S1_S1_,#function
	.section	".rodata"
	.global	jpj..loop__Z1fPA100_A100_dS1_S1_S1_S1_
	.align	8
jpj..loop__Z1fPA100_A100_dS1_S1_S1_S1_:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.section	".rodata"
	.global	jvh.ssn__Z1fPA100_A100_dS1_S1_S1_S1_
	.align	8
jvh.ssn__Z1fPA100_A100_dS1_S1_S1_S1_:
	.xword	0
	.word	0
	.word	1408
	.xword	7,.LSSN1-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	17,.LSSN2-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	48,.LSSN3-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	17,.LSSN4-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	48,.LSSN5-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	17,.LSSN6-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	48,.LSSN7-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN8-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN9-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN10-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN11-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN12-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN13-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN14-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	48,.LSSN15-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN16-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN17-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN18-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN19-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN20-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN21-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN22-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN23-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN24-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN25-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN26-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN27-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN28-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN29-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN30-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN31-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN32-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	78,.LSSN33-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN34-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	78,.LSSN35-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN36-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN37-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN38-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN39-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN40-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN41-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN42-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN43-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN44-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN45-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN46-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN47-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN48-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN49-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	74,.LSSN50-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	77,.LSSN51-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	78,.LSSN52-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	91,.LSSN53-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	114,.LSSN54-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN55-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN56-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	114,.LSSN57-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN58-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN59-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN60-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN61-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN62-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN63-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN64-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN65-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN66-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN67-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN68-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN69-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN70-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN71-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN72-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN73-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN74-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN75-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN76-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN77-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN78-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN79-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN80-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN81-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN82-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	140,.LSSN83-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	143,.LSSN84-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	144,.LSSN85-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	145,.LSSN86-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	146,.LSSN87-_Z1fPA100_A100_dS1_S1_S1_S1_
	.xword	0,.LSSN88-_Z1fPA100_A100_dS1_S1_S1_S1_
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jvh.ssn__Z1fPA100_A100_dS1_S1_S1_S1_+1448
	.ascii "test.c\000"
	.section	".data"
	.align	16
.LS0:
	.align	4
	.word	1065353216
	.section	".rodata"
	.align	16
.LR0:
	.word	0X3F0FFB48,0XA5ACCD5
	.word	0X3F2E2584,0XF4C6E6DA
	.word	0X3DD0C47E,0X4F1FC318
	.word	0X3EB0C6F7,0XA0B5ED8D
	.word	0X3DEF9C67,0XD41E8097
	.word	0X3F523456,0X789ABCDF
	.word	0X3F123456,0X789ABCDF
	.word	0X3EE845C8,0XA0CE5129
	.word	0X3FF00000,0
	.word	0X40690000,0

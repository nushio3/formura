	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L30000-11 (Jul 16 2015 18:19:08) --preinclude //opt/FJSVtclang/GM-1.2.0-19/bin/../lib/FCC.pre -D__FUJITSU -Dunix -Dsparc -D__sparc__ -D__unix -D__sparc -D__BUILTIN_VA_ARG_INCR -D__PRAGMA_REDEFINE_EXTNAME -D__FCC_VERSION=700 -D__HPC_ACE__ -D__ELF__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D_LP64 -D__LP64__ -I/opt/FJSVtclang/GM-1.2.0-19/include/mpi/fujitsu -D__XOSDEVKIT_PATH__=/opt/FJSVXosDevkit/sparc64fx/target --K=noocl -D_REENTRANT -D__MT__ --lp --zmode=64 -I//opt/FJSVtclang/GM-1.2.0-19/bin/../include/c++/std -I//opt/FJSVtclang/GM-1.2.0-19/bin/../include/c++ -I//opt/FJSVtclang/GM-1.2.0-19/bin/../include -I/opt/FJSVXosDevkit/sparc64fx/target/usr/include --K=opt -D__sparcv9 -D__sparc_v9__ -D__arch64__ --exceptions test.c -- -ncmdname=FCCpx -zobe=cplus -zcfc=8fx -Kthreadsafe -O3 -x- -Kdalign,ns,mfunc,lib,eval,rdconv,prefetch_conditional,fp_contract,fp_relaxed,ilfunc,fast_matmul,omitfp -KLP test.s $"
	.file	"test.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L30000-11 (Jul 16 2015 18:19:08) test.c _Z1fPA100_A100_dS1_S1_ $"
	.section	".text"
	.global	_Z1fPA100_A100_dS1_S1_
	.align	64
_Z1fPA100_A100_dS1_S1_:
.LLFB1:
.L20:
.LSSN1:

/*      7 */

.L21:
.LSSN2:

/*     20 */	sethi	%hi(968888),%g1
.LSSN3:

/*     43 */	sethi	%hi(888888),%g2
.LSSN4:

/*     20 */	or	%g1,184,%g1
.LSSN5:

/*     43 */	or	%g2,56,%g2
.LSSN6:

/*     20 */	ldd	[%o1+%g1],%f36
.LSSN7:

/*     43 */	ldd	[%o1+%g2],%f32
.LSSN8:

/*     69 */	sethi	%hi(808888),%o4
.LSSN9:

/*     72 */	sethi	%hi(1048888),%o5
.LSSN10:


/*     69 */	sxar2
/*     69 */	sethi	%hi(888088),%xg0
/*     69 */	sethi	%hi(888880),%xg1


/*     69 */	sxar2
/*     69 */	ldd	[%o0+%g2],%f72
/*     69 */	sethi	%hi(888896),%xg2

.LSSN11:

/*     72 */	sxar2
/*     72 */	sethi	%hi(889688),%xg3
/*     72 */	ldd	[%o0+%g1],%f70
.LSSN12:

/*     69 */	or	%o4,952,%o4
.LSSN13:

/*     72 */	or	%o5,312,%o5
.LSSN14:


/*     69 */	sxar2
/*     69 */	or	%xg0,280,%xg0
/*     69 */	or	%xg1,48,%xg1

/*     69 */	ldd	[%o1+%o4],%f52


/*     69 */	sxar2
/*     69 */	or	%xg2,64,%xg2
/*     69 */	or	%xg3,856,%xg3
.LSSN15:

/*     43 */	fsubd	%f36,%f32,%f34
.LSSN16:

/*     72 */	faddd	%f36,%f36,%f38

/*     72 */	sethi	%hi(968088),%g3

/*     72 */	ldd	[%o1+%o5],%f60
.LSSN17:

/*     69 */	sxar1
/*     69 */	sethi	%h44(.LR0),%xg4

/*     69 */	faddd	%f32,%f32,%f40
.LSSN18:

/*     72 */	sethi	%hi(968880),%g4
.LSSN19:


/*     69 */	sxar2
/*     69 */	or	%xg4,%m44(.LR0),%xg4
/*     69 */	ldd	[%o1+%xg0],%f50

/*     69 */	sxar1
/*     69 */	ldd	[%o1+%xg1],%f58
.LSSN20:

/*     72 */	sethi	%hi(968896),%g5

/*     72 */	sethi	%hi(969688),%o3
.LSSN21:


/*     69 */	sxar2
/*     69 */	ldd	[%o1+%xg2],%f56
/*     69 */	ldd	[%o1+%xg3],%f62
.LSSN22:

/*     72 */	or	%g3,408,%g3
.LSSN23:

/*     69 */	sxar1
/*     69 */	sllx	%xg4,12,%xg4
.LSSN24:

/*     72 */	or	%g4,176,%g4

/*     72 */	ldd	[%o1+%g3],%f44

/*     72 */	or	%g5,192,%g5

/*     72 */	or	%o3,984,%o3
.LSSN25:

/*     69 */	sxar1
/*     69 */	or	%xg4,%l44(.LR0),%xg4

/*     69 */	fsubd	%f34,%f32,%f54
.LSSN26:

/*     72 */	faddd	%f36,%f34,%f34

/*     72 */	ldd	[%o1+%g4],%f42

/*     72 */	sxar1
/*     72 */	sethi	%hi(888080),%xg5
.LSSN27:

/*     69 */	faddd	%f52,%f50,%f52
.LSSN28:

/*     72 */	fsubd	%f60,%f38,%f60

/*     72 */	ldd	[%o1+%g5],%f48

/*     72 */	sxar1
/*     72 */	or	%xg5,272,%xg5
.LSSN29:

/*     69 */	faddd	%f58,%f56,%f58

/*     69 */	fsubd	%f62,%f40,%f62
.LSSN30:

/*     72 */	ldd	[%o1+%o3],%f46
.LSSN31:

.LSSN32:

/*     69 */	sxar2
/*     69 */	sethi	%hi(808080),%xg6
/*     69 */	ldd	[%xg4+32],%f66
.LSSN33:

.LSSN34:

/*     69 */	sxar2
/*     69 */	or	%xg6,144,%xg6
/*     69 */	ldd	[%xg4+24],%f68


/*     69 */	sxar2
/*     69 */	ldd	[%xg4],%f74
/*     69 */	ldd	[%xg4+40],%f76
.LSSN35:

/*     72 */	faddd	%f44,%f42,%f44
.LSSN36:

/*     69 */	fsubd	%f54,%f40,%f54
.LSSN37:

/*     72 */	faddd	%f38,%f34,%f38

/*     72 */	faddd	%f48,%f46,%f48

.LSSN38:

/*     69 */	sxar2
/*     69 */	fmuld	%f66,%f36,%f64
/*     69 */	fmuld	%f66,%f32,%f66

/*     69 */	faddd	%f52,%f58,%f52

/*     69 */	faddd	%f62,%f54,%f62
.LSSN39:

/*     72 */	fsubd	%f60,%f38,%f60

/*     72 */	faddd	%f44,%f48,%f44

.LSSN40:

/*     69 */	sxar2
/*     69 */	fmsubd	%f70,%f64,%f68,%f70
/*     69 */	fmsubd	%f72,%f66,%f68,%f72

/*     69 */	faddd	%f52,%f62,%f52
.LSSN41:

/*     72 */	faddd	%f44,%f60,%f44
.LSSN42:

.LSSN43:

/*     72 */	sxar2
/*     72 */	fmuld	%f74,%f52,%f52
/*     72 */	fmuld	%f74,%f44,%f74
.LSSN44:

.LSSN45:

/*     72 */	sxar2
/*     72 */	fmaddd	%f32,%f72,%f52,%f72
/*     72 */	fmaddd	%f36,%f70,%f74,%f70
.LSSN46:

.LSSN47:

/*     72 */	sxar2
/*     72 */	fmaddd	%f76,%f72,%f32,%f72
/*     72 */	fmaddd	%f76,%f70,%f36,%f76

.LSSN48:

/*     73 */	sxar2
/*     73 */	std	%f76,[%o2+%xg5]
/*     73 */	std	%f72,[%o2+%xg6]

/*     73 */	retl
	nop
.LSSN49:


.L22:


.LLFE1:
.LSSN50:
	.size	_Z1fPA100_A100_dS1_S1_,.-_Z1fPA100_A100_dS1_S1_
	.type	_Z1fPA100_A100_dS1_S1_,#function
	.section	".rodata"
	.global	jpj..loop__Z1fPA100_A100_dS1_S1_
	.align	8
jpj..loop__Z1fPA100_A100_dS1_S1_:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.section	".rodata"
	.global	jvh.ssn__Z1fPA100_A100_dS1_S1_
	.align	8
jvh.ssn__Z1fPA100_A100_dS1_S1_:
	.xword	0
	.word	0
	.word	800
	.xword	7,.LSSN1-_Z1fPA100_A100_dS1_S1_
	.xword	20,.LSSN2-_Z1fPA100_A100_dS1_S1_
	.xword	43,.LSSN3-_Z1fPA100_A100_dS1_S1_
	.xword	20,.LSSN4-_Z1fPA100_A100_dS1_S1_
	.xword	43,.LSSN5-_Z1fPA100_A100_dS1_S1_
	.xword	20,.LSSN6-_Z1fPA100_A100_dS1_S1_
	.xword	43,.LSSN7-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN8-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN9-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN10-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN11-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN12-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN13-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN14-_Z1fPA100_A100_dS1_S1_
	.xword	43,.LSSN15-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN16-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN17-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN18-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN19-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN20-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN21-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN22-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN23-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN24-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN25-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN26-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN27-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN28-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN29-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN30-_Z1fPA100_A100_dS1_S1_
	.xword	73,.LSSN31-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN32-_Z1fPA100_A100_dS1_S1_
	.xword	73,.LSSN33-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN34-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN35-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN36-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN37-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN38-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN39-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN40-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN41-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN42-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN43-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN44-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN45-_Z1fPA100_A100_dS1_S1_
	.xword	69,.LSSN46-_Z1fPA100_A100_dS1_S1_
	.xword	72,.LSSN47-_Z1fPA100_A100_dS1_S1_
	.xword	73,.LSSN48-_Z1fPA100_A100_dS1_S1_
	.xword	75,.LSSN49-_Z1fPA100_A100_dS1_S1_
	.xword	0,.LSSN50-_Z1fPA100_A100_dS1_S1_
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jvh.ssn__Z1fPA100_A100_dS1_S1_+840
	.ascii "test.c\000"
	.section	".data"
	.align	16
.LS0:
	.align	8
	.word	0X3FF00000,0
	.align	4
	.word	1065353216
	.section	".rodata"
	.align	16
.LR0:
	.word	0X3F0FFB48,0XA5ACCD5
	.word	0X3DD0C47E,0X4F1FC318
	.word	0X3EB0C6F7,0XA0B5ED8D
	.word	0X3F123456,0X789ABCDF
	.word	0X3F523456,0X789ABCDF
	.word	0X40690000,0

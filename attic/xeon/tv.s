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
  59              		.section	.text.unlikely,"ax",@progbits
  61              	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.6:
  62              	.LFB1691:
  63              		.file 1 "/usr/include/c++/4.8.2/ostream"
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
 222:/usr/include/c++/4.8.2/ostream **** 
 223:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 224:/usr/include/c++/4.8.2/ostream ****       operator<<(float __f)
 225:/usr/include/c++/4.8.2/ostream ****       {
 226:/usr/include/c++/4.8.2/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 227:/usr/include/c++/4.8.2/ostream **** 	// 117. basic_ostream uses nonexistent num_put member functions.
 228:/usr/include/c++/4.8.2/ostream **** 	return _M_insert(static_cast<double>(__f));
 229:/usr/include/c++/4.8.2/ostream ****       }
 230:/usr/include/c++/4.8.2/ostream **** 
 231:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 232:/usr/include/c++/4.8.2/ostream ****       operator<<(long double __f)
 233:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__f); }
 234:/usr/include/c++/4.8.2/ostream ****       //@}
 235:/usr/include/c++/4.8.2/ostream **** 
 236:/usr/include/c++/4.8.2/ostream ****       /**
 237:/usr/include/c++/4.8.2/ostream ****        *  @brief  Pointer arithmetic inserters
 238:/usr/include/c++/4.8.2/ostream ****        *  @param  __p A variable of pointer type.
 239:/usr/include/c++/4.8.2/ostream ****        *  @return  @c *this if successful
 240:/usr/include/c++/4.8.2/ostream ****        *
 241:/usr/include/c++/4.8.2/ostream ****        *  These functions use the stream's current locale (specifically, the
 242:/usr/include/c++/4.8.2/ostream ****        *  @c num_get facet) to perform numeric formatting.
 243:/usr/include/c++/4.8.2/ostream ****       */
 244:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 245:/usr/include/c++/4.8.2/ostream ****       operator<<(const void* __p)
 246:/usr/include/c++/4.8.2/ostream ****       { return _M_insert(__p); }
 247:/usr/include/c++/4.8.2/ostream **** 
 248:/usr/include/c++/4.8.2/ostream ****       /**
 249:/usr/include/c++/4.8.2/ostream ****        *  @brief  Extracting from another streambuf.
 250:/usr/include/c++/4.8.2/ostream ****        *  @param  __sb  A pointer to a streambuf
 251:/usr/include/c++/4.8.2/ostream ****        *
 252:/usr/include/c++/4.8.2/ostream ****        *  This function behaves like one of the basic arithmetic extractors,
 253:/usr/include/c++/4.8.2/ostream ****        *  in that it also constructs a sentry object and has the same error
 254:/usr/include/c++/4.8.2/ostream ****        *  handling behavior.
 255:/usr/include/c++/4.8.2/ostream ****        *
 256:/usr/include/c++/4.8.2/ostream ****        *  If @p __sb is NULL, the stream will set failbit in its error state.
 257:/usr/include/c++/4.8.2/ostream ****        *
 258:/usr/include/c++/4.8.2/ostream ****        *  Characters are extracted from @p __sb and inserted into @c *this
 259:/usr/include/c++/4.8.2/ostream ****        *  until one of the following occurs:
 260:/usr/include/c++/4.8.2/ostream ****        *
 261:/usr/include/c++/4.8.2/ostream ****        *  - the input stream reaches end-of-file,
 262:/usr/include/c++/4.8.2/ostream ****        *  - insertion into the output sequence fails (in this case, the
 263:/usr/include/c++/4.8.2/ostream ****        *    character that would have been inserted is not extracted), or
 264:/usr/include/c++/4.8.2/ostream ****        *  - an exception occurs while getting a character from @p __sb, which
 265:/usr/include/c++/4.8.2/ostream ****        *    sets failbit in the error state
 266:/usr/include/c++/4.8.2/ostream ****        *
 267:/usr/include/c++/4.8.2/ostream ****        *  If the function inserts no characters, failbit is set.
 268:/usr/include/c++/4.8.2/ostream ****       */
 269:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 270:/usr/include/c++/4.8.2/ostream ****       operator<<(__streambuf_type* __sb);
 271:/usr/include/c++/4.8.2/ostream ****       //@}
 272:/usr/include/c++/4.8.2/ostream **** 
 273:/usr/include/c++/4.8.2/ostream ****       //@{
 274:/usr/include/c++/4.8.2/ostream ****       /**
 275:/usr/include/c++/4.8.2/ostream ****        *  @name Unformatted Output Functions
 276:/usr/include/c++/4.8.2/ostream ****        *
 277:/usr/include/c++/4.8.2/ostream ****        *  All the unformatted output functions have some common behavior.
 278:/usr/include/c++/4.8.2/ostream ****        *  Each starts by constructing a temporary object of type
 279:/usr/include/c++/4.8.2/ostream ****        *  std::basic_ostream::sentry.  This has several effects, concluding
 280:/usr/include/c++/4.8.2/ostream ****        *  with the setting of a status flag; see the sentry documentation
 281:/usr/include/c++/4.8.2/ostream ****        *  for more.
 282:/usr/include/c++/4.8.2/ostream ****        *
 283:/usr/include/c++/4.8.2/ostream ****        *  If the sentry status is good, the function tries to generate
 284:/usr/include/c++/4.8.2/ostream ****        *  whatever data is appropriate for the type of the argument.
 285:/usr/include/c++/4.8.2/ostream ****        *
 286:/usr/include/c++/4.8.2/ostream ****        *  If an exception is thrown during insertion, ios_base::badbit
 287:/usr/include/c++/4.8.2/ostream ****        *  will be turned on in the stream's error state.  If badbit is on in
 288:/usr/include/c++/4.8.2/ostream ****        *  the stream's exceptions mask, the exception will be rethrown
 289:/usr/include/c++/4.8.2/ostream ****        *  without completing its actions.
 290:/usr/include/c++/4.8.2/ostream ****       */
 291:/usr/include/c++/4.8.2/ostream **** 
 292:/usr/include/c++/4.8.2/ostream ****       /**
 293:/usr/include/c++/4.8.2/ostream ****        *  @brief  Simple insertion.
 294:/usr/include/c++/4.8.2/ostream ****        *  @param  __c  The character to insert.
 295:/usr/include/c++/4.8.2/ostream ****        *  @return  *this
 296:/usr/include/c++/4.8.2/ostream ****        *
 297:/usr/include/c++/4.8.2/ostream ****        *  Tries to insert @p __c.
 298:/usr/include/c++/4.8.2/ostream ****        *
 299:/usr/include/c++/4.8.2/ostream ****        *  @note  This function is not overloaded on signed char and
 300:/usr/include/c++/4.8.2/ostream ****        *         unsigned char.
 301:/usr/include/c++/4.8.2/ostream ****       */
 302:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 303:/usr/include/c++/4.8.2/ostream ****       put(char_type __c);
 304:/usr/include/c++/4.8.2/ostream **** 
 305:/usr/include/c++/4.8.2/ostream ****       /**
 306:/usr/include/c++/4.8.2/ostream ****        *  @brief  Core write functionality, without sentry.
 307:/usr/include/c++/4.8.2/ostream ****        *  @param  __s  The array to insert.
 308:/usr/include/c++/4.8.2/ostream ****        *  @param  __n  Maximum number of characters to insert.
 309:/usr/include/c++/4.8.2/ostream ****       */
 310:/usr/include/c++/4.8.2/ostream ****       void
 311:/usr/include/c++/4.8.2/ostream ****       _M_write(const char_type* __s, streamsize __n)
 312:/usr/include/c++/4.8.2/ostream ****       {
 313:/usr/include/c++/4.8.2/ostream **** 	const streamsize __put = this->rdbuf()->sputn(__s, __n);
 314:/usr/include/c++/4.8.2/ostream **** 	if (__put != __n)
 315:/usr/include/c++/4.8.2/ostream **** 	  this->setstate(ios_base::badbit);
 316:/usr/include/c++/4.8.2/ostream ****       }
 317:/usr/include/c++/4.8.2/ostream **** 
 318:/usr/include/c++/4.8.2/ostream ****       /**
 319:/usr/include/c++/4.8.2/ostream ****        *  @brief  Character string insertion.
 320:/usr/include/c++/4.8.2/ostream ****        *  @param  __s  The array to insert.
 321:/usr/include/c++/4.8.2/ostream ****        *  @param  __n  Maximum number of characters to insert.
 322:/usr/include/c++/4.8.2/ostream ****        *  @return  *this
 323:/usr/include/c++/4.8.2/ostream ****        *
 324:/usr/include/c++/4.8.2/ostream ****        *  Characters are copied from @p __s and inserted into the stream until
 325:/usr/include/c++/4.8.2/ostream ****        *  one of the following happens:
 326:/usr/include/c++/4.8.2/ostream ****        *
 327:/usr/include/c++/4.8.2/ostream ****        *  - @p __n characters are inserted
 328:/usr/include/c++/4.8.2/ostream ****        *  - inserting into the output sequence fails (in this case, badbit
 329:/usr/include/c++/4.8.2/ostream ****        *    will be set in the stream's error state)
 330:/usr/include/c++/4.8.2/ostream ****        *
 331:/usr/include/c++/4.8.2/ostream ****        *  @note  This function is not overloaded on signed char and
 332:/usr/include/c++/4.8.2/ostream ****        *         unsigned char.
 333:/usr/include/c++/4.8.2/ostream ****       */
 334:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 335:/usr/include/c++/4.8.2/ostream ****       write(const char_type* __s, streamsize __n);
 336:/usr/include/c++/4.8.2/ostream ****       //@}
 337:/usr/include/c++/4.8.2/ostream **** 
 338:/usr/include/c++/4.8.2/ostream ****       /**
 339:/usr/include/c++/4.8.2/ostream ****        *  @brief  Synchronizing the stream buffer.
 340:/usr/include/c++/4.8.2/ostream ****        *  @return  *this
 341:/usr/include/c++/4.8.2/ostream ****        *
 342:/usr/include/c++/4.8.2/ostream ****        *  If @c rdbuf() is a null pointer, changes nothing.
 343:/usr/include/c++/4.8.2/ostream ****        *
 344:/usr/include/c++/4.8.2/ostream ****        *  Otherwise, calls @c rdbuf()->pubsync(), and if that returns -1,
 345:/usr/include/c++/4.8.2/ostream ****        *  sets badbit.
 346:/usr/include/c++/4.8.2/ostream ****       */
 347:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 348:/usr/include/c++/4.8.2/ostream ****       flush();
 349:/usr/include/c++/4.8.2/ostream **** 
 350:/usr/include/c++/4.8.2/ostream ****       /**
 351:/usr/include/c++/4.8.2/ostream ****        *  @brief  Getting the current write position.
 352:/usr/include/c++/4.8.2/ostream ****        *  @return  A file position object.
 353:/usr/include/c++/4.8.2/ostream ****        *
 354:/usr/include/c++/4.8.2/ostream ****        *  If @c fail() is not false, returns @c pos_type(-1) to indicate
 355:/usr/include/c++/4.8.2/ostream ****        *  failure.  Otherwise returns @c rdbuf()->pubseekoff(0,cur,out).
 356:/usr/include/c++/4.8.2/ostream ****       */
 357:/usr/include/c++/4.8.2/ostream ****       pos_type
 358:/usr/include/c++/4.8.2/ostream ****       tellp();
 359:/usr/include/c++/4.8.2/ostream **** 
 360:/usr/include/c++/4.8.2/ostream ****       /**
 361:/usr/include/c++/4.8.2/ostream ****        *  @brief  Changing the current write position.
 362:/usr/include/c++/4.8.2/ostream ****        *  @param  __pos  A file position object.
 363:/usr/include/c++/4.8.2/ostream ****        *  @return  *this
 364:/usr/include/c++/4.8.2/ostream ****        *
 365:/usr/include/c++/4.8.2/ostream ****        *  If @c fail() is not true, calls @c rdbuf()->pubseekpos(pos).  If
 366:/usr/include/c++/4.8.2/ostream ****        *  that function fails, sets failbit.
 367:/usr/include/c++/4.8.2/ostream ****       */
 368:/usr/include/c++/4.8.2/ostream ****       __ostream_type&
 369:/usr/include/c++/4.8.2/ostream ****       seekp(pos_type);
 370:/usr/include/c++/4.8.2/ostream **** 
 371:/usr/include/c++/4.8.2/ostream ****       /**
 372:/usr/include/c++/4.8.2/ostream ****        *  @brief  Changing the current write position.
 373:/usr/include/c++/4.8.2/ostream ****        *  @param  __off  A file offset object.
 374:/usr/include/c++/4.8.2/ostream ****        *  @param  __dir  The direction in which to seek.
 375:/usr/include/c++/4.8.2/ostream ****        *  @return  *this
 376:/usr/include/c++/4.8.2/ostream ****        *
 377:/usr/include/c++/4.8.2/ostream ****        *  If @c fail() is not true, calls @c rdbuf()->pubseekoff(off,dir).
 378:/usr/include/c++/4.8.2/ostream ****        *  If that function fails, sets failbit.
 379:/usr/include/c++/4.8.2/ostream ****       */
 380:/usr/include/c++/4.8.2/ostream ****        __ostream_type&
 381:/usr/include/c++/4.8.2/ostream ****       seekp(off_type, ios_base::seekdir);
 382:/usr/include/c++/4.8.2/ostream **** 
 383:/usr/include/c++/4.8.2/ostream ****     protected:
 384:/usr/include/c++/4.8.2/ostream ****       basic_ostream()
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 386:/usr/include/c++/4.8.2/ostream **** 
 387:/usr/include/c++/4.8.2/ostream ****       template<typename _ValueT>
 388:/usr/include/c++/4.8.2/ostream **** 	__ostream_type&
 389:/usr/include/c++/4.8.2/ostream **** 	_M_insert(_ValueT __v);
 390:/usr/include/c++/4.8.2/ostream ****     };
 391:/usr/include/c++/4.8.2/ostream **** 
 392:/usr/include/c++/4.8.2/ostream ****   /**
 393:/usr/include/c++/4.8.2/ostream ****    *  @brief  Performs setup work for output streams.
 394:/usr/include/c++/4.8.2/ostream ****    *
 395:/usr/include/c++/4.8.2/ostream ****    *  Objects of this class are created before all of the standard
 396:/usr/include/c++/4.8.2/ostream ****    *  inserters are run.  It is responsible for <em>exception-safe prefix and
 397:/usr/include/c++/4.8.2/ostream ****    *  suffix operations</em>.
 398:/usr/include/c++/4.8.2/ostream ****   */
 399:/usr/include/c++/4.8.2/ostream ****   template <typename _CharT, typename _Traits>
 400:/usr/include/c++/4.8.2/ostream ****     class basic_ostream<_CharT, _Traits>::sentry
 401:/usr/include/c++/4.8.2/ostream ****     {
 402:/usr/include/c++/4.8.2/ostream ****       // Data Members.
 403:/usr/include/c++/4.8.2/ostream ****       bool 				_M_ok;
 404:/usr/include/c++/4.8.2/ostream ****       basic_ostream<_CharT, _Traits>& 	_M_os;
 405:/usr/include/c++/4.8.2/ostream **** 
 406:/usr/include/c++/4.8.2/ostream ****     public:
 407:/usr/include/c++/4.8.2/ostream ****       /**
 408:/usr/include/c++/4.8.2/ostream ****        *  @brief  The constructor performs preparatory work.
 409:/usr/include/c++/4.8.2/ostream ****        *  @param  __os  The output stream to guard.
 410:/usr/include/c++/4.8.2/ostream ****        *
 411:/usr/include/c++/4.8.2/ostream ****        *  If the stream state is good (@a __os.good() is true), then if the
 412:/usr/include/c++/4.8.2/ostream ****        *  stream is tied to another output stream, @c is.tie()->flush()
 413:/usr/include/c++/4.8.2/ostream ****        *  is called to synchronize the output sequences.
 414:/usr/include/c++/4.8.2/ostream ****        *
 415:/usr/include/c++/4.8.2/ostream ****        *  If the stream state is still good, then the sentry state becomes
 416:/usr/include/c++/4.8.2/ostream ****        *  true (@a okay).
 417:/usr/include/c++/4.8.2/ostream ****       */
 418:/usr/include/c++/4.8.2/ostream ****       explicit
 419:/usr/include/c++/4.8.2/ostream ****       sentry(basic_ostream<_CharT, _Traits>& __os);
 420:/usr/include/c++/4.8.2/ostream **** 
 421:/usr/include/c++/4.8.2/ostream ****       /**
 422:/usr/include/c++/4.8.2/ostream ****        *  @brief  Possibly flushes the stream.
 423:/usr/include/c++/4.8.2/ostream ****        *
 424:/usr/include/c++/4.8.2/ostream ****        *  If @c ios_base::unitbuf is set in @c os.flags(), and
 425:/usr/include/c++/4.8.2/ostream ****        *  @c std::uncaught_exception() is true, the sentry destructor calls
 426:/usr/include/c++/4.8.2/ostream ****        *  @c flush() on the output stream.
 427:/usr/include/c++/4.8.2/ostream ****       */
 428:/usr/include/c++/4.8.2/ostream ****       ~sentry()
 429:/usr/include/c++/4.8.2/ostream ****       {
 430:/usr/include/c++/4.8.2/ostream **** 	// XXX MT
 431:/usr/include/c++/4.8.2/ostream **** 	if (bool(_M_os.flags() & ios_base::unitbuf) && !uncaught_exception())
 432:/usr/include/c++/4.8.2/ostream **** 	  {
 433:/usr/include/c++/4.8.2/ostream **** 	    // Can't call flush directly or else will get into recursive lock.
 434:/usr/include/c++/4.8.2/ostream **** 	    if (_M_os.rdbuf() && _M_os.rdbuf()->pubsync() == -1)
 435:/usr/include/c++/4.8.2/ostream **** 	      _M_os.setstate(ios_base::badbit);
 436:/usr/include/c++/4.8.2/ostream **** 	  }
 437:/usr/include/c++/4.8.2/ostream ****       }
 438:/usr/include/c++/4.8.2/ostream **** 
 439:/usr/include/c++/4.8.2/ostream ****       /**
 440:/usr/include/c++/4.8.2/ostream ****        *  @brief  Quick status checking.
 441:/usr/include/c++/4.8.2/ostream ****        *  @return  The sentry state.
 442:/usr/include/c++/4.8.2/ostream ****        *
 443:/usr/include/c++/4.8.2/ostream ****        *  For ease of use, sentries may be converted to booleans.  The
 444:/usr/include/c++/4.8.2/ostream ****        *  return value is that of the sentry state (true == okay).
 445:/usr/include/c++/4.8.2/ostream ****       */
 446:/usr/include/c++/4.8.2/ostream **** #if __cplusplus >= 201103L
 447:/usr/include/c++/4.8.2/ostream ****       explicit
 448:/usr/include/c++/4.8.2/ostream **** #endif
 449:/usr/include/c++/4.8.2/ostream ****       operator bool() const
 450:/usr/include/c++/4.8.2/ostream ****       { return _M_ok; }
 451:/usr/include/c++/4.8.2/ostream ****     };
 452:/usr/include/c++/4.8.2/ostream **** 
 453:/usr/include/c++/4.8.2/ostream ****   //@{
 454:/usr/include/c++/4.8.2/ostream ****   /**
 455:/usr/include/c++/4.8.2/ostream ****    *  @brief  Character inserters
 456:/usr/include/c++/4.8.2/ostream ****    *  @param  __out  An output stream.
 457:/usr/include/c++/4.8.2/ostream ****    *  @param  __c  A character.
 458:/usr/include/c++/4.8.2/ostream ****    *  @return  out
 459:/usr/include/c++/4.8.2/ostream ****    *
 460:/usr/include/c++/4.8.2/ostream ****    *  Behaves like one of the formatted arithmetic inserters described in
 461:/usr/include/c++/4.8.2/ostream ****    *  std::basic_ostream.  After constructing a sentry object with good
 462:/usr/include/c++/4.8.2/ostream ****    *  status, this function inserts a single character and any required
 463:/usr/include/c++/4.8.2/ostream ****    *  padding (as determined by [22.2.2.2.2]).  @c __out.width(0) is then
 464:/usr/include/c++/4.8.2/ostream ****    *  called.
 465:/usr/include/c++/4.8.2/ostream ****    *
 466:/usr/include/c++/4.8.2/ostream ****    *  If @p __c is of type @c char and the character type of the stream is not
 467:/usr/include/c++/4.8.2/ostream ****    *  @c char, the character is widened before insertion.
 468:/usr/include/c++/4.8.2/ostream ****   */
 469:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 470:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<_CharT, _Traits>&
 471:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, _CharT __c)
 472:/usr/include/c++/4.8.2/ostream ****     { return __ostream_insert(__out, &__c, 1); }
 473:/usr/include/c++/4.8.2/ostream **** 
 474:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 475:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<_CharT, _Traits>&
 476:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, char __c)
 477:/usr/include/c++/4.8.2/ostream ****     { return (__out << __out.widen(__c)); }
 478:/usr/include/c++/4.8.2/ostream **** 
 479:/usr/include/c++/4.8.2/ostream ****   // Specialization
 480:/usr/include/c++/4.8.2/ostream ****   template <class _Traits>
 481:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<char, _Traits>&
 482:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, char __c)
 483:/usr/include/c++/4.8.2/ostream ****     { return __ostream_insert(__out, &__c, 1); }
 484:/usr/include/c++/4.8.2/ostream **** 
 485:/usr/include/c++/4.8.2/ostream ****   // Signed and unsigned
 486:/usr/include/c++/4.8.2/ostream ****   template<class _Traits>
 487:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<char, _Traits>&
 488:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, signed char __c)
 489:/usr/include/c++/4.8.2/ostream ****     { return (__out << static_cast<char>(__c)); }
 490:/usr/include/c++/4.8.2/ostream **** 
 491:/usr/include/c++/4.8.2/ostream ****   template<class _Traits>
 492:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<char, _Traits>&
 493:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, unsigned char __c)
 494:/usr/include/c++/4.8.2/ostream ****     { return (__out << static_cast<char>(__c)); }
 495:/usr/include/c++/4.8.2/ostream ****   //@}
 496:/usr/include/c++/4.8.2/ostream **** 
 497:/usr/include/c++/4.8.2/ostream ****   //@{
 498:/usr/include/c++/4.8.2/ostream ****   /**
 499:/usr/include/c++/4.8.2/ostream ****    *  @brief  String inserters
 500:/usr/include/c++/4.8.2/ostream ****    *  @param  __out  An output stream.
 501:/usr/include/c++/4.8.2/ostream ****    *  @param  __s  A character string.
 502:/usr/include/c++/4.8.2/ostream ****    *  @return  out
 503:/usr/include/c++/4.8.2/ostream ****    *  @pre  @p __s must be a non-NULL pointer
 504:/usr/include/c++/4.8.2/ostream ****    *
 505:/usr/include/c++/4.8.2/ostream ****    *  Behaves like one of the formatted arithmetic inserters described in
 506:/usr/include/c++/4.8.2/ostream ****    *  std::basic_ostream.  After constructing a sentry object with good
 507:/usr/include/c++/4.8.2/ostream ****    *  status, this function inserts @c traits::length(__s) characters starting
 508:/usr/include/c++/4.8.2/ostream ****    *  at @p __s, widened if necessary, followed by any required padding (as
 509:/usr/include/c++/4.8.2/ostream ****    *  determined by [22.2.2.2.2]).  @c __out.width(0) is then called.
 510:/usr/include/c++/4.8.2/ostream ****   */
 511:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 512:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<_CharT, _Traits>&
 513:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, const _CharT* __s)
 514:/usr/include/c++/4.8.2/ostream ****     {
 515:/usr/include/c++/4.8.2/ostream ****       if (!__s)
 516:/usr/include/c++/4.8.2/ostream **** 	__out.setstate(ios_base::badbit);
 517:/usr/include/c++/4.8.2/ostream ****       else
 518:/usr/include/c++/4.8.2/ostream **** 	__ostream_insert(__out, __s,
 519:/usr/include/c++/4.8.2/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 520:/usr/include/c++/4.8.2/ostream ****       return __out;
 521:/usr/include/c++/4.8.2/ostream ****     }
 522:/usr/include/c++/4.8.2/ostream **** 
 523:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 524:/usr/include/c++/4.8.2/ostream ****     basic_ostream<_CharT, _Traits> &
 525:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, const char* __s);
 526:/usr/include/c++/4.8.2/ostream **** 
 527:/usr/include/c++/4.8.2/ostream ****   // Partial specializations
 528:/usr/include/c++/4.8.2/ostream ****   template<class _Traits>
 529:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<char, _Traits>&
 530:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
  64              		.loc 1 530 0
  65              		.cfi_startproc
  66              	.LVL0:
  67 0000 50       		push	rax	#
  68              		.cfi_def_cfa_offset 16
 531:/usr/include/c++/4.8.2/ostream ****     {
 532:/usr/include/c++/4.8.2/ostream ****       if (!__s)
 533:/usr/include/c++/4.8.2/ostream **** 	__out.setstate(ios_base::badbit);
  69              		.loc 1 533 0
  70 0001 488B07   		mov	rax, QWORD PTR [rdi]	# __out_1(D)->_vptr.basic_ostream, __out_1(D)->_vptr.basic_ostream
  71 0004 480378E8 		add	rdi, QWORD PTR [rax-24]	# D.36424, MEM[(long int *)_2 + -24B]
  72              	.LVL1:
  73              	.LBB454:
  74              	.LBB455:
  75              	.LBB456:
  76              	.LBB457:
  77              		.file 2 "/usr/include/c++/4.8.2/bits/ios_base.h"
   1:/usr/include/c++/4.8.2/bits/ios_base.h **** // Iostreams base classes -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/ios_base.h **** 
   3:/usr/include/c++/4.8.2/bits/ios_base.h **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/ios_base.h **** //
   5:/usr/include/c++/4.8.2/bits/ios_base.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/ios_base.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/ios_base.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/ios_base.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/ios_base.h **** // any later version.
  10:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  11:/usr/include/c++/4.8.2/bits/ios_base.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/ios_base.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/ios_base.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/ios_base.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  16:/usr/include/c++/4.8.2/bits/ios_base.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/ios_base.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/ios_base.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  20:/usr/include/c++/4.8.2/bits/ios_base.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/ios_base.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/ios_base.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/ios_base.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  25:/usr/include/c++/4.8.2/bits/ios_base.h **** /** @file bits/ios_base.h
  26:/usr/include/c++/4.8.2/bits/ios_base.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/4.8.2/bits/ios_base.h ****  *  Do not attempt to use it directly. @headername{ios}
  28:/usr/include/c++/4.8.2/bits/ios_base.h ****  */
  29:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  30:/usr/include/c++/4.8.2/bits/ios_base.h **** //
  31:/usr/include/c++/4.8.2/bits/ios_base.h **** // ISO C++ 14882: 27.4  Iostreams base classes
  32:/usr/include/c++/4.8.2/bits/ios_base.h **** //
  33:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  34:/usr/include/c++/4.8.2/bits/ios_base.h **** #ifndef _IOS_BASE_H
  35:/usr/include/c++/4.8.2/bits/ios_base.h **** #define _IOS_BASE_H 1
  36:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  37:/usr/include/c++/4.8.2/bits/ios_base.h **** #pragma GCC system_header
  38:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  39:/usr/include/c++/4.8.2/bits/ios_base.h **** #include <ext/atomicity.h>
  40:/usr/include/c++/4.8.2/bits/ios_base.h **** #include <bits/localefwd.h>
  41:/usr/include/c++/4.8.2/bits/ios_base.h **** #include <bits/locale_classes.h>
  42:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  43:/usr/include/c++/4.8.2/bits/ios_base.h **** namespace std _GLIBCXX_VISIBILITY(default)
  44:/usr/include/c++/4.8.2/bits/ios_base.h **** {
  45:/usr/include/c++/4.8.2/bits/ios_base.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  46:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  47:/usr/include/c++/4.8.2/bits/ios_base.h ****   // The following definitions of bitmask types are enums, not ints,
  48:/usr/include/c++/4.8.2/bits/ios_base.h ****   // as permitted (but not required) in the standard, in order to provide
  49:/usr/include/c++/4.8.2/bits/ios_base.h ****   // better type safety in iostream calls.  A side effect is that
  50:/usr/include/c++/4.8.2/bits/ios_base.h ****   // expressions involving them are no longer compile-time constants.
  51:/usr/include/c++/4.8.2/bits/ios_base.h ****   enum _Ios_Fmtflags 
  52:/usr/include/c++/4.8.2/bits/ios_base.h ****     { 
  53:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_boolalpha 	= 1L << 0,
  54:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_dec 		= 1L << 1,
  55:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_fixed 		= 1L << 2,
  56:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_hex 		= 1L << 3,
  57:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_internal 	= 1L << 4,
  58:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_left 		= 1L << 5,
  59:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_oct 		= 1L << 6,
  60:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_right 		= 1L << 7,
  61:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_scientific 	= 1L << 8,
  62:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_showbase 	= 1L << 9,
  63:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_showpoint 	= 1L << 10,
  64:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_showpos 	= 1L << 11,
  65:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_skipws 	= 1L << 12,
  66:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_unitbuf 	= 1L << 13,
  67:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_uppercase 	= 1L << 14,
  68:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_adjustfield 	= _S_left | _S_right | _S_internal,
  69:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_basefield 	= _S_dec | _S_oct | _S_hex,
  70:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_floatfield 	= _S_scientific | _S_fixed,
  71:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_ios_fmtflags_end = 1L << 16 
  72:/usr/include/c++/4.8.2/bits/ios_base.h ****     };
  73:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  74:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Fmtflags
  75:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator&(_Ios_Fmtflags __a, _Ios_Fmtflags __b)
  76:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Fmtflags(static_cast<int>(__a) & static_cast<int>(__b)); }
  77:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  78:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Fmtflags
  79:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator|(_Ios_Fmtflags __a, _Ios_Fmtflags __b)
  80:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Fmtflags(static_cast<int>(__a) | static_cast<int>(__b)); }
  81:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  82:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Fmtflags
  83:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator^(_Ios_Fmtflags __a, _Ios_Fmtflags __b)
  84:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Fmtflags(static_cast<int>(__a) ^ static_cast<int>(__b)); }
  85:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  86:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Fmtflags
  87:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator~(_Ios_Fmtflags __a)
  88:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Fmtflags(~static_cast<int>(__a)); }
  89:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  90:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline const _Ios_Fmtflags&
  91:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator|=(_Ios_Fmtflags& __a, _Ios_Fmtflags __b)
  92:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return __a = __a | __b; }
  93:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  94:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline const _Ios_Fmtflags&
  95:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator&=(_Ios_Fmtflags& __a, _Ios_Fmtflags __b)
  96:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return __a = __a & __b; }
  97:/usr/include/c++/4.8.2/bits/ios_base.h **** 
  98:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline const _Ios_Fmtflags&
  99:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator^=(_Ios_Fmtflags& __a, _Ios_Fmtflags __b)
 100:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return __a = __a ^ __b; }
 101:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 102:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 103:/usr/include/c++/4.8.2/bits/ios_base.h ****   enum _Ios_Openmode 
 104:/usr/include/c++/4.8.2/bits/ios_base.h ****     { 
 105:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_app 		= 1L << 0,
 106:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_ate 		= 1L << 1,
 107:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_bin 		= 1L << 2,
 108:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_in 		= 1L << 3,
 109:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_out 		= 1L << 4,
 110:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_trunc 		= 1L << 5,
 111:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_ios_openmode_end = 1L << 16 
 112:/usr/include/c++/4.8.2/bits/ios_base.h ****     };
 113:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 114:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Openmode
 115:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator&(_Ios_Openmode __a, _Ios_Openmode __b)
 116:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }
 117:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 118:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Openmode
 119:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator|(_Ios_Openmode __a, _Ios_Openmode __b)
 120:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
 121:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 122:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Openmode
 123:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator^(_Ios_Openmode __a, _Ios_Openmode __b)
 124:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Openmode(static_cast<int>(__a) ^ static_cast<int>(__b)); }
 125:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 126:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Openmode
 127:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator~(_Ios_Openmode __a)
 128:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Openmode(~static_cast<int>(__a)); }
 129:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 130:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline const _Ios_Openmode&
 131:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator|=(_Ios_Openmode& __a, _Ios_Openmode __b)
 132:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return __a = __a | __b; }
 133:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 134:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline const _Ios_Openmode&
 135:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator&=(_Ios_Openmode& __a, _Ios_Openmode __b)
 136:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return __a = __a & __b; }
 137:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 138:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline const _Ios_Openmode&
 139:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator^=(_Ios_Openmode& __a, _Ios_Openmode __b)
 140:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return __a = __a ^ __b; }
 141:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 142:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 143:/usr/include/c++/4.8.2/bits/ios_base.h ****   enum _Ios_Iostate
 144:/usr/include/c++/4.8.2/bits/ios_base.h ****     { 
 145:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_goodbit 		= 0,
 146:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_badbit 		= 1L << 0,
 147:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_eofbit 		= 1L << 1,
 148:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_failbit		= 1L << 2,
 149:/usr/include/c++/4.8.2/bits/ios_base.h ****       _S_ios_iostate_end = 1L << 16 
 150:/usr/include/c++/4.8.2/bits/ios_base.h ****     };
 151:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 152:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Iostate
 153:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator&(_Ios_Iostate __a, _Ios_Iostate __b)
 154:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Iostate(static_cast<int>(__a) & static_cast<int>(__b)); }
 155:/usr/include/c++/4.8.2/bits/ios_base.h **** 
 156:/usr/include/c++/4.8.2/bits/ios_base.h ****   inline _GLIBCXX_CONSTEXPR _Ios_Iostate
 157:/usr/include/c++/4.8.2/bits/ios_base.h ****   operator|(_Ios_Iostate __a, _Ios_Iostate __b)
 158:/usr/include/c++/4.8.2/bits/ios_base.h ****   { return _Ios_Iostate(static_cast<int>(__a) | static_cast<int>(__b)); }
  78              		.loc 2 158 0
  79 0008 8B7720   		mov	esi, DWORD PTR [rdi+32]	# D.36426, MEM[(const struct basic_ios *)_5 + 32B]
  80 000b 83CE01   		or	esi, 1	# D.36426,
  81              	.LBE457:
  82              	.LBE456:
  83              		.file 3 "/usr/include/c++/4.8.2/bits/basic_ios.h"
   1:/usr/include/c++/4.8.2/bits/basic_ios.h **** // Iostreams base classes -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
   3:/usr/include/c++/4.8.2/bits/basic_ios.h **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/basic_ios.h **** //
   5:/usr/include/c++/4.8.2/bits/basic_ios.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/basic_ios.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/basic_ios.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/basic_ios.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/basic_ios.h **** // any later version.
  10:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  11:/usr/include/c++/4.8.2/bits/basic_ios.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/basic_ios.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/basic_ios.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/basic_ios.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  16:/usr/include/c++/4.8.2/bits/basic_ios.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/basic_ios.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/basic_ios.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  20:/usr/include/c++/4.8.2/bits/basic_ios.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/basic_ios.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/basic_ios.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/basic_ios.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  25:/usr/include/c++/4.8.2/bits/basic_ios.h **** /** @file bits/basic_ios.h
  26:/usr/include/c++/4.8.2/bits/basic_ios.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/4.8.2/bits/basic_ios.h ****  *  Do not attempt to use it directly. @headername{ios}
  28:/usr/include/c++/4.8.2/bits/basic_ios.h ****  */
  29:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  30:/usr/include/c++/4.8.2/bits/basic_ios.h **** #ifndef _BASIC_IOS_H
  31:/usr/include/c++/4.8.2/bits/basic_ios.h **** #define _BASIC_IOS_H 1
  32:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  33:/usr/include/c++/4.8.2/bits/basic_ios.h **** #pragma GCC system_header
  34:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  35:/usr/include/c++/4.8.2/bits/basic_ios.h **** #include <bits/localefwd.h>
  36:/usr/include/c++/4.8.2/bits/basic_ios.h **** #include <bits/locale_classes.h>
  37:/usr/include/c++/4.8.2/bits/basic_ios.h **** #include <bits/locale_facets.h>
  38:/usr/include/c++/4.8.2/bits/basic_ios.h **** #include <bits/streambuf_iterator.h>
  39:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  40:/usr/include/c++/4.8.2/bits/basic_ios.h **** namespace std _GLIBCXX_VISIBILITY(default)
  41:/usr/include/c++/4.8.2/bits/basic_ios.h **** {
  42:/usr/include/c++/4.8.2/bits/basic_ios.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  43:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  44:/usr/include/c++/4.8.2/bits/basic_ios.h ****   template<typename _Facet>
  45:/usr/include/c++/4.8.2/bits/basic_ios.h ****     inline const _Facet&
  46:/usr/include/c++/4.8.2/bits/basic_ios.h ****     __check_facet(const _Facet* __f)
  47:/usr/include/c++/4.8.2/bits/basic_ios.h ****     {
  48:/usr/include/c++/4.8.2/bits/basic_ios.h ****       if (!__f)
  49:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	__throw_bad_cast();
  50:/usr/include/c++/4.8.2/bits/basic_ios.h ****       return *__f;
  51:/usr/include/c++/4.8.2/bits/basic_ios.h ****     }
  52:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  53:/usr/include/c++/4.8.2/bits/basic_ios.h ****   /**
  54:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  @brief Template class basic_ios, virtual base class for all
  55:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  stream classes. 
  56:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  @ingroup io
  57:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *
  58:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  @tparam _CharT  Type of character stream.
  59:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  @tparam _Traits  Traits for character type, defaults to
  60:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *                   char_traits<_CharT>.
  61:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *
  62:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  Most of the member functions called dispatched on stream objects
  63:/usr/include/c++/4.8.2/bits/basic_ios.h ****    *  (e.g., @c std::cout.foo(bar);) are consolidated in this class.
  64:/usr/include/c++/4.8.2/bits/basic_ios.h ****   */
  65:/usr/include/c++/4.8.2/bits/basic_ios.h ****   template<typename _CharT, typename _Traits>
  66:/usr/include/c++/4.8.2/bits/basic_ios.h ****     class basic_ios : public ios_base
  67:/usr/include/c++/4.8.2/bits/basic_ios.h ****     {
  68:/usr/include/c++/4.8.2/bits/basic_ios.h ****     public:
  69:/usr/include/c++/4.8.2/bits/basic_ios.h ****       //@{
  70:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
  71:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  These are standard types.  They permit a standardized way of
  72:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  referring to names of (or names dependent on) the template
  73:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  parameters, which are specific to the implementation.
  74:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
  75:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef _CharT                                 char_type;
  76:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef typename _Traits::int_type             int_type;
  77:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef typename _Traits::pos_type             pos_type;
  78:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef typename _Traits::off_type             off_type;
  79:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef _Traits                                traits_type;
  80:/usr/include/c++/4.8.2/bits/basic_ios.h ****       //@}
  81:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  82:/usr/include/c++/4.8.2/bits/basic_ios.h ****       //@{
  83:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
  84:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  These are non-standard types.
  85:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
  86:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef ctype<_CharT>                          __ctype_type;
  87:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef num_put<_CharT, ostreambuf_iterator<_CharT, _Traits> >
  88:/usr/include/c++/4.8.2/bits/basic_ios.h **** 						     __num_put_type;
  89:/usr/include/c++/4.8.2/bits/basic_ios.h ****       typedef num_get<_CharT, istreambuf_iterator<_CharT, _Traits> >
  90:/usr/include/c++/4.8.2/bits/basic_ios.h **** 						     __num_get_type;
  91:/usr/include/c++/4.8.2/bits/basic_ios.h ****       //@}
  92:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
  93:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // Data members:
  94:/usr/include/c++/4.8.2/bits/basic_ios.h ****     protected:
  95:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_ostream<_CharT, _Traits>*                _M_tie;
  96:/usr/include/c++/4.8.2/bits/basic_ios.h ****       mutable char_type                              _M_fill;
  97:/usr/include/c++/4.8.2/bits/basic_ios.h ****       mutable bool                                   _M_fill_init;
  98:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_streambuf<_CharT, _Traits>*              _M_streambuf;
  99:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 100:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // Cached use_facet<ctype>, which is based on the current locale info.
 101:/usr/include/c++/4.8.2/bits/basic_ios.h ****       const __ctype_type*                            _M_ctype;
 102:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // For ostream.
 103:/usr/include/c++/4.8.2/bits/basic_ios.h ****       const __num_put_type*                          _M_num_put;
 104:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // For istream.
 105:/usr/include/c++/4.8.2/bits/basic_ios.h ****       const __num_get_type*                          _M_num_get;
 106:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 107:/usr/include/c++/4.8.2/bits/basic_ios.h ****     public:
 108:/usr/include/c++/4.8.2/bits/basic_ios.h ****       //@{
 109:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 110:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  The quick-and-easy status check.
 111:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 112:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  This allows you to write constructs such as
 113:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  <code>if (!a_stream) ...</code> and <code>while (a_stream) ...</code>
 114:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 115:/usr/include/c++/4.8.2/bits/basic_ios.h ****       operator void*() const
 116:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return this->fail() ? 0 : const_cast<basic_ios*>(this); }
 117:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 118:/usr/include/c++/4.8.2/bits/basic_ios.h ****       bool
 119:/usr/include/c++/4.8.2/bits/basic_ios.h ****       operator!() const
 120:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return this->fail(); }
 121:/usr/include/c++/4.8.2/bits/basic_ios.h ****       //@}
 122:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 123:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 124:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Returns the error state of the stream buffer.
 125:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  A bit pattern (well, isn't everything?)
 126:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 127:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  See std::ios_base::iostate for the possible bit values.  Most
 128:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  users will call one of the interpreting wrappers, e.g., good().
 129:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 130:/usr/include/c++/4.8.2/bits/basic_ios.h ****       iostate
 131:/usr/include/c++/4.8.2/bits/basic_ios.h ****       rdstate() const
 132:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return _M_streambuf_state; }
 133:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 134:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 135:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  [Re]sets the error state.
 136:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __state  The new state flag(s) to set.
 137:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 138:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  See std::ios_base::iostate for the possible bit values.  Most
 139:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  users will not need to pass an argument.
 140:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 141:/usr/include/c++/4.8.2/bits/basic_ios.h ****       void
 142:/usr/include/c++/4.8.2/bits/basic_ios.h ****       clear(iostate __state = goodbit);
 143:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 144:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 145:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Sets additional flags in the error state.
 146:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __state  The additional state flag(s) to set.
 147:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 148:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  See std::ios_base::iostate for the possible bit values.
 149:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 150:/usr/include/c++/4.8.2/bits/basic_ios.h ****       void
 151:/usr/include/c++/4.8.2/bits/basic_ios.h ****       setstate(iostate __state)
 152:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { this->clear(this->rdstate() | __state); }
  84              		.loc 3 152 0
  85 000e E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate	#
  85      00
  86              	.LVL2:
  87              	.LBE455:
  88              	.LBE454:
 534:/usr/include/c++/4.8.2/ostream ****       else
 535:/usr/include/c++/4.8.2/ostream **** 	__ostream_insert(__out, __s,
 536:/usr/include/c++/4.8.2/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 537:/usr/include/c++/4.8.2/ostream ****       return __out;
 538:/usr/include/c++/4.8.2/ostream ****     }
  89              		.loc 1 538 0
  90 0013 5A       		pop	rdx	#
  91              		.cfi_def_cfa_offset 8
  92 0014 C3       		ret
  93              		.cfi_endproc
  94              	.LFE1691:
  96              		.section	.text._ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt15basic_s
  97              		.align 2
  98              		.p2align 4,,15
  99              		.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev
 101              	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev:
 102              	.LFB1538:
 103              		.file 4 "/usr/include/c++/4.8.2/sstream"
   1:/usr/include/c++/4.8.2/sstream **** // String based streams -*- C++ -*-
   2:/usr/include/c++/4.8.2/sstream **** 
   3:/usr/include/c++/4.8.2/sstream **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/sstream **** //
   5:/usr/include/c++/4.8.2/sstream **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/sstream **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/sstream **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/sstream **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/sstream **** // any later version.
  10:/usr/include/c++/4.8.2/sstream **** 
  11:/usr/include/c++/4.8.2/sstream **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/sstream **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/sstream **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/sstream **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/sstream **** 
  16:/usr/include/c++/4.8.2/sstream **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/sstream **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/sstream **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/sstream **** 
  20:/usr/include/c++/4.8.2/sstream **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/sstream **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/sstream **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/sstream **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/sstream **** 
  25:/usr/include/c++/4.8.2/sstream **** /** @file include/sstream
  26:/usr/include/c++/4.8.2/sstream ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/4.8.2/sstream ****  */
  28:/usr/include/c++/4.8.2/sstream **** 
  29:/usr/include/c++/4.8.2/sstream **** //
  30:/usr/include/c++/4.8.2/sstream **** // ISO C++ 14882: 27.7  String-based streams
  31:/usr/include/c++/4.8.2/sstream **** //
  32:/usr/include/c++/4.8.2/sstream **** 
  33:/usr/include/c++/4.8.2/sstream **** #ifndef _GLIBCXX_SSTREAM
  34:/usr/include/c++/4.8.2/sstream **** #define _GLIBCXX_SSTREAM 1
  35:/usr/include/c++/4.8.2/sstream **** 
  36:/usr/include/c++/4.8.2/sstream **** #pragma GCC system_header
  37:/usr/include/c++/4.8.2/sstream **** 
  38:/usr/include/c++/4.8.2/sstream **** #include <istream>
  39:/usr/include/c++/4.8.2/sstream **** #include <ostream>
  40:/usr/include/c++/4.8.2/sstream **** 
  41:/usr/include/c++/4.8.2/sstream **** namespace std _GLIBCXX_VISIBILITY(default)
  42:/usr/include/c++/4.8.2/sstream **** {
  43:/usr/include/c++/4.8.2/sstream **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  44:/usr/include/c++/4.8.2/sstream **** 
  45:/usr/include/c++/4.8.2/sstream ****   // [27.7.1] template class basic_stringbuf
  46:/usr/include/c++/4.8.2/sstream ****   /**
  47:/usr/include/c++/4.8.2/sstream ****    *  @brief  The actual work of input and output (for std::string).
  48:/usr/include/c++/4.8.2/sstream ****    *  @ingroup io
  49:/usr/include/c++/4.8.2/sstream ****    *
  50:/usr/include/c++/4.8.2/sstream ****    *  @tparam _CharT  Type of character stream.
  51:/usr/include/c++/4.8.2/sstream ****    *  @tparam _Traits  Traits for character type, defaults to
  52:/usr/include/c++/4.8.2/sstream ****    *                   char_traits<_CharT>.
  53:/usr/include/c++/4.8.2/sstream ****    *  @tparam _Alloc  Allocator type, defaults to allocator<_CharT>.
  54:/usr/include/c++/4.8.2/sstream ****    *
  55:/usr/include/c++/4.8.2/sstream ****    *  This class associates either or both of its input and output sequences
  56:/usr/include/c++/4.8.2/sstream ****    *  with a sequence of characters, which can be initialized from, or made
  57:/usr/include/c++/4.8.2/sstream ****    *  available as, a @c std::basic_string.  (Paraphrased from [27.7.1]/1.)
  58:/usr/include/c++/4.8.2/sstream ****    *
  59:/usr/include/c++/4.8.2/sstream ****    *  For this class, open modes (of type @c ios_base::openmode) have
  60:/usr/include/c++/4.8.2/sstream ****    *  @c in set if the input sequence can be read, and @c out set if the
  61:/usr/include/c++/4.8.2/sstream ****    *  output sequence can be written.
  62:/usr/include/c++/4.8.2/sstream ****   */
  63:/usr/include/c++/4.8.2/sstream ****   template<typename _CharT, typename _Traits, typename _Alloc>
  64:/usr/include/c++/4.8.2/sstream ****     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
 104              		.loc 4 64 0
 105              		.cfi_startproc
 106              	.LVL3:
 107 0000 53       		push	rbx	#
 108              		.cfi_def_cfa_offset 16
 109              		.cfi_offset 3, -16
 110 0001 4889FB   		mov	rbx, rdi	# this, this
 111 0004 4883EC10 		sub	rsp, 16	#,
 112              		.cfi_def_cfa_offset 32
 113              	.LBB486:
 114              		.loc 4 64 0
 115 0008 48C70700 		mov	QWORD PTR [rdi], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# this_2(D)-
 115      000000
 116              	.LVL4:
 117              	.LBB487:
 118              	.LBB488:
 119              	.LBB489:
 120              	.LBB490:
 121              	.LBB491:
 122              	.LBB492:
 123              		.file 5 "/usr/include/c++/4.8.2/bits/basic_string.h"
   1:/usr/include/c++/4.8.2/bits/basic_string.h **** // Components for manipulating sequences of characters -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/basic_string.h **** 
   3:/usr/include/c++/4.8.2/bits/basic_string.h **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/basic_string.h **** //
   5:/usr/include/c++/4.8.2/bits/basic_string.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/basic_string.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/basic_string.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/basic_string.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/basic_string.h **** // any later version.
  10:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  11:/usr/include/c++/4.8.2/bits/basic_string.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/basic_string.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/basic_string.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/basic_string.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  16:/usr/include/c++/4.8.2/bits/basic_string.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/basic_string.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/basic_string.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  20:/usr/include/c++/4.8.2/bits/basic_string.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/basic_string.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/basic_string.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/basic_string.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  25:/usr/include/c++/4.8.2/bits/basic_string.h **** /** @file bits/basic_string.h
  26:/usr/include/c++/4.8.2/bits/basic_string.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/4.8.2/bits/basic_string.h ****  *  Do not attempt to use it directly. @headername{string}
  28:/usr/include/c++/4.8.2/bits/basic_string.h ****  */
  29:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  30:/usr/include/c++/4.8.2/bits/basic_string.h **** //
  31:/usr/include/c++/4.8.2/bits/basic_string.h **** // ISO C++ 14882: 21 Strings library
  32:/usr/include/c++/4.8.2/bits/basic_string.h **** //
  33:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  34:/usr/include/c++/4.8.2/bits/basic_string.h **** #ifndef _BASIC_STRING_H
  35:/usr/include/c++/4.8.2/bits/basic_string.h **** #define _BASIC_STRING_H 1
  36:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  37:/usr/include/c++/4.8.2/bits/basic_string.h **** #pragma GCC system_header
  38:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  39:/usr/include/c++/4.8.2/bits/basic_string.h **** #include <ext/atomicity.h>
  40:/usr/include/c++/4.8.2/bits/basic_string.h **** #include <debug/debug.h>
  41:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
  42:/usr/include/c++/4.8.2/bits/basic_string.h **** #include <initializer_list>
  43:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
  44:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  45:/usr/include/c++/4.8.2/bits/basic_string.h **** namespace std _GLIBCXX_VISIBILITY(default)
  46:/usr/include/c++/4.8.2/bits/basic_string.h **** {
  47:/usr/include/c++/4.8.2/bits/basic_string.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  48:/usr/include/c++/4.8.2/bits/basic_string.h **** 
  49:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
  50:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @class basic_string basic_string.h <string>
  51:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Managing sequences of characters and character-like objects.
  52:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  53:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @ingroup strings
  54:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @ingroup sequences
  55:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  56:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @tparam _CharT  Type of character
  57:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @tparam _Traits  Traits for character type, defaults to
  58:/usr/include/c++/4.8.2/bits/basic_string.h ****    *                   char_traits<_CharT>.
  59:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @tparam _Alloc  Allocator type, defaults to allocator<_CharT>.
  60:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  61:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Meets the requirements of a <a href="tables.html#65">container</a>, a
  62:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  <a href="tables.html#66">reversible container</a>, and a
  63:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  <a href="tables.html#67">sequence</a>.  Of the
  64:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  <a href="tables.html#68">optional sequence requirements</a>, only
  65:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @c push_back, @c at, and @c %array access are supported.
  66:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  67:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @doctodo
  68:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  69:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  70:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Documentation?  What's that?
  71:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Nathan Myers <ncm@cantrip.org>.
  72:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  73:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  A string looks like this:
  74:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  75:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @code
  76:/usr/include/c++/4.8.2/bits/basic_string.h ****    *                                        [_Rep]
  77:/usr/include/c++/4.8.2/bits/basic_string.h ****    *                                        _M_length
  78:/usr/include/c++/4.8.2/bits/basic_string.h ****    *   [basic_string<char_type>]            _M_capacity
  79:/usr/include/c++/4.8.2/bits/basic_string.h ****    *   _M_dataplus                          _M_refcount
  80:/usr/include/c++/4.8.2/bits/basic_string.h ****    *   _M_p ---------------->               unnamed array of char_type
  81:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @endcode
  82:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  83:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Where the _M_p points to the first character in the string, and
  84:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  you cast it to a pointer-to-_Rep and subtract 1 to get a
  85:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  pointer to the header.
  86:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  87:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  This approach has the enormous advantage that a string object
  88:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  requires only one allocation.  All the ugliness is confined
  89:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  within a single %pair of inline functions, which each compile to
  90:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  a single @a add instruction: _Rep::_M_data(), and
  91:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  string::_M_rep(); and the allocation function which gets a
  92:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  block of raw bytes and with room enough and constructs a _Rep
  93:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  object at the front.
  94:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
  95:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  The reason you want _M_data pointing to the character %array and
  96:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  not the _Rep is so that the debugger can see the string
  97:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  contents. (Probably we should add a non-inline member to get
  98:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  the _Rep for the debugger to use, so users can check the actual
  99:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  string length.)
 100:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
 101:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Note that the _Rep object is a POD so that you can have a
 102:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  static <em>empty string</em> _Rep object already @a constructed before
 103:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  static constructors have run.  The reference-count encoding is
 104:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  chosen so that a 0 indicates one reference, so you never try to
 105:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  destroy the empty-string _Rep object.
 106:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
 107:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  All but the last paragraph is considered pretty conventional
 108:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  for a C++ string implementation.
 109:/usr/include/c++/4.8.2/bits/basic_string.h ****   */
 110:/usr/include/c++/4.8.2/bits/basic_string.h ****   // 21.3  Template class basic_string
 111:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
 112:/usr/include/c++/4.8.2/bits/basic_string.h ****     class basic_string
 113:/usr/include/c++/4.8.2/bits/basic_string.h ****     {
 114:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _Alloc::template rebind<_CharT>::other _CharT_alloc_type;
 115:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 116:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Types:
 117:/usr/include/c++/4.8.2/bits/basic_string.h ****     public:
 118:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef _Traits					    traits_type;
 119:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _Traits::char_type		    value_type;
 120:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef _Alloc					    allocator_type;
 121:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _CharT_alloc_type::size_type	    size_type;
 122:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _CharT_alloc_type::difference_type   difference_type;
 123:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _CharT_alloc_type::reference	    reference;
 124:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _CharT_alloc_type::const_reference   const_reference;
 125:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _CharT_alloc_type::pointer	    pointer;
 126:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename _CharT_alloc_type::const_pointer	    const_pointer;
 127:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef __gnu_cxx::__normal_iterator<pointer, basic_string>  iterator;
 128:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef __gnu_cxx::__normal_iterator<const_pointer, basic_string>
 129:/usr/include/c++/4.8.2/bits/basic_string.h ****                                                             const_iterator;
 130:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef std::reverse_iterator<const_iterator>	const_reverse_iterator;
 131:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef std::reverse_iterator<iterator>		    reverse_iterator;
 132:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 133:/usr/include/c++/4.8.2/bits/basic_string.h ****     private:
 134:/usr/include/c++/4.8.2/bits/basic_string.h ****       // _Rep: string representation
 135:/usr/include/c++/4.8.2/bits/basic_string.h ****       //   Invariants:
 136:/usr/include/c++/4.8.2/bits/basic_string.h ****       //   1. String really contains _M_length + 1 characters: due to 21.3.4
 137:/usr/include/c++/4.8.2/bits/basic_string.h ****       //      must be kept null-terminated.
 138:/usr/include/c++/4.8.2/bits/basic_string.h ****       //   2. _M_capacity >= _M_length
 139:/usr/include/c++/4.8.2/bits/basic_string.h ****       //      Allocated memory is always (_M_capacity + 1) * sizeof(_CharT).
 140:/usr/include/c++/4.8.2/bits/basic_string.h ****       //   3. _M_refcount has three states:
 141:/usr/include/c++/4.8.2/bits/basic_string.h ****       //      -1: leaked, one reference, no ref-copies allowed, non-const.
 142:/usr/include/c++/4.8.2/bits/basic_string.h ****       //       0: one reference, non-const.
 143:/usr/include/c++/4.8.2/bits/basic_string.h ****       //     n>0: n + 1 references, operations require a lock, const.
 144:/usr/include/c++/4.8.2/bits/basic_string.h ****       //   4. All fields==0 is an empty string, given the extra storage
 145:/usr/include/c++/4.8.2/bits/basic_string.h ****       //      beyond-the-end for a null terminator; thus, the shared
 146:/usr/include/c++/4.8.2/bits/basic_string.h ****       //      empty string representation needs no constructor.
 147:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 148:/usr/include/c++/4.8.2/bits/basic_string.h ****       struct _Rep_base
 149:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 150:/usr/include/c++/4.8.2/bits/basic_string.h **** 	size_type		_M_length;
 151:/usr/include/c++/4.8.2/bits/basic_string.h **** 	size_type		_M_capacity;
 152:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_Atomic_word		_M_refcount;
 153:/usr/include/c++/4.8.2/bits/basic_string.h ****       };
 154:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 155:/usr/include/c++/4.8.2/bits/basic_string.h ****       struct _Rep : _Rep_base
 156:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 157:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// Types:
 158:/usr/include/c++/4.8.2/bits/basic_string.h **** 	typedef typename _Alloc::template rebind<char>::other _Raw_bytes_alloc;
 159:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 160:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// (Public) Data members:
 161:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 162:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// The maximum number of individual char_type elements of an
 163:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// individual string is determined by _S_max_size. This is the
 164:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// value that will be returned by max_size().  (Whereas npos
 165:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// is the maximum number of bytes the allocator can allocate.)
 166:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// If one was to divvy up the theoretical largest size string,
 167:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// with a terminating character and m _CharT elements, it'd
 168:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// look like this:
 169:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// npos = sizeof(_Rep) + (m * sizeof(_CharT)) + sizeof(_CharT)
 170:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// Solving for m:
 171:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// m = ((npos - sizeof(_Rep))/sizeof(CharT)) - 1
 172:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// In addition, this implementation quarters this amount.
 173:/usr/include/c++/4.8.2/bits/basic_string.h **** 	static const size_type	_S_max_size;
 174:/usr/include/c++/4.8.2/bits/basic_string.h **** 	static const _CharT	_S_terminal;
 175:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 176:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// The following storage is init'd to 0 by the linker, resulting
 177:/usr/include/c++/4.8.2/bits/basic_string.h ****         // (carefully) in an empty string with one reference.
 178:/usr/include/c++/4.8.2/bits/basic_string.h ****         static size_type _S_empty_rep_storage[];
 179:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 180:/usr/include/c++/4.8.2/bits/basic_string.h ****         static _Rep&
 181:/usr/include/c++/4.8.2/bits/basic_string.h ****         _S_empty_rep()
 182:/usr/include/c++/4.8.2/bits/basic_string.h ****         { 
 183:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  // NB: Mild hack to avoid strict-aliasing warnings.  Note that
 184:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  // _S_empty_rep_storage is never modified and the punning should
 185:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  // be reasonably safe in this case.
 186:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  void* __p = reinterpret_cast<void*>(&_S_empty_rep_storage);
 187:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return *reinterpret_cast<_Rep*>(__p);
 188:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}
 189:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 190:/usr/include/c++/4.8.2/bits/basic_string.h ****         bool
 191:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_is_leaked() const
 192:/usr/include/c++/4.8.2/bits/basic_string.h ****         { return this->_M_refcount < 0; }
 193:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 194:/usr/include/c++/4.8.2/bits/basic_string.h ****         bool
 195:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_is_shared() const
 196:/usr/include/c++/4.8.2/bits/basic_string.h ****         { return this->_M_refcount > 0; }
 197:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 198:/usr/include/c++/4.8.2/bits/basic_string.h ****         void
 199:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_set_leaked()
 200:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->_M_refcount = -1; }
 201:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 202:/usr/include/c++/4.8.2/bits/basic_string.h ****         void
 203:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_set_sharable()
 204:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->_M_refcount = 0; }
 205:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 206:/usr/include/c++/4.8.2/bits/basic_string.h **** 	void
 207:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_set_length_and_sharable(size_type __n)
 208:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{
 209:/usr/include/c++/4.8.2/bits/basic_string.h **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
 210:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 211:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 212:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    {
 213:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      this->_M_set_sharable();  // One reference.
 214:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      this->_M_length = __n;
 215:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      traits_type::assign(this->_M_refdata()[__n], _S_terminal);
 216:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      // grrr. (per 21.3.4)
 217:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      // You cannot leave those LWG people alone for a second.
 218:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    }
 219:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}
 220:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 221:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_CharT*
 222:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_refdata() throw()
 223:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{ return reinterpret_cast<_CharT*>(this + 1); }
 224:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 225:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_CharT*
 226:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_grab(const _Alloc& __alloc1, const _Alloc& __alloc2)
 227:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{
 228:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return (!_M_is_leaked() && __alloc1 == __alloc2)
 229:/usr/include/c++/4.8.2/bits/basic_string.h **** 	          ? _M_refcopy() : _M_clone(__alloc1);
 230:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}
 231:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 232:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// Create & Destroy
 233:/usr/include/c++/4.8.2/bits/basic_string.h **** 	static _Rep*
 234:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_S_create(size_type, size_type, const _Alloc&);
 235:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 236:/usr/include/c++/4.8.2/bits/basic_string.h **** 	void
 237:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_dispose(const _Alloc& __a)
 238:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{
 239:/usr/include/c++/4.8.2/bits/basic_string.h **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 241:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 242:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    {
 243:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      // Be race-detector-friendly.  For more info see bits/c++config.
 244:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      _GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(&this->_M_refcount);
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 247:/usr/include/c++/4.8.2/bits/basic_string.h **** 		{
 248:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(&this->_M_refcount);
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 250:/usr/include/c++/4.8.2/bits/basic_string.h **** 		}
 251:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    }
 252:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}  // XXX MT
 253:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 254:/usr/include/c++/4.8.2/bits/basic_string.h **** 	void
 255:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_destroy(const _Alloc&) throw();
 256:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 257:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_CharT*
 258:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_refcopy() throw()
 259:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{
 260:/usr/include/c++/4.8.2/bits/basic_string.h **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
 261:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 262:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 263:/usr/include/c++/4.8.2/bits/basic_string.h ****             __gnu_cxx::__atomic_add_dispatch(&this->_M_refcount, 1);
 264:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return _M_refdata();
 265:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}  // XXX MT
 266:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 267:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_CharT*
 268:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_clone(const _Alloc&, size_type __res = 0);
 269:/usr/include/c++/4.8.2/bits/basic_string.h ****       };
 270:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 271:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
 272:/usr/include/c++/4.8.2/bits/basic_string.h ****       struct _Alloc_hider : _Alloc
 273:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 274:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_Alloc_hider(_CharT* __dat, const _Alloc& __a)
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 276:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 277:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_CharT* _M_p; // The actual data.
 278:/usr/include/c++/4.8.2/bits/basic_string.h ****       };
 279:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 280:/usr/include/c++/4.8.2/bits/basic_string.h ****     public:
 281:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Data Members (public):
 282:/usr/include/c++/4.8.2/bits/basic_string.h ****       // NB: This is an unsigned type, and thus represents the maximum
 283:/usr/include/c++/4.8.2/bits/basic_string.h ****       // size that the allocator can hold.
 284:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  Value returned by various member functions when they fail.
 285:/usr/include/c++/4.8.2/bits/basic_string.h ****       static const size_type	npos = static_cast<size_type>(-1);
 286:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 287:/usr/include/c++/4.8.2/bits/basic_string.h ****     private:
 288:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Data Members (private):
 289:/usr/include/c++/4.8.2/bits/basic_string.h ****       mutable _Alloc_hider	_M_dataplus;
 290:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 291:/usr/include/c++/4.8.2/bits/basic_string.h ****       _CharT*
 292:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_data() const
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 124              		.loc 5 293 0
 125 000f 488B4748 		mov	rax, QWORD PTR [rdi+72]	# D.36447, MEM[(const struct basic_string *)this_2(D) + 72B]._M_datapl
 126              	.LBE492:
 127              	.LBE491:
 128              	.LBE490:
 129              	.LBE489:
 294:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 295:/usr/include/c++/4.8.2/bits/basic_string.h ****       _CharT*
 296:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_data(_CharT* __p)
 297:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return (_M_dataplus._M_p = __p); }
 298:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 299:/usr/include/c++/4.8.2/bits/basic_string.h ****       _Rep*
 300:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_rep() const
 301:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
 302:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 303:/usr/include/c++/4.8.2/bits/basic_string.h ****       // For the internal use we have functions similar to `begin'/`end'
 304:/usr/include/c++/4.8.2/bits/basic_string.h ****       // but they do not call _M_leak.
 305:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
 306:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_ibegin() const
 307:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return iterator(_M_data()); }
 308:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 309:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
 310:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_iend() const
 311:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return iterator(_M_data() + this->size()); }
 312:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 313:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 314:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_leak()    // for use in begin() & non-const op[]
 315:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 316:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (!_M_rep()->_M_is_leaked())
 317:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  _M_leak_hard();
 318:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 319:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 320:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
 321:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_check(size_type __pos, const char* __s) const
 322:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 323:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__pos > this->size())
 324:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  __throw_out_of_range(__N(__s));
 325:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return __pos;
 326:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 327:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 328:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 329:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_check_length(size_type __n1, size_type __n2, const char* __s) const
 330:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 331:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (this->max_size() - (this->size() - __n1) < __n2)
 332:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  __throw_length_error(__N(__s));
 333:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 334:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 335:/usr/include/c++/4.8.2/bits/basic_string.h ****       // NB: _M_limit doesn't check for a bad __pos value.
 336:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
 337:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_limit(size_type __pos, size_type __off) const
 338:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 339:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const bool __testoff =  __off < this->size() - __pos;
 340:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return __testoff ? __off : this->size() - __pos;
 341:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 342:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 343:/usr/include/c++/4.8.2/bits/basic_string.h ****       // True if _Rep and source do not overlap.
 344:/usr/include/c++/4.8.2/bits/basic_string.h ****       bool
 345:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_disjunct(const _CharT* __s) const
 346:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 347:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return (less<const _CharT*>()(__s, _M_data())
 348:/usr/include/c++/4.8.2/bits/basic_string.h **** 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
 349:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 350:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 351:/usr/include/c++/4.8.2/bits/basic_string.h ****       // When __n = 1 way faster than the general multichar
 352:/usr/include/c++/4.8.2/bits/basic_string.h ****       // traits_type::copy/move/assign.
 353:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 354:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
 355:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 357:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  traits_type::assign(*__d, *__s);
 358:/usr/include/c++/4.8.2/bits/basic_string.h **** 	else
 359:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  traits_type::copy(__d, __s, __n);
 360:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 361:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 362:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 363:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_move(_CharT* __d, const _CharT* __s, size_type __n)
 364:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 365:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 366:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  traits_type::assign(*__d, *__s);
 367:/usr/include/c++/4.8.2/bits/basic_string.h **** 	else
 368:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  traits_type::move(__d, __s, __n);	  
 369:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 370:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 371:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 372:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_assign(_CharT* __d, size_type __n, _CharT __c)
 373:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 374:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 375:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  traits_type::assign(*__d, __c);
 376:/usr/include/c++/4.8.2/bits/basic_string.h **** 	else
 377:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  traits_type::assign(__d, __n, __c);	  
 378:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 379:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 380:/usr/include/c++/4.8.2/bits/basic_string.h ****       // _S_copy_chars is a separate template to permit specialization
 381:/usr/include/c++/4.8.2/bits/basic_string.h ****       // to optimize for the common case of pointers as iterators.
 382:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _Iterator>
 383:/usr/include/c++/4.8.2/bits/basic_string.h ****         static void
 384:/usr/include/c++/4.8.2/bits/basic_string.h ****         _S_copy_chars(_CharT* __p, _Iterator __k1, _Iterator __k2)
 385:/usr/include/c++/4.8.2/bits/basic_string.h ****         {
 386:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  for (; __k1 != __k2; ++__k1, ++__p)
 387:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    traits_type::assign(*__p, *__k1); // These types are off.
 388:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}
 389:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 390:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 391:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_copy_chars(_CharT* __p, iterator __k1, iterator __k2)
 392:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _S_copy_chars(__p, __k1.base(), __k2.base()); }
 393:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 394:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 395:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_copy_chars(_CharT* __p, const_iterator __k1, const_iterator __k2)
 396:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _S_copy_chars(__p, __k1.base(), __k2.base()); }
 397:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 398:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 399:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_copy_chars(_CharT* __p, _CharT* __k1, _CharT* __k2)
 400:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_copy(__p, __k1, __k2 - __k1); }
 401:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 402:/usr/include/c++/4.8.2/bits/basic_string.h ****       static void
 403:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_copy_chars(_CharT* __p, const _CharT* __k1, const _CharT* __k2)
 404:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_copy(__p, __k1, __k2 - __k1); }
 405:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 406:/usr/include/c++/4.8.2/bits/basic_string.h ****       static int
 407:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_compare(size_type __n1, size_type __n2)
 408:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 409:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const difference_type __d = difference_type(__n1 - __n2);
 410:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 411:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__d > __gnu_cxx::__numeric_traits<int>::__max)
 412:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return __gnu_cxx::__numeric_traits<int>::__max;
 413:/usr/include/c++/4.8.2/bits/basic_string.h **** 	else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
 414:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return __gnu_cxx::__numeric_traits<int>::__min;
 415:/usr/include/c++/4.8.2/bits/basic_string.h **** 	else
 416:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return int(__d);
 417:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 418:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 419:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 420:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_mutate(size_type __pos, size_type __len1, size_type __len2);
 421:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 422:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 423:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_leak_hard();
 424:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 425:/usr/include/c++/4.8.2/bits/basic_string.h ****       static _Rep&
 426:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_empty_rep()
 427:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _Rep::_S_empty_rep(); }
 428:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 429:/usr/include/c++/4.8.2/bits/basic_string.h ****     public:
 430:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Construct/copy/destroy:
 431:/usr/include/c++/4.8.2/bits/basic_string.h ****       // NB: We overload ctors in some cases instead of using default
 432:/usr/include/c++/4.8.2/bits/basic_string.h ****       // arguments, per 17.4.4.4 para. 2 item 2.
 433:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 434:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 435:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Default constructor creates an empty string.
 436:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 437:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string()
 438:/usr/include/c++/4.8.2/bits/basic_string.h **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
 439:/usr/include/c++/4.8.2/bits/basic_string.h ****       : _M_dataplus(_S_empty_rep()._M_refdata(), _Alloc()) { }
 440:/usr/include/c++/4.8.2/bits/basic_string.h **** #else
 441:/usr/include/c++/4.8.2/bits/basic_string.h ****       : _M_dataplus(_S_construct(size_type(), _CharT(), _Alloc()), _Alloc()){ }
 442:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 443:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 444:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 445:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct an empty string using allocator @a a.
 446:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 447:/usr/include/c++/4.8.2/bits/basic_string.h ****       explicit
 448:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(const _Alloc& __a);
 449:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 450:/usr/include/c++/4.8.2/bits/basic_string.h ****       // NB: per LWG issue 42, semantics different from IS:
 451:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 452:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string with copy of value of @a str.
 453:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string.
 454:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 455:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(const basic_string& __str);
 456:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 457:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string as copy of a substring.
 458:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string.
 459:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __pos  Index of first character to copy from.
 460:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __n  Number of characters to copy (default remainder).
 461:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 462:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(const basic_string& __str, size_type __pos,
 463:/usr/include/c++/4.8.2/bits/basic_string.h **** 		   size_type __n = npos);
 464:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 465:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string as copy of a substring.
 466:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string.
 467:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __pos  Index of first character to copy from.
 468:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __n  Number of characters to copy.
 469:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __a  Allocator to use.
 470:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 471:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(const basic_string& __str, size_type __pos,
 472:/usr/include/c++/4.8.2/bits/basic_string.h **** 		   size_type __n, const _Alloc& __a);
 473:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 474:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 475:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string initialized by a character %array.
 476:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __s  Source character %array.
 477:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __n  Number of characters to copy.
 478:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __a  Allocator to use (default is default allocator).
 479:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 480:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  NB: @a __s must have at least @a __n characters, &apos;\\0&apos;
 481:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  has no special meaning.
 482:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 483:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(const _CharT* __s, size_type __n,
 484:/usr/include/c++/4.8.2/bits/basic_string.h **** 		   const _Alloc& __a = _Alloc());
 485:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 486:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string as copy of a C string.
 487:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __s  Source C string.
 488:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __a  Allocator to use (default is default allocator).
 489:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 490:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(const _CharT* __s, const _Alloc& __a = _Alloc());
 491:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 492:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string as multiple characters.
 493:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __n  Number of characters.
 494:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __c  Character to use.
 495:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __a  Allocator to use (default is default allocator).
 496:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 497:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(size_type __n, _CharT __c, const _Alloc& __a = _Alloc());
 498:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 499:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
 500:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 501:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Move construct string.
 502:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string.
 503:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 504:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The newly-created string contains the exact contents of @a __str.
 505:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __str is a valid, but unspecified string.
 506:/usr/include/c++/4.8.2/bits/basic_string.h ****        **/
 507:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(basic_string&& __str) noexcept
 508:/usr/include/c++/4.8.2/bits/basic_string.h ****       : _M_dataplus(__str._M_dataplus)
 509:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 510:/usr/include/c++/4.8.2/bits/basic_string.h **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
 511:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__str._M_data(_S_empty_rep()._M_refdata());
 512:/usr/include/c++/4.8.2/bits/basic_string.h **** #else
 513:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__str._M_data(_S_construct(size_type(), _CharT(), get_allocator()));
 514:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 515:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 516:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 517:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 518:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string from an initializer %list.
 519:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __l  std::initializer_list of characters.
 520:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __a  Allocator to use (default is default allocator).
 521:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 522:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string(initializer_list<_CharT> __l, const _Alloc& __a = _Alloc());
 523:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
 524:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 525:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 526:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Construct string as copy of a range.
 527:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __beg  Start of range.
 528:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __end  End of range.
 529:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __a  Allocator to use (default is default allocator).
 530:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 531:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InputIterator>
 532:/usr/include/c++/4.8.2/bits/basic_string.h ****         basic_string(_InputIterator __beg, _InputIterator __end,
 533:/usr/include/c++/4.8.2/bits/basic_string.h **** 		     const _Alloc& __a = _Alloc());
 534:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 535:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 536:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Destroy the string instance.
 537:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 538:/usr/include/c++/4.8.2/bits/basic_string.h ****       ~basic_string() _GLIBCXX_NOEXCEPT
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 130              		.loc 5 539 0
 131 0013 488D78E8 		lea	rdi, [rax-24]	# D.36448,
 132              	.LVL5:
 133              	.LBB493:
 134              	.LBB494:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 135              		.loc 5 240 0
 136 0017 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.36448,
 136      000000
 137 001e 7516     		jne	.L11	#,
 138              	.LVL6:
 139              	.L5:
 140              	.LBE494:
 141              	.LBE493:
 142              	.LBE488:
 143              	.LBE487:
 144              	.LBB508:
 145              	.LBB509:
 146              		.file 6 "/usr/include/c++/4.8.2/streambuf"
   1:/usr/include/c++/4.8.2/streambuf **** // Stream buffer classes -*- C++ -*-
   2:/usr/include/c++/4.8.2/streambuf **** 
   3:/usr/include/c++/4.8.2/streambuf **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/streambuf **** //
   5:/usr/include/c++/4.8.2/streambuf **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/streambuf **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/streambuf **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/streambuf **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/streambuf **** // any later version.
  10:/usr/include/c++/4.8.2/streambuf **** 
  11:/usr/include/c++/4.8.2/streambuf **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/streambuf **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/streambuf **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/streambuf **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/streambuf **** 
  16:/usr/include/c++/4.8.2/streambuf **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/streambuf **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/streambuf **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/streambuf **** 
  20:/usr/include/c++/4.8.2/streambuf **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/streambuf **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/streambuf **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/streambuf **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/streambuf **** 
  25:/usr/include/c++/4.8.2/streambuf **** /** @file include/streambuf
  26:/usr/include/c++/4.8.2/streambuf ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/4.8.2/streambuf ****  */
  28:/usr/include/c++/4.8.2/streambuf **** 
  29:/usr/include/c++/4.8.2/streambuf **** //
  30:/usr/include/c++/4.8.2/streambuf **** // ISO C++ 14882: 27.5  Stream buffers
  31:/usr/include/c++/4.8.2/streambuf **** //
  32:/usr/include/c++/4.8.2/streambuf **** 
  33:/usr/include/c++/4.8.2/streambuf **** #ifndef _GLIBXX_STREAMBUF
  34:/usr/include/c++/4.8.2/streambuf **** #define _GLIBXX_STREAMBUF 1
  35:/usr/include/c++/4.8.2/streambuf **** 
  36:/usr/include/c++/4.8.2/streambuf **** #pragma GCC system_header
  37:/usr/include/c++/4.8.2/streambuf **** 
  38:/usr/include/c++/4.8.2/streambuf **** #include <bits/c++config.h>
  39:/usr/include/c++/4.8.2/streambuf **** #include <iosfwd>
  40:/usr/include/c++/4.8.2/streambuf **** #include <bits/localefwd.h>
  41:/usr/include/c++/4.8.2/streambuf **** #include <bits/ios_base.h>
  42:/usr/include/c++/4.8.2/streambuf **** #include <bits/cpp_type_traits.h>
  43:/usr/include/c++/4.8.2/streambuf **** #include <ext/type_traits.h>
  44:/usr/include/c++/4.8.2/streambuf **** 
  45:/usr/include/c++/4.8.2/streambuf **** namespace std _GLIBCXX_VISIBILITY(default)
  46:/usr/include/c++/4.8.2/streambuf **** {
  47:/usr/include/c++/4.8.2/streambuf **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  48:/usr/include/c++/4.8.2/streambuf **** 
  49:/usr/include/c++/4.8.2/streambuf ****   template<typename _CharT, typename _Traits>
  50:/usr/include/c++/4.8.2/streambuf ****     streamsize
  51:/usr/include/c++/4.8.2/streambuf ****     __copy_streambufs_eof(basic_streambuf<_CharT, _Traits>*,
  52:/usr/include/c++/4.8.2/streambuf **** 			  basic_streambuf<_CharT, _Traits>*, bool&);
  53:/usr/include/c++/4.8.2/streambuf **** 
  54:/usr/include/c++/4.8.2/streambuf ****   /**
  55:/usr/include/c++/4.8.2/streambuf ****    *  @brief  The actual work of input and output (interface).
  56:/usr/include/c++/4.8.2/streambuf ****    *  @ingroup io
  57:/usr/include/c++/4.8.2/streambuf ****    *
  58:/usr/include/c++/4.8.2/streambuf ****    *  @tparam _CharT  Type of character stream.
  59:/usr/include/c++/4.8.2/streambuf ****    *  @tparam _Traits  Traits for character type, defaults to
  60:/usr/include/c++/4.8.2/streambuf ****    *                   char_traits<_CharT>.
  61:/usr/include/c++/4.8.2/streambuf ****    *
  62:/usr/include/c++/4.8.2/streambuf ****    *  This is a base class.  Derived stream buffers each control a
  63:/usr/include/c++/4.8.2/streambuf ****    *  pair of character sequences:  one for input, and one for output.
  64:/usr/include/c++/4.8.2/streambuf ****    *
  65:/usr/include/c++/4.8.2/streambuf ****    *  Section [27.5.1] of the standard describes the requirements and
  66:/usr/include/c++/4.8.2/streambuf ****    *  behavior of stream buffer classes.  That section (three paragraphs)
  67:/usr/include/c++/4.8.2/streambuf ****    *  is reproduced here, for simplicity and accuracy.
  68:/usr/include/c++/4.8.2/streambuf ****    *
  69:/usr/include/c++/4.8.2/streambuf ****    *  -# Stream buffers can impose various constraints on the sequences
  70:/usr/include/c++/4.8.2/streambuf ****    *     they control.  Some constraints are:
  71:/usr/include/c++/4.8.2/streambuf ****    *     - The controlled input sequence can be not readable.
  72:/usr/include/c++/4.8.2/streambuf ****    *     - The controlled output sequence can be not writable.
  73:/usr/include/c++/4.8.2/streambuf ****    *     - The controlled sequences can be associated with the contents of
  74:/usr/include/c++/4.8.2/streambuf ****    *       other representations for character sequences, such as external
  75:/usr/include/c++/4.8.2/streambuf ****    *       files.
  76:/usr/include/c++/4.8.2/streambuf ****    *     - The controlled sequences can support operations @e directly to or
  77:/usr/include/c++/4.8.2/streambuf ****    *       from associated sequences.
  78:/usr/include/c++/4.8.2/streambuf ****    *     - The controlled sequences can impose limitations on how the
  79:/usr/include/c++/4.8.2/streambuf ****    *       program can read characters from a sequence, write characters to
  80:/usr/include/c++/4.8.2/streambuf ****    *       a sequence, put characters back into an input sequence, or alter
  81:/usr/include/c++/4.8.2/streambuf ****    *       the stream position.
  82:/usr/include/c++/4.8.2/streambuf ****    *     .
  83:/usr/include/c++/4.8.2/streambuf ****    *  -# Each sequence is characterized by three pointers which, if non-null,
  84:/usr/include/c++/4.8.2/streambuf ****    *     all point into the same @c charT array object.  The array object
  85:/usr/include/c++/4.8.2/streambuf ****    *     represents, at any moment, a (sub)sequence of characters from the
  86:/usr/include/c++/4.8.2/streambuf ****    *     sequence.  Operations performed on a sequence alter the values
  87:/usr/include/c++/4.8.2/streambuf ****    *     stored in these pointers, perform reads and writes directly to or
  88:/usr/include/c++/4.8.2/streambuf ****    *     from associated sequences, and alter <em>the stream position</em> and
  89:/usr/include/c++/4.8.2/streambuf ****    *     conversion state as needed to maintain this subsequence relationship.
  90:/usr/include/c++/4.8.2/streambuf ****    *     The three pointers are:
  91:/usr/include/c++/4.8.2/streambuf ****    *     - the <em>beginning pointer</em>, or lowest element address in the
  92:/usr/include/c++/4.8.2/streambuf ****    *       array (called @e xbeg here);
  93:/usr/include/c++/4.8.2/streambuf ****    *     - the <em>next pointer</em>, or next element address that is a
  94:/usr/include/c++/4.8.2/streambuf ****    *       current candidate for reading or writing (called @e xnext here);
  95:/usr/include/c++/4.8.2/streambuf ****    *     - the <em>end pointer</em>, or first element address beyond the
  96:/usr/include/c++/4.8.2/streambuf ****    *       end of the array (called @e xend here).
  97:/usr/include/c++/4.8.2/streambuf ****    *     .
  98:/usr/include/c++/4.8.2/streambuf ****    *  -# The following semantic constraints shall always apply for any set
  99:/usr/include/c++/4.8.2/streambuf ****    *     of three pointers for a sequence, using the pointer names given
 100:/usr/include/c++/4.8.2/streambuf ****    *     immediately above:
 101:/usr/include/c++/4.8.2/streambuf ****    *     - If @e xnext is not a null pointer, then @e xbeg and @e xend shall
 102:/usr/include/c++/4.8.2/streambuf ****    *       also be non-null pointers into the same @c charT array, as
 103:/usr/include/c++/4.8.2/streambuf ****    *       described above; otherwise, @e xbeg and @e xend shall also be null.
 104:/usr/include/c++/4.8.2/streambuf ****    *     - If @e xnext is not a null pointer and @e xnext < @e xend for an
 105:/usr/include/c++/4.8.2/streambuf ****    *       output sequence, then a <em>write position</em> is available.
 106:/usr/include/c++/4.8.2/streambuf ****    *       In this case, @e *xnext shall be assignable as the next element
 107:/usr/include/c++/4.8.2/streambuf ****    *       to write (to put, or to store a character value, into the sequence).
 108:/usr/include/c++/4.8.2/streambuf ****    *     - If @e xnext is not a null pointer and @e xbeg < @e xnext for an
 109:/usr/include/c++/4.8.2/streambuf ****    *       input sequence, then a <em>putback position</em> is available.
 110:/usr/include/c++/4.8.2/streambuf ****    *       In this case, @e xnext[-1] shall have a defined value and is the
 111:/usr/include/c++/4.8.2/streambuf ****    *       next (preceding) element to store a character that is put back
 112:/usr/include/c++/4.8.2/streambuf ****    *       into the input sequence.
 113:/usr/include/c++/4.8.2/streambuf ****    *     - If @e xnext is not a null pointer and @e xnext< @e xend for an
 114:/usr/include/c++/4.8.2/streambuf ****    *       input sequence, then a <em>read position</em> is available.
 115:/usr/include/c++/4.8.2/streambuf ****    *       In this case, @e *xnext shall have a defined value and is the
 116:/usr/include/c++/4.8.2/streambuf ****    *       next element to read (to get, or to obtain a character value,
 117:/usr/include/c++/4.8.2/streambuf ****    *       from the sequence).
 118:/usr/include/c++/4.8.2/streambuf ****   */
 119:/usr/include/c++/4.8.2/streambuf ****   template<typename _CharT, typename _Traits>
 120:/usr/include/c++/4.8.2/streambuf ****     class basic_streambuf 
 121:/usr/include/c++/4.8.2/streambuf ****     {
 122:/usr/include/c++/4.8.2/streambuf ****     public:
 123:/usr/include/c++/4.8.2/streambuf ****       //@{
 124:/usr/include/c++/4.8.2/streambuf ****       /**
 125:/usr/include/c++/4.8.2/streambuf ****        *  These are standard types.  They permit a standardized way of
 126:/usr/include/c++/4.8.2/streambuf ****        *  referring to names of (or names dependent on) the template
 127:/usr/include/c++/4.8.2/streambuf ****        *  parameters, which are specific to the implementation.
 128:/usr/include/c++/4.8.2/streambuf ****       */
 129:/usr/include/c++/4.8.2/streambuf ****       typedef _CharT 					char_type;
 130:/usr/include/c++/4.8.2/streambuf ****       typedef _Traits 					traits_type;
 131:/usr/include/c++/4.8.2/streambuf ****       typedef typename traits_type::int_type 		int_type;
 132:/usr/include/c++/4.8.2/streambuf ****       typedef typename traits_type::pos_type 		pos_type;
 133:/usr/include/c++/4.8.2/streambuf ****       typedef typename traits_type::off_type 		off_type;
 134:/usr/include/c++/4.8.2/streambuf ****       //@}
 135:/usr/include/c++/4.8.2/streambuf **** 
 136:/usr/include/c++/4.8.2/streambuf ****       //@{
 137:/usr/include/c++/4.8.2/streambuf ****       /// This is a non-standard type.
 138:/usr/include/c++/4.8.2/streambuf ****       typedef basic_streambuf<char_type, traits_type>  	__streambuf_type;
 139:/usr/include/c++/4.8.2/streambuf ****       //@}
 140:/usr/include/c++/4.8.2/streambuf ****       
 141:/usr/include/c++/4.8.2/streambuf ****       friend class basic_ios<char_type, traits_type>;
 142:/usr/include/c++/4.8.2/streambuf ****       friend class basic_istream<char_type, traits_type>;
 143:/usr/include/c++/4.8.2/streambuf ****       friend class basic_ostream<char_type, traits_type>;
 144:/usr/include/c++/4.8.2/streambuf ****       friend class istreambuf_iterator<char_type, traits_type>;
 145:/usr/include/c++/4.8.2/streambuf ****       friend class ostreambuf_iterator<char_type, traits_type>;
 146:/usr/include/c++/4.8.2/streambuf **** 
 147:/usr/include/c++/4.8.2/streambuf ****       friend streamsize
 148:/usr/include/c++/4.8.2/streambuf ****       __copy_streambufs_eof<>(basic_streambuf*, basic_streambuf*, bool&);
 149:/usr/include/c++/4.8.2/streambuf **** 
 150:/usr/include/c++/4.8.2/streambuf ****       template<bool _IsMove, typename _CharT2>
 151:/usr/include/c++/4.8.2/streambuf ****         friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value, 
 152:/usr/include/c++/4.8.2/streambuf **** 					       _CharT2*>::__type
 153:/usr/include/c++/4.8.2/streambuf ****         __copy_move_a2(istreambuf_iterator<_CharT2>,
 154:/usr/include/c++/4.8.2/streambuf **** 		       istreambuf_iterator<_CharT2>, _CharT2*);
 155:/usr/include/c++/4.8.2/streambuf **** 
 156:/usr/include/c++/4.8.2/streambuf ****       template<typename _CharT2>
 157:/usr/include/c++/4.8.2/streambuf ****         friend typename __gnu_cxx::__enable_if<__is_char<_CharT2>::__value,
 158:/usr/include/c++/4.8.2/streambuf **** 				  istreambuf_iterator<_CharT2> >::__type
 159:/usr/include/c++/4.8.2/streambuf ****         find(istreambuf_iterator<_CharT2>, istreambuf_iterator<_CharT2>,
 160:/usr/include/c++/4.8.2/streambuf **** 	     const _CharT2&);
 161:/usr/include/c++/4.8.2/streambuf **** 
 162:/usr/include/c++/4.8.2/streambuf ****       template<typename _CharT2, typename _Traits2>
 163:/usr/include/c++/4.8.2/streambuf ****         friend basic_istream<_CharT2, _Traits2>&
 164:/usr/include/c++/4.8.2/streambuf ****         operator>>(basic_istream<_CharT2, _Traits2>&, _CharT2*);
 165:/usr/include/c++/4.8.2/streambuf **** 
 166:/usr/include/c++/4.8.2/streambuf ****       template<typename _CharT2, typename _Traits2, typename _Alloc>
 167:/usr/include/c++/4.8.2/streambuf ****         friend basic_istream<_CharT2, _Traits2>&
 168:/usr/include/c++/4.8.2/streambuf ****         operator>>(basic_istream<_CharT2, _Traits2>&,
 169:/usr/include/c++/4.8.2/streambuf **** 		   basic_string<_CharT2, _Traits2, _Alloc>&);
 170:/usr/include/c++/4.8.2/streambuf **** 
 171:/usr/include/c++/4.8.2/streambuf ****       template<typename _CharT2, typename _Traits2, typename _Alloc>
 172:/usr/include/c++/4.8.2/streambuf ****         friend basic_istream<_CharT2, _Traits2>&
 173:/usr/include/c++/4.8.2/streambuf ****         getline(basic_istream<_CharT2, _Traits2>&,
 174:/usr/include/c++/4.8.2/streambuf **** 		basic_string<_CharT2, _Traits2, _Alloc>&, _CharT2);
 175:/usr/include/c++/4.8.2/streambuf **** 
 176:/usr/include/c++/4.8.2/streambuf ****     protected:
 177:/usr/include/c++/4.8.2/streambuf ****       /*
 178:/usr/include/c++/4.8.2/streambuf ****        *  This is based on _IO_FILE, just reordered to be more consistent,
 179:/usr/include/c++/4.8.2/streambuf ****        *  and is intended to be the most minimal abstraction for an
 180:/usr/include/c++/4.8.2/streambuf ****        *  internal buffer.
 181:/usr/include/c++/4.8.2/streambuf ****        *  -  get == input == read
 182:/usr/include/c++/4.8.2/streambuf ****        *  -  put == output == write
 183:/usr/include/c++/4.8.2/streambuf ****       */
 184:/usr/include/c++/4.8.2/streambuf ****       char_type* 		_M_in_beg;     ///< Start of get area.
 185:/usr/include/c++/4.8.2/streambuf ****       char_type* 		_M_in_cur;     ///< Current read area.
 186:/usr/include/c++/4.8.2/streambuf ****       char_type* 		_M_in_end;     ///< End of get area.
 187:/usr/include/c++/4.8.2/streambuf ****       char_type* 		_M_out_beg;    ///< Start of put area.
 188:/usr/include/c++/4.8.2/streambuf ****       char_type* 		_M_out_cur;    ///< Current put area.
 189:/usr/include/c++/4.8.2/streambuf ****       char_type* 		_M_out_end;    ///< End of put area.
 190:/usr/include/c++/4.8.2/streambuf **** 
 191:/usr/include/c++/4.8.2/streambuf ****       /// Current locale setting.
 192:/usr/include/c++/4.8.2/streambuf ****       locale 			_M_buf_locale;	
 193:/usr/include/c++/4.8.2/streambuf **** 
 194:/usr/include/c++/4.8.2/streambuf ****   public:
 195:/usr/include/c++/4.8.2/streambuf ****       /// Destructor deallocates no buffer space.
 196:/usr/include/c++/4.8.2/streambuf ****       virtual 
 197:/usr/include/c++/4.8.2/streambuf ****       ~basic_streambuf() 
 198:/usr/include/c++/4.8.2/streambuf ****       { }
 147              		.loc 6 198 0
 148 0020 48C70300 		mov	QWORD PTR [rbx], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct bas
 148      000000
 149 0027 488D7B38 		lea	rdi, [rbx+56]	# D.36449,
 150 002b E8000000 		call	_ZNSt6localeD1Ev	#
 150      00
 151              	.LVL7:
 152              	.LBE509:
 153              	.LBE508:
 154              	.LBE486:
 155              		.loc 4 64 0
 156 0030 4883C410 		add	rsp, 16	#,
 157              		.cfi_remember_state
 158              		.cfi_def_cfa_offset 16
 159 0034 5B       		pop	rbx	#
 160              		.cfi_def_cfa_offset 8
 161              	.LVL8:
 162 0035 C3       		ret
 163              	.LVL9:
 164              	.L11:
 165              		.cfi_restore_state
 166              	.LBB511:
 167              	.LBB510:
 168              	.LBB507:
 169              	.LBB506:
 170              	.LBB505:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 171              		.loc 5 246 0
 172 0036 488D5710 		lea	rdx, [rdi+16]	# D.36450,
 173              	.LVL10:
 174              	.LBB495:
 175              	.LBB496:
 176              		.file 7 "/usr/include/c++/4.8.2/ext/atomicity.h"
   1:/usr/include/c++/4.8.2/ext/atomicity.h **** // Support for atomic operations -*- C++ -*-
   2:/usr/include/c++/4.8.2/ext/atomicity.h **** 
   3:/usr/include/c++/4.8.2/ext/atomicity.h **** // Copyright (C) 2004-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/ext/atomicity.h **** //
   5:/usr/include/c++/4.8.2/ext/atomicity.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/ext/atomicity.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/ext/atomicity.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/ext/atomicity.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/ext/atomicity.h **** // any later version.
  10:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  11:/usr/include/c++/4.8.2/ext/atomicity.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/ext/atomicity.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/ext/atomicity.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/ext/atomicity.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  16:/usr/include/c++/4.8.2/ext/atomicity.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/ext/atomicity.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/ext/atomicity.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  20:/usr/include/c++/4.8.2/ext/atomicity.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/ext/atomicity.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/ext/atomicity.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/ext/atomicity.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  25:/usr/include/c++/4.8.2/ext/atomicity.h **** /** @file ext/atomicity.h
  26:/usr/include/c++/4.8.2/ext/atomicity.h ****  *  This file is a GNU extension to the Standard C++ Library.
  27:/usr/include/c++/4.8.2/ext/atomicity.h ****  */
  28:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  29:/usr/include/c++/4.8.2/ext/atomicity.h **** #ifndef _GLIBCXX_ATOMICITY_H
  30:/usr/include/c++/4.8.2/ext/atomicity.h **** #define _GLIBCXX_ATOMICITY_H	1
  31:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  32:/usr/include/c++/4.8.2/ext/atomicity.h **** #pragma GCC system_header
  33:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  34:/usr/include/c++/4.8.2/ext/atomicity.h **** #include <bits/c++config.h>
  35:/usr/include/c++/4.8.2/ext/atomicity.h **** #include <bits/gthr.h>
  36:/usr/include/c++/4.8.2/ext/atomicity.h **** #include <bits/atomic_word.h>
  37:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  38:/usr/include/c++/4.8.2/ext/atomicity.h **** namespace __gnu_cxx _GLIBCXX_VISIBILITY(default)
  39:/usr/include/c++/4.8.2/ext/atomicity.h **** {
  40:/usr/include/c++/4.8.2/ext/atomicity.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  41:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  42:/usr/include/c++/4.8.2/ext/atomicity.h ****   // Functions for portable atomic access.
  43:/usr/include/c++/4.8.2/ext/atomicity.h ****   // To abstract locking primitives across all thread policies, use:
  44:/usr/include/c++/4.8.2/ext/atomicity.h ****   // __exchange_and_add_dispatch
  45:/usr/include/c++/4.8.2/ext/atomicity.h ****   // __atomic_add_dispatch
  46:/usr/include/c++/4.8.2/ext/atomicity.h **** #ifdef _GLIBCXX_ATOMIC_BUILTINS
  47:/usr/include/c++/4.8.2/ext/atomicity.h ****   static inline _Atomic_word 
  48:/usr/include/c++/4.8.2/ext/atomicity.h ****   __exchange_and_add(volatile _Atomic_word* __mem, int __val)
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
  50:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  51:/usr/include/c++/4.8.2/ext/atomicity.h ****   static inline void
  52:/usr/include/c++/4.8.2/ext/atomicity.h ****   __atomic_add(volatile _Atomic_word* __mem, int __val)
  53:/usr/include/c++/4.8.2/ext/atomicity.h ****   { __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
  54:/usr/include/c++/4.8.2/ext/atomicity.h **** #else
  55:/usr/include/c++/4.8.2/ext/atomicity.h ****   _Atomic_word
  56:/usr/include/c++/4.8.2/ext/atomicity.h ****   __attribute__ ((__unused__))
  57:/usr/include/c++/4.8.2/ext/atomicity.h ****   __exchange_and_add(volatile _Atomic_word*, int) throw ();
  58:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  59:/usr/include/c++/4.8.2/ext/atomicity.h ****   void
  60:/usr/include/c++/4.8.2/ext/atomicity.h ****   __attribute__ ((__unused__))
  61:/usr/include/c++/4.8.2/ext/atomicity.h ****   __atomic_add(volatile _Atomic_word*, int) throw ();
  62:/usr/include/c++/4.8.2/ext/atomicity.h **** #endif
  63:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  64:/usr/include/c++/4.8.2/ext/atomicity.h ****   static inline _Atomic_word
  65:/usr/include/c++/4.8.2/ext/atomicity.h ****   __exchange_and_add_single(_Atomic_word* __mem, int __val)
  66:/usr/include/c++/4.8.2/ext/atomicity.h ****   {
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
  69:/usr/include/c++/4.8.2/ext/atomicity.h ****     return __result;
  70:/usr/include/c++/4.8.2/ext/atomicity.h ****   }
  71:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  72:/usr/include/c++/4.8.2/ext/atomicity.h ****   static inline void
  73:/usr/include/c++/4.8.2/ext/atomicity.h ****   __atomic_add_single(_Atomic_word* __mem, int __val)
  74:/usr/include/c++/4.8.2/ext/atomicity.h ****   { *__mem += __val; }
  75:/usr/include/c++/4.8.2/ext/atomicity.h **** 
  76:/usr/include/c++/4.8.2/ext/atomicity.h ****   static inline _Atomic_word
  77:/usr/include/c++/4.8.2/ext/atomicity.h ****   __attribute__ ((__unused__))
  78:/usr/include/c++/4.8.2/ext/atomicity.h ****   __exchange_and_add_dispatch(_Atomic_word* __mem, int __val)
  79:/usr/include/c++/4.8.2/ext/atomicity.h ****   {
  80:/usr/include/c++/4.8.2/ext/atomicity.h **** #ifdef __GTHREADS
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 177              		.loc 7 81 0
 178 003a B9000000 		mov	ecx, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp69,
 178      00
 179 003f 4885C9   		test	rcx, rcx	# tmp69
 180 0042 741A     		je	.L6	#,
 181              	.LVL11:
 182              	.LBB497:
 183              	.LBB498:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 184              		.loc 7 49 0
 185 0044 4183C9FF 		or	r9d, -1	# D.36451,
 186 0048 F0440FC1 		lock xadd	DWORD PTR [rdx], r9d	#,* D.36450, D.36451
 186      0A
 187              	.LVL12:
 188              	.L7:
 189              	.LBE498:
 190              	.LBE497:
 191              	.LBE496:
 192              	.LBE495:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 193              		.loc 5 245 0
 194 004d 4585C9   		test	r9d, r9d	# D.36453
 195 0050 7FCE     		jg	.L5	#,
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 196              		.loc 5 249 0
 197 0052 488D7424 		lea	rsi, [rsp+15]	# tmp74,
 197      0F
 198              	.LVL13:
 199 0057 E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 199      00
 200              	.LVL14:
 201 005c EBC2     		jmp	.L5	#
 202              	.LVL15:
 203              	.L6:
 204              	.LBB504:
 205              	.LBB503:
 206              	.LBB499:
 207              	.LBB500:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 208              		.loc 7 67 0
 209 005e 8B70F8   		mov	esi, DWORD PTR [rax-8]	# __result, MEM[(_Atomic_word *)_6 + -8B]
 210              	.LVL16:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 211              		.loc 7 68 0
 212 0061 448D46FF 		lea	r8d, [rsi-1]	# tmp70,
 213              	.LBE500:
 214              	.LBE499:
  82:/usr/include/c++/4.8.2/ext/atomicity.h ****       return __exchange_and_add(__mem, __val);
  83:/usr/include/c++/4.8.2/ext/atomicity.h ****     else
  84:/usr/include/c++/4.8.2/ext/atomicity.h ****       return __exchange_and_add_single(__mem, __val);
 215              		.loc 7 84 0
 216 0065 4189F1   		mov	r9d, esi	# D.36453, __result
 217              	.LBB502:
 218              	.LBB501:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 219              		.loc 7 68 0
 220 0068 448940F8 		mov	DWORD PTR [rax-8], r8d	# MEM[(_Atomic_word *)_6 + -8B], tmp70
 221 006c EBDF     		jmp	.L7	#
 222              	.LBE501:
 223              	.LBE502:
 224              	.LBE503:
 225              	.LBE504:
 226              	.LBE505:
 227              	.LBE506:
 228              	.LBE507:
 229              	.LBE510:
 230              	.LBE511:
 231              		.cfi_endproc
 232              	.LFE1538:
 234              		.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
 235              		.set	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev,_ZNSt15basic_stringbufIcSt11char_traitsI
 236              		.section	.text._ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev,"axG",@progbits,_ZNSt15basic_s
 237              		.align 2
 238              		.p2align 4,,15
 239              		.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev
 241              	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev:
 242              	.LFB1540:
 243              		.loc 4 64 0
 244              		.cfi_startproc
 245              	.LVL17:
 246 0000 53       		push	rbx	#
 247              		.cfi_def_cfa_offset 16
 248              		.cfi_offset 3, -16
 249 0001 4889FB   		mov	rbx, rdi	# this, this
 250 0004 4883EC10 		sub	rsp, 16	#,
 251              		.cfi_def_cfa_offset 32
 252              	.LBB533:
 253              	.LBB534:
 254              		.loc 4 64 0
 255 0008 48C70700 		mov	QWORD PTR [rdi], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# this_2(D)-
 255      000000
 256              	.LVL18:
 257              	.LBB535:
 258              	.LBB536:
 259              	.LBB537:
 260              	.LBB538:
 261              	.LBB539:
 262              	.LBB540:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 263              		.loc 5 293 0
 264 000f 488B4748 		mov	rax, QWORD PTR [rdi+72]	# D.36471, MEM[(const struct basic_string *)this_2(D) + 72B]._M_datapl
 265              	.LBE540:
 266              	.LBE539:
 267              	.LBE538:
 268              	.LBE537:
 269              		.loc 5 539 0
 270 0013 488D78E8 		lea	rdi, [rax-24]	# D.36472,
 271              	.LVL19:
 272              	.LBB541:
 273              	.LBB542:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 274              		.loc 5 240 0
 275 0017 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.36472,
 275      000000
 276 001e 751E     		jne	.L19	#,
 277              	.LVL20:
 278              	.L14:
 279              	.LBE542:
 280              	.LBE541:
 281              	.LBE536:
 282              	.LBE535:
 283              	.LBB556:
 284              	.LBB557:
 285              		.loc 6 198 0
 286 0020 488D7B38 		lea	rdi, [rbx+56]	# D.36473,
 287 0024 48C70300 		mov	QWORD PTR [rbx], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct bas
 287      000000
 288 002b E8000000 		call	_ZNSt6localeD1Ev	#
 288      00
 289              	.LVL21:
 290              	.LBE557:
 291              	.LBE556:
 292              	.LBE534:
 293              	.LBE533:
 294              		.loc 4 64 0
 295 0030 4889DF   		mov	rdi, rbx	#, this
 296 0033 E8000000 		call	_ZdlPv	#
 296      00
 297              	.LVL22:
 298 0038 4883C410 		add	rsp, 16	#,
 299              		.cfi_remember_state
 300              		.cfi_def_cfa_offset 16
 301 003c 5B       		pop	rbx	#
 302              		.cfi_def_cfa_offset 8
 303              	.LVL23:
 304 003d C3       		ret
 305              	.LVL24:
 306              	.L19:
 307              		.cfi_restore_state
 308              	.LBB560:
 309              	.LBB559:
 310              	.LBB558:
 311              	.LBB555:
 312              	.LBB554:
 313              	.LBB553:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 314              		.loc 5 246 0
 315 003e 488D5710 		lea	rdx, [rdi+16]	# D.36474,
 316              	.LVL25:
 317              	.LBB543:
 318              	.LBB544:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 319              		.loc 7 81 0
 320 0042 B9000000 		mov	ecx, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp69,
 320      00
 321 0047 4885C9   		test	rcx, rcx	# tmp69
 322 004a 741A     		je	.L15	#,
 323              	.LVL26:
 324              	.LBB545:
 325              	.LBB546:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 326              		.loc 7 49 0
 327 004c 4183C9FF 		or	r9d, -1	# D.36475,
 328 0050 F0440FC1 		lock xadd	DWORD PTR [rdx], r9d	#,* D.36474, D.36475
 328      0A
 329              	.LVL27:
 330              	.L16:
 331              	.LBE546:
 332              	.LBE545:
 333              	.LBE544:
 334              	.LBE543:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 335              		.loc 5 245 0
 336 0055 4585C9   		test	r9d, r9d	# D.36477
 337 0058 7FC6     		jg	.L14	#,
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 338              		.loc 5 249 0
 339 005a 488D7424 		lea	rsi, [rsp+15]	# tmp74,
 339      0F
 340              	.LVL28:
 341 005f E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 341      00
 342              	.LVL29:
 343 0064 EBBA     		jmp	.L14	#
 344              	.LVL30:
 345              	.L15:
 346              	.LBB552:
 347              	.LBB551:
 348              	.LBB547:
 349              	.LBB548:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 350              		.loc 7 67 0
 351 0066 8B70F8   		mov	esi, DWORD PTR [rax-8]	# __result, MEM[(_Atomic_word *)_5 + -8B]
 352              	.LVL31:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 353              		.loc 7 68 0
 354 0069 448D46FF 		lea	r8d, [rsi-1]	# tmp70,
 355              	.LBE548:
 356              	.LBE547:
 357              		.loc 7 84 0
 358 006d 4189F1   		mov	r9d, esi	# D.36477, __result
 359              	.LBB550:
 360              	.LBB549:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 361              		.loc 7 68 0
 362 0070 448940F8 		mov	DWORD PTR [rax-8], r8d	# MEM[(_Atomic_word *)_5 + -8B], tmp70
 363 0074 EBDF     		jmp	.L16	#
 364              	.LBE549:
 365              	.LBE550:
 366              	.LBE551:
 367              	.LBE552:
 368              	.LBE553:
 369              	.LBE554:
 370              	.LBE555:
 371              	.LBE558:
 372              	.LBE559:
 373              	.LBE560:
 374              		.cfi_endproc
 375              	.LFE1540:
 377              		.text
 378              		.p2align 4,,15
 379              		.globl	_Z22fill_initial_conditionv
 381              	_Z22fill_initial_conditionv:
 382              	.LFB1474:
 383              		.file 8 "saya.cpp"
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
  23:saya.cpp      **** Real Uwx[2][SY][SZ];
  24:saya.cpp      **** 
  25:saya.cpp      **** void fill_initial_condition() {
 384              		.loc 8 25 0
 385              		.cfi_startproc
 386 0000 55       		push	rbp	#
 387              		.cfi_def_cfa_offset 16
 388              		.cfi_offset 6, -16
 389 0001 4889E5   		mov	rbp, rsp	#,
 390              		.cfi_def_cfa_register 6
 391 0004 4157     		push	r15	#
 392 0006 4156     		push	r14	#
 393 0008 4155     		push	r13	#
 394              		.cfi_offset 15, -24
 395              		.cfi_offset 14, -32
 396              		.cfi_offset 13, -40
 397 000a 41BD0000 		mov	r13d, OFFSET FLAT:V-800	# D.36545,
 397      0000
 398 0010 4154     		push	r12	#
 399 0012 4981ED00 		sub	r13, OFFSET FLAT:U	# D.36545,
 399      000000
 400              		.cfi_offset 12, -48
 401 0019 41BC0000 		mov	r12d, OFFSET FLAT:U+32800	# ivtmp.263,
 401      0000
 402 001f 53       		push	rbx	#
 403 0020 4883E4E0 		and	rsp, -32	#,
 404 0024 4883EC40 		sub	rsp, 64	#,
 405              		.cfi_offset 3, -56
 406              	.LBB561:
  26:saya.cpp      ****   global_clock=0;
 407              		.loc 8 26 0
 408 0028 C7050000 		mov	DWORD PTR global_clock[rip], 0	# global_clock,
 408      00000000 
 408      0000
 409              	.LVL32:
 410 0032 C5FD2805 		vmovapd	ymm0, YMMWORD PTR .LC0[rip]	# tmp145,
 410      00000000 
 411              	.LVL33:
 412              	.L21:
 413 003a 498D9C24 		lea	rbx, [r12-32000]	# ivtmp.256,
 413      0083FFFF 
 414              	.LVL34:
 415              		.p2align 4,,10
 416 0042 660F1F44 		.p2align 3
 416      0000
 417              	.L27:
 418              	.LBB562:
 419              	.LBB563:
 420              	.LBB564:
  27:saya.cpp      ****   for (int x=0;x<NX;++x) {
  28:saya.cpp      ****     for (int y=0;y<NY;++y) {
  29:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  30:saya.cpp      ****         U[x][y][z] = 1;
 421              		.loc 8 30 0 discriminator 1
 422 0048 C5FD2983 		vmovapd	YMMWORD PTR [rbx-800], ymm0	# MEM[base: _1, offset: 0B], tmp145
 422      E0FCFFFF 
 423              	.LVL35:
 424 0050 488D8300 		lea	rax, [rbx-768]	# ivtmp.245,
 424      FDFFFF
 425              	.L23:
 426              		.loc 8 30 0 is_stmt 0
 427 0057 C5FD2900 		vmovapd	YMMWORD PTR [rax], ymm0	# MEM[base: _1, offset: 0B], tmp145
 428 005b 48050001 		add	rax, 256	# ivtmp.245,
 428      0000
 429 0061 C5FD2980 		vmovapd	YMMWORD PTR [rax-224], ymm0	# MEM[base: _1, offset: 0B], tmp145
 429      20FFFFFF 
 430 0069 C5FD2980 		vmovapd	YMMWORD PTR [rax-192], ymm0	# MEM[base: _1, offset: 0B], tmp145
 430      40FFFFFF 
 431 0071 C5FD2980 		vmovapd	YMMWORD PTR [rax-160], ymm0	# MEM[base: _1, offset: 0B], tmp145
 431      60FFFFFF 
 432 0079 C5FD2940 		vmovapd	YMMWORD PTR [rax-128], ymm0	# MEM[base: _1, offset: 0B], tmp145
 432      80
 433 007e C5FD2940 		vmovapd	YMMWORD PTR [rax-96], ymm0	# MEM[base: _1, offset: 0B], tmp145
 433      A0
 434 0083 C5FD2940 		vmovapd	YMMWORD PTR [rax-64], ymm0	# MEM[base: _1, offset: 0B], tmp145
 434      C0
 435 0088 C5FD2940 		vmovapd	YMMWORD PTR [rax-32], ymm0	# MEM[base: _1, offset: 0B], tmp145
 435      E0
 436 008d 4839C3   		cmp	rbx, rax	# ivtmp.256, ivtmp.245
 437 0090 75C5     		jne	.L23	#,
 438 0092 498D7C1D 		lea	rdi, [r13+0+rbx]	# D.36545,
 438      00
 439 0097 BA200300 		mov	edx, 800	#,
 439      00
 440 009c 31F6     		xor	esi, esi	#
 441 009e C5FD2944 		vmovapd	YMMWORD PTR [rsp+32], ymm0	# %sfp, tmp145
 441      2420
 442 00a4 C5F877   		vzeroupper
 443 00a7 4881C320 		add	rbx, 800	# ivtmp.256,
 443      030000
 444 00ae E8000000 		call	memset	#
 444      00
 445              	.LVL36:
 446              	.LBE564:
  28:saya.cpp      ****     for (int y=0;y<NY;++y) {
 447              		.loc 8 28 0 is_stmt 1
 448 00b3 4939DC   		cmp	r12, rbx	# ivtmp.263, ivtmp.256
 449 00b6 C5FD2844 		vmovapd	ymm0, YMMWORD PTR [rsp+32]	# tmp145, %sfp
 449      2420
 450 00bc 758A     		jne	.L27	#,
 451 00be 4981C400 		add	r12, 32000	# ivtmp.263,
 451      7D0000
 452              	.LBE563:
  27:saya.cpp      ****   for (int x=0;x<NX;++x) {
 453              		.loc 8 27 0
 454 00c5 4981FC00 		cmp	r12, OFFSET FLAT:U+1632800	# ivtmp.263,
 454      000000
 455 00cc 0F8568FF 		jne	.L21	#,
 455      FFFF
 456              	.LBE562:
 457              	.LBB565:
  31:saya.cpp      ****         V[x][y][z] = 0;
  32:saya.cpp      ****       }
  33:saya.cpp      ****     }
  34:saya.cpp      ****   }
  35:saya.cpp      ****   int bx = std::max(NX/4,NX/2-8),  ex = std::min(3*NX/4+1,NX/2+8);
  36:saya.cpp      ****   int by = std::max(NY/4,NY/2-8),  ey = std::min(3*NY/4+1,NY/2+8);
  37:saya.cpp      ****   int bz = std::max(NZ/4,NZ/2-8),  ez = std::min(3*NZ/4+1,NZ/2+8);
  38:saya.cpp      ****   for (int x=bx;x<ex;++x){
 458              		.loc 8 38 0
 459 00d2 41BD1100 		mov	r13d, 17	# x,
 459      0000
 460              	.LBE565:
 461              	.LBB570:
  27:saya.cpp      ****   for (int x=0;x<NX;++x) {
 462              		.loc 8 27 0
 463 00d8 48C70424 		mov	QWORD PTR [rsp], 553600	# %sfp,
 463      80720800 
 464 00e0 C5F877   		vzeroupper
 465              	.L26:
 466              	.LVL37:
 467 00e3 C4C14B2A 		vcvtsi2sd	xmm6, xmm6, r13d	# D.36544, x
 467      F5
 468              	.LBE570:
 469              	.LBE561:
  25:saya.cpp      **** void fill_initial_condition() {
 470              		.loc 8 25 0 discriminator 1
 471 00e8 488B1C24 		mov	rbx, QWORD PTR [rsp]	# ivtmp.229, %sfp
 472 00ec 41BE0C00 		mov	r14d, 12	# y,
 472      0000
 473 00f2 C5FB1174 		vmovsd	QWORD PTR [rsp+32], xmm6	# %sfp, D.36544
 473      2420
 474              	.LVL38:
 475              	.L34:
 476 00f8 C4C1532A 		vcvtsi2sd	xmm5, xmm5, r14d	# D.36544, y
 476      EE
 477 00fd 4531E4   		xor	r12d, r12d	# ivtmp.210
 478 0100 C5F351CD 		vsqrtsd	xmm1, xmm1, xmm5	# tmp148, D.36544
 479 0104 C5FB116C 		vmovsd	QWORD PTR [rsp+8], xmm5	# %sfp, D.36544
 479      2408
 480              	.LVL39:
 481 010a 660F1F44 		.p2align 4,,10
 481      0000
 482              		.p2align 3
 483              	.L32:
 484              	.LBB573:
 485              	.LBB571:
 486              	.LBB566:
 487              	.LBB567:
  39:saya.cpp      ****     for (int y=by;y<ey;++y){
  40:saya.cpp      ****       for (int z=bz;z<ez;++z){
  41:saya.cpp      ****         U[x][y][z] = 0.5;
  42:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 488              		.loc 8 42 0 discriminator 2
 489 0110 C5F92EC9 		vucomisd	xmm1, xmm1	# tmp148, tmp148
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 490              		.loc 8 41 0 discriminator 2
 491 0114 C5FB101D 		vmovsd	xmm3, QWORD PTR .LC1[rip]	# tmp190,
 491      00000000 
 492              		.loc 8 42 0 discriminator 2
 493 011c C5FB114C 		vmovsd	QWORD PTR [rsp+24], xmm1	# %sfp, tmp148
 493      2418
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 494              		.loc 8 41 0 discriminator 2
 495 0122 C4A17B11 		vmovsd	QWORD PTR U[rbx+336+r12*8], xmm3	# MEM[symbol: U, base: ivtmp.229_66, index: ivtmp.210_37, 
 495      9CE30000 
 495      0000
 496              		.loc 8 42 0 discriminator 2
 497 012c 0F8A2202 		jp	.L56	#,
 497      0000
 498              	.L28:
 499 0132 418D5424 		lea	edx, [r12+42]	# D.36546,
 499      2A
 500 0137 C5FB114C 		vmovsd	QWORD PTR [rsp+16], xmm1	# %sfp, tmp148
 500      2410
 501 013d C5FB2AC2 		vcvtsi2sd	xmm0, xmm0, edx	# D.36544, D.36546
 502 0141 E8000000 		call	cos	#
 502      00
 503              	.LVL40:
 504 0146 C5FB1064 		vmovsd	xmm4, QWORD PTR [rsp+32]	# D.36544, %sfp
 504      2420
 505 014c C5DB5854 		vaddsd	xmm2, xmm4, QWORD PTR [rsp+24]	# D.36544, D.36544, %sfp
 505      2418
 506 0152 C5EB58C0 		vaddsd	xmm0, xmm2, xmm0	# D.36544, D.36544, D.36544
 507 0156 E8000000 		call	sin	#
 507      00
 508              	.LVL41:
 509 015b C57B1044 		vmovsd	xmm8, QWORD PTR [rsp+16]	# tmp148, %sfp
 509      2410
 510 0161 C5FB100D 		vmovsd	xmm1, QWORD PTR .LC3[rip]	# tmp192,
 510      00000000 
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 511              		.loc 8 41 0 discriminator 2
 512 0169 C5FB103D 		vmovsd	xmm7, QWORD PTR .LC1[rip]	# tmp193,
 512      00000000 
 513              		.loc 8 42 0 discriminator 2
 514 0171 C57B1144 		vmovsd	QWORD PTR [rsp+24], xmm8	# %sfp, tmp148
 514      2418
 515 0177 C4E2F199 		vfmadd132sd	xmm0, xmm1, QWORD PTR .LC2[rip]	# D.36544, tmp192,
 515      05000000 
 515      00
 516 0180 C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r12*8], xmm0	# MEM[symbol: V, base: ivtmp.229_66, index: ivtmp.210_37, 
 516      84E30000 
 516      0000
 517 018a 4983C401 		add	r12, 1	# tmp153,
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 518              		.loc 8 41 0 discriminator 2
 519 018e C4A17B11 		vmovsd	QWORD PTR U[rbx+336+r12*8], xmm7	# MEM[symbol: U, base: ivtmp.229_66, index: ivtmp.210_37, 
 519      BCE30000 
 519      0000
 520              		.loc 8 42 0 discriminator 2
 521 0198 C441792E 		vucomisd	xmm8, xmm8	# tmp148, tmp148
 521      C0
 522 019d 0F8A8F01 		jp	.L57	#,
 522      0000
 523              	.L50:
 524 01a3 418D4C24 		lea	ecx, [r12+42]	# D.36546,
 524      2A
 525 01a8 C57B1144 		vmovsd	QWORD PTR [rsp+16], xmm8	# %sfp, tmp148
 525      2410
 526              		.loc 8 42 0 is_stmt 0
 527 01ae C5FB2AC1 		vcvtsi2sd	xmm0, xmm0, ecx	# D.36544, D.36546
 528 01b2 4D8D7C24 		lea	r15, [r12+1]	# ivtmp.210,
 528      01
 529 01b7 E8000000 		call	cos	#
 529      00
 530              	.LVL42:
 531 01bc C57B104C 		vmovsd	xmm9, QWORD PTR [rsp+32]	# D.36544, %sfp
 531      2420
 532 01c2 C5335854 		vaddsd	xmm10, xmm9, QWORD PTR [rsp+24]	# D.36544, D.36544, %sfp
 532      2418
 533 01c8 C5AB58C0 		vaddsd	xmm0, xmm10, xmm0	# D.36544, D.36544, D.36544
 534 01cc E8000000 		call	sin	#
 534      00
 535              	.LVL43:
 536 01d1 C57B106C 		vmovsd	xmm13, QWORD PTR [rsp+16]	# tmp148, %sfp
 536      2410
 537 01d7 C57B101D 		vmovsd	xmm11, QWORD PTR .LC3[rip]	# tmp197,
 537      00000000 
 538 01df C441792E 		vucomisd	xmm13, xmm13	# tmp148, tmp148
 538      ED
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 539              		.loc 8 41 0 is_stmt 1
 540 01e4 C57B1025 		vmovsd	xmm12, QWORD PTR .LC1[rip]	# tmp198,
 540      00000000 
 541              		.loc 8 42 0
 542 01ec C57B116C 		vmovsd	QWORD PTR [rsp+24], xmm13	# %sfp, tmp148
 542      2418
 543 01f2 C4E2A199 		vfmadd132sd	xmm0, xmm11, QWORD PTR .LC2[rip]	# D.36544, tmp197,
 543      05000000 
 543      00
 544 01fb C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r12*8], xmm0	# MEM[symbol: V, base: ivtmp.229_66, index: ivtmp.210_37, 
 544      84E30000 
 544      0000
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 545              		.loc 8 41 0
 546 0205 C4217B11 		vmovsd	QWORD PTR U[rbx+336+r15*8], xmm12	# MEM[symbol: U, base: ivtmp.229_66, index: ivtmp.210_37,
 546      A4FB0000 
 546      0000
 547              		.loc 8 42 0
 548 020f 0F8A6101 		jp	.L58	#,
 548      0000
 549              	.L51:
 550 0215 418D772A 		lea	esi, [r15+42]	# D.36546,
 551 0219 C57B116C 		vmovsd	QWORD PTR [rsp+16], xmm13	# %sfp, tmp148
 551      2410
 552 021f C5FB2AC6 		vcvtsi2sd	xmm0, xmm0, esi	# D.36544, D.36546
 553 0223 E8000000 		call	cos	#
 553      00
 554              	.LVL44:
 555 0228 C57B1074 		vmovsd	xmm14, QWORD PTR [rsp+32]	# D.36544, %sfp
 555      2420
 556 022e C50B587C 		vaddsd	xmm15, xmm14, QWORD PTR [rsp+24]	# D.36544, D.36544, %sfp
 556      2418
 557 0234 C58358C0 		vaddsd	xmm0, xmm15, xmm0	# D.36544, D.36544, D.36544
 558 0238 E8000000 		call	sin	#
 558      00
 559              	.LVL45:
 560 023d C5FB106C 		vmovsd	xmm5, QWORD PTR [rsp+16]	# tmp148, %sfp
 560      2410
 561 0243 C5FB1035 		vmovsd	xmm6, QWORD PTR .LC3[rip]	# tmp200,
 561      00000000 
 562 024b C5F92EED 		vucomisd	xmm5, xmm5	# tmp148, tmp148
 563 024f C5FB116C 		vmovsd	QWORD PTR [rsp+24], xmm5	# %sfp, tmp148
 563      2418
 564 0255 C4E2C999 		vfmadd132sd	xmm0, xmm6, QWORD PTR .LC2[rip]	# D.36544, tmp200,
 564      05000000 
 564      00
 565 025e C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r15*8], xmm0	# MEM[symbol: V, base: ivtmp.229_66, index: ivtmp.210_37, 
 565      84FB0000 
 565      0000
 566 0268 4D8D7C24 		lea	r15, [r12+2]	# ivtmp.210,
 566      02
  41:saya.cpp      ****         U[x][y][z] = 0.5;
 567              		.loc 8 41 0
 568 026d C5FB1005 		vmovsd	xmm0, QWORD PTR .LC1[rip]	# tmp201,
 568      00000000 
 569 0275 C4A17B11 		vmovsd	QWORD PTR U[rbx+336+r15*8], xmm0	# MEM[symbol: U, base: ivtmp.229_66, index: ivtmp.210_37, 
 569      84FB0000 
 569      0000
 570              		.loc 8 42 0
 571 027f 0F8A9100 		jp	.L59	#,
 571      0000
 572              	.L52:
 573 0285 418D7F2A 		lea	edi, [r15+42]	# D.36546,
 574 0289 C5FB116C 		vmovsd	QWORD PTR [rsp+16], xmm5	# %sfp, tmp148
 574      2410
 575 028f 4983C403 		add	r12, 3	# ivtmp.210,
 576 0293 C5FB2AC7 		vcvtsi2sd	xmm0, xmm0, edi	# D.36544, D.36546
 577 0297 E8000000 		call	cos	#
 577      00
 578              	.LVL46:
 579 029c C5FB105C 		vmovsd	xmm3, QWORD PTR [rsp+32]	# D.36544, %sfp
 579      2420
 580 02a2 C5E35864 		vaddsd	xmm4, xmm3, QWORD PTR [rsp+24]	# D.36544, D.36544, %sfp
 580      2418
 581 02a8 C5DB58C0 		vaddsd	xmm0, xmm4, xmm0	# D.36544, D.36544, D.36544
 582 02ac E8000000 		call	sin	#
 582      00
 583              	.LVL47:
  40:saya.cpp      ****       for (int z=bz;z<ez;++z){
 584              		.loc 8 40 0
 585 02b1 4983FC10 		cmp	r12, 16	# ivtmp.210,
 586 02b5 C5FB104C 		vmovsd	xmm1, QWORD PTR [rsp+16]	# tmp148, %sfp
 586      2410
 587              		.loc 8 42 0
 588 02bb C5FB1015 		vmovsd	xmm2, QWORD PTR .LC3[rip]	# tmp203,
 588      00000000 
 589 02c3 C4E2E999 		vfmadd132sd	xmm0, xmm2, QWORD PTR .LC2[rip]	# D.36544, tmp203,
 589      05000000 
 589      00
 590 02cc C4A17B11 		vmovsd	QWORD PTR V[rbx+336+r15*8], xmm0	# MEM[symbol: V, base: ivtmp.229_66, index: ivtmp.210_37, 
 590      84FB0000 
 590      0000
  40:saya.cpp      ****       for (int z=bz;z<ez;++z){
 591              		.loc 8 40 0
 592 02d6 0F8534FE 		jne	.L32	#,
 592      FFFF
 593              	.LBE567:
  39:saya.cpp      ****     for (int y=by;y<ey;++y){
 594              		.loc 8 39 0
 595 02dc 4183C601 		add	r14d, 1	# y,
 596              	.LVL48:
 597 02e0 4881C320 		add	rbx, 800	# ivtmp.229,
 597      030000
 598 02e7 4183FE1C 		cmp	r14d, 28	# y,
 599 02eb 0F8507FE 		jne	.L34	#,
 599      FFFF
 600 02f1 48810424 		add	QWORD PTR [rsp], 32000	# %sfp,
 600      007D0000 
 601              	.LBE566:
  38:saya.cpp      ****   for (int x=bx;x<ex;++x){
 602              		.loc 8 38 0
 603 02f9 4183C501 		add	r13d, 1	# x,
 604              	.LVL49:
 605 02fd 4183FD21 		cmp	r13d, 33	# x,
 606 0301 0F85DCFD 		jne	.L26	#,
 606      FFFF
 607              	.LBE571:
 608              	.LBE573:
  43:saya.cpp      ****       }
  44:saya.cpp      ****     }
  45:saya.cpp      ****   }
  46:saya.cpp      **** }
 609              		.loc 8 46 0
 610 0307 488D65D8 		lea	rsp, [rbp-40]	#,
 611 030b 5B       		pop	rbx	#
 612 030c 415C     		pop	r12	#
 613 030e 415D     		pop	r13	#
 614              	.LVL50:
 615 0310 415E     		pop	r14	#
 616              	.LVL51:
 617 0312 415F     		pop	r15	#
 618 0314 5D       		pop	rbp	#
 619              		.cfi_remember_state
 620              		.cfi_def_cfa 7, 8
 621 0315 C3       		ret
 622              	.LVL52:
 623              	.L59:
 624              		.cfi_restore_state
 625              	.LBB574:
 626              	.LBB572:
 627              	.LBB569:
 628              	.LBB568:
  42:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 629              		.loc 8 42 0
 630 0316 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 630      2408
 631 031c E8000000 		call	sqrt	#
 631      00
 632              	.LVL53:
 633 0321 C5FB106C 		vmovsd	xmm5, QWORD PTR [rsp+16]	# tmp148, %sfp
 633      2410
 634 0327 C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 634      2418
 635 032d E953FFFF 		jmp	.L52	#
 635      FF
 636              	.L57:
 637 0332 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 637      2408
 638 0338 C57B1144 		vmovsd	QWORD PTR [rsp+16], xmm8	# %sfp, tmp148
 638      2410
 639 033e E8000000 		call	sqrt	#
 639      00
 640              	.LVL54:
 641 0343 C57B1044 		vmovsd	xmm8, QWORD PTR [rsp+16]	# tmp148, %sfp
 641      2410
 642 0349 C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 642      2418
 643 034f E94FFEFF 		jmp	.L50	#
 643      FF
 644              	.L56:
  42:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 645              		.loc 8 42 0 is_stmt 0 discriminator 2
 646 0354 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 646      2408
 647 035a C5FB114C 		vmovsd	QWORD PTR [rsp+16], xmm1	# %sfp, tmp148
 647      2410
 648 0360 E8000000 		call	sqrt	#
 648      00
 649              	.LVL55:
 650 0365 C5FB104C 		vmovsd	xmm1, QWORD PTR [rsp+16]	# tmp148, %sfp
 650      2410
 651 036b C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 651      2418
 652 0371 E9BCFDFF 		jmp	.L28	#
 652      FF
 653              	.L58:
  42:saya.cpp      ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 654              		.loc 8 42 0
 655 0376 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
 655      2408
 656 037c E8000000 		call	sqrt	#
 656      00
 657              	.LVL56:
 658 0381 C57B106C 		vmovsd	xmm13, QWORD PTR [rsp+16]	# tmp148, %sfp
 658      2410
 659 0387 C5FB1144 		vmovsd	QWORD PTR [rsp+24], xmm0	# %sfp,
 659      2418
 660 038d E983FEFF 		jmp	.L51	#
 660      FF
 661              	.LBE568:
 662              	.LBE569:
 663              	.LBE572:
 664              	.LBE574:
 665              		.cfi_endproc
 666              	.LFE1474:
 668 0392 66666666 		.p2align 4,,15
 668      662E0F1F 
 668      84000000 
 668      0000
 669              		.globl	_Z13naive_proceedv
 671              	_Z13naive_proceedv:
 672              	.LFB1476:
  47:saya.cpp      **** 
  48:saya.cpp      **** 
  49:saya.cpp      **** inline Real periodic(Real ar[NX][NY][NZ],int x, int y, int z) {
  50:saya.cpp      ****   x = (x+NX)%NX;
  51:saya.cpp      ****   y = (y+NY)%NY;
  52:saya.cpp      ****   z = (z+NZ)%NZ;
  53:saya.cpp      ****   return ar[x][y][z];
  54:saya.cpp      **** }
  55:saya.cpp      **** 
  56:saya.cpp      **** 
  57:saya.cpp      **** void naive_proceed() {
 673              		.loc 8 57 0 is_stmt 1
 674              		.cfi_startproc
 675 03a0 55       		push	rbp	#
 676              		.cfi_def_cfa_offset 16
 677              		.cfi_offset 6, -16
 678              	.LBB618:
  58:saya.cpp      ****   ++global_clock;
 679              		.loc 8 58 0
 680 03a1 B9310000 		mov	ecx, 49	# ivtmp.528,
 680      00
 681              	.LBE618:
  57:saya.cpp      **** void naive_proceed() {
 682              		.loc 8 57 0
 683 03a6 4889E5   		mov	rbp, rsp	#,
 684              		.cfi_def_cfa_register 6
 685 03a9 4157     		push	r15	#
 686 03ab 4156     		push	r14	#
 687 03ad 4155     		push	r13	#
 688 03af 4154     		push	r12	#
 689 03b1 53       		push	rbx	#
 690 03b2 4883E4E0 		and	rsp, -32	#,
 691 03b6 4881ECA0 		sub	rsp, 416	#,
 691      010000
 692              		.cfi_offset 15, -24
 693              		.cfi_offset 14, -32
 694              		.cfi_offset 13, -40
 695              		.cfi_offset 12, -48
 696              		.cfi_offset 3, -56
 697 03bd C5FD6F05 		vmovdqa	ymm0, YMMWORD PTR .LC6[rip]	# tmp1093,
 697      00000000 
 698              	.LBB964:
 699              		.loc 8 58 0
 700 03c5 48C70424 		mov	QWORD PTR [rsp], OFFSET FLAT:U	# %sfp,
 700      00000000 
 701 03cd 83050000 		add	DWORD PTR global_clock[rip], 1	# global_clock,
 701      000001
 702              	.LVL57:
 703 03d4 48C74424 		mov	QWORD PTR [rsp+16], OFFSET FLAT:V	# %sfp,
 703      10000000 
 703      00
 704 03dd C5F573D0 		vpsrlq	ymm1, ymm0, 32	# tmp969, tmp1093,
 704      20
 705 03e2 C5FD281D 		vmovapd	ymm3, YMMWORD PTR .LC9[rip]	# tmp910,
 705      00000000 
 706 03ea 48C74424 		mov	QWORD PTR [rsp+8], 0	# %sfp,
 706      08000000 
 706      00
 707 03f3 C57D282D 		vmovapd	ymm13, YMMWORD PTR .LC13[rip]	# tmp923,
 707      00000000 
 708 03fb C5FD7F8C 		vmovdqa	YMMWORD PTR [rsp+128], ymm1	# %sfp, tmp969
 708      24800000 
 708      00
 709              	.LVL58:
 710              	.L61:
 711 0404 B81F85EB 		mov	eax, 1374389535	# tmp1089,
 711      51
 712 0409 89CB     		mov	ebx, ecx	# tmp861, ivtmp.528
 713 040b BE320000 		mov	esi, 50	#,
 713      00
 714 0410 F7E9     		imul	ecx	# ivtmp.528
 715 0412 C1FB1F   		sar	ebx, 31	# tmp861,
 716 0415 89CF     		mov	edi, ecx	# D.36884, ivtmp.528
 717 0417 448D5902 		lea	r11d, [rcx+2]	# D.36885,
 718 041b B81F85EB 		mov	eax, 1374389535	# tmp1090,
 718      51
 719 0420 41BD3200 		mov	r13d, 50	#,
 719      0000
 720 0426 8D4901   		lea	ecx, [rcx+1]	# D.36885,
 721 0429 4589DC   		mov	r12d, r11d	# tmp870, D.36885
 722 042c C1FA04   		sar	edx, 4	# tmp857,
 723 042f 41C1FC1F 		sar	r12d, 31	# tmp870,
 724 0433 894C2468 		mov	DWORD PTR [rsp+104], ecx	# %sfp, D.36885
 725 0437 29DA     		sub	edx, ebx	# tmp857, tmp861
 726 0439 0FAFD6   		imul	edx, esi	# tmp862,
 727              	.LBB619:
 728              	.LBB620:
 729              	.LBB621:
 730              	.LBB622:
  59:saya.cpp      ****   
  60:saya.cpp      ****   const Real Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
  61:saya.cpp      ****   const Real dt = 200, dx = 0.001;
  62:saya.cpp      **** 
  63:saya.cpp      ****   auto lap = [&dx](Real ar[NX][NY][NZ],int x, int y, int z) {
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
  67:saya.cpp      ****     - 6*ar[x][y][z];
  68:saya.cpp      ****     return ret / dx / dx;
  69:saya.cpp      ****   };
  70:saya.cpp      **** 
  71:saya.cpp      ****   for (int x=0;x<NX;++x) {
  72:saya.cpp      ****     for (int y=0;y<NY;++y) {
  73:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  74:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
  77:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
  78:saya.cpp      **** 	V_other[x][y][z] = V[x][y][z] + dt*dv_dt;
 731              		.loc 8 78 0 discriminator 1
 732 043c 488B7424 		mov	rsi, QWORD PTR [rsp+16]	# ivtmp.533, %sfp
 732      10
 733 0441 29D7     		sub	edi, edx	# D.36884, tmp862
 734 0443 41F7EB   		imul	r11d	# D.36885
 735 0446 B81F85EB 		mov	eax, 1374389535	# tmp1091,
 735      51
 736 044b 4C63C7   		movsx	r8, edi	# D.36893, D.36884
 737 044e 89CF     		mov	edi, ecx	# tmp878, D.36885
 738 0450 4D69D000 		imul	r10, r8, 32000	# D.36893, D.36893,
 738      7D0000
 739 0457 C1FF1F   		sar	edi, 31	# tmp878,
 740 045a 41B83200 		mov	r8d, 50	#,
 740      0000
 741 0460 C1FA04   		sar	edx, 4	# tmp866,
 742 0463 4429E2   		sub	edx, r12d	# tmp866, tmp870
 743 0466 410FAFD5 		imul	edx, r13d	# tmp871,
 744 046a 4989F5   		mov	r13, rsi	# ivtmp.519, ivtmp.533
 745 046d 4D8D8A00 		lea	r9, U[r10]	# D.36887,
 745      000000
 746 0474 4C894C24 		mov	QWORD PTR [rsp+96], r9	# %sfp, D.36887
 746      60
 747 0479 4D8D9200 		lea	r10, V[r10]	# D.36887,
 747      000000
 748 0480 4129D3   		sub	r11d, edx	# D.36884, tmp871
 749 0483 F7E9     		imul	ecx	# D.36885
 750 0485 4D63F3   		movsx	r14, r11d	# D.36893, D.36884
 751 0488 89C8     		mov	eax, ecx	# D.36884, D.36885
 752 048a 4D69FE00 		imul	r15, r14, 32000	# D.36893, D.36893,
 752      7D0000
 753 0491 488B4C24 		mov	rcx, QWORD PTR [rsp+8]	# ivtmp.532, %sfp
 753      08
 754 0496 4C895424 		mov	QWORD PTR [rsp+80], r10	# %sfp, D.36887
 754      50
 755 049b C1FA04   		sar	edx, 4	# tmp874,
 756 049e 29FA     		sub	edx, edi	# tmp874, tmp878
 757 04a0 BF280000 		mov	edi, 40	# ivtmp.511,
 757      00
 758 04a5 410FAFD0 		imul	edx, r8d	# tmp879,
 759 04a9 4829CE   		sub	rsi, rcx	# D.36886, ivtmp.532
 760 04ac 498D9F00 		lea	rbx, U[r15]	# D.36887,
 760      000000
 761 04b3 48897424 		mov	QWORD PTR [rsp+32], rsi	# %sfp, D.36886
 761      20
 762 04b8 48895C24 		mov	QWORD PTR [rsp+120], rbx	# %sfp, D.36887
 762      78
 763 04bd 488B1C24 		mov	rbx, QWORD PTR [rsp]	# ivtmp.531, %sfp
 764 04c1 4D8DA700 		lea	r12, V[r15]	# D.36887,
 764      000000
 765 04c8 29D0     		sub	eax, edx	# D.36884, tmp879
 766 04ca 4C896424 		mov	QWORD PTR [rsp+112], r12	# %sfp, D.36887
 766      70
 767 04cf 4989CF   		mov	r15, rcx	# ivtmp.514, ivtmp.532
 768 04d2 4898     		cdqe
 769 04d4 4C69C800 		imul	r9, rax, 32000	# D.36893, D.36893,
 769      7D0000
 770 04db 4889DA   		mov	rdx, rbx	# D.36886, ivtmp.531
 771 04de 4989DE   		mov	r14, rbx	# ivtmp.518, ivtmp.531
 772 04e1 4829CA   		sub	rdx, rcx	# D.36886, ivtmp.532
 773 04e4 48895424 		mov	QWORD PTR [rsp+24], rdx	# %sfp, D.36886
 773      18
 774 04e9 4D8D9900 		lea	r11, U[r9]	# D.36887,
 774      000000
 775 04f0 4981C100 		add	r9, OFFSET FLAT:V	# D.36887,
 775      000000
 776 04f7 4C895C24 		mov	QWORD PTR [rsp+88], r11	# %sfp, D.36887
 776      58
 777 04fc 4C894C24 		mov	QWORD PTR [rsp+72], r9	# %sfp, D.36887
 777      48
 778              	.LVL59:
 779              		.p2align 4,,10
 780 0501 0F1F8000 		.p2align 3
 780      000000
 781              	.L70:
 782 0508 B8676666 		mov	eax, 1717986919	# tmp1086,
 782      66
 783 050d 4189F8   		mov	r8d, edi	# tmp814, ivtmp.511
 784 0510 4189FB   		mov	r11d, edi	# D.36884, ivtmp.511
 785 0513 F7EF     		imul	edi	# ivtmp.511
 786 0515 41C1F81F 		sar	r8d, 31	# tmp814,
 787 0519 B8676666 		mov	eax, 1717986919	# tmp1087,
 787      66
 788 051e 8D7701   		lea	esi, [rdi+1]	# D.36885,
 789 0521 4C897C24 		mov	QWORD PTR [rsp+40], r15	# %sfp, ivtmp.514
 789      28
 790 0526 C57D6F3D 		vmovdqa	ymm15, YMMWORD PTR .LC4[rip]	# vect_vec_iv_.275,
 790      00000000 
 791 052e 448D57FF 		lea	r10d, [rdi-1]	# D.36885,
 792 0532 89F7     		mov	edi, esi	# tmp831, D.36885
 793 0534 89F3     		mov	ebx, esi	# D.36885, D.36885
 794 0536 C1FA04   		sar	edx, 4	# D.36884,
 795 0539 4589D4   		mov	r12d, r10d	# tmp823, D.36885
 796 053c C1FF1F   		sar	edi, 31	# tmp831,
 797 053f 4429C2   		sub	edx, r8d	# D.36884, tmp814
 798 0542 41C1FC1F 		sar	r12d, 31	# tmp823,
 799 0546 8974246C 		mov	DWORD PTR [rsp+108], esi	# %sfp, D.36885
 800 054a 448D0C92 		lea	r9d, [rdx+rdx*4]	# tmp817,
 801 054e 41F7EA   		imul	r10d	# D.36885
 802 0551 B8676666 		mov	eax, 1717986919	# tmp1088,
 802      66
 803 0556 41C1E103 		sal	r9d, 3	# tmp818,
 804 055a 4529CB   		sub	r11d, r9d	# D.36884, tmp818
 805 055d C1FA04   		sar	edx, 4	# D.36884,
 806 0560 4D63DB   		movsx	r11, r11d	# D.36884, D.36884
 807 0563 4429E2   		sub	edx, r12d	# D.36884, tmp823
 808 0566 4C895C24 		mov	QWORD PTR [rsp+64], r11	# %sfp, D.36884
 808      40
 809 056b 8D0C92   		lea	ecx, [rdx+rdx*4]	# tmp826,
 810 056e F7EE     		imul	esi	# D.36885
 811 0570 488B4424 		mov	rax, QWORD PTR [rsp+112]	# D.36887, %sfp
 811      70
 812 0575 4F8D249B 		lea	r12, [r11+r11*4]	# tmp839,
 813 0579 C1E103   		sal	ecx, 3	# tmp827,
 814 057c 4129CA   		sub	r10d, ecx	# D.36884, tmp827
 815 057f 488B4C24 		mov	rcx, QWORD PTR [rsp+96]	# D.36887, %sfp
 815      60
 816 0584 C1FA04   		sar	edx, 4	# D.36884,
 817 0587 4D63D2   		movsx	r10, r10d	# D.36884, D.36884
 818 058a 4B8D3492 		lea	rsi, [r10+r10*4]	# tmp846,
 819 058e 29FA     		sub	edx, edi	# D.36884, tmp831
 820 0590 4C895424 		mov	QWORD PTR [rsp+56], r10	# %sfp, D.36884
 820      38
 821 0595 448D0492 		lea	r8d, [rdx+rdx*4]	# tmp834,
 822 0599 488D3CB6 		lea	rdi, [rsi+rsi*4]	# tmp849,
 823 059d 41C1E003 		sal	r8d, 3	# tmp835,
 824 05a1 4B8D14A4 		lea	rdx, [r12+r12*4]	# tmp842,
 825 05a5 4429C3   		sub	ebx, r8d	# D.36884, tmp835
 826 05a8 4C8B4424 		mov	r8, QWORD PTR [rsp+88]	# D.36887, %sfp
 826      58
 827 05ad 48C1E205 		sal	rdx, 5	# tmp842,
 828 05b1 4C63CB   		movsx	r9, ebx	#, D.36884
 829 05b4 48C1E705 		sal	rdi, 5	# tmp849,
 830 05b8 4C894C24 		mov	QWORD PTR [rsp+48], r9	# %sfp, D.36884
 830      30
 831 05bd 4F8D0C89 		lea	r9, [r9+r9*4]	# tmp853,
 832 05c1 488B5C24 		mov	rbx, QWORD PTR [rsp+120]	# D.36887, %sfp
 832      78
 833 05c6 4B8D3489 		lea	rsi, [r9+r9*4]	# tmp856,
 834 05ca 4C8D2411 		lea	r12, [rcx+rdx]	# D.36889,
 835 05ce 48C1E605 		sal	rsi, 5	# tmp856,
 836 05d2 4E8D1C07 		lea	r11, [rdi+r8]	# D.36889,
 837 05d6 4E8D1406 		lea	r10, [rsi+r8]	# D.36889,
 838 05da 4801D3   		add	rbx, rdx	# D.36889, tmp842
 839 05dd 498D0C10 		lea	rcx, [r8+rdx]	# D.36889,
 840 05e1 4C8B4424 		mov	r8, QWORD PTR [rsp+80]	# D.36887, %sfp
 840      50
 841 05e6 4D8D0C10 		lea	r9, [r8+rdx]	# D.36889,
 842 05ea 4C8D0410 		lea	r8, [rax+rdx]	# D.36889,
 843 05ee 488B4424 		mov	rax, QWORD PTR [rsp+72]	# D.36887, %sfp
 843      48
 844 05f3 4801C6   		add	rsi, rax	# D.36889, D.36887
 845 05f6 4801C7   		add	rdi, rax	# D.36889, D.36887
 846 05f9 4801C2   		add	rdx, rax	# D.36889, D.36887
 847 05fc 498D8700 		lea	rax, U_other[r15]	# D.36894,
 847      000000
 848 0603 4889B424 		mov	QWORD PTR [rsp+192], rsi	# %sfp, D.36889
 848      C0000000 
 849 060b 48898424 		mov	QWORD PTR [rsp+384], rax	# %sfp, D.36894
 849      80010000 
 850 0613 498D8700 		lea	rax, V_other[r15]	# D.36894,
 850      000000
 851 061a 48898424 		mov	QWORD PTR [rsp+200], rax	# %sfp, D.36894
 851      C8000000 
 852 0622 4C8BBC24 		mov	r15, QWORD PTR [rsp+384]	# D.36894, %sfp
 852      80010000 
 853 062a 31C0     		xor	eax, eax	# ivtmp.486
 854 062c EB13     		jmp	.L67	#
 855              	.LVL60:
 856 062e 6690     		.p2align 4,,10
 857              		.p2align 3
 858              	.L62:
 859 0630 488BB424 		mov	rsi, QWORD PTR [rsp+192]	# D.36889, %sfp
 859      C0000000 
 860              		.loc 8 78 0 is_stmt 0
 861 0638 C57D6FBC 		vmovdqa	ymm15, YMMWORD PTR [rsp+160]	# vect_vec_iv_.275, %sfp
 861      24A00000 
 861      00
 862              	.LVL61:
 863              	.L67:
 864              	.LBB623:
 865              	.LBB624:
 866              	.LBB625:
 867              	.LBB626:
 868              	.LBB627:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 869              		.loc 8 52 0 is_stmt 1 discriminator 2
 870 0641 C585FE35 		vpaddd	ymm6, ymm15, YMMWORD PTR .LC5[rip]	# vect_var_.297, vect_vec_iv_.275,
 870      00000000 
 871 0649 C585FE15 		vpaddd	ymm2, ymm15, YMMWORD PTR .LC31[rip]	# vect_vec_iv_.275, vect_vec_iv_.275,
 871      00000000 
 872 0651 C57D6FA4 		vmovdqa	ymm12, YMMWORD PTR [rsp+128]	# tmp969, %sfp
 872      24800000 
 872      00
 873 065a C5DD73D6 		vpsrlq	ymm4, ymm6, 32	# tmp426, vect_var_.297,
 873      20
 874              	.LBE627:
 875              	.LBE626:
 876              	.LBE625:
 877              	.LBE624:
 878              	.LBE623:
  74:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
 879              		.loc 8 74 0 discriminator 2
 880 065f C4C17D28 		vmovapd	ymm1, YMMWORD PTR [r13+0+rax]	# vect_v.286, MEM[base: vect_pV.285_402, index: ivtmp.486_58
 880      4C0500
 881 0666 C4E24D28 		vpmuldq	ymm5, ymm6, YMMWORD PTR .LC6[rip]	# tmp422, vect_var_.297,
 881      2D000000 
 881      00
 882 066f C4C25D28 		vpmuldq	ymm7, ymm4, ymm12	# tmp424, tmp426, tmp969
 882      FC
 883              	.LBB770:
 884              	.LBB740:
 885              	.LBB710:
 886              	.LBB637:
 887              	.LBB628:
  53:saya.cpp      ****   return ar[x][y][z];
 888              		.loc 8 53 0 discriminator 2
 889 0674 C5FD28E3 		vmovapd	ymm4, ymm3	# tmp1059, tmp910
 890 0678 C4625500 		vpshufb	ymm8, ymm5, YMMWORD PTR .LC7[rip]	# tmp430, tmp422,
 890      05000000 
 890      00
 891 0681 C58D72E6 		vpsrad	ymm14, ymm6, 31	# vect_patt.302, vect_var_.297,
 891      1F
 892              	.LBE628:
 893              	.LBE637:
 894              	.LBE710:
 895              	.LBE740:
 896              	.LBE770:
  74:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
 897              		.loc 8 74 0 discriminator 2
 898 0686 C4C17D28 		vmovapd	ymm0, YMMWORD PTR [r13+32+rax]	# vect_v.287, MEM[base: vect_pV.285_402, index: ivtmp.486_5
 898      440520
 899 068d C5FD7F94 		vmovdqa	YMMWORD PTR [rsp+160], ymm2	# %sfp, vect_vec_iv_.275
 899      24A00000 
 899      00
 900              	.LVL62:
 901 0696 C4624500 		vpshufb	ymm9, ymm7, YMMWORD PTR .LC8[rip]	# tmp432, tmp424,
 901      0D000000 
 901      00
 902 069f C4413DEB 		vpor	ymm10, ymm8, ymm9	# vect_patt.299, tmp430, tmp432
 902      D1
 903 06a4 C4C12572 		vpsrad	ymm11, ymm10, 5	# vect_patt.301, vect_patt.299,
 903      E205
 904 06aa C4C125FA 		vpsubd	ymm2, ymm11, ymm14	# vect_patt.303, vect_patt.301, vect_patt.302
 904      D6
 905              	.LBB771:
 906              	.LBB741:
 907              	.LBB711:
 908              	.LBB638:
 909              	.LBB629:
  53:saya.cpp      ****   return ar[x][y][z];
 910              		.loc 8 53 0 discriminator 2
 911 06af C57D28CB 		vmovapd	ymm9, ymm3	# tmp1060, tmp910
 912              	.LBE629:
 913              	.LBE638:
 914              	.LBB639:
 915              	.LBB640:
 916 06b3 C57D28F3 		vmovapd	ymm14, ymm3	# tmp1061, tmp910
 917 06b7 C4E26D40 		vpmulld	ymm5, ymm2, YMMWORD PTR .LC5[rip]	# vect_patt.304, vect_patt.303,
 917      2D000000 
 917      00
 918 06c0 C5CDFAFD 		vpsubd	ymm7, ymm6, ymm5	# vect_patt.306, vect_var_.297, vect_patt.304
 919              	.LVL63:
 920 06c4 C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1062, tmp910
 921              	.LBE640:
 922              	.LBE639:
 923              	.LBB643:
 924              	.LBB630:
 925 06c8 C5F96FF7 		vmovdqa	xmm6, xmm7	# tmp438,
 926 06cc C4634546 		vperm2i128	ymm8, ymm7, ymm7, 17	# vect_var_.309, vect_patt.306, vect_patt.306,
 926      C711
 927 06d2 C5797FC7 		vmovdqa	xmm7, xmm8	# tmp441,
 928 06d6 C442B592 		vgatherdpd	ymm10, QWORD PTR [r12+xmm7*8], ymm9	# vect_var_.307,, tmp1060
 928      14FC
 929              	.LBE630:
 930              	.LBE643:
 931              	.LBB644:
 932              	.LBB645:
 933 06dc C57D28C3 		vmovapd	ymm8, ymm3	# tmp1064, tmp910
 934              	.LBE645:
 935              	.LBE644:
 936              	.LBB649:
 937              	.LBB631:
 938 06e0 C442DD92 		vgatherdpd	ymm11, QWORD PTR [r12+xmm6*8], ymm4	# vect_var_.307,, tmp1059
 938      1CF4
 939 06e6 C57D2994 		vmovapd	YMMWORD PTR [rsp+320], ymm10	# %sfp, vect_var_.307
 939      24400100 
 939      00
 940              	.LBE631:
 941              	.LBE649:
 942              	.LBB650:
 943              	.LBB646:
 944 06ef C5FD28E3 		vmovapd	ymm4, ymm3	# tmp1063, tmp910
 945              	.LBE646:
 946              	.LBE650:
 947              	.LBB651:
 948              	.LBB641:
 949 06f3 C4E2ED92 		vgatherdpd	ymm5, QWORD PTR [rbx+xmm7*8], ymm2	# vect_var_.310,, tmp1062
 949      2CFB
 950              	.LBE641:
 951              	.LBE651:
 952              	.LBB652:
 953              	.LBB653:
 954 06f9 C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1065, tmp910
 955              	.LBE653:
 956              	.LBE652:
 957              	.LBB656:
 958              	.LBB642:
 959 06fd C4628D92 		vgatherdpd	ymm10, QWORD PTR [rbx+xmm6*8], ymm14	# vect_var_.310,, tmp1061
 959      14F3
 960 0703 C5FD29AC 		vmovapd	YMMWORD PTR [rsp+352], ymm5	# %sfp, vect_var_.310
 960      24600100 
 960      00
 961              	.LBE642:
 962              	.LBE656:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 963              		.loc 8 64 0 discriminator 2
 964 070c C4412558 		vaddpd	ymm11, ymm11, ymm10	# vect_var_.313, vect_var_.307, vect_var_.310
 964      DA
 965              	.LBB657:
 966              	.LBB647:
  53:saya.cpp      ****   return ar[x][y][z];
 967              		.loc 8 53 0 discriminator 2
 968 0711 C442BD92 		vgatherdpd	ymm14, QWORD PTR [r11+xmm7*8], ymm8	# vect_var_.314,, tmp1064
 968      34FB
 969 0717 C442DD92 		vgatherdpd	ymm9, QWORD PTR [r11+xmm6*8], ymm4	# vect_var_.314,, tmp1063
 969      0CF3
 970              	.LBE647:
 971              	.LBE657:
 972              	.LBB658:
 973              	.LBB654:
 974 071d C5F97FB4 		vmovdqa	XMMWORD PTR [rsp+288], xmm6	# %sfp, tmp438
 974      24200100 
 974      00
 975              	.LBE654:
 976              	.LBE658:
 977              	.LBB659:
 978              	.LBB648:
 979 0726 C57D29B4 		vmovapd	YMMWORD PTR [rsp+384], ymm14	# %sfp, vect_var_.314
 979      24800100 
 979      00
 980              	.LBE648:
 981              	.LBE659:
 982              	.LBB660:
 983              	.LBB655:
 984 072f C442ED92 		vgatherdpd	ymm8, QWORD PTR [r10+xmm6*8], ymm2	# vect_var_.318,, tmp1065
 984      04F2
 985 0735 C5FD28F3 		vmovapd	ymm6, ymm3	# tmp1066, tmp910
 986 0739 C5F97FBC 		vmovdqa	XMMWORD PTR [rsp+272], xmm7	# %sfp, tmp441
 986      24100100 
 986      00
 987 0742 C442CD92 		vgatherdpd	ymm14, QWORD PTR [r10+xmm7*8], ymm6	# vect_var_.318,, tmp1066
 987      34FA
 988              	.LVL64:
 989              	.LBE655:
 990              	.LBE660:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 991              		.loc 8 65 0 discriminator 2
 992 0748 C4412558 		vaddpd	ymm10, ymm11, ymm9	# vect_var_.317, vect_var_.313, vect_var_.314
 992      D1
 993              	.LBB661:
 994              	.LBB662:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 995              		.loc 8 52 0 discriminator 2
 996 074d C585FE3D 		vpaddd	ymm7, ymm15, YMMWORD PTR .LC10[rip]	# vect_var_.322, vect_vec_iv_.275,
 996      00000000 
 997 0755 C4E24528 		vpmuldq	ymm5, ymm7, YMMWORD PTR .LC6[rip]	# tmp463, vect_var_.322,
 997      2D000000 
 997      00
 998 075e C5DD73D7 		vpsrlq	ymm4, ymm7, 32	# tmp467, vect_var_.322,
 998      20
 999 0763 C4E25500 		vpshufb	ymm6, ymm5, YMMWORD PTR .LC7[rip]	# tmp471, tmp463,
 999      35000000 
 999      00
 1000 076c C4C25D28 		vpmuldq	ymm2, ymm4, ymm12	# tmp465, tmp467, tmp969
 1000      D4
 1001              	.LBE662:
 1002              	.LBE661:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1003              		.loc 8 65 0 discriminator 2
 1004 0771 C4412D58 		vaddpd	ymm9, ymm10, ymm8	# vect_var_.321, vect_var_.317, vect_var_.318
 1004      C8
 1005 0776 C4E26D00 		vpshufb	ymm5, ymm2, YMMWORD PTR .LC8[rip]	# tmp473, tmp465,
 1005      2D000000 
 1005      00
 1006 077f C5ED72E7 		vpsrad	ymm2, ymm7, 31	# vect_patt.327, vect_var_.322,
 1006      1F
 1007 0784 C5CDEBE5 		vpor	ymm4, ymm6, ymm5	# vect_patt.324, tmp471, tmp473
 1008 0788 C5CD72E4 		vpsrad	ymm6, ymm4, 5	# vect_patt.326, vect_patt.324,
 1008      05
 1009 078d C5CDFAEA 		vpsubd	ymm5, ymm6, ymm2	# vect_patt.328, vect_patt.326, vect_patt.327
 1010              	.LBB672:
 1011              	.LBB663:
  53:saya.cpp      ****   return ar[x][y][z];
 1012              		.loc 8 53 0 discriminator 2
 1013 0791 C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1067, tmp910
 1014 0795 C4E25540 		vpmulld	ymm4, ymm5, YMMWORD PTR .LC5[rip]	# vect_patt.329, vect_patt.328,
 1014      25000000 
 1014      00
 1015 079e C5C5FAF4 		vpsubd	ymm6, ymm7, ymm4	# vect_patt.331, vect_var_.322, vect_patt.329
 1016 07a2 C5F96FEE 		vmovdqa	xmm5, xmm6	# tmp479,
 1017 07a6 C4E34D46 		vperm2i128	ymm4, ymm6, ymm6, 17	# vect_var_.334, vect_patt.331, vect_patt.331,
 1017      E611
 1018 07ac C5F97FAC 		vmovdqa	XMMWORD PTR [rsp+256], xmm5	# %sfp, tmp479
 1018      24000100 
 1018      00
 1019              	.LBE663:
 1020              	.LBE672:
 1021              	.LBB673:
 1022              	.LBB674:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1023              		.loc 8 52 0 discriminator 2
 1024 07b5 C505FE3D 		vpaddd	ymm15, ymm15, YMMWORD PTR .LC11[rip]	# vect_var_.336, vect_vec_iv_.275,
 1024      00000000 
 1025              	.LBE674:
 1026              	.LBE673:
 1027              	.LBB686:
 1028              	.LBB664:
  53:saya.cpp      ****   return ar[x][y][z];
 1029              		.loc 8 53 0 discriminator 2
 1030 07bd C4E2ED92 		vgatherdpd	ymm7, QWORD PTR [rcx+xmm5*8], ymm2	# vect_var_.332,, tmp1067
 1030      3CE9
 1031 07c3 C5FD28EB 		vmovapd	ymm5, ymm3	# tmp1068, tmp910
 1032              	.LBE664:
 1033              	.LBE686:
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1034              		.loc 8 66 0 discriminator 2
 1035 07c7 C53558C7 		vaddpd	ymm8, ymm9, ymm7	# vect_var_.335, vect_var_.321, vect_var_.332
 1036              	.LBE711:
 1037              	.LBE741:
 1038              	.LBE771:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1039              		.loc 8 75 0 discriminator 2
 1040 07cb C57D2815 		vmovapd	ymm10, YMMWORD PTR .LC0[rip]	# tmp1123,
 1040      00000000 
 1041              	.LBB772:
 1042              	.LBB742:
 1043              	.LBB712:
 1044              	.LBB687:
 1045              	.LBB665:
  53:saya.cpp      ****   return ar[x][y][z];
 1046              		.loc 8 53 0 discriminator 2
 1047 07d3 C5F97FA4 		vmovdqa	XMMWORD PTR [rsp+240], xmm4	# %sfp, tmp482
 1047      24F00000 
 1047      00
 1048 07dc C4E20528 		vpmuldq	ymm2, ymm15, YMMWORD PTR .LC6[rip]	# tmp486, vect_var_.336,
 1048      15000000 
 1048      00
 1049 07e5 C4E2D592 		vgatherdpd	ymm6, QWORD PTR [rcx+xmm4*8], ymm5	# vect_var_.332,, tmp1068
 1049      34E1
 1050              	.LVL65:
 1051 07eb C4C15D73 		vpsrlq	ymm4, ymm15, 32	# tmp490, vect_var_.336,
 1051      D720
 1052 07f1 C4E26D00 		vpshufb	ymm5, ymm2, YMMWORD PTR .LC7[rip]	# tmp494, tmp486,
 1052      2D000000 
 1052      00
 1053 07fa C4425D28 		vpmuldq	ymm12, ymm4, ymm12	# tmp488, tmp490, tmp969
 1053      E4
 1054              	.LBE665:
 1055              	.LBE687:
 1056              	.LBE712:
 1057              	.LBE742:
 1058              	.LBE772:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1059              		.loc 8 75 0 discriminator 2
 1060 07ff C4412D5C 		vsubpd	ymm9, ymm10, YMMWORD PTR [r14+rax]	# vect_var_.292, tmp1123, MEM[base: vect_pU.279_413, ind
 1060      0C06
 1061 0805 C4E21D00 		vpshufb	ymm2, ymm12, YMMWORD PTR .LC8[rip]	# tmp496, tmp488,
 1061      15000000 
 1061      00
 1062 080e C5D5EBE2 		vpor	ymm4, ymm5, ymm2	# vect_patt.338, tmp494, tmp496
 1063 0812 C4C15572 		vpsrad	ymm5, ymm15, 31	# vect_patt.341, vect_var_.336,
 1063      E71F
 1064 0818 C59D72E4 		vpsrad	ymm12, ymm4, 5	# vect_patt.340, vect_patt.338,
 1064      05
 1065 081d C59DFAD5 		vpsubd	ymm2, ymm12, ymm5	# vect_patt.342, vect_patt.340, vect_patt.341
 1066 0821 C4E26D40 		vpmulld	ymm4, ymm2, YMMWORD PTR .LC5[rip]	# vect_patt.343, vect_patt.342,
 1066      25000000 
 1066      00
 1067 082a C585FAEC 		vpsubd	ymm5, ymm15, ymm4	# vect_patt.345, vect_var_.336, vect_patt.343
 1068              	.LBB773:
 1069              	.LBB743:
 1070              	.LBB713:
 1071              	.LBB688:
 1072              	.LBB675:
  53:saya.cpp      ****   return ar[x][y][z];
 1073              		.loc 8 53 0 discriminator 2
 1074 082e C5FD28D3 		vmovapd	ymm2, ymm3	# tmp1069, tmp910
 1075 0832 C5796FFD 		vmovdqa	xmm15, xmm5	# tmp502,
 1076 0836 C4E35546 		vperm2i128	ymm4, ymm5, ymm5, 17	# vect_var_.348, vect_patt.345, vect_patt.345,
 1076      E511
 1077 083c C5797FBC 		vmovdqa	XMMWORD PTR [rsp+224], xmm15	# %sfp, tmp502
 1077      24E00000 
 1077      00
 1078 0845 C422ED92 		vgatherdpd	ymm12, QWORD PTR [rcx+xmm15*8], ymm2	# vect_var_.346,, tmp1069
 1078      24F9
 1079              	.LBE675:
 1080              	.LBE688:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1081              		.loc 8 67 0 discriminator 2
 1082 084b C4C17D10 		vmovupd	ymm2, YMMWORD PTR [r14+rax]	# vect_ret.358, MEM[base: vect_pU.279_413, index: ivtmp.486_58
 1082      1406
 1083              	.LBB689:
 1084              	.LBB676:
  53:saya.cpp      ****   return ar[x][y][z];
 1085              		.loc 8 53 0 discriminator 2
 1086 0851 C5F97FA4 		vmovdqa	XMMWORD PTR [rsp+208], xmm4	# %sfp, tmp505
 1086      24D00000 
 1086      00
 1087              	.LBE676:
 1088              	.LBE689:
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1089              		.loc 8 66 0 discriminator 2
 1090 085a C4C13D58 		vaddpd	ymm7, ymm8, ymm12	# vect_var_.349, vect_var_.335, vect_var_.346
 1090      FC
 1091              	.LBB690:
 1092              	.LBB677:
  53:saya.cpp      ****   return ar[x][y][z];
 1093              		.loc 8 53 0 discriminator 2
 1094 085f C57D28FB 		vmovapd	ymm15, ymm3	# tmp1070, tmp910
 1095              	.LBE677:
 1096              	.LBE690:
 1097              	.LBE713:
 1098              	.LBE743:
 1099              	.LBE773:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1100              		.loc 8 75 0 discriminator 2
 1101 0863 C5355905 		vmulpd	ymm8, ymm9, YMMWORD PTR .LC15[rip]	# vect_var_.294, vect_var_.292,
 1101      00000000 
 1102              	.LBB774:
 1103              	.LBB744:
 1104              	.LBB714:
 1105              	.LBB691:
 1106              	.LBB678:
  53:saya.cpp      ****   return ar[x][y][z];
 1107              		.loc 8 53 0 discriminator 2
 1108 086b C4E28592 		vgatherdpd	ymm5, QWORD PTR [rcx+xmm4*8], ymm15	# vect_var_.346,, tmp1070
 1108      2CE1
 1109              	.LBE678:
 1110              	.LBE691:
 1111              	.LBE714:
 1112              	.LBE744:
 1113              	.LBE774:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1114              		.loc 8 75 0 discriminator 2
 1115 0871 C4417D28 		vmovapd	ymm15, YMMWORD PTR [r14+rax]	# tmp1122, MEM[base: vect_pU.279_413, index: ivtmp.486_586, o
 1115      3C06
 1116 0877 C4417D28 		vmovapd	ymm9, YMMWORD PTR [r14+32+rax]	# tmp1125, MEM[base: vect_pU.279_413, index: ivtmp.486_586,
 1116      4C0620
 1117              	.LBB775:
 1118              	.LBB745:
 1119              	.LBB715:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1120              		.loc 8 67 0 discriminator 2
 1121 087e C4E2C59C 		vfnmadd132pd	ymm2, ymm7, YMMWORD PTR .LC12[rip]	# vect_ret.358, vect_var_.349,
 1121      15000000 
 1121      00
  68:saya.cpp      ****     return ret / dx / dx;
 1122              		.loc 8 68 0 discriminator 2
 1123 0887 C4416D5E 		vdivpd	ymm12, ymm2, ymm13	# vect_var_.359, vect_ret.358, tmp923
 1123      E5
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1124              		.loc 8 64 0 discriminator 2
 1125 088c C5FD28BC 		vmovapd	ymm7, YMMWORD PTR [rsp+352]	# vect_var_.310, %sfp
 1125      24600100 
 1125      00
 1126              	.LBE715:
 1127              	.LBE745:
 1128              	.LBE775:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1129              		.loc 8 75 0 discriminator 2
 1130 0895 C5855915 		vmulpd	ymm2, ymm15, YMMWORD PTR .LC14[rip]	# vect_var_.288, tmp1122,
 1130      00000000 
 1131 089d C56D59D9 		vmulpd	ymm11, ymm2, ymm1	# vect_var_.296, vect_var_.288, vect_v.286
 1132              	.LBB776:
 1133              	.LBB746:
 1134              	.LBB716:
  68:saya.cpp      ****     return ret / dx / dx;
 1135              		.loc 8 68 0 discriminator 2
 1136 08a1 C4C11D5E 		vdivpd	ymm4, ymm12, ymm13	# vect_var_.414, vect_var_.359, tmp923
 1136      E5
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1137              		.loc 8 64 0 discriminator 2
 1138 08a6 C54558BC 		vaddpd	ymm15, ymm7, YMMWORD PTR [rsp+320]	# vect_var_.313, vect_var_.310, %sfp
 1138      24400100 
 1138      00
 1139              	.LBE716:
 1140              	.LBE746:
 1141              	.LBE776:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1142              		.loc 8 75 0 discriminator 2
 1143 08af C462BD98 		vfmadd132pd	ymm11, ymm8, ymm1	# vect_var_.296, vect_var_.294, vect_v.286
 1143      D9
 1144 08b4 C5355905 		vmulpd	ymm8, ymm9, YMMWORD PTR .LC14[rip]	# vect_var_.288, tmp1125,
 1144      00000000 
 1145 08bc C4C12D5C 		vsubpd	ymm7, ymm10, YMMWORD PTR [r14+32+rax]	# vect_var_.292, tmp1126, MEM[base: vect_pU.279_413, 
 1145      7C0620
 1146              	.LBB777:
 1147              	.LBB778:
 1148              	.LBB779:
 1149              	.LBB780:
 1150              	.LBB781:
  53:saya.cpp      ****   return ar[x][y][z];
 1151              		.loc 8 53 0 discriminator 2
 1152 08c3 C57D28CB 		vmovapd	ymm9, ymm3	# tmp1073, tmp910
 1153              	.LBE781:
 1154              	.LBE780:
 1155              	.LBE779:
 1156              	.LBE778:
 1157              	.LBE777:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1158              		.loc 8 75 0 discriminator 2
 1159 08c7 C4E2A598 		vfmadd132pd	ymm4, ymm11, YMMWORD PTR .LC16[rip]	# vect_var_.414, vect_var_.296,
 1159      25000000 
 1159      00
 1160              	.LBB914:
 1161              	.LBB747:
 1162              	.LBB717:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1163              		.loc 8 67 0 discriminator 2
 1164 08d0 C4417D10 		vmovupd	ymm12, YMMWORD PTR [r14+32+rax]	# vect_ret.358, MEM[base: vect_pU.279_413, index: ivtmp.48
 1164      640620
 1165              	.LBE717:
 1166              	.LBE747:
 1167              	.LBE914:
 1168              	.LBB915:
 1169              	.LBB892:
 1170              	.LBB870:
 1171              	.LBB785:
 1172              	.LBB786:
  53:saya.cpp      ****   return ar[x][y][z];
 1173              		.loc 8 53 0 discriminator 2
 1174 08d7 C57D28D3 		vmovapd	ymm10, ymm3	# tmp1075, tmp910
 1175              	.LBE786:
 1176              	.LBE785:
 1177              	.LBE870:
 1178              	.LBE892:
 1179              	.LBE915:
 1180              	.LBB916:
 1181              	.LBB748:
 1182              	.LBB718:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1183              		.loc 8 65 0 discriminator 2
 1184 08db C5855894 		vaddpd	ymm2, ymm15, YMMWORD PTR [rsp+384]	# vect_var_.317, vect_var_.313, %sfp
 1184      24800100 
 1184      00
 1185              	.LBE718:
 1186              	.LBE748:
 1187              	.LBE916:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1188              		.loc 8 75 0 discriminator 2
 1189 08e4 C545593D 		vmulpd	ymm15, ymm7, YMMWORD PTR .LC15[rip]	# vect_var_.294, vect_var_.292,
 1189      00000000 
 1190              	.LBB917:
 1191              	.LBB893:
 1192              	.LBB871:
 1193              	.LBB795:
 1194              	.LBB796:
  53:saya.cpp      ****   return ar[x][y][z];
 1195              		.loc 8 53 0 discriminator 2
 1196 08ec C5F96FBC 		vmovdqa	xmm7, XMMWORD PTR [rsp+272]	# tmp441, %sfp
 1196      24100100 
 1196      00
 1197              	.LBE796:
 1198              	.LBE795:
 1199              	.LBE871:
 1200              	.LBE893:
 1201              	.LBE917:
 1202              	.LBB918:
 1203              	.LBB749:
 1204              	.LBB719:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1205              		.loc 8 65 0 discriminator 2
 1206 08f5 C4416D58 		vaddpd	ymm14, ymm2, ymm14	# vect_var_.321, vect_var_.317, vect_var_.318
 1206      F6
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1207              		.loc 8 66 0 discriminator 2
 1208 08fa C58D58F6 		vaddpd	ymm6, ymm14, ymm6	# vect_var_.335, vect_var_.321, vect_var_.332
 1209              	.LBE719:
 1210              	.LBE749:
 1211              	.LBE918:
 1212              	.LBB919:
 1213              	.LBB894:
 1214              	.LBB872:
 1215              	.LBB809:
 1216              	.LBB797:
  53:saya.cpp      ****   return ar[x][y][z];
 1217              		.loc 8 53 0 discriminator 2
 1218 08fe C57D28F3 		vmovapd	ymm14, ymm3	# tmp1071, tmp910
 1219              	.LBE797:
 1220              	.LBE809:
 1221              	.LBE872:
 1222              	.LBE894:
 1223              	.LBE919:
 1224              	.LBB920:
 1225              	.LBB750:
 1226              	.LBB720:
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1227              		.loc 8 66 0 discriminator 2
 1228 0902 C5CD58ED 		vaddpd	ymm5, ymm6, ymm5	# vect_var_.349, vect_var_.335, vect_var_.346
 1229              	.LBE720:
 1230              	.LBE750:
 1231              	.LBE920:
 1232              	.LBB921:
 1233              	.LBB895:
 1234              	.LBB873:
 1235              	.LBB810:
 1236              	.LBB798:
  53:saya.cpp      ****   return ar[x][y][z];
 1237              		.loc 8 53 0 discriminator 2
 1238 0906 C5F96FB4 		vmovdqa	xmm6, XMMWORD PTR [rsp+288]	# tmp438, %sfp
 1238      24200100 
 1238      00
 1239              	.LBE798:
 1240              	.LBE810:
 1241              	.LBE873:
 1242              	.LBE895:
 1243              	.LBE921:
 1244              	.LBB922:
 1245              	.LBB751:
 1246              	.LBB721:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1247              		.loc 8 67 0 discriminator 2
 1248 090f C462D59C 		vfnmadd132pd	ymm12, ymm5, YMMWORD PTR .LC12[rip]	# vect_ret.358, vect_var_.349,
 1248      25000000 
 1248      00
 1249              	.LBE721:
 1250              	.LBE751:
 1251              	.LBE922:
 1252              	.LBB923:
 1253              	.LBB896:
 1254              	.LBB874:
 1255              	.LBB811:
 1256              	.LBB799:
  53:saya.cpp      ****   return ar[x][y][z];
 1257              		.loc 8 53 0 discriminator 2
 1258 0918 C5FD28EB 		vmovapd	ymm5, ymm3	# tmp1072, tmp910
 1259              	.LBE799:
 1260              	.LBE811:
 1261              	.LBE874:
 1262              	.LBE896:
 1263              	.LBE923:
 1264              	.LBB924:
 1265              	.LBB752:
 1266              	.LBB722:
  68:saya.cpp      ****     return ret / dx / dx;
 1267              		.loc 8 68 0 discriminator 2
 1268 091c C4411D5E 		vdivpd	ymm11, ymm12, ymm13	# vect_var_.359, vect_ret.358, tmp923
 1268      DD
 1269 0921 C4C1255E 		vdivpd	ymm2, ymm11, ymm13	# vect_var_.414, vect_var_.359, tmp923
 1269      D5
 1270              	.LBE722:
 1271              	.LBE752:
 1272              	.LBE924:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1273              		.loc 8 75 0 discriminator 2
 1274 0926 C53D59E0 		vmulpd	ymm12, ymm8, ymm0	# vect_var_.296, vect_var_.288, vect_v.287
 1275 092a C4628598 		vfmadd132pd	ymm12, ymm15, ymm0	# vect_var_.296, vect_var_.294, vect_v.287
 1275      E0
 1276              	.LBB925:
 1277              	.LBB897:
 1278              	.LBB875:
 1279              	.LBB812:
 1280              	.LBB800:
  53:saya.cpp      ****   return ar[x][y][z];
 1281              		.loc 8 53 0 discriminator 2
 1282 092f C442D592 		vgatherdpd	ymm11, QWORD PTR [r9+xmm7*8], ymm5	# vect_var_.373,, tmp1072
 1282      1CF9
 1283              	.LBE800:
 1284              	.LBE812:
 1285              	.LBB813:
 1286              	.LBB787:
 1287 0935 C5FD28EB 		vmovapd	ymm5, ymm3	# tmp1076, tmp910
 1288              	.LBE787:
 1289              	.LBE813:
 1290              	.LBB814:
 1291              	.LBB801:
 1292 0939 C4428D92 		vgatherdpd	ymm15, QWORD PTR [r9+xmm6*8], ymm14	# vect_var_.373,, tmp1071
 1292      3CF1
 1293              	.LBE801:
 1294              	.LBE814:
 1295              	.LBE875:
 1296              	.LBE897:
 1297              	.LBE925:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1298              		.loc 8 75 0 discriminator 2
 1299 093f C4E29D98 		vfmadd132pd	ymm2, ymm12, YMMWORD PTR .LC16[rip]	# vect_var_.414, vect_var_.296,
 1299      15000000 
 1299      00
 1300              	.LVL66:
 1301              	.LBB926:
 1302              	.LBB898:
 1303              	.LBB876:
 1304              	.LBB815:
 1305              	.LBB782:
  53:saya.cpp      ****   return ar[x][y][z];
 1306              		.loc 8 53 0 discriminator 2
 1307 0948 C57D28E3 		vmovapd	ymm12, ymm3	# tmp1074, tmp910
 1308              	.LBE782:
 1309              	.LBE815:
 1310              	.LBB816:
 1311              	.LBB802:
 1312 094c C57D299C 		vmovapd	YMMWORD PTR [rsp+288], ymm11	# %sfp, vect_var_.373
 1312      24200100 
 1312      00
 1313              	.LVL67:
 1314              	.LBE802:
 1315              	.LBE816:
 1316              	.LBB817:
 1317              	.LBB783:
 1318 0955 C442B592 		vgatherdpd	ymm14, QWORD PTR [r8+xmm6*8], ymm9	# vect_var_.376,, tmp1073
 1318      34F0
 1319              	.LBE783:
 1320              	.LBE817:
 1321              	.LBB818:
 1322              	.LBB819:
 1323 095b C57D28CB 		vmovapd	ymm9, ymm3	# tmp1077, tmp910
 1324              	.LBE819:
 1325              	.LBE818:
 1326              	.LBB826:
 1327              	.LBB784:
 1328 095f C4429D92 		vgatherdpd	ymm8, QWORD PTR [r8+xmm7*8], ymm12	# vect_var_.376,, tmp1074
 1328      04F8
 1329 0965 C57D2984 		vmovapd	YMMWORD PTR [rsp+320], ymm8	# %sfp, vect_var_.376
 1329      24400100 
 1329      00
 1330              	.LBE784:
 1331              	.LBE826:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1332              		.loc 8 64 0 discriminator 2
 1333 096e C4410558 		vaddpd	ymm15, ymm15, ymm14	# vect_var_.379, vect_var_.373, vect_var_.376
 1333      FE
 1334              	.LBB827:
 1335              	.LBB788:
  53:saya.cpp      ****   return ar[x][y][z];
 1336              		.loc 8 53 0 discriminator 2
 1337 0973 C462AD92 		vgatherdpd	ymm12, QWORD PTR [rdi+xmm6*8], ymm10	# vect_var_.380,, tmp1075
 1337      24F7
 1338 0979 C462D592 		vgatherdpd	ymm11, QWORD PTR [rdi+xmm7*8], ymm5	# vect_var_.380,, tmp1076
 1338      1CFF
 1339              	.LBE788:
 1340              	.LBE827:
 1341              	.LBB828:
 1342              	.LBB829:
 1343 097f C5F96FAC 		vmovdqa	xmm5, XMMWORD PTR [rsp+256]	# tmp479, %sfp
 1343      24000100 
 1343      00
 1344              	.LBE829:
 1345              	.LBE828:
 1346              	.LBB835:
 1347              	.LBB789:
 1348 0988 C57D299C 		vmovapd	YMMWORD PTR [rsp+352], ymm11	# %sfp, vect_var_.380
 1348      24600100 
 1348      00
 1349              	.LBE789:
 1350              	.LBE835:
 1351              	.LBB836:
 1352              	.LBB820:
 1353 0991 C462B592 		vgatherdpd	ymm11, QWORD PTR [rsi+xmm6*8], ymm9	# vect_var_.384,, tmp1077
 1353      1CF6
 1354              	.LBE820:
 1355              	.LBE836:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1356              		.loc 8 65 0 discriminator 2
 1357 0997 C4410558 		vaddpd	ymm14, ymm15, ymm12	# vect_var_.383, vect_var_.379, vect_var_.380
 1357      F4
 1358              	.LBB837:
 1359              	.LBB821:
  53:saya.cpp      ****   return ar[x][y][z];
 1360              		.loc 8 53 0 discriminator 2
 1361 099c C5FD28F3 		vmovapd	ymm6, ymm3	# tmp1078, tmp910
 1362 09a0 C462CD92 		vgatherdpd	ymm8, QWORD PTR [rsi+xmm7*8], ymm6	# vect_var_.384,, tmp1078
 1362      04FE
 1363              	.LVL68:
 1364              	.LBE821:
 1365              	.LBE837:
 1366              	.LBB838:
 1367              	.LBB830:
 1368 09a6 C5FD28FB 		vmovapd	ymm7, ymm3	# tmp1079, tmp910
 1369 09aa C57D28CB 		vmovapd	ymm9, ymm3	# tmp1080, tmp910
 1370 09ae C5F96FB4 		vmovdqa	xmm6, XMMWORD PTR [rsp+240]	# tmp482, %sfp
 1370      24F00000 
 1370      00
 1371              	.LBE830:
 1372              	.LBE838:
 1373              	.LBE876:
 1374              	.LBE898:
 1375              	.LBE926:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1376              		.loc 8 76 0 discriminator 2
 1377 09b7 C575593D 		vmulpd	ymm15, ymm1, YMMWORD PTR .LC17[rip]	# vect_var_.370, vect_v.286,
 1377      00000000 
 1378              	.LBB927:
 1379              	.LBB899:
 1380              	.LBB877:
 1381              	.LBB839:
 1382              	.LBB831:
  53:saya.cpp      ****   return ar[x][y][z];
 1383              		.loc 8 53 0 discriminator 2
 1384 09bf C462C592 		vgatherdpd	ymm10, QWORD PTR [rdx+xmm5*8], ymm7	# vect_var_.388,, tmp1079
 1384      14EA
 1385              	.LBE831:
 1386              	.LBE839:
 1387              	.LBB840:
 1388              	.LBB841:
 1389 09c5 C5F96FAC 		vmovdqa	xmm5, XMMWORD PTR [rsp+224]	# tmp502, %sfp
 1389      24E00000 
 1389      00
 1390              	.LBE841:
 1391              	.LBE840:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1392              		.loc 8 65 0 discriminator 2
 1393 09ce C4410D58 		vaddpd	ymm12, ymm14, ymm11	# vect_var_.387, vect_var_.383, vect_var_.384
 1393      E3
 1394              	.LBB847:
 1395              	.LBB832:
  53:saya.cpp      ****   return ar[x][y][z];
 1396              		.loc 8 53 0 discriminator 2
 1397 09d3 C4E2B592 		vgatherdpd	ymm7, QWORD PTR [rdx+xmm6*8], ymm9	# vect_var_.388,, tmp1080
 1397      3CF2
 1398              	.LBE832:
 1399              	.LBE847:
 1400              	.LBB848:
 1401              	.LBB842:
 1402 09d9 C5FD28F3 		vmovapd	ymm6, ymm3	# tmp1081, tmp910
 1403              	.LBE842:
 1404              	.LBE848:
 1405              	.LBB849:
 1406              	.LBB833:
 1407 09dd C5FD29BC 		vmovapd	YMMWORD PTR [rsp+384], ymm7	# %sfp, vect_var_.388
 1407      24800100 
 1407      00
 1408              	.LBE833:
 1409              	.LBE849:
 1410              	.LBB850:
 1411              	.LBB843:
 1412 09e6 C5FD28FB 		vmovapd	ymm7, ymm3	# tmp1082, tmp910
 1413 09ea C462CD92 		vgatherdpd	ymm9, QWORD PTR [rdx+xmm5*8], ymm6	# vect_var_.392,, tmp1081
 1413      0CEA
 1414              	.LBE843:
 1415              	.LBE850:
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1416              		.loc 8 66 0 discriminator 2
 1417 09f0 C4411D58 		vaddpd	ymm11, ymm12, ymm10	# vect_var_.391, vect_var_.387, vect_var_.388
 1417      DA
 1418              	.LBB851:
 1419              	.LBB844:
  53:saya.cpp      ****   return ar[x][y][z];
 1420              		.loc 8 53 0 discriminator 2
 1421 09f5 C5F96FAC 		vmovdqa	xmm5, XMMWORD PTR [rsp+208]	# tmp505, %sfp
 1421      24D00000 
 1421      00
 1422 09fe C4E2C592 		vgatherdpd	ymm6, QWORD PTR [rdx+xmm5*8], ymm7	# vect_var_.392,, tmp1082
 1422      34EA
 1423              	.LBE844:
 1424              	.LBE851:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1425              		.loc 8 67 0 discriminator 2
 1426 0a04 C4C17D10 		vmovupd	ymm7, YMMWORD PTR [r13+0+rax]	# vect_ret.404, MEM[base: vect_pV.285_402, index: ivtmp.486_
 1426      7C0500
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1427              		.loc 8 66 0 discriminator 2
 1428 0a0b C4412558 		vaddpd	ymm10, ymm11, ymm9	# vect_var_.395, vect_var_.391, vect_var_.392
 1428      D1
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1429              		.loc 8 67 0 discriminator 2
 1430 0a10 C4417D10 		vmovupd	ymm11, YMMWORD PTR [r13+32+rax]	# vect_ret.404, MEM[base: vect_pV.285_402, index: ivtmp.48
 1430      5C0520
 1431 0a17 C4E2AD9C 		vfnmadd132pd	ymm7, ymm10, YMMWORD PTR .LC12[rip]	# vect_ret.404, vect_var_.395,
 1431      3D000000 
 1431      00
  68:saya.cpp      ****     return ret / dx / dx;
 1432              		.loc 8 68 0 discriminator 2
 1433 0a20 C441455E 		vdivpd	ymm9, ymm7, ymm13	# vect_var_.405, vect_ret.404, tmp923
 1433      CD
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1434              		.loc 8 64 0 discriminator 2
 1435 0a25 C57D2894 		vmovapd	ymm10, YMMWORD PTR [rsp+320]	# vect_var_.376, %sfp
 1435      24400100 
 1435      00
  68:saya.cpp      ****     return ret / dx / dx;
 1436              		.loc 8 68 0 discriminator 2
 1437 0a2e C4C1355E 		vdivpd	ymm5, ymm9, ymm13	# vect_var_.421, vect_var_.405, tmp923
 1437      ED
 1438              	.LBE877:
 1439              	.LBE899:
 1440              	.LBE927:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1441              		.loc 8 76 0 discriminator 2
 1442 0a33 C4C17D28 		vmovapd	ymm7, YMMWORD PTR [r14+rax]	# tmp1154, MEM[base: vect_pU.279_413, index: ivtmp.486_586, of
 1442      3C06
 1443              	.LBB928:
 1444              	.LBB900:
 1445              	.LBB878:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1446              		.loc 8 64 0 discriminator 2
 1447 0a39 C52D588C 		vaddpd	ymm9, ymm10, YMMWORD PTR [rsp+288]	# vect_var_.379, vect_var_.376, %sfp
 1447      24200100 
 1447      00
 1448              	.LBE878:
 1449              	.LBE900:
 1450              	.LBE928:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1451              		.loc 8 76 0 discriminator 2
 1452 0a42 C5455935 		vmulpd	ymm14, ymm7, YMMWORD PTR .LC18[rip]	# vect_var_.366, tmp1154,
 1452      00000000 
 1453 0a4a C50D59E1 		vmulpd	ymm12, ymm14, ymm1	# vect_var_.372, vect_var_.366, vect_v.286
 1454 0a4e C462859A 		vfmsub132pd	ymm12, ymm15, ymm1	# vect_var_.372, vect_var_.370, vect_v.286
 1454      E1
 1455 0a53 C4E29D98 		vfmadd132pd	ymm5, ymm12, YMMWORD PTR .LC19[rip]	# vect_var_.421, vect_var_.372,
 1455      2D000000 
 1455      00
 1456 0a5c C4417D28 		vmovapd	ymm10, YMMWORD PTR [r14+32+rax]	# tmp1156, MEM[base: vect_pU.279_413, index: ivtmp.486_586
 1456      540620
 1457              	.LBB929:
 1458              	.LBB901:
 1459              	.LBB879:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1460              		.loc 8 65 0 discriminator 2
 1461 0a63 C53558BC 		vaddpd	ymm15, ymm9, YMMWORD PTR [rsp+352]	# vect_var_.383, vect_var_.379, %sfp
 1461      24600100 
 1461      00
 1462              	.LBE879:
 1463              	.LBE901:
 1464              	.LBE929:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1465              		.loc 8 76 0 discriminator 2
 1466 0a6c C52D590D 		vmulpd	ymm9, ymm10, YMMWORD PTR .LC18[rip]	# vect_var_.366, tmp1156,
 1466      00000000 
 1467              	.LBB930:
 1468              	.LBB902:
 1469              	.LBB880:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1470              		.loc 8 65 0 discriminator 2
 1471 0a74 C4410558 		vaddpd	ymm8, ymm15, ymm8	# vect_var_.387, vect_var_.383, vect_var_.384
 1471      C0
 1472              	.LBE880:
 1473              	.LBE902:
 1474              	.LBE930:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1475              		.loc 8 76 0 discriminator 2
 1476 0a79 C53559F8 		vmulpd	ymm15, ymm9, ymm0	# vect_var_.372, vect_var_.366, vect_v.287
 1477              	.LBB931:
 1478              	.LBB903:
 1479              	.LBB881:
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1480              		.loc 8 66 0 discriminator 2
 1481 0a7d C5BD58BC 		vaddpd	ymm7, ymm8, YMMWORD PTR [rsp+384]	# vect_var_.391, vect_var_.387, %sfp
 1481      24800100 
 1481      00
 1482              	.LBE881:
 1483              	.LBE903:
 1484              	.LBE931:
  77:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1485              		.loc 8 77 0 discriminator 2
 1486 0a86 C4417D28 		vmovapd	ymm8, YMMWORD PTR [r14+rax]	# tmp1157, MEM[base: vect_pU.279_413, index: ivtmp.486_586, of
 1486      0406
 1487 0a8c C4E2BD98 		vfmadd132pd	ymm4, ymm8, YMMWORD PTR .LC20[rip]	# vect_var_.414, tmp1157,
 1487      25000000 
 1487      00
 1488              	.LBB932:
 1489              	.LBB904:
 1490              	.LBB882:
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1491              		.loc 8 66 0 discriminator 2
 1492 0a95 C5C558F6 		vaddpd	ymm6, ymm7, ymm6	# vect_var_.395, vect_var_.391, vect_var_.392
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1493              		.loc 8 67 0 discriminator 2
 1494 0a99 C462CD9C 		vfnmadd132pd	ymm11, ymm6, YMMWORD PTR .LC12[rip]	# vect_ret.404, vect_var_.395,
 1494      1D000000 
 1494      00
  68:saya.cpp      ****     return ret / dx / dx;
 1495              		.loc 8 68 0 discriminator 2
 1496 0aa2 C441255E 		vdivpd	ymm14, ymm11, ymm13	# vect_var_.405, vect_ret.404, tmp923
 1496      F5
 1497              	.LBE882:
 1498              	.LBE904:
 1499              	.LBE932:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1500              		.loc 8 76 0 discriminator 2
 1501 0aa7 C57D591D 		vmulpd	ymm11, ymm0, YMMWORD PTR .LC17[rip]	# vect_var_.370, vect_v.287,
 1501      00000000 
 1502              	.LBB933:
 1503              	.LBB905:
 1504              	.LBB883:
  68:saya.cpp      ****     return ret / dx / dx;
 1505              		.loc 8 68 0 discriminator 2
 1506 0aaf C4410D5E 		vdivpd	ymm12, ymm14, ymm13	# vect_var_.421, vect_var_.405, tmp923
 1506      E5
 1507              	.LBE883:
 1508              	.LBE905:
 1509              	.LBE933:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1510              		.loc 8 76 0 discriminator 2
 1511 0ab4 C462A59A 		vfmsub132pd	ymm15, ymm11, ymm0	# vect_var_.372, vect_var_.370, vect_v.287
 1511      F8
 1512 0ab9 C4628598 		vfmadd132pd	ymm12, ymm15, YMMWORD PTR .LC19[rip]	# vect_var_.421, vect_var_.372,
 1512      25000000 
 1512      00
  77:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1513              		.loc 8 77 0 discriminator 2
 1514 0ac2 C4C17D29 		vmovapd	YMMWORD PTR [r15+rax], ymm4	# MEM[base: _521, index: ivtmp.486_586, offset: 0B], vect_var_
 1514      2407
 1515              		.loc 8 78 0 discriminator 2
 1516 0ac8 488BB424 		mov	rsi, QWORD PTR [rsp+200]	# D.36894, %sfp
 1516      C8000000 
 1517 0ad0 C4E2F598 		vfmadd132pd	ymm5, ymm1, YMMWORD PTR .LC20[rip]	# vect_var_.421, vect_v.286,
 1517      2D000000 
 1517      00
 1518 0ad9 C462FD98 		vfmadd132pd	ymm12, ymm0, YMMWORD PTR .LC20[rip]	# vect_var_.421, vect_v.287,
 1518      25000000 
 1518      00
  77:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1519              		.loc 8 77 0 discriminator 2
 1520 0ae2 C4C17D28 		vmovapd	ymm4, YMMWORD PTR [r14+32+rax]	# tmp1158, MEM[base: vect_pU.279_413, index: ivtmp.486_586,
 1520      640620
 1521 0ae9 C4E2DD98 		vfmadd132pd	ymm2, ymm4, YMMWORD PTR .LC20[rip]	# vect_var_.414, tmp1158,
 1521      15000000 
 1521      00
 1522 0af2 C4C17D29 		vmovapd	YMMWORD PTR [r15+32+rax], ymm2	# MEM[base: _521, index: ivtmp.486_586, offset: 32B], vect_
 1522      540720
 1523              		.loc 8 78 0 discriminator 2
 1524 0af9 C5FD292C 		vmovapd	YMMWORD PTR [rsi+rax], ymm5	# MEM[base: _516, index: ivtmp.486_586, offset: 0B], vect_var_
 1524      06
 1525 0afe C57D2964 		vmovapd	YMMWORD PTR [rsi+32+rax], ymm12	# MEM[base: _516, index: ivtmp.486_586, offset: 32B], vect
 1525      0620
 1526 0b04 4883C040 		add	rax, 64	# ivtmp.486,
 1527 0b08 483D0003 		cmp	rax, 768	# ivtmp.486,
 1527      0000
 1528 0b0e 0F851CFB 		jne	.L62	#,
 1528      FFFF
 1529 0b14 4C8B7C24 		mov	r15, QWORD PTR [rsp+40]	# ivtmp.514, %sfp
 1529      28
 1530 0b19 4C89AC24 		mov	QWORD PTR [rsp+272], r13	# %sfp, ivtmp.519
 1530      10010000 
 1531              		.loc 8 78 0 is_stmt 0
 1532 0b21 31C9     		xor	ecx, ecx	# ivtmp.461
 1533              	.LBB934:
 1534              	.LBB906:
 1535              	.LBB884:
 1536              	.LBB852:
 1537              	.LBB803:
  53:saya.cpp      ****   return ar[x][y][z];
 1538              		.loc 8 53 0 is_stmt 1
 1539 0b23 4C8B6424 		mov	r12, QWORD PTR [rsp+64]	# D.36884, %sfp
 1539      40
 1540 0b28 4C89B424 		mov	QWORD PTR [rsp+288], r14	# %sfp, ivtmp.518
 1540      20010000 
 1541              	.LBE803:
 1542              	.LBE852:
 1543              	.LBB853:
 1544              	.LBB790:
 1545 0b30 4C8B5424 		mov	r10, QWORD PTR [rsp+56]	# D.36884, %sfp
 1545      38
 1546              	.LBE790:
 1547              	.LBE853:
 1548              	.LBB854:
 1549              	.LBB822:
 1550 0b35 4C8B4424 		mov	r8, QWORD PTR [rsp+48]	# D.36884, %sfp
 1550      30
 1551 0b3a 488B7424 		mov	rsi, QWORD PTR [rsp+24]	# D.36886, %sfp
 1551      18
 1552 0b3f 488B5424 		mov	rdx, QWORD PTR [rsp+32]	# D.36886, %sfp
 1552      20
 1553              	.LBE822:
 1554              	.LBE854:
 1555              	.LBB855:
 1556              	.LBB804:
 1557 0b44 4B8D1CA4 		lea	rbx, [r12+r12*4]	# tmp942,
 1558              	.LBE804:
 1559              	.LBE855:
 1560              	.LBB856:
 1561              	.LBB791:
 1562 0b48 4F8D0C92 		lea	r9, [r10+r10*4]	# tmp947,
 1563 0b4c 4C8B6C24 		mov	r13, QWORD PTR [rsp+80]	# D.36887, %sfp
 1563      50
 1564              	.LBE791:
 1565              	.LBE856:
 1566              	.LBB857:
 1567              	.LBB823:
 1568 0b51 4B8D0480 		lea	rax, [r8+r8*4]	# tmp952,
 1569 0b55 4C8B6424 		mov	r12, QWORD PTR [rsp+96]	# D.36887, %sfp
 1569      60
 1570 0b5a 4E8D143E 		lea	r10, [rsi+r15]	# D.36886,
 1571 0b5e 4C8B4424 		mov	r8, QWORD PTR [rsp+72]	# D.36887, %sfp
 1571      48
 1572 0b63 488B7424 		mov	rsi, QWORD PTR [rsp+88]	# D.36887, %sfp
 1572      58
 1573 0b68 4E8D1C3A 		lea	r11, [rdx+r15]	# D.36886,
 1574 0b6c 4C899424 		mov	QWORD PTR [rsp+320], r10	# %sfp, D.36886
 1574      40010000 
 1575 0b74 488D1480 		lea	rdx, [rax+rax*4]	# tmp954,
 1576 0b78 4C899C24 		mov	QWORD PTR [rsp+384], r11	# %sfp, D.36886
 1576      80010000 
 1577              	.LBE823:
 1578              	.LBE857:
 1579              	.LBB858:
 1580              	.LBB805:
 1581 0b80 488D3C9B 		lea	rdi, [rbx+rbx*4]	# tmp944,
 1582              	.LBE805:
 1583              	.LBE858:
 1584              	.LBB859:
 1585              	.LBB824:
 1586 0b84 48C1E202 		sal	rdx, 2	# tmp955,
 1587              	.LBE824:
 1588              	.LBE859:
 1589              	.LBB860:
 1590              	.LBB792:
 1591 0b88 4B8D1C89 		lea	rbx, [r9+r9*4]	# tmp949,
 1592              	.LBE792:
 1593              	.LBE860:
 1594              	.LBB861:
 1595              	.LBB806:
 1596 0b8c 48C1E702 		sal	rdi, 2	# tmp945,
 1597 0b90 48899424 		mov	QWORD PTR [rsp+352], rdx	# %sfp, tmp955
 1597      60010000 
 1598              	.LBE806:
 1599              	.LBE861:
 1600              	.LBB862:
 1601              	.LBB793:
 1602 0b98 48C1E302 		sal	rbx, 2	# tmp950,
 1603 0b9c 0F1F4000 		.p2align 4,,10
 1604              		.p2align 3
 1605              	.L65:
 1606              	.LVL69:
 1607 0ba0 448DB1C4 		lea	r14d, [rcx+196]	# D.36885,
 1607      000000
 1608              	.LBE793:
 1609              	.LBE862:
 1610              	.LBE884:
 1611              	.LBE906:
 1612              	.LBE934:
 1613              	.LBB935:
 1614              	.LBB753:
 1615              	.LBB723:
 1616              	.LBB692:
 1617              	.LBB632:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1618              		.loc 8 52 0
 1619 0ba7 B81F85EB 		mov	eax, 1374389535	# tmp1083,
 1619      51
 1620 0bac 41B96400 		mov	r9d, 100	#,
 1620      0000
 1621 0bb2 41F7EE   		imul	r14d	# D.36885
 1622 0bb5 4589F3   		mov	r11d, r14d	# tmp638, D.36885
 1623              	.LBE632:
 1624              	.LBE692:
 1625              	.LBB693:
 1626              	.LBB666:
 1627 0bb8 B81F85EB 		mov	eax, 1374389535	# tmp1084,
 1627      51
 1628              	.LBE666:
 1629              	.LBE693:
 1630              	.LBB694:
 1631              	.LBB633:
 1632 0bbd 41C1FB1F 		sar	r11d, 31	# tmp638,
 1633              	.LBE633:
 1634              	.LBE694:
 1635              	.LBE723:
 1636              	.LBE753:
 1637              	.LBE935:
 1638              	.LBB936:
 1639              	.LBB907:
 1640              	.LBB885:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1641              		.loc 8 67 0
 1642 0bc1 C57B101D 		vmovsd	xmm11, QWORD PTR .LC21[rip]	# tmp1169,
 1642      00000000 
 1643              	.LBE885:
 1644              	.LBE907:
 1645              	.LBE936:
  74:saya.cpp      **** 	auto u = U[x][y][z],  v = V[x][y][z];
 1646              		.loc 8 74 0
 1647 0bc9 C4417B10 		vmovsd	xmm14, QWORD PTR U[r15+768+rcx*8]	# u, MEM[symbol: U, base: ivtmp.514_401, index: ivtmp.461
 1647      B4CF0000 
 1647      0000
 1648              	.LVL70:
 1649 0bd3 C4C17B10 		vmovsd	xmm0, QWORD PTR V[r15+768+rcx*8]	# v, MEM[symbol: V, base: ivtmp.514_401, index: ivtmp.461_
 1649      84CF0000 
 1649      0000
 1650              	.LVL71:
 1651              	.LBB937:
 1652              	.LBB754:
 1653              	.LBB724:
 1654              	.LBB695:
 1655              	.LBB634:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1656              		.loc 8 52 0
 1657 0bdd C1FA05   		sar	edx, 5	# z,
 1658              	.LBE634:
 1659              	.LBE695:
 1660              	.LBE724:
 1661              	.LBE754:
 1662              	.LBE937:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1663              		.loc 8 76 0
 1664 0be0 C50B5905 		vmulsd	xmm8, xmm14, QWORD PTR .LC24[rip]	# D.36891, u,
 1664      00000000 
 1665              	.LBB938:
 1666              	.LBB755:
 1667              	.LBB725:
 1668              	.LBB696:
 1669              	.LBB635:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1670              		.loc 8 52 0
 1671 0be8 4429DA   		sub	edx, r11d	# z, tmp638
 1672 0beb 410FAFD1 		imul	edx, r9d	# tmp639,
 1673 0bef 448D99C3 		lea	r11d, [rcx+195]	# D.36885,
 1673      000000
 1674              	.LBE635:
 1675              	.LBE696:
 1676              	.LBB697:
 1677              	.LBB667:
 1678 0bf6 41B96400 		mov	r9d, 100	#,
 1678      0000
 1679              	.LBE667:
 1680              	.LBE697:
 1681              	.LBE725:
 1682              	.LBE755:
 1683              	.LBE938:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1684              		.loc 8 76 0
 1685 0bfc C57B593D 		vmulsd	xmm15, xmm0, QWORD PTR .LC23[rip]	# D.36891, v,
 1685      00000000 
 1686              	.LBB939:
 1687              	.LBB756:
 1688              	.LBB726:
 1689              	.LBB698:
 1690              	.LBB668:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1691              		.loc 8 52 0
 1692 0c04 4589DA   		mov	r10d, r11d	# tmp644, D.36885
 1693 0c07 41C1FA1F 		sar	r10d, 31	# tmp644,
 1694              	.LBE668:
 1695              	.LBE698:
 1696              	.LBB699:
 1697              	.LBB636:
 1698 0c0b 4129D6   		sub	r14d, edx	# z, tmp639
 1699              	.LVL72:
 1700              	.LBE636:
 1701              	.LBE699:
 1702              	.LBB700:
 1703              	.LBB669:
 1704 0c0e 41F7EB   		imul	r11d	# D.36885
 1705              	.LVL73:
 1706              	.LBE669:
 1707              	.LBE700:
 1708              	.LBB701:
 1709              	.LBB679:
 1710 0c11 B81F85EB 		mov	eax, 1374389535	# tmp1085,
 1710      51
 1711              	.LVL74:
 1712              	.LBE679:
 1713              	.LBE701:
 1714              	.LBE726:
 1715              	.LBE756:
 1716              	.LBE939:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1717              		.loc 8 76 0
 1718 0c16 C5BB59E0 		vmulsd	xmm4, xmm8, xmm0	# D.36891, D.36891, v
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1719              		.loc 8 75 0
 1720 0c1a C50B5905 		vmulsd	xmm8, xmm14, QWORD PTR .LC26[rip]	# D.36891, u,
 1720      00000000 
 1721              	.LBB940:
 1722              	.LBB757:
 1723              	.LBB727:
 1724              	.LBB702:
 1725              	.LBB670:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1726              		.loc 8 52 0
 1727 0c22 C1FA05   		sar	edx, 5	# z,
 1728 0c25 4429D2   		sub	edx, r10d	# z, tmp644
 1729 0c28 410FAFD1 		imul	edx, r9d	# tmp645,
 1730 0c2c 448D91C5 		lea	r10d, [rcx+197]	# D.36885,
 1730      000000
 1731              	.LBE670:
 1732              	.LBE702:
 1733              	.LBB703:
 1734              	.LBB680:
 1735 0c33 4589D1   		mov	r9d, r10d	# tmp650, D.36885
 1736              	.LBE680:
 1737              	.LBE703:
 1738              	.LBE727:
 1739              	.LBE757:
 1740              	.LBE940:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1741              		.loc 8 76 0
 1742 0c36 C4E2819B 		vfmsub132sd	xmm4, xmm15, xmm0	# D.36891, D.36891, v
 1742      E0
 1743              	.LBB941:
 1744              	.LBB758:
 1745              	.LBB728:
 1746              	.LBB704:
 1747              	.LBB681:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1748              		.loc 8 52 0
 1749 0c3b 41C1F91F 		sar	r9d, 31	# tmp650,
 1750              	.LBE681:
 1751              	.LBE704:
 1752              	.LBB705:
 1753              	.LBB671:
 1754 0c3f 4129D3   		sub	r11d, edx	# z, tmp645
 1755              	.LVL75:
 1756              	.LBE671:
 1757              	.LBE705:
 1758              	.LBB706:
 1759              	.LBB682:
 1760 0c42 41F7EA   		imul	r10d	# D.36885
 1761              	.LVL76:
 1762 0c45 B8640000 		mov	eax, 100	#,
 1762      00
 1763              	.LBE682:
 1764              	.LBE706:
 1765              	.LBE728:
 1766              	.LBE758:
 1767              	.LBE941:
 1768              	.LBB942:
 1769              	.LBB908:
 1770              	.LBB886:
 1771              	.LBB863:
 1772              	.LBB834:
  53:saya.cpp      ****   return ar[x][y][z];
 1773              		.loc 8 53 0
 1774 0c4a 4D63DB   		movsx	r11, r11d	# z, z
 1775 0c4d 4901FB   		add	r11, rdi	# tmp702, tmp945
 1776              	.LBE834:
 1777              	.LBE863:
 1778              	.LBE886:
 1779              	.LBE908:
 1780              	.LBE942:
 1781              	.LBB943:
 1782              	.LBB759:
 1783              	.LBB729:
 1784              	.LBB707:
 1785              	.LBB683:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1786              		.loc 8 52 0
 1787 0c50 C1FA05   		sar	edx, 5	# z,
 1788 0c53 4429CA   		sub	edx, r9d	# z, tmp650
 1789              	.LBE683:
 1790              	.LBE707:
 1791              	.LBE729:
 1792              	.LBE759:
 1793              	.LBE943:
 1794              	.LBB944:
 1795              	.LBB909:
 1796              	.LBB887:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1797              		.loc 8 67 0
 1798 0c56 4C8B8C24 		mov	r9, QWORD PTR [rsp+384]	# D.36886, %sfp
 1798      80010000 
 1799              	.LBE887:
 1800              	.LBE909:
 1801              	.LBE944:
 1802              	.LBB945:
 1803              	.LBB760:
 1804              	.LBB730:
 1805              	.LBB708:
 1806              	.LBB684:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1807              		.loc 8 52 0
 1808 0c5e 0FAFD0   		imul	edx, eax	# tmp651,
 1809              	.LBE684:
 1810              	.LBE708:
 1811              	.LBE730:
 1812              	.LBE760:
 1813              	.LBE945:
 1814              	.LBB946:
 1815              	.LBB910:
 1816              	.LBB888:
 1817              	.LBB864:
 1818              	.LBB807:
  53:saya.cpp      ****   return ar[x][y][z];
 1819              		.loc 8 53 0
 1820 0c61 4963C6   		movsx	rax, r14d	# z, z
 1821              	.LBE807:
 1822              	.LBE864:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1823              		.loc 8 64 0
 1824 0c64 4C8B7424 		mov	r14, QWORD PTR [rsp+112]	# D.36887, %sfp
 1824      70
 1825              	.LBE888:
 1826              	.LBE910:
 1827              	.LBE946:
 1828              	.LBB947:
 1829              	.LBB761:
 1830              	.LBB731:
 1831              	.LBB709:
 1832              	.LBB685:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 1833              		.loc 8 52 0
 1834 0c69 4129D2   		sub	r10d, edx	# z, tmp651
 1835              	.LVL77:
 1836              	.LBE685:
 1837              	.LBE709:
 1838              	.LBE731:
 1839              	.LBE761:
 1840              	.LBE947:
 1841              	.LBB948:
 1842              	.LBB911:
 1843              	.LBB889:
 1844              	.LBB865:
 1845              	.LBB808:
  53:saya.cpp      ****   return ar[x][y][z];
 1846              		.loc 8 53 0
 1847 0c6c 488D1407 		lea	rdx, [rdi+rax]	# tmp662,
 1848              	.LBE808:
 1849              	.LBE865:
 1850              	.LBB866:
 1851              	.LBB845:
 1852 0c70 4D63D2   		movsx	r10, r10d	# z, z
 1853              	.LBE845:
 1854              	.LBE866:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1855              		.loc 8 64 0
 1856 0c73 C4C17B10 		vmovsd	xmm1, QWORD PTR [r13+0+rdx*8]	# tmp673, MEM[(Real[40][100] *)_512]
 1856      4CD500
 1857              	.LBB867:
 1858              	.LBB846:
  53:saya.cpp      ****   return ar[x][y][z];
 1859              		.loc 8 53 0
 1860 0c7a 4901FA   		add	r10, rdi	# tmp712, tmp945
 1861              	.LBE846:
 1862              	.LBE867:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1863              		.loc 8 64 0
 1864 0c7d C4C17358 		vaddsd	xmm2, xmm1, QWORD PTR [r14+rdx*8]	# D.36891, tmp673, MEM[(Real[40][100] *)_513]
 1864      14D6
 1865              	.LBB868:
 1866              	.LBB794:
  53:saya.cpp      ****   return ar[x][y][z];
 1867              		.loc 8 53 0
 1868 0c83 4C8D3403 		lea	r14, [rbx+rax]	# tmp682,
 1869              	.LBE794:
 1870              	.LBE868:
 1871              	.LBB869:
 1872              	.LBB825:
 1873 0c87 48038424 		add	rax, QWORD PTR [rsp+352]	# tmp692, %sfp
 1873      60010000 
 1874              	.LBE825:
 1875              	.LBE869:
 1876              	.LBE889:
 1877              	.LBE911:
 1878              	.LBE948:
 1879              	.LBB949:
 1880              	.LBB762:
 1881              	.LBB732:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1882              		.loc 8 64 0
 1883 0c8f C4C17B10 		vmovsd	xmm1, QWORD PTR [r12+rdx*8]	# tmp749, MEM[(Real[40][100] *)_494]
 1883      0CD4
 1884              	.LBE732:
 1885              	.LBE762:
 1886              	.LBE949:
 1887              	.LBB950:
 1888              	.LBB912:
 1889              	.LBB890:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1890              		.loc 8 65 0
 1891 0c95 C4816B58 		vaddsd	xmm5, xmm2, QWORD PTR [r8+r14*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_514]
 1891      2CF0
 1892 0c9b C4C15358 		vaddsd	xmm7, xmm5, QWORD PTR [r8+rax*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_514]
 1892      3CC0
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1893              		.loc 8 66 0
 1894 0ca1 C4814358 		vaddsd	xmm6, xmm7, QWORD PTR [r8+r11*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_514]
 1894      34D8
 1895 0ca7 C4014B58 		vaddsd	xmm12, xmm6, QWORD PTR [r8+r10*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_514]
 1895      24D0
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1896              		.loc 8 67 0
 1897 0cad C442A1BD 		vfnmadd231sd	xmm12, xmm11, QWORD PTR [r9+768+rcx*8]	# ret, tmp1169, MEM[base: _524, index: ivtmp.4
 1897      A4C90003 
 1897      0000
 1898              	.LBE890:
 1899              	.LBE912:
 1900              	.LBE950:
 1901              	.LBB951:
 1902              	.LBB763:
 1903              	.LBB733:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1904              		.loc 8 64 0
 1905 0cb7 4C8B4C24 		mov	r9, QWORD PTR [rsp+120]	# D.36887, %sfp
 1905      78
 1906              	.LBE733:
 1907              	.LBE763:
 1908              	.LBE951:
 1909              	.LBB952:
 1910              	.LBB913:
 1911              	.LBB891:
  68:saya.cpp      ****     return ret / dx / dx;
 1912              		.loc 8 68 0
 1913 0cbc C51B5E15 		vdivsd	xmm10, xmm12, QWORD PTR .LC22[rip]	# D.36891, ret,
 1913      00000000 
 1914 0cc4 C52B5E0D 		vdivsd	xmm9, xmm10, QWORD PTR .LC22[rip]	# D.36891, D.36891,
 1914      00000000 
 1915              	.LBE891:
 1916              	.LBE913:
 1917              	.LBE952:
 1918              	.LBB953:
 1919              	.LBB764:
 1920              	.LBB734:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1921              		.loc 8 67 0
 1922 0ccc C57B101D 		vmovsd	xmm11, QWORD PTR .LC21[rip]	# tmp1171,
 1922      00000000 
 1923              	.LBE734:
 1924              	.LBE764:
 1925              	.LBE953:
  76:saya.cpp      **** 	auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1926              		.loc 8 76 0
 1927 0cd4 C462D999 		vfmadd132sd	xmm9, xmm4, QWORD PTR .LC25[rip]	# D.36891, D.36891,
 1927      0D000000 
 1927      00
 1928              	.LVL78:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1929              		.loc 8 75 0
 1930 0cdd C5BB59E0 		vmulsd	xmm4, xmm8, xmm0	# D.36891, D.36891, v
 1931              	.LBB954:
 1932              	.LBB765:
 1933              	.LBB735:
  64:saya.cpp      ****     auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
 1934              		.loc 8 64 0
 1935 0ce1 C4C17358 		vaddsd	xmm2, xmm1, QWORD PTR [r9+rdx*8]	# D.36891, tmp749, MEM[(Real[40][100] *)_499]
 1935      14D1
 1936              	.LBE735:
 1937              	.LBE765:
 1938              	.LBE954:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1939              		.loc 8 75 0
 1940 0ce7 C5FB100D 		vmovsd	xmm1, QWORD PTR .LC27[rip]	# tmp1172,
 1940      00000000 
 1941              	.LBB955:
 1942              	.LBB766:
 1943              	.LBB736:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1944              		.loc 8 65 0
 1945 0cef C4A16B58 		vaddsd	xmm5, xmm2, QWORD PTR [rsi+r14*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_506]
 1945      2CF6
 1946              	.LBE736:
 1947              	.LBE766:
 1948              	.LBE955:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1949              		.loc 8 75 0
 1950 0cf5 C4C1735C 		vsubsd	xmm2, xmm1, xmm14	# D.36891, tmp1172, u
 1950      D6
 1951              	.LBB956:
 1952              	.LBB767:
 1953              	.LBB737:
  65:saya.cpp      ****     + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
 1954              		.loc 8 65 0
 1955 0cfa C5D3583C 		vaddsd	xmm7, xmm5, QWORD PTR [rsi+rax*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_506]
 1955      C6
 1956              	.LBE737:
 1957              	.LBE767:
 1958              	.LBE956:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1959              		.loc 8 75 0
 1960 0cff C5EB592D 		vmulsd	xmm5, xmm2, QWORD PTR .LC28[rip]	# D.36891, D.36891,
 1960      00000000 
 1961              	.LBB957:
 1962              	.LBB768:
 1963              	.LBB738:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1964              		.loc 8 67 0
 1965 0d07 488B8424 		mov	rax, QWORD PTR [rsp+320]	# D.36886, %sfp
 1965      40010000 
  66:saya.cpp      ****     + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
 1966              		.loc 8 66 0
 1967 0d0f C4A14358 		vaddsd	xmm6, xmm7, QWORD PTR [rsi+r11*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_506]
 1967      34DE
 1968 0d15 C4214B58 		vaddsd	xmm12, xmm6, QWORD PTR [rsi+r10*8]	# D.36891, D.36891, MEM[(Real[40][100] *)_506]
 1968      24D6
 1969              	.LBE738:
 1970              	.LBE768:
 1971              	.LBE957:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1972              		.loc 8 75 0
 1973 0d1b C4E2D199 		vfmadd132sd	xmm4, xmm5, xmm0	# D.36891, D.36891, v
 1973      E0
 1974              	.LBB958:
 1975              	.LBB769:
 1976              	.LBB739:
  67:saya.cpp      ****     - 6*ar[x][y][z];
 1977              		.loc 8 67 0
 1978 0d20 C462A1BD 		vfnmadd231sd	xmm12, xmm11, QWORD PTR [rax+768+rcx*8]	# ret, tmp1171, MEM[base: _435, index: ivtmp.
 1978      A4C80003 
 1978      0000
  68:saya.cpp      ****     return ret / dx / dx;
 1979              		.loc 8 68 0
 1980 0d2a C51B5E15 		vdivsd	xmm10, xmm12, QWORD PTR .LC22[rip]	# D.36891, ret,
 1980      00000000 
 1981 0d32 C52B5E3D 		vdivsd	xmm15, xmm10, QWORD PTR .LC22[rip]	# D.36891, D.36891,
 1981      00000000 
 1982              	.LBE739:
 1983              	.LBE769:
 1984              	.LBE958:
  75:saya.cpp      **** 	auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1985              		.loc 8 75 0
 1986 0d3a C462D999 		vfmadd132sd	xmm15, xmm4, QWORD PTR .LC29[rip]	# D.36891, D.36891,
 1986      3D000000 
 1986      00
  77:saya.cpp      **** 	U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1987              		.loc 8 77 0
 1988 0d43 C4628999 		vfmadd132sd	xmm15, xmm14, QWORD PTR .LC30[rip]	# D.36891, u,
 1988      3D000000 
 1988      00
 1989 0d4c C4417B11 		vmovsd	QWORD PTR U_other[r15+768+rcx*8], xmm15	# MEM[symbol: U_other, base: ivtmp.514_401, index: 
 1989      BCCF0000 
 1989      0000
 1990              		.loc 8 78 0
 1991 0d56 C462F999 		vfmadd132sd	xmm9, xmm0, QWORD PTR .LC30[rip]	# D.36891, v,
 1991      0D000000 
 1991      00
 1992              	.LVL79:
 1993 0d5f C4417B11 		vmovsd	QWORD PTR V_other[r15+768+rcx*8], xmm9	# MEM[symbol: V_other, base: ivtmp.514_401, index: i
 1993      8CCF0000 
 1993      0000
 1994              	.LVL80:
 1995 0d69 4883C101 		add	rcx, 1	# ivtmp.461,
 1996              	.LVL81:
 1997              	.LBE622:
  73:saya.cpp      ****       for (int z=0;z<NZ;++z) {
 1998              		.loc 8 73 0
 1999 0d6d 4883F904 		cmp	rcx, 4	# ivtmp.461,
 2000 0d71 0F8529FE 		jne	.L65	#,
 2000      FFFF
 2001 0d77 4C8BB424 		mov	r14, QWORD PTR [rsp+288]	# ivtmp.518, %sfp
 2001      20010000 
 2002 0d7f 4981C720 		add	r15, 800	# ivtmp.514,
 2002      030000
 2003 0d86 4C8BAC24 		mov	r13, QWORD PTR [rsp+272]	# ivtmp.519, %sfp
 2003      10010000 
 2004              	.LVL82:
 2005              	.LBE621:
  72:saya.cpp      ****     for (int y=0;y<NY;++y) {
 2006              		.loc 8 72 0
 2007 0d8e 8B7C246C 		mov	edi, DWORD PTR [rsp+108]	# D.36885, %sfp
 2008 0d92 4981C620 		add	r14, 800	# ivtmp.518,
 2008      030000
 2009 0d99 4981C520 		add	r13, 800	# ivtmp.519,
 2009      030000
 2010 0da0 83FF50   		cmp	edi, 80	# D.36885,
 2011 0da3 0F855FF7 		jne	.L70	#,
 2011      FFFF
 2012 0da9 48810424 		add	QWORD PTR [rsp], 32000	# %sfp,
 2012      007D0000 
 2013 0db1 48814424 		add	QWORD PTR [rsp+8], 32000	# %sfp,
 2013      08007D00 
 2013      00
 2014 0dba 48814424 		add	QWORD PTR [rsp+16], 32000	# %sfp,
 2014      10007D00 
 2014      00
 2015              	.LBE620:
  71:saya.cpp      ****   for (int x=0;x<NX;++x) {
 2016              		.loc 8 71 0
 2017 0dc3 837C2468 		cmp	DWORD PTR [rsp+104], 99	# %sfp,
 2017      63
 2018 0dc8 7409     		je	.L96	#,
 2019              	.LVL83:
 2020 0dca 8B4C2468 		mov	ecx, DWORD PTR [rsp+104]	# ivtmp.528, %sfp
 2021 0dce E931F6FF 		jmp	.L61	#
 2021      FF
 2022              	.LVL84:
 2023              	.L96:
 2024 0dd3 4531E4   		xor	r12d, r12d	# ivtmp.459
 2025 0dd6 C5F877   		vzeroupper
 2026              	.LVL85:
 2027              	.L69:
 2028 0dd9 498D9C24 		lea	rbx, U[r12]	# D.36886,
 2028      00000000 
 2029              	.LBE619:
  58:saya.cpp      ****   ++global_clock;
 2030              		.loc 8 58 0 discriminator 1
 2031 0de1 4531FF   		xor	r15d, r15d	# ivtmp.451
 2032 0de4 4D8DAC24 		lea	r13, U_other[r12]	# D.36886,
 2032      00000000 
 2033              	.LVL86:
 2034 0dec 0F1F4000 		.p2align 4,,10
 2035              		.p2align 3
 2036              	.L74:
 2037 0df0 4A8D3C3B 		lea	rdi, [rbx+r15]	# D.36886,
 2038 0df4 BA200300 		mov	edx, 800	#,
 2038      00
 2039 0df9 4B8D743D 		lea	rsi, [r13+0+r15]	# D.36886,
 2039      00
 2040 0dfe E8000000 		call	memcpy	#
 2040      00
 2041              	.LVL87:
 2042 0e03 498D8F20 		lea	rcx, [r15+800]	# tmp974,
 2042      030000
 2043 0e0a BA200300 		mov	edx, 800	#,
 2043      00
 2044 0e0f 488D3C0B 		lea	rdi, [rbx+rcx]	# D.36886,
 2045 0e13 498D740D 		lea	rsi, [r13+0+rcx]	# D.36886,
 2045      00
 2046 0e18 E8000000 		call	memcpy	#
 2046      00
 2047              	.LVL88:
 2048 0e1d 498DB740 		lea	rsi, [r15+1600]	# ivtmp.451,
 2048      060000
 2049 0e24 BA200300 		mov	edx, 800	#,
 2049      00
 2050 0e29 488D3C33 		lea	rdi, [rbx+rsi]	# D.36886,
 2051 0e2d 498D7435 		lea	rsi, [r13+0+rsi]	# D.36886,
 2051      00
 2052 0e32 E8000000 		call	memcpy	#
 2052      00
 2053              	.LVL89:
 2054 0e37 4D8D8760 		lea	r8, [r15+2400]	# ivtmp.451,
 2054      090000
 2055 0e3e BA200300 		mov	edx, 800	#,
 2055      00
 2056 0e43 4A8D3C03 		lea	rdi, [rbx+r8]	# D.36886,
 2057 0e47 4B8D7405 		lea	rsi, [r13+0+r8]	# D.36886,
 2057      00
 2058 0e4c E8000000 		call	memcpy	#
 2058      00
 2059              	.LVL90:
 2060 0e51 498D9780 		lea	rdx, [r15+3200]	# ivtmp.451,
 2060      0C0000
 2061 0e58 488D3C13 		lea	rdi, [rbx+rdx]	# D.36886,
 2062 0e5c 498D7415 		lea	rsi, [r13+0+rdx]	# D.36886,
 2062      00
 2063 0e61 BA200300 		mov	edx, 800	#,
 2063      00
 2064 0e66 E8000000 		call	memcpy	#
 2064      00
 2065              	.LVL91:
 2066 0e6b 4D8DB7A0 		lea	r14, [r15+4000]	# ivtmp.451,
 2066      0F0000
 2067 0e72 BA200300 		mov	edx, 800	#,
 2067      00
 2068 0e77 4A8D3C33 		lea	rdi, [rbx+r14]	# D.36886,
 2069 0e7b 4B8D7435 		lea	rsi, [r13+0+r14]	# D.36886,
 2069      00
 2070 0e80 E8000000 		call	memcpy	#
 2070      00
 2071              	.LVL92:
 2072 0e85 4D8D9FC0 		lea	r11, [r15+4800]	# ivtmp.451,
 2072      120000
 2073 0e8c BA200300 		mov	edx, 800	#,
 2073      00
 2074 0e91 4A8D3C1B 		lea	rdi, [rbx+r11]	# D.36886,
 2075 0e95 4B8D741D 		lea	rsi, [r13+0+r11]	# D.36886,
 2075      00
 2076 0e9a E8000000 		call	memcpy	#
 2076      00
 2077              	.LVL93:
 2078 0e9f 4D8D97E0 		lea	r10, [r15+5600]	# ivtmp.451,
 2078      150000
 2079 0ea6 BA200300 		mov	edx, 800	#,
 2079      00
 2080 0eab 4A8D3C13 		lea	rdi, [rbx+r10]	# D.36886,
 2081 0eaf 4981C700 		add	r15, 6400	# ivtmp.451,
 2081      190000
 2082 0eb6 4B8D7415 		lea	rsi, [r13+0+r10]	# D.36886,
 2082      00
 2083 0ebb E8000000 		call	memcpy	#
 2083      00
 2084              	.LVL94:
 2085              	.LBB959:
 2086              	.LBB960:
  79:saya.cpp      ****       }
  80:saya.cpp      ****     }
  81:saya.cpp      ****   }
  82:saya.cpp      ****   for (int x=0;x<NX;++x) {
  83:saya.cpp      ****     for (int y=0;y<NY;++y) {
 2087              		.loc 8 83 0 discriminator 1
 2088 0ec0 4981FF00 		cmp	r15, 32000	# ivtmp.451,
 2088      7D0000
 2089 0ec7 0F8523FF 		jne	.L74	#,
 2089      FFFF
 2090              	.LVL95:
 2091 0ecd 4981C400 		add	r12, 32000	# ivtmp.459,
 2091      7D0000
 2092              	.LBE960:
  82:saya.cpp      ****   for (int x=0;x<NX;++x) {
 2093              		.loc 8 82 0
 2094 0ed4 4981FC00 		cmp	r12, 1600000	# ivtmp.459,
 2094      6A1800
 2095 0edb 0F85F8FE 		jne	.L69	#,
 2095      FFFF
 2096 0ee1 4531E4   		xor	r12d, r12d	# ivtmp.443
 2097              	.L73:
 2098              	.LVL96:
 2099 0ee4 498D9C24 		lea	rbx, V[r12]	# D.36886,
 2099      00000000 
 2100              	.LBE959:
 2101              	.LBB961:
  71:saya.cpp      ****   for (int x=0;x<NX;++x) {
 2102              		.loc 8 71 0 discriminator 1
 2103 0eec 4531FF   		xor	r15d, r15d	# ivtmp.435
 2104 0eef 4D8DAC24 		lea	r13, V_other[r12]	# D.36886,
 2104      00000000 
 2105              	.LVL97:
 2106 0ef7 660F1F84 		.p2align 4,,10
 2106      00000000 
 2106      00
 2107              		.p2align 3
 2108              	.L77:
 2109 0f00 4A8D3C3B 		lea	rdi, [rbx+r15]	# D.36886,
 2110 0f04 BA200300 		mov	edx, 800	#,
 2110      00
 2111 0f09 4B8D743D 		lea	rsi, [r13+0+r15]	# D.36886,
 2111      00
 2112 0f0e E8000000 		call	memcpy	#
 2112      00
 2113              	.LVL98:
 2114 0f13 4D8D8F20 		lea	r9, [r15+800]	# tmp973,
 2114      030000
 2115 0f1a BA200300 		mov	edx, 800	#,
 2115      00
 2116 0f1f 4A8D3C0B 		lea	rdi, [rbx+r9]	# D.36886,
 2117 0f23 4B8D740D 		lea	rsi, [r13+0+r9]	# D.36886,
 2117      00
 2118 0f28 E8000000 		call	memcpy	#
 2118      00
 2119              	.LVL99:
 2120 0f2d 498D8740 		lea	rax, [r15+1600]	# ivtmp.435,
 2120      060000
 2121 0f34 BA200300 		mov	edx, 800	#,
 2121      00
 2122 0f39 488D3C03 		lea	rdi, [rbx+rax]	# D.36886,
 2123 0f3d 498D7405 		lea	rsi, [r13+0+rax]	# D.36886,
 2123      00
 2124 0f42 E8000000 		call	memcpy	#
 2124      00
 2125              	.LVL100:
 2126 0f47 498D8F60 		lea	rcx, [r15+2400]	# ivtmp.435,
 2126      090000
 2127 0f4e BA200300 		mov	edx, 800	#,
 2127      00
 2128 0f53 488D3C0B 		lea	rdi, [rbx+rcx]	# D.36886,
 2129 0f57 498D740D 		lea	rsi, [r13+0+rcx]	# D.36886,
 2129      00
 2130 0f5c E8000000 		call	memcpy	#
 2130      00
 2131              	.LVL101:
 2132 0f61 498DB780 		lea	rsi, [r15+3200]	# ivtmp.435,
 2132      0C0000
 2133 0f68 BA200300 		mov	edx, 800	#,
 2133      00
 2134 0f6d 488D3C33 		lea	rdi, [rbx+rsi]	# D.36886,
 2135 0f71 498D7435 		lea	rsi, [r13+0+rsi]	# D.36886,
 2135      00
 2136 0f76 E8000000 		call	memcpy	#
 2136      00
 2137              	.LVL102:
 2138 0f7b 4D8D87A0 		lea	r8, [r15+4000]	# ivtmp.435,
 2138      0F0000
 2139 0f82 BA200300 		mov	edx, 800	#,
 2139      00
 2140 0f87 4A8D3C03 		lea	rdi, [rbx+r8]	# D.36886,
 2141 0f8b 4B8D7405 		lea	rsi, [r13+0+r8]	# D.36886,
 2141      00
 2142 0f90 E8000000 		call	memcpy	#
 2142      00
 2143              	.LVL103:
 2144 0f95 498D97C0 		lea	rdx, [r15+4800]	# ivtmp.435,
 2144      120000
 2145 0f9c 488D3C13 		lea	rdi, [rbx+rdx]	# D.36886,
 2146 0fa0 498D7415 		lea	rsi, [r13+0+rdx]	# D.36886,
 2146      00
 2147 0fa5 BA200300 		mov	edx, 800	#,
 2147      00
 2148 0faa E8000000 		call	memcpy	#
 2148      00
 2149              	.LVL104:
 2150 0faf 4D8DB7E0 		lea	r14, [r15+5600]	# ivtmp.435,
 2150      150000
 2151 0fb6 BA200300 		mov	edx, 800	#,
 2151      00
 2152 0fbb 4A8D3C33 		lea	rdi, [rbx+r14]	# D.36886,
 2153 0fbf 4981C700 		add	r15, 6400	# ivtmp.435,
 2153      190000
 2154 0fc6 4B8D7435 		lea	rsi, [r13+0+r14]	# D.36886,
 2154      00
 2155 0fcb E8000000 		call	memcpy	#
 2155      00
 2156              	.LVL105:
 2157              	.LBE961:
 2158              	.LBB962:
 2159              	.LBB963:
  84:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  85:saya.cpp      **** 	U[x][y][z]=U_other[x][y][z];
  86:saya.cpp      ****       }
  87:saya.cpp      ****     }
  88:saya.cpp      ****   }
  89:saya.cpp      ****   for (int x=0;x<NX;++x) {
  90:saya.cpp      ****     for (int y=0;y<NY;++y) {
 2160              		.loc 8 90 0 discriminator 1
 2161 0fd0 4981FF00 		cmp	r15, 32000	# ivtmp.435,
 2161      7D0000
 2162 0fd7 0F8523FF 		jne	.L77	#,
 2162      FFFF
 2163              	.LVL106:
 2164 0fdd 4981C400 		add	r12, 32000	# ivtmp.443,
 2164      7D0000
 2165              	.LBE963:
  89:saya.cpp      ****   for (int x=0;x<NX;++x) {
 2166              		.loc 8 89 0
 2167 0fe4 4981FC00 		cmp	r12, 1600000	# ivtmp.443,
 2167      6A1800
 2168 0feb 0F85F3FE 		jne	.L73	#,
 2168      FFFF
 2169              	.LBE962:
 2170              	.LBE964:
  91:saya.cpp      ****       for (int z=0;z<NZ;++z) {
  92:saya.cpp      **** 	V[x][y][z]=V_other[x][y][z];
  93:saya.cpp      ****       }
  94:saya.cpp      ****     }
  95:saya.cpp      ****   }
  96:saya.cpp      **** }
 2171              		.loc 8 96 0
 2172 0ff1 488D65D8 		lea	rsp, [rbp-40]	#,
 2173              	.LVL107:
 2174 0ff5 5B       		pop	rbx	#
 2175 0ff6 415C     		pop	r12	#
 2176 0ff8 415D     		pop	r13	#
 2177 0ffa 415E     		pop	r14	#
 2178 0ffc 415F     		pop	r15	#
 2179 0ffe 5D       		pop	rbp	#
 2180              		.cfi_def_cfa 7, 8
 2181              	.LVL108:
 2182 0fff C3       		ret
 2183              		.cfi_endproc
 2184              	.LFE1476:
 2186              		.p2align 4,,15
 2187              		.globl	_Z15get_solution_atiiiiRdS_
 2189              	_Z15get_solution_atiiiiRdS_:
 2190              	.LFB1478:
  97:saya.cpp      **** 
  98:saya.cpp      **** void get_solution_at(int t, int x, int y, int z, Real &u, Real &v) {
 2191              		.loc 8 98 0
 2192              		.cfi_startproc
 2193              	.LVL109:
 2194 1000 4157     		push	r15	#
 2195              		.cfi_def_cfa_offset 16
 2196              		.cfi_offset 15, -16
 2197 1002 4189D7   		mov	r15d, edx	# y, y
 2198 1005 4156     		push	r14	#
 2199              		.cfi_def_cfa_offset 24
 2200              		.cfi_offset 14, -24
 2201 1007 4189CE   		mov	r14d, ecx	# z, z
 2202 100a 4155     		push	r13	#
 2203              		.cfi_def_cfa_offset 32
 2204              		.cfi_offset 13, -32
 2205 100c 4189F5   		mov	r13d, esi	# x, x
 2206 100f 4154     		push	r12	#
 2207              		.cfi_def_cfa_offset 40
 2208              		.cfi_offset 12, -40
 2209 1011 4D89CC   		mov	r12, r9	# v, v
 2210 1014 55       		push	rbp	#
 2211              		.cfi_def_cfa_offset 48
 2212              		.cfi_offset 6, -48
 2213 1015 4C89C5   		mov	rbp, r8	# u, u
 2214 1018 53       		push	rbx	#
 2215              		.cfi_def_cfa_offset 56
 2216              		.cfi_offset 3, -56
 2217 1019 89FB     		mov	ebx, edi	# t, t
 2218 101b 4883EC08 		sub	rsp, 8	#,
 2219              		.cfi_def_cfa_offset 64
  99:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2220              		.loc 8 99 0
 2221 101f 8B050000 		mov	eax, DWORD PTR global_clock[rip]	# D.36904, global_clock
 2221      0000
 2222 1025 39F8     		cmp	eax, edi	# D.36904, t
 2223 1027 0F8FDB00 		jg	.L107	#,
 2223      0000
 2224              	.LVL110:
 2225              	.L98:
 100:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2226              		.loc 8 100 0 discriminator 1
 2227 102d 39C3     		cmp	ebx, eax	# t, D.36904
 2228 102f 7E14     		jle	.L100	#,
 2229              		.p2align 4,,10
 2230 1031 0F1F8000 		.p2align 3
 2230      000000
 2231              	.L103:
 2232              		.loc 8 100 0 is_stmt 0 discriminator 2
 2233 1038 E8000000 		call	_Z13naive_proceedv	#
 2233      00
 2234              	.LVL111:
 2235 103d 3B1D0000 		cmp	ebx, DWORD PTR global_clock[rip]	# t, global_clock
 2235      0000
 2236 1043 7FF3     		jg	.L103	#,
 2237              	.L100:
 2238              	.LVL112:
 2239              	.LBB965:
 2240              	.LBB966:
  51:saya.cpp      ****   y = (y+NY)%NY;
 2241              		.loc 8 51 0 is_stmt 1
 2242 1045 418D4F28 		lea	ecx, [r15+40]	# D.36904,
 2243 1049 BA676666 		mov	edx, 1717986919	# tmp118,
 2243      66
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2244              		.loc 8 52 0
 2245 104e 41BA1F85 		mov	r10d, 1374389535	# tmp127,
 2245      EB51
  51:saya.cpp      ****   y = (y+NY)%NY;
 2246              		.loc 8 51 0
 2247 1054 89C8     		mov	eax, ecx	# tmp168, D.36904
 2248 1056 89CE     		mov	esi, ecx	# tmp120, D.36904
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2249              		.loc 8 52 0
 2250 1058 BB640000 		mov	ebx, 100	#,
 2250      00
 2251              	.LVL113:
  51:saya.cpp      ****   y = (y+NY)%NY;
 2252              		.loc 8 51 0
 2253 105d F7EA     		imul	edx	# tmp118
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2254              		.loc 8 52 0
 2255 105f 458D4E64 		lea	r9d, [r14+100]	# D.36904,
  51:saya.cpp      ****   y = (y+NY)%NY;
 2256              		.loc 8 51 0
 2257 1063 C1FE1F   		sar	esi, 31	# tmp120,
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2258              		.loc 8 52 0
 2259 1066 4489C8   		mov	eax, r9d	# tmp169, D.36904
 2260 1069 4589CB   		mov	r11d, r9d	# tmp129, D.36904
  50:saya.cpp      ****   x = (x+NX)%NX;
 2261              		.loc 8 50 0
 2262 106c 41BE3200 		mov	r14d, 50	#,
 2262      0000
 2263              	.LVL114:
 2264 1072 458D6D32 		lea	r13d, [r13+50]	# D.36904,
 2265              	.LVL115:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2266              		.loc 8 52 0
 2267 1076 41C1FB1F 		sar	r11d, 31	# tmp129,
  51:saya.cpp      ****   y = (y+NY)%NY;
 2268              		.loc 8 51 0
 2269 107a C1FA04   		sar	edx, 4	# y,
  50:saya.cpp      ****   x = (x+NX)%NX;
 2270              		.loc 8 50 0
 2271 107d 4589EF   		mov	r15d, r13d	# tmp136, D.36904
 2272              	.LVL116:
  51:saya.cpp      ****   y = (y+NY)%NY;
 2273              		.loc 8 51 0
 2274 1080 29F2     		sub	edx, esi	# y, tmp120
  50:saya.cpp      ****   x = (x+NX)%NX;
 2275              		.loc 8 50 0
 2276 1082 41C1FF1F 		sar	r15d, 31	# tmp136,
  51:saya.cpp      ****   y = (y+NY)%NY;
 2277              		.loc 8 51 0
 2278 1086 8D3C92   		lea	edi, [rdx+rdx*4]	# tmp123,
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2279              		.loc 8 52 0
 2280 1089 41F7EA   		imul	r10d	# tmp127
 2281              	.LVL117:
  50:saya.cpp      ****   x = (x+NX)%NX;
 2282              		.loc 8 50 0
 2283 108c 4489E8   		mov	eax, r13d	# tmp170, D.36904
  51:saya.cpp      ****   y = (y+NY)%NY;
 2284              		.loc 8 51 0
 2285 108f C1E703   		sal	edi, 3	# tmp124,
 2286 1092 29F9     		sub	ecx, edi	# y, tmp124
 2287              	.LVL118:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2288              		.loc 8 52 0
 2289 1094 C1FA05   		sar	edx, 5	# z,
  51:saya.cpp      ****   y = (y+NY)%NY;
 2290              		.loc 8 51 0
 2291 1097 4189C8   		mov	r8d, ecx	# y, y
 2292              	.LVL119:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2293              		.loc 8 52 0
 2294 109a 4429DA   		sub	edx, r11d	# z, tmp129
  53:saya.cpp      ****   return ar[x][y][z];
 2295              		.loc 8 53 0
 2296 109d 4D63C0   		movsx	r8, r8d	# y, y
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2297              		.loc 8 52 0
 2298 10a0 0FAFD3   		imul	edx, ebx	# tmp130,
 2299 10a3 4129D1   		sub	r9d, edx	# z, tmp130
 2300              	.LVL120:
  50:saya.cpp      ****   x = (x+NX)%NX;
 2301              		.loc 8 50 0
 2302 10a6 41F7EA   		imul	r10d	# tmp127
  53:saya.cpp      ****   return ar[x][y][z];
 2303              		.loc 8 53 0
 2304 10a9 4963F9   		movsx	rdi, r9d	# z, z
 2305 10ac 4F8D0C80 		lea	r9, [r8+r8*4]	# tmp145,
 2306 10b0 4F8D1489 		lea	r10, [r9+r9*4]	# tmp147,
 2307              	.LVL121:
  50:saya.cpp      ****   x = (x+NX)%NX;
 2308              		.loc 8 50 0
 2309 10b4 C1FA04   		sar	edx, 4	# tmp132,
  53:saya.cpp      ****   return ar[x][y][z];
 2310              		.loc 8 53 0
 2311 10b7 4E8D1C97 		lea	r11, [rdi+r10*4]	# tmp149,
 2312              	.LVL122:
  50:saya.cpp      ****   x = (x+NX)%NX;
 2313              		.loc 8 50 0
 2314 10bb 4429FA   		sub	edx, r15d	# tmp132, tmp136
 2315 10be 410FAFD6 		imul	edx, r14d	# tmp137,
  53:saya.cpp      ****   return ar[x][y][z];
 2316              		.loc 8 53 0
 2317 10c2 49C1E303 		sal	r11, 3	# tmp151,
  50:saya.cpp      ****   x = (x+NX)%NX;
 2318              		.loc 8 50 0
 2319 10c6 4129D5   		sub	r13d, edx	# x, tmp137
 2320              	.LVL123:
  53:saya.cpp      ****   return ar[x][y][z];
 2321              		.loc 8 53 0
 2322 10c9 4963CD   		movsx	rcx, r13d	# D.36905, x
 2323 10cc 4869F100 		imul	rsi, rcx, 32000	# D.36905, D.36905,
 2323      7D0000
 2324              	.LVL124:
 2325 10d3 C4A17B10 		vmovsd	xmm0, QWORD PTR U[rsi+r11]	# D.36907, *_23
 2325      841E0000 
 2325      0000
 2326              	.LBE966:
 2327              	.LBE965:
 101:saya.cpp      ****   u = periodic(U,x,y,z);
 2328              		.loc 8 101 0
 2329 10dd C5FB1145 		vmovsd	QWORD PTR [rbp+0], xmm0	# *u_11(D), D.36907
 2329      00
 2330              	.LVL125:
 2331              	.LBB967:
 2332              	.LBB968:
  53:saya.cpp      ****   return ar[x][y][z];
 2333              		.loc 8 53 0
 2334 10e2 C4A17B10 		vmovsd	xmm1, QWORD PTR V[rsi+r11]	# D.36907, *_25
 2334      8C1E0000 
 2334      0000
 2335              	.LBE968:
 2336              	.LBE967:
 102:saya.cpp      ****   v = periodic(V,x,y,z);
 2337              		.loc 8 102 0
 2338 10ec C4C17B11 		vmovsd	QWORD PTR [r12], xmm1	# *v_13(D), D.36907
 2338      0C24
 103:saya.cpp      **** }
 2339              		.loc 8 103 0
 2340 10f2 4883C408 		add	rsp, 8	#,
 2341              		.cfi_remember_state
 2342              		.cfi_def_cfa_offset 56
 2343 10f6 5B       		pop	rbx	#
 2344              		.cfi_def_cfa_offset 48
 2345 10f7 5D       		pop	rbp	#
 2346              		.cfi_def_cfa_offset 40
 2347              	.LVL126:
 2348 10f8 415C     		pop	r12	#
 2349              		.cfi_def_cfa_offset 32
 2350              	.LVL127:
 2351 10fa 415D     		pop	r13	#
 2352              		.cfi_def_cfa_offset 24
 2353 10fc 415E     		pop	r14	#
 2354              		.cfi_def_cfa_offset 16
 2355 10fe 415F     		pop	r15	#
 2356              		.cfi_def_cfa_offset 8
 2357 1100 C3       		ret
 2358              	.LVL128:
 2359              		.p2align 4,,10
 2360 1101 0F1F8000 		.p2align 3
 2360      000000
 2361              	.L107:
 2362              		.cfi_restore_state
  99:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2363              		.loc 8 99 0 discriminator 1
 2364 1108 E8000000 		call	_Z22fill_initial_conditionv	#
 2364      00
 2365              	.LVL129:
 2366 110d 8B050000 		mov	eax, DWORD PTR global_clock[rip]	# D.36904, global_clock
 2366      0000
 2367 1113 E915FFFF 		jmp	.L98	#
 2367      FF
 2368              		.cfi_endproc
 2369              	.LFE1478:
 2371              		.section	.rodata.str1.1,"aMS",@progbits,1
 2372              	.LC32:
 2373 0000 0A00     		.string	"\n"
 2374              		.section	.rodata.str1.8,"aMS",@progbits,1
 2375              		.align 8
 2376              	.LC34:
 2377 0000 62617369 		.string	"basic_string::_S_construct null not valid"
 2377      635F7374 
 2377      72696E67 
 2377      3A3A5F53 
 2377      5F636F6E 
 2378              		.section	.text.startup,"ax",@progbits
 2379              		.p2align 4,,15
 2380              		.globl	main
 2382              	main:
 2383              	.LFB1479:
 104:saya.cpp      **** 
 105:saya.cpp      **** int main () {
 2384              		.loc 8 105 0
 2385              		.cfi_startproc
 2386              		.cfi_personality 0x3,__gxx_personality_v0
 2387              		.cfi_lsda 0x3,.LLSDA1479
 2388 0000 55       		push	rbp	#
 2389              		.cfi_def_cfa_offset 16
 2390              		.cfi_offset 6, -16
 2391 0001 4889E5   		mov	rbp, rsp	#,
 2392              		.cfi_def_cfa_register 6
 2393 0004 4157     		push	r15	#
 2394 0006 4156     		push	r14	#
 2395 0008 4155     		push	r13	#
 2396 000a 4154     		push	r12	#
 2397 000c 53       		push	rbx	#
 2398              		.cfi_offset 15, -24
 2399              		.cfi_offset 14, -32
 2400              		.cfi_offset 13, -40
 2401              		.cfi_offset 12, -48
 2402              		.cfi_offset 3, -56
 2403              	.LBB1217:
 2404              	.LBB1218:
 106:saya.cpp      ****   fill_initial_condition();
 107:saya.cpp      **** 
 108:saya.cpp      ****   for(int t = 0;;++t){
 2405              		.loc 8 108 0
 2406 000d 31DB     		xor	ebx, ebx	# t
 2407              	.LBE1218:
 2408              	.LBE1217:
 105:saya.cpp      **** int main () {
 2409              		.loc 8 105 0
 2410 000f 4883E4E0 		and	rsp, -32	#,
 2411 0013 4881ECC0 		sub	rsp, 448	#,
 2411      010000
 2412              	.LBB1585:
 106:saya.cpp      ****   fill_initial_condition();
 2413              		.loc 8 106 0
 2414 001a E8000000 		call	_Z22fill_initial_conditionv	#
 2414      00
 2415              	.LVL130:
 2416 001f 4C8B3D00 		mov	r15, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+8]	# D.37206, MEM[(co
 2416      000000
 2417              	.LVL131:
 2418              	.L161:
 2419              	.LBB1579:
 2420              	.LBB1219:
 109:saya.cpp      ****     naive_proceed();
 2421              		.loc 8 109 0
 2422 0026 E8000000 		call	_Z13naive_proceedv	#
 2422      00
 2423              	.LVL132:
 2424              	.LBB1220:
 2425              	.LBB1221:
 2426              	.LBB1222:
 2427              	.LBB1223:
 153:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 154:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // Flip the internal state on for the proper state bits, then re
 155:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // throws the propagated exception if bit also set in
 156:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // exceptions().
 157:/usr/include/c++/4.8.2/bits/basic_ios.h ****       void
 158:/usr/include/c++/4.8.2/bits/basic_ios.h ****       _M_setstate(iostate __state)
 159:/usr/include/c++/4.8.2/bits/basic_ios.h ****       {
 160:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	// 27.6.1.2.1 Common requirements.
 161:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	// Turn this on without causing an ios::failure to be thrown.
 162:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	_M_streambuf_state |= __state;
 163:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	if (this->exceptions() & __state)
 164:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	  __throw_exception_again;
 165:/usr/include/c++/4.8.2/bits/basic_ios.h ****       }
 166:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 167:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 168:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Fast error checking.
 169:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  True if no error flags are set.
 170:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 171:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  A wrapper around rdstate.
 172:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 173:/usr/include/c++/4.8.2/bits/basic_ios.h ****       bool
 174:/usr/include/c++/4.8.2/bits/basic_ios.h ****       good() const
 175:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return this->rdstate() == 0; }
 176:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 177:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 178:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Fast error checking.
 179:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  True if the eofbit is set.
 180:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 181:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Note that other iostate flags may also be set.
 182:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 183:/usr/include/c++/4.8.2/bits/basic_ios.h ****       bool
 184:/usr/include/c++/4.8.2/bits/basic_ios.h ****       eof() const
 185:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return (this->rdstate() & eofbit) != 0; }
 186:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 187:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 188:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Fast error checking.
 189:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  True if either the badbit or the failbit is set.
 190:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 191:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Checking the badbit in fail() is historical practice.
 192:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Note that other iostate flags may also be set.
 193:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 194:/usr/include/c++/4.8.2/bits/basic_ios.h ****       bool
 195:/usr/include/c++/4.8.2/bits/basic_ios.h ****       fail() const
 196:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return (this->rdstate() & (badbit | failbit)) != 0; }
 197:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 198:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 199:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Fast error checking.
 200:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  True if the badbit is set.
 201:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 202:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Note that other iostate flags may also be set.
 203:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 204:/usr/include/c++/4.8.2/bits/basic_ios.h ****       bool
 205:/usr/include/c++/4.8.2/bits/basic_ios.h ****       bad() const
 206:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return (this->rdstate() & badbit) != 0; }
 207:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 208:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 209:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Throwing exceptions on errors.
 210:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The current exceptions mask.
 211:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 212:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  This changes nothing in the stream.  See the one-argument version
 213:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  of exceptions(iostate) for the meaning of the return value.
 214:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 215:/usr/include/c++/4.8.2/bits/basic_ios.h ****       iostate
 216:/usr/include/c++/4.8.2/bits/basic_ios.h ****       exceptions() const
 217:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return _M_exception; }
 218:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 219:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 220:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Throwing exceptions on errors.
 221:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __except  The new exceptions mask.
 222:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 223:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  By default, error flags are set silently.  You can set an
 224:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  exceptions mask for each stream; if a bit in the mask becomes set
 225:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  in the error flags, then an exception of type
 226:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  std::ios_base::failure is thrown.
 227:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 228:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  If the error flag is already set when the exceptions mask is
 229:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  added, the exception is immediately thrown.  Try running the
 230:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  following under GCC 3.1 or later:
 231:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @code
 232:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  #include <iostream>
 233:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  #include <fstream>
 234:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  #include <exception>
 235:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 236:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  int main()
 237:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  {
 238:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *      std::set_terminate (__gnu_cxx::__verbose_terminate_handler);
 239:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 240:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *      std::ifstream f ("/etc/motd");
 241:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 242:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *      std::cerr << "Setting badbit\n";
 243:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *      f.setstate (std::ios_base::badbit);
 244:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 245:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *      std::cerr << "Setting exception mask\n";
 246:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *      f.exceptions (std::ios_base::badbit);
 247:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  }
 248:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @endcode
 249:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 250:/usr/include/c++/4.8.2/bits/basic_ios.h ****       void
 251:/usr/include/c++/4.8.2/bits/basic_ios.h ****       exceptions(iostate __except)
 252:/usr/include/c++/4.8.2/bits/basic_ios.h ****       {
 253:/usr/include/c++/4.8.2/bits/basic_ios.h ****         _M_exception = __except;
 254:/usr/include/c++/4.8.2/bits/basic_ios.h ****         this->clear(_M_streambuf_state);
 255:/usr/include/c++/4.8.2/bits/basic_ios.h ****       }
 256:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 257:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // Constructor/destructor:
 258:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 259:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Constructor performs initialization.
 260:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 261:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  The parameter is passed by derived streams.
 262:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 263:/usr/include/c++/4.8.2/bits/basic_ios.h ****       explicit
 264:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_ios(basic_streambuf<_CharT, _Traits>* __sb)
 265:/usr/include/c++/4.8.2/bits/basic_ios.h ****       : ios_base(), _M_tie(0), _M_fill(), _M_fill_init(false), _M_streambuf(0),
 266:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	_M_ctype(0), _M_num_put(0), _M_num_get(0)
 267:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { this->init(__sb); }
 268:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 269:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 270:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Empty.
 271:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 272:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  The destructor does nothing.  More specifically, it does not
 273:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  destroy the streambuf held by rdbuf().
 274:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 275:/usr/include/c++/4.8.2/bits/basic_ios.h ****       virtual
 276:/usr/include/c++/4.8.2/bits/basic_ios.h ****       ~basic_ios() { }
 277:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 278:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // Members:
 279:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 280:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Fetches the current @e tied stream.
 281:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  A pointer to the tied stream, or NULL if the stream is
 282:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *           not tied.
 283:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 284:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  A stream may be @e tied (or synchronized) to a second output
 285:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  stream.  When this stream performs any I/O, the tied stream is
 286:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  first flushed.  For example, @c std::cin is tied to @c std::cout.
 287:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 288:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_ostream<_CharT, _Traits>*
 289:/usr/include/c++/4.8.2/bits/basic_ios.h ****       tie() const
 290:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return _M_tie; }
 291:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 292:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 293:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Ties this stream to an output stream.
 294:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __tiestr  The output stream.
 295:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The previously tied output stream, or NULL if the stream
 296:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *           was not tied.
 297:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 298:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  This sets up a new tie; see tie() for more.
 299:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 300:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_ostream<_CharT, _Traits>*
 301:/usr/include/c++/4.8.2/bits/basic_ios.h ****       tie(basic_ostream<_CharT, _Traits>* __tiestr)
 302:/usr/include/c++/4.8.2/bits/basic_ios.h ****       {
 303:/usr/include/c++/4.8.2/bits/basic_ios.h ****         basic_ostream<_CharT, _Traits>* __old = _M_tie;
 304:/usr/include/c++/4.8.2/bits/basic_ios.h ****         _M_tie = __tiestr;
 305:/usr/include/c++/4.8.2/bits/basic_ios.h ****         return __old;
 306:/usr/include/c++/4.8.2/bits/basic_ios.h ****       }
 307:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 308:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 309:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Accessing the underlying buffer.
 310:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The current stream buffer.
 311:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 312:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  This does not change the state of the stream.
 313:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 314:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_streambuf<_CharT, _Traits>*
 315:/usr/include/c++/4.8.2/bits/basic_ios.h ****       rdbuf() const
 316:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return _M_streambuf; }
 317:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 318:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 319:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Changing the underlying buffer.
 320:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __sb  The new stream buffer.
 321:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The previous stream buffer.
 322:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 323:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Associates a new buffer with the current stream, and clears the
 324:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  error state.
 325:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 326:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Due to historical accidents which the LWG refuses to correct, the
 327:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  I/O library suffers from a design error:  this function is hidden
 328:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  in derived classes by overrides of the zero-argument @c rdbuf(),
 329:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  which is non-virtual for hysterical raisins.  As a result, you
 330:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  must use explicit qualifications to access this function via any
 331:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  derived class.  For example:
 332:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 333:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @code
 334:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  std::fstream     foo;         // or some other derived type
 335:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  std::streambuf*  p = .....;
 336:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 337:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  foo.ios::rdbuf(p);            // ios == basic_ios<char>
 338:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @endcode
 339:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 340:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_streambuf<_CharT, _Traits>*
 341:/usr/include/c++/4.8.2/bits/basic_ios.h ****       rdbuf(basic_streambuf<_CharT, _Traits>* __sb);
 342:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 343:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 344:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Copies fields of __rhs into this.
 345:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __rhs  The source values for the copies.
 346:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  Reference to this object.
 347:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 348:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  All fields of __rhs are copied into this object except that rdbuf()
 349:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  and rdstate() remain unchanged.  All values in the pword and iword
 350:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  arrays are copied.  Before copying, each callback is invoked with
 351:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  erase_event.  After copying, each (new) callback is invoked with
 352:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  copyfmt_event.  The final step is to copy exceptions().
 353:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 354:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_ios&
 355:/usr/include/c++/4.8.2/bits/basic_ios.h ****       copyfmt(const basic_ios& __rhs);
 356:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 357:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 358:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Retrieves the @a empty character.
 359:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The current fill character.
 360:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 361:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  It defaults to a space (' ') in the current locale.
 362:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 363:/usr/include/c++/4.8.2/bits/basic_ios.h ****       char_type
 364:/usr/include/c++/4.8.2/bits/basic_ios.h ****       fill() const
 365:/usr/include/c++/4.8.2/bits/basic_ios.h ****       {
 366:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	if (!_M_fill_init)
 367:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	  {
 368:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	    _M_fill = this->widen(' ');
 369:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	    _M_fill_init = true;
 370:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	  }
 371:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	return _M_fill;
 372:/usr/include/c++/4.8.2/bits/basic_ios.h ****       }
 373:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 374:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 375:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Sets a new @a empty character.
 376:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __ch  The new character.
 377:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The previous fill character.
 378:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 379:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  The fill character is used to fill out space when P+ characters
 380:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  have been requested (e.g., via setw), Q characters are actually
 381:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  used, and Q<P.  It defaults to a space (' ') in the current locale.
 382:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 383:/usr/include/c++/4.8.2/bits/basic_ios.h ****       char_type
 384:/usr/include/c++/4.8.2/bits/basic_ios.h ****       fill(char_type __ch)
 385:/usr/include/c++/4.8.2/bits/basic_ios.h ****       {
 386:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	char_type __old = this->fill();
 387:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	_M_fill = __ch;
 388:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	return __old;
 389:/usr/include/c++/4.8.2/bits/basic_ios.h ****       }
 390:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 391:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // Locales:
 392:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 393:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Moves to a new locale.
 394:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __loc  The new locale.
 395:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The previous locale.
 396:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 397:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Calls @c ios_base::imbue(loc), and if a stream buffer is associated
 398:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  with this stream, calls that buffer's @c pubimbue(loc).
 399:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 400:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Additional l10n notes are at
 401:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
 402:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 403:/usr/include/c++/4.8.2/bits/basic_ios.h ****       locale
 404:/usr/include/c++/4.8.2/bits/basic_ios.h ****       imbue(const locale& __loc);
 405:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 406:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 407:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Squeezes characters.
 408:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __c  The character to narrow.
 409:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __dfault  The character to narrow.
 410:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The narrowed character.
 411:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 412:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Maps a character of @c char_type to a character of @c char,
 413:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  if possible.
 414:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 415:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Returns the result of
 416:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @code
 417:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *    std::use_facet<ctype<char_type> >(getloc()).narrow(c,dfault)
 418:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @endcode
 419:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 420:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Additional l10n notes are at
 421:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
 422:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 423:/usr/include/c++/4.8.2/bits/basic_ios.h ****       char
 424:/usr/include/c++/4.8.2/bits/basic_ios.h ****       narrow(char_type __c, char __dfault) const
 425:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return __check_facet(_M_ctype).narrow(__c, __dfault); }
 426:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 427:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 428:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Widens characters.
 429:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @param  __c  The character to widen.
 430:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @return  The widened character.
 431:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 432:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Maps a character of @c char to a character of @c char_type.
 433:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 434:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Returns the result of
 435:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @code
 436:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *    std::use_facet<ctype<char_type> >(getloc()).widen(c)
 437:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @endcode
 438:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 439:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  Additional l10n notes are at
 440:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
 441:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 442:/usr/include/c++/4.8.2/bits/basic_ios.h ****       char_type
 443:/usr/include/c++/4.8.2/bits/basic_ios.h ****       widen(char __c) const
 444:/usr/include/c++/4.8.2/bits/basic_ios.h ****       { return __check_facet(_M_ctype).widen(__c); }
 445:/usr/include/c++/4.8.2/bits/basic_ios.h **** 
 446:/usr/include/c++/4.8.2/bits/basic_ios.h ****     protected:
 447:/usr/include/c++/4.8.2/bits/basic_ios.h ****       // 27.4.5.1  basic_ios constructors
 448:/usr/include/c++/4.8.2/bits/basic_ios.h ****       /**
 449:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  @brief  Empty.
 450:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *
 451:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  The default constructor does nothing and is not normally
 452:/usr/include/c++/4.8.2/bits/basic_ios.h ****        *  accessible to users.
 453:/usr/include/c++/4.8.2/bits/basic_ios.h ****       */
 454:/usr/include/c++/4.8.2/bits/basic_ios.h ****       basic_ios()
 455:/usr/include/c++/4.8.2/bits/basic_ios.h ****       : ios_base(), _M_tie(0), _M_fill(char_type()), _M_fill_init(false), 
 456:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	_M_streambuf(0), _M_ctype(0), _M_num_put(0), _M_num_get(0)
 2428              		.loc 3 456 0
 2429 002b 488DBC24 		lea	rdi, [rsp+184]	# tmp181,
 2429      B8000000 
 2430              	.LVL133:
 2431 0033 E8000000 		call	_ZNSt8ios_baseC2Ev	#
 2431      00
 2432              	.LVL134:
 2433 0038 C6842498 		mov	BYTE PTR [rsp+408], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_fill,
 2433      01000000 
 2434              	.LBE1223:
 2435              	.LBE1222:
 2436              	.LBB1226:
 2437              	.LBB1227:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2438              		.loc 1 385 0
 2439 0040 31F6     		xor	esi, esi	#
 2440 0042 488D7C24 		lea	rdi, [rsp+96]	# D.37205,
 2440      60
 2441 0047 488B0500 		mov	rax, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+16]	# tmp324, MEM[(co
 2441      000000
 2442              	.LBE1227:
 2443              	.LBE1226:
 2444              	.LBB1230:
 2445              	.LBB1224:
 2446              		.loc 3 456 0
 2447 004e 48C78424 		mov	QWORD PTR [rsp+184], OFFSET FLAT:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16	# MEM[(struct basic_
 2447      B8000000 
 2447      00000000 
 2448              	.LBE1224:
 2449              	.LBE1230:
 2450              	.LBB1231:
 2451              	.LBB1228:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2452              		.loc 1 385 0
 2453 005a 49037FE8 		add	rdi, QWORD PTR [r15-24]	# D.37205, MEM[(long int *)_87 + -24B]
 2454              	.LBE1228:
 2455              	.LBE1231:
 2456              	.LBB1232:
 2457              	.LBB1225:
 2458              		.loc 3 456 0
 2459 005e C6842499 		mov	BYTE PTR [rsp+409], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_fill_init,
 2459      01000000 
 2460 0066 48C78424 		mov	QWORD PTR [rsp+400], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_tie,
 2460      90010000 
 2460      00000000 
 2461 0072 48C78424 		mov	QWORD PTR [rsp+416], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_streambuf,
 2461      A0010000 
 2461      00000000 
 2462 007e 48C78424 		mov	QWORD PTR [rsp+424], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_ctype,
 2462      A8010000 
 2462      00000000 
 2463 008a 48C78424 		mov	QWORD PTR [rsp+432], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_num_put,
 2463      B0010000 
 2463      00000000 
 2464 0096 48C78424 		mov	QWORD PTR [rsp+440], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_num_get,
 2464      B8010000 
 2464      00000000 
 2465              	.LVL135:
 2466              	.LBE1225:
 2467              	.LBE1232:
 2468              	.LBB1233:
 2469              	.LBB1229:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2470              		.loc 1 385 0
 2471 00a2 4C897C24 		mov	QWORD PTR [rsp+96], r15	# MEM[(struct basic_ostream *)&ostr]._vptr.basic_ostream, D.37206
 2471      60
 2472 00a7 488907   		mov	QWORD PTR [rdi], rax	# _64->D.29168._vptr.ios_base, tmp324
 2473              	.LEHB0:
 2474 00aa E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	#
 2474      00
 2475              	.LEHE0:
 2476              	.LVL136:
 2477              	.LBE1229:
 2478              	.LBE1233:
 2479              	.LBB1234:
 2480              	.LBB1235:
 2481              	.LBB1236:
 2482              	.LBB1237:
 199:/usr/include/c++/4.8.2/streambuf **** 
 200:/usr/include/c++/4.8.2/streambuf ****       // [27.5.2.2.1] locales
 201:/usr/include/c++/4.8.2/streambuf ****       /**
 202:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Entry point for imbue().
 203:/usr/include/c++/4.8.2/streambuf ****        *  @param  __loc  The new locale.
 204:/usr/include/c++/4.8.2/streambuf ****        *  @return  The previous locale.
 205:/usr/include/c++/4.8.2/streambuf ****        *
 206:/usr/include/c++/4.8.2/streambuf ****        *  Calls the derived imbue(__loc).
 207:/usr/include/c++/4.8.2/streambuf ****       */
 208:/usr/include/c++/4.8.2/streambuf ****       locale 
 209:/usr/include/c++/4.8.2/streambuf ****       pubimbue(const locale& __loc)
 210:/usr/include/c++/4.8.2/streambuf ****       {
 211:/usr/include/c++/4.8.2/streambuf **** 	locale __tmp(this->getloc());
 212:/usr/include/c++/4.8.2/streambuf **** 	this->imbue(__loc);
 213:/usr/include/c++/4.8.2/streambuf **** 	_M_buf_locale = __loc;
 214:/usr/include/c++/4.8.2/streambuf **** 	return __tmp;
 215:/usr/include/c++/4.8.2/streambuf ****       }
 216:/usr/include/c++/4.8.2/streambuf **** 
 217:/usr/include/c++/4.8.2/streambuf ****       /**
 218:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Locale access.
 219:/usr/include/c++/4.8.2/streambuf ****        *  @return  The current locale in effect.
 220:/usr/include/c++/4.8.2/streambuf ****        *
 221:/usr/include/c++/4.8.2/streambuf ****        *  If pubimbue(loc) has been called, then the most recent @c loc
 222:/usr/include/c++/4.8.2/streambuf ****        *  is returned.  Otherwise the global locale in effect at the time
 223:/usr/include/c++/4.8.2/streambuf ****        *  of construction is returned.
 224:/usr/include/c++/4.8.2/streambuf ****       */
 225:/usr/include/c++/4.8.2/streambuf ****       locale   
 226:/usr/include/c++/4.8.2/streambuf ****       getloc() const
 227:/usr/include/c++/4.8.2/streambuf ****       { return _M_buf_locale; } 
 228:/usr/include/c++/4.8.2/streambuf **** 
 229:/usr/include/c++/4.8.2/streambuf ****       // [27.5.2.2.2] buffer management and positioning
 230:/usr/include/c++/4.8.2/streambuf ****       //@{
 231:/usr/include/c++/4.8.2/streambuf ****       /**
 232:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Entry points for derived buffer functions.
 233:/usr/include/c++/4.8.2/streambuf ****        *
 234:/usr/include/c++/4.8.2/streambuf ****        *  The public versions of @c pubfoo dispatch to the protected
 235:/usr/include/c++/4.8.2/streambuf ****        *  derived @c foo member functions, passing the arguments (if any)
 236:/usr/include/c++/4.8.2/streambuf ****        *  and returning the result unchanged.
 237:/usr/include/c++/4.8.2/streambuf ****       */
 238:/usr/include/c++/4.8.2/streambuf ****       basic_streambuf*
 239:/usr/include/c++/4.8.2/streambuf ****       pubsetbuf(char_type* __s, streamsize __n) 
 240:/usr/include/c++/4.8.2/streambuf ****       { return this->setbuf(__s, __n); }
 241:/usr/include/c++/4.8.2/streambuf **** 
 242:/usr/include/c++/4.8.2/streambuf ****       /**
 243:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Alters the stream position.
 244:/usr/include/c++/4.8.2/streambuf ****        *  @param  __off  Offset.
 245:/usr/include/c++/4.8.2/streambuf ****        *  @param  __way  Value for ios_base::seekdir.
 246:/usr/include/c++/4.8.2/streambuf ****        *  @param  __mode Value for ios_base::openmode.
 247:/usr/include/c++/4.8.2/streambuf ****        *
 248:/usr/include/c++/4.8.2/streambuf ****        *  Calls virtual seekoff function.
 249:/usr/include/c++/4.8.2/streambuf ****       */
 250:/usr/include/c++/4.8.2/streambuf ****       pos_type 
 251:/usr/include/c++/4.8.2/streambuf ****       pubseekoff(off_type __off, ios_base::seekdir __way, 
 252:/usr/include/c++/4.8.2/streambuf **** 		 ios_base::openmode __mode = ios_base::in | ios_base::out)
 253:/usr/include/c++/4.8.2/streambuf ****       { return this->seekoff(__off, __way, __mode); }
 254:/usr/include/c++/4.8.2/streambuf **** 
 255:/usr/include/c++/4.8.2/streambuf ****       /**
 256:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Alters the stream position.
 257:/usr/include/c++/4.8.2/streambuf ****        *  @param  __sp  Position
 258:/usr/include/c++/4.8.2/streambuf ****        *  @param  __mode Value for ios_base::openmode.
 259:/usr/include/c++/4.8.2/streambuf ****        *
 260:/usr/include/c++/4.8.2/streambuf ****        *  Calls virtual seekpos function.
 261:/usr/include/c++/4.8.2/streambuf ****       */
 262:/usr/include/c++/4.8.2/streambuf ****       pos_type 
 263:/usr/include/c++/4.8.2/streambuf ****       pubseekpos(pos_type __sp,
 264:/usr/include/c++/4.8.2/streambuf **** 		 ios_base::openmode __mode = ios_base::in | ios_base::out)
 265:/usr/include/c++/4.8.2/streambuf ****       { return this->seekpos(__sp, __mode); }
 266:/usr/include/c++/4.8.2/streambuf **** 
 267:/usr/include/c++/4.8.2/streambuf ****       /**
 268:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Calls virtual sync function.
 269:/usr/include/c++/4.8.2/streambuf ****       */
 270:/usr/include/c++/4.8.2/streambuf ****       int 
 271:/usr/include/c++/4.8.2/streambuf ****       pubsync() { return this->sync(); }
 272:/usr/include/c++/4.8.2/streambuf ****       //@}
 273:/usr/include/c++/4.8.2/streambuf **** 
 274:/usr/include/c++/4.8.2/streambuf ****       // [27.5.2.2.3] get area
 275:/usr/include/c++/4.8.2/streambuf ****       /**
 276:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Looking ahead into the stream.
 277:/usr/include/c++/4.8.2/streambuf ****        *  @return  The number of characters available.
 278:/usr/include/c++/4.8.2/streambuf ****        *
 279:/usr/include/c++/4.8.2/streambuf ****        *  If a read position is available, returns the number of characters
 280:/usr/include/c++/4.8.2/streambuf ****        *  available for reading before the buffer must be refilled.
 281:/usr/include/c++/4.8.2/streambuf ****        *  Otherwise returns the derived @c showmanyc().
 282:/usr/include/c++/4.8.2/streambuf ****       */
 283:/usr/include/c++/4.8.2/streambuf ****       streamsize 
 284:/usr/include/c++/4.8.2/streambuf ****       in_avail() 
 285:/usr/include/c++/4.8.2/streambuf ****       { 
 286:/usr/include/c++/4.8.2/streambuf **** 	const streamsize __ret = this->egptr() - this->gptr();
 287:/usr/include/c++/4.8.2/streambuf **** 	return __ret ? __ret : this->showmanyc();
 288:/usr/include/c++/4.8.2/streambuf ****       }
 289:/usr/include/c++/4.8.2/streambuf **** 
 290:/usr/include/c++/4.8.2/streambuf ****       /**
 291:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Getting the next character.
 292:/usr/include/c++/4.8.2/streambuf ****        *  @return  The next character, or eof.
 293:/usr/include/c++/4.8.2/streambuf ****        *
 294:/usr/include/c++/4.8.2/streambuf ****        *  Calls @c sbumpc(), and if that function returns
 295:/usr/include/c++/4.8.2/streambuf ****        *  @c traits::eof(), so does this function.  Otherwise, @c sgetc().
 296:/usr/include/c++/4.8.2/streambuf ****       */
 297:/usr/include/c++/4.8.2/streambuf ****       int_type 
 298:/usr/include/c++/4.8.2/streambuf ****       snextc()
 299:/usr/include/c++/4.8.2/streambuf ****       {
 300:/usr/include/c++/4.8.2/streambuf **** 	int_type __ret = traits_type::eof();
 301:/usr/include/c++/4.8.2/streambuf **** 	if (__builtin_expect(!traits_type::eq_int_type(this->sbumpc(), 
 302:/usr/include/c++/4.8.2/streambuf **** 						       __ret), true))
 303:/usr/include/c++/4.8.2/streambuf **** 	  __ret = this->sgetc();
 304:/usr/include/c++/4.8.2/streambuf **** 	return __ret;
 305:/usr/include/c++/4.8.2/streambuf ****       }
 306:/usr/include/c++/4.8.2/streambuf **** 
 307:/usr/include/c++/4.8.2/streambuf ****       /**
 308:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Getting the next character.
 309:/usr/include/c++/4.8.2/streambuf ****        *  @return  The next character, or eof.
 310:/usr/include/c++/4.8.2/streambuf ****        *
 311:/usr/include/c++/4.8.2/streambuf ****        *  If the input read position is available, returns that character
 312:/usr/include/c++/4.8.2/streambuf ****        *  and increments the read pointer, otherwise calls and returns
 313:/usr/include/c++/4.8.2/streambuf ****        *  @c uflow().
 314:/usr/include/c++/4.8.2/streambuf ****       */
 315:/usr/include/c++/4.8.2/streambuf ****       int_type 
 316:/usr/include/c++/4.8.2/streambuf ****       sbumpc()
 317:/usr/include/c++/4.8.2/streambuf ****       {
 318:/usr/include/c++/4.8.2/streambuf **** 	int_type __ret;
 319:/usr/include/c++/4.8.2/streambuf **** 	if (__builtin_expect(this->gptr() < this->egptr(), true))
 320:/usr/include/c++/4.8.2/streambuf **** 	  {
 321:/usr/include/c++/4.8.2/streambuf **** 	    __ret = traits_type::to_int_type(*this->gptr());
 322:/usr/include/c++/4.8.2/streambuf **** 	    this->gbump(1);
 323:/usr/include/c++/4.8.2/streambuf **** 	  }
 324:/usr/include/c++/4.8.2/streambuf **** 	else 
 325:/usr/include/c++/4.8.2/streambuf **** 	  __ret = this->uflow();
 326:/usr/include/c++/4.8.2/streambuf **** 	return __ret;
 327:/usr/include/c++/4.8.2/streambuf ****       }
 328:/usr/include/c++/4.8.2/streambuf **** 
 329:/usr/include/c++/4.8.2/streambuf ****       /**
 330:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Getting the next character.
 331:/usr/include/c++/4.8.2/streambuf ****        *  @return  The next character, or eof.
 332:/usr/include/c++/4.8.2/streambuf ****        *
 333:/usr/include/c++/4.8.2/streambuf ****        *  If the input read position is available, returns that character,
 334:/usr/include/c++/4.8.2/streambuf ****        *  otherwise calls and returns @c underflow().  Does not move the 
 335:/usr/include/c++/4.8.2/streambuf ****        *  read position after fetching the character.
 336:/usr/include/c++/4.8.2/streambuf ****       */
 337:/usr/include/c++/4.8.2/streambuf ****       int_type 
 338:/usr/include/c++/4.8.2/streambuf ****       sgetc()
 339:/usr/include/c++/4.8.2/streambuf ****       {
 340:/usr/include/c++/4.8.2/streambuf **** 	int_type __ret;
 341:/usr/include/c++/4.8.2/streambuf **** 	if (__builtin_expect(this->gptr() < this->egptr(), true))
 342:/usr/include/c++/4.8.2/streambuf **** 	  __ret = traits_type::to_int_type(*this->gptr());
 343:/usr/include/c++/4.8.2/streambuf **** 	else 
 344:/usr/include/c++/4.8.2/streambuf **** 	  __ret = this->underflow();
 345:/usr/include/c++/4.8.2/streambuf **** 	return __ret;
 346:/usr/include/c++/4.8.2/streambuf ****       }
 347:/usr/include/c++/4.8.2/streambuf **** 
 348:/usr/include/c++/4.8.2/streambuf ****       /**
 349:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Entry point for xsgetn.
 350:/usr/include/c++/4.8.2/streambuf ****        *  @param  __s  A buffer area.
 351:/usr/include/c++/4.8.2/streambuf ****        *  @param  __n  A count.
 352:/usr/include/c++/4.8.2/streambuf ****        *
 353:/usr/include/c++/4.8.2/streambuf ****        *  Returns xsgetn(__s,__n).  The effect is to fill @a __s[0] through
 354:/usr/include/c++/4.8.2/streambuf ****        *  @a __s[__n-1] with characters from the input sequence, if possible.
 355:/usr/include/c++/4.8.2/streambuf ****       */
 356:/usr/include/c++/4.8.2/streambuf ****       streamsize 
 357:/usr/include/c++/4.8.2/streambuf ****       sgetn(char_type* __s, streamsize __n)
 358:/usr/include/c++/4.8.2/streambuf ****       { return this->xsgetn(__s, __n); }
 359:/usr/include/c++/4.8.2/streambuf **** 
 360:/usr/include/c++/4.8.2/streambuf ****       // [27.5.2.2.4] putback
 361:/usr/include/c++/4.8.2/streambuf ****       /**
 362:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Pushing characters back into the input stream.
 363:/usr/include/c++/4.8.2/streambuf ****        *  @param  __c  The character to push back.
 364:/usr/include/c++/4.8.2/streambuf ****        *  @return  The previous character, if possible.
 365:/usr/include/c++/4.8.2/streambuf ****        *
 366:/usr/include/c++/4.8.2/streambuf ****        *  Similar to sungetc(), but @a __c is pushed onto the stream
 367:/usr/include/c++/4.8.2/streambuf ****        *  instead of <em>the previous character.</em> If successful,
 368:/usr/include/c++/4.8.2/streambuf ****        *  the next character fetched from the input stream will be @a
 369:/usr/include/c++/4.8.2/streambuf ****        *  __c.
 370:/usr/include/c++/4.8.2/streambuf ****       */
 371:/usr/include/c++/4.8.2/streambuf ****       int_type 
 372:/usr/include/c++/4.8.2/streambuf ****       sputbackc(char_type __c)
 373:/usr/include/c++/4.8.2/streambuf ****       {
 374:/usr/include/c++/4.8.2/streambuf **** 	int_type __ret;
 375:/usr/include/c++/4.8.2/streambuf **** 	const bool __testpos = this->eback() < this->gptr();
 376:/usr/include/c++/4.8.2/streambuf **** 	if (__builtin_expect(!__testpos || 
 377:/usr/include/c++/4.8.2/streambuf **** 			     !traits_type::eq(__c, this->gptr()[-1]), false))
 378:/usr/include/c++/4.8.2/streambuf **** 	  __ret = this->pbackfail(traits_type::to_int_type(__c));
 379:/usr/include/c++/4.8.2/streambuf **** 	else 
 380:/usr/include/c++/4.8.2/streambuf **** 	  {
 381:/usr/include/c++/4.8.2/streambuf **** 	    this->gbump(-1);
 382:/usr/include/c++/4.8.2/streambuf **** 	    __ret = traits_type::to_int_type(*this->gptr());
 383:/usr/include/c++/4.8.2/streambuf **** 	  }
 384:/usr/include/c++/4.8.2/streambuf **** 	return __ret;
 385:/usr/include/c++/4.8.2/streambuf ****       }
 386:/usr/include/c++/4.8.2/streambuf **** 
 387:/usr/include/c++/4.8.2/streambuf ****       /**
 388:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Moving backwards in the input stream.
 389:/usr/include/c++/4.8.2/streambuf ****        *  @return  The previous character, if possible.
 390:/usr/include/c++/4.8.2/streambuf ****        *
 391:/usr/include/c++/4.8.2/streambuf ****        *  If a putback position is available, this function decrements
 392:/usr/include/c++/4.8.2/streambuf ****        *  the input pointer and returns that character.  Otherwise,
 393:/usr/include/c++/4.8.2/streambuf ****        *  calls and returns pbackfail().  The effect is to @a unget
 394:/usr/include/c++/4.8.2/streambuf ****        *  the last character @a gotten.
 395:/usr/include/c++/4.8.2/streambuf ****       */
 396:/usr/include/c++/4.8.2/streambuf ****       int_type 
 397:/usr/include/c++/4.8.2/streambuf ****       sungetc()
 398:/usr/include/c++/4.8.2/streambuf ****       {
 399:/usr/include/c++/4.8.2/streambuf **** 	int_type __ret;
 400:/usr/include/c++/4.8.2/streambuf **** 	if (__builtin_expect(this->eback() < this->gptr(), true))
 401:/usr/include/c++/4.8.2/streambuf **** 	  {
 402:/usr/include/c++/4.8.2/streambuf **** 	    this->gbump(-1);
 403:/usr/include/c++/4.8.2/streambuf **** 	    __ret = traits_type::to_int_type(*this->gptr());
 404:/usr/include/c++/4.8.2/streambuf **** 	  }
 405:/usr/include/c++/4.8.2/streambuf **** 	else 
 406:/usr/include/c++/4.8.2/streambuf **** 	  __ret = this->pbackfail();
 407:/usr/include/c++/4.8.2/streambuf **** 	return __ret;
 408:/usr/include/c++/4.8.2/streambuf ****       }
 409:/usr/include/c++/4.8.2/streambuf **** 
 410:/usr/include/c++/4.8.2/streambuf ****       // [27.5.2.2.5] put area
 411:/usr/include/c++/4.8.2/streambuf ****       /**
 412:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Entry point for all single-character output functions.
 413:/usr/include/c++/4.8.2/streambuf ****        *  @param  __c  A character to output.
 414:/usr/include/c++/4.8.2/streambuf ****        *  @return  @a __c, if possible.
 415:/usr/include/c++/4.8.2/streambuf ****        *
 416:/usr/include/c++/4.8.2/streambuf ****        *  One of two public output functions.
 417:/usr/include/c++/4.8.2/streambuf ****        *
 418:/usr/include/c++/4.8.2/streambuf ****        *  If a write position is available for the output sequence (i.e.,
 419:/usr/include/c++/4.8.2/streambuf ****        *  the buffer is not full), stores @a __c in that position, increments
 420:/usr/include/c++/4.8.2/streambuf ****        *  the position, and returns @c traits::to_int_type(__c).  If a write
 421:/usr/include/c++/4.8.2/streambuf ****        *  position is not available, returns @c overflow(__c).
 422:/usr/include/c++/4.8.2/streambuf ****       */
 423:/usr/include/c++/4.8.2/streambuf ****       int_type 
 424:/usr/include/c++/4.8.2/streambuf ****       sputc(char_type __c)
 425:/usr/include/c++/4.8.2/streambuf ****       {
 426:/usr/include/c++/4.8.2/streambuf **** 	int_type __ret;
 427:/usr/include/c++/4.8.2/streambuf **** 	if (__builtin_expect(this->pptr() < this->epptr(), true))
 428:/usr/include/c++/4.8.2/streambuf **** 	  {
 429:/usr/include/c++/4.8.2/streambuf **** 	    *this->pptr() = __c;
 430:/usr/include/c++/4.8.2/streambuf **** 	    this->pbump(1);
 431:/usr/include/c++/4.8.2/streambuf **** 	    __ret = traits_type::to_int_type(__c);
 432:/usr/include/c++/4.8.2/streambuf **** 	  }
 433:/usr/include/c++/4.8.2/streambuf **** 	else
 434:/usr/include/c++/4.8.2/streambuf **** 	  __ret = this->overflow(traits_type::to_int_type(__c));
 435:/usr/include/c++/4.8.2/streambuf **** 	return __ret;
 436:/usr/include/c++/4.8.2/streambuf ****       }
 437:/usr/include/c++/4.8.2/streambuf **** 
 438:/usr/include/c++/4.8.2/streambuf ****       /**
 439:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Entry point for all single-character output functions.
 440:/usr/include/c++/4.8.2/streambuf ****        *  @param  __s  A buffer read area.
 441:/usr/include/c++/4.8.2/streambuf ****        *  @param  __n  A count.
 442:/usr/include/c++/4.8.2/streambuf ****        *
 443:/usr/include/c++/4.8.2/streambuf ****        *  One of two public output functions.
 444:/usr/include/c++/4.8.2/streambuf ****        *
 445:/usr/include/c++/4.8.2/streambuf ****        *
 446:/usr/include/c++/4.8.2/streambuf ****        *  Returns xsputn(__s,__n).  The effect is to write @a __s[0] through
 447:/usr/include/c++/4.8.2/streambuf ****        *  @a __s[__n-1] to the output sequence, if possible.
 448:/usr/include/c++/4.8.2/streambuf ****       */
 449:/usr/include/c++/4.8.2/streambuf ****       streamsize 
 450:/usr/include/c++/4.8.2/streambuf ****       sputn(const char_type* __s, streamsize __n)
 451:/usr/include/c++/4.8.2/streambuf ****       { return this->xsputn(__s, __n); }
 452:/usr/include/c++/4.8.2/streambuf **** 
 453:/usr/include/c++/4.8.2/streambuf ****     protected:
 454:/usr/include/c++/4.8.2/streambuf ****       /**
 455:/usr/include/c++/4.8.2/streambuf ****        *  @brief  Base constructor.
 456:/usr/include/c++/4.8.2/streambuf ****        *
 457:/usr/include/c++/4.8.2/streambuf ****        *  Only called from derived constructors, and sets up all the
 458:/usr/include/c++/4.8.2/streambuf ****        *  buffer data to zero, including the pointers described in the
 459:/usr/include/c++/4.8.2/streambuf ****        *  basic_streambuf class description.  Note that, as a result,
 460:/usr/include/c++/4.8.2/streambuf ****        *  - the class starts with no read nor write positions available,
 461:/usr/include/c++/4.8.2/streambuf ****        *  - this is not an error
 462:/usr/include/c++/4.8.2/streambuf ****       */
 463:/usr/include/c++/4.8.2/streambuf ****       basic_streambuf()
 464:/usr/include/c++/4.8.2/streambuf ****       : _M_in_beg(0), _M_in_cur(0), _M_in_end(0), 
 465:/usr/include/c++/4.8.2/streambuf ****       _M_out_beg(0), _M_out_cur(0), _M_out_end(0),
 466:/usr/include/c++/4.8.2/streambuf ****       _M_buf_locale(locale()) 
 2483              		.loc 6 466 0
 2484 00af 488DBC24 		lea	rdi, [rsp+160]	# tmp185,
 2484      A0000000 
 2485              	.LBE1237:
 2486              	.LBE1236:
 2487              	.LBE1235:
 2488              	.LBE1234:
  65:/usr/include/c++/4.8.2/sstream ****     {
  66:/usr/include/c++/4.8.2/sstream ****     public:
  67:/usr/include/c++/4.8.2/sstream ****       // Types:
  68:/usr/include/c++/4.8.2/sstream ****       typedef _CharT 					char_type;
  69:/usr/include/c++/4.8.2/sstream ****       typedef _Traits 					traits_type;
  70:/usr/include/c++/4.8.2/sstream ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
  71:/usr/include/c++/4.8.2/sstream ****       // 251. basic_stringbuf missing allocator_type
  72:/usr/include/c++/4.8.2/sstream ****       typedef _Alloc				       	allocator_type;
  73:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::int_type 		int_type;
  74:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::pos_type 		pos_type;
  75:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::off_type 		off_type;
  76:/usr/include/c++/4.8.2/sstream **** 
  77:/usr/include/c++/4.8.2/sstream ****       typedef basic_streambuf<char_type, traits_type>  	__streambuf_type;
  78:/usr/include/c++/4.8.2/sstream ****       typedef basic_string<char_type, _Traits, _Alloc> 	__string_type;
  79:/usr/include/c++/4.8.2/sstream ****       typedef typename __string_type::size_type		__size_type;
  80:/usr/include/c++/4.8.2/sstream **** 
  81:/usr/include/c++/4.8.2/sstream ****     protected:
  82:/usr/include/c++/4.8.2/sstream ****       /// Place to stash in || out || in | out settings for current stringbuf.
  83:/usr/include/c++/4.8.2/sstream ****       ios_base::openmode 	_M_mode;
  84:/usr/include/c++/4.8.2/sstream **** 
  85:/usr/include/c++/4.8.2/sstream ****       // Data Members:
  86:/usr/include/c++/4.8.2/sstream ****       __string_type 		_M_string;
  87:/usr/include/c++/4.8.2/sstream **** 
  88:/usr/include/c++/4.8.2/sstream ****     public:
  89:/usr/include/c++/4.8.2/sstream ****       // Constructors:
  90:/usr/include/c++/4.8.2/sstream ****       /**
  91:/usr/include/c++/4.8.2/sstream ****        *  @brief  Starts with an empty string buffer.
  92:/usr/include/c++/4.8.2/sstream ****        *  @param  __mode  Whether the buffer can read, or write, or both.
  93:/usr/include/c++/4.8.2/sstream ****        *
  94:/usr/include/c++/4.8.2/sstream ****        *  The default constructor initializes the parent class using its
  95:/usr/include/c++/4.8.2/sstream ****        *  own default ctor.
  96:/usr/include/c++/4.8.2/sstream ****       */
  97:/usr/include/c++/4.8.2/sstream ****       explicit
  98:/usr/include/c++/4.8.2/sstream ****       basic_stringbuf(ios_base::openmode __mode = ios_base::in | ios_base::out)
  99:/usr/include/c++/4.8.2/sstream ****       : __streambuf_type(), _M_mode(__mode), _M_string()
 100:/usr/include/c++/4.8.2/sstream ****       { }
 101:/usr/include/c++/4.8.2/sstream **** 
 102:/usr/include/c++/4.8.2/sstream ****       /**
 103:/usr/include/c++/4.8.2/sstream ****        *  @brief  Starts with an existing string buffer.
 104:/usr/include/c++/4.8.2/sstream ****        *  @param  __str  A string to copy as a starting buffer.
 105:/usr/include/c++/4.8.2/sstream ****        *  @param  __mode  Whether the buffer can read, or write, or both.
 106:/usr/include/c++/4.8.2/sstream ****        *
 107:/usr/include/c++/4.8.2/sstream ****        *  This constructor initializes the parent class using its
 108:/usr/include/c++/4.8.2/sstream ****        *  own default ctor.
 109:/usr/include/c++/4.8.2/sstream ****       */
 110:/usr/include/c++/4.8.2/sstream ****       explicit
 111:/usr/include/c++/4.8.2/sstream ****       basic_stringbuf(const __string_type& __str,
 112:/usr/include/c++/4.8.2/sstream **** 		      ios_base::openmode __mode = ios_base::in | ios_base::out)
 113:/usr/include/c++/4.8.2/sstream ****       : __streambuf_type(), _M_mode(), _M_string(__str.data(), __str.size())
 114:/usr/include/c++/4.8.2/sstream ****       { _M_stringbuf_init(__mode); }
 115:/usr/include/c++/4.8.2/sstream **** 
 116:/usr/include/c++/4.8.2/sstream ****       // Get and set:
 117:/usr/include/c++/4.8.2/sstream ****       /**
 118:/usr/include/c++/4.8.2/sstream ****        *  @brief  Copying out the string buffer.
 119:/usr/include/c++/4.8.2/sstream ****        *  @return  A copy of one of the underlying sequences.
 120:/usr/include/c++/4.8.2/sstream ****        *
 121:/usr/include/c++/4.8.2/sstream ****        *  <em>If the buffer is only created in input mode, the underlying
 122:/usr/include/c++/4.8.2/sstream ****        *  character sequence is equal to the input sequence; otherwise, it
 123:/usr/include/c++/4.8.2/sstream ****        *  is equal to the output sequence.</em> [27.7.1.2]/1
 124:/usr/include/c++/4.8.2/sstream ****       */
 125:/usr/include/c++/4.8.2/sstream ****       __string_type
 126:/usr/include/c++/4.8.2/sstream ****       str() const
 127:/usr/include/c++/4.8.2/sstream ****       {
 128:/usr/include/c++/4.8.2/sstream **** 	__string_type __ret;
 129:/usr/include/c++/4.8.2/sstream **** 	if (this->pptr())
 130:/usr/include/c++/4.8.2/sstream **** 	  {
 131:/usr/include/c++/4.8.2/sstream **** 	    // The current egptr() may not be the actual string end.
 132:/usr/include/c++/4.8.2/sstream **** 	    if (this->pptr() > this->egptr())
 133:/usr/include/c++/4.8.2/sstream **** 	      __ret = __string_type(this->pbase(), this->pptr());
 134:/usr/include/c++/4.8.2/sstream **** 	    else
 135:/usr/include/c++/4.8.2/sstream ****  	      __ret = __string_type(this->pbase(), this->egptr());
 136:/usr/include/c++/4.8.2/sstream **** 	  }
 137:/usr/include/c++/4.8.2/sstream **** 	else
 138:/usr/include/c++/4.8.2/sstream **** 	  __ret = _M_string;
 139:/usr/include/c++/4.8.2/sstream **** 	return __ret;
 140:/usr/include/c++/4.8.2/sstream ****       }
 141:/usr/include/c++/4.8.2/sstream **** 
 142:/usr/include/c++/4.8.2/sstream ****       /**
 143:/usr/include/c++/4.8.2/sstream ****        *  @brief  Setting a new buffer.
 144:/usr/include/c++/4.8.2/sstream ****        *  @param  __s  The string to use as a new sequence.
 145:/usr/include/c++/4.8.2/sstream ****        *
 146:/usr/include/c++/4.8.2/sstream ****        *  Deallocates any previous stored sequence, then copies @a s to
 147:/usr/include/c++/4.8.2/sstream ****        *  use as a new one.
 148:/usr/include/c++/4.8.2/sstream ****       */
 149:/usr/include/c++/4.8.2/sstream ****       void
 150:/usr/include/c++/4.8.2/sstream ****       str(const __string_type& __s)
 151:/usr/include/c++/4.8.2/sstream ****       {
 152:/usr/include/c++/4.8.2/sstream **** 	// Cannot use _M_string = __s, since v3 strings are COW.
 153:/usr/include/c++/4.8.2/sstream **** 	_M_string.assign(__s.data(), __s.size());
 154:/usr/include/c++/4.8.2/sstream **** 	_M_stringbuf_init(_M_mode);
 155:/usr/include/c++/4.8.2/sstream ****       }
 156:/usr/include/c++/4.8.2/sstream **** 
 157:/usr/include/c++/4.8.2/sstream ****     protected:
 158:/usr/include/c++/4.8.2/sstream ****       // Common initialization code goes here.
 159:/usr/include/c++/4.8.2/sstream ****       void
 160:/usr/include/c++/4.8.2/sstream ****       _M_stringbuf_init(ios_base::openmode __mode)
 161:/usr/include/c++/4.8.2/sstream ****       {
 162:/usr/include/c++/4.8.2/sstream **** 	_M_mode = __mode;
 163:/usr/include/c++/4.8.2/sstream **** 	__size_type __len = 0;
 164:/usr/include/c++/4.8.2/sstream **** 	if (_M_mode & (ios_base::ate | ios_base::app))
 165:/usr/include/c++/4.8.2/sstream **** 	  __len = _M_string.size();
 166:/usr/include/c++/4.8.2/sstream **** 	_M_sync(const_cast<char_type*>(_M_string.data()), 0, __len);
 167:/usr/include/c++/4.8.2/sstream ****       }
 168:/usr/include/c++/4.8.2/sstream **** 
 169:/usr/include/c++/4.8.2/sstream ****       virtual streamsize
 170:/usr/include/c++/4.8.2/sstream ****       showmanyc()
 171:/usr/include/c++/4.8.2/sstream ****       { 
 172:/usr/include/c++/4.8.2/sstream **** 	streamsize __ret = -1;
 173:/usr/include/c++/4.8.2/sstream **** 	if (_M_mode & ios_base::in)
 174:/usr/include/c++/4.8.2/sstream **** 	  {
 175:/usr/include/c++/4.8.2/sstream **** 	    _M_update_egptr();
 176:/usr/include/c++/4.8.2/sstream **** 	    __ret = this->egptr() - this->gptr();
 177:/usr/include/c++/4.8.2/sstream **** 	  }
 178:/usr/include/c++/4.8.2/sstream **** 	return __ret;
 179:/usr/include/c++/4.8.2/sstream ****       }
 180:/usr/include/c++/4.8.2/sstream **** 
 181:/usr/include/c++/4.8.2/sstream ****       virtual int_type
 182:/usr/include/c++/4.8.2/sstream ****       underflow();
 183:/usr/include/c++/4.8.2/sstream **** 
 184:/usr/include/c++/4.8.2/sstream ****       virtual int_type
 185:/usr/include/c++/4.8.2/sstream ****       pbackfail(int_type __c = traits_type::eof());
 186:/usr/include/c++/4.8.2/sstream **** 
 187:/usr/include/c++/4.8.2/sstream ****       virtual int_type
 188:/usr/include/c++/4.8.2/sstream ****       overflow(int_type __c = traits_type::eof());
 189:/usr/include/c++/4.8.2/sstream **** 
 190:/usr/include/c++/4.8.2/sstream ****       /**
 191:/usr/include/c++/4.8.2/sstream ****        *  @brief  Manipulates the buffer.
 192:/usr/include/c++/4.8.2/sstream ****        *  @param  __s  Pointer to a buffer area.
 193:/usr/include/c++/4.8.2/sstream ****        *  @param  __n  Size of @a __s.
 194:/usr/include/c++/4.8.2/sstream ****        *  @return  @c this
 195:/usr/include/c++/4.8.2/sstream ****        *
 196:/usr/include/c++/4.8.2/sstream ****        *  If no buffer has already been created, and both @a __s and @a __n are
 197:/usr/include/c++/4.8.2/sstream ****        *  non-zero, then @c __s is used as a buffer; see
 198:/usr/include/c++/4.8.2/sstream ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt11ch25s02.html
 199:/usr/include/c++/4.8.2/sstream ****        *  for more.
 200:/usr/include/c++/4.8.2/sstream ****       */
 201:/usr/include/c++/4.8.2/sstream ****       virtual __streambuf_type*
 202:/usr/include/c++/4.8.2/sstream ****       setbuf(char_type* __s, streamsize __n)
 203:/usr/include/c++/4.8.2/sstream ****       {
 204:/usr/include/c++/4.8.2/sstream **** 	if (__s && __n >= 0)
 205:/usr/include/c++/4.8.2/sstream **** 	  {
 206:/usr/include/c++/4.8.2/sstream **** 	    // This is implementation-defined behavior, and assumes
 207:/usr/include/c++/4.8.2/sstream **** 	    // that an external char_type array of length __n exists
 208:/usr/include/c++/4.8.2/sstream **** 	    // and has been pre-allocated. If this is not the case,
 209:/usr/include/c++/4.8.2/sstream **** 	    // things will quickly blow up.
 210:/usr/include/c++/4.8.2/sstream **** 	    
 211:/usr/include/c++/4.8.2/sstream **** 	    // Step 1: Destroy the current internal array.
 212:/usr/include/c++/4.8.2/sstream **** 	    _M_string.clear();
 213:/usr/include/c++/4.8.2/sstream **** 	    
 214:/usr/include/c++/4.8.2/sstream **** 	    // Step 2: Use the external array.
 215:/usr/include/c++/4.8.2/sstream **** 	    _M_sync(__s, __n, 0);
 216:/usr/include/c++/4.8.2/sstream **** 	  }
 217:/usr/include/c++/4.8.2/sstream **** 	return this;
 218:/usr/include/c++/4.8.2/sstream ****       }
 219:/usr/include/c++/4.8.2/sstream **** 
 220:/usr/include/c++/4.8.2/sstream ****       virtual pos_type
 221:/usr/include/c++/4.8.2/sstream ****       seekoff(off_type __off, ios_base::seekdir __way,
 222:/usr/include/c++/4.8.2/sstream **** 	      ios_base::openmode __mode = ios_base::in | ios_base::out);
 223:/usr/include/c++/4.8.2/sstream **** 
 224:/usr/include/c++/4.8.2/sstream ****       virtual pos_type
 225:/usr/include/c++/4.8.2/sstream ****       seekpos(pos_type __sp,
 226:/usr/include/c++/4.8.2/sstream **** 	      ios_base::openmode __mode = ios_base::in | ios_base::out);
 227:/usr/include/c++/4.8.2/sstream **** 
 228:/usr/include/c++/4.8.2/sstream ****       // Internal function for correctly updating the internal buffer
 229:/usr/include/c++/4.8.2/sstream ****       // for a particular _M_string, due to initialization or re-sizing
 230:/usr/include/c++/4.8.2/sstream ****       // of an existing _M_string.
 231:/usr/include/c++/4.8.2/sstream ****       void
 232:/usr/include/c++/4.8.2/sstream ****       _M_sync(char_type* __base, __size_type __i, __size_type __o);
 233:/usr/include/c++/4.8.2/sstream **** 
 234:/usr/include/c++/4.8.2/sstream ****       // Internal function for correctly updating egptr() to the actual
 235:/usr/include/c++/4.8.2/sstream ****       // string end.
 236:/usr/include/c++/4.8.2/sstream ****       void
 237:/usr/include/c++/4.8.2/sstream ****       _M_update_egptr()
 238:/usr/include/c++/4.8.2/sstream ****       {
 239:/usr/include/c++/4.8.2/sstream **** 	const bool __testin = _M_mode & ios_base::in;
 240:/usr/include/c++/4.8.2/sstream **** 	if (this->pptr() && this->pptr() > this->egptr())
 241:/usr/include/c++/4.8.2/sstream **** 	  {
 242:/usr/include/c++/4.8.2/sstream **** 	    if (__testin)
 243:/usr/include/c++/4.8.2/sstream **** 	      this->setg(this->eback(), this->gptr(), this->pptr());
 244:/usr/include/c++/4.8.2/sstream **** 	    else
 245:/usr/include/c++/4.8.2/sstream **** 	      this->setg(this->pptr(), this->pptr(), this->pptr());
 246:/usr/include/c++/4.8.2/sstream **** 	  }
 247:/usr/include/c++/4.8.2/sstream ****       }
 248:/usr/include/c++/4.8.2/sstream **** 
 249:/usr/include/c++/4.8.2/sstream ****       // Works around the issue with pbump, part of the protected
 250:/usr/include/c++/4.8.2/sstream ****       // interface of basic_streambuf, taking just an int.
 251:/usr/include/c++/4.8.2/sstream ****       void
 252:/usr/include/c++/4.8.2/sstream ****       _M_pbump(char_type* __pbeg, char_type* __pend, off_type __off);
 253:/usr/include/c++/4.8.2/sstream ****     };
 254:/usr/include/c++/4.8.2/sstream **** 
 255:/usr/include/c++/4.8.2/sstream **** 
 256:/usr/include/c++/4.8.2/sstream ****   // [27.7.2] Template class basic_istringstream
 257:/usr/include/c++/4.8.2/sstream ****   /**
 258:/usr/include/c++/4.8.2/sstream ****    *  @brief  Controlling input for std::string.
 259:/usr/include/c++/4.8.2/sstream ****    *  @ingroup io
 260:/usr/include/c++/4.8.2/sstream ****    *
 261:/usr/include/c++/4.8.2/sstream ****    *  @tparam _CharT  Type of character stream.
 262:/usr/include/c++/4.8.2/sstream ****    *  @tparam _Traits  Traits for character type, defaults to
 263:/usr/include/c++/4.8.2/sstream ****    *                   char_traits<_CharT>.
 264:/usr/include/c++/4.8.2/sstream ****    *  @tparam _Alloc  Allocator type, defaults to allocator<_CharT>.
 265:/usr/include/c++/4.8.2/sstream ****    *
 266:/usr/include/c++/4.8.2/sstream ****    *  This class supports reading from objects of type std::basic_string,
 267:/usr/include/c++/4.8.2/sstream ****    *  using the inherited functions from std::basic_istream.  To control
 268:/usr/include/c++/4.8.2/sstream ****    *  the associated sequence, an instance of std::basic_stringbuf is used,
 269:/usr/include/c++/4.8.2/sstream ****    *  which this page refers to as @c sb.
 270:/usr/include/c++/4.8.2/sstream ****   */
 271:/usr/include/c++/4.8.2/sstream ****   template<typename _CharT, typename _Traits, typename _Alloc>
 272:/usr/include/c++/4.8.2/sstream ****     class basic_istringstream : public basic_istream<_CharT, _Traits>
 273:/usr/include/c++/4.8.2/sstream ****     {
 274:/usr/include/c++/4.8.2/sstream ****     public:
 275:/usr/include/c++/4.8.2/sstream ****       // Types:
 276:/usr/include/c++/4.8.2/sstream ****       typedef _CharT 					char_type;
 277:/usr/include/c++/4.8.2/sstream ****       typedef _Traits 					traits_type;
 278:/usr/include/c++/4.8.2/sstream ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
 279:/usr/include/c++/4.8.2/sstream ****       // 251. basic_stringbuf missing allocator_type
 280:/usr/include/c++/4.8.2/sstream ****       typedef _Alloc				       	allocator_type;
 281:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::int_type 		int_type;
 282:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::pos_type 		pos_type;
 283:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::off_type 		off_type;
 284:/usr/include/c++/4.8.2/sstream **** 
 285:/usr/include/c++/4.8.2/sstream ****       // Non-standard types:
 286:/usr/include/c++/4.8.2/sstream ****       typedef basic_string<_CharT, _Traits, _Alloc> 	__string_type;
 287:/usr/include/c++/4.8.2/sstream ****       typedef basic_stringbuf<_CharT, _Traits, _Alloc> 	__stringbuf_type;
 288:/usr/include/c++/4.8.2/sstream ****       typedef basic_istream<char_type, traits_type>	__istream_type;
 289:/usr/include/c++/4.8.2/sstream **** 
 290:/usr/include/c++/4.8.2/sstream ****     private:
 291:/usr/include/c++/4.8.2/sstream ****       __stringbuf_type	_M_stringbuf;
 292:/usr/include/c++/4.8.2/sstream **** 
 293:/usr/include/c++/4.8.2/sstream ****     public:
 294:/usr/include/c++/4.8.2/sstream ****       // Constructors:
 295:/usr/include/c++/4.8.2/sstream ****       /**
 296:/usr/include/c++/4.8.2/sstream ****        *  @brief  Default constructor starts with an empty string buffer.
 297:/usr/include/c++/4.8.2/sstream ****        *  @param  __mode  Whether the buffer can read, or write, or both.
 298:/usr/include/c++/4.8.2/sstream ****        *
 299:/usr/include/c++/4.8.2/sstream ****        *  @c ios_base::in is automatically included in @a __mode.
 300:/usr/include/c++/4.8.2/sstream ****        *
 301:/usr/include/c++/4.8.2/sstream ****        *  Initializes @c sb using @c __mode|in, and passes @c &sb to the base
 302:/usr/include/c++/4.8.2/sstream ****        *  class initializer.  Does not allocate any buffer.
 303:/usr/include/c++/4.8.2/sstream ****        *
 304:/usr/include/c++/4.8.2/sstream ****        *  That's a lie.  We initialize the base class with NULL, because the
 305:/usr/include/c++/4.8.2/sstream ****        *  string class does its own memory management.
 306:/usr/include/c++/4.8.2/sstream ****       */
 307:/usr/include/c++/4.8.2/sstream ****       explicit
 308:/usr/include/c++/4.8.2/sstream ****       basic_istringstream(ios_base::openmode __mode = ios_base::in)
 309:/usr/include/c++/4.8.2/sstream ****       : __istream_type(), _M_stringbuf(__mode | ios_base::in)
 310:/usr/include/c++/4.8.2/sstream ****       { this->init(&_M_stringbuf); }
 311:/usr/include/c++/4.8.2/sstream **** 
 312:/usr/include/c++/4.8.2/sstream ****       /**
 313:/usr/include/c++/4.8.2/sstream ****        *  @brief  Starts with an existing string buffer.
 314:/usr/include/c++/4.8.2/sstream ****        *  @param  __str  A string to copy as a starting buffer.
 315:/usr/include/c++/4.8.2/sstream ****        *  @param  __mode  Whether the buffer can read, or write, or both.
 316:/usr/include/c++/4.8.2/sstream ****        *
 317:/usr/include/c++/4.8.2/sstream ****        *  @c ios_base::in is automatically included in @a mode.
 318:/usr/include/c++/4.8.2/sstream ****        *
 319:/usr/include/c++/4.8.2/sstream ****        *  Initializes @c sb using @a str and @c mode|in, and passes @c &sb
 320:/usr/include/c++/4.8.2/sstream ****        *  to the base class initializer.
 321:/usr/include/c++/4.8.2/sstream ****        *
 322:/usr/include/c++/4.8.2/sstream ****        *  That's a lie.  We initialize the base class with NULL, because the
 323:/usr/include/c++/4.8.2/sstream ****        *  string class does its own memory management.
 324:/usr/include/c++/4.8.2/sstream ****       */
 325:/usr/include/c++/4.8.2/sstream ****       explicit
 326:/usr/include/c++/4.8.2/sstream ****       basic_istringstream(const __string_type& __str,
 327:/usr/include/c++/4.8.2/sstream **** 			  ios_base::openmode __mode = ios_base::in)
 328:/usr/include/c++/4.8.2/sstream ****       : __istream_type(), _M_stringbuf(__str, __mode | ios_base::in)
 329:/usr/include/c++/4.8.2/sstream ****       { this->init(&_M_stringbuf); }
 330:/usr/include/c++/4.8.2/sstream **** 
 331:/usr/include/c++/4.8.2/sstream ****       /**
 332:/usr/include/c++/4.8.2/sstream ****        *  @brief  The destructor does nothing.
 333:/usr/include/c++/4.8.2/sstream ****        *
 334:/usr/include/c++/4.8.2/sstream ****        *  The buffer is deallocated by the stringbuf object, not the
 335:/usr/include/c++/4.8.2/sstream ****        *  formatting stream.
 336:/usr/include/c++/4.8.2/sstream ****       */
 337:/usr/include/c++/4.8.2/sstream ****       ~basic_istringstream()
 338:/usr/include/c++/4.8.2/sstream ****       { }
 339:/usr/include/c++/4.8.2/sstream **** 
 340:/usr/include/c++/4.8.2/sstream ****       // Members:
 341:/usr/include/c++/4.8.2/sstream ****       /**
 342:/usr/include/c++/4.8.2/sstream ****        *  @brief  Accessing the underlying buffer.
 343:/usr/include/c++/4.8.2/sstream ****        *  @return  The current basic_stringbuf buffer.
 344:/usr/include/c++/4.8.2/sstream ****        *
 345:/usr/include/c++/4.8.2/sstream ****        *  This hides both signatures of std::basic_ios::rdbuf().
 346:/usr/include/c++/4.8.2/sstream ****       */
 347:/usr/include/c++/4.8.2/sstream ****       __stringbuf_type*
 348:/usr/include/c++/4.8.2/sstream ****       rdbuf() const
 349:/usr/include/c++/4.8.2/sstream ****       { return const_cast<__stringbuf_type*>(&_M_stringbuf); }
 350:/usr/include/c++/4.8.2/sstream **** 
 351:/usr/include/c++/4.8.2/sstream ****       /**
 352:/usr/include/c++/4.8.2/sstream ****        *  @brief  Copying out the string buffer.
 353:/usr/include/c++/4.8.2/sstream ****        *  @return  @c rdbuf()->str()
 354:/usr/include/c++/4.8.2/sstream ****       */
 355:/usr/include/c++/4.8.2/sstream ****       __string_type
 356:/usr/include/c++/4.8.2/sstream ****       str() const
 357:/usr/include/c++/4.8.2/sstream ****       { return _M_stringbuf.str(); }
 358:/usr/include/c++/4.8.2/sstream **** 
 359:/usr/include/c++/4.8.2/sstream ****       /**
 360:/usr/include/c++/4.8.2/sstream ****        *  @brief  Setting a new buffer.
 361:/usr/include/c++/4.8.2/sstream ****        *  @param  __s  The string to use as a new sequence.
 362:/usr/include/c++/4.8.2/sstream ****        *
 363:/usr/include/c++/4.8.2/sstream ****        *  Calls @c rdbuf()->str(s).
 364:/usr/include/c++/4.8.2/sstream ****       */
 365:/usr/include/c++/4.8.2/sstream ****       void
 366:/usr/include/c++/4.8.2/sstream ****       str(const __string_type& __s)
 367:/usr/include/c++/4.8.2/sstream ****       { _M_stringbuf.str(__s); }
 368:/usr/include/c++/4.8.2/sstream ****     };
 369:/usr/include/c++/4.8.2/sstream **** 
 370:/usr/include/c++/4.8.2/sstream **** 
 371:/usr/include/c++/4.8.2/sstream ****   // [27.7.3] Template class basic_ostringstream
 372:/usr/include/c++/4.8.2/sstream ****   /**
 373:/usr/include/c++/4.8.2/sstream ****    *  @brief  Controlling output for std::string.
 374:/usr/include/c++/4.8.2/sstream ****    *  @ingroup io
 375:/usr/include/c++/4.8.2/sstream ****    *
 376:/usr/include/c++/4.8.2/sstream ****    *  @tparam _CharT  Type of character stream.
 377:/usr/include/c++/4.8.2/sstream ****    *  @tparam _Traits  Traits for character type, defaults to
 378:/usr/include/c++/4.8.2/sstream ****    *                   char_traits<_CharT>.
 379:/usr/include/c++/4.8.2/sstream ****    *  @tparam _Alloc  Allocator type, defaults to allocator<_CharT>.
 380:/usr/include/c++/4.8.2/sstream ****    *
 381:/usr/include/c++/4.8.2/sstream ****    *  This class supports writing to objects of type std::basic_string,
 382:/usr/include/c++/4.8.2/sstream ****    *  using the inherited functions from std::basic_ostream.  To control
 383:/usr/include/c++/4.8.2/sstream ****    *  the associated sequence, an instance of std::basic_stringbuf is used,
 384:/usr/include/c++/4.8.2/sstream ****    *  which this page refers to as @c sb.
 385:/usr/include/c++/4.8.2/sstream ****   */
 386:/usr/include/c++/4.8.2/sstream ****   template <typename _CharT, typename _Traits, typename _Alloc>
 387:/usr/include/c++/4.8.2/sstream ****     class basic_ostringstream : public basic_ostream<_CharT, _Traits>
 388:/usr/include/c++/4.8.2/sstream ****     {
 389:/usr/include/c++/4.8.2/sstream ****     public:
 390:/usr/include/c++/4.8.2/sstream ****       // Types:
 391:/usr/include/c++/4.8.2/sstream ****       typedef _CharT 					char_type;
 392:/usr/include/c++/4.8.2/sstream ****       typedef _Traits 					traits_type;
 393:/usr/include/c++/4.8.2/sstream ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
 394:/usr/include/c++/4.8.2/sstream ****       // 251. basic_stringbuf missing allocator_type
 395:/usr/include/c++/4.8.2/sstream ****       typedef _Alloc				       	allocator_type;
 396:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::int_type 		int_type;
 397:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::pos_type 		pos_type;
 398:/usr/include/c++/4.8.2/sstream ****       typedef typename traits_type::off_type 		off_type;
 399:/usr/include/c++/4.8.2/sstream **** 
 400:/usr/include/c++/4.8.2/sstream ****       // Non-standard types:
 401:/usr/include/c++/4.8.2/sstream ****       typedef basic_string<_CharT, _Traits, _Alloc> 	__string_type;
 402:/usr/include/c++/4.8.2/sstream ****       typedef basic_stringbuf<_CharT, _Traits, _Alloc> 	__stringbuf_type;
 403:/usr/include/c++/4.8.2/sstream ****       typedef basic_ostream<char_type, traits_type>	__ostream_type;
 404:/usr/include/c++/4.8.2/sstream **** 
 405:/usr/include/c++/4.8.2/sstream ****     private:
 406:/usr/include/c++/4.8.2/sstream ****       __stringbuf_type	_M_stringbuf;
 407:/usr/include/c++/4.8.2/sstream **** 
 408:/usr/include/c++/4.8.2/sstream ****     public:
 409:/usr/include/c++/4.8.2/sstream ****       // Constructors/destructor:
 410:/usr/include/c++/4.8.2/sstream ****       /**
 411:/usr/include/c++/4.8.2/sstream ****        *  @brief  Default constructor starts with an empty string buffer.
 412:/usr/include/c++/4.8.2/sstream ****        *  @param  __mode  Whether the buffer can read, or write, or both.
 413:/usr/include/c++/4.8.2/sstream ****        *
 414:/usr/include/c++/4.8.2/sstream ****        *  @c ios_base::out is automatically included in @a mode.
 415:/usr/include/c++/4.8.2/sstream ****        *
 416:/usr/include/c++/4.8.2/sstream ****        *  Initializes @c sb using @c mode|out, and passes @c &sb to the base
 417:/usr/include/c++/4.8.2/sstream ****        *  class initializer.  Does not allocate any buffer.
 418:/usr/include/c++/4.8.2/sstream ****        *
 419:/usr/include/c++/4.8.2/sstream ****        *  That's a lie.  We initialize the base class with NULL, because the
 420:/usr/include/c++/4.8.2/sstream ****        *  string class does its own memory management.
 421:/usr/include/c++/4.8.2/sstream ****       */
 422:/usr/include/c++/4.8.2/sstream ****       explicit
 423:/usr/include/c++/4.8.2/sstream ****       basic_ostringstream(ios_base::openmode __mode = ios_base::out)
 424:/usr/include/c++/4.8.2/sstream ****       : __ostream_type(), _M_stringbuf(__mode | ios_base::out)
 2489              		.loc 4 424 0
 2490 00b7 48C74424 		mov	QWORD PTR [rsp+96], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24	# ost
 2490      60000000 
 2490      00
 2491 00c0 48C78424 		mov	QWORD PTR [rsp+184], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64	# ME
 2491      B8000000 
 2491      00000000 
 2492              	.LVL137:
 2493              	.LBB1246:
 2494              	.LBB1243:
 2495              	.LBB1239:
 2496              	.LBB1238:
 2497              		.loc 6 466 0
 2498 00cc 48C74424 		mov	QWORD PTR [rsp+104], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct
 2498      68000000 
 2498      00
 2499 00d5 48C74424 		mov	QWORD PTR [rsp+112], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_in_beg,
 2499      70000000 
 2499      00
 2500 00de 48C74424 		mov	QWORD PTR [rsp+120], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_in_cur,
 2500      78000000 
 2500      00
 2501 00e7 48C78424 		mov	QWORD PTR [rsp+128], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_in_end,
 2501      80000000 
 2501      00000000 
 2502 00f3 48C78424 		mov	QWORD PTR [rsp+136], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_out_beg,
 2502      88000000 
 2502      00000000 
 2503 00ff 48C78424 		mov	QWORD PTR [rsp+144], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_out_cur,
 2503      90000000 
 2503      00000000 
 2504 010b 48C78424 		mov	QWORD PTR [rsp+152], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_out_end,
 2504      98000000 
 2504      00000000 
 2505 0117 E8000000 		call	_ZNSt6localeC1Ev	#
 2505      00
 2506              	.LVL138:
 2507              	.LBE1238:
 2508              	.LBE1239:
 2509              	.LBE1243:
 2510              	.LBE1246:
 425:/usr/include/c++/4.8.2/sstream ****       { this->init(&_M_stringbuf); }
 2511              		.loc 4 425 0
 2512 011c 488D5424 		lea	rdx, [rsp+96]	# tmp326,
 2512      60
 2513              	.LBB1247:
 2514              	.LBB1244:
  99:/usr/include/c++/4.8.2/sstream ****       : __streambuf_type(), _M_mode(__mode), _M_string()
 2515              		.loc 4 99 0
 2516 0121 48C74424 		mov	QWORD PTR [rsp+104], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# MEM[(s
 2516      68000000 
 2516      00
 2517 012a C78424A8 		mov	DWORD PTR [rsp+168], 16	# MEM[(struct basic_stringbuf *)&ostr + 8B]._M_mode,
 2517      00000010 
 2517      000000
 2518              	.LVL139:
 2519              	.LBE1244:
 2520              	.LBE1247:
 2521              		.loc 4 425 0
 2522 0135 488D7208 		lea	rsi, [rdx+8]	# tmp187,
 2523              	.LBB1248:
 2524              	.LBB1245:
 2525              	.LBB1240:
 2526              	.LBB1241:
 2527              	.LBB1242:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 2528              		.loc 5 275 0
 2529 0139 48C78424 		mov	QWORD PTR [rsp+176], OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# MEM[(struct _Alloc_hid
 2529      B0000000 
 2529      00000000 
 2530              	.LVL140:
 2531              	.LBE1242:
 2532              	.LBE1241:
 2533              	.LBE1240:
 2534              	.LBE1245:
 2535              	.LBE1248:
 2536              		.loc 4 425 0
 2537 0145 488D7A58 		lea	rdi, [rdx+88]	# tmp189,
 2538              	.LEHB1:
 2539 0149 E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	#
 2539      00
 2540              	.LEHE1:
 2541              	.LVL141:
 2542              	.LBE1221:
 2543              	.LBE1220:
 110:saya.cpp      **** 
 111:saya.cpp      ****     std::ostringstream ostr;
 112:saya.cpp      ****     ostr << global_clock << "\n";
 2544              		.loc 8 112 0
 2545 014e 8B350000 		mov	esi, DWORD PTR global_clock[rip]	#, global_clock
 2545      0000
 2546 0154 488D7C24 		lea	rdi, [rsp+96]	# tmp331,
 2546      60
 2547              	.LEHB2:
 2548 0159 E8000000 		call	_ZNSolsEi	#
 2548      00
 2549              	.LVL142:
 2550              	.LBB1254:
 2551              	.LBB1255:
 535:/usr/include/c++/4.8.2/ostream **** 	__ostream_insert(__out, __s,
 2552              		.loc 1 535 0
 2553 015e BA010000 		mov	edx, 1	#,
 2553      00
 2554 0163 BE000000 		mov	esi, OFFSET FLAT:.LC32	#,
 2554      00
 2555 0168 4889C7   		mov	rdi, rax	#, D.37199
 2556 016b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
 2556      00
 2557              	.LVL143:
 2558 0170 C744240C 		mov	DWORD PTR [rsp+12], 40	# %sfp,
 2558      28000000 
 2559              	.L112:
 2560              	.LVL144:
 2561 0178 8B4C240C 		mov	ecx, DWORD PTR [rsp+12]	# ivtmp.551, %sfp
 2562 017c B8676666 		mov	eax, 1717986919	# tmp321,
 2562      66
 2563              	.LBE1255:
 2564              	.LBE1254:
 2565              	.LBE1219:
 108:saya.cpp      ****   for(int t = 0;;++t){
 2566              		.loc 8 108 0 discriminator 1
 2567 0181 41BC6400 		mov	r12d, 100	# ivtmp.544,
 2567      0000
 2568              	.LBB1571:
 2569              	.LBB1256:
 2570              	.LBB1257:
 2571              	.LBB1258:
 2572              	.LBB1259:
 2573              	.LBB1260:
 2574              	.LBB1261:
 2575              	.LBB1262:
 2576              	.LBB1263:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2577              		.loc 8 52 0 discriminator 1
 2578 0187 41BE1F85 		mov	r14d, 1374389535	# tmp306,
 2578      EB51
 2579 018d F7E9     		imul	ecx	# ivtmp.551
 2580 018f 89CE     		mov	esi, ecx	# tmp228, ivtmp.551
 2581 0191 C1FE1F   		sar	esi, 31	# tmp228,
 2582 0194 C1FA04   		sar	edx, 4	# D.37198,
 2583 0197 29F2     		sub	edx, esi	# D.37198, tmp228
 2584 0199 8D3C92   		lea	edi, [rdx+rdx*4]	# tmp231,
 2585 019c C1E703   		sal	edi, 3	# tmp232,
 2586 019f 29F9     		sub	ecx, edi	# D.37198, tmp232
 2587 01a1 4C63C1   		movsx	r8, ecx	#, D.37198
  53:saya.cpp      ****   return ar[x][y][z];
 2588              		.loc 8 53 0 discriminator 1
 2589 01a4 4F8D0C80 		lea	r9, [r8+r8*4]	# tmp308,
 2590 01a8 4F8D2C89 		lea	r13, [r9+r9*4]	# tmp310,
 2591 01ac 49C1E502 		sal	r13, 2	# tmp311,
 2592              	.LVL145:
 2593              		.p2align 4,,10
 2594              		.p2align 3
 2595              	.L120:
 2596              	.LBE1263:
 2597              	.LBE1262:
  99:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 2598              		.loc 8 99 0
 2599 01b0 448B1500 		mov	r10d, DWORD PTR global_clock[rip]	# D.37198, global_clock
 2599      000000
 2600 01b7 4439D3   		cmp	ebx, r10d	# t, D.37198
 2601 01ba 0F8C4002 		jl	.L199	#,
 2601      0000
 2602              	.L113:
 100:saya.cpp      ****   while(global_clock < t) naive_proceed();
 2603              		.loc 8 100 0
 2604 01c0 4439D3   		cmp	ebx, r10d	# t, D.37198
 2605 01c3 7E10     		jle	.L116	#,
 2606              		.p2align 4,,10
 2607 01c5 0F1F00   		.p2align 3
 2608              	.L181:
 2609 01c8 E8000000 		call	_Z13naive_proceedv	#
 2609      00
 2610              	.LVL146:
 2611 01cd 3B1D0000 		cmp	ebx, DWORD PTR global_clock[rip]	# t, global_clock
 2611      0000
 2612 01d3 7FF3     		jg	.L181	#,
 2613              	.L116:
 2614              	.LVL147:
 2615              	.LBB1266:
 2616              	.LBB1264:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2617              		.loc 8 52 0
 2618 01d5 4489E0   		mov	eax, r12d	# tmp320, ivtmp.544
 2619 01d8 4589E3   		mov	r11d, r12d	# tmp206, ivtmp.544
 2620 01db B9640000 		mov	ecx, 100	#,
 2620      00
 2621 01e0 41F7EE   		imul	r14d	# tmp306
 2622 01e3 41C1FB1F 		sar	r11d, 31	# tmp206,
 2623 01e7 4489E0   		mov	eax, r12d	# z, ivtmp.544
 2624              	.LBE1264:
 2625              	.LBE1266:
 2626              	.LBE1261:
 2627              	.LBE1260:
 113:saya.cpp      ****     for (int y=0;y<NY;++y) {
 114:saya.cpp      ****       for (int z=0;z<NZ;++z) {
 115:saya.cpp      **** 	Real u,v;
 116:saya.cpp      **** 	get_solution_at(t,NX/2,y,z, u,v);
 117:saya.cpp      ****         ostr<<int(std::floor(9.999*u));
 2628              		.loc 8 117 0
 2629 01ea C5FB100D 		vmovsd	xmm1, QWORD PTR .LC33[rip]	# tmp335,
 2629      00000000 
 2630              	.LBB1270:
 2631              	.LBB1268:
 2632              	.LBB1267:
 2633              	.LBB1265:
  52:saya.cpp      ****   z = (z+NZ)%NZ;
 2634              		.loc 8 52 0
 2635 01f2 C1FA05   		sar	edx, 5	# tmp202,
 2636 01f5 4429DA   		sub	edx, r11d	# tmp202, tmp206
 2637 01f8 0FAFD1   		imul	edx, ecx	# tmp207,
 2638 01fb 29D0     		sub	eax, edx	# z, tmp207
  53:saya.cpp      ****   return ar[x][y][z];
 2639              		.loc 8 53 0
 2640 01fd 4898     		cdqe
 2641 01ff 4C01E8   		add	rax, r13	# tmp217, tmp311
 2642              	.LBE1265:
 2643              	.LBE1267:
 2644              	.LBE1268:
 2645              	.LBE1270:
 2646              		.loc 8 117 0
 2647 0202 C5F35904 		vmulsd	xmm0, xmm1, QWORD PTR U[800000+rax*8]	# D.37200, tmp335, U
 2647      C5000000 
 2647      00
 2648 020b E8000000 		call	floor	#
 2648      00
 2649              	.LVL148:
 2650 0210 488D7C24 		lea	rdi, [rsp+96]	# tmp336,
 2650      60
 2651 0215 C5FB2CF0 		vcvttsd2si	esi, xmm0	# D.37198, D.37200
 2652 0219 E8000000 		call	_ZNSolsEi	#
 2652      00
 2653              	.LVL149:
 2654 021e 4183C401 		add	r12d, 1	# ivtmp.544,
 2655              	.LVL150:
 2656              	.LBE1259:
 114:saya.cpp      ****       for (int z=0;z<NZ;++z) {
 2657              		.loc 8 114 0
 2658 0222 4181FCC8 		cmp	r12d, 200	# ivtmp.544,
 2658      000000
 2659 0229 7585     		jne	.L120	#,
 2660              	.LVL151:
 2661              	.LBE1258:
 2662              	.LBB1273:
 2663              	.LBB1274:
 535:/usr/include/c++/4.8.2/ostream **** 	__ostream_insert(__out, __s,
 2664              		.loc 1 535 0
 2665 022b 488D7C24 		lea	rdi, [rsp+96]	# tmp337,
 2665      60
 2666              	.LVL152:
 2667 0230 BA010000 		mov	edx, 1	#,
 2667      00
 2668 0235 BE000000 		mov	esi, OFFSET FLAT:.LC32	#,
 2668      00
 2669 023a E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
 2669      00
 2670              	.LEHE2:
 2671              	.LVL153:
 2672 023f 8344240C 		add	DWORD PTR [rsp+12], 1	# %sfp,
 2672      01
 2673              	.LVL154:
 2674              	.LBE1274:
 2675              	.LBE1273:
 2676              	.LBE1257:
 113:saya.cpp      ****     for (int y=0;y<NY;++y) {
 2677              		.loc 8 113 0
 2678 0244 837C240C 		cmp	DWORD PTR [rsp+12], 80	# %sfp,
 2678      50
 2679 0249 0F8529FF 		jne	.L112	#,
 2679      FFFF
 2680              	.LVL155:
 2681              	.LBE1256:
 2682              	.LBE1571:
 2683              	.LBE1579:
 2684              	.LBE1585:
 129:/usr/include/c++/4.8.2/sstream **** 	if (this->pptr())
 2685              		.loc 4 129 0
 2686 024f 4C8BAC24 		mov	r13, QWORD PTR [rsp+144]	# D.37207, MEM[(const struct basic_streambuf *)&ostr + 48B]
 2686      90000000 
 2687              	.LBB1586:
 2688              	.LBB1580:
 2689              	.LBB1572:
 2690              	.LBB1277:
 2691              	.LBB1278:
 2692              	.LBB1279:
 2693              	.LBB1280:
 2694              	.LBB1281:
 2695              	.LBB1282:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 2696              		.loc 5 275 0
 2697 0257 48C74424 		mov	QWORD PTR [rsp+32], OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# MEM[(struct _Alloc_hide
 2697      20000000 
 2697      00
 2698              	.LVL156:
 2699              	.LBE1282:
 2700              	.LBE1281:
 2701              	.LBE1280:
 129:/usr/include/c++/4.8.2/sstream **** 	if (this->pptr())
 2702              		.loc 4 129 0
 2703 0260 4D85ED   		test	r13, r13	# D.37207
 2704 0263 0F840B04 		je	.L121	#,
 2704      0000
 2705              	.LVL157:
 2706              	.LBE1279:
 2707              	.LBE1278:
 2708              	.LBE1277:
 2709              	.LBE1572:
 2710              	.LBE1580:
 2711              	.LBE1586:
 2712 0269 488BBC24 		mov	rdi, QWORD PTR [rsp+128]	# D.37207, MEM[(const struct basic_streambuf *)&ostr + 32B]
 2712      80000000 
 2713              	.LVL158:
 2714 0271 4C8BA424 		mov	r12, QWORD PTR [rsp+136]	# D.37207, MEM[(const struct basic_streambuf *)&ostr + 40B]
 2714      88000000 
 2715              	.LVL159:
 2716              	.LBB1587:
 2717              	.LBB1581:
 2718              	.LBB1573:
 2719              	.LBB1448:
 2720              	.LBB1443:
 2721              	.LBB1438:
 132:/usr/include/c++/4.8.2/sstream **** 	    if (this->pptr() > this->egptr())
 2722              		.loc 4 132 0
 2723 0279 4939FD   		cmp	r13, rdi	# D.37207, D.37207
 2724 027c 0F866B03 		jbe	.L122	#,
 2724      0000
 2725              	.LVL160:
 2726              	.LBB1283:
 2727              	.LBB1284:
 2728              	.LBB1285:
 2729              	.LBB1286:
 2730              	.LBB1287:
 2731              	.LBB1288:
 2732              	.LBB1289:
 2733              		.file 9 "/usr/include/c++/4.8.2/bits/basic_string.tcc"
   1:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // Components for manipulating sequences of characters -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
   3:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/basic_string.tcc **** //
   5:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // any later version.
  10:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  11:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  16:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  20:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  25:/usr/include/c++/4.8.2/bits/basic_string.tcc **** /** @file bits/basic_string.tcc
  26:/usr/include/c++/4.8.2/bits/basic_string.tcc ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/4.8.2/bits/basic_string.tcc ****  *  Do not attempt to use it directly. @headername{string}
  28:/usr/include/c++/4.8.2/bits/basic_string.tcc ****  */
  29:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  30:/usr/include/c++/4.8.2/bits/basic_string.tcc **** //
  31:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // ISO C++ 14882: 21  Strings library
  32:/usr/include/c++/4.8.2/bits/basic_string.tcc **** //
  33:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  34:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // Written by Jason Merrill based upon the specification by Takanori Adachi
  35:/usr/include/c++/4.8.2/bits/basic_string.tcc **** // in ANSI X3J16/94-0013R2.  Rewritten by Nathan Myers to ISO-14882.
  36:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  37:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #ifndef _BASIC_STRING_TCC
  38:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #define _BASIC_STRING_TCC 1
  39:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  40:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #pragma GCC system_header
  41:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  42:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #include <bits/cxxabi_forced.h>
  43:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  44:/usr/include/c++/4.8.2/bits/basic_string.tcc **** namespace std _GLIBCXX_VISIBILITY(default)
  45:/usr/include/c++/4.8.2/bits/basic_string.tcc **** {
  46:/usr/include/c++/4.8.2/bits/basic_string.tcc **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  47:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  48:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   template<typename _CharT, typename _Traits, typename _Alloc>
  49:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     const typename basic_string<_CharT, _Traits, _Alloc>::size_type
  50:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     basic_string<_CharT, _Traits, _Alloc>::
  51:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     _Rep::_S_max_size = (((npos - sizeof(_Rep_base))/sizeof(_CharT)) - 1) / 4;
  52:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  53:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   template<typename _CharT, typename _Traits, typename _Alloc>
  54:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     const _CharT
  55:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     basic_string<_CharT, _Traits, _Alloc>::
  56:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     _Rep::_S_terminal = _CharT();
  57:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  58:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   template<typename _CharT, typename _Traits, typename _Alloc>
  59:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     const typename basic_string<_CharT, _Traits, _Alloc>::size_type
  60:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     basic_string<_CharT, _Traits, _Alloc>::npos;
  61:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  62:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   // Linker sets _S_empty_rep_storage to all 0s (one reference, empty string)
  63:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   // at static init time (before static ctors are run).
  64:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   template<typename _CharT, typename _Traits, typename _Alloc>
  65:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     typename basic_string<_CharT, _Traits, _Alloc>::size_type
  66:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     basic_string<_CharT, _Traits, _Alloc>::_Rep::_S_empty_rep_storage[
  67:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     (sizeof(_Rep_base) + sizeof(_CharT) + sizeof(size_type) - 1) /
  68:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       sizeof(size_type)];
  69:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
  70:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   // NB: This is the special case for Input Iterators, used in
  71:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   // istreambuf_iterators, etc.
  72:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   // Input Iterators have a cost structure very different from
  73:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   // pointers, calling for a different coding style.
  74:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   template<typename _CharT, typename _Traits, typename _Alloc>
  75:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     template<typename _InIterator>
  76:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       _CharT*
  77:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       basic_string<_CharT, _Traits, _Alloc>::
  78:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
  79:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		   input_iterator_tag)
  80:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       {
  81:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
  82:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__beg == __end && __a == _Alloc())
  83:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
  84:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #endif
  85:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	// Avoid reallocation for common case.
  86:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_CharT __buf[128];
  87:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	size_type __len = 0;
  88:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	while (__beg != __end && __len < sizeof(__buf) / sizeof(_CharT))
  89:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  {
  90:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	    __buf[__len++] = *__beg;
  91:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	    ++__beg;
  92:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  }
  93:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__len, size_type(0), __a);
  94:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_M_copy(__r->_M_refdata(), __buf, __len);
  95:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	__try
  96:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  {
  97:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	    while (__beg != __end)
  98:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	      {
  99:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		if (__len == __r->_M_capacity)
 100:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		  {
 101:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		    // Allocate more space.
 102:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		    _Rep* __another = _Rep::_S_create(__len + 1, __len, __a);
 103:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		    _M_copy(__another->_M_refdata(), __r->_M_refdata(), __len);
 104:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		    __r->_M_destroy(__a);
 105:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		    __r = __another;
 106:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		  }
 107:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		__r->_M_refdata()[__len++] = *__beg;
 108:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		++__beg;
 109:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	      }
 110:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  }
 111:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	__catch(...)
 112:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  {
 113:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	    __r->_M_destroy(__a);
 114:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	    __throw_exception_again;
 115:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  }
 116:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	__r->_M_set_length_and_sharable(__len);
 117:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	return __r->_M_refdata();
 118:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       }
 119:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
 120:/usr/include/c++/4.8.2/bits/basic_string.tcc ****   template<typename _CharT, typename _Traits, typename _Alloc>
 121:/usr/include/c++/4.8.2/bits/basic_string.tcc ****     template <typename _InIterator>
 122:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       _CharT*
 123:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       basic_string<_CharT, _Traits, _Alloc>::
 124:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
 125:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 		   forward_iterator_tag)
 126:/usr/include/c++/4.8.2/bits/basic_string.tcc ****       {
 127:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #if _GLIBCXX_FULLY_DYNAMIC_STRING == 0
 128:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__beg == __end && __a == _Alloc())
 2734              		.loc 9 128 0
 2735 0282 4D39E5   		cmp	r13, r12	# D.37207, D.37207
 2736 0285 0F845703 		je	.L200	#,
 2736      0000
 2737              	.LVL161:
 129:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
 130:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #endif
 131:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	// NB: Not required, but considered best practice.
 132:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
 2738              		.loc 9 132 0
 2739 028b 4D85E4   		test	r12, r12	# D.37207
 2740 028e 0F844403 		je	.L201	#,
 2740      0000
 2741              	.LVL162:
 133:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  __throw_logic_error(__N("basic_string::_S_construct null not valid"));
 134:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
 135:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	const size_type __dnew = static_cast<size_type>(std::distance(__beg,
 136:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 								      __end));
 137:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	// Check for out_of_range and length_error exceptions.
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 2742              		.loc 9 138 0
 2743 0294 488D5424 		lea	rdx, [rsp+31]	# tmp368,
 2743      1F
 2744              	.LVL163:
 2745              	.LBB1290:
 2746              	.LBB1291:
 2747              	.LBB1292:
 2748              		.file 10 "/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h"
   1:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // Functions used by iterators -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
   3:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // Copyright (C) 2001-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** //
   5:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // any later version.
  10:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  11:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  16:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  20:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  25:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** /*
  26:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *
  27:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * Copyright (c) 1994
  28:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * Hewlett-Packard Company
  29:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *
  30:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * representations about the suitability of this software for any
  36:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *
  38:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *
  39:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * Copyright (c) 1996-1998
  40:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *
  42:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * representations about the suitability of this software for any
  48:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  */
  50:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  51:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** /** @file bits/stl_iterator_base_funcs.h
  52:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *  Do not attempt to use it directly. @headername{iterator}
  54:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *
  55:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *  This file contains all of the general iterator-related utility
  56:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  *  functions, such as distance() and advance().
  57:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****  */
  58:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  59:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** #ifndef _STL_ITERATOR_BASE_FUNCS_H
  60:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** #define _STL_ITERATOR_BASE_FUNCS_H 1
  61:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  62:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** #pragma GCC system_header
  63:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  64:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** #include <bits/concept_check.h>
  65:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** #include <debug/debug.h>
  66:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  67:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** namespace std _GLIBCXX_VISIBILITY(default)
  68:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** {
  69:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  70:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  71:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****   template<typename _InputIterator>
  72:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     inline typename iterator_traits<_InputIterator>::difference_type
  73:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     __distance(_InputIterator __first, _InputIterator __last,
  74:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****                input_iterator_tag)
  75:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     {
  76:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       // concept requirements
  77:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       __glibcxx_function_requires(_InputIteratorConcept<_InputIterator>)
  78:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  79:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       typename iterator_traits<_InputIterator>::difference_type __n = 0;
  80:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       while (__first != __last)
  81:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 	{
  82:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 	  ++__first;
  83:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 	  ++__n;
  84:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 	}
  85:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       return __n;
  86:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     }
  87:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 
  88:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****   template<typename _RandomAccessIterator>
  89:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     inline typename iterator_traits<_RandomAccessIterator>::difference_type
  90:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
  91:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****                random_access_iterator_tag)
  92:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****     {
  93:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       // concept requirements
  94:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       __glibcxx_function_requires(_RandomAccessIteratorConcept<
  95:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h **** 				  _RandomAccessIterator>)
  96:/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h ****       return __last - __first;
 2749              		.loc 10 96 0
 2750 0299 4D29E5   		sub	r13, r12	# __dnew, D.37207
 2751              	.LVL164:
 2752              	.LBE1292:
 2753              	.LBE1291:
 2754              	.LBE1290:
 2755              		.loc 9 138 0
 2756 029c 31F6     		xor	esi, esi	#
 2757 029e 4C89EF   		mov	rdi, r13	#, __dnew
 2758              	.LEHB3:
 2759 02a1 E8000000 		call	_ZNSs4_Rep9_S_createEmmRKSaIcE	#
 2759      00
 2760              	.LEHE3:
 2761              	.LVL165:
 139:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	__try
 140:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  { _S_copy_chars(__r->_M_refdata(), __beg, __end); }
 2762              		.loc 9 140 0
 2763 02a6 4C8D5018 		lea	r10, [rax+24]	# D.37201,
 2764              	.LBB1293:
 2765              	.LBB1294:
 2766              	.LBB1295:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 2767              		.loc 5 356 0
 2768 02aa 4983FD01 		cmp	r13, 1	# __dnew,
 2769              	.LBE1295:
 2770              	.LBE1294:
 2771              	.LBE1293:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 2772              		.loc 9 138 0
 2773 02ae 4989C6   		mov	r14, rax	# __r,
 2774              	.LVL166:
 2775              	.LBB1306:
 2776              	.LBB1303:
 2777              	.LBB1300:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 2778              		.loc 5 356 0
 2779 02b1 0F85C001 		jne	.L125	#,
 2779      0000
 2780              	.LBE1300:
 2781              	.LBE1303:
 2782              	.LBE1306:
 2783              	.LBE1289:
 2784              	.LBE1288:
 2785              	.LBE1287:
 2786              	.LBE1286:
 2787              	.LBE1285:
 2788              	.LBE1284:
 2789              	.LBE1283:
 2790              	.LBE1438:
 2791              	.LBE1443:
 2792              	.LBE1448:
 2793              	.LBE1573:
 2794              	.LBE1581:
 2795              	.LBE1587:
 354:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
 2796              		.loc 5 354 0
 2797 02b7 410FB614 		movzx	edx, BYTE PTR [r12]	# D.37209, MEM[(const char_type &)_96]
 2797      24
 2798              	.LVL167:
 2799              	.LBB1588:
 2800              	.LBB1582:
 2801              	.LBB1574:
 2802              	.LBB1449:
 2803              	.LBB1444:
 2804              	.LBB1439:
 2805              	.LBB1335:
 2806              	.LBB1330:
 2807              	.LBB1327:
 2808              	.LBB1324:
 2809              	.LBB1321:
 2810              	.LBB1318:
 2811              	.LBB1315:
 2812              	.LBB1307:
 2813              	.LBB1304:
 2814              	.LBB1301:
 2815              	.LBB1296:
 2816              	.LBB1297:
 2817              		.file 11 "/usr/include/c++/4.8.2/bits/char_traits.h"
   1:/usr/include/c++/4.8.2/bits/char_traits.h **** // Character Traits for use by standard string and iostream -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/char_traits.h **** 
   3:/usr/include/c++/4.8.2/bits/char_traits.h **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/char_traits.h **** //
   5:/usr/include/c++/4.8.2/bits/char_traits.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/char_traits.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/char_traits.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/char_traits.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/char_traits.h **** // any later version.
  10:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  11:/usr/include/c++/4.8.2/bits/char_traits.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/char_traits.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/char_traits.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/char_traits.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  16:/usr/include/c++/4.8.2/bits/char_traits.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/char_traits.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/char_traits.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  20:/usr/include/c++/4.8.2/bits/char_traits.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/char_traits.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/char_traits.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/char_traits.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  25:/usr/include/c++/4.8.2/bits/char_traits.h **** /** @file bits/char_traits.h
  26:/usr/include/c++/4.8.2/bits/char_traits.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/4.8.2/bits/char_traits.h ****  *  Do not attempt to use it directly. @headername{string}
  28:/usr/include/c++/4.8.2/bits/char_traits.h ****  */
  29:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  30:/usr/include/c++/4.8.2/bits/char_traits.h **** //
  31:/usr/include/c++/4.8.2/bits/char_traits.h **** // ISO C++ 14882: 21  Strings library
  32:/usr/include/c++/4.8.2/bits/char_traits.h **** //
  33:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  34:/usr/include/c++/4.8.2/bits/char_traits.h **** #ifndef _CHAR_TRAITS_H
  35:/usr/include/c++/4.8.2/bits/char_traits.h **** #define _CHAR_TRAITS_H 1
  36:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  37:/usr/include/c++/4.8.2/bits/char_traits.h **** #pragma GCC system_header
  38:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  39:/usr/include/c++/4.8.2/bits/char_traits.h **** #include <bits/stl_algobase.h>  // std::copy, std::fill_n
  40:/usr/include/c++/4.8.2/bits/char_traits.h **** #include <bits/postypes.h>      // For streampos
  41:/usr/include/c++/4.8.2/bits/char_traits.h **** #include <cwchar>               // For WEOF, wmemmove, wmemset, etc.
  42:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  43:/usr/include/c++/4.8.2/bits/char_traits.h **** namespace __gnu_cxx _GLIBCXX_VISIBILITY(default)
  44:/usr/include/c++/4.8.2/bits/char_traits.h **** {
  45:/usr/include/c++/4.8.2/bits/char_traits.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  46:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  47:/usr/include/c++/4.8.2/bits/char_traits.h ****   /**
  48:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  @brief  Mapping from character type to associated types.
  49:/usr/include/c++/4.8.2/bits/char_traits.h ****    *
  50:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  @note This is an implementation class for the generic version
  51:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  of char_traits.  It defines int_type, off_type, pos_type, and
  52:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  state_type.  By default these are unsigned long, streamoff,
  53:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  streampos, and mbstate_t.  Users who need a different set of
  54:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  types, but who don't need to change the definitions of any function
  55:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  defined in char_traits, can specialize __gnu_cxx::_Char_types
  56:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  while leaving __gnu_cxx::char_traits alone. */
  57:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
  58:/usr/include/c++/4.8.2/bits/char_traits.h ****     struct _Char_types
  59:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
  60:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef unsigned long   int_type;
  61:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef std::streampos  pos_type;
  62:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef std::streamoff  off_type;
  63:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef std::mbstate_t  state_type;
  64:/usr/include/c++/4.8.2/bits/char_traits.h ****     };
  65:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  66:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  67:/usr/include/c++/4.8.2/bits/char_traits.h ****   /**
  68:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  @brief  Base class used to implement std::char_traits.
  69:/usr/include/c++/4.8.2/bits/char_traits.h ****    *
  70:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  @note For any given actual character type, this definition is
  71:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  probably wrong.  (Most of the member functions are likely to be
  72:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  right, but the int_type and state_type typedefs, and the eof()
  73:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  member function, are likely to be wrong.)  The reason this class
  74:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  exists is so users can specialize it.  Classes in namespace std
  75:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  may not be specialized for fundamental types, but classes in
  76:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  namespace __gnu_cxx may be.
  77:/usr/include/c++/4.8.2/bits/char_traits.h ****    *
  78:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  See http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt05ch13s03.html
  79:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  for advice on how to make use of this class for @a unusual character
  80:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  types. Also, check out include/ext/pod_char_traits.h.  
  81:/usr/include/c++/4.8.2/bits/char_traits.h ****    */
  82:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
  83:/usr/include/c++/4.8.2/bits/char_traits.h ****     struct char_traits
  84:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
  85:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef _CharT                                    char_type;
  86:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::int_type    int_type;
  87:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::pos_type    pos_type;
  88:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::off_type    off_type;
  89:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::state_type  state_type;
  90:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  91:/usr/include/c++/4.8.2/bits/char_traits.h ****       static void
  92:/usr/include/c++/4.8.2/bits/char_traits.h ****       assign(char_type& __c1, const char_type& __c2)
  93:/usr/include/c++/4.8.2/bits/char_traits.h ****       { __c1 = __c2; }
  94:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  95:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
  96:/usr/include/c++/4.8.2/bits/char_traits.h ****       eq(const char_type& __c1, const char_type& __c2)
  97:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __c1 == __c2; }
  98:/usr/include/c++/4.8.2/bits/char_traits.h **** 
  99:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 100:/usr/include/c++/4.8.2/bits/char_traits.h ****       lt(const char_type& __c1, const char_type& __c2)
 101:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __c1 < __c2; }
 102:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 103:/usr/include/c++/4.8.2/bits/char_traits.h ****       static int
 104:/usr/include/c++/4.8.2/bits/char_traits.h ****       compare(const char_type* __s1, const char_type* __s2, std::size_t __n);
 105:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 106:/usr/include/c++/4.8.2/bits/char_traits.h ****       static std::size_t
 107:/usr/include/c++/4.8.2/bits/char_traits.h ****       length(const char_type* __s);
 108:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 109:/usr/include/c++/4.8.2/bits/char_traits.h ****       static const char_type*
 110:/usr/include/c++/4.8.2/bits/char_traits.h ****       find(const char_type* __s, std::size_t __n, const char_type& __a);
 111:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 112:/usr/include/c++/4.8.2/bits/char_traits.h ****       static char_type*
 113:/usr/include/c++/4.8.2/bits/char_traits.h ****       move(char_type* __s1, const char_type* __s2, std::size_t __n);
 114:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 115:/usr/include/c++/4.8.2/bits/char_traits.h ****       static char_type*
 116:/usr/include/c++/4.8.2/bits/char_traits.h ****       copy(char_type* __s1, const char_type* __s2, std::size_t __n);
 117:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 118:/usr/include/c++/4.8.2/bits/char_traits.h ****       static char_type*
 119:/usr/include/c++/4.8.2/bits/char_traits.h ****       assign(char_type* __s, std::size_t __n, char_type __a);
 120:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 121:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR char_type
 122:/usr/include/c++/4.8.2/bits/char_traits.h ****       to_char_type(const int_type& __c)
 123:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return static_cast<char_type>(__c); }
 124:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 125:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR int_type
 126:/usr/include/c++/4.8.2/bits/char_traits.h ****       to_int_type(const char_type& __c)
 127:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return static_cast<int_type>(__c); }
 128:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 129:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 130:/usr/include/c++/4.8.2/bits/char_traits.h ****       eq_int_type(const int_type& __c1, const int_type& __c2)
 131:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __c1 == __c2; }
 132:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 133:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR int_type
 134:/usr/include/c++/4.8.2/bits/char_traits.h ****       eof()
 135:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return static_cast<int_type>(_GLIBCXX_STDIO_EOF); }
 136:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 137:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR int_type
 138:/usr/include/c++/4.8.2/bits/char_traits.h ****       not_eof(const int_type& __c)
 139:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return !eq_int_type(__c, eof()) ? __c : to_int_type(char_type()); }
 140:/usr/include/c++/4.8.2/bits/char_traits.h ****     };
 141:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 142:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
 143:/usr/include/c++/4.8.2/bits/char_traits.h ****     int
 144:/usr/include/c++/4.8.2/bits/char_traits.h ****     char_traits<_CharT>::
 145:/usr/include/c++/4.8.2/bits/char_traits.h ****     compare(const char_type* __s1, const char_type* __s2, std::size_t __n)
 146:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 147:/usr/include/c++/4.8.2/bits/char_traits.h ****       for (std::size_t __i = 0; __i < __n; ++__i)
 148:/usr/include/c++/4.8.2/bits/char_traits.h **** 	if (lt(__s1[__i], __s2[__i]))
 149:/usr/include/c++/4.8.2/bits/char_traits.h **** 	  return -1;
 150:/usr/include/c++/4.8.2/bits/char_traits.h **** 	else if (lt(__s2[__i], __s1[__i]))
 151:/usr/include/c++/4.8.2/bits/char_traits.h **** 	  return 1;
 152:/usr/include/c++/4.8.2/bits/char_traits.h ****       return 0;
 153:/usr/include/c++/4.8.2/bits/char_traits.h ****     }
 154:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 155:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
 156:/usr/include/c++/4.8.2/bits/char_traits.h ****     std::size_t
 157:/usr/include/c++/4.8.2/bits/char_traits.h ****     char_traits<_CharT>::
 158:/usr/include/c++/4.8.2/bits/char_traits.h ****     length(const char_type* __p)
 159:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 160:/usr/include/c++/4.8.2/bits/char_traits.h ****       std::size_t __i = 0;
 161:/usr/include/c++/4.8.2/bits/char_traits.h ****       while (!eq(__p[__i], char_type()))
 162:/usr/include/c++/4.8.2/bits/char_traits.h ****         ++__i;
 163:/usr/include/c++/4.8.2/bits/char_traits.h ****       return __i;
 164:/usr/include/c++/4.8.2/bits/char_traits.h ****     }
 165:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 166:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
 167:/usr/include/c++/4.8.2/bits/char_traits.h ****     const typename char_traits<_CharT>::char_type*
 168:/usr/include/c++/4.8.2/bits/char_traits.h ****     char_traits<_CharT>::
 169:/usr/include/c++/4.8.2/bits/char_traits.h ****     find(const char_type* __s, std::size_t __n, const char_type& __a)
 170:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 171:/usr/include/c++/4.8.2/bits/char_traits.h ****       for (std::size_t __i = 0; __i < __n; ++__i)
 172:/usr/include/c++/4.8.2/bits/char_traits.h ****         if (eq(__s[__i], __a))
 173:/usr/include/c++/4.8.2/bits/char_traits.h ****           return __s + __i;
 174:/usr/include/c++/4.8.2/bits/char_traits.h ****       return 0;
 175:/usr/include/c++/4.8.2/bits/char_traits.h ****     }
 176:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 177:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
 178:/usr/include/c++/4.8.2/bits/char_traits.h ****     typename char_traits<_CharT>::char_type*
 179:/usr/include/c++/4.8.2/bits/char_traits.h ****     char_traits<_CharT>::
 180:/usr/include/c++/4.8.2/bits/char_traits.h ****     move(char_type* __s1, const char_type* __s2, std::size_t __n)
 181:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 182:/usr/include/c++/4.8.2/bits/char_traits.h ****       return static_cast<_CharT*>(__builtin_memmove(__s1, __s2,
 183:/usr/include/c++/4.8.2/bits/char_traits.h **** 						    __n * sizeof(char_type)));
 184:/usr/include/c++/4.8.2/bits/char_traits.h ****     }
 185:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 186:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
 187:/usr/include/c++/4.8.2/bits/char_traits.h ****     typename char_traits<_CharT>::char_type*
 188:/usr/include/c++/4.8.2/bits/char_traits.h ****     char_traits<_CharT>::
 189:/usr/include/c++/4.8.2/bits/char_traits.h ****     copy(char_type* __s1, const char_type* __s2, std::size_t __n)
 190:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 191:/usr/include/c++/4.8.2/bits/char_traits.h ****       // NB: Inline std::copy so no recursive dependencies.
 192:/usr/include/c++/4.8.2/bits/char_traits.h ****       std::copy(__s2, __s2 + __n, __s1);
 193:/usr/include/c++/4.8.2/bits/char_traits.h ****       return __s1;
 194:/usr/include/c++/4.8.2/bits/char_traits.h ****     }
 195:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 196:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<typename _CharT>
 197:/usr/include/c++/4.8.2/bits/char_traits.h ****     typename char_traits<_CharT>::char_type*
 198:/usr/include/c++/4.8.2/bits/char_traits.h ****     char_traits<_CharT>::
 199:/usr/include/c++/4.8.2/bits/char_traits.h ****     assign(char_type* __s, std::size_t __n, char_type __a)
 200:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 201:/usr/include/c++/4.8.2/bits/char_traits.h ****       // NB: Inline std::fill_n so no recursive dependencies.
 202:/usr/include/c++/4.8.2/bits/char_traits.h ****       std::fill_n(__s, __n, __a);
 203:/usr/include/c++/4.8.2/bits/char_traits.h ****       return __s;
 204:/usr/include/c++/4.8.2/bits/char_traits.h ****     }
 205:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 206:/usr/include/c++/4.8.2/bits/char_traits.h **** _GLIBCXX_END_NAMESPACE_VERSION
 207:/usr/include/c++/4.8.2/bits/char_traits.h **** } // namespace
 208:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 209:/usr/include/c++/4.8.2/bits/char_traits.h **** namespace std _GLIBCXX_VISIBILITY(default)
 210:/usr/include/c++/4.8.2/bits/char_traits.h **** {
 211:/usr/include/c++/4.8.2/bits/char_traits.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 212:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 213:/usr/include/c++/4.8.2/bits/char_traits.h ****   // 21.1
 214:/usr/include/c++/4.8.2/bits/char_traits.h ****   /**
 215:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  @brief  Basis for explicit traits specializations.
 216:/usr/include/c++/4.8.2/bits/char_traits.h ****    *
 217:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  @note  For any given actual character type, this definition is
 218:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  probably wrong.  Since this is just a thin wrapper around
 219:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  __gnu_cxx::char_traits, it is possible to achieve a more
 220:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  appropriate definition by specializing __gnu_cxx::char_traits.
 221:/usr/include/c++/4.8.2/bits/char_traits.h ****    *
 222:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  See http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt05ch13s03.html
 223:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  for advice on how to make use of this class for @a unusual character
 224:/usr/include/c++/4.8.2/bits/char_traits.h ****    *  types. Also, check out include/ext/pod_char_traits.h.
 225:/usr/include/c++/4.8.2/bits/char_traits.h ****   */
 226:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<class _CharT>
 227:/usr/include/c++/4.8.2/bits/char_traits.h ****     struct char_traits : public __gnu_cxx::char_traits<_CharT>
 228:/usr/include/c++/4.8.2/bits/char_traits.h ****     { };
 229:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 230:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 231:/usr/include/c++/4.8.2/bits/char_traits.h ****   /// 21.1.3.1  char_traits specializations
 232:/usr/include/c++/4.8.2/bits/char_traits.h ****   template<>
 233:/usr/include/c++/4.8.2/bits/char_traits.h ****     struct char_traits<char>
 234:/usr/include/c++/4.8.2/bits/char_traits.h ****     {
 235:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef char              char_type;
 236:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef int               int_type;
 237:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef streampos         pos_type;
 238:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef streamoff         off_type;
 239:/usr/include/c++/4.8.2/bits/char_traits.h ****       typedef mbstate_t         state_type;
 240:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 241:/usr/include/c++/4.8.2/bits/char_traits.h ****       static void
 242:/usr/include/c++/4.8.2/bits/char_traits.h ****       assign(char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
 243:/usr/include/c++/4.8.2/bits/char_traits.h ****       { __c1 = __c2; }
 2818              		.loc 11 243 0
 2819 02bc 41885618 		mov	BYTE PTR [r14+24], dl	# MEM[(char_type &)__r_117 + 24], D.37209
 2820              	.LVL168:
 2821              	.L126:
 2822              	.LBE1297:
 2823              	.LBE1296:
 2824              	.LBE1301:
 2825              	.LBE1304:
 2826              	.LBE1307:
 2827              	.LBB1308:
 2828              	.LBB1309:
 210:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 2829              		.loc 5 210 0
 2830 02c0 4981FE00 		cmp	r14, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# __r,
 2830      000000
 2831 02c7 7411     		je	.L123	#,
 2832              	.LVL169:
 2833              	.LBB1310:
 2834              	.LBB1311:
 204:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->_M_refcount = 0; }
 2835              		.loc 5 204 0
 2836 02c9 41C74610 		mov	DWORD PTR [r14+16], 0	# MEM[(_Atomic_word *)__r_117 + 16B],
 2836      00000000 
 2837              	.LBE1311:
 2838              	.LBE1310:
 214:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      this->_M_length = __n;
 2839              		.loc 5 214 0
 2840 02d1 4D892E   		mov	QWORD PTR [r14], r13	# __r_117->D.22725._M_length, __dnew
 2841              	.LVL170:
 2842              	.LBB1312:
 2843              	.LBB1313:
 2844              		.loc 11 243 0
 2845 02d4 43C6442E 		mov	BYTE PTR [r14+24+r13], 0	# MEM[(char_type &)_123],
 2845      1800
 2846              	.LVL171:
 2847              	.L123:
 2848              	.LBE1313:
 2849              	.LBE1312:
 2850              	.LBE1309:
 2851              	.LBE1308:
 2852              	.LBE1315:
 2853              	.LBE1318:
 2854              	.LBE1321:
 2855              	.LBE1324:
 2856              	.LBE1327:
 2857              	.LBE1330:
 2858              	.LBE1335:
 2859              	.LBB1336:
 2860              	.LBB1337:
 540:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 541:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 542:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Assign the value of @a str to this string.
 543:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string.
 544:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 545:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 546:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator=(const basic_string& __str) 
 547:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->assign(__str); }
 548:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 549:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 550:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Copy contents of @a s into this string.
 551:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __s  Source null-terminated string.
 552:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 553:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 554:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator=(const _CharT* __s) 
 555:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->assign(__s); }
 556:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 557:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 558:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to string of length 1.
 559:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __c  Source character.
 560:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 561:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Assigning to a character makes this string length 1 and
 562:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  (*this)[0] == @a c.
 563:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 564:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 565:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator=(_CharT __c) 
 566:/usr/include/c++/4.8.2/bits/basic_string.h ****       { 
 567:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->assign(1, __c); 
 568:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return *this;
 569:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 570:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 571:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
 572:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 573:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Move assign the value of @a str to this string.
 574:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string.
 575:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 576:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The contents of @a str are moved into this string (without copying).
 577:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a str is a valid, but unspecified string.
 578:/usr/include/c++/4.8.2/bits/basic_string.h ****        **/
 579:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 580:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator=(basic_string&& __str)
 581:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 582:/usr/include/c++/4.8.2/bits/basic_string.h **** 	// NB: DR 1204.
 583:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->swap(__str);
 2861              		.loc 5 583 0
 2862 02da 4C8D6424 		lea	r12, [rsp+64]	# tmp341,
 2862      40
 2863              	.LVL172:
 2864              	.LBE1337:
 2865              	.LBE1336:
 2866              	.LBB1339:
 2867              	.LBB1331:
 2868              	.LBB1332:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 2869              		.loc 5 275 0
 2870 02df 4C895424 		mov	QWORD PTR [rsp+64], r10	# MEM[(struct _Alloc_hider *)&D.37026]._M_p, D.37201
 2870      40
 2871              	.LVL173:
 2872              	.LBE1332:
 2873              	.LBE1331:
 2874              	.LBE1339:
 2875              	.LBB1340:
 2876              	.LBB1338:
 2877              		.loc 5 583 0
 2878 02e4 488D7C24 		lea	rdi, [rsp+32]	# tmp343,
 2878      20
 2879              	.LVL174:
 2880 02e9 4C89E6   		mov	rsi, r12	# tmp342, tmp303
 2881              	.LEHB4:
 2882 02ec E8000000 		call	_ZNSs4swapERSs	#
 2882      00
 2883              	.LEHE4:
 2884              	.LVL175:
 2885              	.L198:
 2886              	.LBE1338:
 2887              	.LBE1340:
 2888              	.LBB1341:
 2889              	.LBB1342:
 2890              	.LBB1343:
 2891              	.LBB1344:
 2892              	.LBB1345:
 2893              	.LBB1346:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 2894              		.loc 5 293 0
 2895 02f1 488B4424 		mov	rax, QWORD PTR [rsp+64]	# D.37201,
 2895      40
 2896              	.LBE1346:
 2897              	.LBE1345:
 2898              	.LBE1344:
 2899              	.LBE1343:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 2900              		.loc 5 539 0
 2901 02f6 488D78E8 		lea	rdi, [rax-24]	# D.37204,
 2902              	.LVL176:
 2903              	.LBB1347:
 2904              	.LBB1348:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 2905              		.loc 5 240 0
 2906 02fa 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.37204,
 2906      000000
 2907 0301 0F857002 		jne	.L202	#,
 2907      0000
 2908              	.LVL177:
 2909              	.L132:
 2910              	.LBE1348:
 2911              	.LBE1347:
 2912              	.LBE1342:
 2913              	.LBE1341:
 2914              	.LBE1439:
 2915              	.LBE1444:
 2916              	.LBE1449:
 2917              	.LBB1450:
 2918              	.LBB1451:
 2919              	.LBB1452:
 2920              	.LBB1453:
 2921              	.LBB1454:
 2922              	.LBB1455:
 2923              	.LBB1456:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 2924              		.loc 5 293 0
 2925 0307 488B7424 		mov	rsi, QWORD PTR [rsp+32]	# D.37201, D.33253._M_dataplus._M_p
 2925      20
 2926              	.LVL178:
 2927              	.LBE1456:
 2928              	.LBE1455:
 2929              	.LBE1454:
 2930              	.LBE1453:
 2931              	.LBE1452:
 584:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return *this;
 585:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 586:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 587:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 588:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to string constructed from initializer %list.
 589:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __l  std::initializer_list.
 590:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 591:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 592:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator=(initializer_list<_CharT> __l)
 593:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 594:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->assign(__l.begin(), __l.size());
 595:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return *this;
 596:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 597:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
 598:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 599:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Iterators:
 600:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 601:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read/write iterator that points to the first character in
 602:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the %string.  Unshares the string.
 603:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 604:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
 605:/usr/include/c++/4.8.2/bits/basic_string.h ****       begin() _GLIBCXX_NOEXCEPT
 606:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 607:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_leak();
 608:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return iterator(_M_data());
 609:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 610:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 611:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 612:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) iterator that points to the first
 613:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  character in the %string.
 614:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 615:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_iterator
 616:/usr/include/c++/4.8.2/bits/basic_string.h ****       begin() const _GLIBCXX_NOEXCEPT
 617:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_iterator(_M_data()); }
 618:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 619:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 620:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read/write iterator that points one past the last
 621:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  character in the %string.  Unshares the string.
 622:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 623:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
 624:/usr/include/c++/4.8.2/bits/basic_string.h ****       end() _GLIBCXX_NOEXCEPT
 625:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 626:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_leak();
 627:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return iterator(_M_data() + this->size());
 628:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 629:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 630:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 631:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) iterator that points one past the
 632:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  last character in the %string.
 633:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 634:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_iterator
 635:/usr/include/c++/4.8.2/bits/basic_string.h ****       end() const _GLIBCXX_NOEXCEPT
 636:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_iterator(_M_data() + this->size()); }
 637:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 638:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 639:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read/write reverse iterator that points to the last
 640:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  character in the %string.  Iteration is done in reverse element
 641:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  order.  Unshares the string.
 642:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 643:/usr/include/c++/4.8.2/bits/basic_string.h ****       reverse_iterator
 644:/usr/include/c++/4.8.2/bits/basic_string.h ****       rbegin() _GLIBCXX_NOEXCEPT
 645:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return reverse_iterator(this->end()); }
 646:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 647:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 648:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) reverse iterator that points
 649:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  to the last character in the %string.  Iteration is done in
 650:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  reverse element order.
 651:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 652:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reverse_iterator
 653:/usr/include/c++/4.8.2/bits/basic_string.h ****       rbegin() const _GLIBCXX_NOEXCEPT
 654:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_reverse_iterator(this->end()); }
 655:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 656:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 657:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read/write reverse iterator that points to one before the
 658:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  first character in the %string.  Iteration is done in reverse
 659:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  element order.  Unshares the string.
 660:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 661:/usr/include/c++/4.8.2/bits/basic_string.h ****       reverse_iterator
 662:/usr/include/c++/4.8.2/bits/basic_string.h ****       rend() _GLIBCXX_NOEXCEPT
 663:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return reverse_iterator(this->begin()); }
 664:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 665:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 666:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) reverse iterator that points
 667:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  to one before the first character in the %string.  Iteration
 668:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is done in reverse element order.
 669:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 670:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reverse_iterator
 671:/usr/include/c++/4.8.2/bits/basic_string.h ****       rend() const _GLIBCXX_NOEXCEPT
 672:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_reverse_iterator(this->begin()); }
 673:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 674:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
 675:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 676:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) iterator that points to the first
 677:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  character in the %string.
 678:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 679:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_iterator
 680:/usr/include/c++/4.8.2/bits/basic_string.h ****       cbegin() const noexcept
 681:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_iterator(this->_M_data()); }
 682:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 683:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 684:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) iterator that points one past the
 685:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  last character in the %string.
 686:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 687:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_iterator
 688:/usr/include/c++/4.8.2/bits/basic_string.h ****       cend() const noexcept
 689:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_iterator(this->_M_data() + this->size()); }
 690:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 691:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 692:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) reverse iterator that points
 693:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  to the last character in the %string.  Iteration is done in
 694:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  reverse element order.
 695:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 696:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reverse_iterator
 697:/usr/include/c++/4.8.2/bits/basic_string.h ****       crbegin() const noexcept
 698:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_reverse_iterator(this->end()); }
 699:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 700:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 701:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) reverse iterator that points
 702:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  to one before the first character in the %string.  Iteration
 703:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is done in reverse element order.
 704:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 705:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reverse_iterator
 706:/usr/include/c++/4.8.2/bits/basic_string.h ****       crend() const noexcept
 707:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return const_reverse_iterator(this->begin()); }
 708:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 709:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 710:/usr/include/c++/4.8.2/bits/basic_string.h ****     public:
 711:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Capacity:
 712:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  Returns the number of characters in the string, not including any
 713:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  null-termination.
 714:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
 715:/usr/include/c++/4.8.2/bits/basic_string.h ****       size() const _GLIBCXX_NOEXCEPT
 716:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_rep()->_M_length; }
 717:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 718:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  Returns the number of characters in the string, not including any
 719:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  null-termination.
 720:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
 721:/usr/include/c++/4.8.2/bits/basic_string.h ****       length() const _GLIBCXX_NOEXCEPT
 722:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_rep()->_M_length; }
 723:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 724:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  Returns the size() of the largest possible %string.
 725:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
 726:/usr/include/c++/4.8.2/bits/basic_string.h ****       max_size() const _GLIBCXX_NOEXCEPT
 727:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _Rep::_S_max_size; }
 728:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 729:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 730:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Resizes the %string to the specified number of characters.
 731:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __n  Number of characters the %string should contain.
 732:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __c  Character to fill any new elements.
 733:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 734:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function will %resize the %string to the specified
 735:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  number of characters.  If the number is smaller than the
 736:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  %string's current size the %string is truncated, otherwise
 737:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the %string is extended and new elements are %set to @a __c.
 738:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 739:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 740:/usr/include/c++/4.8.2/bits/basic_string.h ****       resize(size_type __n, _CharT __c);
 741:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 742:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 743:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Resizes the %string to the specified number of characters.
 744:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __n  Number of characters the %string should contain.
 745:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 746:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function will resize the %string to the specified length.  If
 747:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the new size is smaller than the %string's current size the %string
 748:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is truncated, otherwise the %string is extended and new characters
 749:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  are default-constructed.  For basic types such as char, this means
 750:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  setting them to 0.
 751:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 752:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 753:/usr/include/c++/4.8.2/bits/basic_string.h ****       resize(size_type __n)
 754:/usr/include/c++/4.8.2/bits/basic_string.h ****       { this->resize(__n, _CharT()); }
 755:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 756:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
 757:/usr/include/c++/4.8.2/bits/basic_string.h ****       ///  A non-binding request to reduce capacity() to size().
 758:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 759:/usr/include/c++/4.8.2/bits/basic_string.h ****       shrink_to_fit()
 760:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 761:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (capacity() > size())
 762:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  {
 763:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    __try
 764:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      { reserve(0); }
 765:/usr/include/c++/4.8.2/bits/basic_string.h **** 	    __catch(...)
 766:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      { }
 767:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  }
 768:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 769:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 770:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 771:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 772:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns the total number of characters that the %string can hold
 773:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  before needing to allocate more memory.
 774:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 775:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
 776:/usr/include/c++/4.8.2/bits/basic_string.h ****       capacity() const _GLIBCXX_NOEXCEPT
 777:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_rep()->_M_capacity; }
 778:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 779:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 780:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Attempt to preallocate enough memory for specified number of
 781:/usr/include/c++/4.8.2/bits/basic_string.h ****        *          characters.
 782:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __res_arg  Number of characters required.
 783:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If @a __res_arg exceeds @c max_size().
 784:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 785:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function attempts to reserve enough memory for the
 786:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  %string to hold the specified number of characters.  If the
 787:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  number requested is more than max_size(), length_error is
 788:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.
 789:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 790:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The advantage of this function is that if optimal code is a
 791:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  necessity and the user can determine the string length that will be
 792:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  required, the user can reserve the memory in %advance, and thus
 793:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  prevent a possible reallocation of memory and copying of %string
 794:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  data.
 795:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 796:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 797:/usr/include/c++/4.8.2/bits/basic_string.h ****       reserve(size_type __res_arg = 0);
 798:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 799:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 800:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Erases the string, making it empty.
 801:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 802:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
 803:/usr/include/c++/4.8.2/bits/basic_string.h ****       clear() _GLIBCXX_NOEXCEPT
 804:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_mutate(0, this->size(), 0); }
 805:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 806:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 807:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns true if the %string is empty.  Equivalent to 
 808:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  <code>*this == ""</code>.
 809:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 810:/usr/include/c++/4.8.2/bits/basic_string.h ****       bool
 811:/usr/include/c++/4.8.2/bits/basic_string.h ****       empty() const _GLIBCXX_NOEXCEPT
 812:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->size() == 0; }
 813:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 814:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Element access:
 815:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 816:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Subscript access to the data contained in the %string.
 817:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __pos  The index of the character to access.
 818:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Read-only (constant) reference to the character.
 819:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 820:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This operator allows for easy, array-style, data access.
 821:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Note that data access with this operator is unchecked and
 822:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  out_of_range lookups are not defined. (For checked lookups
 823:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  see at().)
 824:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 825:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reference
 826:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator[] (size_type __pos) const
 827:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 828:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_ASSERT(__pos <= size());
 829:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return _M_data()[__pos];
 830:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 831:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 832:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 833:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Subscript access to the data contained in the %string.
 834:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __pos  The index of the character to access.
 835:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Read/write reference to the character.
 836:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 837:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This operator allows for easy, array-style, data access.
 838:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Note that data access with this operator is unchecked and
 839:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  out_of_range lookups are not defined. (For checked lookups
 840:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  see at().)  Unshares the string.
 841:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 842:/usr/include/c++/4.8.2/bits/basic_string.h ****       reference
 843:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator[](size_type __pos)
 844:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 845:/usr/include/c++/4.8.2/bits/basic_string.h ****         // allow pos == size() as v3 extension:
 846:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_ASSERT(__pos <= size());
 847:/usr/include/c++/4.8.2/bits/basic_string.h ****         // but be strict in pedantic mode:
 848:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(__pos < size());
 849:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_leak();
 850:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return _M_data()[__pos];
 851:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 852:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 853:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 854:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Provides access to the data contained in the %string.
 855:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n The index of the character to access.
 856:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Read-only (const) reference to the character.
 857:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a n is an invalid index.
 858:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 859:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function provides for safer data access.  The parameter is
 860:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  first checked that it is in the range of the string.  The function
 861:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  throws out_of_range if the check fails.
 862:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 863:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reference
 864:/usr/include/c++/4.8.2/bits/basic_string.h ****       at(size_type __n) const
 865:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 866:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n >= this->size())
 867:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  __throw_out_of_range(__N("basic_string::at"));
 868:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return _M_data()[__n];
 869:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 870:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 871:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 872:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Provides access to the data contained in the %string.
 873:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n The index of the character to access.
 874:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Read/write reference to the character.
 875:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a n is an invalid index.
 876:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 877:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function provides for safer data access.  The parameter is
 878:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  first checked that it is in the range of the string.  The function
 879:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  throws out_of_range if the check fails.  Success results in
 880:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  unsharing the string.
 881:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 882:/usr/include/c++/4.8.2/bits/basic_string.h ****       reference
 883:/usr/include/c++/4.8.2/bits/basic_string.h ****       at(size_type __n)
 884:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
 885:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n >= size())
 886:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  __throw_out_of_range(__N("basic_string::at"));
 887:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_leak();
 888:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return _M_data()[__n];
 889:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 890:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 891:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
 892:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 893:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read/write reference to the data at the first
 894:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  element of the %string.
 895:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 896:/usr/include/c++/4.8.2/bits/basic_string.h ****       reference
 897:/usr/include/c++/4.8.2/bits/basic_string.h ****       front()
 898:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return operator[](0); }
 899:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 900:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 901:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) reference to the data at the first
 902:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  element of the %string.
 903:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 904:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reference
 905:/usr/include/c++/4.8.2/bits/basic_string.h ****       front() const
 906:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return operator[](0); }
 907:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 908:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 909:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read/write reference to the data at the last
 910:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  element of the %string.
 911:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 912:/usr/include/c++/4.8.2/bits/basic_string.h ****       reference
 913:/usr/include/c++/4.8.2/bits/basic_string.h ****       back()
 914:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return operator[](this->size() - 1); }
 915:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 916:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 917:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns a read-only (constant) reference to the data at the
 918:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  last element of the %string.
 919:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 920:/usr/include/c++/4.8.2/bits/basic_string.h ****       const_reference
 921:/usr/include/c++/4.8.2/bits/basic_string.h ****       back() const
 922:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return operator[](this->size() - 1); }
 923:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
 924:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 925:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Modifiers:
 926:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 927:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a string to this string.
 928:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  The string to append.
 929:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 930:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 931:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 932:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator+=(const basic_string& __str)
 933:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->append(__str); }
 934:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 935:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 936:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a C string.
 937:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to append.
 938:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 939:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 940:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 941:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator+=(const _CharT* __s)
 942:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->append(__s); }
 943:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 944:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 945:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a character.
 946:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  The character to append.
 947:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 948:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 949:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 950:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator+=(_CharT __c)
 951:/usr/include/c++/4.8.2/bits/basic_string.h ****       { 
 952:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->push_back(__c);
 953:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return *this;
 954:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
 955:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 956:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
 957:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 958:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append an initializer_list of characters.
 959:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __l  The initializer_list of characters to be appended.
 960:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 961:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 962:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 963:/usr/include/c++/4.8.2/bits/basic_string.h ****       operator+=(initializer_list<_CharT> __l)
 964:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->append(__l.begin(), __l.size()); }
 965:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
 966:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 967:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 968:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a string to this string.
 969:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  The string to append.
 970:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 971:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 972:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 973:/usr/include/c++/4.8.2/bits/basic_string.h ****       append(const basic_string& __str);
 974:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 975:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 976:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a substring.
 977:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  The string to append.
 978:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of the first character of str to append.
 979:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  The number of characters to append.
 980:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 981:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range if @a __pos is not a valid index.
 982:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
 983:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function appends @a __n characters from @a __str
 984:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  starting at @a __pos to this string.  If @a __n is is larger
 985:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  than the number of available characters in @a __str, the
 986:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  remainder of @a __str is appended.
 987:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 988:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 989:/usr/include/c++/4.8.2/bits/basic_string.h ****       append(const basic_string& __str, size_type __pos, size_type __n);
 990:/usr/include/c++/4.8.2/bits/basic_string.h **** 
 991:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
 992:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a C substring.
 993:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to append.
 994:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  The number of characters to append.
 995:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
 996:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
 997:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
 998:/usr/include/c++/4.8.2/bits/basic_string.h ****       append(const _CharT* __s, size_type __n);
 999:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1000:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1001:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a C string.
1002:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to append.
1003:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1004:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1005:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1006:/usr/include/c++/4.8.2/bits/basic_string.h ****       append(const _CharT* __s)
1007:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1008:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1009:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->append(__s, traits_type::length(__s));
1010:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1011:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1012:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1013:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append multiple characters.
1014:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  The number of characters to append.
1015:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  The character to use.
1016:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1017:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1018:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Appends __n copies of __c to this string.
1019:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1020:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1021:/usr/include/c++/4.8.2/bits/basic_string.h ****       append(size_type __n, _CharT __c);
1022:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1023:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
1024:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1025:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append an initializer_list of characters.
1026:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __l  The initializer_list of characters to append.
1027:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1028:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1029:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1030:/usr/include/c++/4.8.2/bits/basic_string.h ****       append(initializer_list<_CharT> __l)
1031:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->append(__l.begin(), __l.size()); }
1032:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
1033:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1034:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1035:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a range of characters.
1036:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __first  Iterator referencing the first character to append.
1037:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __last  Iterator marking the end of the range.
1038:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1039:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1040:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Appends characters in the range [__first,__last) to this string.
1041:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1042:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InputIterator>
1043:/usr/include/c++/4.8.2/bits/basic_string.h ****         basic_string&
1044:/usr/include/c++/4.8.2/bits/basic_string.h ****         append(_InputIterator __first, _InputIterator __last)
1045:/usr/include/c++/4.8.2/bits/basic_string.h ****         { return this->replace(_M_iend(), _M_iend(), __first, __last); }
1046:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1047:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1048:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Append a single character.
1049:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to append.
1050:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1051:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
1052:/usr/include/c++/4.8.2/bits/basic_string.h ****       push_back(_CharT __c)
1053:/usr/include/c++/4.8.2/bits/basic_string.h ****       { 
1054:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const size_type __len = 1 + this->size();
1055:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__len > this->capacity() || _M_rep()->_M_is_shared())
1056:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  this->reserve(__len);
1057:/usr/include/c++/4.8.2/bits/basic_string.h **** 	traits_type::assign(_M_data()[this->size()], __c);
1058:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_rep()->_M_set_length_and_sharable(__len);
1059:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1060:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1061:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1062:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to contents of another string.
1063:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string to use.
1064:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1065:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1066:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1067:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(const basic_string& __str);
1068:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1069:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
1070:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1071:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to contents of another string.
1072:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param  __str  Source string to use.
1073:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1074:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1075:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function sets this string to the exact contents of @a __str.
1076:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __str is a valid, but unspecified string.
1077:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1078:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1079:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(basic_string&& __str)
1080:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1081:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->swap(__str);
1082:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return *this;
1083:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1084:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
1085:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1086:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1087:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to a substring of a string.
1088:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  The string to use.
1089:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of the first character of str.
1090:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to use.
1091:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1092:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range if @a pos is not a valid index.
1093:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1094:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function sets this string to the substring of @a __str
1095:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  consisting of @a __n characters at @a __pos.  If @a __n is
1096:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is larger than the number of available characters in @a
1097:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __str, the remainder of @a __str is used.
1098:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1099:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1100:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(const basic_string& __str, size_type __pos, size_type __n)
1101:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->assign(__str._M_data()
1102:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    + __str._M_check(__pos, "basic_string::assign"),
1103:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    __str._M_limit(__pos, __n)); }
1104:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1105:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1106:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to a C substring.
1107:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to use.
1108:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to use.
1109:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1110:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1111:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function sets the value of this string to the first @a __n
1112:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters of @a __s.  If @a __n is is larger than the number of
1113:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  available characters in @a __s, the remainder of @a __s is used.
1114:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1115:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1116:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(const _CharT* __s, size_type __n);
1117:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1118:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1119:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to contents of a C string.
1120:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to use.
1121:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1122:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1123:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function sets the value of this string to the value of @a __s.
1124:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The data is copied, so there is no dependence on @a __s once the
1125:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  function returns.
1126:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1127:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1128:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(const _CharT* __s)
1129:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1130:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1131:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->assign(__s, traits_type::length(__s));
1132:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1133:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1134:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1135:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to multiple characters.
1136:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Length of the resulting string.
1137:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  The character to use.
1138:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1139:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1140:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This function sets the value of this string to @a __n copies of
1141:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  character @a __c.
1142:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1143:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1144:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(size_type __n, _CharT __c)
1145:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_replace_aux(size_type(0), this->size(), __n, __c); }
1146:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1147:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1148:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to a range of characters.
1149:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __first  Iterator referencing the first character to append.
1150:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __last  Iterator marking the end of the range.
1151:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1152:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1153:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Sets value of string to characters in the range [__first,__last).
1154:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1155:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InputIterator>
1156:/usr/include/c++/4.8.2/bits/basic_string.h ****         basic_string&
1157:/usr/include/c++/4.8.2/bits/basic_string.h ****         assign(_InputIterator __first, _InputIterator __last)
1158:/usr/include/c++/4.8.2/bits/basic_string.h ****         { return this->replace(_M_ibegin(), _M_iend(), __first, __last); }
1159:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1160:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
1161:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1162:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Set value to an initializer_list of characters.
1163:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __l  The initializer_list of characters to assign.
1164:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1165:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1166:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1167:/usr/include/c++/4.8.2/bits/basic_string.h ****       assign(initializer_list<_CharT> __l)
1168:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->assign(__l.begin(), __l.size()); }
1169:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
1170:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1171:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1172:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert multiple characters.
1173:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __p  Iterator referencing location in string to insert at.
1174:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to insert
1175:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  The character to insert.
1176:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1177:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1178:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts @a __n copies of character @a __c starting at the
1179:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  position referenced by iterator @a __p.  If adding
1180:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters causes the length to exceed max_size(),
1181:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length_error is thrown.  The value of the string doesn't
1182:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1183:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1184:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
1185:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(iterator __p, size_type __n, _CharT __c)
1186:/usr/include/c++/4.8.2/bits/basic_string.h ****       {	this->replace(__p, __p, __n, __c);  }
1187:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1188:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1189:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert a range of characters.
1190:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __p  Iterator referencing location in string to insert at.
1191:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __beg  Start of range.
1192:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __end  End of range.
1193:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1194:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1195:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts characters in range [__beg,__end).  If adding
1196:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters causes the length to exceed max_size(),
1197:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length_error is thrown.  The value of the string doesn't
1198:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1199:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1200:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InputIterator>
1201:/usr/include/c++/4.8.2/bits/basic_string.h ****         void
1202:/usr/include/c++/4.8.2/bits/basic_string.h ****         insert(iterator __p, _InputIterator __beg, _InputIterator __end)
1203:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->replace(__p, __p, __beg, __end); }
1204:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1205:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
1206:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1207:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert an initializer_list of characters.
1208:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __p  Iterator referencing location in string to insert at.
1209:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __l  The initializer_list of characters to insert.
1210:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1211:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1212:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
1213:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(iterator __p, initializer_list<_CharT> __l)
1214:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1215:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(__p >= _M_ibegin() && __p <= _M_iend());
1216:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->insert(__p - _M_ibegin(), __l.begin(), __l.size());
1217:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1218:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
1219:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1220:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1221:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert value of a string.
1222:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos1  Iterator referencing location in string to insert at.
1223:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  The string to insert.
1224:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1225:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1226:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1227:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts value of @a __str starting at @a __pos1.  If adding
1228:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters causes the length to exceed max_size(),
1229:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length_error is thrown.  The value of the string doesn't
1230:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1231:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1232:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1233:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(size_type __pos1, const basic_string& __str)
1234:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->insert(__pos1, __str, size_type(0), __str.size()); }
1235:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1236:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1237:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert a substring.
1238:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos1  Iterator referencing location in string to insert at.
1239:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  The string to insert.
1240:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos2  Start of characters in str to insert.
1241:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to insert.
1242:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1243:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1244:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a pos1 > size() or
1245:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __pos2 > @a str.size().
1246:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1247:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting at @a pos1, insert @a __n character of @a __str
1248:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  beginning with @a __pos2.  If adding characters causes the
1249:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length to exceed max_size(), length_error is thrown.  If @a
1250:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __pos1 is beyond the end of this string or @a __pos2 is
1251:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  beyond the end of @a __str, out_of_range is thrown.  The
1252:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  value of the string doesn't change if an error is thrown.
1253:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1254:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1255:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(size_type __pos1, const basic_string& __str,
1256:/usr/include/c++/4.8.2/bits/basic_string.h **** 	     size_type __pos2, size_type __n)
1257:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->insert(__pos1, __str._M_data()
1258:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    + __str._M_check(__pos2, "basic_string::insert"),
1259:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    __str._M_limit(__pos2, __n)); }
1260:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1261:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1262:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert a C substring.
1263:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Iterator referencing location in string to insert at.
1264:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to insert.
1265:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  The number of characters to insert.
1266:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1267:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1268:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a __pos is beyond the end of this
1269:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.
1270:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1271:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts the first @a __n characters of @a __s starting at @a
1272:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __pos.  If adding characters causes the length to exceed
1273:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  max_size(), length_error is thrown.  If @a __pos is beyond
1274:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  end(), out_of_range is thrown.  The value of the string
1275:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  doesn't change if an error is thrown.
1276:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1277:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1278:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(size_type __pos, const _CharT* __s, size_type __n);
1279:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1280:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1281:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert a C string.
1282:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Iterator referencing location in string to insert at.
1283:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  The C string to insert.
1284:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1285:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1286:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a pos is beyond the end of this
1287:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.
1288:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1289:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts the first @a n characters of @a __s starting at @a __pos.  If
1290:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  adding characters causes the length to exceed max_size(),
1291:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length_error is thrown.  If @a __pos is beyond end(), out_of_range is
1292:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.  The value of the string doesn't change if an error is
1293:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.
1294:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1295:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1296:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(size_type __pos, const _CharT* __s)
1297:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1298:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1299:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->insert(__pos, __s, traits_type::length(__s));
1300:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1301:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1302:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1303:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert multiple characters.
1304:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index in string to insert at.
1305:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to insert
1306:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  The character to insert.
1307:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1308:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1309:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a __pos is beyond the end of this
1310:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.
1311:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1312:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts @a __n copies of character @a __c starting at index
1313:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __pos.  If adding characters causes the length to exceed
1314:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  max_size(), length_error is thrown.  If @a __pos > length(),
1315:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  out_of_range is thrown.  The value of the string doesn't
1316:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1317:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1318:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1319:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(size_type __pos, size_type __n, _CharT __c)
1320:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_replace_aux(_M_check(__pos, "basic_string::insert"),
1321:/usr/include/c++/4.8.2/bits/basic_string.h **** 			      size_type(0), __n, __c); }
1322:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1323:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1324:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Insert one character.
1325:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __p  Iterator referencing position in string to insert at.
1326:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  The character to insert.
1327:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Iterator referencing newly inserted char.
1328:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1329:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1330:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Inserts character @a __c at position referenced by @a __p.
1331:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If adding character causes the length to exceed max_size(),
1332:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length_error is thrown.  If @a __p is beyond end of string,
1333:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  out_of_range is thrown.  The value of the string doesn't
1334:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1335:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1336:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
1337:/usr/include/c++/4.8.2/bits/basic_string.h ****       insert(iterator __p, _CharT __c)
1338:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1339:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(__p >= _M_ibegin() && __p <= _M_iend());
1340:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const size_type __pos = __p - _M_ibegin();
1341:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_replace_aux(__pos, size_type(0), size_type(1), __c);
1342:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_rep()->_M_set_leaked();
1343:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return iterator(_M_data() + __pos);
1344:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1345:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1346:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1347:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Remove characters.
1348:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character to remove (default 0).
1349:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to remove (default remainder).
1350:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1351:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a pos is beyond the end of this
1352:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.
1353:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1354:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes @a __n characters from this string starting at @a
1355:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __pos.  The length of the string is reduced by @a __n.  If
1356:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  there are < @a __n characters to remove, the remainder of
1357:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the string is truncated.  If @a __p is beyond end of string,
1358:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  out_of_range is thrown.  The value of the string doesn't
1359:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1360:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1361:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1362:/usr/include/c++/4.8.2/bits/basic_string.h ****       erase(size_type __pos = 0, size_type __n = npos)
1363:/usr/include/c++/4.8.2/bits/basic_string.h ****       { 
1364:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_mutate(_M_check(__pos, "basic_string::erase"),
1365:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_limit(__pos, __n), size_type(0));
1366:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return *this;
1367:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1368:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1369:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1370:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Remove one character.
1371:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __position  Iterator referencing the character to remove.
1372:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  iterator referencing same location after removal.
1373:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1374:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the character at @a __position from this string. The value
1375:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  of the string doesn't change if an error is thrown.
1376:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1377:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
1378:/usr/include/c++/4.8.2/bits/basic_string.h ****       erase(iterator __position)
1379:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1380:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(__position >= _M_ibegin()
1381:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __position < _M_iend());
1382:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const size_type __pos = __position - _M_ibegin();
1383:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_mutate(__pos, size_type(1), size_type(0));
1384:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_rep()->_M_set_leaked();
1385:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return iterator(_M_data() + __pos);
1386:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1387:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1388:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1389:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Remove a range of characters.
1390:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __first  Iterator referencing the first character to remove.
1391:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __last  Iterator referencing the end of the range.
1392:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Iterator referencing location of first after removal.
1393:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1394:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [first,last) from this string.
1395:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The value of the string doesn't change if an error is thrown.
1396:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1397:/usr/include/c++/4.8.2/bits/basic_string.h ****       iterator
1398:/usr/include/c++/4.8.2/bits/basic_string.h ****       erase(iterator __first, iterator __last);
1399:/usr/include/c++/4.8.2/bits/basic_string.h ****  
1400:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
1401:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1402:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Remove the last character.
1403:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1404:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The string must be non-empty.
1405:/usr/include/c++/4.8.2/bits/basic_string.h ****        */
1406:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
1407:/usr/include/c++/4.8.2/bits/basic_string.h ****       pop_back()
1408:/usr/include/c++/4.8.2/bits/basic_string.h ****       { erase(size()-1, 1); }
1409:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
1410:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1411:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1412:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace characters with value from another string.
1413:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character to replace.
1414:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to be replaced.
1415:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to insert.
1416:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1417:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a pos is beyond the end of this
1418:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.
1419:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1420:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1421:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__pos,__pos+__n) from
1422:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  this string.  In place, the value of @a __str is inserted.
1423:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If @a __pos is beyond end of string, out_of_range is thrown.
1424:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If the length of the result exceeds max_size(), length_error
1425:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is thrown.  The value of the string doesn't change if an
1426:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  error is thrown.
1427:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1428:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1429:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(size_type __pos, size_type __n, const basic_string& __str)
1430:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->replace(__pos, __n, __str._M_data(), __str.size()); }
1431:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1432:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1433:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace characters with value from another string.
1434:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos1  Index of first character to replace.
1435:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters to be replaced.
1436:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to insert.
1437:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos2  Index of first character of str to use.
1438:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n2  Number of characters from str to use.
1439:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1440:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a __pos1 > size() or @a __pos2 >
1441:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __str.size().
1442:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1443:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1444:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__pos1,__pos1 + n) from this
1445:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.  In place, the value of @a __str is inserted.  If @a __pos is
1446:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  beyond end of string, out_of_range is thrown.  If the length of the
1447:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  result exceeds max_size(), length_error is thrown.  The value of the
1448:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string doesn't change if an error is thrown.
1449:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1450:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1451:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(size_type __pos1, size_type __n1, const basic_string& __str,
1452:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      size_type __pos2, size_type __n2)
1453:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->replace(__pos1, __n1, __str._M_data()
1454:/usr/include/c++/4.8.2/bits/basic_string.h **** 			     + __str._M_check(__pos2, "basic_string::replace"),
1455:/usr/include/c++/4.8.2/bits/basic_string.h **** 			     __str._M_limit(__pos2, __n2)); }
1456:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1457:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1458:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace characters with value of a C substring.
1459:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character to replace.
1460:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters to be replaced.
1461:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to insert.
1462:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n2  Number of characters from @a s to use.
1463:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1464:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a pos1 > size().
1465:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1466:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1467:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__pos,__pos + __n1)
1468:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  from this string.  In place, the first @a __n2 characters of
1469:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __s are inserted, or all of @a __s if @a __n2 is too large.  If
1470:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __pos is beyond end of string, out_of_range is thrown.  If
1471:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the length of result exceeds max_size(), length_error is
1472:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.  The value of the string doesn't change if an error
1473:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is thrown.
1474:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1475:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1476:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(size_type __pos, size_type __n1, const _CharT* __s,
1477:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      size_type __n2);
1478:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1479:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1480:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace characters with value of a C string.
1481:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character to replace.
1482:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters to be replaced.
1483:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to insert.
1484:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1485:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a pos > size().
1486:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1487:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1488:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__pos,__pos + __n1)
1489:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  from this string.  In place, the characters of @a __s are
1490:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  inserted.  If @a __pos is beyond end of string, out_of_range
1491:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is thrown.  If the length of result exceeds max_size(),
1492:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length_error is thrown.  The value of the string doesn't
1493:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  change if an error is thrown.
1494:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1495:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1496:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(size_type __pos, size_type __n1, const _CharT* __s)
1497:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1498:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1499:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__pos, __n1, __s, traits_type::length(__s));
1500:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1501:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1502:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1503:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace characters with multiple characters.
1504:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character to replace.
1505:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters to be replaced.
1506:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n2  Number of characters to insert.
1507:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to insert.
1508:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1509:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If @a __pos > size().
1510:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1511:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1512:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [pos,pos + n1) from this
1513:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string.  In place, @a __n2 copies of @a __c are inserted.
1514:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If @a __pos is beyond end of string, out_of_range is thrown.
1515:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If the length of result exceeds max_size(), length_error is
1516:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.  The value of the string doesn't change if an error
1517:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is thrown.
1518:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1519:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1520:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(size_type __pos, size_type __n1, size_type __n2, _CharT __c)
1521:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_replace_aux(_M_check(__pos, "basic_string::replace"),
1522:/usr/include/c++/4.8.2/bits/basic_string.h **** 			      _M_limit(__pos, __n1), __n2, __c); }
1523:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1524:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1525:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace range of characters with string.
1526:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i1  Iterator referencing start of range to replace.
1527:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i2  Iterator referencing end of range to replace.
1528:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String value to insert.
1529:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1530:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1531:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1532:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__i1,__i2).  In place,
1533:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the value of @a __str is inserted.  If the length of result
1534:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  exceeds max_size(), length_error is thrown.  The value of
1535:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the string doesn't change if an error is thrown.
1536:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1537:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1538:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2, const basic_string& __str)
1539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->replace(__i1, __i2, __str._M_data(), __str.size()); }
1540:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1541:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1542:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace range of characters with C substring.
1543:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i1  Iterator referencing start of range to replace.
1544:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i2  Iterator referencing end of range to replace.
1545:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string value to insert.
1546:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from s to insert.
1547:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1548:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1549:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1550:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__i1,__i2).  In place,
1551:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the first @a __n characters of @a __s are inserted.  If the
1552:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length of result exceeds max_size(), length_error is thrown.
1553:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The value of the string doesn't change if an error is
1554:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.
1555:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1556:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1557:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2, const _CharT* __s, size_type __n)
1558:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1559:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1560:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __i2 <= _M_iend());
1561:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__i1 - _M_ibegin(), __i2 - __i1, __s, __n);
1562:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1563:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1564:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1565:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace range of characters with C string.
1566:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i1  Iterator referencing start of range to replace.
1567:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i2  Iterator referencing end of range to replace.
1568:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string value to insert.
1569:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1570:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1571:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1572:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__i1,__i2).  In place,
1573:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the characters of @a __s are inserted.  If the length of
1574:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  result exceeds max_size(), length_error is thrown.  The
1575:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  value of the string doesn't change if an error is thrown.
1576:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1577:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1578:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2, const _CharT* __s)
1579:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1580:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1581:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__i1, __i2, __s, traits_type::length(__s));
1582:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1583:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1584:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1585:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace range of characters with multiple characters
1586:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i1  Iterator referencing start of range to replace.
1587:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i2  Iterator referencing end of range to replace.
1588:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to insert.
1589:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to insert.
1590:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1591:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1592:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1593:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__i1,__i2).  In place,
1594:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __n copies of @a __c are inserted.  If the length of
1595:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  result exceeds max_size(), length_error is thrown.  The
1596:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  value of the string doesn't change if an error is thrown.
1597:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1598:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1599:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2, size_type __n, _CharT __c)
1600:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1601:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1602:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __i2 <= _M_iend());
1603:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return _M_replace_aux(__i1 - _M_ibegin(), __i2 - __i1, __n, __c);
1604:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1605:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1606:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1607:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace range of characters with range.
1608:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i1  Iterator referencing start of range to replace.
1609:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i2  Iterator referencing end of range to replace.
1610:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __k1  Iterator referencing start of range to insert.
1611:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __k2  Iterator referencing end of range to insert.
1612:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1613:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1614:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1615:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__i1,__i2).  In place,
1616:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters in the range [__k1,__k2) are inserted.  If the
1617:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length of result exceeds max_size(), length_error is thrown.
1618:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The value of the string doesn't change if an error is
1619:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.
1620:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1621:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InputIterator>
1622:/usr/include/c++/4.8.2/bits/basic_string.h ****         basic_string&
1623:/usr/include/c++/4.8.2/bits/basic_string.h ****         replace(iterator __i1, iterator __i2,
1624:/usr/include/c++/4.8.2/bits/basic_string.h **** 		_InputIterator __k1, _InputIterator __k2)
1625:/usr/include/c++/4.8.2/bits/basic_string.h ****         {
1626:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  _GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1627:/usr/include/c++/4.8.2/bits/basic_string.h **** 				   && __i2 <= _M_iend());
1628:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  __glibcxx_requires_valid_range(__k1, __k2);
1629:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  typedef typename std::__is_integer<_InputIterator>::__type _Integral;
1630:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return _M_replace_dispatch(__i1, __i2, __k1, __k2, _Integral());
1631:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}
1632:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1633:/usr/include/c++/4.8.2/bits/basic_string.h ****       // Specializations for the common case of pointer and iterator:
1634:/usr/include/c++/4.8.2/bits/basic_string.h ****       // useful to avoid the overhead of temporary buffering in _M_replace.
1635:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1636:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2, _CharT* __k1, _CharT* __k2)
1637:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1638:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1639:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __i2 <= _M_iend());
1640:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_valid_range(__k1, __k2);
1641:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
1642:/usr/include/c++/4.8.2/bits/basic_string.h **** 			     __k1, __k2 - __k1);
1643:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1644:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1645:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1646:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2,
1647:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const _CharT* __k1, const _CharT* __k2)
1648:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1649:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1650:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __i2 <= _M_iend());
1651:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_valid_range(__k1, __k2);
1652:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
1653:/usr/include/c++/4.8.2/bits/basic_string.h **** 			     __k1, __k2 - __k1);
1654:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1655:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1656:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1657:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2, iterator __k1, iterator __k2)
1658:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1659:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1660:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __i2 <= _M_iend());
1661:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_valid_range(__k1, __k2);
1662:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
1663:/usr/include/c++/4.8.2/bits/basic_string.h **** 			     __k1.base(), __k2 - __k1);
1664:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1665:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1666:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1667:/usr/include/c++/4.8.2/bits/basic_string.h ****       replace(iterator __i1, iterator __i2,
1668:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const_iterator __k1, const_iterator __k2)
1669:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1670:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_DEBUG_PEDASSERT(_M_ibegin() <= __i1 && __i1 <= __i2
1671:/usr/include/c++/4.8.2/bits/basic_string.h **** 				 && __i2 <= _M_iend());
1672:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_valid_range(__k1, __k2);
1673:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
1674:/usr/include/c++/4.8.2/bits/basic_string.h **** 			     __k1.base(), __k2 - __k1);
1675:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1676:/usr/include/c++/4.8.2/bits/basic_string.h ****       
1677:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
1678:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1679:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Replace range of characters with initializer_list.
1680:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i1  Iterator referencing start of range to replace.
1681:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __i2  Iterator referencing end of range to replace.
1682:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __l  The initializer_list of characters to insert.
1683:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Reference to this string.
1684:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::length_error  If new length exceeds @c max_size().
1685:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1686:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Removes the characters in the range [__i1,__i2).  In place,
1687:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters in the range [__k1,__k2) are inserted.  If the
1688:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length of result exceeds max_size(), length_error is thrown.
1689:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  The value of the string doesn't change if an error is
1690:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  thrown.
1691:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1692:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string& replace(iterator __i1, iterator __i2,
1693:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    initializer_list<_CharT> __l)
1694:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->replace(__i1, __i2, __l.begin(), __l.end()); }
1695:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif // C++11
1696:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1697:/usr/include/c++/4.8.2/bits/basic_string.h ****     private:
1698:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _Integer>
1699:/usr/include/c++/4.8.2/bits/basic_string.h **** 	basic_string&
1700:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_replace_dispatch(iterator __i1, iterator __i2, _Integer __n,
1701:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    _Integer __val, __true_type)
1702:/usr/include/c++/4.8.2/bits/basic_string.h ****         { return _M_replace_aux(__i1 - _M_ibegin(), __i2 - __i1, __n, __val); }
1703:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1704:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InputIterator>
1705:/usr/include/c++/4.8.2/bits/basic_string.h **** 	basic_string&
1706:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_M_replace_dispatch(iterator __i1, iterator __i2, _InputIterator __k1,
1707:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    _InputIterator __k2, __false_type);
1708:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1709:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1710:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_replace_aux(size_type __pos1, size_type __n1, size_type __n2,
1711:/usr/include/c++/4.8.2/bits/basic_string.h **** 		     _CharT __c);
1712:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1713:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string&
1714:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_replace_safe(size_type __pos1, size_type __n1, const _CharT* __s,
1715:/usr/include/c++/4.8.2/bits/basic_string.h **** 		      size_type __n2);
1716:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1717:/usr/include/c++/4.8.2/bits/basic_string.h ****       // _S_construct_aux is used to implement the 21.3.1 para 15 which
1718:/usr/include/c++/4.8.2/bits/basic_string.h ****       // requires special behaviour if _InIter is an integral type
1719:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InIterator>
1720:/usr/include/c++/4.8.2/bits/basic_string.h ****         static _CharT*
1721:/usr/include/c++/4.8.2/bits/basic_string.h ****         _S_construct_aux(_InIterator __beg, _InIterator __end,
1722:/usr/include/c++/4.8.2/bits/basic_string.h **** 			 const _Alloc& __a, __false_type)
1723:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{
1724:/usr/include/c++/4.8.2/bits/basic_string.h ****           typedef typename iterator_traits<_InIterator>::iterator_category _Tag;
1725:/usr/include/c++/4.8.2/bits/basic_string.h ****           return _S_construct(__beg, __end, __a, _Tag());
1726:/usr/include/c++/4.8.2/bits/basic_string.h **** 	}
1727:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1728:/usr/include/c++/4.8.2/bits/basic_string.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
1729:/usr/include/c++/4.8.2/bits/basic_string.h ****       // 438. Ambiguity in the "do the right thing" clause
1730:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _Integer>
1731:/usr/include/c++/4.8.2/bits/basic_string.h ****         static _CharT*
1732:/usr/include/c++/4.8.2/bits/basic_string.h ****         _S_construct_aux(_Integer __beg, _Integer __end,
1733:/usr/include/c++/4.8.2/bits/basic_string.h **** 			 const _Alloc& __a, __true_type)
1734:/usr/include/c++/4.8.2/bits/basic_string.h ****         { return _S_construct_aux_2(static_cast<size_type>(__beg),
1735:/usr/include/c++/4.8.2/bits/basic_string.h **** 				    __end, __a); }
1736:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1737:/usr/include/c++/4.8.2/bits/basic_string.h ****       static _CharT*
1738:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_construct_aux_2(size_type __req, _CharT __c, const _Alloc& __a)
1739:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _S_construct(__req, __c, __a); }
1740:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1741:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InIterator>
1742:/usr/include/c++/4.8.2/bits/basic_string.h ****         static _CharT*
1743:/usr/include/c++/4.8.2/bits/basic_string.h ****         _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a)
1744:/usr/include/c++/4.8.2/bits/basic_string.h **** 	{
1745:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  typedef typename std::__is_integer<_InIterator>::__type _Integral;
1746:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  return _S_construct_aux(__beg, __end, __a, _Integral());
1747:/usr/include/c++/4.8.2/bits/basic_string.h ****         }
1748:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1749:/usr/include/c++/4.8.2/bits/basic_string.h ****       // For Input Iterators, used in istreambuf_iterators, etc.
1750:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _InIterator>
1751:/usr/include/c++/4.8.2/bits/basic_string.h ****         static _CharT*
1752:/usr/include/c++/4.8.2/bits/basic_string.h ****          _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
1753:/usr/include/c++/4.8.2/bits/basic_string.h **** 		      input_iterator_tag);
1754:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1755:/usr/include/c++/4.8.2/bits/basic_string.h ****       // For forward_iterators up to random_access_iterators, used for
1756:/usr/include/c++/4.8.2/bits/basic_string.h ****       // string::iterator, _CharT*, etc.
1757:/usr/include/c++/4.8.2/bits/basic_string.h ****       template<class _FwdIterator>
1758:/usr/include/c++/4.8.2/bits/basic_string.h ****         static _CharT*
1759:/usr/include/c++/4.8.2/bits/basic_string.h ****         _S_construct(_FwdIterator __beg, _FwdIterator __end, const _Alloc& __a,
1760:/usr/include/c++/4.8.2/bits/basic_string.h **** 		     forward_iterator_tag);
1761:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1762:/usr/include/c++/4.8.2/bits/basic_string.h ****       static _CharT*
1763:/usr/include/c++/4.8.2/bits/basic_string.h ****       _S_construct(size_type __req, _CharT __c, const _Alloc& __a);
1764:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1765:/usr/include/c++/4.8.2/bits/basic_string.h ****     public:
1766:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1767:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1768:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Copy substring into C string.
1769:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to copy value into.
1770:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters to copy.
1771:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character to copy.
1772:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Number of characters actually copied
1773:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If __pos > size().
1774:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1775:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Copies up to @a __n characters starting at @a __pos into the
1776:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  C string @a __s.  If @a __pos is %greater than size(),
1777:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  out_of_range is thrown.
1778:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1779:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1780:/usr/include/c++/4.8.2/bits/basic_string.h ****       copy(_CharT* __s, size_type __n, size_type __pos = 0) const;
1781:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1782:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1783:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Swap contents with another string.
1784:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  String to swap with.
1785:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1786:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Exchanges the contents of this string with that of @a __s in constant
1787:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  time.
1788:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1789:/usr/include/c++/4.8.2/bits/basic_string.h ****       void
1790:/usr/include/c++/4.8.2/bits/basic_string.h ****       swap(basic_string& __s);
1791:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1792:/usr/include/c++/4.8.2/bits/basic_string.h ****       // String operations:
1793:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1794:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Return const pointer to null-terminated contents.
1795:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1796:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This is a handle to internal data.  Do not modify or dire things may
1797:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  happen.
1798:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1799:/usr/include/c++/4.8.2/bits/basic_string.h ****       const _CharT*
1800:/usr/include/c++/4.8.2/bits/basic_string.h ****       c_str() const _GLIBCXX_NOEXCEPT
1801:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_data(); }
1802:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1803:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1804:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Return const pointer to contents.
1805:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1806:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  This is a handle to internal data.  Do not modify or dire things may
1807:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  happen.
1808:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1809:/usr/include/c++/4.8.2/bits/basic_string.h ****       const _CharT*
1810:/usr/include/c++/4.8.2/bits/basic_string.h ****       data() const _GLIBCXX_NOEXCEPT
1811:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_data(); }
1812:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1813:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1814:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Return copy of allocator used to construct this string.
1815:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1816:/usr/include/c++/4.8.2/bits/basic_string.h ****       allocator_type
1817:/usr/include/c++/4.8.2/bits/basic_string.h ****       get_allocator() const _GLIBCXX_NOEXCEPT
1818:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return _M_dataplus; }
1819:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1820:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1821:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a C substring.
1822:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to locate.
1823:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from.
1824:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from @a s to search for.
1825:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of start of first occurrence.
1826:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1827:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for the first @a
1828:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __n characters in @a __s within this string.  If found,
1829:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns the index where it begins.  If not found, returns
1830:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  npos.
1831:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1832:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1833:/usr/include/c++/4.8.2/bits/basic_string.h ****       find(const _CharT* __s, size_type __pos, size_type __n) const;
1834:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1835:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1836:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a string.
1837:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to locate.
1838:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
1839:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of start of first occurrence.
1840:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1841:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for value of @a __str within
1842:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  this string.  If found, returns the index where it begins.  If not
1843:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found, returns npos.
1844:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1845:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1846:/usr/include/c++/4.8.2/bits/basic_string.h ****       find(const basic_string& __str, size_type __pos = 0) const
1847:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT
1848:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->find(__str.data(), __pos, __str.size()); }
1849:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1850:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1851:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a C string.
1852:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to locate.
1853:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
1854:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of start of first occurrence.
1855:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1856:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for the value of @a
1857:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __s within this string.  If found, returns the index where
1858:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  it begins.  If not found, returns npos.
1859:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1860:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1861:/usr/include/c++/4.8.2/bits/basic_string.h ****       find(const _CharT* __s, size_type __pos = 0) const
1862:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1863:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1864:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->find(__s, __pos, traits_type::length(__s));
1865:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1866:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1867:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1868:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character.
1869:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to locate.
1870:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
1871:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
1872:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1873:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for @a __c within
1874:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  this string.  If found, returns the index where it was
1875:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found.  If not found, returns npos.
1876:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1877:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1878:/usr/include/c++/4.8.2/bits/basic_string.h ****       find(_CharT __c, size_type __pos = 0) const _GLIBCXX_NOEXCEPT;
1879:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1880:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1881:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a string.
1882:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to locate.
1883:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
1884:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of start of last occurrence.
1885:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1886:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for value of @a
1887:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __str within this string.  If found, returns the index where
1888:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  it begins.  If not found, returns npos.
1889:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1890:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1891:/usr/include/c++/4.8.2/bits/basic_string.h ****       rfind(const basic_string& __str, size_type __pos = npos) const
1892:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT
1893:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->rfind(__str.data(), __pos, __str.size()); }
1894:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1895:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1896:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a C substring.
1897:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to locate.
1898:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from.
1899:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from s to search for.
1900:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of start of last occurrence.
1901:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1902:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for the first @a
1903:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __n characters in @a __s within this string.  If found,
1904:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns the index where it begins.  If not found, returns
1905:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  npos.
1906:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1907:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1908:/usr/include/c++/4.8.2/bits/basic_string.h ****       rfind(const _CharT* __s, size_type __pos, size_type __n) const;
1909:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1910:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1911:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a C string.
1912:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to locate.
1913:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to start search at (default end).
1914:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of start of  last occurrence.
1915:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1916:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for the value of
1917:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __s within this string.  If found, returns the index
1918:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  where it begins.  If not found, returns npos.
1919:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1920:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1921:/usr/include/c++/4.8.2/bits/basic_string.h ****       rfind(const _CharT* __s, size_type __pos = npos) const
1922:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1923:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1924:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->rfind(__s, __pos, traits_type::length(__s));
1925:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1926:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1927:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1928:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character.
1929:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to locate.
1930:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
1931:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
1932:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1933:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for @a __c within
1934:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  this string.  If found, returns the index where it was
1935:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found.  If not found, returns npos.
1936:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1937:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1938:/usr/include/c++/4.8.2/bits/basic_string.h ****       rfind(_CharT __c, size_type __pos = npos) const _GLIBCXX_NOEXCEPT;
1939:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1940:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1941:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character of string.
1942:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String containing characters to locate.
1943:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
1944:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
1945:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1946:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for one of the
1947:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters of @a __str within this string.  If found,
1948:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns the index where it was found.  If not found, returns
1949:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  npos.
1950:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1951:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1952:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_of(const basic_string& __str, size_type __pos = 0) const
1953:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT
1954:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->find_first_of(__str.data(), __pos, __str.size()); }
1955:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1956:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1957:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character of C substring.
1958:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  String containing characters to locate.
1959:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from.
1960:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from s to search for.
1961:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
1962:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1963:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for one of the
1964:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  first @a __n characters of @a __s within this string.  If
1965:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found, returns the index where it was found.  If not found,
1966:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns npos.
1967:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1968:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1969:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_of(const _CharT* __s, size_type __pos, size_type __n) const;
1970:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1971:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1972:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character of C string.
1973:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  String containing characters to locate.
1974:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
1975:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
1976:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1977:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for one of the
1978:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters of @a __s within this string.  If found, returns
1979:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the index where it was found.  If not found, returns npos.
1980:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
1981:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
1982:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_of(const _CharT* __s, size_type __pos = 0) const
1983:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
1984:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
1985:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->find_first_of(__s, __pos, traits_type::length(__s));
1986:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
1987:/usr/include/c++/4.8.2/bits/basic_string.h **** 
1988:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
1989:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character.
1990:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to locate.
1991:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
1992:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
1993:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1994:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for the character
1995:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __c within this string.  If found, returns the index
1996:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  where it was found.  If not found, returns npos.
1997:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
1998:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Note: equivalent to find(__c, __pos).
1999:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2000:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2001:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_of(_CharT __c, size_type __pos = 0) const _GLIBCXX_NOEXCEPT
2002:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->find(__c, __pos); }
2003:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2004:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2005:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character of string.
2006:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String containing characters to locate.
2007:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
2008:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2009:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2010:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for one of the
2011:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters of @a __str within this string.  If found,
2012:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns the index where it was found.  If not found, returns
2013:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  npos.
2014:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2015:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2016:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_of(const basic_string& __str, size_type __pos = npos) const
2017:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT
2018:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->find_last_of(__str.data(), __pos, __str.size()); }
2019:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2020:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2021:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character of C substring.
2022:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string containing characters to locate.
2023:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from.
2024:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from s to search for.
2025:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2026:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2027:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for one of the
2028:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  first @a __n characters of @a __s within this string.  If
2029:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found, returns the index where it was found.  If not found,
2030:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns npos.
2031:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2032:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2033:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_of(const _CharT* __s, size_type __pos, size_type __n) const;
2034:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2035:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2036:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character of C string.
2037:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string containing characters to locate.
2038:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
2039:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2040:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2041:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for one of the
2042:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters of @a __s within this string.  If found, returns
2043:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the index where it was found.  If not found, returns npos.
2044:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2045:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2046:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_of(const _CharT* __s, size_type __pos = npos) const
2047:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
2048:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
2049:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->find_last_of(__s, __pos, traits_type::length(__s));
2050:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
2051:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2052:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2053:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character.
2054:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to locate.
2055:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
2056:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2057:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2058:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for @a __c within
2059:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  this string.  If found, returns the index where it was
2060:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found.  If not found, returns npos.
2061:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2062:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Note: equivalent to rfind(__c, __pos).
2063:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2064:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2065:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_of(_CharT __c, size_type __pos = npos) const _GLIBCXX_NOEXCEPT
2066:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->rfind(__c, __pos); }
2067:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2068:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2069:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character not in string.
2070:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String containing characters to avoid.
2071:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
2072:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
2073:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2074:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for a character not contained
2075:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  in @a __str within this string.  If found, returns the index where it
2076:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  was found.  If not found, returns npos.
2077:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2078:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2079:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_not_of(const basic_string& __str, size_type __pos = 0) const
2080:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT
2081:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->find_first_not_of(__str.data(), __pos, __str.size()); }
2082:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2083:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2084:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character not in C substring.
2085:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string containing characters to avoid.
2086:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from.
2087:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from __s to consider.
2088:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
2089:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2090:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for a character not
2091:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  contained in the first @a __n characters of @a __s within
2092:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  this string.  If found, returns the index where it was
2093:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found.  If not found, returns npos.
2094:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2095:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2096:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_not_of(const _CharT* __s, size_type __pos,
2097:/usr/include/c++/4.8.2/bits/basic_string.h **** 			size_type __n) const;
2098:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2099:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2100:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a character not in C string.
2101:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string containing characters to avoid.
2102:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
2103:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
2104:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2105:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for a character not
2106:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  contained in @a __s within this string.  If found, returns
2107:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the index where it was found.  If not found, returns npos.
2108:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2109:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2110:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_not_of(const _CharT* __s, size_type __pos = 0) const
2111:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
2112:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
2113:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->find_first_not_of(__s, __pos, traits_type::length(__s));
2114:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
2115:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2116:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2117:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find position of a different character.
2118:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to avoid.
2119:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search from (default 0).
2120:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of first occurrence.
2121:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2122:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches forward for a character
2123:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  other than @a __c within this string.  If found, returns the
2124:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  index where it was found.  If not found, returns npos.
2125:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2126:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2127:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_first_not_of(_CharT __c, size_type __pos = 0) const
2128:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT;
2129:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2130:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2131:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character not in string.
2132:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String containing characters to avoid.
2133:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
2134:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2135:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2136:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for a character
2137:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  not contained in @a __str within this string.  If found,
2138:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns the index where it was found.  If not found, returns
2139:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  npos.
2140:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2141:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2142:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_not_of(const basic_string& __str, size_type __pos = npos) const
2143:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT
2144:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->find_last_not_of(__str.data(), __pos, __str.size()); }
2145:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2146:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2147:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character not in C substring.
2148:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string containing characters to avoid.
2149:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from.
2150:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters from s to consider.
2151:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2152:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2153:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for a character not
2154:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  contained in the first @a __n characters of @a __s within this string.
2155:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If found, returns the index where it was found.  If not found,
2156:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns npos.
2157:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2158:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2159:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_not_of(const _CharT* __s, size_type __pos,
2160:/usr/include/c++/4.8.2/bits/basic_string.h **** 		       size_type __n) const;
2161:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2162:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a character not in C string.
2163:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string containing characters to avoid.
2164:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
2165:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2166:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2167:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for a character
2168:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  not contained in @a __s within this string.  If found,
2169:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  returns the index where it was found.  If not found, returns
2170:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  npos.
2171:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2172:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2173:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_not_of(const _CharT* __s, size_type __pos = npos) const
2174:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
2175:/usr/include/c++/4.8.2/bits/basic_string.h **** 	__glibcxx_requires_string(__s);
2176:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return this->find_last_not_of(__s, __pos, traits_type::length(__s));
2177:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
2178:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2179:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2180:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Find last position of a different character.
2181:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __c  Character to avoid.
2182:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of character to search back from (default end).
2183:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Index of last occurrence.
2184:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2185:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Starting from @a __pos, searches backward for a character other than
2186:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __c within this string.  If found, returns the index where it was
2187:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  found.  If not found, returns npos.
2188:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2189:/usr/include/c++/4.8.2/bits/basic_string.h ****       size_type
2190:/usr/include/c++/4.8.2/bits/basic_string.h ****       find_last_not_of(_CharT __c, size_type __pos = npos) const
2191:/usr/include/c++/4.8.2/bits/basic_string.h **** 	_GLIBCXX_NOEXCEPT;
2192:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2193:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2194:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Get a substring.
2195:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character (default 0).
2196:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters in substring (default remainder).
2197:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  The new string.
2198:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @throw  std::out_of_range  If __pos > size().
2199:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2200:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Construct and return a new string using the @a __n
2201:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters starting at @a __pos.  If the string is too
2202:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  short, use the remainder of the characters.  If @a __pos is
2203:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  beyond the end of the string, out_of_range is thrown.
2204:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2205:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string
2206:/usr/include/c++/4.8.2/bits/basic_string.h ****       substr(size_type __pos = 0, size_type __n = npos) const
2207:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return basic_string(*this,
2208:/usr/include/c++/4.8.2/bits/basic_string.h **** 			    _M_check(__pos, "basic_string::substr"), __n); }
2209:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2210:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2211:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Compare to a string.
2212:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to compare against.
2213:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Integer < 0, 0, or > 0.
2214:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2215:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns an integer < 0 if this string is ordered before @a
2216:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __str, 0 if their values are equivalent, or > 0 if this
2217:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  string is ordered after @a __str.  Determines the effective
2218:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  length rlen of the strings to compare as the smallest of
2219:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  size() and str.size().  The function then compares the two
2220:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  strings by calling traits::compare(data(), str.data(),rlen).
2221:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If the result of the comparison is nonzero returns it,
2222:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  otherwise the shorter one is ordered first.
2223:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2224:/usr/include/c++/4.8.2/bits/basic_string.h ****       int
2225:/usr/include/c++/4.8.2/bits/basic_string.h ****       compare(const basic_string& __str) const
2226:/usr/include/c++/4.8.2/bits/basic_string.h ****       {
2227:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const size_type __size = this->size();
2228:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const size_type __osize = __str.size();
2229:/usr/include/c++/4.8.2/bits/basic_string.h **** 	const size_type __len = std::min(__size, __osize);
2230:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2231:/usr/include/c++/4.8.2/bits/basic_string.h **** 	int __r = traits_type::compare(_M_data(), __str.data(), __len);
2232:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (!__r)
2233:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  __r = _S_compare(__size, __osize);
2234:/usr/include/c++/4.8.2/bits/basic_string.h **** 	return __r;
2235:/usr/include/c++/4.8.2/bits/basic_string.h ****       }
2236:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2237:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2238:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Compare substring to a string.
2239:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character of substring.
2240:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n  Number of characters in substring.
2241:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to compare against.
2242:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Integer < 0, 0, or > 0.
2243:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2244:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Form the substring of this string from the @a __n characters
2245:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  starting at @a __pos.  Returns an integer < 0 if the
2246:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  substring is ordered before @a __str, 0 if their values are
2247:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  equivalent, or > 0 if the substring is ordered after @a
2248:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __str.  Determines the effective length rlen of the strings
2249:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  to compare as the smallest of the length of the substring
2250:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  and @a __str.size().  The function then compares the two
2251:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  strings by calling
2252:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  traits::compare(substring.data(),str.data(),rlen).  If the
2253:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  result of the comparison is nonzero returns it, otherwise
2254:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the shorter one is ordered first.
2255:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2256:/usr/include/c++/4.8.2/bits/basic_string.h ****       int
2257:/usr/include/c++/4.8.2/bits/basic_string.h ****       compare(size_type __pos, size_type __n, const basic_string& __str) const;
2258:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2259:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2260:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Compare substring to a substring.
2261:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos1  Index of first character of substring.
2262:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters in substring.
2263:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __str  String to compare against.
2264:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos2  Index of first character of substring of str.
2265:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n2  Number of characters in substring of str.
2266:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Integer < 0, 0, or > 0.
2267:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2268:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Form the substring of this string from the @a __n1
2269:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters starting at @a __pos1.  Form the substring of @a
2270:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __str from the @a __n2 characters starting at @a __pos2.
2271:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns an integer < 0 if this substring is ordered before
2272:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the substring of @a __str, 0 if their values are equivalent,
2273:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  or > 0 if this substring is ordered after the substring of
2274:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __str.  Determines the effective length rlen of the
2275:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  strings to compare as the smallest of the lengths of the
2276:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  substrings.  The function then compares the two strings by
2277:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  calling
2278:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  traits::compare(substring.data(),str.substr(pos2,n2).data(),rlen).
2279:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  If the result of the comparison is nonzero returns it,
2280:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  otherwise the shorter one is ordered first.
2281:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2282:/usr/include/c++/4.8.2/bits/basic_string.h ****       int
2283:/usr/include/c++/4.8.2/bits/basic_string.h ****       compare(size_type __pos1, size_type __n1, const basic_string& __str,
2284:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      size_type __pos2, size_type __n2) const;
2285:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2286:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2287:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Compare to a C string.
2288:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to compare against.
2289:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Integer < 0, 0, or > 0.
2290:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2291:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Returns an integer < 0 if this string is ordered before @a __s, 0 if
2292:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  their values are equivalent, or > 0 if this string is ordered after
2293:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @a __s.  Determines the effective length rlen of the strings to
2294:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  compare as the smallest of size() and the length of a string
2295:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  constructed from @a __s.  The function then compares the two strings
2296:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  by calling traits::compare(data(),s,rlen).  If the result of the
2297:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  comparison is nonzero returns it, otherwise the shorter one is
2298:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  ordered first.
2299:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2300:/usr/include/c++/4.8.2/bits/basic_string.h ****       int
2301:/usr/include/c++/4.8.2/bits/basic_string.h ****       compare(const _CharT* __s) const;
2302:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2303:/usr/include/c++/4.8.2/bits/basic_string.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
2304:/usr/include/c++/4.8.2/bits/basic_string.h ****       // 5 String::compare specification questionable
2305:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2306:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Compare substring to a C string.
2307:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character of substring.
2308:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters in substring.
2309:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  C string to compare against.
2310:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Integer < 0, 0, or > 0.
2311:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2312:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Form the substring of this string from the @a __n1
2313:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters starting at @a pos.  Returns an integer < 0 if
2314:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the substring is ordered before @a __s, 0 if their values
2315:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  are equivalent, or > 0 if the substring is ordered after @a
2316:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  __s.  Determines the effective length rlen of the strings to
2317:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  compare as the smallest of the length of the substring and
2318:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the length of a string constructed from @a __s.  The
2319:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  function then compares the two string by calling
2320:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  traits::compare(substring.data(),__s,rlen).  If the result of
2321:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the comparison is nonzero returns it, otherwise the shorter
2322:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  one is ordered first.
2323:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2324:/usr/include/c++/4.8.2/bits/basic_string.h ****       int
2325:/usr/include/c++/4.8.2/bits/basic_string.h ****       compare(size_type __pos, size_type __n1, const _CharT* __s) const;
2326:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2327:/usr/include/c++/4.8.2/bits/basic_string.h ****       /**
2328:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @brief  Compare substring against a character %array.
2329:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __pos  Index of first character of substring.
2330:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n1  Number of characters in substring.
2331:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __s  character %array to compare against.
2332:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @param __n2  Number of characters of s.
2333:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  @return  Integer < 0, 0, or > 0.
2334:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2335:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  Form the substring of this string from the @a __n1
2336:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  characters starting at @a __pos.  Form a string from the
2337:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  first @a __n2 characters of @a __s.  Returns an integer < 0
2338:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  if this substring is ordered before the string from @a __s,
2339:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  0 if their values are equivalent, or > 0 if this substring
2340:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  is ordered after the string from @a __s.  Determines the
2341:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  effective length rlen of the strings to compare as the
2342:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  smallest of the length of the substring and @a __n2.  The
2343:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  function then compares the two strings by calling
2344:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  traits::compare(substring.data(),s,rlen).  If the result of
2345:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  the comparison is nonzero returns it, otherwise the shorter
2346:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  one is ordered first.
2347:/usr/include/c++/4.8.2/bits/basic_string.h ****        *
2348:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  NB: s must have at least n2 characters, &apos;\\0&apos; has
2349:/usr/include/c++/4.8.2/bits/basic_string.h ****        *  no special meaning.
2350:/usr/include/c++/4.8.2/bits/basic_string.h ****       */
2351:/usr/include/c++/4.8.2/bits/basic_string.h ****       int
2352:/usr/include/c++/4.8.2/bits/basic_string.h ****       compare(size_type __pos, size_type __n1, const _CharT* __s,
2353:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      size_type __n2) const;
2354:/usr/include/c++/4.8.2/bits/basic_string.h ****   };
2355:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2356:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator+
2357:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2358:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Concatenate two strings.
2359:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2360:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Last string.
2361:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  New string with value of @a __lhs followed by @a __rhs.
2362:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2363:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2364:/usr/include/c++/4.8.2/bits/basic_string.h ****     basic_string<_CharT, _Traits, _Alloc>
2365:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2366:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2367:/usr/include/c++/4.8.2/bits/basic_string.h ****     {
2368:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
2369:/usr/include/c++/4.8.2/bits/basic_string.h ****       __str.append(__rhs);
2370:/usr/include/c++/4.8.2/bits/basic_string.h ****       return __str;
2371:/usr/include/c++/4.8.2/bits/basic_string.h ****     }
2372:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2373:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2374:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Concatenate C string and string.
2375:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2376:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Last string.
2377:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  New string with value of @a __lhs followed by @a __rhs.
2378:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2379:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2380:/usr/include/c++/4.8.2/bits/basic_string.h ****     basic_string<_CharT,_Traits,_Alloc>
2381:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(const _CharT* __lhs,
2382:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT,_Traits,_Alloc>& __rhs);
2383:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2384:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2385:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Concatenate character and string.
2386:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2387:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Last string.
2388:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  New string with @a __lhs followed by @a __rhs.
2389:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2390:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2391:/usr/include/c++/4.8.2/bits/basic_string.h ****     basic_string<_CharT,_Traits,_Alloc>
2392:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(_CharT __lhs, const basic_string<_CharT,_Traits,_Alloc>& __rhs);
2393:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2394:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2395:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Concatenate string and C string.
2396:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2397:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Last string.
2398:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  New string with @a __lhs followed by @a __rhs.
2399:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2400:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2401:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2402:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2403:/usr/include/c++/4.8.2/bits/basic_string.h **** 	     const _CharT* __rhs)
2404:/usr/include/c++/4.8.2/bits/basic_string.h ****     {
2405:/usr/include/c++/4.8.2/bits/basic_string.h ****       basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
2406:/usr/include/c++/4.8.2/bits/basic_string.h ****       __str.append(__rhs);
2407:/usr/include/c++/4.8.2/bits/basic_string.h ****       return __str;
2408:/usr/include/c++/4.8.2/bits/basic_string.h ****     }
2409:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2410:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2411:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Concatenate string and character.
2412:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2413:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Last string.
2414:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  New string with @a __lhs followed by @a __rhs.
2415:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2416:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2417:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2418:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs, _CharT __rhs)
2419:/usr/include/c++/4.8.2/bits/basic_string.h ****     {
2420:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef basic_string<_CharT, _Traits, _Alloc>	__string_type;
2421:/usr/include/c++/4.8.2/bits/basic_string.h ****       typedef typename __string_type::size_type		__size_type;
2422:/usr/include/c++/4.8.2/bits/basic_string.h ****       __string_type __str(__lhs);
2423:/usr/include/c++/4.8.2/bits/basic_string.h ****       __str.append(__size_type(1), __rhs);
2424:/usr/include/c++/4.8.2/bits/basic_string.h ****       return __str;
2425:/usr/include/c++/4.8.2/bits/basic_string.h ****     }
2426:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2427:/usr/include/c++/4.8.2/bits/basic_string.h **** #if __cplusplus >= 201103L
2428:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2429:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2430:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
2431:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2432:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return std::move(__lhs.append(__rhs)); }
2433:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2434:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2435:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2436:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2437:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      basic_string<_CharT, _Traits, _Alloc>&& __rhs)
2438:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return std::move(__rhs.insert(0, __lhs)); }
2439:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2440:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2441:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2442:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
2443:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      basic_string<_CharT, _Traits, _Alloc>&& __rhs)
2444:/usr/include/c++/4.8.2/bits/basic_string.h ****     {
2445:/usr/include/c++/4.8.2/bits/basic_string.h ****       const auto __size = __lhs.size() + __rhs.size();
2446:/usr/include/c++/4.8.2/bits/basic_string.h ****       const bool __cond = (__size > __lhs.capacity()
2447:/usr/include/c++/4.8.2/bits/basic_string.h **** 			   && __size <= __rhs.capacity());
2448:/usr/include/c++/4.8.2/bits/basic_string.h ****       return __cond ? std::move(__rhs.insert(0, __lhs))
2449:/usr/include/c++/4.8.2/bits/basic_string.h **** 	            : std::move(__lhs.append(__rhs));
2450:/usr/include/c++/4.8.2/bits/basic_string.h ****     }
2451:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2452:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2453:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2454:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(const _CharT* __lhs,
2455:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      basic_string<_CharT, _Traits, _Alloc>&& __rhs)
2456:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return std::move(__rhs.insert(0, __lhs)); }
2457:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2458:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2459:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2460:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(_CharT __lhs,
2461:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      basic_string<_CharT, _Traits, _Alloc>&& __rhs)
2462:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return std::move(__rhs.insert(0, 1, __lhs)); }
2463:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2464:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2465:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2466:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
2467:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const _CharT* __rhs)
2468:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return std::move(__lhs.append(__rhs)); }
2469:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2470:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2471:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_string<_CharT, _Traits, _Alloc>
2472:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
2473:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      _CharT __rhs)
2474:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return std::move(__lhs.append(1, __rhs)); }
2475:/usr/include/c++/4.8.2/bits/basic_string.h **** #endif
2476:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2477:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator ==
2478:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2479:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test equivalence of two strings.
2480:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2481:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2482:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
2483:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2484:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2485:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2486:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2487:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2488:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) == 0; }
2489:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2490:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT>
2491:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline
2492:/usr/include/c++/4.8.2/bits/basic_string.h ****     typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value, bool>::__type
2493:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator==(const basic_string<_CharT>& __lhs,
2494:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT>& __rhs)
2495:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return (__lhs.size() == __rhs.size()
2496:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      && !std::char_traits<_CharT>::compare(__lhs.data(), __rhs.data(),
2497:/usr/include/c++/4.8.2/bits/basic_string.h **** 						    __lhs.size())); }
2498:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2499:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2500:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test equivalence of C string and string.
2501:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  C string.
2502:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  String.
2503:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __rhs.compare(@a __lhs) == 0.  False otherwise.
2504:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2505:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2506:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2507:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator==(const _CharT* __lhs,
2508:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2509:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __rhs.compare(__lhs) == 0; }
2510:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2511:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2512:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test equivalence of string and C string.
2513:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  String.
2514:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  C string.
2515:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
2516:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2517:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2518:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2519:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2520:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const _CharT* __rhs)
2521:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) == 0; }
2522:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2523:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator !=
2524:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2525:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test difference of two strings.
2526:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2527:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2528:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs.compare(@a __rhs) != 0.  False otherwise.
2529:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2530:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2531:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2532:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator!=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2533:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2534:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return !(__lhs == __rhs); }
2535:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2536:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2537:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test difference of C string and string.
2538:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  C string.
2539:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  String.
2540:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __rhs.compare(@a __lhs) != 0.  False otherwise.
2541:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2542:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2543:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2544:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator!=(const _CharT* __lhs,
2545:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2546:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return !(__lhs == __rhs); }
2547:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2548:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2549:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test difference of string and C string.
2550:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  String.
2551:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  C string.
2552:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs.compare(@a __rhs) != 0.  False otherwise.
2553:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2554:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2555:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2556:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator!=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2557:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const _CharT* __rhs)
2558:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return !(__lhs == __rhs); }
2559:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2560:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator <
2561:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2562:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string precedes string.
2563:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2564:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2565:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs precedes @a __rhs.  False otherwise.
2566:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2567:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2568:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2569:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2570:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2571:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) < 0; }
2572:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2573:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2574:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string precedes C string.
2575:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  String.
2576:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  C string.
2577:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs precedes @a __rhs.  False otherwise.
2578:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2579:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2580:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2581:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2582:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const _CharT* __rhs)
2583:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) < 0; }
2584:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2585:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2586:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if C string precedes string.
2587:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  C string.
2588:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  String.
2589:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs precedes @a __rhs.  False otherwise.
2590:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2591:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2592:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2593:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<(const _CharT* __lhs,
2594:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2595:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __rhs.compare(__lhs) > 0; }
2596:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2597:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator >
2598:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2599:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string follows string.
2600:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2601:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2602:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs follows @a __rhs.  False otherwise.
2603:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2604:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2605:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2606:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2607:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2608:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) > 0; }
2609:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2610:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2611:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string follows C string.
2612:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  String.
2613:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  C string.
2614:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs follows @a __rhs.  False otherwise.
2615:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2616:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2617:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2618:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2619:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const _CharT* __rhs)
2620:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) > 0; }
2621:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2622:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2623:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if C string follows string.
2624:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  C string.
2625:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  String.
2626:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs follows @a __rhs.  False otherwise.
2627:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2628:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2629:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2630:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>(const _CharT* __lhs,
2631:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2632:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __rhs.compare(__lhs) < 0; }
2633:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2634:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator <=
2635:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2636:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string doesn't follow string.
2637:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2638:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2639:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs doesn't follow @a __rhs.  False otherwise.
2640:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2641:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2642:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2643:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2644:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2645:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) <= 0; }
2646:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2647:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2648:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string doesn't follow C string.
2649:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  String.
2650:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  C string.
2651:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs doesn't follow @a __rhs.  False otherwise.
2652:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2653:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2654:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2655:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2656:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const _CharT* __rhs)
2657:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) <= 0; }
2658:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2659:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2660:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if C string doesn't follow string.
2661:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  C string.
2662:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  String.
2663:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs doesn't follow @a __rhs.  False otherwise.
2664:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2665:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2666:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2667:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<=(const _CharT* __lhs,
2668:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2669:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __rhs.compare(__lhs) >= 0; }
2670:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2671:/usr/include/c++/4.8.2/bits/basic_string.h ****   // operator >=
2672:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2673:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string doesn't precede string.
2674:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2675:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2676:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs doesn't precede @a __rhs.  False otherwise.
2677:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2678:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2679:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2680:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2681:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2682:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) >= 0; }
2683:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2684:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2685:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if string doesn't precede C string.
2686:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  String.
2687:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  C string.
2688:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs doesn't precede @a __rhs.  False otherwise.
2689:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2690:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2691:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2692:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
2693:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const _CharT* __rhs)
2694:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __lhs.compare(__rhs) >= 0; }
2695:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2696:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2697:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Test if C string doesn't precede string.
2698:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  C string.
2699:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  String.
2700:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  True if @a __lhs doesn't precede @a __rhs.  False otherwise.
2701:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2702:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2703:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline bool
2704:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>=(const _CharT* __lhs,
2705:/usr/include/c++/4.8.2/bits/basic_string.h **** 	     const basic_string<_CharT, _Traits, _Alloc>& __rhs)
2706:/usr/include/c++/4.8.2/bits/basic_string.h ****     { return __rhs.compare(__lhs) <= 0; }
2707:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2708:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2709:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Swap contents of two strings.
2710:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __lhs  First string.
2711:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __rhs  Second string.
2712:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
2713:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Exchanges the contents of @a __lhs and @a __rhs in constant time.
2714:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2715:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2716:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline void
2717:/usr/include/c++/4.8.2/bits/basic_string.h ****     swap(basic_string<_CharT, _Traits, _Alloc>& __lhs,
2718:/usr/include/c++/4.8.2/bits/basic_string.h **** 	 basic_string<_CharT, _Traits, _Alloc>& __rhs)
2719:/usr/include/c++/4.8.2/bits/basic_string.h ****     { __lhs.swap(__rhs); }
2720:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2721:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2722:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Read stream into a string.
2723:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __is  Input stream.
2724:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __str  Buffer to store into.
2725:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  Reference to the input stream.
2726:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
2727:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Stores characters from @a __is into @a __str until whitespace is
2728:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  found, the end of the stream is encountered, or str.max_size()
2729:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  is reached.  If is.width() is non-zero, that is the limit on the
2730:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  number of characters stored into @a __str.  Any previous
2731:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  contents of @a __str are erased.
2732:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2733:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2734:/usr/include/c++/4.8.2/bits/basic_string.h ****     basic_istream<_CharT, _Traits>&
2735:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>>(basic_istream<_CharT, _Traits>& __is,
2736:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       basic_string<_CharT, _Traits, _Alloc>& __str);
2737:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2738:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<>
2739:/usr/include/c++/4.8.2/bits/basic_string.h ****     basic_istream<char>&
2740:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator>>(basic_istream<char>& __is, basic_string<char>& __str);
2741:/usr/include/c++/4.8.2/bits/basic_string.h **** 
2742:/usr/include/c++/4.8.2/bits/basic_string.h ****   /**
2743:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @brief  Write string to a stream.
2744:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __os  Output stream.
2745:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @param __str  String to write out.
2746:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  @return  Reference to the output stream.
2747:/usr/include/c++/4.8.2/bits/basic_string.h ****    *
2748:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  Output characters of @a __str into os following the same rules as for
2749:/usr/include/c++/4.8.2/bits/basic_string.h ****    *  writing a C string.
2750:/usr/include/c++/4.8.2/bits/basic_string.h ****    */
2751:/usr/include/c++/4.8.2/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
2752:/usr/include/c++/4.8.2/bits/basic_string.h ****     inline basic_ostream<_CharT, _Traits>&
2753:/usr/include/c++/4.8.2/bits/basic_string.h ****     operator<<(basic_ostream<_CharT, _Traits>& __os,
2754:/usr/include/c++/4.8.2/bits/basic_string.h **** 	       const basic_string<_CharT, _Traits, _Alloc>& __str)
2755:/usr/include/c++/4.8.2/bits/basic_string.h ****     {
2756:/usr/include/c++/4.8.2/bits/basic_string.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
2757:/usr/include/c++/4.8.2/bits/basic_string.h ****       // 586. string inserter not a formatted function
2758:/usr/include/c++/4.8.2/bits/basic_string.h ****       return __ostream_insert(__os, __str.data(), __str.size());
 2932              		.loc 5 2758 0
 2933 030c BF000000 		mov	edi, OFFSET FLAT:_ZSt4cout	#,
 2933      00
 2934 0311 488B56E8 		mov	rdx, QWORD PTR [rsi-24]	# MEM[(struct _Rep *)_43 + -24B].D.22725._M_length, MEM[(struct _Rep *
 2935              	.LEHB5:
 2936 0315 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
 2936      00
 2937              	.LVL179:
 2938              	.LBE1451:
 2939              	.LBE1450:
 2940              	.LBB1458:
 2941              	.LBB1459:
 2942              	.LBB1460:
 539:/usr/include/c++/4.8.2/ostream **** 
 540:/usr/include/c++/4.8.2/ostream ****   // Signed and unsigned
 541:/usr/include/c++/4.8.2/ostream ****   template<class _Traits>
 542:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<char, _Traits>&
 543:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, const signed char* __s)
 544:/usr/include/c++/4.8.2/ostream ****     { return (__out << reinterpret_cast<const char*>(__s)); }
 545:/usr/include/c++/4.8.2/ostream **** 
 546:/usr/include/c++/4.8.2/ostream ****   template<class _Traits>
 547:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<char, _Traits> &
 548:/usr/include/c++/4.8.2/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, const unsigned char* __s)
 549:/usr/include/c++/4.8.2/ostream ****     { return (__out << reinterpret_cast<const char*>(__s)); }
 550:/usr/include/c++/4.8.2/ostream ****   //@}
 551:/usr/include/c++/4.8.2/ostream **** 
 552:/usr/include/c++/4.8.2/ostream ****   // Standard basic_ostream manipulators
 553:/usr/include/c++/4.8.2/ostream **** 
 554:/usr/include/c++/4.8.2/ostream ****   /**
 555:/usr/include/c++/4.8.2/ostream ****    *  @brief  Write a newline and flush the stream.
 556:/usr/include/c++/4.8.2/ostream ****    *
 557:/usr/include/c++/4.8.2/ostream ****    *  This manipulator is often mistakenly used when a simple newline is
 558:/usr/include/c++/4.8.2/ostream ****    *  desired, leading to poor buffering performance.  See
 559:/usr/include/c++/4.8.2/ostream ****    *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt11ch25s02.html
 560:/usr/include/c++/4.8.2/ostream ****    *  for more on this subject.
 561:/usr/include/c++/4.8.2/ostream ****   */
 562:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 563:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<_CharT, _Traits>&
 564:/usr/include/c++/4.8.2/ostream ****     endl(basic_ostream<_CharT, _Traits>& __os)
 565:/usr/include/c++/4.8.2/ostream ****     { return flush(__os.put(__os.widen('\n'))); }
 2943              		.loc 1 565 0
 2944 031a 488B38   		mov	rdi, QWORD PTR [rax]	# _46->_vptr.basic_ostream, _46->_vptr.basic_ostream
 2945              	.LBE1460:
 2946              	.LBE1459:
 2947              	.LBE1458:
 2948              	.LBB1480:
 2949              	.LBB1457:
 2950              		.loc 5 2758 0
 2951 031d 4989C6   		mov	r14, rax	# D.37199,
 2952              	.LVL180:
 2953              	.LBE1457:
 2954              	.LBE1480:
 2955              	.LBE1574:
 2956              	.LBE1582:
 2957              	.LBE1588:
 2958              		.loc 1 565 0
 2959 0320 4C8B4FE8 		mov	r9, QWORD PTR [rdi-24]	# MEM[(long int *)_157 + -24B], MEM[(long int *)_157 + -24B]
 2960 0324 4E8BA408 		mov	r12, QWORD PTR [rax+240+r9]	# D.37215, MEM[(const struct basic_ios *)_160 + 240B]
 2960      F0000000 
 2961              	.LVL181:
 2962              	.LBB1589:
 2963              	.LBB1583:
 2964              	.LBB1575:
 2965              	.LBB1481:
 2966              	.LBB1477:
 2967              	.LBB1474:
 2968              	.LBB1461:
 2969              	.LBB1462:
 2970              	.LBB1463:
  48:/usr/include/c++/4.8.2/bits/basic_ios.h ****       if (!__f)
 2971              		.loc 3 48 0
 2972 032c 4D85E4   		test	r12, r12	# D.37215
 2973 032f 0F841F02 		je	.L203	#,
 2973      0000
 2974              	.LVL182:
 2975              	.LBE1463:
 2976              	.LBE1462:
 2977              	.LBB1465:
 2978              	.LBB1466:
 2979              		.file 12 "/usr/include/c++/4.8.2/bits/locale_facets.h"
   1:/usr/include/c++/4.8.2/bits/locale_facets.h **** // Locale support -*- C++ -*-
   2:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
   3:/usr/include/c++/4.8.2/bits/locale_facets.h **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/bits/locale_facets.h **** //
   5:/usr/include/c++/4.8.2/bits/locale_facets.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/bits/locale_facets.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/bits/locale_facets.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/bits/locale_facets.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/bits/locale_facets.h **** // any later version.
  10:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  11:/usr/include/c++/4.8.2/bits/locale_facets.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/bits/locale_facets.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/bits/locale_facets.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/bits/locale_facets.h **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  16:/usr/include/c++/4.8.2/bits/locale_facets.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/bits/locale_facets.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/bits/locale_facets.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  20:/usr/include/c++/4.8.2/bits/locale_facets.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/bits/locale_facets.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/bits/locale_facets.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/bits/locale_facets.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  25:/usr/include/c++/4.8.2/bits/locale_facets.h **** /** @file bits/locale_facets.h
  26:/usr/include/c++/4.8.2/bits/locale_facets.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/4.8.2/bits/locale_facets.h ****  *  Do not attempt to use it directly. @headername{locale}
  28:/usr/include/c++/4.8.2/bits/locale_facets.h ****  */
  29:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  30:/usr/include/c++/4.8.2/bits/locale_facets.h **** //
  31:/usr/include/c++/4.8.2/bits/locale_facets.h **** // ISO C++ 14882: 22.1  Locales
  32:/usr/include/c++/4.8.2/bits/locale_facets.h **** //
  33:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  34:/usr/include/c++/4.8.2/bits/locale_facets.h **** #ifndef _LOCALE_FACETS_H
  35:/usr/include/c++/4.8.2/bits/locale_facets.h **** #define _LOCALE_FACETS_H 1
  36:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  37:/usr/include/c++/4.8.2/bits/locale_facets.h **** #pragma GCC system_header
  38:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  39:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <cwctype>	// For wctype_t
  40:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <cctype>
  41:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <bits/ctype_base.h>
  42:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <iosfwd>
  43:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <bits/ios_base.h>  // For ios_base, ios_base::iostate
  44:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <streambuf>
  45:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <bits/cpp_type_traits.h>
  46:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <ext/type_traits.h>
  47:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <ext/numeric_traits.h>
  48:/usr/include/c++/4.8.2/bits/locale_facets.h **** #include <bits/streambuf_iterator.h>
  49:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  50:/usr/include/c++/4.8.2/bits/locale_facets.h **** namespace std _GLIBCXX_VISIBILITY(default)
  51:/usr/include/c++/4.8.2/bits/locale_facets.h **** {
  52:/usr/include/c++/4.8.2/bits/locale_facets.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  53:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  54:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // NB: Don't instantiate required wchar_t facets if no wchar_t support.
  55:/usr/include/c++/4.8.2/bits/locale_facets.h **** #ifdef _GLIBCXX_USE_WCHAR_T
  56:/usr/include/c++/4.8.2/bits/locale_facets.h **** # define  _GLIBCXX_NUM_FACETS 28
  57:/usr/include/c++/4.8.2/bits/locale_facets.h **** #else
  58:/usr/include/c++/4.8.2/bits/locale_facets.h **** # define  _GLIBCXX_NUM_FACETS 14
  59:/usr/include/c++/4.8.2/bits/locale_facets.h **** #endif
  60:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  61:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // Convert string to numeric value of type _Tp and store results.
  62:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // NB: This is specialized for all required types, there is no
  63:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // generic definition.
  64:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _Tp>
  65:/usr/include/c++/4.8.2/bits/locale_facets.h ****     void
  66:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __convert_to_v(const char*, _Tp&, ios_base::iostate&,
  67:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		   const __c_locale&) throw();
  68:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  69:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // Explicit specializations for required types.
  70:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<>
  71:/usr/include/c++/4.8.2/bits/locale_facets.h ****     void
  72:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __convert_to_v(const char*, float&, ios_base::iostate&,
  73:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		   const __c_locale&) throw();
  74:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  75:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<>
  76:/usr/include/c++/4.8.2/bits/locale_facets.h ****     void
  77:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __convert_to_v(const char*, double&, ios_base::iostate&,
  78:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		   const __c_locale&) throw();
  79:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  80:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<>
  81:/usr/include/c++/4.8.2/bits/locale_facets.h ****     void
  82:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __convert_to_v(const char*, long double&, ios_base::iostate&,
  83:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		   const __c_locale&) throw();
  84:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  85:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // NB: __pad is a struct, rather than a function, so it can be
  86:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // partially-specialized.
  87:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT, typename _Traits>
  88:/usr/include/c++/4.8.2/bits/locale_facets.h ****     struct __pad
  89:/usr/include/c++/4.8.2/bits/locale_facets.h ****     {
  90:/usr/include/c++/4.8.2/bits/locale_facets.h ****       static void
  91:/usr/include/c++/4.8.2/bits/locale_facets.h ****       _S_pad(ios_base& __io, _CharT __fill, _CharT* __news,
  92:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	     const _CharT* __olds, streamsize __newlen, streamsize __oldlen);
  93:/usr/include/c++/4.8.2/bits/locale_facets.h ****     };
  94:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
  95:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // Used by both numeric and monetary facets.
  96:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // Inserts "group separator" characters into an array of characters.
  97:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // It's recursive, one iteration per group.  It moves the characters
  98:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // in the buffer this way: "xxxx12345" -> "12,345xxx".  Call this
  99:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // only with __gsize != 0.
 100:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT>
 101:/usr/include/c++/4.8.2/bits/locale_facets.h ****     _CharT*
 102:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __add_grouping(_CharT* __s, _CharT __sep,
 103:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		   const char* __gbeg, size_t __gsize,
 104:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		   const _CharT* __first, const _CharT* __last);
 105:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 106:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // This template permits specializing facet output code for
 107:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // ostreambuf_iterator.  For ostreambuf_iterator, sputn is
 108:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // significantly more efficient than incrementing iterators.
 109:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT>
 110:/usr/include/c++/4.8.2/bits/locale_facets.h ****     inline
 111:/usr/include/c++/4.8.2/bits/locale_facets.h ****     ostreambuf_iterator<_CharT>
 112:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __write(ostreambuf_iterator<_CharT> __s, const _CharT* __ws, int __len)
 113:/usr/include/c++/4.8.2/bits/locale_facets.h ****     {
 114:/usr/include/c++/4.8.2/bits/locale_facets.h ****       __s._M_put(__ws, __len);
 115:/usr/include/c++/4.8.2/bits/locale_facets.h ****       return __s;
 116:/usr/include/c++/4.8.2/bits/locale_facets.h ****     }
 117:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 118:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // This is the unspecialized form of the template.
 119:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT, typename _OutIter>
 120:/usr/include/c++/4.8.2/bits/locale_facets.h ****     inline
 121:/usr/include/c++/4.8.2/bits/locale_facets.h ****     _OutIter
 122:/usr/include/c++/4.8.2/bits/locale_facets.h ****     __write(_OutIter __s, const _CharT* __ws, int __len)
 123:/usr/include/c++/4.8.2/bits/locale_facets.h ****     {
 124:/usr/include/c++/4.8.2/bits/locale_facets.h ****       for (int __j = 0; __j < __len; __j++, ++__s)
 125:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	*__s = __ws[__j];
 126:/usr/include/c++/4.8.2/bits/locale_facets.h ****       return __s;
 127:/usr/include/c++/4.8.2/bits/locale_facets.h ****     }
 128:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 129:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 130:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // 22.2.1.1  Template class ctype
 131:/usr/include/c++/4.8.2/bits/locale_facets.h ****   // Include host and configuration specific ctype enums for ctype_base.
 132:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 133:/usr/include/c++/4.8.2/bits/locale_facets.h ****   /**
 134:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  @brief  Common base for ctype facet
 135:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *
 136:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  This template class provides implementations of the public functions
 137:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  that forward to the protected virtual functions.
 138:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *
 139:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  This template also provides abstract stubs for the protected virtual
 140:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  functions.
 141:/usr/include/c++/4.8.2/bits/locale_facets.h ****   */
 142:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT>
 143:/usr/include/c++/4.8.2/bits/locale_facets.h ****     class __ctype_abstract_base : public locale::facet, public ctype_base
 144:/usr/include/c++/4.8.2/bits/locale_facets.h ****     {
 145:/usr/include/c++/4.8.2/bits/locale_facets.h ****     public:
 146:/usr/include/c++/4.8.2/bits/locale_facets.h ****       // Types:
 147:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /// Typedef for the template parameter
 148:/usr/include/c++/4.8.2/bits/locale_facets.h ****       typedef _CharT char_type;
 149:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 150:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 151:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Test char_type classification.
 152:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 153:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function finds a mask M for @a __c and compares it to
 154:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  mask @a __m.  It does so by returning the value of
 155:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_is().
 156:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 157:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to compare the mask of.
 158:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 159:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  (M & __m) != 0.
 160:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 161:/usr/include/c++/4.8.2/bits/locale_facets.h ****       bool
 162:/usr/include/c++/4.8.2/bits/locale_facets.h ****       is(mask __m, char_type __c) const
 163:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_is(__m, __c); }
 164:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 165:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 166:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Return a mask array.
 167:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 168:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function finds the mask for each char_type in the range [lo,hi)
 169:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  and successively writes it to vec.  vec must have as many elements
 170:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  as the char array.  It does so by returning the value of
 171:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_is().
 172:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 173:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 174:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 175:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __vec  Pointer to an array of mask storage.
 176:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 177:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 178:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 179:/usr/include/c++/4.8.2/bits/locale_facets.h ****       is(const char_type *__lo, const char_type *__hi, mask *__vec) const
 180:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_is(__lo, __hi, __vec); }
 181:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 182:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 183:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Find char_type matching a mask
 184:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 185:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function searches for and returns the first char_type c in
 186:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  [lo,hi) for which is(m,c) is true.  It does so by returning
 187:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_scan_is().
 188:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 189:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 190:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 191:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 192:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  Pointer to matching char_type if found, else @a __hi.
 193:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 194:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 195:/usr/include/c++/4.8.2/bits/locale_facets.h ****       scan_is(mask __m, const char_type* __lo, const char_type* __hi) const
 196:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_scan_is(__m, __lo, __hi); }
 197:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 198:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 199:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Find char_type not matching a mask
 200:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 201:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function searches for and returns the first char_type c in
 202:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  [lo,hi) for which is(m,c) is false.  It does so by returning
 203:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_scan_not().
 204:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 205:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 206:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 207:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 208:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  Pointer to non-matching char if found, else @a __hi.
 209:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 210:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 211:/usr/include/c++/4.8.2/bits/locale_facets.h ****       scan_not(mask __m, const char_type* __lo, const char_type* __hi) const
 212:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_scan_not(__m, __lo, __hi); }
 213:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 214:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 215:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
 216:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 217:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the argument to uppercase if possible.
 218:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  If not possible (for example, '2'), returns the argument.  It does
 219:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  so by returning ctype<char_type>::do_toupper().
 220:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 221:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 222:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The uppercase char_type if convertible, else @a __c.
 223:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 224:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char_type
 225:/usr/include/c++/4.8.2/bits/locale_facets.h ****       toupper(char_type __c) const
 226:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_toupper(__c); }
 227:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 228:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 229:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
 230:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 231:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char_type in the range [lo,hi) to
 232:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  uppercase if possible.  Other elements remain untouched.  It does so
 233:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  by returning ctype<char_type>:: do_toupper(lo, hi).
 234:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 235:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 236:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 237:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 238:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 239:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 240:/usr/include/c++/4.8.2/bits/locale_facets.h ****       toupper(char_type *__lo, const char_type* __hi) const
 241:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_toupper(__lo, __hi); }
 242:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 243:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 244:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
 245:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 246:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the argument to lowercase if possible.  If
 247:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  not possible (for example, '2'), returns the argument.  It does so
 248:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  by returning ctype<char_type>::do_tolower(c).
 249:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 250:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 251:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The lowercase char_type if convertible, else @a __c.
 252:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 253:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char_type
 254:/usr/include/c++/4.8.2/bits/locale_facets.h ****       tolower(char_type __c) const
 255:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_tolower(__c); }
 256:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 257:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 258:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
 259:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 260:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char_type in the range [__lo,__hi) to
 261:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  lowercase if possible.  Other elements remain untouched.  It does so
 262:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  by returning ctype<char_type>:: do_tolower(__lo, __hi).
 263:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 264:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 265:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 266:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 267:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 268:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 269:/usr/include/c++/4.8.2/bits/locale_facets.h ****       tolower(char_type* __lo, const char_type* __hi) const
 270:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_tolower(__lo, __hi); }
 271:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 272:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 273:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Widen char to char_type
 274:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 275:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the char argument to char_type using the
 276:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  simplest reasonable transformation.  It does so by returning
 277:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_widen(c).
 278:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 279:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 280:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 281:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 282:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char to convert.
 283:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The converted char_type.
 284:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 285:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char_type
 286:/usr/include/c++/4.8.2/bits/locale_facets.h ****       widen(char __c) const
 287:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_widen(__c); }
 288:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 289:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 290:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Widen array to char_type
 291:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 292:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char in the input to char_type using the
 293:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  simplest reasonable transformation.  It does so by returning
 294:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_widen(c).
 295:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 296:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 297:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 298:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 299:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 300:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 301:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 302:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 303:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 304:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char*
 305:/usr/include/c++/4.8.2/bits/locale_facets.h ****       widen(const char* __lo, const char* __hi, char_type* __to) const
 306:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_widen(__lo, __hi, __to); }
 307:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 308:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 309:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Narrow char_type to char
 310:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 311:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the char_type to char using the simplest
 312:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  reasonable transformation.  If the conversion fails, dfault is
 313:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  returned instead.  It does so by returning
 314:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_narrow(__c).
 315:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 316:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 317:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 318:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 319:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 320:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __dfault  Char to return if conversion fails.
 321:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The converted char.
 322:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 323:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char
 324:/usr/include/c++/4.8.2/bits/locale_facets.h ****       narrow(char_type __c, char __dfault) const
 325:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_narrow(__c, __dfault); }
 326:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 327:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 328:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Narrow array to char array
 329:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 330:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char_type in the input to char using the
 331:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  simplest reasonable transformation and writes the results to the
 332:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  destination array.  For any char_type in the input that cannot be
 333:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  converted, @a dfault is used instead.  It does so by returning
 334:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  ctype<char_type>::do_narrow(__lo, __hi, __dfault, __to).
 335:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 336:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 337:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 338:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 339:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 340:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 341:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __dfault  Char to use if conversion fails.
 342:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 343:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 344:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 345:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 346:/usr/include/c++/4.8.2/bits/locale_facets.h ****       narrow(const char_type* __lo, const char_type* __hi,
 347:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	      char __dfault, char* __to) const
 348:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_narrow(__lo, __hi, __dfault, __to); }
 349:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 350:/usr/include/c++/4.8.2/bits/locale_facets.h ****     protected:
 351:/usr/include/c++/4.8.2/bits/locale_facets.h ****       explicit
 352:/usr/include/c++/4.8.2/bits/locale_facets.h ****       __ctype_abstract_base(size_t __refs = 0): facet(__refs) { }
 353:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 354:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual
 355:/usr/include/c++/4.8.2/bits/locale_facets.h ****       ~__ctype_abstract_base() { }
 356:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 357:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 358:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Test char_type classification.
 359:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 360:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function finds a mask M for @a c and compares it to mask @a m.
 361:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 362:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_is() is a hook for a derived facet to change the behavior of
 363:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  classifying.  do_is() must always return the same result for the
 364:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 365:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 366:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to find the mask of.
 367:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 368:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  (M & __m) != 0.
 369:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 370:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual bool
 371:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_is(mask __m, char_type __c) const = 0;
 372:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 373:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 374:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Return a mask array.
 375:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 376:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function finds the mask for each char_type in the range [lo,hi)
 377:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  and successively writes it to vec.  vec must have as many elements
 378:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  as the input.
 379:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 380:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_is() is a hook for a derived facet to change the behavior of
 381:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  classifying.  do_is() must always return the same result for the
 382:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 383:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 384:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 385:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 386:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __vec  Pointer to an array of mask storage.
 387:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 388:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 389:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 390:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_is(const char_type* __lo, const char_type* __hi,
 391:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	    mask* __vec) const = 0;
 392:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 393:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 394:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Find char_type matching mask
 395:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 396:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function searches for and returns the first char_type c in
 397:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  [__lo,__hi) for which is(__m,c) is true.
 398:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 399:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_scan_is() is a hook for a derived facet to change the behavior of
 400:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  match searching.  do_is() must always return the same result for the
 401:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 402:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 403:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 404:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 405:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 406:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  Pointer to a matching char_type if found, else @a __hi.
 407:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 408:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 409:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_scan_is(mask __m, const char_type* __lo,
 410:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		 const char_type* __hi) const = 0;
 411:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 412:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 413:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Find char_type not matching mask
 414:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 415:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function searches for and returns a pointer to the first
 416:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  char_type c of [lo,hi) for which is(m,c) is false.
 417:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 418:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_scan_is() is a hook for a derived facet to change the behavior of
 419:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  match searching.  do_is() must always return the same result for the
 420:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 421:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 422:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 423:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 424:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 425:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  Pointer to a non-matching char_type if found, else @a __hi.
 426:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 427:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 428:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_scan_not(mask __m, const char_type* __lo,
 429:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		  const char_type* __hi) const = 0;
 430:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 431:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 432:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
 433:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 434:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts the char_type argument to uppercase
 435:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  if possible.  If not possible (for example, '2'), returns the
 436:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  argument.
 437:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 438:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_toupper() is a hook for a derived facet to change the behavior of
 439:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  uppercasing.  do_toupper() must always return the same result for
 440:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  the same input.
 441:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 442:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 443:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The uppercase char_type if convertible, else @a __c.
 444:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 445:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char_type
 446:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_toupper(char_type __c) const = 0;
 447:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 448:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 449:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
 450:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 451:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts each char_type in the range [__lo,__hi)
 452:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  to uppercase if possible.  Other elements remain untouched.
 453:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 454:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_toupper() is a hook for a derived facet to change the behavior of
 455:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  uppercasing.  do_toupper() must always return the same result for
 456:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  the same input.
 457:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 458:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 459:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 460:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 461:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 462:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 463:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_toupper(char_type* __lo, const char_type* __hi) const = 0;
 464:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 465:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 466:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
 467:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 468:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts the argument to lowercase if
 469:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  possible.  If not possible (for example, '2'), returns the argument.
 470:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 471:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_tolower() is a hook for a derived facet to change the behavior of
 472:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  lowercasing.  do_tolower() must always return the same result for
 473:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  the same input.
 474:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 475:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 476:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The lowercase char_type if convertible, else @a __c.
 477:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 478:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char_type
 479:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_tolower(char_type __c) const = 0;
 480:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 481:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 482:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
 483:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 484:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts each char_type in the range [__lo,__hi)
 485:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  to lowercase if possible.  Other elements remain untouched.
 486:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 487:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_tolower() is a hook for a derived facet to change the behavior of
 488:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  lowercasing.  do_tolower() must always return the same result for
 489:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  the same input.
 490:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 491:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 492:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 493:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 494:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 495:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 496:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_tolower(char_type* __lo, const char_type* __hi) const = 0;
 497:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 498:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 499:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Widen char
 500:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 501:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts the char to char_type using the
 502:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  simplest reasonable transformation.
 503:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 504:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_widen() is a hook for a derived facet to change the behavior of
 505:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  widening.  do_widen() must always return the same result for the
 506:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 507:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 508:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 509:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 510:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 511:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char to convert.
 512:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The converted char_type
 513:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 514:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char_type
 515:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_widen(char __c) const = 0;
 516:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 517:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 518:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Widen char array
 519:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 520:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char in the input to char_type using the
 521:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  simplest reasonable transformation.
 522:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 523:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_widen() is a hook for a derived facet to change the behavior of
 524:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  widening.  do_widen() must always return the same result for the
 525:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 526:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 527:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 528:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 529:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 530:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start range.
 531:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 532:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 533:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 534:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 535:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char*
 536:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_widen(const char* __lo, const char* __hi, char_type* __to) const = 0;
 537:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 538:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 539:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Narrow char_type to char
 540:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 541:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts the argument to char using the
 542:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  simplest reasonable transformation.  If the conversion fails, dfault
 543:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  is returned instead.
 544:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 545:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_narrow() is a hook for a derived facet to change the behavior of
 546:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  narrowing.  do_narrow() must always return the same result for the
 547:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 548:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 549:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 550:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 551:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 552:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 553:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __dfault  Char to return if conversion fails.
 554:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The converted char.
 555:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 556:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char
 557:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_narrow(char_type __c, char __dfault) const = 0;
 558:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 559:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 560:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Narrow char_type array to char
 561:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 562:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This virtual function converts each char_type in the range
 563:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  [__lo,__hi) to char using the simplest reasonable
 564:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  transformation and writes the results to the destination
 565:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  array.  For any element in the input that cannot be
 566:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  converted, @a __dfault is used instead.
 567:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 568:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_narrow() is a hook for a derived facet to change the behavior of
 569:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  narrowing.  do_narrow() must always return the same result for the
 570:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  same input.
 571:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 572:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 573:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 574:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 575:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 576:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 577:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __dfault  Char to use if conversion fails.
 578:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 579:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 580:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 581:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 582:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_narrow(const char_type* __lo, const char_type* __hi,
 583:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		char __dfault, char* __to) const = 0;
 584:/usr/include/c++/4.8.2/bits/locale_facets.h ****     };
 585:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 586:/usr/include/c++/4.8.2/bits/locale_facets.h ****   /**
 587:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  @brief  Primary class template ctype facet.
 588:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  @ingroup locales
 589:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *
 590:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  This template class defines classification and conversion functions for
 591:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  character sets.  It wraps cctype functionality.  Ctype gets used by
 592:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  streams for many I/O operations.
 593:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *
 594:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  This template provides the protected virtual functions the developer
 595:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  will have to replace in a derived class or specialization to make a
 596:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  working facet.  The public functions that access them are defined in
 597:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  __ctype_abstract_base, to allow for implementation flexibility.  See
 598:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  ctype<wchar_t> for an example.  The functions are documented in
 599:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  __ctype_abstract_base.
 600:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *
 601:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  Note: implementations are provided for all the protected virtual
 602:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  functions, but will likely not be useful.
 603:/usr/include/c++/4.8.2/bits/locale_facets.h ****   */
 604:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT>
 605:/usr/include/c++/4.8.2/bits/locale_facets.h ****     class ctype : public __ctype_abstract_base<_CharT>
 606:/usr/include/c++/4.8.2/bits/locale_facets.h ****     {
 607:/usr/include/c++/4.8.2/bits/locale_facets.h ****     public:
 608:/usr/include/c++/4.8.2/bits/locale_facets.h ****       // Types:
 609:/usr/include/c++/4.8.2/bits/locale_facets.h ****       typedef _CharT			char_type;
 610:/usr/include/c++/4.8.2/bits/locale_facets.h ****       typedef typename __ctype_abstract_base<_CharT>::mask mask;
 611:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 612:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /// The facet id for ctype<char_type>
 613:/usr/include/c++/4.8.2/bits/locale_facets.h ****       static locale::id			id;
 614:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 615:/usr/include/c++/4.8.2/bits/locale_facets.h ****       explicit
 616:/usr/include/c++/4.8.2/bits/locale_facets.h ****       ctype(size_t __refs = 0) : __ctype_abstract_base<_CharT>(__refs) { }
 617:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 618:/usr/include/c++/4.8.2/bits/locale_facets.h ****    protected:
 619:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual
 620:/usr/include/c++/4.8.2/bits/locale_facets.h ****       ~ctype();
 621:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 622:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual bool
 623:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_is(mask __m, char_type __c) const;
 624:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 625:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 626:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_is(const char_type* __lo, const char_type* __hi, mask* __vec) const;
 627:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 628:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 629:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_scan_is(mask __m, const char_type* __lo, const char_type* __hi) const;
 630:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 631:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 632:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_scan_not(mask __m, const char_type* __lo,
 633:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		  const char_type* __hi) const;
 634:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 635:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char_type
 636:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_toupper(char_type __c) const;
 637:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 638:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 639:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_toupper(char_type* __lo, const char_type* __hi) const;
 640:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 641:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char_type
 642:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_tolower(char_type __c) const;
 643:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 644:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 645:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_tolower(char_type* __lo, const char_type* __hi) const;
 646:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 647:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char_type
 648:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_widen(char __c) const;
 649:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 650:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char*
 651:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_widen(const char* __lo, const char* __hi, char_type* __dest) const;
 652:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 653:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual char
 654:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_narrow(char_type, char __dfault) const;
 655:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 656:/usr/include/c++/4.8.2/bits/locale_facets.h ****       virtual const char_type*
 657:/usr/include/c++/4.8.2/bits/locale_facets.h ****       do_narrow(const char_type* __lo, const char_type* __hi,
 658:/usr/include/c++/4.8.2/bits/locale_facets.h **** 		char __dfault, char* __to) const;
 659:/usr/include/c++/4.8.2/bits/locale_facets.h ****     };
 660:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 661:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<typename _CharT>
 662:/usr/include/c++/4.8.2/bits/locale_facets.h ****     locale::id ctype<_CharT>::id;
 663:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 664:/usr/include/c++/4.8.2/bits/locale_facets.h ****   /**
 665:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  @brief  The ctype<char> specialization.
 666:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  @ingroup locales
 667:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *
 668:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  This class defines classification and conversion functions for
 669:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  the char type.  It gets used by char streams for many I/O
 670:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  operations.  The char specialization provides a number of
 671:/usr/include/c++/4.8.2/bits/locale_facets.h ****    *  optimizations as well.
 672:/usr/include/c++/4.8.2/bits/locale_facets.h ****   */
 673:/usr/include/c++/4.8.2/bits/locale_facets.h ****   template<>
 674:/usr/include/c++/4.8.2/bits/locale_facets.h ****     class ctype<char> : public locale::facet, public ctype_base
 675:/usr/include/c++/4.8.2/bits/locale_facets.h ****     {
 676:/usr/include/c++/4.8.2/bits/locale_facets.h ****     public:
 677:/usr/include/c++/4.8.2/bits/locale_facets.h ****       // Types:
 678:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /// Typedef for the template parameter char.
 679:/usr/include/c++/4.8.2/bits/locale_facets.h ****       typedef char		char_type;
 680:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 681:/usr/include/c++/4.8.2/bits/locale_facets.h ****     protected:
 682:/usr/include/c++/4.8.2/bits/locale_facets.h ****       // Data Members:
 683:/usr/include/c++/4.8.2/bits/locale_facets.h ****       __c_locale		_M_c_locale_ctype;
 684:/usr/include/c++/4.8.2/bits/locale_facets.h ****       bool			_M_del;
 685:/usr/include/c++/4.8.2/bits/locale_facets.h ****       __to_type			_M_toupper;
 686:/usr/include/c++/4.8.2/bits/locale_facets.h ****       __to_type			_M_tolower;
 687:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const mask*		_M_table;
 688:/usr/include/c++/4.8.2/bits/locale_facets.h ****       mutable char		_M_widen_ok;
 689:/usr/include/c++/4.8.2/bits/locale_facets.h ****       mutable char		_M_widen[1 + static_cast<unsigned char>(-1)];
 690:/usr/include/c++/4.8.2/bits/locale_facets.h ****       mutable char		_M_narrow[1 + static_cast<unsigned char>(-1)];
 691:/usr/include/c++/4.8.2/bits/locale_facets.h ****       mutable char		_M_narrow_ok;	// 0 uninitialized, 1 init,
 692:/usr/include/c++/4.8.2/bits/locale_facets.h **** 						// 2 memcpy can't be used
 693:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 694:/usr/include/c++/4.8.2/bits/locale_facets.h ****     public:
 695:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /// The facet id for ctype<char>
 696:/usr/include/c++/4.8.2/bits/locale_facets.h ****       static locale::id        id;
 697:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /// The size of the mask table.  It is SCHAR_MAX + 1.
 698:/usr/include/c++/4.8.2/bits/locale_facets.h ****       static const size_t      table_size = 1 + static_cast<unsigned char>(-1);
 699:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 700:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 701:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Constructor performs initialization.
 702:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 703:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This is the constructor provided by the standard.
 704:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 705:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __table If non-zero, table is used as the per-char mask.
 706:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *               Else classic_table() is used.
 707:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __del   If true, passes ownership of table to this facet.
 708:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __refs  Passed to the base facet class.
 709:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 710:/usr/include/c++/4.8.2/bits/locale_facets.h ****       explicit
 711:/usr/include/c++/4.8.2/bits/locale_facets.h ****       ctype(const mask* __table = 0, bool __del = false, size_t __refs = 0);
 712:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 713:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 714:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Constructor performs static initialization.
 715:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 716:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This constructor is used to construct the initial C locale facet.
 717:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 718:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __cloc  Handle to C locale data.
 719:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __table If non-zero, table is used as the per-char mask.
 720:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __del   If true, passes ownership of table to this facet.
 721:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __refs  Passed to the base facet class.
 722:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 723:/usr/include/c++/4.8.2/bits/locale_facets.h ****       explicit
 724:/usr/include/c++/4.8.2/bits/locale_facets.h ****       ctype(__c_locale __cloc, const mask* __table = 0, bool __del = false,
 725:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	    size_t __refs = 0);
 726:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 727:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 728:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Test char classification.
 729:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 730:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function compares the mask table[c] to @a __m.
 731:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 732:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char to compare the mask of.
 733:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 734:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  True if __m & table[__c] is true, false otherwise.
 735:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 736:/usr/include/c++/4.8.2/bits/locale_facets.h ****       inline bool
 737:/usr/include/c++/4.8.2/bits/locale_facets.h ****       is(mask __m, char __c) const;
 738:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 739:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 740:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Return a mask array.
 741:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 742:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function finds the mask for each char in the range [lo, hi) and
 743:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  successively writes it to vec.  vec must have as many elements as
 744:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  the char array.
 745:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 746:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 747:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 748:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __vec  Pointer to an array of mask storage.
 749:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 750:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 751:/usr/include/c++/4.8.2/bits/locale_facets.h ****       inline const char*
 752:/usr/include/c++/4.8.2/bits/locale_facets.h ****       is(const char* __lo, const char* __hi, mask* __vec) const;
 753:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 754:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 755:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Find char matching a mask
 756:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 757:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function searches for and returns the first char in [lo,hi) for
 758:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  which is(m,char) is true.
 759:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 760:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 761:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 762:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 763:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  Pointer to a matching char if found, else @a __hi.
 764:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 765:/usr/include/c++/4.8.2/bits/locale_facets.h ****       inline const char*
 766:/usr/include/c++/4.8.2/bits/locale_facets.h ****       scan_is(mask __m, const char* __lo, const char* __hi) const;
 767:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 768:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 769:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Find char not matching a mask
 770:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 771:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function searches for and returns a pointer to the first char
 772:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  in [__lo,__hi) for which is(m,char) is false.
 773:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 774:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 775:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 776:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 777:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  Pointer to a non-matching char if found, else @a __hi.
 778:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 779:/usr/include/c++/4.8.2/bits/locale_facets.h ****       inline const char*
 780:/usr/include/c++/4.8.2/bits/locale_facets.h ****       scan_not(mask __m, const char* __lo, const char* __hi) const;
 781:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 782:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 783:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
 784:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 785:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the char argument to uppercase if possible.
 786:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  If not possible (for example, '2'), returns the argument.
 787:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 788:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  toupper() acts as if it returns ctype<char>::do_toupper(c).
 789:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_toupper() must always return the same result for the same input.
 790:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 791:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char to convert.
 792:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The uppercase char if convertible, else @a __c.
 793:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 794:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char_type
 795:/usr/include/c++/4.8.2/bits/locale_facets.h ****       toupper(char_type __c) const
 796:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_toupper(__c); }
 797:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 798:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 799:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
 800:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 801:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char in the range [__lo,__hi) to uppercase
 802:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  if possible.  Other chars remain untouched.
 803:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 804:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  toupper() acts as if it returns ctype<char>:: do_toupper(__lo, __hi).
 805:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_toupper() must always return the same result for the same input.
 806:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 807:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 808:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 809:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 810:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 811:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 812:/usr/include/c++/4.8.2/bits/locale_facets.h ****       toupper(char_type *__lo, const char_type* __hi) const
 813:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_toupper(__lo, __hi); }
 814:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 815:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 816:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
 817:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 818:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the char argument to lowercase if possible.
 819:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  If not possible (for example, '2'), returns the argument.
 820:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 821:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  tolower() acts as if it returns ctype<char>::do_tolower(__c).
 822:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_tolower() must always return the same result for the same input.
 823:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 824:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char to convert.
 825:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The lowercase char if convertible, else @a __c.
 826:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 827:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char_type
 828:/usr/include/c++/4.8.2/bits/locale_facets.h ****       tolower(char_type __c) const
 829:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_tolower(__c); }
 830:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 831:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 832:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
 833:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 834:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts each char in the range [lo,hi) to lowercase
 835:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  if possible.  Other chars remain untouched.
 836:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 837:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  tolower() acts as if it returns ctype<char>:: do_tolower(__lo, __hi).
 838:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_tolower() must always return the same result for the same input.
 839:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 840:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 841:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 842:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  @a __hi.
 843:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 844:/usr/include/c++/4.8.2/bits/locale_facets.h ****       const char_type*
 845:/usr/include/c++/4.8.2/bits/locale_facets.h ****       tolower(char_type* __lo, const char_type* __hi) const
 846:/usr/include/c++/4.8.2/bits/locale_facets.h ****       { return this->do_tolower(__lo, __hi); }
 847:/usr/include/c++/4.8.2/bits/locale_facets.h **** 
 848:/usr/include/c++/4.8.2/bits/locale_facets.h ****       /**
 849:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @brief  Widen char
 850:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 851:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function converts the char to char_type using the simplest
 852:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  reasonable transformation.  For an underived ctype<char> facet, the
 853:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  argument will be returned unchanged.
 854:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 855:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  This function works as if it returns ctype<char>::do_widen(c).
 856:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  do_widen() must always return the same result for the same input.
 857:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 858:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 859:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  codecvt for that.
 860:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *
 861:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @param __c  The char to convert.
 862:/usr/include/c++/4.8.2/bits/locale_facets.h ****        *  @return  The converted character.
 863:/usr/include/c++/4.8.2/bits/locale_facets.h ****       */
 864:/usr/include/c++/4.8.2/bits/locale_facets.h ****       char_type
 865:/usr/include/c++/4.8.2/bits/locale_facets.h ****       widen(char __c) const
 866:/usr/include/c++/4.8.2/bits/locale_facets.h ****       {
 867:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	if (_M_widen_ok)
 2980              		.loc 12 867 0
 2981 0335 41807C24 		cmp	BYTE PTR [r12+56], 0	# MEM[(const struct ctype *)_161]._M_widen_ok,
 2981      3800
 2982 033b 0F84D201 		je	.L149	#,
 2982      0000
 868:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	  return _M_widen[static_cast<unsigned char>(__c)];
 2983              		.loc 12 868 0
 2984 0341 410FB644 		movzx	eax, BYTE PTR [r12+67]	# D.37217, MEM[(const struct ctype *)_161]._M_widen
 2984      2443
 2985              	.LVL183:
 2986              	.L150:
 2987              	.LBE1466:
 2988              	.LBE1465:
 2989              	.LBE1461:
 2990              		.loc 1 565 0
 2991 0347 0FBEF0   		movsx	esi, al	# D.37198, D.37217
 2992 034a 4C89F7   		mov	rdi, r14	#, D.37199
 2993 034d E8000000 		call	_ZNSo3putEc	#
 2993      00
 2994              	.LVL184:
 2995              	.LBB1470:
 2996              	.LBB1471:
 566:/usr/include/c++/4.8.2/ostream **** 
 567:/usr/include/c++/4.8.2/ostream ****   /**
 568:/usr/include/c++/4.8.2/ostream ****    *  @brief  Write a null character into the output sequence.
 569:/usr/include/c++/4.8.2/ostream ****    *
 570:/usr/include/c++/4.8.2/ostream ****    *  <em>Null character</em> is @c CharT() by definition.  For CharT
 571:/usr/include/c++/4.8.2/ostream ****    *  of @c char, this correctly writes the ASCII @c NUL character
 572:/usr/include/c++/4.8.2/ostream ****    *  string terminator.
 573:/usr/include/c++/4.8.2/ostream ****   */
 574:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 575:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<_CharT, _Traits>&
 576:/usr/include/c++/4.8.2/ostream ****     ends(basic_ostream<_CharT, _Traits>& __os)
 577:/usr/include/c++/4.8.2/ostream ****     { return __os.put(_CharT()); }
 578:/usr/include/c++/4.8.2/ostream **** 
 579:/usr/include/c++/4.8.2/ostream ****   /**
 580:/usr/include/c++/4.8.2/ostream ****    *  @brief  Flushes the output stream.
 581:/usr/include/c++/4.8.2/ostream ****    *
 582:/usr/include/c++/4.8.2/ostream ****    *  This manipulator simply calls the stream's @c flush() member function.
 583:/usr/include/c++/4.8.2/ostream ****   */
 584:/usr/include/c++/4.8.2/ostream ****   template<typename _CharT, typename _Traits>
 585:/usr/include/c++/4.8.2/ostream ****     inline basic_ostream<_CharT, _Traits>&
 586:/usr/include/c++/4.8.2/ostream ****     flush(basic_ostream<_CharT, _Traits>& __os)
 587:/usr/include/c++/4.8.2/ostream ****     { return __os.flush(); }
 2997              		.loc 1 587 0
 2998 0352 4889C7   		mov	rdi, rax	#, D.37199
 2999 0355 E8000000 		call	_ZNSo5flushEv	#
 2999      00
 3000              	.LEHE5:
 3001              	.LVL185:
 3002              	.LBE1471:
 3003              	.LBE1470:
 3004              	.LBE1474:
 3005              	.LBE1477:
 3006              	.LBE1481:
 3007              	.LBB1482:
 3008              	.LBB1483:
 3009              	.LBB1484:
 3010              	.LBB1485:
 3011              	.LBB1486:
 3012              	.LBB1487:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 3013              		.loc 5 293 0
 3014 035a 4C8B5424 		mov	r10, QWORD PTR [rsp+32]	# D.37201, D.33253._M_dataplus._M_p
 3014      20
 3015              	.LBE1487:
 3016              	.LBE1486:
 3017              	.LBE1485:
 3018              	.LBE1484:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3019              		.loc 5 539 0
 3020 035f 498D7AE8 		lea	rdi, [r10-24]	# D.37204,
 3021              	.LVL186:
 3022              	.LBB1488:
 3023              	.LBB1489:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3024              		.loc 5 240 0
 3025 0363 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.37204,
 3025      000000
 3026 036a 0F857101 		jne	.L204	#,
 3026      0000
 3027              	.LVL187:
 3028              	.L152:
 3029              	.LBE1489:
 3030              	.LBE1488:
 3031              	.LBE1483:
 3032              	.LBE1482:
 118:saya.cpp      ****       }
 119:saya.cpp      ****       ostr << "\n";
 120:saya.cpp      ****     }
 121:saya.cpp      ****     std::cout << ostr.str()<<std::endl;
 122:saya.cpp      ****     usleep(10000);
 3033              		.loc 8 122 0
 3034 0370 BF102700 		mov	edi, 10000	#,
 3034      00
 3035              	.LEHB6:
 3036 0375 E8000000 		call	usleep	#
 3036      00
 3037              	.LEHE6:
 3038              	.LVL188:
 3039              	.LBB1506:
 3040              	.LBB1507:
 3041              	.LBB1508:
 3042              	.LBB1509:
 3043              	.LBB1510:
 3044              	.LBB1511:
 3045              	.LBB1512:
 3046              	.LBB1513:
 3047              	.LBB1514:
 3048              	.LBB1515:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 3049              		.loc 5 293 0
 3050 037a 4C8B8424 		mov	r8, QWORD PTR [rsp+176]	# D.37201, MEM[(const struct basic_string *)&ostr + 80B]._M_dataplus._
 3050      B0000000 
 3051              	.LBE1515:
 3052              	.LBE1514:
 3053              	.LBE1513:
 3054              	.LBE1512:
 3055              	.LBE1511:
 3056              	.LBE1510:
 3057              	.LBE1509:
 3058              	.LBE1508:
 426:/usr/include/c++/4.8.2/sstream **** 
 427:/usr/include/c++/4.8.2/sstream ****       /**
 428:/usr/include/c++/4.8.2/sstream ****        *  @brief  Starts with an existing string buffer.
 429:/usr/include/c++/4.8.2/sstream ****        *  @param  __str  A string to copy as a starting buffer.
 430:/usr/include/c++/4.8.2/sstream ****        *  @param  __mode  Whether the buffer can read, or write, or both.
 431:/usr/include/c++/4.8.2/sstream ****        *
 432:/usr/include/c++/4.8.2/sstream ****        *  @c ios_base::out is automatically included in @a mode.
 433:/usr/include/c++/4.8.2/sstream ****        *
 434:/usr/include/c++/4.8.2/sstream ****        *  Initializes @c sb using @a str and @c mode|out, and passes @c &sb
 435:/usr/include/c++/4.8.2/sstream ****        *  to the base class initializer.
 436:/usr/include/c++/4.8.2/sstream ****        *
 437:/usr/include/c++/4.8.2/sstream ****        *  That's a lie.  We initialize the base class with NULL, because the
 438:/usr/include/c++/4.8.2/sstream ****        *  string class does its own memory management.
 439:/usr/include/c++/4.8.2/sstream ****       */
 440:/usr/include/c++/4.8.2/sstream ****       explicit
 441:/usr/include/c++/4.8.2/sstream ****       basic_ostringstream(const __string_type& __str,
 442:/usr/include/c++/4.8.2/sstream **** 			  ios_base::openmode __mode = ios_base::out)
 443:/usr/include/c++/4.8.2/sstream ****       : __ostream_type(), _M_stringbuf(__str, __mode | ios_base::out)
 444:/usr/include/c++/4.8.2/sstream ****       { this->init(&_M_stringbuf); }
 445:/usr/include/c++/4.8.2/sstream **** 
 446:/usr/include/c++/4.8.2/sstream ****       /**
 447:/usr/include/c++/4.8.2/sstream ****        *  @brief  The destructor does nothing.
 448:/usr/include/c++/4.8.2/sstream ****        *
 449:/usr/include/c++/4.8.2/sstream ****        *  The buffer is deallocated by the stringbuf object, not the
 450:/usr/include/c++/4.8.2/sstream ****        *  formatting stream.
 451:/usr/include/c++/4.8.2/sstream ****       */
 452:/usr/include/c++/4.8.2/sstream ****       ~basic_ostringstream()
 453:/usr/include/c++/4.8.2/sstream ****       { }
 3059              		.loc 4 453 0
 3060 0382 48C74424 		mov	QWORD PTR [rsp+96], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24	# ost
 3060      60000000 
 3060      00
 3061 038b 48C78424 		mov	QWORD PTR [rsp+184], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64	# ME
 3061      B8000000 
 3061      00000000 
 3062              	.LVL189:
 3063              	.LBB1546:
 3064              	.LBB1542:
  64:/usr/include/c++/4.8.2/sstream ****     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
 3065              		.loc 4 64 0
 3066 0397 48C74424 		mov	QWORD PTR [rsp+104], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# MEM[(s
 3066      68000000 
 3066      00
 3067              	.LVL190:
 3068              	.LBB1535:
 3069              	.LBB1532:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3070              		.loc 5 539 0
 3071 03a0 498D78E8 		lea	rdi, [r8-24]	# D.37204,
 3072              	.LVL191:
 3073              	.LBB1516:
 3074              	.LBB1517:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3075              		.loc 5 240 0
 3076 03a4 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.37204,
 3076      000000
 3077 03ab 0F85FA00 		jne	.L205	#,
 3077      0000
 3078              	.LVL192:
 3079              	.L157:
 3080              	.LBE1517:
 3081              	.LBE1516:
 3082              	.LBE1532:
 3083              	.LBE1535:
 3084              	.LBB1536:
 3085              	.LBB1537:
 198:/usr/include/c++/4.8.2/streambuf ****       { }
 3086              		.loc 6 198 0
 3087 03b1 488DBC24 		lea	rdi, [rsp+160]	# tmp290,
 3087      A0000000 
 3088              	.LBE1537:
 3089              	.LBE1536:
 3090              	.LBE1542:
 3091              	.LBE1546:
 3092              	.LBE1507:
 3093              	.LBE1506:
 3094              	.LBE1575:
 108:saya.cpp      ****   for(int t = 0;;++t){
 3095              		.loc 8 108 0
 3096 03b9 83C301   		add	ebx, 1	# t,
 3097              	.LVL193:
 3098              	.LBB1576:
 3099              	.LBB1557:
 3100              	.LBB1554:
 3101              	.LBB1547:
 3102              	.LBB1543:
 3103              	.LBB1539:
 3104              	.LBB1538:
 198:/usr/include/c++/4.8.2/streambuf ****       { }
 3105              		.loc 6 198 0
 3106 03bc 48C74424 		mov	QWORD PTR [rsp+104], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct
 3106      68000000 
 3106      00
 3107 03c5 E8000000 		call	_ZNSt6localeD1Ev	#
 3107      00
 3108              	.LVL194:
 3109              	.LBE1538:
 3110              	.LBE1539:
 3111              	.LBE1543:
 3112              	.LBE1547:
 3113              	.LBB1548:
 3114              	.LBB1549:
  93:/usr/include/c++/4.8.2/ostream ****       ~basic_ostream() { }
 3115              		.loc 1 93 0
 3116 03ca 498B7FE8 		mov	rdi, QWORD PTR [r15-24]	# MEM[(long int *)_87 + -24B], MEM[(long int *)_87 + -24B]
 3117 03ce 4C897C24 		mov	QWORD PTR [rsp+96], r15	# MEM[(struct basic_ostream *)&ostr]._vptr.basic_ostream, D.37206
 3117      60
 3118 03d3 488B1500 		mov	rdx, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+16]	# tmp363, MEM[(co
 3118      000000
 3119 03da 4889543C 		mov	QWORD PTR [rsp+96+rdi], rdx	# _189->D.29168._vptr.ios_base, tmp363
 3119      60
 3120              	.LVL195:
 3121              	.LBE1549:
 3122              	.LBE1548:
 3123              	.LBB1550:
 3124              	.LBB1551:
 276:/usr/include/c++/4.8.2/bits/basic_ios.h ****       ~basic_ios() { }
 3125              		.loc 3 276 0
 3126 03df 488DBC24 		lea	rdi, [rsp+184]	# tmp293,
 3126      B8000000 
 3127              	.LVL196:
 3128 03e7 48C78424 		mov	QWORD PTR [rsp+184], OFFSET FLAT:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16	# MEM[(struct basic_
 3128      B8000000 
 3128      00000000 
 3129 03f3 E8000000 		call	_ZNSt8ios_baseD2Ev	#
 3129      00
 3130              	.LVL197:
 3131              	.LBE1551:
 3132              	.LBE1550:
 3133              	.LBE1554:
 3134              	.LBE1557:
 3135              	.LBE1576:
 123:saya.cpp      ****   }
 3136              		.loc 8 123 0
 3137 03f8 E929FCFF 		jmp	.L161	#
 3137      FF
 3138              	.LVL198:
 3139 03fd 0F1F00   		.p2align 4,,10
 3140              		.p2align 3
 3141              	.L199:
 3142              	.LBB1577:
 3143              	.LBB1558:
 3144              	.LBB1276:
 3145              	.LBB1275:
 3146              	.LBB1272:
 3147              	.LBB1271:
 3148              	.LBB1269:
  99:saya.cpp      ****   if(global_clock > t) fill_initial_condition();
 3149              		.loc 8 99 0
 3150 0400 E8000000 		call	_Z22fill_initial_conditionv	#
 3150      00
 3151              	.LVL199:
 3152 0405 448B1500 		mov	r10d, DWORD PTR global_clock[rip]	# D.37198, global_clock
 3152      000000
 3153 040c E9AFFDFF 		jmp	.L113	#
 3153      FF
 3154              	.LVL200:
 3155              	.L173:
 3156              	.LBE1269:
 3157              	.LBE1271:
 3158              	.LBE1272:
 3159              	.LBE1275:
 3160              	.LBE1276:
 3161              	.LBE1558:
 3162              	.LBB1559:
 3163              	.LBB1253:
 424:/usr/include/c++/4.8.2/sstream ****       : __ostream_type(), _M_stringbuf(__mode | ios_base::out)
 3164              		.loc 4 424 0
 3165 0411 488D7C24 		lea	rdi, [rsp+104]	# tmp191,
 3165      68
 3166 0416 4889C3   		mov	rbx, rax	# tmp193,
 3167              	.LVL201:
 3168 0419 C5F877   		vzeroupper
 3169 041c E8000000 		call	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev	#
 3169      00
 3170              	.LVL202:
 3171              	.LBB1249:
 3172              	.LBB1250:
  93:/usr/include/c++/4.8.2/ostream ****       ~basic_ostream() { }
 3173              		.loc 1 93 0
 3174 0421 4D8B5FE8 		mov	r11, QWORD PTR [r15-24]	# MEM[(long int *)_87 + -24B], MEM[(long int *)_87 + -24B]
 3175 0425 488B3500 		mov	rsi, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+16]	# tmp329, MEM[(co
 3175      000000
 3176 042c 4C897C24 		mov	QWORD PTR [rsp+96], r15	# MEM[(struct basic_ostream *)&ostr]._vptr.basic_ostream, D.37206
 3176      60
 3177 0431 4A89741C 		mov	QWORD PTR [rsp+96+r11], rsi	# _75->D.29168._vptr.ios_base, tmp329
 3177      60
 3178              	.LVL203:
 3179              	.L111:
 3180              	.LBE1250:
 3181              	.LBE1249:
 3182              	.LBB1251:
 3183              	.LBB1252:
 276:/usr/include/c++/4.8.2/bits/basic_ios.h ****       ~basic_ios() { }
 3184              		.loc 3 276 0
 3185 0436 488DBC24 		lea	rdi, [rsp+184]	# tmp200,
 3185      B8000000 
 3186              	.LVL204:
 3187 043e 48C78424 		mov	QWORD PTR [rsp+184], OFFSET FLAT:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16	# MEM[(struct basic_
 3187      B8000000 
 3187      00000000 
 3188 044a E8000000 		call	_ZNSt8ios_baseD2Ev	#
 3188      00
 3189              	.LVL205:
 3190 044f 4889DF   		mov	rdi, rbx	#, tmp197
 3191              	.LEHB7:
 3192 0452 E8000000 		call	_Unwind_Resume	#
 3192      00
 3193              	.LVL206:
 3194              	.L172:
 3195 0457 4889C3   		mov	rbx, rax	# tmp197,
 3196              	.LVL207:
 3197 045a C5F877   		vzeroupper
 3198 045d EBD7     		jmp	.L111	#
 3199              	.LVL208:
 3200              	.L170:
 3201 045f 4889C3   		mov	rbx, rax	# tmp273,
 3202              	.LVL209:
 3203 0462 C5F877   		vzeroupper
 3204              	.L147:
 3205              	.LBE1252:
 3206              	.LBE1251:
 3207              	.LBE1253:
 3208              	.LBE1559:
 3209              		.loc 8 123 0
 3210 0465 488D7C24 		lea	rdi, [rsp+96]	# tmp367,
 3210      60
 3211 046a E8000000 		call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev	#
 3211      00
 3212              	.LVL210:
 3213 046f 4889DF   		mov	rdi, rbx	#, tmp273
 3214 0472 E8000000 		call	_Unwind_Resume	#
 3214      00
 3215              	.LEHE7:
 3216              	.LVL211:
 3217              	.L125:
 3218              	.LBB1560:
 3219              	.LBB1445:
 3220              	.LBB1440:
 3221              	.LBB1365:
 3222              	.LBB1333:
 3223              	.LBB1328:
 3224              	.LBB1325:
 3225              	.LBB1322:
 3226              	.LBB1319:
 3227              	.LBB1316:
 3228              	.LBB1314:
 3229              	.LBB1305:
 3230              	.LBB1302:
 3231              	.LBB1298:
 3232              	.LBB1299:
 244:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 245:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 246:/usr/include/c++/4.8.2/bits/char_traits.h ****       eq(const char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
 247:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __c1 == __c2; }
 248:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 249:/usr/include/c++/4.8.2/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 250:/usr/include/c++/4.8.2/bits/char_traits.h ****       lt(const char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
 251:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __c1 < __c2; }
 252:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 253:/usr/include/c++/4.8.2/bits/char_traits.h ****       static int
 254:/usr/include/c++/4.8.2/bits/char_traits.h ****       compare(const char_type* __s1, const char_type* __s2, size_t __n)
 255:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __builtin_memcmp(__s1, __s2, __n); }
 256:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 257:/usr/include/c++/4.8.2/bits/char_traits.h ****       static size_t
 258:/usr/include/c++/4.8.2/bits/char_traits.h ****       length(const char_type* __s)
 259:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return __builtin_strlen(__s); }
 260:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 261:/usr/include/c++/4.8.2/bits/char_traits.h ****       static const char_type*
 262:/usr/include/c++/4.8.2/bits/char_traits.h ****       find(const char_type* __s, size_t __n, const char_type& __a)
 263:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n)); }
 264:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 265:/usr/include/c++/4.8.2/bits/char_traits.h ****       static char_type*
 266:/usr/include/c++/4.8.2/bits/char_traits.h ****       move(char_type* __s1, const char_type* __s2, size_t __n)
 267:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n)); }
 268:/usr/include/c++/4.8.2/bits/char_traits.h **** 
 269:/usr/include/c++/4.8.2/bits/char_traits.h ****       static char_type*
 270:/usr/include/c++/4.8.2/bits/char_traits.h ****       copy(char_type* __s1, const char_type* __s2, size_t __n)
 271:/usr/include/c++/4.8.2/bits/char_traits.h ****       { return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n)); }
 3233              		.loc 11 271 0
 3234 0477 4C89D7   		mov	rdi, r10	#, D.37201
 3235 047a 4C89EA   		mov	rdx, r13	#, __dnew
 3236 047d 4C89E6   		mov	rsi, r12	#, D.37207
 3237 0480 E8000000 		call	memcpy	#
 3237      00
 3238              	.LVL212:
 3239 0485 4989C2   		mov	r10, rax	# D.37201,
 3240 0488 E933FEFF 		jmp	.L126	#
 3240      FF
 3241              	.LVL213:
 3242              	.L174:
 3243 048d 4C8D6424 		lea	r12, [rsp+64]	# tmp303,
 3243      40
 3244 0492 4889C3   		mov	rbx, rax	# tmp261,
 3245              	.LVL214:
 3246 0495 C5F877   		vzeroupper
 3247              	.L145:
 3248              	.LVL215:
 3249              	.LBE1299:
 3250              	.LBE1298:
 3251              	.LBE1302:
 3252              	.LBE1305:
 3253              	.LBE1314:
 3254              	.LBE1316:
 3255              	.LBE1319:
 3256              	.LBE1322:
 3257              	.LBE1325:
 3258              	.LBE1328:
 3259              	.LBE1333:
 3260              	.LBE1365:
 3261              	.LBB1366:
 3262              	.LBB1367:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3263              		.loc 5 539 0
 3264 0498 4C8B5C24 		mov	r11, QWORD PTR [rsp+32]	# tmp357, D.33253._M_dataplus._M_p
 3264      20
 3265 049d 4C89E6   		mov	rsi, r12	#, tmp303
 3266 04a0 498D7BE8 		lea	rdi, [r11-24]	# D.37204,
 3267 04a4 E8000000 		call	_ZNSs4_Rep10_M_disposeERKSaIcE	#
 3267      00
 3268              	.LVL216:
 3269 04a9 EBBA     		jmp	.L147	#
 3270              	.LVL217:
 3271              	.L205:
 3272              	.LBE1367:
 3273              	.LBE1366:
 3274              	.LBE1440:
 3275              	.LBE1445:
 3276              	.LBE1560:
 3277              	.LBB1561:
 3278              	.LBB1555:
 3279              	.LBB1552:
 3280              	.LBB1544:
 3281              	.LBB1540:
 3282              	.LBB1533:
 3283              	.LBB1530:
 3284              	.LBB1528:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 3285              		.loc 5 246 0
 3286 04ab 4C8D7710 		lea	r14, [rdi+16]	# D.37210,
 3287              	.LVL218:
 3288              	.LBB1518:
 3289              	.LBB1519:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 3290              		.loc 7 81 0
 3291 04af 41B90000 		mov	r9d, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp286,
 3291      0000
 3292 04b5 4D85C9   		test	r9, r9	# tmp286
 3293 04b8 0F848100 		je	.L158	#,
 3293      0000
 3294              	.LVL219:
 3295              	.LBB1520:
 3296              	.LBB1521:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 3297              		.loc 7 49 0
 3298 04be 41BAFFFF 		mov	r10d, -1	# D.37211,
 3298      FFFF
 3299 04c4 F0450FC1 		lock xadd	DWORD PTR [r14], r10d	#,* D.37210, D.37211
 3299      16
 3300              	.LVL220:
 3301              	.L159:
 3302              	.LBE1521:
 3303              	.LBE1520:
 3304              	.LBE1519:
 3305              	.LBE1518:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 3306              		.loc 5 245 0
 3307 04c9 4585D2   		test	r10d, r10d	# D.37212
 3308 04cc 0F8FDFFE 		jg	.L157	#,
 3308      FFFF
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 3309              		.loc 5 249 0
 3310 04d2 488D7424 		lea	rsi, [rsp+64]	# tmp361,
 3310      40
 3311 04d7 E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 3311      00
 3312              	.LVL221:
 3313 04dc E9D0FEFF 		jmp	.L157	#
 3313      FF
 3314              	.LVL222:
 3315              	.L204:
 3316              	.LBE1528:
 3317              	.LBE1530:
 3318              	.LBE1533:
 3319              	.LBE1540:
 3320              	.LBE1544:
 3321              	.LBE1552:
 3322              	.LBE1555:
 3323              	.LBE1561:
 3324              	.LBB1562:
 3325              	.LBB1504:
 3326              	.LBB1502:
 3327              	.LBB1500:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 3328              		.loc 5 246 0
 3329 04e1 488D5710 		lea	rdx, [rdi+16]	# D.37210,
 3330              	.LVL223:
 3331              	.LBB1490:
 3332              	.LBB1491:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 3333              		.loc 7 81 0
 3334 04e5 41BB0000 		mov	r11d, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp282,
 3334      0000
 3335 04eb 4D85DB   		test	r11, r11	# tmp282
 3336 04ee 743F     		je	.L153	#,
 3337              	.LVL224:
 3338              	.LBB1492:
 3339              	.LBB1493:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 3340              		.loc 7 49 0
 3341 04f0 41BDFFFF 		mov	r13d, -1	# D.37211,
 3341      FFFF
 3342 04f6 F0440FC1 		lock xadd	DWORD PTR [rdx], r13d	#,* D.37210, D.37211
 3342      2A
 3343              	.LVL225:
 3344              	.L154:
 3345              	.LBE1493:
 3346              	.LBE1492:
 3347              	.LBE1491:
 3348              	.LBE1490:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 3349              		.loc 5 245 0
 3350 04fb 4585ED   		test	r13d, r13d	# D.37212
 3351 04fe 0F8F6CFE 		jg	.L152	#,
 3351      FFFF
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 3352              		.loc 5 249 0
 3353 0504 488D7424 		lea	rsi, [rsp+64]	# tmp359,
 3353      40
 3354 0509 E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 3354      00
 3355              	.LVL226:
 3356 050e E95DFEFF 		jmp	.L152	#
 3356      FF
 3357              	.LVL227:
 3358              	.L149:
 3359              	.LBE1500:
 3360              	.LBE1502:
 3361              	.LBE1504:
 3362              	.LBE1562:
 3363              	.LBB1563:
 3364              	.LBB1478:
 3365              	.LBB1475:
 3366              	.LBB1472:
 3367              	.LBB1468:
 3368              	.LBB1467:
 869:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	this->_M_widen_init();
 3369              		.loc 12 869 0
 3370 0513 4C89E7   		mov	rdi, r12	#, D.37215
 3371              	.LEHB8:
 3372 0516 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv	#
 3372      00
 3373              	.LVL228:
 870:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	return this->do_widen(__c);
 3374              		.loc 12 870 0
 3375 051b 498B0424 		mov	rax, QWORD PTR [r12]	# MEM[(const struct ctype *)_161].D.26081._vptr.facet, MEM[(const struct 
 3376 051f BE0A0000 		mov	esi, 10	#,
 3376      00
 3377 0524 4C89E7   		mov	rdi, r12	#, D.37215
 3378 0527 FF5030   		call	[QWORD PTR [rax+48]]	# MEM[(int (*__vtbl_ptr_type) () *)_170 + 48B]
 3379              	.LVL229:
 3380 052a E918FEFF 		jmp	.L150	#
 3380      FF
 3381              	.LVL230:
 3382              	.L153:
 3383              	.LBE1467:
 3384              	.LBE1468:
 3385              	.LBE1472:
 3386              	.LBE1475:
 3387              	.LBE1478:
 3388              	.LBE1563:
 3389              	.LBB1564:
 3390              	.LBB1505:
 3391              	.LBB1503:
 3392              	.LBB1501:
 3393              	.LBB1499:
 3394              	.LBB1498:
 3395              	.LBB1494:
 3396              	.LBB1495:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 3397              		.loc 7 67 0
 3398 052f 418B72F8 		mov	esi, DWORD PTR [r10-8]	# __result, MEM[(_Atomic_word *)_47 + -8B]
 3399              	.LVL231:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3400              		.loc 7 68 0
 3401 0533 8D4EFF   		lea	ecx, [rsi-1]	# tmp283,
 3402              	.LBE1495:
 3403              	.LBE1494:
 3404              		.loc 7 84 0
 3405 0536 4189F5   		mov	r13d, esi	# D.37212, __result
 3406              	.LBB1497:
 3407              	.LBB1496:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3408              		.loc 7 68 0
 3409 0539 41894AF8 		mov	DWORD PTR [r10-8], ecx	# MEM[(_Atomic_word *)_47 + -8B], tmp283
 3410 053d EBBC     		jmp	.L154	#
 3411              	.LVL232:
 3412              	.L158:
 3413              	.LBE1496:
 3414              	.LBE1497:
 3415              	.LBE1498:
 3416              	.LBE1499:
 3417              	.LBE1501:
 3418              	.LBE1503:
 3419              	.LBE1505:
 3420              	.LBE1564:
 3421              	.LBB1565:
 3422              	.LBB1556:
 3423              	.LBB1553:
 3424              	.LBB1545:
 3425              	.LBB1541:
 3426              	.LBB1534:
 3427              	.LBB1531:
 3428              	.LBB1529:
 3429              	.LBB1527:
 3430              	.LBB1526:
 3431              	.LBB1522:
 3432              	.LBB1523:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 3433              		.loc 7 67 0
 3434 053f 458B60F8 		mov	r12d, DWORD PTR [r8-8]	# __result, MEM[(_Atomic_word *)_192 + -8B]
 3435              	.LVL233:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3436              		.loc 7 68 0
 3437 0543 418D4424 		lea	eax, [r12-1]	# tmp287,
 3437      FF
 3438              	.LBE1523:
 3439              	.LBE1522:
 3440              		.loc 7 84 0
 3441 0548 4589E2   		mov	r10d, r12d	# D.37212, __result
 3442              	.LBB1525:
 3443              	.LBB1524:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3444              		.loc 7 68 0
 3445 054b 418940F8 		mov	DWORD PTR [r8-8], eax	# MEM[(_Atomic_word *)_192 + -8B], tmp287
 3446 054f E975FFFF 		jmp	.L159	#
 3446      FF
 3447              	.LVL234:
 3448              	.L203:
 3449              	.LBE1524:
 3450              	.LBE1525:
 3451              	.LBE1526:
 3452              	.LBE1527:
 3453              	.LBE1529:
 3454              	.LBE1531:
 3455              	.LBE1534:
 3456              	.LBE1541:
 3457              	.LBE1545:
 3458              	.LBE1553:
 3459              	.LBE1556:
 3460              	.LBE1565:
 3461              	.LBB1566:
 3462              	.LBB1479:
 3463              	.LBB1476:
 3464              	.LBB1473:
 3465              	.LBB1469:
 3466              	.LBB1464:
  49:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	__throw_bad_cast();
 3467              		.loc 3 49 0
 3468 0554 E8000000 		call	_ZSt16__throw_bad_castv	#
 3468      00
 3469              	.LEHE8:
 3470              	.LVL235:
 3471              	.L171:
 3472              	.LBE1464:
 3473              	.LBE1469:
 3474              	.LBE1473:
 3475              	.LBE1476:
 3476              	.LBE1479:
 3477              	.LBE1566:
 3478              	.LBB1567:
 3479              	.LBB1568:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3480              		.loc 5 539 0
 3481 0559 4C8B7C24 		mov	r15, QWORD PTR [rsp+32]	# tmp365, D.33253._M_dataplus._M_p
 3481      20
 3482 055e 488D7424 		lea	rsi, [rsp+64]	# tmp366,
 3482      40
 3483 0563 4889C3   		mov	rbx, rax	# tmp297,
 3484              	.LVL236:
 3485 0566 498D7FE8 		lea	rdi, [r15-24]	# D.37204,
 3486 056a C5F877   		vzeroupper
 3487 056d E8000000 		call	_ZNSs4_Rep10_M_disposeERKSaIcE	#
 3487      00
 3488              	.LVL237:
 3489 0572 E9EEFEFF 		jmp	.L147	#
 3489      FF
 3490              	.LVL238:
 3491              	.L202:
 3492              	.LBE1568:
 3493              	.LBE1567:
 3494              	.LBB1569:
 3495              	.LBB1446:
 3496              	.LBB1441:
 3497              	.LBB1368:
 3498              	.LBB1363:
 3499              	.LBB1361:
 3500              	.LBB1359:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 3501              		.loc 5 246 0
 3502 0577 488D7710 		lea	rsi, [rdi+16]	# D.37210,
 3503              	.LVL239:
 3504              	.LBB1349:
 3505              	.LBB1350:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 3506              		.loc 7 81 0
 3507 057b B9000000 		mov	ecx, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp252,
 3507      00
 3508 0580 4885C9   		test	rcx, rcx	# tmp252
 3509 0583 7441     		je	.L141	#,
 3510              	.LVL240:
 3511              	.LBB1351:
 3512              	.LBB1352:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 3513              		.loc 7 49 0
 3514 0585 41B8FFFF 		mov	r8d, -1	# D.37211,
 3514      FFFF
 3515 058b F0440FC1 		lock xadd	DWORD PTR [rsi], r8d	#,* D.37210, D.37211
 3515      06
 3516              	.LVL241:
 3517              	.L142:
 3518              	.LBE1352:
 3519              	.LBE1351:
 3520              	.LBE1350:
 3521              	.LBE1349:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 3522              		.loc 5 245 0
 3523 0590 4585C0   		test	r8d, r8d	# D.37212
 3524 0593 0F8F6EFD 		jg	.L132	#,
 3524      FFFF
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 3525              		.loc 5 249 0
 3526 0599 488D7424 		lea	rsi, [rsp+30]	# tmp350,
 3526      1E
 3527              	.LVL242:
 3528 059e E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 3528      00
 3529              	.LVL243:
 3530 05a3 E95FFDFF 		jmp	.L132	#
 3530      FF
 3531              	.LVL244:
 3532              	.L176:
 3533              	.L191:
 3534              	.LBE1359:
 3535              	.LBE1361:
 3536              	.LBE1363:
 3537              	.LBE1368:
 3538              	.LBB1369:
 3539              	.LBB1370:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3540              		.loc 5 539 0
 3541 05a8 4C8B7C24 		mov	r15, QWORD PTR [rsp+64]	# tmp355,
 3541      40
 3542 05ad 488D7424 		lea	rsi, [rsp+30]	# tmp356,
 3542      1E
 3543 05b2 4889C3   		mov	rbx, rax	# tmp268,
 3544              	.LVL245:
 3545 05b5 498D7FE8 		lea	rdi, [r15-24]	# D.37204,
 3546 05b9 C5F877   		vzeroupper
 3547 05bc E8000000 		call	_ZNSs4_Rep10_M_disposeERKSaIcE	#
 3547      00
 3548              	.LVL246:
 3549 05c1 E9D2FEFF 		jmp	.L145	#
 3549      FF
 3550              	.LVL247:
 3551              	.L141:
 3552              	.LBE1370:
 3553              	.LBE1369:
 3554              	.LBB1371:
 3555              	.LBB1364:
 3556              	.LBB1362:
 3557              	.LBB1360:
 3558              	.LBB1358:
 3559              	.LBB1357:
 3560              	.LBB1353:
 3561              	.LBB1354:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 3562              		.loc 7 67 0
 3563 05c6 448B60F8 		mov	r12d, DWORD PTR [rax-8]	# __result,
 3564              	.LVL248:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3565              		.loc 7 68 0
 3566 05ca 458D6C24 		lea	r13d, [r12-1]	# tmp253,
 3566      FF
 3567              	.LBE1354:
 3568              	.LBE1353:
 3569              		.loc 7 84 0
 3570 05cf 4589E0   		mov	r8d, r12d	# D.37212, __result
 3571              	.LBB1356:
 3572              	.LBB1355:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3573              		.loc 7 68 0
 3574 05d2 448968F8 		mov	DWORD PTR [rax-8], r13d	#, tmp253
 3575 05d6 EBB8     		jmp	.L142	#
 3576              	.LVL249:
 3577              	.L201:
 3578              	.LBE1355:
 3579              	.LBE1356:
 3580              	.LBE1357:
 3581              	.LBE1358:
 3582              	.LBE1360:
 3583              	.LBE1362:
 3584              	.LBE1364:
 3585              	.LBE1371:
 3586              	.LBB1372:
 3587              	.LBB1334:
 3588              	.LBB1329:
 3589              	.LBB1326:
 3590              	.LBB1323:
 3591              	.LBB1320:
 3592              	.LBB1317:
 133:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  __throw_logic_error(__N("basic_string::_S_construct null not valid"));
 3593              		.loc 9 133 0
 3594 05d8 BF000000 		mov	edi, OFFSET FLAT:.LC34	#,
 3594      00
 3595              	.LEHB9:
 3596 05dd E8000000 		call	_ZSt19__throw_logic_errorPKc	#
 3596      00
 3597              	.LVL250:
 3598              	.L200:
 129:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
 3599              		.loc 9 129 0
 3600 05e2 41BA0000 		mov	r10d, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# D.37201,
 3600      0000
 3601 05e8 E9EDFCFF 		jmp	.L123	#
 3601      FF
 3602              	.LVL251:
 3603              	.L122:
 3604              	.LBE1317:
 3605              	.LBE1320:
 3606              	.LBE1323:
 3607              	.LBE1326:
 3608              	.LBE1329:
 3609              	.LBE1334:
 3610              	.LBE1372:
 3611              	.LBB1373:
 3612              	.LBB1374:
 3613              	.LBB1375:
 3614              	.LBB1376:
 3615              	.LBB1377:
 3616              	.LBB1378:
 3617              	.LBB1379:
 128:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__beg == __end && __a == _Alloc())
 3618              		.loc 9 128 0
 3619 05ed 4C39E7   		cmp	rdi, r12	# D.37207, D.37207
 3620 05f0 747A     		je	.L206	#,
 3621              	.LVL252:
 132:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
 3622              		.loc 9 132 0
 3623 05f2 4D85E4   		test	r12, r12	# D.37207
 3624 05f5 0F849100 		je	.L207	#,
 3624      0000
 3625              	.L136:
 3626              	.LVL253:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3627              		.loc 9 138 0
 3628 05fb 488D5424 		lea	rdx, [rsp+31]	# tmp370,
 3628      1F
 3629              	.LBB1380:
 3630              	.LBB1381:
 3631              	.LBB1382:
 3632              		.loc 10 96 0
 3633 0600 4C29E7   		sub	rdi, r12	# __dnew, D.37207
 3634              	.LVL254:
 3635              	.LBE1382:
 3636              	.LBE1381:
 3637              	.LBE1380:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3638              		.loc 9 138 0
 3639 0603 31F6     		xor	esi, esi	#
 3640              	.LBB1385:
 3641              	.LBB1384:
 3642              	.LBB1383:
 3643              		.loc 10 96 0
 3644 0605 4989FD   		mov	r13, rdi	# __dnew, __dnew
 3645              	.LVL255:
 3646              	.LBE1383:
 3647              	.LBE1384:
 3648              	.LBE1385:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3649              		.loc 9 138 0
 3650 0608 E8000000 		call	_ZNSs4_Rep9_S_createEmmRKSaIcE	#
 3650      00
 3651              	.LEHE9:
 3652              	.LVL256:
 3653              		.loc 9 140 0
 3654 060d 4C8D4018 		lea	r8, [rax+24]	# D.37201,
 3655              	.LBB1386:
 3656              	.LBB1387:
 3657              	.LBB1388:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 3658              		.loc 5 356 0
 3659 0611 4983FD01 		cmp	r13, 1	# __dnew,
 3660              	.LBE1388:
 3661              	.LBE1387:
 3662              	.LBE1386:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3663              		.loc 9 138 0
 3664 0615 4989C6   		mov	r14, rax	# __r,
 3665              	.LVL257:
 3666              	.LBB1399:
 3667              	.LBB1396:
 3668              	.LBB1393:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 3669              		.loc 5 356 0
 3670 0618 753F     		jne	.L137	#,
 3671              	.LBE1393:
 3672              	.LBE1396:
 3673              	.LBE1399:
 3674              	.LBE1379:
 3675              	.LBE1378:
 3676              	.LBE1377:
 3677              	.LBE1376:
 3678              	.LBE1375:
 3679              	.LBE1374:
 3680              	.LBE1373:
 3681              	.LBE1441:
 3682              	.LBE1446:
 3683              	.LBE1569:
 3684              	.LBE1577:
 3685              	.LBE1583:
 3686              	.LBE1589:
 354:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
 3687              		.loc 5 354 0
 3688 061a 450FB60C 		movzx	r9d, BYTE PTR [r12]	# D.37209, MEM[(const char_type &)_100]
 3688      24
 3689              	.LVL258:
 3690              	.LBB1590:
 3691              	.LBB1584:
 3692              	.LBB1578:
 3693              	.LBB1570:
 3694              	.LBB1447:
 3695              	.LBB1442:
 3696              	.LBB1428:
 3697              	.LBB1423:
 3698              	.LBB1420:
 3699              	.LBB1417:
 3700              	.LBB1414:
 3701              	.LBB1411:
 3702              	.LBB1408:
 3703              	.LBB1400:
 3704              	.LBB1397:
 3705              	.LBB1394:
 3706              	.LBB1389:
 3707              	.LBB1390:
 243:/usr/include/c++/4.8.2/bits/char_traits.h ****       { __c1 = __c2; }
 3708              		.loc 11 243 0
 3709 061f 45884E18 		mov	BYTE PTR [r14+24], r9b	# MEM[(char_type &)__r_140 + 24], D.37209
 3710              	.LVL259:
 3711              	.L138:
 3712              	.LBE1390:
 3713              	.LBE1389:
 3714              	.LBE1394:
 3715              	.LBE1397:
 3716              	.LBE1400:
 3717              	.LBB1401:
 3718              	.LBB1402:
 210:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3719              		.loc 5 210 0
 3720 0623 4981FE00 		cmp	r14, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# __r,
 3720      000000
 3721 062a 7411     		je	.L133	#,
 3722              	.LVL260:
 3723              	.LBB1403:
 3724              	.LBB1404:
 204:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->_M_refcount = 0; }
 3725              		.loc 5 204 0
 3726 062c 41C74610 		mov	DWORD PTR [r14+16], 0	# MEM[(_Atomic_word *)__r_140 + 16B],
 3726      00000000 
 3727              	.LBE1404:
 3728              	.LBE1403:
 214:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      this->_M_length = __n;
 3729              		.loc 5 214 0
 3730 0634 4D892E   		mov	QWORD PTR [r14], r13	# __r_140->D.22725._M_length, __dnew
 3731              	.LVL261:
 3732              	.LBB1405:
 3733              	.LBB1406:
 243:/usr/include/c++/4.8.2/bits/char_traits.h ****       { __c1 = __c2; }
 3734              		.loc 11 243 0
 3735 0637 43C6442E 		mov	BYTE PTR [r14+24+r13], 0	# MEM[(char_type &)_146],
 3735      1800
 3736              	.LVL262:
 3737              	.L133:
 3738              	.LBE1406:
 3739              	.LBE1405:
 3740              	.LBE1402:
 3741              	.LBE1401:
 3742              	.LBE1408:
 3743              	.LBE1411:
 3744              	.LBE1414:
 3745              	.LBE1417:
 3746              	.LBE1420:
 3747              	.LBE1423:
 3748              	.LBE1428:
 3749              	.LBB1429:
 3750              	.LBB1430:
 583:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->swap(__str);
 3751              		.loc 5 583 0
 3752 063d 4C8D6424 		lea	r12, [rsp+64]	# tmp346,
 3752      40
 3753              	.LVL263:
 3754              	.LBE1430:
 3755              	.LBE1429:
 3756              	.LBB1432:
 3757              	.LBB1424:
 3758              	.LBB1425:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 3759              		.loc 5 275 0
 3760 0642 4C894424 		mov	QWORD PTR [rsp+64], r8	# MEM[(struct _Alloc_hider *)&D.37024]._M_p, D.37201
 3760      40
 3761              	.LVL264:
 3762              	.LBE1425:
 3763              	.LBE1424:
 3764              	.LBE1432:
 3765              	.LBB1433:
 3766              	.LBB1431:
 583:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->swap(__str);
 3767              		.loc 5 583 0
 3768 0647 488D7C24 		lea	rdi, [rsp+32]	# tmp348,
 3768      20
 3769              	.LVL265:
 3770 064c 4C89E6   		mov	rsi, r12	# tmp347, tmp303
 3771              	.LEHB10:
 3772 064f E8000000 		call	_ZNSs4swapERSs	#
 3772      00
 3773              	.LEHE10:
 3774              	.LVL266:
 3775 0654 E998FCFF 		jmp	.L198	#
 3775      FF
 3776              	.LVL267:
 3777              	.L137:
 3778              	.LBE1431:
 3779              	.LBE1433:
 3780              	.LBB1434:
 3781              	.LBB1426:
 3782              	.LBB1421:
 3783              	.LBB1418:
 3784              	.LBB1415:
 3785              	.LBB1412:
 3786              	.LBB1409:
 3787              	.LBB1407:
 3788              	.LBB1398:
 3789              	.LBB1395:
 3790              	.LBB1391:
 3791              	.LBB1392:
 3792              		.loc 11 271 0
 3793 0659 4C89C7   		mov	rdi, r8	#, D.37201
 3794 065c 4C89EA   		mov	rdx, r13	#, __dnew
 3795 065f 4C89E6   		mov	rsi, r12	#, D.37207
 3796 0662 E8000000 		call	memcpy	#
 3796      00
 3797              	.LVL268:
 3798 0667 4989C0   		mov	r8, rax	# D.37201,
 3799 066a EBB7     		jmp	.L138	#
 3800              	.LVL269:
 3801              	.L206:
 3802              	.LBE1392:
 3803              	.LBE1391:
 3804              	.LBE1395:
 3805              	.LBE1398:
 3806              	.LBE1407:
 129:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
 3807              		.loc 9 129 0
 3808 066c 41B80000 		mov	r8d, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# D.37201,
 3808      0000
 3809 0672 EBC9     		jmp	.L133	#
 3810              	.LVL270:
 3811              	.L121:
 3812              	.LBE1409:
 3813              	.LBE1412:
 3814              	.LBE1415:
 3815              	.LBE1418:
 3816              	.LBE1421:
 3817              	.LBE1426:
 3818              	.LBE1434:
 3819              	.LBB1435:
 3820              	.LBB1436:
 547:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->assign(__str); }
 3821              		.loc 5 547 0
 3822 0674 488D7424 		lea	rsi, [rsp+96]	# tmp351,
 3822      60
 3823 0679 488D7650 		lea	rsi, [rsi+80]	# tmp256,
 3824 067d 488D7C24 		lea	rdi, [rsp+32]	# tmp352,
 3824      20
 3825              	.LVL271:
 3826              	.LEHB11:
 3827 0682 E8000000 		call	_ZNSs6assignERKSs	#
 3827      00
 3828              	.LVL272:
 3829 0687 E97BFCFF 		jmp	.L132	#
 3829      FF
 3830              	.LVL273:
 3831              	.L207:
 3832              	.LBE1436:
 3833              	.LBE1435:
 3834              	.LBB1437:
 3835              	.LBB1427:
 3836              	.LBB1422:
 3837              	.LBB1419:
 3838              	.LBB1416:
 3839              	.LBB1413:
 3840              	.LBB1410:
 132:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
 3841              		.loc 9 132 0
 3842 068c 4885FF   		test	rdi, rdi	# D.37207
 3843 068f 0F8466FF 		je	.L136	#,
 3843      FFFF
 133:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  __throw_logic_error(__N("basic_string::_S_construct null not valid"));
 3844              		.loc 9 133 0
 3845 0695 BF000000 		mov	edi, OFFSET FLAT:.LC34	#,
 3845      00
 3846              	.LVL274:
 3847 069a E8000000 		call	_ZSt19__throw_logic_errorPKc	#
 3847      00
 3848              	.LEHE11:
 3849              	.LVL275:
 3850              	.L175:
 3851 069f E904FFFF 		jmp	.L191	#
 3851      FF
 3852              	.LBE1410:
 3853              	.LBE1413:
 3854              	.LBE1416:
 3855              	.LBE1419:
 3856              	.LBE1422:
 3857              	.LBE1427:
 3858              	.LBE1437:
 3859              	.LBE1442:
 3860              	.LBE1447:
 3861              	.LBE1570:
 3862              	.LBE1578:
 3863              	.LBE1584:
 3864              	.LBE1590:
 3865              		.cfi_endproc
 3866              	.LFE1479:
 3867              		.globl	__gxx_personality_v0
 3868              		.section	.gcc_except_table,"a",@progbits
 3869              	.LLSDA1479:
 3870 0000 FF       		.byte	0xff
 3871 0001 FF       		.byte	0xff
 3872 0002 01       		.byte	0x1
 3873 0003 48       		.uleb128 .LLSDACSE1479-.LLSDACSB1479
 3874              	.LLSDACSB1479:
 3875 0004 AA01     		.uleb128 .LEHB0-.LFB1479
 3876 0006 05       		.uleb128 .LEHE0-.LEHB0
 3877 0007 D708     		.uleb128 .L172-.LFB1479
 3878 0009 00       		.uleb128 0
 3879 000a C902     		.uleb128 .LEHB1-.LFB1479
 3880 000c 05       		.uleb128 .LEHE1-.LEHB1
 3881 000d 9108     		.uleb128 .L173-.LFB1479
 3882 000f 00       		.uleb128 0
 3883 0010 D902     		.uleb128 .LEHB2-.LFB1479
 3884 0012 E601     		.uleb128 .LEHE2-.LEHB2
 3885 0014 DF08     		.uleb128 .L170-.LFB1479
 3886 0016 00       		.uleb128 0
 3887 0017 A105     		.uleb128 .LEHB3-.LFB1479
 3888 0019 05       		.uleb128 .LEHE3-.LEHB3
 3889 001a 8D09     		.uleb128 .L174-.LFB1479
 3890 001c 00       		.uleb128 0
 3891 001d EC05     		.uleb128 .LEHB4-.LFB1479
 3892 001f 05       		.uleb128 .LEHE4-.LEHB4
 3893 0020 A80B     		.uleb128 .L176-.LFB1479
 3894 0022 00       		.uleb128 0
 3895 0023 9506     		.uleb128 .LEHB5-.LFB1479
 3896 0025 45       		.uleb128 .LEHE5-.LEHB5
 3897 0026 D90A     		.uleb128 .L171-.LFB1479
 3898 0028 00       		.uleb128 0
 3899 0029 F506     		.uleb128 .LEHB6-.LFB1479
 3900 002b 05       		.uleb128 .LEHE6-.LEHB6
 3901 002c DF08     		.uleb128 .L170-.LFB1479
 3902 002e 00       		.uleb128 0
 3903 002f D208     		.uleb128 .LEHB7-.LFB1479
 3904 0031 25       		.uleb128 .LEHE7-.LEHB7
 3905 0032 00       		.uleb128 0
 3906 0033 00       		.uleb128 0
 3907 0034 960A     		.uleb128 .LEHB8-.LFB1479
 3908 0036 43       		.uleb128 .LEHE8-.LEHB8
 3909 0037 D90A     		.uleb128 .L171-.LFB1479
 3910 0039 00       		.uleb128 0
 3911 003a DD0B     		.uleb128 .LEHB9-.LFB1479
 3912 003c 30       		.uleb128 .LEHE9-.LEHB9
 3913 003d 8D09     		.uleb128 .L174-.LFB1479
 3914 003f 00       		.uleb128 0
 3915 0040 CF0C     		.uleb128 .LEHB10-.LFB1479
 3916 0042 05       		.uleb128 .LEHE10-.LEHB10
 3917 0043 9F0D     		.uleb128 .L175-.LFB1479
 3918 0045 00       		.uleb128 0
 3919 0046 820D     		.uleb128 .LEHB11-.LFB1479
 3920 0048 1D       		.uleb128 .LEHE11-.LEHB11
 3921 0049 8D09     		.uleb128 .L174-.LFB1479
 3922 004b 00       		.uleb128 0
 3923              	.LLSDACSE1479:
 3924              		.section	.text.startup
 3926 06a4 6666662E 		.p2align 4,,15
 3926      0F1F8400 
 3926      00000000 
 3928              	_GLOBAL__sub_I_U:
 3929              	.LFB1684:
 124:saya.cpp      **** 
 125:saya.cpp      **** }
 3930              		.loc 8 125 0
 3931              		.cfi_startproc
 3932              	.LVL276:
 3933 06b0 4883EC08 		sub	rsp, 8	#,
 3934              		.cfi_def_cfa_offset 16
 3935              	.LBB1593:
 3936              	.LBB1594:
 3937              		.file 13 "/usr/include/c++/4.8.2/iostream"
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
 3938              		.loc 13 74 0
 3939 06b4 BF000000 		mov	edi, OFFSET FLAT:_ZStL8__ioinit	#,
 3939      00
 3940 06b9 E8000000 		call	_ZNSt8ios_base4InitC1Ev	#
 3940      00
 3941              	.LVL277:
 3942 06be BA000000 		mov	edx, OFFSET FLAT:__dso_handle	#,
 3942      00
 3943 06c3 BE000000 		mov	esi, OFFSET FLAT:_ZStL8__ioinit	#,
 3943      00
 3944 06c8 BF000000 		mov	edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev	#,
 3944      00
 3945              	.LBE1594:
 3946              	.LBE1593:
 3947              		.loc 8 125 0
 3948 06cd 4883C408 		add	rsp, 8	#,
 3949              		.cfi_def_cfa_offset 8
 3950              	.LBB1596:
 3951              	.LBB1595:
 3952              		.loc 13 74 0
 3953 06d1 E9000000 		jmp	__cxa_atexit	#
 3953      00
 3954              	.LVL278:
 3955              	.LBE1595:
 3956              	.LBE1596:
 3957              		.cfi_endproc
 3958              	.LFE1684:
 3960              		.section	.init_array,"aw"
 3961              		.align 8
 3962 0000 00000000 		.quad	_GLOBAL__sub_I_U
 3962      00000000 
 3963              		.globl	Uwx
 3964              		.bss
 3965              		.align 32
 3968              	Uwx:
 3969 0000 00000000 		.zero	18496
 3969      00000000 
 3969      00000000 
 3969      00000000 
 3969      00000000 
 3970              		.globl	global_clock
 3971              		.align 32
 3974              	global_clock:
 3975 4840 00000000 		.zero	4
 3976              		.globl	V_other
 3977 4844 00000000 		.align 32
 3977      00000000 
 3977      00000000 
 3977      00000000 
 3977      00000000 
 3980              	V_other:
 3981 4860 00000000 		.zero	1600000
 3981      00000000 
 3981      00000000 
 3981      00000000 
 3981      00000000 
 3982              		.globl	U_other
 3983              		.align 32
 3986              	U_other:
 3987 18b260 00000000 		.zero	1600000
 3987      00000000 
 3987      00000000 
 3987      00000000 
 3987      00000000 
 3988              		.globl	V
 3989              		.align 32
 3992              	V:
 3993 311c60 00000000 		.zero	1600000
 3993      00000000 
 3993      00000000 
 3993      00000000 
 3993      00000000 
 3994              		.globl	U
 3995              		.align 32
 3998              	U:
 3999 498660 00000000 		.zero	1600000
 3999      00000000 
 3999      00000000 
 3999      00000000 
 3999      00000000 
 4000              		.local	_ZStL8__ioinit
 4001              		.comm	_ZStL8__ioinit,1,1
 4002              		.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
 4003              		.section	.rodata.cst32,"aM",@progbits,32
 4004              		.align 32
 4005              	.LC0:
 4006 0000 00000000 		.long	0
 4007 0004 0000F03F 		.long	1072693248
 4008 0008 00000000 		.long	0
 4009 000c 0000F03F 		.long	1072693248
 4010 0010 00000000 		.long	0
 4011 0014 0000F03F 		.long	1072693248
 4012 0018 00000000 		.long	0
 4013 001c 0000F03F 		.long	1072693248
 4014              		.section	.rodata.cst8,"aM",@progbits,8
 4015              		.align 8
 4016              	.LC1:
 4017 0000 00000000 		.long	0
 4018 0004 0000E03F 		.long	1071644672
 4019              		.align 8
 4020              	.LC2:
 4021 0008 9A999999 		.long	2576980378
 4022 000c 9999B93F 		.long	1069128089
 4023              		.align 8
 4024              	.LC3:
 4025 0010 00000000 		.long	0
 4026 0014 0000D03F 		.long	1070596096
 4027              		.section	.rodata.cst32
 4028              		.align 32
 4029              	.LC4:
 4030 0020 00000000 		.long	0
 4031 0024 01000000 		.long	1
 4032 0028 02000000 		.long	2
 4033 002c 03000000 		.long	3
 4034 0030 04000000 		.long	4
 4035 0034 05000000 		.long	5
 4036 0038 06000000 		.long	6
 4037 003c 07000000 		.long	7
 4038              		.align 32
 4039              	.LC5:
 4040 0040 64000000 		.long	100
 4041 0044 64000000 		.long	100
 4042 0048 64000000 		.long	100
 4043 004c 64000000 		.long	100
 4044 0050 64000000 		.long	100
 4045 0054 64000000 		.long	100
 4046 0058 64000000 		.long	100
 4047 005c 64000000 		.long	100
 4048              		.align 32
 4049              	.LC6:
 4050 0060 1F85EB51 		.long	1374389535
 4051 0064 1F85EB51 		.long	1374389535
 4052 0068 1F85EB51 		.long	1374389535
 4053 006c 1F85EB51 		.long	1374389535
 4054 0070 1F85EB51 		.long	1374389535
 4055 0074 1F85EB51 		.long	1374389535
 4056 0078 1F85EB51 		.long	1374389535
 4057 007c 1F85EB51 		.long	1374389535
 4058              		.align 32
 4059              	.LC7:
 4060 0080 04       		.byte	4
 4061 0081 05       		.byte	5
 4062 0082 06       		.byte	6
 4063 0083 07       		.byte	7
 4064 0084 80       		.byte	-128
 4065 0085 80       		.byte	-128
 4066 0086 80       		.byte	-128
 4067 0087 80       		.byte	-128
 4068 0088 0C       		.byte	12
 4069 0089 0D       		.byte	13
 4070 008a 0E       		.byte	14
 4071 008b 0F       		.byte	15
 4072 008c 80       		.byte	-128
 4073 008d 80       		.byte	-128
 4074 008e 80       		.byte	-128
 4075 008f 80       		.byte	-128
 4076 0090 04       		.byte	4
 4077 0091 05       		.byte	5
 4078 0092 06       		.byte	6
 4079 0093 07       		.byte	7
 4080 0094 80       		.byte	-128
 4081 0095 80       		.byte	-128
 4082 0096 80       		.byte	-128
 4083 0097 80       		.byte	-128
 4084 0098 0C       		.byte	12
 4085 0099 0D       		.byte	13
 4086 009a 0E       		.byte	14
 4087 009b 0F       		.byte	15
 4088 009c 80       		.byte	-128
 4089 009d 80       		.byte	-128
 4090 009e 80       		.byte	-128
 4091 009f 80       		.byte	-128
 4092              		.align 32
 4093              	.LC8:
 4094 00a0 80       		.byte	-128
 4095 00a1 80       		.byte	-128
 4096 00a2 80       		.byte	-128
 4097 00a3 80       		.byte	-128
 4098 00a4 04       		.byte	4
 4099 00a5 05       		.byte	5
 4100 00a6 06       		.byte	6
 4101 00a7 07       		.byte	7
 4102 00a8 80       		.byte	-128
 4103 00a9 80       		.byte	-128
 4104 00aa 80       		.byte	-128
 4105 00ab 80       		.byte	-128
 4106 00ac 0C       		.byte	12
 4107 00ad 0D       		.byte	13
 4108 00ae 0E       		.byte	14
 4109 00af 0F       		.byte	15
 4110 00b0 80       		.byte	-128
 4111 00b1 80       		.byte	-128
 4112 00b2 80       		.byte	-128
 4113 00b3 80       		.byte	-128
 4114 00b4 04       		.byte	4
 4115 00b5 05       		.byte	5
 4116 00b6 06       		.byte	6
 4117 00b7 07       		.byte	7
 4118 00b8 80       		.byte	-128
 4119 00b9 80       		.byte	-128
 4120 00ba 80       		.byte	-128
 4121 00bb 80       		.byte	-128
 4122 00bc 0C       		.byte	12
 4123 00bd 0D       		.byte	13
 4124 00be 0E       		.byte	14
 4125 00bf 0F       		.byte	15
 4126              		.align 32
 4127              	.LC9:
 4128 00c0 FFFFFFFF 		.long	4294967295
 4129 00c4 FFFFFFFF 		.long	-1
 4130 00c8 FFFFFFFF 		.long	4294967295
 4131 00cc FFFFFFFF 		.long	-1
 4132 00d0 FFFFFFFF 		.long	4294967295
 4133 00d4 FFFFFFFF 		.long	-1
 4134 00d8 FFFFFFFF 		.long	4294967295
 4135 00dc FFFFFFFF 		.long	-1
 4136              		.align 32
 4137              	.LC10:
 4138 00e0 63000000 		.long	99
 4139 00e4 63000000 		.long	99
 4140 00e8 63000000 		.long	99
 4141 00ec 63000000 		.long	99
 4142 00f0 63000000 		.long	99
 4143 00f4 63000000 		.long	99
 4144 00f8 63000000 		.long	99
 4145 00fc 63000000 		.long	99
 4146              		.align 32
 4147              	.LC11:
 4148 0100 65000000 		.long	101
 4149 0104 65000000 		.long	101
 4150 0108 65000000 		.long	101
 4151 010c 65000000 		.long	101
 4152 0110 65000000 		.long	101
 4153 0114 65000000 		.long	101
 4154 0118 65000000 		.long	101
 4155 011c 65000000 		.long	101
 4156              		.align 32
 4157              	.LC12:
 4158 0120 00000000 		.long	0
 4159 0124 00001840 		.long	1075314688
 4160 0128 00000000 		.long	0
 4161 012c 00001840 		.long	1075314688
 4162 0130 00000000 		.long	0
 4163 0134 00001840 		.long	1075314688
 4164 0138 00000000 		.long	0
 4165 013c 00001840 		.long	1075314688
 4166              		.align 32
 4167              	.LC13:
 4168 0140 FCA9F1D2 		.long	3539053052
 4169 0144 4D62503F 		.long	1062232653
 4170 0148 FCA9F1D2 		.long	3539053052
 4171 014c 4D62503F 		.long	1062232653
 4172 0150 FCA9F1D2 		.long	3539053052
 4173 0154 4D62503F 		.long	1062232653
 4174 0158 FCA9F1D2 		.long	3539053052
 4175 015c 4D62503F 		.long	1062232653
 4176              		.align 32
 4177              	.LC14:
 4178 0160 DFBC9A78 		.long	2023406815
 4179 0164 563452BF 		.long	-1085131690
 4180 0168 DFBC9A78 		.long	2023406815
 4181 016c 563452BF 		.long	-1085131690
 4182 0170 DFBC9A78 		.long	2023406815
 4183 0174 563452BF 		.long	-1085131690
 4184 0178 DFBC9A78 		.long	2023406815
 4185 017c 563452BF 		.long	-1085131690
 4186              		.align 32
 4187              	.LC15:
 4188 0180 2951CEA0 		.long	2697875753
 4189 0184 C845E83E 		.long	1055409608
 4190 0188 2951CEA0 		.long	2697875753
 4191 018c C845E83E 		.long	1055409608
 4192 0190 2951CEA0 		.long	2697875753
 4193 0194 C845E83E 		.long	1055409608
 4194 0198 2951CEA0 		.long	2697875753
 4195 019c C845E83E 		.long	1055409608
 4196              		.align 32
 4197              	.LC16:
 4198 01a0 97801ED4 		.long	3558768791
 4199 01a4 679CEF3D 		.long	1039113319
 4200 01a8 97801ED4 		.long	3558768791
 4201 01ac 679CEF3D 		.long	1039113319
 4202 01b0 97801ED4 		.long	3558768791
 4203 01b4 679CEF3D 		.long	1039113319
 4204 01b8 97801ED4 		.long	3558768791
 4205 01bc 679CEF3D 		.long	1039113319
 4206              		.align 32
 4207              	.LC17:
 4208 01c0 DFBC9A78 		.long	2023406815
 4209 01c4 5634123F 		.long	1058157654
 4210 01c8 DFBC9A78 		.long	2023406815
 4211 01cc 5634123F 		.long	1058157654
 4212 01d0 DFBC9A78 		.long	2023406815
 4213 01d4 5634123F 		.long	1058157654
 4214 01d8 DFBC9A78 		.long	2023406815
 4215 01dc 5634123F 		.long	1058157654
 4216              		.align 32
 4217              	.LC18:
 4218 01e0 DFBC9A78 		.long	2023406815
 4219 01e4 5634523F 		.long	1062351958
 4220 01e8 DFBC9A78 		.long	2023406815
 4221 01ec 5634523F 		.long	1062351958
 4222 01f0 DFBC9A78 		.long	2023406815
 4223 01f4 5634523F 		.long	1062351958
 4224 01f8 DFBC9A78 		.long	2023406815
 4225 01fc 5634523F 		.long	1062351958
 4226              		.align 32
 4227              	.LC19:
 4228 0200 18C31F4F 		.long	1327481624
 4229 0204 7EC4E03D 		.long	1038140542
 4230 0208 18C31F4F 		.long	1327481624
 4231 020c 7EC4E03D 		.long	1038140542
 4232 0210 18C31F4F 		.long	1327481624
 4233 0214 7EC4E03D 		.long	1038140542
 4234 0218 18C31F4F 		.long	1327481624
 4235 021c 7EC4E03D 		.long	1038140542
 4236              		.align 32
 4237              	.LC20:
 4238 0220 00000000 		.long	0
 4239 0224 00006940 		.long	1080623104
 4240 0228 00000000 		.long	0
 4241 022c 00006940 		.long	1080623104
 4242 0230 00000000 		.long	0
 4243 0234 00006940 		.long	1080623104
 4244 0238 00000000 		.long	0
 4245 023c 00006940 		.long	1080623104
 4246              		.section	.rodata.cst8
 4247              		.align 8
 4248              	.LC21:
 4249 0018 00000000 		.long	0
 4250 001c 00001840 		.long	1075314688
 4251              		.align 8
 4252              	.LC22:
 4253 0020 FCA9F1D2 		.long	3539053052
 4254 0024 4D62503F 		.long	1062232653
 4255              		.align 8
 4256              	.LC23:
 4257 0028 DFBC9A78 		.long	2023406815
 4258 002c 5634123F 		.long	1058157654
 4259              		.align 8
 4260              	.LC24:
 4261 0030 DFBC9A78 		.long	2023406815
 4262 0034 5634523F 		.long	1062351958
 4263              		.align 8
 4264              	.LC25:
 4265 0038 18C31F4F 		.long	1327481624
 4266 003c 7EC4E03D 		.long	1038140542
 4267              		.align 8
 4268              	.LC26:
 4269 0040 DFBC9A78 		.long	2023406815
 4270 0044 563452BF 		.long	-1085131690
 4271              		.align 8
 4272              	.LC27:
 4273 0048 00000000 		.long	0
 4274 004c 0000F03F 		.long	1072693248
 4275              		.align 8
 4276              	.LC28:
 4277 0050 2951CEA0 		.long	2697875753
 4278 0054 C845E83E 		.long	1055409608
 4279              		.align 8
 4280              	.LC29:
 4281 0058 97801ED4 		.long	3558768791
 4282 005c 679CEF3D 		.long	1039113319
 4283              		.align 8
 4284              	.LC30:
 4285 0060 00000000 		.long	0
 4286 0064 00006940 		.long	1080623104
 4287              		.section	.rodata.cst32
 4288              		.align 32
 4289              	.LC31:
 4290 0240 08000000 		.long	8
 4291 0244 08000000 		.long	8
 4292 0248 08000000 		.long	8
 4293 024c 08000000 		.long	8
 4294 0250 08000000 		.long	8
 4295 0254 08000000 		.long	8
 4296 0258 08000000 		.long	8
 4297 025c 08000000 		.long	8
 4298              		.section	.rodata.cst8
 4299              		.align 8
 4300              	.LC33:
 4301 0068 736891ED 		.long	3985729651
 4302 006c 7CFF2340 		.long	1076100988
 4303              		.text
 4304              	.Letext0:
 4305              		.file 14 "/usr/include/c++/4.8.2/cmath"
 4306              		.file 15 "/usr/include/c++/4.8.2/cwchar"
 4307              		.file 16 "/usr/include/c++/4.8.2/bits/exception_ptr.h"
 4308              		.file 17 "/usr/include/c++/4.8.2/bits/cpp_type_traits.h"
 4309              		.file 18 "/usr/include/c++/4.8.2/bits/stl_pair.h"
 4310              		.file 19 "/usr/include/c++/4.8.2/bits/stl_iterator_base_types.h"
 4311              		.file 20 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/c++config.h"
 4312              		.file 21 "/usr/include/c++/4.8.2/cstdint"
 4313              		.file 22 "/usr/include/c++/4.8.2/clocale"
 4314              		.file 23 "/usr/include/c++/4.8.2/bits/allocator.h"
 4315              		.file 24 "/usr/include/c++/4.8.2/cstdlib"
 4316              		.file 25 "/usr/include/c++/4.8.2/cstdio"
 4317              		.file 26 "/usr/include/c++/4.8.2/initializer_list"
 4318              		.file 27 "/usr/include/c++/4.8.2/cwctype"
 4319              		.file 28 "/usr/include/c++/4.8.2/bits/ostream.tcc"
 4320              		.file 29 "/usr/include/c++/4.8.2/bits/basic_ios.tcc"
 4321              		.file 30 "/usr/include/c++/4.8.2/bits/stl_algobase.h"
 4322              		.file 31 "/usr/include/c++/4.8.2/iosfwd"
 4323              		.file 32 "/usr/include/c++/4.8.2/bits/ostream_insert.h"
 4324              		.file 33 "/usr/include/c++/4.8.2/bits/postypes.h"
 4325              		.file 34 "/usr/include/c++/4.8.2/bits/functexcept.h"
 4326              		.file 35 "/usr/include/c++/4.8.2/ext/new_allocator.h"
 4327              		.file 36 "/usr/include/c++/4.8.2/ext/numeric_traits.h"
 4328              		.file 37 "/usr/include/c++/4.8.2/bits/stl_iterator.h"
 4329              		.file 38 "/usr/include/bits/mathdef.h"
 4330              		.file 39 "/usr/include/bits/types.h"
 4331              		.file 40 "/usr/lib/gcc/x86_64-redhat-linux/4.8.3/include/stddef.h"
 4332              		.file 41 "/usr/include/unistd.h"
 4333              		.file 42 "/usr/include/stdio.h"
 4334              		.file 43 "/usr/include/libio.h"
 4335              		.file 44 "<\347\265\204\343\201\277\350\276\274\343\201\277>"
 4336              		.file 45 "/usr/include/wchar.h"
 4337              		.file 46 "/usr/include/time.h"
 4338              		.file 47 "/usr/include/c++/4.8.2/debug/debug.h"
 4339              		.file 48 "/usr/include/stdint.h"
 4340              		.file 49 "/usr/include/locale.h"
 4341              		.file 50 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/atomic_word.h"
 4342              		.file 51 "/usr/include/stdlib.h"
 4343              		.file 52 "/usr/include/bits/stdlib-float.h"
 4344              		.file 53 "/usr/include/c++/4.8.2/ext/type_traits.h"
 4345              		.file 54 "/usr/include/_G_config.h"
 4346              		.file 55 "/usr/include/bits/stdio.h"
 4347              		.file 56 "/usr/include/wctype.h"
 4348              		.file 57 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/gthr-default.h"
 4349              		.file 58 "/usr/include/c++/4.8.2/new"
 4350              		.file 59 "/usr/include/bits/mathcalls.h"
